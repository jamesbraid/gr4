# Source: g_vertarray.c
# Category: gl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_vertarray.c
# Total Functions: 33

.text

# Function: __glDrawArraysV
# Declared: Line 7 (Source lines: 7-24)
# Address: 0x0dbd0d34 - 0x0dbd0dd8 (Size: 164 bytes, Frame: 224)
.globl __glDrawArraysV
.ent __glDrawArraysV
__glDrawArraysV:
    # Line 7
    addiu	$sp,$sp,-96
    sd	$s5,24($sp)
    # Line 8
    lw	$s5,__glCurrentContext
    # Line 16
    lw	$at,4800($s5)
    sd	$s6,48($sp)
    mult	$at,$a1
    sd	$s1,16($sp)
    # Line 7
    move	$s1,$a2
    sd	$s4,0($sp)
    sd	$s0,8($sp)
    # Line 17
    lw	$s4,4812($s5)
    sd	$gp,40($sp)
    sd	$ra,32($sp)
    # Line 7
    lui	$ra,0x3
    addiu	$ra,$ra,-9884
    addu	$gp,$t9,$ra
    # Line 19
    # lw $t9, -17676($gp) # &glBegin
    # Line 16
    lw	$s0,4788($s5)
    mflo	$t8
    # Line 19
    jal	glBegin
    # Line 16
    addu	$s0,$s0,$t8
    # Line 20
    blez	$s1,.L0dbd0dac
    move	$s6,$zero
.L0dbd0d90:
    # Line 21
    move	$a0,$s0
    jalr	$s4
    move	$t9,$s4
    # Line 20
    addiu	$s6,$s6,1
    # Line 21
    lw	$v0,4800($s5)
    # Line 20
    bne	$s1,$s6,.L0dbd0d90
    # Line 21
    addu	$s0,$v0,$s0
.L0dbd0dac:
    ld	$s5,24($sp)
    ld	$s1,16($sp)
    # Line 23
    # lw $t9, -17532($gp) # &glEnd
    ld	$s0,8($sp)
    ld	$s4,0($sp)
    jal	glEnd
    ld	$s6,48($sp)
    # Line 24
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysV

# Function: __glDrawArraysNV
# Declared: Line 25 (Source lines: 25-45)
# Address: 0x0dbd0dd8 - 0x0dbd0eb8 (Size: 224 bytes, Frame: 240)
.globl __glDrawArraysNV
.ent __glDrawArraysNV
__glDrawArraysNV:
    # Line 25
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    # Line 26
    lw	$s2,__glCurrentContext
    # Line 34
    lw	$v0,4824($s2)
    mult	$v0,$a1
    sd	$s4,64($sp)
    sd	$s3,8($sp)
    # Line 25
    move	$s3,$a2
    sd	$s5,40($sp)
    # Line 36
    lw	$at,4800($s2)
    # Line 34
    mflo	$t8
    sd	$s6,16($sp)
    sd	$s0,24($sp)
    # Line 36
    mult	$at,$a1
    # Line 37
    lw	$s6,4812($s2)
    # Line 35
    lw	$s5,4836($s2)
    sd	$s1,32($sp)
    sd	$gp,56($sp)
    sd	$ra,48($sp)
    # Line 25
    lui	$ra,0x3
    addiu	$ra,$ra,-10048
    addu	$gp,$t9,$ra
    # Line 34
    lw	$s1,4816($s2)
    # Line 36
    lw	$s0,4788($s2)
    # Line 39
    # lw $t9, -17676($gp) # &glBegin
    # Line 34
    addu	$s1,$s1,$t8
    # Line 36
    mflo	$t8
    # Line 39
    jal	glBegin
    # Line 36
    addu	$s0,$s0,$t8
    # Line 40
    blez	$s3,.L0dbd0e84
    move	$s4,$zero
.L0dbd0e54:
    # Line 41
    move	$a0,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 42
    move	$a0,$s0
    # Line 41
    lw	$v1,4824($s2)
    # Line 42
    move	$t9,$s6
    jalr	$s6
    # Line 41
    addu	$s1,$v1,$s1
    # Line 40
    addiu	$s4,$s4,1
    # Line 42
    lw	$a1,4800($s2)
    # Line 40
    bne	$s3,$s4,.L0dbd0e54
    # Line 42
    addu	$s0,$a1,$s0
.L0dbd0e84:
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,64($sp)
    # Line 44
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 45
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysNV

# Function: __glDrawArraysCV
# Declared: Line 46 (Source lines: 46-66)
# Address: 0x0dbd0eb8 - 0x0dbd0f98 (Size: 224 bytes, Frame: 240)
.globl __glDrawArraysCV
.ent __glDrawArraysCV
__glDrawArraysCV:
    # Line 46
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    # Line 47
    lw	$s2,__glCurrentContext
    # Line 55
    lw	$v0,4852($s2)
    mult	$v0,$a1
    sd	$s4,64($sp)
    sd	$s3,8($sp)
    # Line 46
    move	$s3,$a2
    sd	$s5,40($sp)
    # Line 57
    lw	$at,4800($s2)
    # Line 55
    mflo	$t8
    sd	$s6,16($sp)
    sd	$s0,24($sp)
    # Line 57
    mult	$at,$a1
    # Line 58
    lw	$s6,4812($s2)
    # Line 56
    lw	$s5,4864($s2)
    sd	$s1,32($sp)
    sd	$gp,56($sp)
    sd	$ra,48($sp)
    # Line 46
    lui	$ra,0x3
    addiu	$ra,$ra,-10272
    addu	$gp,$t9,$ra
    # Line 55
    lw	$s1,4840($s2)
    # Line 57
    lw	$s0,4788($s2)
    # Line 60
    # lw $t9, -17676($gp) # &glBegin
    # Line 55
    addu	$s1,$s1,$t8
    # Line 57
    mflo	$t8
    # Line 60
    jal	glBegin
    # Line 57
    addu	$s0,$s0,$t8
    # Line 61
    blez	$s3,.L0dbd0f64
    move	$s4,$zero
.L0dbd0f34:
    # Line 62
    move	$a0,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 63
    move	$a0,$s0
    # Line 62
    lw	$v1,4852($s2)
    # Line 63
    move	$t9,$s6
    jalr	$s6
    # Line 62
    addu	$s1,$v1,$s1
    # Line 61
    addiu	$s4,$s4,1
    # Line 63
    lw	$a1,4800($s2)
    # Line 61
    bne	$s3,$s4,.L0dbd0f34
    # Line 63
    addu	$s0,$a1,$s0
.L0dbd0f64:
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,64($sp)
    # Line 65
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 66
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysCV

# Function: __glDrawArraysNCV
# Declared: Line 67 (Source lines: 67-90)
# Address: 0x0dbd0f98 - 0x0dbd10bc (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysNCV
.ent __glDrawArraysNCV
__glDrawArraysNCV:
    # Line 67
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 68
    lw	$s3,__glCurrentContext
    # Line 76
    lw	$v1,4824($s3)
    mult	$v1,$a1
    # Line 78
    lw	$v0,4852($s3)
    # Line 76
    mflo	$t8
    nop
    nop
    # Line 78
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 67
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 81
    lw	$s7,4812($s3)
    # Line 79
    lw	$s8,4864($s3)
    sd	$s1,32($sp)
    # Line 80
    lw	$at,4800($s3)
    # Line 78
    mflo	$s1
    # Line 77
    lw	$s6,4836($s3)
    sd	$s2,0($sp)
    # Line 80
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 67
    lui	$ra,0x3
    addiu	$ra,$ra,-10496
    addu	$gp,$t9,$ra
    # Line 76
    lw	$s2,4816($s3)
    # Line 78
    lw	$s0,4840($s3)
    # Line 83
    # lw $t9, -17676($gp) # &glBegin
    # Line 76
    addu	$s2,$s2,$t8
    # Line 78
    addu	$s0,$s0,$s1
    # Line 80
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 83
    jal	glBegin
    # Line 80
    addu	$s1,$s1,$t8
    # Line 84
    blez	$s5,.L0dbd1080
    move	$s4,$zero
.L0dbd103c:
    # Line 85
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4824($s3)
    # Line 86
    move	$t9,$s8
    # Line 85
    addu	$s2,$a0,$s2
    # Line 86
    jalr	$s8
    move	$a0,$s0
    # Line 87
    move	$a0,$s1
    # Line 86
    lw	$a1,4852($s3)
    # Line 87
    move	$t9,$s7
    jalr	$s7
    # Line 86
    addu	$s0,$a1,$s0
    # Line 84
    addiu	$s4,$s4,1
    # Line 87
    lw	$at,4800($s3)
    # Line 84
    bne	$s5,$s4,.L0dbd103c
    # Line 87
    addu	$s1,$at,$s1
.L0dbd1080:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 89
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 90
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNCV

# Function: __glDrawArraysTV
# Declared: Line 91 (Source lines: 91-111)
# Address: 0x0dbd10bc - 0x0dbd119c (Size: 224 bytes, Frame: 240)
.globl __glDrawArraysTV
.ent __glDrawArraysTV
__glDrawArraysTV:
    # Line 91
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    # Line 92
    lw	$s2,__glCurrentContext
    # Line 100
    lw	$v0,4904($s2)
    mult	$v0,$a1
    sd	$s4,64($sp)
    sd	$s3,8($sp)
    # Line 91
    move	$s3,$a2
    sd	$s5,40($sp)
    # Line 102
    lw	$at,4800($s2)
    # Line 100
    mflo	$t8
    sd	$s6,16($sp)
    sd	$s0,24($sp)
    # Line 102
    mult	$at,$a1
    # Line 103
    lw	$s6,4812($s2)
    # Line 101
    lw	$s5,4916($s2)
    sd	$s1,32($sp)
    sd	$gp,56($sp)
    sd	$ra,48($sp)
    # Line 91
    lui	$ra,0x3
    addiu	$ra,$ra,-10788
    addu	$gp,$t9,$ra
    # Line 100
    lw	$s1,4892($s2)
    # Line 102
    lw	$s0,4788($s2)
    # Line 105
    # lw $t9, -17676($gp) # &glBegin
    # Line 100
    addu	$s1,$s1,$t8
    # Line 102
    mflo	$t8
    # Line 105
    jal	glBegin
    # Line 102
    addu	$s0,$s0,$t8
    # Line 106
    blez	$s3,.L0dbd1168
    move	$s4,$zero
.L0dbd1138:
    # Line 107
    move	$a0,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 108
    move	$a0,$s0
    # Line 107
    lw	$v1,4904($s2)
    # Line 108
    move	$t9,$s6
    jalr	$s6
    # Line 107
    addu	$s1,$v1,$s1
    # Line 106
    addiu	$s4,$s4,1
    # Line 108
    lw	$a1,4800($s2)
    # Line 106
    bne	$s3,$s4,.L0dbd1138
    # Line 108
    addu	$s0,$a1,$s0
.L0dbd1168:
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,64($sp)
    # Line 110
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 111
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysTV

# Function: __glDrawArraysNTV
# Declared: Line 112 (Source lines: 112-135)
# Address: 0x0dbd119c - 0x0dbd12c0 (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysNTV
.ent __glDrawArraysNTV
__glDrawArraysNTV:
    # Line 112
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 113
    lw	$s3,__glCurrentContext
    # Line 121
    lw	$v1,4824($s3)
    mult	$v1,$a1
    # Line 123
    lw	$v0,4904($s3)
    # Line 121
    mflo	$t8
    nop
    nop
    # Line 123
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 112
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 126
    lw	$s7,4812($s3)
    # Line 124
    lw	$s8,4916($s3)
    sd	$s1,32($sp)
    # Line 125
    lw	$at,4800($s3)
    # Line 123
    mflo	$s1
    # Line 122
    lw	$s6,4836($s3)
    sd	$s2,0($sp)
    # Line 125
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 112
    lui	$ra,0x3
    addiu	$ra,$ra,-11012
    addu	$gp,$t9,$ra
    # Line 121
    lw	$s2,4816($s3)
    # Line 123
    lw	$s0,4892($s3)
    # Line 128
    # lw $t9, -17676($gp) # &glBegin
    # Line 121
    addu	$s2,$s2,$t8
    # Line 123
    addu	$s0,$s0,$s1
    # Line 125
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 128
    jal	glBegin
    # Line 125
    addu	$s1,$s1,$t8
    # Line 129
    blez	$s5,.L0dbd1284
    move	$s4,$zero
.L0dbd1240:
    # Line 130
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4824($s3)
    # Line 131
    move	$t9,$s8
    # Line 130
    addu	$s2,$a0,$s2
    # Line 131
    jalr	$s8
    move	$a0,$s0
    # Line 132
    move	$a0,$s1
    # Line 131
    lw	$a1,4904($s3)
    # Line 132
    move	$t9,$s7
    jalr	$s7
    # Line 131
    addu	$s0,$a1,$s0
    # Line 129
    addiu	$s4,$s4,1
    # Line 132
    lw	$at,4800($s3)
    # Line 129
    bne	$s5,$s4,.L0dbd1240
    # Line 132
    addu	$s1,$at,$s1
.L0dbd1284:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 134
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 135
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNTV

# Function: __glDrawArraysCTV
# Declared: Line 136 (Source lines: 136-159)
# Address: 0x0dbd12c0 - 0x0dbd13e4 (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysCTV
.ent __glDrawArraysCTV
__glDrawArraysCTV:
    # Line 136
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 137
    lw	$s3,__glCurrentContext
    # Line 145
    lw	$v1,4852($s3)
    mult	$v1,$a1
    # Line 147
    lw	$v0,4904($s3)
    # Line 145
    mflo	$t8
    nop
    nop
    # Line 147
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 136
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 150
    lw	$s7,4812($s3)
    # Line 148
    lw	$s8,4916($s3)
    sd	$s1,32($sp)
    # Line 149
    lw	$at,4800($s3)
    # Line 147
    mflo	$s1
    # Line 146
    lw	$s6,4864($s3)
    sd	$s2,0($sp)
    # Line 149
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 136
    lui	$ra,0x3
    addiu	$ra,$ra,-11304
    addu	$gp,$t9,$ra
    # Line 145
    lw	$s2,4840($s3)
    # Line 147
    lw	$s0,4892($s3)
    # Line 152
    # lw $t9, -17676($gp) # &glBegin
    # Line 145
    addu	$s2,$s2,$t8
    # Line 147
    addu	$s0,$s0,$s1
    # Line 149
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 152
    jal	glBegin
    # Line 149
    addu	$s1,$s1,$t8
    # Line 153
    blez	$s5,.L0dbd13a8
    move	$s4,$zero
.L0dbd1364:
    # Line 154
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4852($s3)
    # Line 155
    move	$t9,$s8
    # Line 154
    addu	$s2,$a0,$s2
    # Line 155
    jalr	$s8
    move	$a0,$s0
    # Line 156
    move	$a0,$s1
    # Line 155
    lw	$a1,4904($s3)
    # Line 156
    move	$t9,$s7
    jalr	$s7
    # Line 155
    addu	$s0,$a1,$s0
    # Line 153
    addiu	$s4,$s4,1
    # Line 156
    lw	$at,4800($s3)
    # Line 153
    bne	$s5,$s4,.L0dbd1364
    # Line 156
    addu	$s1,$at,$s1
.L0dbd13a8:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 158
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 159
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysCTV

# Function: __glDrawArraysNCTV
# Declared: Line 160 (Source lines: 160-186)
# Address: 0x0dbd13e4 - 0x0dbd1544 (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysNCTV
.ent __glDrawArraysNCTV
__glDrawArraysNCTV:
    # Line 160
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 161
    lw	$s0,__glCurrentContext
    # Line 169
    lw	$at,4824($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 171
    lw	$ra,4852($s0)
    # Line 169
    mflo	$s2
    nop
    nop
    # Line 171
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 173
    lw	$s8,4904($s0)
    # Line 171
    mflo	$ra
    nop
    nop
    # Line 173
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 160
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 176
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 175
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 173
    mflo	$t8
    # Line 160
    addiu	$s3,$s3,-11596
    # Line 172
    lw	$s7,4864($s0)
    # Line 175
    mult	$s4,$a1
    # Line 160
    addu	$gp,$t9,$s3
    # Line 178
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 169
    lw	$s1,4816($s0)
    # Line 170
    lw	$s7,4836($s0)
    # Line 173
    lw	$s3,4892($s0)
    # Line 169
    addu	$s1,$s1,$s2
    # Line 175
    lw	$s2,4788($s0)
    # Line 171
    lw	$s4,4840($s0)
    # Line 174
    lw	$s8,4916($s0)
    # Line 173
    addu	$s3,$s3,$t8
    # Line 171
    addu	$s4,$s4,$ra
    # Line 175
    mflo	$t8
    # Line 178
    jal	glBegin
    # Line 175
    addu	$s2,$s2,$t8
    # Line 179
    blez	$s6,.L0dbd1508
    move	$s5,$zero
.L0dbd14b0:
    # Line 180
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 181
    ld	$t9,88($sp)
    # Line 180
    lw	$v0,4824($s0)
    # Line 181
    move	$a0,$s4
    jalr	$t9
    # Line 180
    addu	$s1,$v0,$s1
    # Line 182
    move	$a0,$s3
    # Line 181
    lw	$v1,4852($s0)
    # Line 182
    move	$t9,$s8
    jalr	$s8
    # Line 181
    addu	$s4,$v1,$s4
    # Line 182
    lw	$a0,4904($s0)
    # Line 183
    ld	$t9,80($sp)
    # Line 182
    addu	$s3,$a0,$s3
    # Line 183
    jalr	$t9
    move	$a0,$s2
    # Line 179
    addiu	$s5,$s5,1
    # Line 183
    lw	$a1,4800($s0)
    # Line 179
    bne	$s6,$s5,.L0dbd14b0
    # Line 183
    addu	$s2,$a1,$s2
.L0dbd1508:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 185
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 186
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysNCTV

# Function: __glDrawArraysIV
# Declared: Line 187 (Source lines: 187-207)
# Address: 0x0dbd1544 - 0x0dbd1624 (Size: 224 bytes, Frame: 240)
.globl __glDrawArraysIV
.ent __glDrawArraysIV
__glDrawArraysIV:
    # Line 187
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    # Line 188
    lw	$s2,__glCurrentContext
    # Line 196
    lw	$v0,4876($s2)
    mult	$v0,$a1
    sd	$s4,64($sp)
    sd	$s3,8($sp)
    # Line 187
    move	$s3,$a2
    sd	$s5,40($sp)
    # Line 198
    lw	$at,4800($s2)
    # Line 196
    mflo	$t8
    sd	$s6,16($sp)
    sd	$s0,24($sp)
    # Line 198
    mult	$at,$a1
    # Line 199
    lw	$s6,4812($s2)
    # Line 197
    lw	$s5,4888($s2)
    sd	$s1,32($sp)
    sd	$gp,56($sp)
    sd	$ra,48($sp)
    # Line 187
    lui	$ra,0x3
    addiu	$ra,$ra,-11948
    addu	$gp,$t9,$ra
    # Line 196
    lw	$s1,4868($s2)
    # Line 198
    lw	$s0,4788($s2)
    # Line 201
    # lw $t9, -17676($gp) # &glBegin
    # Line 196
    addu	$s1,$s1,$t8
    # Line 198
    mflo	$t8
    # Line 201
    jal	glBegin
    # Line 198
    addu	$s0,$s0,$t8
    # Line 202
    blez	$s3,.L0dbd15f0
    move	$s4,$zero
.L0dbd15c0:
    # Line 203
    move	$a0,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 204
    move	$a0,$s0
    # Line 203
    lw	$v1,4876($s2)
    # Line 204
    move	$t9,$s6
    jalr	$s6
    # Line 203
    addu	$s1,$v1,$s1
    # Line 202
    addiu	$s4,$s4,1
    # Line 204
    lw	$a1,4800($s2)
    # Line 202
    bne	$s3,$s4,.L0dbd15c0
    # Line 204
    addu	$s0,$a1,$s0
.L0dbd15f0:
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,64($sp)
    # Line 206
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 207
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysIV

# Function: __glDrawArraysNIV
# Declared: Line 208 (Source lines: 208-231)
# Address: 0x0dbd1624 - 0x0dbd1748 (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysNIV
.ent __glDrawArraysNIV
__glDrawArraysNIV:
    # Line 208
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 209
    lw	$s3,__glCurrentContext
    # Line 217
    lw	$v1,4824($s3)
    mult	$v1,$a1
    # Line 219
    lw	$v0,4876($s3)
    # Line 217
    mflo	$t8
    nop
    nop
    # Line 219
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 208
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 222
    lw	$s7,4812($s3)
    # Line 220
    lw	$s8,4888($s3)
    sd	$s1,32($sp)
    # Line 221
    lw	$at,4800($s3)
    # Line 219
    mflo	$s1
    # Line 218
    lw	$s6,4836($s3)
    sd	$s2,0($sp)
    # Line 221
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 208
    lui	$ra,0x3
    addiu	$ra,$ra,-12172
    addu	$gp,$t9,$ra
    # Line 217
    lw	$s2,4816($s3)
    # Line 219
    lw	$s0,4868($s3)
    # Line 224
    # lw $t9, -17676($gp) # &glBegin
    # Line 217
    addu	$s2,$s2,$t8
    # Line 219
    addu	$s0,$s0,$s1
    # Line 221
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 224
    jal	glBegin
    # Line 221
    addu	$s1,$s1,$t8
    # Line 225
    blez	$s5,.L0dbd170c
    move	$s4,$zero
.L0dbd16c8:
    # Line 226
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4824($s3)
    # Line 227
    move	$t9,$s8
    # Line 226
    addu	$s2,$a0,$s2
    # Line 227
    jalr	$s8
    move	$a0,$s0
    # Line 228
    move	$a0,$s1
    # Line 227
    lw	$a1,4876($s3)
    # Line 228
    move	$t9,$s7
    jalr	$s7
    # Line 227
    addu	$s0,$a1,$s0
    # Line 225
    addiu	$s4,$s4,1
    # Line 228
    lw	$at,4800($s3)
    # Line 225
    bne	$s5,$s4,.L0dbd16c8
    # Line 228
    addu	$s1,$at,$s1
.L0dbd170c:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 230
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 231
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNIV

# Function: __glDrawArraysCIV
# Declared: Line 232 (Source lines: 232-255)
# Address: 0x0dbd1748 - 0x0dbd186c (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysCIV
.ent __glDrawArraysCIV
__glDrawArraysCIV:
    # Line 232
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 233
    lw	$s3,__glCurrentContext
    # Line 241
    lw	$v1,4852($s3)
    mult	$v1,$a1
    # Line 243
    lw	$v0,4876($s3)
    # Line 241
    mflo	$t8
    nop
    nop
    # Line 243
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 232
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 246
    lw	$s7,4812($s3)
    # Line 244
    lw	$s8,4888($s3)
    sd	$s1,32($sp)
    # Line 245
    lw	$at,4800($s3)
    # Line 243
    mflo	$s1
    # Line 242
    lw	$s6,4864($s3)
    sd	$s2,0($sp)
    # Line 245
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 232
    lui	$ra,0x3
    addiu	$ra,$ra,-12464
    addu	$gp,$t9,$ra
    # Line 241
    lw	$s2,4840($s3)
    # Line 243
    lw	$s0,4868($s3)
    # Line 248
    # lw $t9, -17676($gp) # &glBegin
    # Line 241
    addu	$s2,$s2,$t8
    # Line 243
    addu	$s0,$s0,$s1
    # Line 245
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 248
    jal	glBegin
    # Line 245
    addu	$s1,$s1,$t8
    # Line 249
    blez	$s5,.L0dbd1830
    move	$s4,$zero
.L0dbd17ec:
    # Line 250
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4852($s3)
    # Line 251
    move	$t9,$s8
    # Line 250
    addu	$s2,$a0,$s2
    # Line 251
    jalr	$s8
    move	$a0,$s0
    # Line 252
    move	$a0,$s1
    # Line 251
    lw	$a1,4876($s3)
    # Line 252
    move	$t9,$s7
    jalr	$s7
    # Line 251
    addu	$s0,$a1,$s0
    # Line 249
    addiu	$s4,$s4,1
    # Line 252
    lw	$at,4800($s3)
    # Line 249
    bne	$s5,$s4,.L0dbd17ec
    # Line 252
    addu	$s1,$at,$s1
.L0dbd1830:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 254
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 255
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysCIV

# Function: __glDrawArraysNCIV
# Declared: Line 256 (Source lines: 256-282)
# Address: 0x0dbd186c - 0x0dbd19cc (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysNCIV
.ent __glDrawArraysNCIV
__glDrawArraysNCIV:
    # Line 256
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 257
    lw	$s0,__glCurrentContext
    # Line 265
    lw	$at,4824($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 267
    lw	$ra,4852($s0)
    # Line 265
    mflo	$s2
    nop
    nop
    # Line 267
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 269
    lw	$s8,4876($s0)
    # Line 267
    mflo	$ra
    nop
    nop
    # Line 269
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 256
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 272
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 271
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 269
    mflo	$t8
    # Line 256
    addiu	$s3,$s3,-12756
    # Line 268
    lw	$s7,4864($s0)
    # Line 271
    mult	$s4,$a1
    # Line 256
    addu	$gp,$t9,$s3
    # Line 274
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 265
    lw	$s1,4816($s0)
    # Line 266
    lw	$s7,4836($s0)
    # Line 269
    lw	$s3,4868($s0)
    # Line 265
    addu	$s1,$s1,$s2
    # Line 271
    lw	$s2,4788($s0)
    # Line 267
    lw	$s4,4840($s0)
    # Line 270
    lw	$s8,4888($s0)
    # Line 269
    addu	$s3,$s3,$t8
    # Line 267
    addu	$s4,$s4,$ra
    # Line 271
    mflo	$t8
    # Line 274
    jal	glBegin
    # Line 271
    addu	$s2,$s2,$t8
    # Line 275
    blez	$s6,.L0dbd1990
    move	$s5,$zero
.L0dbd1938:
    # Line 276
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 277
    ld	$t9,88($sp)
    # Line 276
    lw	$v0,4824($s0)
    # Line 277
    move	$a0,$s4
    jalr	$t9
    # Line 276
    addu	$s1,$v0,$s1
    # Line 278
    move	$a0,$s3
    # Line 277
    lw	$v1,4852($s0)
    # Line 278
    move	$t9,$s8
    jalr	$s8
    # Line 277
    addu	$s4,$v1,$s4
    # Line 278
    lw	$a0,4876($s0)
    # Line 279
    ld	$t9,80($sp)
    # Line 278
    addu	$s3,$a0,$s3
    # Line 279
    jalr	$t9
    move	$a0,$s2
    # Line 275
    addiu	$s5,$s5,1
    # Line 279
    lw	$a1,4800($s0)
    # Line 275
    bne	$s6,$s5,.L0dbd1938
    # Line 279
    addu	$s2,$a1,$s2
.L0dbd1990:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 281
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 282
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysNCIV

# Function: __glDrawArraysTIV
# Declared: Line 283 (Source lines: 283-306)
# Address: 0x0dbd19cc - 0x0dbd1af0 (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysTIV
.ent __glDrawArraysTIV
__glDrawArraysTIV:
    # Line 283
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 284
    lw	$s3,__glCurrentContext
    # Line 292
    lw	$v1,4904($s3)
    mult	$v1,$a1
    # Line 294
    lw	$v0,4876($s3)
    # Line 292
    mflo	$t8
    nop
    nop
    # Line 294
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 283
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 297
    lw	$s7,4812($s3)
    # Line 295
    lw	$s8,4888($s3)
    sd	$s1,32($sp)
    # Line 296
    lw	$at,4800($s3)
    # Line 294
    mflo	$s1
    # Line 293
    lw	$s6,4916($s3)
    sd	$s2,0($sp)
    # Line 296
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 283
    lui	$ra,0x3
    addiu	$ra,$ra,-13108
    addu	$gp,$t9,$ra
    # Line 292
    lw	$s2,4892($s3)
    # Line 294
    lw	$s0,4868($s3)
    # Line 299
    # lw $t9, -17676($gp) # &glBegin
    # Line 292
    addu	$s2,$s2,$t8
    # Line 294
    addu	$s0,$s0,$s1
    # Line 296
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 299
    jal	glBegin
    # Line 296
    addu	$s1,$s1,$t8
    # Line 300
    blez	$s5,.L0dbd1ab4
    move	$s4,$zero
.L0dbd1a70:
    # Line 301
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4904($s3)
    # Line 302
    move	$t9,$s8
    # Line 301
    addu	$s2,$a0,$s2
    # Line 302
    jalr	$s8
    move	$a0,$s0
    # Line 303
    move	$a0,$s1
    # Line 302
    lw	$a1,4876($s3)
    # Line 303
    move	$t9,$s7
    jalr	$s7
    # Line 302
    addu	$s0,$a1,$s0
    # Line 300
    addiu	$s4,$s4,1
    # Line 303
    lw	$at,4800($s3)
    # Line 300
    bne	$s5,$s4,.L0dbd1a70
    # Line 303
    addu	$s1,$at,$s1
.L0dbd1ab4:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 305
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 306
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysTIV

# Function: __glDrawArraysNTIV
# Declared: Line 307 (Source lines: 307-333)
# Address: 0x0dbd1af0 - 0x0dbd1c50 (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysNTIV
.ent __glDrawArraysNTIV
__glDrawArraysNTIV:
    # Line 307
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 308
    lw	$s0,__glCurrentContext
    # Line 316
    lw	$at,4824($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 318
    lw	$ra,4904($s0)
    # Line 316
    mflo	$s2
    nop
    nop
    # Line 318
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 320
    lw	$s8,4876($s0)
    # Line 318
    mflo	$ra
    nop
    nop
    # Line 320
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 307
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 323
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 322
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 320
    mflo	$t8
    # Line 307
    addiu	$s3,$s3,-13400
    # Line 319
    lw	$s7,4916($s0)
    # Line 322
    mult	$s4,$a1
    # Line 307
    addu	$gp,$t9,$s3
    # Line 325
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 316
    lw	$s1,4816($s0)
    # Line 317
    lw	$s7,4836($s0)
    # Line 320
    lw	$s3,4868($s0)
    # Line 316
    addu	$s1,$s1,$s2
    # Line 322
    lw	$s2,4788($s0)
    # Line 318
    lw	$s4,4892($s0)
    # Line 321
    lw	$s8,4888($s0)
    # Line 320
    addu	$s3,$s3,$t8
    # Line 318
    addu	$s4,$s4,$ra
    # Line 322
    mflo	$t8
    # Line 325
    jal	glBegin
    # Line 322
    addu	$s2,$s2,$t8
    # Line 326
    blez	$s6,.L0dbd1c14
    move	$s5,$zero
.L0dbd1bbc:
    # Line 327
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 328
    ld	$t9,88($sp)
    # Line 327
    lw	$v0,4824($s0)
    # Line 328
    move	$a0,$s4
    jalr	$t9
    # Line 327
    addu	$s1,$v0,$s1
    # Line 329
    move	$a0,$s3
    # Line 328
    lw	$v1,4904($s0)
    # Line 329
    move	$t9,$s8
    jalr	$s8
    # Line 328
    addu	$s4,$v1,$s4
    # Line 329
    lw	$a0,4876($s0)
    # Line 330
    ld	$t9,80($sp)
    # Line 329
    addu	$s3,$a0,$s3
    # Line 330
    jalr	$t9
    move	$a0,$s2
    # Line 326
    addiu	$s5,$s5,1
    # Line 330
    lw	$a1,4800($s0)
    # Line 326
    bne	$s6,$s5,.L0dbd1bbc
    # Line 330
    addu	$s2,$a1,$s2
.L0dbd1c14:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 332
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 333
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysNTIV

# Function: __glDrawArraysCTIV
# Declared: Line 334 (Source lines: 334-360)
# Address: 0x0dbd1c50 - 0x0dbd1db0 (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysCTIV
.ent __glDrawArraysCTIV
__glDrawArraysCTIV:
    # Line 334
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 335
    lw	$s0,__glCurrentContext
    # Line 343
    lw	$at,4852($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 345
    lw	$ra,4904($s0)
    # Line 343
    mflo	$s2
    nop
    nop
    # Line 345
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 347
    lw	$s8,4876($s0)
    # Line 345
    mflo	$ra
    nop
    nop
    # Line 347
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 334
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 350
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 349
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 347
    mflo	$t8
    # Line 334
    addiu	$s3,$s3,-13752
    # Line 346
    lw	$s7,4916($s0)
    # Line 349
    mult	$s4,$a1
    # Line 334
    addu	$gp,$t9,$s3
    # Line 352
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 343
    lw	$s1,4840($s0)
    # Line 344
    lw	$s7,4864($s0)
    # Line 347
    lw	$s3,4868($s0)
    # Line 343
    addu	$s1,$s1,$s2
    # Line 349
    lw	$s2,4788($s0)
    # Line 345
    lw	$s4,4892($s0)
    # Line 348
    lw	$s8,4888($s0)
    # Line 347
    addu	$s3,$s3,$t8
    # Line 345
    addu	$s4,$s4,$ra
    # Line 349
    mflo	$t8
    # Line 352
    jal	glBegin
    # Line 349
    addu	$s2,$s2,$t8
    # Line 353
    blez	$s6,.L0dbd1d74
    move	$s5,$zero
.L0dbd1d1c:
    # Line 354
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 355
    ld	$t9,88($sp)
    # Line 354
    lw	$v0,4852($s0)
    # Line 355
    move	$a0,$s4
    jalr	$t9
    # Line 354
    addu	$s1,$v0,$s1
    # Line 356
    move	$a0,$s3
    # Line 355
    lw	$v1,4904($s0)
    # Line 356
    move	$t9,$s8
    jalr	$s8
    # Line 355
    addu	$s4,$v1,$s4
    # Line 356
    lw	$a0,4876($s0)
    # Line 357
    ld	$t9,80($sp)
    # Line 356
    addu	$s3,$a0,$s3
    # Line 357
    jalr	$t9
    move	$a0,$s2
    # Line 353
    addiu	$s5,$s5,1
    # Line 357
    lw	$a1,4800($s0)
    # Line 353
    bne	$s6,$s5,.L0dbd1d1c
    # Line 357
    addu	$s2,$a1,$s2
.L0dbd1d74:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 359
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 360
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysCTIV

# Function: __glDrawArraysNCTIV
# Declared: Line 361 (Source lines: 361-390)
# Address: 0x0dbd1db0 - 0x0dbd1f44 (Size: 404 bytes, Frame: 160)
.globl __glDrawArraysNCTIV
.ent __glDrawArraysNCTIV
__glDrawArraysNCTIV:
    # Line 361
    addiu	$sp,$sp,-160
    sd	$s0,24($sp)
    # Line 362
    lw	$s0,__glCurrentContext
    # Line 370
    lw	$t2,4824($s0)
    mult	$t2,$a1
    # Line 372
    lw	$t1,4852($s0)
    # Line 370
    mflo	$v0
    nop
    nop
    # Line 372
    mult	$t1,$a1
    # Line 374
    lw	$t0,4904($s0)
    # Line 372
    mflo	$at
    nop
    nop
    # Line 374
    mult	$t0,$a1
    sd	$s6,112($sp)
    sd	$s8,56($sp)
    sd	$s5,40($sp)
    sd	$s4,16($sp)
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 376
    lw	$a7,4876($s0)
    # Line 374
    mflo	$ra
    sd	$s1,32($sp)
    # Line 371
    lw	$s8,4836($s0)
    # Line 376
    mult	$a7,$a1
    sd	$s3,8($sp)
    sd	$gp,72($sp)
    # Line 361
    lui	$v1,0x3
    addiu	$v1,$v1,-14104
    addu	$gp,$t9,$v1
    # Line 381
    # lw $t9, -17676($gp) # &glBegin
    # Line 378
    lw	$s1,4788($s0)
    # Line 374
    lw	$s2,4892($s0)
    # Line 372
    lw	$s4,4840($s0)
    sd	$s7,48($sp)
    # Line 361
    move	$s7,$a2
    # Line 378
    lw	$a2,4800($s0)
    # Line 376
    mflo	$t8
    # Line 370
    lw	$s5,4816($s0)
    # Line 373
    lw	$a3,4864($s0)
    # Line 378
    mult	$a2,$a1
    # Line 379
    lw	$a6,4812($s0)
    # Line 377
    lw	$a5,4888($s0)
    # Line 375
    lw	$a4,4916($s0)
    sd	$a6,104($sp)
    sd	$a5,96($sp)
    sd	$a4,88($sp)
    sd	$a3,80($sp)
    # Line 376
    lw	$s3,4868($s0)
    # Line 370
    addu	$s5,$s5,$v0
    # Line 372
    addu	$s4,$s4,$at
    # Line 374
    addu	$s2,$s2,$ra
    # Line 376
    addu	$s3,$s3,$t8
    # Line 378
    mflo	$t8
    # Line 381
    jal	glBegin
    # Line 378
    addu	$s1,$s1,$t8
    # Line 382
    blez	$s7,.L0dbd1f08
    move	$s6,$zero
.L0dbd1e9c:
    # Line 383
    move	$a0,$s5
    jalr	$s8
    move	$t9,$s8
    # Line 384
    ld	$t9,80($sp)
    # Line 383
    lw	$t3,4824($s0)
    # Line 384
    move	$a0,$s4
    jalr	$t9
    # Line 383
    addu	$s5,$t3,$s5
    # Line 385
    ld	$t9,88($sp)
    # Line 384
    lw	$t8,4852($s0)
    # Line 385
    move	$a0,$s2
    jalr	$t9
    # Line 384
    addu	$s4,$t8,$s4
    # Line 385
    lw	$t9,4904($s0)
    addu	$s2,$t9,$s2
    # Line 386
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s3
    lw	$ra,4876($s0)
    # Line 387
    ld	$t9,104($sp)
    # Line 386
    addu	$s3,$ra,$s3
    # Line 387
    jalr	$t9
    move	$a0,$s1
    # Line 382
    addiu	$s6,$s6,1
    # Line 387
    lw	$at,4800($s0)
    # Line 382
    bne	$s7,$s6,.L0dbd1e9c
    # Line 387
    addu	$s1,$at,$s1
.L0dbd1f08:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,16($sp)
    # Line 389
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,112($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 390
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glDrawArraysNCTIV

# Function: __glDrawArraysEV
# Declared: Line 391 (Source lines: 391-411)
# Address: 0x0dbd1f44 - 0x0dbd2024 (Size: 224 bytes, Frame: 240)
.globl __glDrawArraysEV
.ent __glDrawArraysEV
__glDrawArraysEV:
    # Line 391
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    # Line 392
    lw	$s2,__glCurrentContext
    # Line 400
    lw	$v0,4924($s2)
    mult	$v0,$a1
    sd	$s4,64($sp)
    sd	$s3,8($sp)
    # Line 391
    move	$s3,$a2
    sd	$s5,40($sp)
    # Line 402
    lw	$at,4800($s2)
    # Line 400
    mflo	$t8
    sd	$s6,16($sp)
    sd	$s0,24($sp)
    # Line 402
    mult	$at,$a1
    # Line 403
    lw	$s6,4812($s2)
    # Line 401
    lw	$s5,4936($s2)
    sd	$s1,32($sp)
    sd	$gp,56($sp)
    sd	$ra,48($sp)
    # Line 391
    lui	$ra,0x3
    addiu	$ra,$ra,-14508
    addu	$gp,$t9,$ra
    # Line 400
    lw	$s1,4920($s2)
    # Line 402
    lw	$s0,4788($s2)
    # Line 405
    # lw $t9, -17676($gp) # &glBegin
    # Line 400
    addu	$s1,$s1,$t8
    # Line 402
    mflo	$t8
    # Line 405
    jal	glBegin
    # Line 402
    addu	$s0,$s0,$t8
    # Line 406
    blez	$s3,.L0dbd1ff0
    move	$s4,$zero
.L0dbd1fc0:
    # Line 407
    move	$a0,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 408
    move	$a0,$s0
    # Line 407
    lw	$v1,4924($s2)
    # Line 408
    move	$t9,$s6
    jalr	$s6
    # Line 407
    addu	$s1,$v1,$s1
    # Line 406
    addiu	$s4,$s4,1
    # Line 408
    lw	$a1,4800($s2)
    # Line 406
    bne	$s3,$s4,.L0dbd1fc0
    # Line 408
    addu	$s0,$a1,$s0
.L0dbd1ff0:
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,64($sp)
    # Line 410
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 411
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysEV

# Function: __glDrawArraysNEV
# Declared: Line 412 (Source lines: 412-435)
# Address: 0x0dbd2024 - 0x0dbd2148 (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysNEV
.ent __glDrawArraysNEV
__glDrawArraysNEV:
    # Line 412
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 413
    lw	$s3,__glCurrentContext
    # Line 421
    lw	$v1,4824($s3)
    mult	$v1,$a1
    # Line 423
    lw	$v0,4924($s3)
    # Line 421
    mflo	$t8
    nop
    nop
    # Line 423
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 412
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 426
    lw	$s7,4812($s3)
    # Line 424
    lw	$s8,4936($s3)
    sd	$s1,32($sp)
    # Line 425
    lw	$at,4800($s3)
    # Line 423
    mflo	$s1
    # Line 422
    lw	$s6,4836($s3)
    sd	$s2,0($sp)
    # Line 425
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 412
    lui	$ra,0x3
    addiu	$ra,$ra,-14732
    addu	$gp,$t9,$ra
    # Line 421
    lw	$s2,4816($s3)
    # Line 423
    lw	$s0,4920($s3)
    # Line 428
    # lw $t9, -17676($gp) # &glBegin
    # Line 421
    addu	$s2,$s2,$t8
    # Line 423
    addu	$s0,$s0,$s1
    # Line 425
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 428
    jal	glBegin
    # Line 425
    addu	$s1,$s1,$t8
    # Line 429
    blez	$s5,.L0dbd210c
    move	$s4,$zero
.L0dbd20c8:
    # Line 430
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4824($s3)
    # Line 431
    move	$t9,$s8
    # Line 430
    addu	$s2,$a0,$s2
    # Line 431
    jalr	$s8
    move	$a0,$s0
    # Line 432
    move	$a0,$s1
    # Line 431
    lw	$a1,4924($s3)
    # Line 432
    move	$t9,$s7
    jalr	$s7
    # Line 431
    addu	$s0,$a1,$s0
    # Line 429
    addiu	$s4,$s4,1
    # Line 432
    lw	$at,4800($s3)
    # Line 429
    bne	$s5,$s4,.L0dbd20c8
    # Line 432
    addu	$s1,$at,$s1
.L0dbd210c:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 434
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 435
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNEV

# Function: __glDrawArraysCEV
# Declared: Line 436 (Source lines: 436-459)
# Address: 0x0dbd2148 - 0x0dbd226c (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysCEV
.ent __glDrawArraysCEV
__glDrawArraysCEV:
    # Line 436
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 437
    lw	$s3,__glCurrentContext
    # Line 445
    lw	$v1,4852($s3)
    mult	$v1,$a1
    # Line 447
    lw	$v0,4924($s3)
    # Line 445
    mflo	$t8
    nop
    nop
    # Line 447
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 436
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 450
    lw	$s7,4812($s3)
    # Line 448
    lw	$s8,4936($s3)
    sd	$s1,32($sp)
    # Line 449
    lw	$at,4800($s3)
    # Line 447
    mflo	$s1
    # Line 446
    lw	$s6,4864($s3)
    sd	$s2,0($sp)
    # Line 449
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 436
    lui	$ra,0x3
    addiu	$ra,$ra,-15024
    addu	$gp,$t9,$ra
    # Line 445
    lw	$s2,4840($s3)
    # Line 447
    lw	$s0,4920($s3)
    # Line 452
    # lw $t9, -17676($gp) # &glBegin
    # Line 445
    addu	$s2,$s2,$t8
    # Line 447
    addu	$s0,$s0,$s1
    # Line 449
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 452
    jal	glBegin
    # Line 449
    addu	$s1,$s1,$t8
    # Line 453
    blez	$s5,.L0dbd2230
    move	$s4,$zero
.L0dbd21ec:
    # Line 454
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4852($s3)
    # Line 455
    move	$t9,$s8
    # Line 454
    addu	$s2,$a0,$s2
    # Line 455
    jalr	$s8
    move	$a0,$s0
    # Line 456
    move	$a0,$s1
    # Line 455
    lw	$a1,4924($s3)
    # Line 456
    move	$t9,$s7
    jalr	$s7
    # Line 455
    addu	$s0,$a1,$s0
    # Line 453
    addiu	$s4,$s4,1
    # Line 456
    lw	$at,4800($s3)
    # Line 453
    bne	$s5,$s4,.L0dbd21ec
    # Line 456
    addu	$s1,$at,$s1
.L0dbd2230:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 458
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 459
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysCEV

# Function: __glDrawArraysNCEV
# Declared: Line 460 (Source lines: 460-486)
# Address: 0x0dbd226c - 0x0dbd23cc (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysNCEV
.ent __glDrawArraysNCEV
__glDrawArraysNCEV:
    # Line 460
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 461
    lw	$s0,__glCurrentContext
    # Line 469
    lw	$at,4824($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 471
    lw	$ra,4852($s0)
    # Line 469
    mflo	$s2
    nop
    nop
    # Line 471
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 473
    lw	$s8,4924($s0)
    # Line 471
    mflo	$ra
    nop
    nop
    # Line 473
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 460
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 476
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 475
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 473
    mflo	$t8
    # Line 460
    addiu	$s3,$s3,-15316
    # Line 472
    lw	$s7,4864($s0)
    # Line 475
    mult	$s4,$a1
    # Line 460
    addu	$gp,$t9,$s3
    # Line 478
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 469
    lw	$s1,4816($s0)
    # Line 470
    lw	$s7,4836($s0)
    # Line 473
    lw	$s3,4920($s0)
    # Line 469
    addu	$s1,$s1,$s2
    # Line 475
    lw	$s2,4788($s0)
    # Line 471
    lw	$s4,4840($s0)
    # Line 474
    lw	$s8,4936($s0)
    # Line 473
    addu	$s3,$s3,$t8
    # Line 471
    addu	$s4,$s4,$ra
    # Line 475
    mflo	$t8
    # Line 478
    jal	glBegin
    # Line 475
    addu	$s2,$s2,$t8
    # Line 479
    blez	$s6,.L0dbd2390
    move	$s5,$zero
.L0dbd2338:
    # Line 480
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 481
    ld	$t9,88($sp)
    # Line 480
    lw	$v0,4824($s0)
    # Line 481
    move	$a0,$s4
    jalr	$t9
    # Line 480
    addu	$s1,$v0,$s1
    # Line 482
    move	$a0,$s3
    # Line 481
    lw	$v1,4852($s0)
    # Line 482
    move	$t9,$s8
    jalr	$s8
    # Line 481
    addu	$s4,$v1,$s4
    # Line 482
    lw	$a0,4924($s0)
    # Line 483
    ld	$t9,80($sp)
    # Line 482
    addu	$s3,$a0,$s3
    # Line 483
    jalr	$t9
    move	$a0,$s2
    # Line 479
    addiu	$s5,$s5,1
    # Line 483
    lw	$a1,4800($s0)
    # Line 479
    bne	$s6,$s5,.L0dbd2338
    # Line 483
    addu	$s2,$a1,$s2
.L0dbd2390:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 485
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 486
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysNCEV

# Function: __glDrawArraysTEV
# Declared: Line 487 (Source lines: 487-510)
# Address: 0x0dbd23cc - 0x0dbd24f0 (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysTEV
.ent __glDrawArraysTEV
__glDrawArraysTEV:
    # Line 487
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 488
    lw	$s3,__glCurrentContext
    # Line 496
    lw	$v1,4904($s3)
    mult	$v1,$a1
    # Line 498
    lw	$v0,4924($s3)
    # Line 496
    mflo	$t8
    nop
    nop
    # Line 498
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 487
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 501
    lw	$s7,4812($s3)
    # Line 499
    lw	$s8,4936($s3)
    sd	$s1,32($sp)
    # Line 500
    lw	$at,4800($s3)
    # Line 498
    mflo	$s1
    # Line 497
    lw	$s6,4916($s3)
    sd	$s2,0($sp)
    # Line 500
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 487
    lui	$ra,0x3
    addiu	$ra,$ra,-15668
    addu	$gp,$t9,$ra
    # Line 496
    lw	$s2,4892($s3)
    # Line 498
    lw	$s0,4920($s3)
    # Line 503
    # lw $t9, -17676($gp) # &glBegin
    # Line 496
    addu	$s2,$s2,$t8
    # Line 498
    addu	$s0,$s0,$s1
    # Line 500
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 503
    jal	glBegin
    # Line 500
    addu	$s1,$s1,$t8
    # Line 504
    blez	$s5,.L0dbd24b4
    move	$s4,$zero
.L0dbd2470:
    # Line 505
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4904($s3)
    # Line 506
    move	$t9,$s8
    # Line 505
    addu	$s2,$a0,$s2
    # Line 506
    jalr	$s8
    move	$a0,$s0
    # Line 507
    move	$a0,$s1
    # Line 506
    lw	$a1,4924($s3)
    # Line 507
    move	$t9,$s7
    jalr	$s7
    # Line 506
    addu	$s0,$a1,$s0
    # Line 504
    addiu	$s4,$s4,1
    # Line 507
    lw	$at,4800($s3)
    # Line 504
    bne	$s5,$s4,.L0dbd2470
    # Line 507
    addu	$s1,$at,$s1
.L0dbd24b4:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 509
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 510
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysTEV

# Function: __glDrawArraysNTEV
# Declared: Line 511 (Source lines: 511-537)
# Address: 0x0dbd24f0 - 0x0dbd2650 (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysNTEV
.ent __glDrawArraysNTEV
__glDrawArraysNTEV:
    # Line 511
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 512
    lw	$s0,__glCurrentContext
    # Line 520
    lw	$at,4824($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 522
    lw	$ra,4904($s0)
    # Line 520
    mflo	$s2
    nop
    nop
    # Line 522
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 524
    lw	$s8,4924($s0)
    # Line 522
    mflo	$ra
    nop
    nop
    # Line 524
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 511
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 527
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 526
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 524
    mflo	$t8
    # Line 511
    addiu	$s3,$s3,-15960
    # Line 523
    lw	$s7,4916($s0)
    # Line 526
    mult	$s4,$a1
    # Line 511
    addu	$gp,$t9,$s3
    # Line 529
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 520
    lw	$s1,4816($s0)
    # Line 521
    lw	$s7,4836($s0)
    # Line 524
    lw	$s3,4920($s0)
    # Line 520
    addu	$s1,$s1,$s2
    # Line 526
    lw	$s2,4788($s0)
    # Line 522
    lw	$s4,4892($s0)
    # Line 525
    lw	$s8,4936($s0)
    # Line 524
    addu	$s3,$s3,$t8
    # Line 522
    addu	$s4,$s4,$ra
    # Line 526
    mflo	$t8
    # Line 529
    jal	glBegin
    # Line 526
    addu	$s2,$s2,$t8
    # Line 530
    blez	$s6,.L0dbd2614
    move	$s5,$zero
.L0dbd25bc:
    # Line 531
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 532
    ld	$t9,88($sp)
    # Line 531
    lw	$v0,4824($s0)
    # Line 532
    move	$a0,$s4
    jalr	$t9
    # Line 531
    addu	$s1,$v0,$s1
    # Line 533
    move	$a0,$s3
    # Line 532
    lw	$v1,4904($s0)
    # Line 533
    move	$t9,$s8
    jalr	$s8
    # Line 532
    addu	$s4,$v1,$s4
    # Line 533
    lw	$a0,4924($s0)
    # Line 534
    ld	$t9,80($sp)
    # Line 533
    addu	$s3,$a0,$s3
    # Line 534
    jalr	$t9
    move	$a0,$s2
    # Line 530
    addiu	$s5,$s5,1
    # Line 534
    lw	$a1,4800($s0)
    # Line 530
    bne	$s6,$s5,.L0dbd25bc
    # Line 534
    addu	$s2,$a1,$s2
.L0dbd2614:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 536
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 537
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysNTEV

# Function: __glDrawArraysCTEV
# Declared: Line 538 (Source lines: 538-564)
# Address: 0x0dbd2650 - 0x0dbd27b0 (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysCTEV
.ent __glDrawArraysCTEV
__glDrawArraysCTEV:
    # Line 538
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 539
    lw	$s0,__glCurrentContext
    # Line 547
    lw	$at,4852($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 549
    lw	$ra,4904($s0)
    # Line 547
    mflo	$s2
    nop
    nop
    # Line 549
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 551
    lw	$s8,4924($s0)
    # Line 549
    mflo	$ra
    nop
    nop
    # Line 551
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 538
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 554
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 553
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 551
    mflo	$t8
    # Line 538
    addiu	$s3,$s3,-16312
    # Line 550
    lw	$s7,4916($s0)
    # Line 553
    mult	$s4,$a1
    # Line 538
    addu	$gp,$t9,$s3
    # Line 556
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 547
    lw	$s1,4840($s0)
    # Line 548
    lw	$s7,4864($s0)
    # Line 551
    lw	$s3,4920($s0)
    # Line 547
    addu	$s1,$s1,$s2
    # Line 553
    lw	$s2,4788($s0)
    # Line 549
    lw	$s4,4892($s0)
    # Line 552
    lw	$s8,4936($s0)
    # Line 551
    addu	$s3,$s3,$t8
    # Line 549
    addu	$s4,$s4,$ra
    # Line 553
    mflo	$t8
    # Line 556
    jal	glBegin
    # Line 553
    addu	$s2,$s2,$t8
    # Line 557
    blez	$s6,.L0dbd2774
    move	$s5,$zero
.L0dbd271c:
    # Line 558
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 559
    ld	$t9,88($sp)
    # Line 558
    lw	$v0,4852($s0)
    # Line 559
    move	$a0,$s4
    jalr	$t9
    # Line 558
    addu	$s1,$v0,$s1
    # Line 560
    move	$a0,$s3
    # Line 559
    lw	$v1,4904($s0)
    # Line 560
    move	$t9,$s8
    jalr	$s8
    # Line 559
    addu	$s4,$v1,$s4
    # Line 560
    lw	$a0,4924($s0)
    # Line 561
    ld	$t9,80($sp)
    # Line 560
    addu	$s3,$a0,$s3
    # Line 561
    jalr	$t9
    move	$a0,$s2
    # Line 557
    addiu	$s5,$s5,1
    # Line 561
    lw	$a1,4800($s0)
    # Line 557
    bne	$s6,$s5,.L0dbd271c
    # Line 561
    addu	$s2,$a1,$s2
.L0dbd2774:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 563
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 564
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysCTEV

# Function: __glDrawArraysNCTEV
# Declared: Line 565 (Source lines: 565-594)
# Address: 0x0dbd27b0 - 0x0dbd2944 (Size: 404 bytes, Frame: 160)
.globl __glDrawArraysNCTEV
.ent __glDrawArraysNCTEV
__glDrawArraysNCTEV:
    # Line 565
    addiu	$sp,$sp,-160
    sd	$s0,24($sp)
    # Line 566
    lw	$s0,__glCurrentContext
    # Line 574
    lw	$t2,4824($s0)
    mult	$t2,$a1
    # Line 576
    lw	$t1,4852($s0)
    # Line 574
    mflo	$v0
    nop
    nop
    # Line 576
    mult	$t1,$a1
    # Line 578
    lw	$t0,4904($s0)
    # Line 576
    mflo	$at
    nop
    nop
    # Line 578
    mult	$t0,$a1
    sd	$s6,112($sp)
    sd	$s8,56($sp)
    sd	$s5,40($sp)
    sd	$s4,16($sp)
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 580
    lw	$a7,4924($s0)
    # Line 578
    mflo	$ra
    sd	$s1,32($sp)
    # Line 575
    lw	$s8,4836($s0)
    # Line 580
    mult	$a7,$a1
    sd	$s3,8($sp)
    sd	$gp,72($sp)
    # Line 565
    lui	$v1,0x3
    addiu	$v1,$v1,-16664
    addu	$gp,$t9,$v1
    # Line 585
    # lw $t9, -17676($gp) # &glBegin
    # Line 582
    lw	$s1,4788($s0)
    # Line 578
    lw	$s2,4892($s0)
    # Line 576
    lw	$s4,4840($s0)
    sd	$s7,48($sp)
    # Line 565
    move	$s7,$a2
    # Line 582
    lw	$a2,4800($s0)
    # Line 580
    mflo	$t8
    # Line 574
    lw	$s5,4816($s0)
    # Line 577
    lw	$a3,4864($s0)
    # Line 582
    mult	$a2,$a1
    # Line 583
    lw	$a6,4812($s0)
    # Line 581
    lw	$a5,4936($s0)
    # Line 579
    lw	$a4,4916($s0)
    sd	$a6,104($sp)
    sd	$a5,96($sp)
    sd	$a4,88($sp)
    sd	$a3,80($sp)
    # Line 580
    lw	$s3,4920($s0)
    # Line 574
    addu	$s5,$s5,$v0
    # Line 576
    addu	$s4,$s4,$at
    # Line 578
    addu	$s2,$s2,$ra
    # Line 580
    addu	$s3,$s3,$t8
    # Line 582
    mflo	$t8
    # Line 585
    jal	glBegin
    # Line 582
    addu	$s1,$s1,$t8
    # Line 586
    blez	$s7,.L0dbd2908
    move	$s6,$zero
.L0dbd289c:
    # Line 587
    move	$a0,$s5
    jalr	$s8
    move	$t9,$s8
    # Line 588
    ld	$t9,80($sp)
    # Line 587
    lw	$t3,4824($s0)
    # Line 588
    move	$a0,$s4
    jalr	$t9
    # Line 587
    addu	$s5,$t3,$s5
    # Line 589
    ld	$t9,88($sp)
    # Line 588
    lw	$t8,4852($s0)
    # Line 589
    move	$a0,$s2
    jalr	$t9
    # Line 588
    addu	$s4,$t8,$s4
    # Line 589
    lw	$t9,4904($s0)
    addu	$s2,$t9,$s2
    # Line 590
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s3
    lw	$ra,4924($s0)
    # Line 591
    ld	$t9,104($sp)
    # Line 590
    addu	$s3,$ra,$s3
    # Line 591
    jalr	$t9
    move	$a0,$s1
    # Line 586
    addiu	$s6,$s6,1
    # Line 591
    lw	$at,4800($s0)
    # Line 586
    bne	$s7,$s6,.L0dbd289c
    # Line 591
    addu	$s1,$at,$s1
.L0dbd2908:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,16($sp)
    # Line 593
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,112($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 594
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glDrawArraysNCTEV

# Function: __glDrawArraysIEV
# Declared: Line 595 (Source lines: 595-618)
# Address: 0x0dbd2944 - 0x0dbd2a68 (Size: 292 bytes, Frame: 128)
.globl __glDrawArraysIEV
.ent __glDrawArraysIEV
__glDrawArraysIEV:
    # Line 595
    addiu	$sp,$sp,-128
    sd	$s3,8($sp)
    # Line 596
    lw	$s3,__glCurrentContext
    # Line 604
    lw	$v1,4876($s3)
    mult	$v1,$a1
    # Line 606
    lw	$v0,4924($s3)
    # Line 604
    mflo	$t8
    nop
    nop
    # Line 606
    mult	$v0,$a1
    sd	$s4,80($sp)
    sd	$s5,40($sp)
    # Line 595
    move	$s5,$a2
    sd	$s6,16($sp)
    sd	$s8,56($sp)
    sd	$s7,48($sp)
    # Line 609
    lw	$s7,4812($s3)
    # Line 607
    lw	$s8,4936($s3)
    sd	$s1,32($sp)
    # Line 608
    lw	$at,4800($s3)
    # Line 606
    mflo	$s1
    # Line 605
    lw	$s6,4888($s3)
    sd	$s2,0($sp)
    # Line 608
    mult	$at,$a1
    sd	$gp,72($sp)
    sd	$s0,24($sp)
    sd	$ra,64($sp)
    # Line 595
    lui	$ra,0x3
    addiu	$ra,$ra,-17068
    addu	$gp,$t9,$ra
    # Line 604
    lw	$s2,4868($s3)
    # Line 606
    lw	$s0,4920($s3)
    # Line 611
    # lw $t9, -17676($gp) # &glBegin
    # Line 604
    addu	$s2,$s2,$t8
    # Line 606
    addu	$s0,$s0,$s1
    # Line 608
    lw	$s1,4788($s3)
    mflo	$t8
    # Line 611
    jal	glBegin
    # Line 608
    addu	$s1,$s1,$t8
    # Line 612
    blez	$s5,.L0dbd2a2c
    move	$s4,$zero
.L0dbd29e8:
    # Line 613
    move	$a0,$s2
    jalr	$s6
    move	$t9,$s6
    lw	$a0,4876($s3)
    # Line 614
    move	$t9,$s8
    # Line 613
    addu	$s2,$a0,$s2
    # Line 614
    jalr	$s8
    move	$a0,$s0
    # Line 615
    move	$a0,$s1
    # Line 614
    lw	$a1,4924($s3)
    # Line 615
    move	$t9,$s7
    jalr	$s7
    # Line 614
    addu	$s0,$a1,$s0
    # Line 612
    addiu	$s4,$s4,1
    # Line 615
    lw	$at,4800($s3)
    # Line 612
    bne	$s5,$s4,.L0dbd29e8
    # Line 615
    addu	$s1,$at,$s1
.L0dbd2a2c:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,80($sp)
    # Line 617
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 618
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysIEV

# Function: __glDrawArraysNIEV
# Declared: Line 619 (Source lines: 619-645)
# Address: 0x0dbd2a68 - 0x0dbd2bc8 (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysNIEV
.ent __glDrawArraysNIEV
__glDrawArraysNIEV:
    # Line 619
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 620
    lw	$s0,__glCurrentContext
    # Line 628
    lw	$at,4824($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 630
    lw	$ra,4876($s0)
    # Line 628
    mflo	$s2
    nop
    nop
    # Line 630
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 632
    lw	$s8,4924($s0)
    # Line 630
    mflo	$ra
    nop
    nop
    # Line 632
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 619
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 635
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 634
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 632
    mflo	$t8
    # Line 619
    addiu	$s3,$s3,-17360
    # Line 631
    lw	$s7,4888($s0)
    # Line 634
    mult	$s4,$a1
    # Line 619
    addu	$gp,$t9,$s3
    # Line 637
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 628
    lw	$s1,4816($s0)
    # Line 629
    lw	$s7,4836($s0)
    # Line 632
    lw	$s3,4920($s0)
    # Line 628
    addu	$s1,$s1,$s2
    # Line 634
    lw	$s2,4788($s0)
    # Line 630
    lw	$s4,4868($s0)
    # Line 633
    lw	$s8,4936($s0)
    # Line 632
    addu	$s3,$s3,$t8
    # Line 630
    addu	$s4,$s4,$ra
    # Line 634
    mflo	$t8
    # Line 637
    jal	glBegin
    # Line 634
    addu	$s2,$s2,$t8
    # Line 638
    blez	$s6,.L0dbd2b8c
    move	$s5,$zero
.L0dbd2b34:
    # Line 639
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 640
    ld	$t9,88($sp)
    # Line 639
    lw	$v0,4824($s0)
    # Line 640
    move	$a0,$s4
    jalr	$t9
    # Line 639
    addu	$s1,$v0,$s1
    # Line 641
    move	$a0,$s3
    # Line 640
    lw	$v1,4876($s0)
    # Line 641
    move	$t9,$s8
    jalr	$s8
    # Line 640
    addu	$s4,$v1,$s4
    # Line 641
    lw	$a0,4924($s0)
    # Line 642
    ld	$t9,80($sp)
    # Line 641
    addu	$s3,$a0,$s3
    # Line 642
    jalr	$t9
    move	$a0,$s2
    # Line 638
    addiu	$s5,$s5,1
    # Line 642
    lw	$a1,4800($s0)
    # Line 638
    bne	$s6,$s5,.L0dbd2b34
    # Line 642
    addu	$s2,$a1,$s2
.L0dbd2b8c:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 644
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 645
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysNIEV

# Function: __glDrawArraysCIEV
# Declared: Line 646 (Source lines: 646-672)
# Address: 0x0dbd2bc8 - 0x0dbd2d28 (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysCIEV
.ent __glDrawArraysCIEV
__glDrawArraysCIEV:
    # Line 646
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 647
    lw	$s0,__glCurrentContext
    # Line 655
    lw	$at,4852($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 657
    lw	$ra,4876($s0)
    # Line 655
    mflo	$s2
    nop
    nop
    # Line 657
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 659
    lw	$s8,4924($s0)
    # Line 657
    mflo	$ra
    nop
    nop
    # Line 659
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 646
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 662
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 661
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 659
    mflo	$t8
    # Line 646
    addiu	$s3,$s3,-17712
    # Line 658
    lw	$s7,4888($s0)
    # Line 661
    mult	$s4,$a1
    # Line 646
    addu	$gp,$t9,$s3
    # Line 664
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 655
    lw	$s1,4840($s0)
    # Line 656
    lw	$s7,4864($s0)
    # Line 659
    lw	$s3,4920($s0)
    # Line 655
    addu	$s1,$s1,$s2
    # Line 661
    lw	$s2,4788($s0)
    # Line 657
    lw	$s4,4868($s0)
    # Line 660
    lw	$s8,4936($s0)
    # Line 659
    addu	$s3,$s3,$t8
    # Line 657
    addu	$s4,$s4,$ra
    # Line 661
    mflo	$t8
    # Line 664
    jal	glBegin
    # Line 661
    addu	$s2,$s2,$t8
    # Line 665
    blez	$s6,.L0dbd2cec
    move	$s5,$zero
.L0dbd2c94:
    # Line 666
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 667
    ld	$t9,88($sp)
    # Line 666
    lw	$v0,4852($s0)
    # Line 667
    move	$a0,$s4
    jalr	$t9
    # Line 666
    addu	$s1,$v0,$s1
    # Line 668
    move	$a0,$s3
    # Line 667
    lw	$v1,4876($s0)
    # Line 668
    move	$t9,$s8
    jalr	$s8
    # Line 667
    addu	$s4,$v1,$s4
    # Line 668
    lw	$a0,4924($s0)
    # Line 669
    ld	$t9,80($sp)
    # Line 668
    addu	$s3,$a0,$s3
    # Line 669
    jalr	$t9
    move	$a0,$s2
    # Line 665
    addiu	$s5,$s5,1
    # Line 669
    lw	$a1,4800($s0)
    # Line 665
    bne	$s6,$s5,.L0dbd2c94
    # Line 669
    addu	$s2,$a1,$s2
.L0dbd2cec:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 671
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 672
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysCIEV

# Function: __glDrawArraysNCIEV
# Declared: Line 673 (Source lines: 673-702)
# Address: 0x0dbd2d28 - 0x0dbd2ebc (Size: 404 bytes, Frame: 160)
.globl __glDrawArraysNCIEV
.ent __glDrawArraysNCIEV
__glDrawArraysNCIEV:
    # Line 673
    addiu	$sp,$sp,-160
    sd	$s0,24($sp)
    # Line 674
    lw	$s0,__glCurrentContext
    # Line 682
    lw	$t2,4824($s0)
    mult	$t2,$a1
    # Line 684
    lw	$t1,4852($s0)
    # Line 682
    mflo	$v0
    nop
    nop
    # Line 684
    mult	$t1,$a1
    # Line 686
    lw	$t0,4876($s0)
    # Line 684
    mflo	$at
    nop
    nop
    # Line 686
    mult	$t0,$a1
    sd	$s6,112($sp)
    sd	$s8,56($sp)
    sd	$s5,40($sp)
    sd	$s4,16($sp)
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 688
    lw	$a7,4924($s0)
    # Line 686
    mflo	$ra
    sd	$s1,32($sp)
    # Line 683
    lw	$s8,4836($s0)
    # Line 688
    mult	$a7,$a1
    sd	$s3,8($sp)
    sd	$gp,72($sp)
    # Line 673
    lui	$v1,0x3
    addiu	$v1,$v1,-18064
    addu	$gp,$t9,$v1
    # Line 693
    # lw $t9, -17676($gp) # &glBegin
    # Line 690
    lw	$s1,4788($s0)
    # Line 686
    lw	$s2,4868($s0)
    # Line 684
    lw	$s4,4840($s0)
    sd	$s7,48($sp)
    # Line 673
    move	$s7,$a2
    # Line 690
    lw	$a2,4800($s0)
    # Line 688
    mflo	$t8
    # Line 682
    lw	$s5,4816($s0)
    # Line 685
    lw	$a3,4864($s0)
    # Line 690
    mult	$a2,$a1
    # Line 691
    lw	$a6,4812($s0)
    # Line 689
    lw	$a5,4936($s0)
    # Line 687
    lw	$a4,4888($s0)
    sd	$a6,104($sp)
    sd	$a5,96($sp)
    sd	$a4,88($sp)
    sd	$a3,80($sp)
    # Line 688
    lw	$s3,4920($s0)
    # Line 682
    addu	$s5,$s5,$v0
    # Line 684
    addu	$s4,$s4,$at
    # Line 686
    addu	$s2,$s2,$ra
    # Line 688
    addu	$s3,$s3,$t8
    # Line 690
    mflo	$t8
    # Line 693
    jal	glBegin
    # Line 690
    addu	$s1,$s1,$t8
    # Line 694
    blez	$s7,.L0dbd2e80
    move	$s6,$zero
.L0dbd2e14:
    # Line 695
    move	$a0,$s5
    jalr	$s8
    move	$t9,$s8
    # Line 696
    ld	$t9,80($sp)
    # Line 695
    lw	$t3,4824($s0)
    # Line 696
    move	$a0,$s4
    jalr	$t9
    # Line 695
    addu	$s5,$t3,$s5
    # Line 697
    ld	$t9,88($sp)
    # Line 696
    lw	$t8,4852($s0)
    # Line 697
    move	$a0,$s2
    jalr	$t9
    # Line 696
    addu	$s4,$t8,$s4
    # Line 697
    lw	$t9,4876($s0)
    addu	$s2,$t9,$s2
    # Line 698
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s3
    lw	$ra,4924($s0)
    # Line 699
    ld	$t9,104($sp)
    # Line 698
    addu	$s3,$ra,$s3
    # Line 699
    jalr	$t9
    move	$a0,$s1
    # Line 694
    addiu	$s6,$s6,1
    # Line 699
    lw	$at,4800($s0)
    # Line 694
    bne	$s7,$s6,.L0dbd2e14
    # Line 699
    addu	$s1,$at,$s1
.L0dbd2e80:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,16($sp)
    # Line 701
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,112($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 702
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glDrawArraysNCIEV

# Function: __glDrawArraysTIEV
# Declared: Line 703 (Source lines: 703-729)
# Address: 0x0dbd2ebc - 0x0dbd301c (Size: 352 bytes, Frame: 144)
.globl __glDrawArraysTIEV
.ent __glDrawArraysTIEV
__glDrawArraysTIEV:
    # Line 703
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 704
    lw	$s0,__glCurrentContext
    # Line 712
    lw	$at,4904($s0)
    mult	$at,$a1
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 714
    lw	$ra,4876($s0)
    # Line 712
    mflo	$s2
    nop
    nop
    # Line 714
    mult	$ra,$a1
    sd	$s8,56($sp)
    # Line 716
    lw	$s8,4924($s0)
    # Line 714
    mflo	$ra
    nop
    nop
    # Line 716
    mult	$s8,$a1
    sd	$s5,96($sp)
    sd	$s6,16($sp)
    # Line 703
    move	$s6,$a2
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    sd	$s1,40($sp)
    sd	$s3,8($sp)
    lui	$s3,0x3
    # Line 719
    lw	$t8,4812($s0)
    sd	$s4,24($sp)
    # Line 718
    lw	$s4,4800($s0)
    sd	$t8,80($sp)
    # Line 716
    mflo	$t8
    # Line 703
    addiu	$s3,$s3,-18468
    # Line 715
    lw	$s7,4888($s0)
    # Line 718
    mult	$s4,$a1
    # Line 703
    addu	$gp,$t9,$s3
    # Line 721
    # lw $t9, -17676($gp) # &glBegin
    sd	$s7,88($sp)
    # Line 712
    lw	$s1,4892($s0)
    # Line 713
    lw	$s7,4916($s0)
    # Line 716
    lw	$s3,4920($s0)
    # Line 712
    addu	$s1,$s1,$s2
    # Line 718
    lw	$s2,4788($s0)
    # Line 714
    lw	$s4,4868($s0)
    # Line 717
    lw	$s8,4936($s0)
    # Line 716
    addu	$s3,$s3,$t8
    # Line 714
    addu	$s4,$s4,$ra
    # Line 718
    mflo	$t8
    # Line 721
    jal	glBegin
    # Line 718
    addu	$s2,$s2,$t8
    # Line 722
    blez	$s6,.L0dbd2fe0
    move	$s5,$zero
.L0dbd2f88:
    # Line 723
    move	$a0,$s1
    jalr	$s7
    move	$t9,$s7
    # Line 724
    ld	$t9,88($sp)
    # Line 723
    lw	$v0,4904($s0)
    # Line 724
    move	$a0,$s4
    jalr	$t9
    # Line 723
    addu	$s1,$v0,$s1
    # Line 725
    move	$a0,$s3
    # Line 724
    lw	$v1,4876($s0)
    # Line 725
    move	$t9,$s8
    jalr	$s8
    # Line 724
    addu	$s4,$v1,$s4
    # Line 725
    lw	$a0,4924($s0)
    # Line 726
    ld	$t9,80($sp)
    # Line 725
    addu	$s3,$a0,$s3
    # Line 726
    jalr	$t9
    move	$a0,$s2
    # Line 722
    addiu	$s5,$s5,1
    # Line 726
    lw	$a1,4800($s0)
    # Line 722
    bne	$s6,$s5,.L0dbd2f88
    # Line 726
    addu	$s2,$a1,$s2
.L0dbd2fe0:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,96($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 728
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 729
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysTIEV

# Function: __glDrawArraysNTIEV
# Declared: Line 730 (Source lines: 730-759)
# Address: 0x0dbd301c - 0x0dbd31b0 (Size: 404 bytes, Frame: 160)
.globl __glDrawArraysNTIEV
.ent __glDrawArraysNTIEV
__glDrawArraysNTIEV:
    # Line 730
    addiu	$sp,$sp,-160
    sd	$s0,24($sp)
    # Line 731
    lw	$s0,__glCurrentContext
    # Line 739
    lw	$t2,4824($s0)
    mult	$t2,$a1
    # Line 741
    lw	$t1,4904($s0)
    # Line 739
    mflo	$v0
    nop
    nop
    # Line 741
    mult	$t1,$a1
    # Line 743
    lw	$t0,4876($s0)
    # Line 741
    mflo	$at
    nop
    nop
    # Line 743
    mult	$t0,$a1
    sd	$s6,112($sp)
    sd	$s8,56($sp)
    sd	$s5,40($sp)
    sd	$s4,16($sp)
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 745
    lw	$a7,4924($s0)
    # Line 743
    mflo	$ra
    sd	$s1,32($sp)
    # Line 740
    lw	$s8,4836($s0)
    # Line 745
    mult	$a7,$a1
    sd	$s3,8($sp)
    sd	$gp,72($sp)
    # Line 730
    lui	$v1,0x3
    addiu	$v1,$v1,-18820
    addu	$gp,$t9,$v1
    # Line 750
    # lw $t9, -17676($gp) # &glBegin
    # Line 747
    lw	$s1,4788($s0)
    # Line 743
    lw	$s2,4868($s0)
    # Line 741
    lw	$s4,4892($s0)
    sd	$s7,48($sp)
    # Line 730
    move	$s7,$a2
    # Line 747
    lw	$a2,4800($s0)
    # Line 745
    mflo	$t8
    # Line 739
    lw	$s5,4816($s0)
    # Line 742
    lw	$a3,4916($s0)
    # Line 747
    mult	$a2,$a1
    # Line 748
    lw	$a6,4812($s0)
    # Line 746
    lw	$a5,4936($s0)
    # Line 744
    lw	$a4,4888($s0)
    sd	$a6,104($sp)
    sd	$a5,96($sp)
    sd	$a4,88($sp)
    sd	$a3,80($sp)
    # Line 745
    lw	$s3,4920($s0)
    # Line 739
    addu	$s5,$s5,$v0
    # Line 741
    addu	$s4,$s4,$at
    # Line 743
    addu	$s2,$s2,$ra
    # Line 745
    addu	$s3,$s3,$t8
    # Line 747
    mflo	$t8
    # Line 750
    jal	glBegin
    # Line 747
    addu	$s1,$s1,$t8
    # Line 751
    blez	$s7,.L0dbd3174
    move	$s6,$zero
.L0dbd3108:
    # Line 752
    move	$a0,$s5
    jalr	$s8
    move	$t9,$s8
    # Line 753
    ld	$t9,80($sp)
    # Line 752
    lw	$t3,4824($s0)
    # Line 753
    move	$a0,$s4
    jalr	$t9
    # Line 752
    addu	$s5,$t3,$s5
    # Line 754
    ld	$t9,88($sp)
    # Line 753
    lw	$t8,4904($s0)
    # Line 754
    move	$a0,$s2
    jalr	$t9
    # Line 753
    addu	$s4,$t8,$s4
    # Line 754
    lw	$t9,4876($s0)
    addu	$s2,$t9,$s2
    # Line 755
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s3
    lw	$ra,4924($s0)
    # Line 756
    ld	$t9,104($sp)
    # Line 755
    addu	$s3,$ra,$s3
    # Line 756
    jalr	$t9
    move	$a0,$s1
    # Line 751
    addiu	$s6,$s6,1
    # Line 756
    lw	$at,4800($s0)
    # Line 751
    bne	$s7,$s6,.L0dbd3108
    # Line 756
    addu	$s1,$at,$s1
.L0dbd3174:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,16($sp)
    # Line 758
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,112($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 759
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glDrawArraysNTIEV

# Function: __glDrawArraysCTIEV
# Declared: Line 760 (Source lines: 760-789)
# Address: 0x0dbd31b0 - 0x0dbd3344 (Size: 404 bytes, Frame: 160)
.globl __glDrawArraysCTIEV
.ent __glDrawArraysCTIEV
__glDrawArraysCTIEV:
    # Line 760
    addiu	$sp,$sp,-160
    sd	$s0,24($sp)
    # Line 761
    lw	$s0,__glCurrentContext
    # Line 769
    lw	$t2,4852($s0)
    mult	$t2,$a1
    # Line 771
    lw	$t1,4904($s0)
    # Line 769
    mflo	$v0
    nop
    nop
    # Line 771
    mult	$t1,$a1
    # Line 773
    lw	$t0,4876($s0)
    # Line 771
    mflo	$at
    nop
    nop
    # Line 773
    mult	$t0,$a1
    sd	$s6,112($sp)
    sd	$s8,56($sp)
    sd	$s5,40($sp)
    sd	$s4,16($sp)
    sd	$s2,0($sp)
    sd	$ra,64($sp)
    # Line 775
    lw	$a7,4924($s0)
    # Line 773
    mflo	$ra
    sd	$s1,32($sp)
    # Line 770
    lw	$s8,4864($s0)
    # Line 775
    mult	$a7,$a1
    sd	$s3,8($sp)
    sd	$gp,72($sp)
    # Line 760
    lui	$v1,0x3
    addiu	$v1,$v1,-19224
    addu	$gp,$t9,$v1
    # Line 780
    # lw $t9, -17676($gp) # &glBegin
    # Line 777
    lw	$s1,4788($s0)
    # Line 773
    lw	$s2,4868($s0)
    # Line 771
    lw	$s4,4892($s0)
    sd	$s7,48($sp)
    # Line 760
    move	$s7,$a2
    # Line 777
    lw	$a2,4800($s0)
    # Line 775
    mflo	$t8
    # Line 769
    lw	$s5,4840($s0)
    # Line 772
    lw	$a3,4916($s0)
    # Line 777
    mult	$a2,$a1
    # Line 778
    lw	$a6,4812($s0)
    # Line 776
    lw	$a5,4936($s0)
    # Line 774
    lw	$a4,4888($s0)
    sd	$a6,104($sp)
    sd	$a5,96($sp)
    sd	$a4,88($sp)
    sd	$a3,80($sp)
    # Line 775
    lw	$s3,4920($s0)
    # Line 769
    addu	$s5,$s5,$v0
    # Line 771
    addu	$s4,$s4,$at
    # Line 773
    addu	$s2,$s2,$ra
    # Line 775
    addu	$s3,$s3,$t8
    # Line 777
    mflo	$t8
    # Line 780
    jal	glBegin
    # Line 777
    addu	$s1,$s1,$t8
    # Line 781
    blez	$s7,.L0dbd3308
    move	$s6,$zero
.L0dbd329c:
    # Line 782
    move	$a0,$s5
    jalr	$s8
    move	$t9,$s8
    # Line 783
    ld	$t9,80($sp)
    # Line 782
    lw	$t3,4852($s0)
    # Line 783
    move	$a0,$s4
    jalr	$t9
    # Line 782
    addu	$s5,$t3,$s5
    # Line 784
    ld	$t9,88($sp)
    # Line 783
    lw	$t8,4904($s0)
    # Line 784
    move	$a0,$s2
    jalr	$t9
    # Line 783
    addu	$s4,$t8,$s4
    # Line 784
    lw	$t9,4876($s0)
    addu	$s2,$t9,$s2
    # Line 785
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s3
    lw	$ra,4924($s0)
    # Line 786
    ld	$t9,104($sp)
    # Line 785
    addu	$s3,$ra,$s3
    # Line 786
    jalr	$t9
    move	$a0,$s1
    # Line 781
    addiu	$s6,$s6,1
    # Line 786
    lw	$at,4800($s0)
    # Line 781
    bne	$s7,$s6,.L0dbd329c
    # Line 786
    addu	$s1,$at,$s1
.L0dbd3308:
    ld	$s8,56($sp)
    ld	$s7,48($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$s4,16($sp)
    # Line 788
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,112($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 789
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glDrawArraysCTIEV

# Function: __glDrawArraysNCTIEV
# Declared: Line 790 (Source lines: 790-822)
# Address: 0x0dbd3344 - 0x0dbd3514 (Size: 464 bytes, Frame: 176)
.globl __glDrawArraysNCTIEV
.ent __glDrawArraysNCTIEV
__glDrawArraysNCTIEV:
    # Line 790
    addiu	$sp,$sp,-176
    sd	$s0,32($sp)
    # Line 791
    lw	$s0,__glCurrentContext
    # Line 799
    lw	$t2,4824($s0)
    mult	$t2,$a1
    sd	$s4,24($sp)
    # Line 801
    lw	$t1,4852($s0)
    # Line 799
    mflo	$s4
    nop
    nop
    # Line 801
    mult	$t1,$a1
    sd	$s3,8($sp)
    # Line 803
    lw	$t0,4904($s0)
    # Line 801
    mflo	$s3
    nop
    nop
    # Line 803
    mult	$t0,$a1
    sd	$ra,64($sp)
    # Line 805
    lw	$a7,4876($s0)
    # Line 803
    mflo	$ra
    nop
    nop
    # Line 805
    mult	$a7,$a1
    sd	$s7,128($sp)
    sd	$s8,56($sp)
    # Line 790
    move	$s8,$a2
    sd	$gp,72($sp)
    lui	$at,0x3
    addiu	$at,$at,-19628
    addu	$gp,$t9,$at
    sd	$s5,48($sp)
    # Line 807
    lw	$a6,4924($s0)
    # Line 805
    mflo	$s5
    # Line 812
    # lw $t9, -17676($gp) # &glBegin
    sd	$s1,40($sp)
    # Line 807
    mult	$a6,$a1
    # Line 800
    lw	$v0,4836($s0)
    # Line 802
    lw	$v1,4864($s0)
    # Line 804
    lw	$a2,4916($s0)
    # Line 810
    lw	$a5,4812($s0)
    # Line 808
    lw	$a4,4936($s0)
    # Line 806
    lw	$a3,4888($s0)
    sd	$a5,120($sp)
    sd	$a4,112($sp)
    sd	$a3,104($sp)
    sd	$a2,96($sp)
    sd	$s6,16($sp)
    # Line 809
    lw	$s6,4800($s0)
    # Line 807
    mflo	$t8
    sd	$v1,88($sp)
    sd	$v0,80($sp)
    # Line 809
    mult	$s6,$a1
    # Line 799
    lw	$s1,4816($s0)
    sd	$s2,0($sp)
    # Line 801
    lw	$s2,4840($s0)
    # Line 799
    addu	$s1,$s1,$s4
    # Line 803
    lw	$s4,4892($s0)
    # Line 801
    addu	$s2,$s2,$s3
    # Line 805
    lw	$s3,4868($s0)
    # Line 803
    addu	$s4,$s4,$ra
    # Line 807
    lw	$s6,4920($s0)
    # Line 805
    addu	$s3,$s3,$s5
    # Line 809
    lw	$s5,4788($s0)
    # Line 807
    addu	$s6,$s6,$t8
    # Line 809
    mflo	$t8
    # Line 812
    jal	glBegin
    # Line 809
    addu	$s5,$s5,$t8
    # Line 813
    blez	$s8,.L0dbd34d8
    move	$s7,$zero
.L0dbd3458:
    # Line 814
    ld	$t9,80($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 815
    ld	$t9,88($sp)
    # Line 814
    lw	$t3,4824($s0)
    # Line 815
    move	$a0,$s2
    jalr	$t9
    # Line 814
    addu	$s1,$t3,$s1
    # Line 816
    ld	$t9,96($sp)
    # Line 815
    lw	$t8,4852($s0)
    # Line 816
    move	$a0,$s4
    jalr	$t9
    # Line 815
    addu	$s2,$t8,$s2
    # Line 816
    lw	$t9,4904($s0)
    addu	$s4,$t9,$s4
    # Line 817
    ld	$t9,104($sp)
    jalr	$t9
    move	$a0,$s3
    lw	$ra,4876($s0)
    # Line 818
    ld	$t9,112($sp)
    # Line 817
    addu	$s3,$ra,$s3
    # Line 818
    jalr	$t9
    move	$a0,$s6
    # Line 819
    ld	$t9,120($sp)
    # Line 818
    lw	$at,4924($s0)
    # Line 819
    move	$a0,$s5
    jalr	$t9
    # Line 818
    addu	$s6,$at,$s6
    # Line 813
    addiu	$s7,$s7,1
    # Line 819
    lw	$v0,4800($s0)
    # Line 813
    bne	$s8,$s7,.L0dbd3458
    # Line 819
    addu	$s5,$v0,$s5
.L0dbd34d8:
    ld	$s8,56($sp)
    ld	$s7,128($sp)
    ld	$s5,48($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    # Line 821
    # lw $t9, -17532($gp) # &glEnd
    ld	$s6,16($sp)
    ld	$s3,8($sp)
    jal	glEnd
    ld	$s2,0($sp)
    # Line 822
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glDrawArraysNCTIEV

# Function: __glDrawArraysN
# Declared: Line 823 (Source lines: 823-840)
# Address: 0x0dbd3514 - 0x0dbd35b8 (Size: 164 bytes, Frame: 224)
.globl __glDrawArraysN
.ent __glDrawArraysN
__glDrawArraysN:
    # Line 823
    addiu	$sp,$sp,-96
    sd	$s5,24($sp)
    # Line 824
    lw	$s5,__glCurrentContext
    # Line 832
    lw	$at,4824($s5)
    sd	$s6,48($sp)
    mult	$at,$a1
    sd	$s1,16($sp)
    # Line 823
    move	$s1,$a2
    sd	$s4,0($sp)
    sd	$s0,8($sp)
    # Line 833
    lw	$s4,4836($s5)
    sd	$gp,40($sp)
    sd	$ra,32($sp)
    # Line 823
    lui	$ra,0x3
    addiu	$ra,$ra,-20092
    addu	$gp,$t9,$ra
    # Line 835
    # lw $t9, -17676($gp) # &glBegin
    # Line 832
    lw	$s0,4816($s5)
    mflo	$t8
    # Line 835
    jal	glBegin
    # Line 832
    addu	$s0,$s0,$t8
    # Line 836
    blez	$s1,.L0dbd358c
    move	$s6,$zero
.L0dbd3570:
    # Line 837
    move	$a0,$s0
    jalr	$s4
    move	$t9,$s4
    # Line 836
    addiu	$s6,$s6,1
    # Line 837
    lw	$v0,4824($s5)
    # Line 836
    bne	$s1,$s6,.L0dbd3570
    # Line 837
    addu	$s0,$v0,$s0
.L0dbd358c:
    ld	$s5,24($sp)
    ld	$s1,16($sp)
    # Line 839
    # lw $t9, -17532($gp) # &glEnd
    ld	$s0,8($sp)
    ld	$s4,0($sp)
    jal	glEnd
    ld	$s6,48($sp)
    # Line 840
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysN

