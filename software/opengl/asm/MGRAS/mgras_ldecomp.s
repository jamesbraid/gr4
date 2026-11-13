# Source: ../MGRAS/mgras_ldecomp.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_ldecomp.c
# Total Functions: 8

.text

# Function: __glMgr_InterpretDL
# Declared: Line 55 (Source lines: 56-122)
# Address: 0x0da7949c - 0x0da7965c (Size: 448 bytes, Frame: 224)
.globl __glMgr_InterpretDL
.ent __glMgr_InterpretDL
__glMgr_InterpretDL:
    # Line 56
    addiu	$sp,$sp,-96
    sd	$s0,8($sp)
    # Line 66
    addiu	$s0,$a0,4
    sd	$gp,32($sp)
    # Line 56
    lui	$at,0x18
    addiu	$at,$at,20988
    addu	$gp,$t9,$at
    # Line 63
    lw	$v0,__glCurrentContext
    sd	$s1,16($sp)
    # Line 66
    lw	$s1,0($a0)
    sd	$s7,24($sp)
    sd	$v0,0($sp)
    # Line 67
    sll	$s7,$s1,0x2
    addu	$s7,$s7,$a0
    blez	$s1,.L0da795a8
    addiu	$s7,$s7,4
    sd	$s2,48($sp)
    sd	$ra,40($sp)
    sd	$s3,56($sp)
    lui	$s3,0x8000
    sd	$s4,64($sp)
    lui	$s4,0xf
    sd	$s5,72($sp)
    lui	$s5,0x1f
    ori	$s5,$s5,0xffff
    b	.L0da79530
    ori	$s4,$s4,0xffff
.L0da79508:
    # Line 79
    and	$s2,$a0,$s4
    addiu	$s2,$s2,7
    sra	$s2,$s2,0x3
    sll	$s2,$s2,0x1
    # Line 118
    subu	$s1,$s1,$s2
.L0da7951c:
    # Line 117
    sll	$at,$s2,0x2
    addu	$s0,$at,$s0
    # Line 118
    addiu	$s1,$s1,-1
    blez	$s1,.L0da79594
    # Line 117
    addiu	$s0,$s0,4
.L0da79530:
    # Line 71
    lw	$a0,0($s0)
    li	$v1,2
    li	$a2,7
    and	$at,$a0,$s3
    bnez	$at,.L0da79508
    # Line 91
    addiu	$a1,$s0,4
    and	$v0,$a0,$s5
    # Line 85
    andi	$s2,$a0,0xff
    addiu	$s2,$s2,3
    # Line 91
    sra	$v0,$v0,0x8
    beqz	$v0,.L0da795fc
    # Line 85
    sra	$s2,$s2,0x2
    # Line 91
    beq	$v0,$v1,.L0da795dc
    ld	$at,0($sp)
    beq	$v0,$a2,.L0da79614
    li	$a3,8
    beq	$v0,$a3,.L0da7962c
    li	$at,56
    beq	$v0,$at,.L0da795c4
    nop	# was lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,-24844
    # Line 112
    bal __glMgr_InterpretDL
    nop
    b	.L0da7951c
    # Line 118
    subu	$s1,$s1,$s2
.L0da79594:
    ld	$s5,72($sp)
    ld	$ra,40($sp)
    ld	$s4,64($sp)
    ld	$s3,56($sp)
    ld	$s2,48($sp)
.L0da795a8:
    ld	$gp,32($sp)
    # Line 122
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    move	$v0,$s7
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da795c4:
    # lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,-25236
    # Line 109
    bal __glMgr_InterpretDL
    nop
    b	.L0da7951c
    # Line 118
    subu	$s1,$s1,$s2
.L0da795dc:
    # Line 97
    lbu	$at,3104($at)
    beqz	$at,.L0da79644
    nop	# was lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,-26652
    # Line 98
    bal __glMgr_InterpretDL
    nop
    b	.L0da7951c
    # Line 118
    subu	$s1,$s1,$s2
.L0da795fc:
    # lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,-27044
    # Line 94
    bal __glMgr_InterpretDL
    nop
    b	.L0da7951c
    # Line 118
    subu	$s1,$s1,$s2
.L0da79614:
    # lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,-25908
    # Line 103
    bal __glMgr_InterpretDL
    nop
    b	.L0da7951c
    # Line 118
    subu	$s1,$s1,$s2
.L0da7962c:
    # lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,-25756
    # Line 106
    bal __glMgr_InterpretDL
    nop
    b	.L0da7951c
    # Line 118
    subu	$s1,$s1,$s2
.L0da79644:
    # lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,-26060
    # Line 100
    bal __glMgr_InterpretDL
    nop
    b	.L0da7951c
    # Line 118
    subu	$s1,$s1,$s2
.end __glMgr_InterpretDL

# Function: InterpretVertex
# Declared: Line 127 (Source lines: 128-161)
# Address: 0x0da7965c - 0x0da797e4 (Size: 392 bytes, Frame: 32)
.ent InterpretVertex
InterpretVertex:
    # Line 128
    lui	$a3,0x3800
    ori	$a3,$a3,0xc
    slt	$at,$a0,$a3
    bnez	$at,.L0da796b4
    addiu	$sp,$sp,-32
    # Line 129
    slt	$at,$a3,$a0
    beqz	$at,.L0da79764
    lui	$a3,0x5800
    ori	$a3,$a3,0x8
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79714
    slt	$at,$a3,$a0
    beqz	$at,.L0da797cc
    lui	$v0,0x5900
    ori	$v0,$v0,0x4
    bne	$a0,$v0,.L0da796dc
    # Line 138
    nop	# was lw $t9, -17172($gp) # &glVertex2sv
    sd	$ra,0($sp)
    jal	glVertex2sv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da796b4:
    # Line 129
    lui	$a3,0x1900
    ori	$a3,$a3,0x8
    slt	$v1,$a0,$a3
    bnez	$v1,.L0da796e4
    slt	$at,$a3,$a0
    beqz	$at,.L0da797b4
    lui	$v0,0x2000
    ori	$v0,$v0,0xc
    beq	$a0,$v0,.L0da797a0
    # Line 141
    nop	# was lw $t9, -17156($gp) # &glVertex3fv
.L0da796dc:
    # Line 161
    jr	$ra
    addiu	$sp,$sp,32
.L0da796e4:
    # Line 129
    lui	$a3,0x1800
    ori	$a3,$a3,0x10
    slt	$v1,$a0,$a3
    bnez	$v1,.L0da79744
    slt	$at,$a3,$a0
    bnez	$at,.L0da796dc
    # Line 153
    nop	# was lw $t9, -17116($gp) # &glVertex4iv
    sd	$ra,0($sp)
    jal	glVertex4iv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da79714:
    # Line 129
    lui	$a3,0x4000
    ori	$a3,$a3,0x8
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da7977c
    slt	$at,$a3,$a0
    bnez	$at,.L0da796dc
    # Line 132
    nop	# was lw $t9, -17188($gp) # &glVertex2fv
    sd	$ra,0($sp)
    jal	glVertex2fv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da79744:
    # Line 129
    li	$v0,16
    bne	$a0,$v0,.L0da796dc
    # Line 150
    nop	# was lw $t9, -17124($gp) # &glVertex4fv
    sd	$ra,0($sp)
    jal	glVertex4fv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da79764:
    # Line 144
    # lw $t9, -17148($gp) # &glVertex3iv
    sd	$ra,0($sp)
    jal	glVertex3iv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da7977c:
    # Line 129
    lui	$v1,0x3900
    ori	$v1,$v1,0x6
    bne	$a0,$v1,.L0da796dc
    # Line 147
    nop	# was lw $t9, -17140($gp) # &glVertex3sv
    sd	$ra,0($sp)
    jal	glVertex3sv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da797a0:
    sd	$ra,0($sp)
    # Line 141
    jalr	$t9
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da797b4:
    # Line 156
    # lw $t9, -17108($gp) # &glVertex4sv
    sd	$ra,0($sp)
    jal	glVertex4sv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.L0da797cc:
    # Line 135
    # lw $t9, -17180($gp) # &glVertex2iv
    sd	$ra,0($sp)
    jal	glVertex2iv
    move	$a0,$a1
    b	.L0da796dc
    ld	$ra,0($sp)
.end InterpretVertex

# Function: InterpretColor
# Declared: Line 165 (Source lines: 166-215)
# Address: 0x0da797e4 - 0x0da79a34 (Size: 592 bytes, Frame: 32)
.ent InterpretColor
InterpretColor:
    # Line 166
    lui	$a3,0x2000
    ori	$a3,$a3,0x20c
    slt	$at,$a0,$a3
    bnez	$at,.L0da79848
    addiu	$sp,$sp,-32
    # Line 167
    slt	$at,$a3,$a0
    beqz	$at,.L0da7989c
    lui	$a3,0x3c00
    ori	$a3,$a3,0x20c
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da798f4
    slt	$at,$a3,$a0
    beqz	$at,.L0da799d4
    lui	$a3,0x3d00
    ori	$a3,$a3,0x206
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79998
    slt	$at,$a3,$a0
    bnez	$at,.L0da798b0
    # Line 179
    nop	# was lw $t9, -17632($gp) # &glColor3sv
    sd	$ra,0($sp)
    jal	glColor3sv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da79848:
    # Line 167
    lui	$a3,0x1500
    ori	$a3,$a3,0x208
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da798b8
    slt	$at,$a3,$a0
    beqz	$at,.L0da799bc
    lui	$a3,0x1c80
    ori	$a3,$a3,0x204
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79950
    slt	$at,$a3,$a0
    beqz	$at,.L0da79a1c
    lui	$v0,0x1d00
    ori	$v0,$v0,0x208
    bne	$a0,$v0,.L0da798b0
    # Line 200
    nop	# was lw $t9, -17568($gp) # &glColor4sv
    sd	$ra,0($sp)
    jal	glColor4sv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da7989c:
    # Line 173
    # lw $t9, -17648($gp) # &glColor3fv
    sd	$ra,0($sp)
    jal	glColor3fv
    move	$a0,$a1
    ld	$ra,0($sp)
.L0da798b0:
    # Line 215
    jr	$ra
    addiu	$sp,$sp,32
.L0da798b8:
    # Line 167
    lui	$a3,0x1400
    ori	$a3,$a3,0x210
    slt	$v1,$a0,$a3
    bnez	$v1,.L0da79930
    slt	$at,$a3,$a0
    beqz	$at,.L0da799ec
    lui	$v0,0x1480
    ori	$v0,$v0,0x204
    bne	$a0,$v0,.L0da798b0
    # Line 203
    nop	# was lw $t9, -17560($gp) # &glColor4ubv
    sd	$ra,0($sp)
    jal	glColor4ubv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da798f4:
    # Line 167
    lui	$a3,0x3480
    ori	$a3,$a3,0x203
    slt	$v1,$a0,$a3
    bnez	$v1,.L0da79974
    slt	$at,$a3,$a0
    beqz	$at,.L0da79a04
    lui	$v0,0x3500
    ori	$v0,$v0,0x206
    bne	$a0,$v0,.L0da798b0
    # Line 188
    nop	# was lw $t9, -17608($gp) # &glColor3usv
    sd	$ra,0($sp)
    jal	glColor3usv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da79930:
    # Line 167
    li	$v1,528
    bne	$a0,$v1,.L0da798b0
    # Line 194
    nop	# was lw $t9, -17584($gp) # &glColor4fv
    sd	$ra,0($sp)
    jal	glColor4fv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da79950:
    # Line 167
    lui	$a2,0x1c00
    ori	$a2,$a2,0x210
    bne	$a0,$a2,.L0da798b0
    # Line 197
    nop	# was lw $t9, -17576($gp) # &glColor4iv
    sd	$ra,0($sp)
    jal	glColor4iv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da79974:
    # Line 167
    lui	$at,0x3400
    ori	$at,$at,0x20c
    bne	$a0,$at,.L0da798b0
    # Line 185
    nop	# was lw $t9, -17616($gp) # &glColor3uiv
    sd	$ra,0($sp)
    jal	glColor3uiv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da79998:
    # Line 167
    lui	$v0,0x3c80
    ori	$v0,$v0,0x203
    bne	$a0,$v0,.L0da798b0
    # Line 170
    nop	# was lw $t9, -17664($gp) # &glColor3bv
    sd	$ra,0($sp)
    jal	glColor3bv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da799bc:
    # Line 209
    # lw $t9, -17544($gp) # &glColor4usv
    sd	$ra,0($sp)
    jal	glColor4usv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da799d4:
    # Line 176
    # lw $t9, -17640($gp) # &glColor3iv
    sd	$ra,0($sp)
    jal	glColor3iv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da799ec:
    # Line 206
    # lw $t9, -17552($gp) # &glColor4uiv
    sd	$ra,0($sp)
    jal	glColor4uiv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da79a04:
    # Line 182
    # lw $t9, -17624($gp) # &glColor3ubv
    sd	$ra,0($sp)
    jal	glColor3ubv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.L0da79a1c:
    # Line 191
    # lw $t9, -17600($gp) # &glColor4bv
    sd	$ra,0($sp)
    jal	glColor4bv
    move	$a0,$a1
    b	.L0da798b0
    ld	$ra,0($sp)
.end InterpretColor

# Function: InterpretIndex
# Declared: Line 219 (Source lines: 220-239)
# Address: 0x0da79a34 - 0x0da79acc (Size: 152 bytes, Frame: 32)
.ent InterpretIndex
InterpretIndex:
    # Line 221
    li	$at,516
    beq	$a0,$at,.L0da79ab4
    # Line 220
    addiu	$sp,$sp,-32
    # Line 221
    lui	$v0,0x1800
    ori	$v0,$v0,0x204
    beq	$a0,$v0,.L0da79a84
    lui	$v1,0x1900
    ori	$v1,$v1,0x202
    beq	$a0,$v1,.L0da79a9c
    lui	$a2,0x1080
    ori	$a2,$a2,0x201
    beq	$a0,$a2,.L0da79a70
    # Line 233
    nop	# was lw $t9, -16228($gp) # &glIndexubv
.L0da79a68:
    # Line 239
    jr	$ra
    addiu	$sp,$sp,32
.L0da79a70:
    sd	$ra,0($sp)
    # Line 233
    jal	glIndexubv
    move	$a0,$a1
    b	.L0da79a68
    ld	$ra,0($sp)
.L0da79a84:
    # Line 227
    # lw $t9, -17508($gp) # &glIndexiv
    sd	$ra,0($sp)
    jal	glIndexiv
    move	$a0,$a1
    b	.L0da79a68
    ld	$ra,0($sp)
.L0da79a9c:
    # Line 230
    # lw $t9, -17500($gp) # &glIndexsv
    sd	$ra,0($sp)
    jal	glIndexsv
    move	$a0,$a1
    b	.L0da79a68
    ld	$ra,0($sp)
.L0da79ab4:
    # Line 224
    # lw $t9, -17516($gp) # &glIndexfv
    sd	$ra,0($sp)
    jal	glIndexfv
    move	$a0,$a1
    b	.L0da79a68
    ld	$ra,0($sp)
.end InterpretIndex

# Function: InterpretNormal
# Declared: Line 243 (Source lines: 244-262)
# Address: 0x0da79acc - 0x0da79b64 (Size: 152 bytes, Frame: 32)
.ent InterpretNormal
InterpretNormal:
    # Line 245
    lui	$at,0x1c80
    ori	$at,$at,0x703
    beq	$a0,$at,.L0da79b1c
    # Line 244
    addiu	$sp,$sp,-32
    # Line 245
    li	$v0,1804
    beq	$a0,$v0,.L0da79b4c
    lui	$v1,0x1c00
    ori	$v1,$v1,0x70c
    beq	$a0,$v1,.L0da79b34
    lui	$a2,0x1d00
    ori	$a2,$a2,0x706
    beq	$a0,$a2,.L0da79b08
    # Line 257
    nop	# was lw $t9, -17460($gp) # &glNormal3sv
.L0da79b00:
    # Line 262
    jr	$ra
    addiu	$sp,$sp,32
.L0da79b08:
    sd	$ra,0($sp)
    # Line 257
    jal	glNormal3sv
    move	$a0,$a1
    b	.L0da79b00
    ld	$ra,0($sp)
.L0da79b1c:
    # Line 248
    # lw $t9, -17492($gp) # &glNormal3bv
    sd	$ra,0($sp)
    jal	glNormal3bv
    move	$a0,$a1
    b	.L0da79b00
    ld	$ra,0($sp)
.L0da79b34:
    # Line 254
    # lw $t9, -17468($gp) # &glNormal3iv
    sd	$ra,0($sp)
    jal	glNormal3iv
    move	$a0,$a1
    b	.L0da79b00
    ld	$ra,0($sp)
.L0da79b4c:
    # Line 251
    # lw $t9, -17476($gp) # &glNormal3fv
    sd	$ra,0($sp)
    jal	glNormal3fv
    move	$a0,$a1
    b	.L0da79b00
    ld	$ra,0($sp)
.end InterpretNormal

# Function: InterpretTexCoord
# Declared: Line 266 (Source lines: 267-309)
# Address: 0x0da79b64 - 0x0da79d6c (Size: 520 bytes, Frame: 32)
.ent InterpretTexCoord
InterpretTexCoord:
    # Line 267
    lui	$a3,0x4000
    ori	$a3,$a3,0x808
    slt	$at,$a0,$a3
    bnez	$at,.L0da79bc8
    addiu	$sp,$sp,-32
    # Line 268
    slt	$at,$a3,$a0
    beqz	$at,.L0da79c10
    lui	$a3,0x6000
    ori	$a3,$a3,0x804
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79c68
    slt	$at,$a3,$a0
    beqz	$at,.L0da79d3c
    lui	$a3,0x7900
    ori	$a3,$a3,0x802
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79d00
    slt	$at,$a3,$a0
    bnez	$at,.L0da79c24
    # Line 277
    nop	# was lw $t9, -17300($gp) # &glTexCoord1sv
    sd	$ra,0($sp)
    jal	glTexCoord1sv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79bc8:
    # Line 268
    lui	$a3,0x2000
    ori	$a3,$a3,0x80c
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79c2c
    slt	$at,$a3,$a0
    beqz	$at,.L0da79d24
    lui	$a3,0x3900
    ori	$a3,$a3,0x806
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79cb8
    slt	$at,$a3,$a0
    bnez	$at,.L0da79c24
    # Line 295
    nop	# was lw $t9, -17236($gp) # &glTexCoord3sv
    sd	$ra,0($sp)
    jal	glTexCoord3sv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79c10:
    # Line 280
    # lw $t9, -17284($gp) # &glTexCoord2fv
    sd	$ra,0($sp)
    jal	glTexCoord2fv
    move	$a0,$a1
    ld	$ra,0($sp)
.L0da79c24:
    # Line 309
    jr	$ra
    addiu	$sp,$sp,32
.L0da79c2c:
    # Line 268
    lui	$a3,0x1800
    ori	$a3,$a3,0x810
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79c98
    slt	$at,$a3,$a0
    beqz	$at,.L0da79d54
    lui	$v0,0x1900
    ori	$v0,$v0,0x808
    bne	$a0,$v0,.L0da79c24
    # Line 304
    nop	# was lw $t9, -17204($gp) # &glTexCoord4sv
    sd	$ra,0($sp)
    jal	glTexCoord4sv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79c68:
    # Line 268
    lui	$a3,0x5900
    ori	$a3,$a3,0x804
    slt	$v1,$a0,$a3
    bnez	$v1,.L0da79cdc
    slt	$at,$a3,$a0
    bnez	$at,.L0da79c24
    # Line 286
    nop	# was lw $t9, -17268($gp) # &glTexCoord2sv
    sd	$ra,0($sp)
    jal	glTexCoord2sv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79c98:
    # Line 268
    li	$v0,2064
    bne	$a0,$v0,.L0da79c24
    # Line 298
    nop	# was lw $t9, -17220($gp) # &glTexCoord4fv
    sd	$ra,0($sp)
    jal	glTexCoord4fv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79cb8:
    # Line 268
    lui	$v1,0x3800
    ori	$v1,$v1,0x80c
    bne	$a0,$v1,.L0da79c24
    # Line 292
    nop	# was lw $t9, -17244($gp) # &glTexCoord3iv
    sd	$ra,0($sp)
    jal	glTexCoord3iv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79cdc:
    # Line 268
    lui	$a2,0x5800
    ori	$a2,$a2,0x808
    bne	$a0,$a2,.L0da79c24
    # Line 283
    nop	# was lw $t9, -17276($gp) # &glTexCoord2iv
    sd	$ra,0($sp)
    jal	glTexCoord2iv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79d00:
    # Line 268
    lui	$at,0x7800
    ori	$at,$at,0x804
    bne	$a0,$at,.L0da79c24
    # Line 274
    nop	# was lw $t9, -17308($gp) # &glTexCoord1iv
    sd	$ra,0($sp)
    jal	glTexCoord1iv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79d24:
    # Line 289
    # lw $t9, -17252($gp) # &glTexCoord3fv
    sd	$ra,0($sp)
    jal	glTexCoord3fv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79d3c:
    # Line 271
    # lw $t9, -17316($gp) # &glTexCoord1fv
    sd	$ra,0($sp)
    jal	glTexCoord1fv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.L0da79d54:
    # Line 301
    # lw $t9, -17212($gp) # &glTexCoord4iv
    sd	$ra,0($sp)
    jal	glTexCoord4iv
    move	$a0,$a1
    b	.L0da79c24
    ld	$ra,0($sp)
.end InterpretTexCoord

# Function: InterpretRasterPos
# Declared: Line 313 (Source lines: 314-347)
# Address: 0x0da79d6c - 0x0da79ef4 (Size: 392 bytes, Frame: 32)
.ent InterpretRasterPos
InterpretRasterPos:
    # Line 314
    lui	$a3,0x3800
    ori	$a3,$a3,0x380c
    slt	$at,$a0,$a3
    bnez	$at,.L0da79dc4
    addiu	$sp,$sp,-32
    # Line 315
    slt	$at,$a3,$a0
    beqz	$at,.L0da79e74
    lui	$a3,0x5800
    ori	$a3,$a3,0x3808
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79e24
    slt	$at,$a3,$a0
    beqz	$at,.L0da79edc
    lui	$v0,0x5900
    ori	$v0,$v0,0x3804
    bne	$a0,$v0,.L0da79dec
    # Line 324
    nop	# was lw $t9, -17428($gp) # &glRasterPos2sv
    sd	$ra,0($sp)
    jal	glRasterPos2sv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79dc4:
    # Line 315
    lui	$a3,0x1900
    ori	$a3,$a3,0x3808
    slt	$v1,$a0,$a3
    bnez	$v1,.L0da79df4
    slt	$at,$a3,$a0
    beqz	$at,.L0da79ec4
    lui	$v0,0x2000
    ori	$v0,$v0,0x380c
    beq	$a0,$v0,.L0da79eb0
    # Line 327
    nop	# was lw $t9, -17412($gp) # &glRasterPos3fv
.L0da79dec:
    # Line 347
    jr	$ra
    addiu	$sp,$sp,32
.L0da79df4:
    # Line 315
    lui	$a3,0x1800
    ori	$a3,$a3,0x3810
    slt	$v1,$a0,$a3
    bnez	$v1,.L0da79e54
    slt	$at,$a3,$a0
    bnez	$at,.L0da79dec
    # Line 339
    nop	# was lw $t9, -17372($gp) # &glRasterPos4iv
    sd	$ra,0($sp)
    jal	glRasterPos4iv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79e24:
    # Line 315
    lui	$a3,0x4000
    ori	$a3,$a3,0x3808
    slt	$v0,$a0,$a3
    bnez	$v0,.L0da79e8c
    slt	$at,$a3,$a0
    bnez	$at,.L0da79dec
    # Line 318
    nop	# was lw $t9, -17444($gp) # &glRasterPos2fv
    sd	$ra,0($sp)
    jal	glRasterPos2fv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79e54:
    # Line 315
    li	$v0,14352
    bne	$a0,$v0,.L0da79dec
    # Line 336
    nop	# was lw $t9, -17380($gp) # &glRasterPos4fv
    sd	$ra,0($sp)
    jal	glRasterPos4fv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79e74:
    # Line 330
    # lw $t9, -17404($gp) # &glRasterPos3iv
    sd	$ra,0($sp)
    jal	glRasterPos3iv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79e8c:
    # Line 315
    lui	$v1,0x3900
    ori	$v1,$v1,0x3806
    bne	$a0,$v1,.L0da79dec
    # Line 333
    nop	# was lw $t9, -17396($gp) # &glRasterPos3sv
    sd	$ra,0($sp)
    jal	glRasterPos3sv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79eb0:
    sd	$ra,0($sp)
    # Line 327
    jalr	$t9
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79ec4:
    # Line 342
    # lw $t9, -17364($gp) # &glRasterPos4sv
    sd	$ra,0($sp)
    jal	glRasterPos4sv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.L0da79edc:
    # Line 321
    # lw $t9, -17436($gp) # &glRasterPos2iv
    sd	$ra,0($sp)
    jal	glRasterPos2iv
    move	$a0,$a1
    b	.L0da79dec
    ld	$ra,0($sp)
.end InterpretRasterPos

# Function: InterpretOthers
# Declared: Line 351 (Source lines: 352-802)
# Address: 0x0da79ef4 - 0x0da7af78 (Size: 4228 bytes, Frame: 128)
.ent InterpretOthers
InterpretOthers:
    # Line 352
    addiu	$sp,$sp,-128
    slti	$at,$a0,16136
    bnez	$at,.L0da79f80
    move	$a5,$a1
    # Line 353
    slti	$v0,$a0,16137
    bnez	$v0,.L0da7a0d8
    slti	$v1,$a0,29700
    bnez	$v1,.L0da7a048
    slti	$a3,$a0,29701
    bnez	$a3,.L0da7a28c
    li	$a1,0xbc04
    slt	$at,$a0,$a1
    bnez	$at,.L0da7a140
    slt	$v0,$a1,$a0
    beqz	$v0,.L0da7a5e0
    li	$a1,0xc104
    slt	$v1,$a0,$a1
    bnez	$v1,.L0da7a38c
    slt	$a3,$a1,$a0
    beqz	$a3,.L0da7abe4
    li	$a1,0xe70c
    slt	$at,$a0,$a1
    bnez	$at,.L0da7a92c
    slt	$v0,$a1,$a0
    beqz	$v0,.L0da7aea0
    lui	$v1,0x1
    ori	$v1,$v1,0x2c0c
    bne	$a0,$v1,.L0da7a040
    # Line 697
    nop	# was lw $t9, -16236($gp) # &glPolygonOffset
    lwc1	$f13,4($a5)
    sd	$ra,96($sp)
    jal	glPolygonOffset
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da79f80:
    # Line 353
    slti	$a3,$a0,9472
    bnez	$a3,.L0da79ffc
    slti	$at,$a0,9473
    bnez	$at,.L0da7a02c
    slti	$v0,$a0,12304
    bnez	$v0,.L0da7a1dc
    slti	$v1,$a0,12305
    bnez	$v1,.L0da7a6f4
    slti	$a3,$a0,14852
    bnez	$a3,.L0da7a42c
    slti	$at,$a0,14853
    bnez	$at,.L0da7acfc
    slti	$v0,$a0,15620
    bnez	$v0,.L0da7a988
    slti	$v1,$a0,15621
    bnez	$v1,.L0da7aebc
    li	$a3,15880
    bne	$a0,$a3,.L0da7a040
    nop
    # Line 524
    lw	$a1,4($a5)
    mtc1	$a1,$f13
    sd	$ra,96($sp)
    cvt.s.w	$f13,$f13
    lw	$a0,0($a5)
    # lw $t9, -16744($gp) # &glAlphaFunc
    lwc1	$f14,_lit_457ff000
    addiu	$a0,$a0,512
    jal	glAlphaFunc
    div.s	$f13,$f13,$f14
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da79ffc:
    # Line 353
    slti	$a3,$a0,6656
    bnez	$a3,.L0da7a098
    slti	$at,$a0,6657
    bnez	$at,.L0da7a3c4
    slti	$v0,$a0,8192
    bnez	$v0,.L0da7a21c
    slti	$v1,$a0,8193
    bnez	$v1,.L0da7a02c
    slti	$a3,$a0,8960
    bnez	$a3,.L0da7a784
    slti	$at,$a0,8961
    beqz	$at,.L0da7ac14
.L0da7a02c:
    # Line 397
    nop	# was lw $t9, -17532($gp) # &glEnd
    sd	$ra,96($sp)
    jal	glEnd
    nop
    ld	$ra,96($sp)
.L0da7a040:
    # Line 802
    jr	$ra
    addiu	$sp,$sp,128
.L0da7a048:
    # Line 353
    slti	$v0,$a0,20496
    bnez	$v0,.L0da7a0f4
    slti	$v1,$a0,20497
    bnez	$v1,.L0da7a524
    slti	$a3,$a0,22020
    bnez	$a3,.L0da7a2a4
    slti	$at,$a0,22021
    bnez	$at,.L0da7aaac
    slti	$v0,$a0,22788
    bnez	$v0,.L0da7a648
    slti	$v1,$a0,22789
    bnez	$v1,.L0da7ae14
    li	$a3,24580
    bne	$a0,$a3,.L0da7a040
    # Line 528
    nop	# was lw $t9, -16476($gp) # &glBlendEquationEXT
    sd	$ra,96($sp)
    jal	glBlendEquationEXT
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a098:
    # Line 353
    slti	$at,$a0,5140
    bnez	$at,.L0da7a198
    slti	$v0,$a0,5141
    bnez	$v0,.L0da7a6d0
    slti	$v1,$a0,6144
    bnez	$v1,.L0da7a3dc
    slti	$a3,$a0,6145
    bnez	$a3,.L0da7accc
    li	$at,6400
    bne	$a0,$at,.L0da7a040
    # Line 365
    nop	# was lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,2
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a0d8:
    # Line 531
    # lw $t9, -16740($gp) # &glBlendFunc
    lw	$a1,4($a5)
    sd	$ra,96($sp)
    jal	glBlendFunc
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a0f4:
    # Line 353
    slti	$v0,$a0,17928
    bnez	$v0,.L0da7a254
    slti	$v1,$a0,17929
    bnez	$v1,.L0da7a4cc
    slti	$a3,$a0,19716
    bnez	$a3,.L0da7a820
    slti	$at,$a0,19717
    bnez	$at,.L0da7ae4c
    li	$v0,20244
    bne	$a0,$v0,.L0da7a040
    # Line 446
    addiu	$a2,$a5,4
    li	$a1,4611
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a140:
    # Line 353
    li	$a1,0xb604
    slt	$a3,$a0,$a1
    bnez	$a3,.L0da7a2e8
    slt	$at,$a1,$a0
    beqz	$at,.L0da7aac4
    li	$a1,0xb904
    slt	$v0,$a0,$a1
    bnez	$v0,.L0da7a674
    slt	$v1,$a1,$a0
    beqz	$v1,.L0da7ae30
    li	$a3,0xba10
    bne	$a0,$a3,.L0da7a040
    nop
    # Line 401
    lwc1	$f15,12($a5)
    lwc1	$f14,8($a5)
    # lw $t9, -16880($gp) # &glClearColor
    lwc1	$f13,4($a5)
    sd	$ra,96($sp)
    jal	glClearColor
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a198:
    # Line 353
    slti	$at,$a0,4376
    bnez	$at,.L0da7a32c
    slti	$v0,$a0,4377
    bnez	$v0,.L0da7abac
    slti	$v1,$a0,4884
    bnez	$v1,.L0da7a718
    slti	$a3,$a0,4885
    beqz	$a3,.L0da7a040
    # Line 436
    addiu	$a2,$a5,4
    li	$a1,4609
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a1dc:
    # Line 353
    slti	$a3,$a0,11072
    bnez	$a3,.L0da7a354
    slti	$at,$a0,11073
    bnez	$at,.L0da7abcc
    slti	$v0,$a0,11776
    bnez	$v0,.L0da7a7a0
    slti	$v1,$a0,11777
    bnez	$v1,.L0da7ae64
    li	$a3,12032
    bne	$a0,$a3,.L0da7a040
    # Line 745
    nop	# was lw $t9, -16512($gp) # &glPushMatrix
    sd	$ra,96($sp)
    jal	glPushMatrix
    nop
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a21c:
    # Line 353
    slti	$at,$a0,7424
    bnez	$at,.L0da7a404
    slti	$v0,$a0,7425
    bnez	$v0,.L0da7ace4
    slti	$v1,$a0,7936
    bnez	$v1,.L0da7a968
    slti	$a3,$a0,7937
    beqz	$a3,.L0da7a040
    # Line 383
    nop	# was lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,9
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a254:
    # Line 353
    slti	$at,$a0,16908
    bnez	$at,.L0da7a494
    slti	$v0,$a0,16909
    bnez	$v0,.L0da7a858
    slti	$v1,$a0,17668
    bnez	$v1,.L0da7ac74
    slti	$a3,$a0,17669
    beqz	$a3,.L0da7a040
    # Line 639
    nop	# was lw $t9, -17032($gp) # &glLineWidth
    sd	$ra,96($sp)
    jal	glLineWidth
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a28c:
    # Line 617
    # lw $t9, -17096($gp) # &glCullFace
    sd	$ra,96($sp)
    jal	glCullFace
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a2a4:
    # Line 353
    slti	$at,$a0,21256
    bnez	$at,.L0da7a548
    slti	$v0,$a0,21257
    bnez	$v0,.L0da7ada4
    slti	$v1,$a0,21768
    bnez	$v1,.L0da7aaf4
    slti	$a3,$a0,21769
    beqz	$a3,.L0da7a040
    # Line 476
    addiu	$a2,$a5,4
    li	$a1,4617
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a2e8:
    # Line 353
    li	$a1,0xa808
    slt	$a3,$a0,$a1
    bnez	$a3,.L0da7a57c
    slt	$at,$a1,$a0
    beqz	$at,.L0da7adc8
    li	$a1,0xb504
    slt	$v0,$a0,$a1
    bnez	$v0,.L0da7ab44
    slt	$v1,$a1,$a0
    bnez	$v1,.L0da7a040
    # Line 679
    nop	# was lw $t9, -17088($gp) # &glFogfv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glFogfv
    li	$a0,2915
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a32c:
    # Line 353
    slti	$a3,$a0,4096
    bnez	$a3,.L0da7a60c
    slti	$at,$a0,4097
    beqz	$at,.L0da7a040
    # Line 504
    nop	# was lw $t9, -17540($gp) # &glEdgeFlag
    sd	$ra,96($sp)
    jal	glEdgeFlag
    move	$a0,$zero
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a354:
    # Line 353
    slti	$v0,$a0,10240
    bnez	$v0,.L0da7a62c
    slti	$v1,$a0,10241
    bnez	$v1,.L0da7a02c
    slti	$a3,$a0,10756
    bnez	$a3,.L0da7ade4
    slti	$at,$a0,10757
    beqz	$at,.L0da7a040
    # Line 773
    nop	# was lw $t9, -16532($gp) # &glMatrixMode
    sd	$ra,96($sp)
    jal	glMatrixMode
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a38c:
    # Line 353
    li	$a1,0xbf04
    slt	$v0,$a0,$a1
    bnez	$v0,.L0da7a6a4
    slt	$v1,$a1,$a0
    beqz	$v1,.L0da7adf8
    li	$a3,0xc004
    bne	$a0,$a3,.L0da7a040
    # Line 420
    nop	# was lw $t9, -17100($gp) # &glColorMaterial
    lw	$a1,0($a5)
    sd	$ra,96($sp)
    jal	glColorMaterial
    li	$a0,1029
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a3c4:
    # Line 368
    # lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,4
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a3dc:
    # Line 353
    slti	$at,$a0,5888
    bnez	$at,.L0da7a744
    slti	$v0,$a0,5889
    beqz	$v0,.L0da7a040
    # Line 359
    nop	# was lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,1
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a404:
    # Line 353
    slti	$v1,$a0,7168
    bnez	$v1,.L0da7a764
    slti	$a3,$a0,7169
    beqz	$a3,.L0da7a040
    # Line 374
    nop	# was lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,6
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a42c:
    # Line 353
    slti	$at,$a0,13072
    bnez	$at,.L0da7a7c8
    slti	$v0,$a0,13073
    bnez	$v0,.L0da7ae7c
    slti	$v1,$a0,13592
    bnez	$v1,.L0da7ad14
    slti	$a3,$a0,13593
    beqz	$a3,.L0da7a040
    nop
    sd	$ra,96($sp)
    # Line 733
    lwc1	$f12,0($a5)
    # lw $t9, -16520($gp) # &glOrtho
    lwc1	$f13,4($a5)
    lwc1	$f14,8($a5)
    lwc1	$f17,20($a5)
    lwc1	$f16,16($a5)
    lwc1	$f15,12($a5)
    cvt.d.s	$f17,$f17
    cvt.d.s	$f16,$f16
    cvt.d.s	$f15,$f15
    cvt.d.s	$f14,$f14
    cvt.d.s	$f13,$f13
    jal	glOrtho
    cvt.d.s	$f12,$f12
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a494:
    # Line 353
    slti	$at,$a0,16652
    bnez	$at,.L0da7a7fc
    slti	$v0,$a0,16653
    beqz	$v0,.L0da7a040
    nop
    # Line 538
    lw	$a2,8($a5)
    lw	$a1,4($a5)
    # lw $t9, -16732($gp) # &glStencilFunc
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glStencilFunc
    addiu	$a0,$a0,512
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a4cc:
    # Line 630
    li	$a6,-1
    li	$a4,1
    li	$a0,15
    move	$a1,$zero
    b	.L0da7a4f4
    # Line 629
    lhu	$a2,6($a5)
.L0da7a4e4:
    # Line 633
    or	$a1,$a3,$a1
    andi	$a1,$a1,0xffff
.L0da7a4ec:
    # Line 631
    addiu	$a0,$a0,-1
    beq	$a0,$a6,.L0da7a910
.L0da7a4f4:
    # Line 633
    sllv	$a3,$a4,$a0
    # Line 630
    andi	$at,$a2,0x1
    beqz	$at,.L0da7a50c
    # Line 631
    srl	$a2,$a2,0x1
    # Line 633
    or	$a1,$a3,$a1
    andi	$a1,$a1,0xffff
.L0da7a50c:
    # Line 630
    andi	$at,$a2,0x1
    # Line 631
    srl	$a2,$a2,0x1
    # Line 630
    beqz	$at,.L0da7a4ec
    # Line 631
    addiu	$a0,$a0,-1
    b	.L0da7a4e4
    # Line 633
    sllv	$a3,$a4,$a0
.L0da7a524:
    # Line 451
    addiu	$a2,$a5,4
    li	$a1,4612
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a548:
    # Line 353
    slti	$a3,$a0,21000
    bnez	$a3,.L0da7a9b0
    slti	$at,$a0,21001
    beqz	$at,.L0da7a040
    # Line 461
    addiu	$a2,$a5,4
    li	$a1,4614
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a57c:
    # Line 353
    li	$a1,0xa514
    slt	$a3,$a0,$a1
    bnez	$a3,.L0da7a9dc
    slt	$at,$a1,$a0
    bnez	$at,.L0da7a040
    nop
    # Line 705
    lwc1	$f23,4($a5)
    cvt.d.s	$f23,$f23
    sdc1	$f23,16($sp)
    # Line 706
    lwc1	$f21,8($a5)
    cvt.d.s	$f21,$f21
    sdc1	$f21,24($sp)
    # Line 707
    lwc1	$f19,12($a5)
    cvt.d.s	$f19,$f19
    sdc1	$f19,32($sp)
    # Line 708
    lwc1	$f18,16($a5)
    # Line 709
    addiu	$a1,$sp,16
    # lw $t9, -17104($gp) # &glClipPlane
    # Line 708
    cvt.d.s	$f18,$f18
    sd	$ra,96($sp)
    sdc1	$f18,40($sp)
    # Line 709
    jal	glClipPlane
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a5e0:
    # Line 407
    lw	$v0,0($a5)
    mtc1	$v0,$f12
    nop
    cvt.d.w	$f12,$f12
    # lw $t9, -16872($gp) # &glClearDepth
    ldc1	$f13,_lit8_416fffffe0000000
    sd	$ra,96($sp)
    jal	glClearDepth
    div.d	$f12,$f12,$f13
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a60c:
    # Line 353
    li	$v1,3840
    bne	$a0,$v1,.L0da7a040
    # Line 501
    nop	# was lw $t9, -17540($gp) # &glEdgeFlag
    sd	$ra,96($sp)
    jal	glEdgeFlag
    li	$a0,1
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a62c:
    # Line 353
    slti	$a3,$a0,9984
    bnez	$a3,.L0da7aae0
    slti	$at,$a0,9985
    beqz	$at,.L0da7a040
    nop
    b	.L0da7a02c
    sd	$ra,96($sp)
.L0da7a648:
    slti	$v0,$a0,22532
    bnez	$v0,.L0da7ab20
    slti	$v1,$a0,22533
    beqz	$v1,.L0da7a040
    # Line 486
    nop	# was lw $t9, -17048($gp) # &glLightModelfv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glLightModelfv
    li	$a0,2897
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a674:
    # Line 353
    li	$a1,0xb804
    slt	$a3,$a0,$a1
    bnez	$a3,.L0da7ab68
    slt	$at,$a1,$a0
    bnez	$at,.L0da7a040
    # Line 683
    nop	# was lw $t9, -17080($gp) # &glFogiv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glFogiv
    li	$a0,2913
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a6a4:
    # Line 353
    li	$a1,0xbe04
    slt	$v0,$a0,$a1
    bnez	$v0,.L0da7ab8c
    slt	$v1,$a1,$a0
    bnez	$v1,.L0da7a040
    # Line 413
    nop	# was lw $t9, -16876($gp) # &glClearStencil
    sd	$ra,96($sp)
    jal	glClearStencil
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a6d0:
    # Line 441
    addiu	$a2,$a5,4
    li	$a1,4610
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a6f4:
    # Line 749
    lwc1	$f15,12($a5)
    lwc1	$f14,8($a5)
    # lw $t9, -16504($gp) # &glRotatef
    lwc1	$f13,4($a5)
    sd	$ra,96($sp)
    jal	glRotatef
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a718:
    # Line 353
    li	$a3,4628
    bne	$a0,$a3,.L0da7a040
    # Line 431
    addiu	$a2,$a5,4
    li	$a1,4608
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a744:
    # Line 353
    li	$a3,5632
    bne	$a0,$a3,.L0da7a040
    # Line 356
    nop	# was lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    move	$a0,$zero
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a764:
    # Line 353
    li	$at,6912
    bne	$a0,$at,.L0da7a040
    # Line 371
    nop	# was lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,5
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a784:
    # Line 353
    slti	$v0,$a0,8704
    bnez	$v0,.L0da7ac00
    slti	$v1,$a0,8705
    beqz	$v1,.L0da7a040
    nop
    b	.L0da7a02c
    sd	$ra,96($sp)
.L0da7a7a0:
    slti	$a3,$a0,11584
    bnez	$a3,.L0da7ac28
    slti	$at,$a0,11585
    beqz	$at,.L0da7a040
    # Line 715
    nop	# was lw $t9, -16528($gp) # &glMultMatrixf
    sd	$ra,96($sp)
    jal	glMultMatrixf
    move	$a0,$a5
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a7c8:
    # Line 353
    slti	$v0,$a0,12812
    bnez	$v0,.L0da7ac48
    slti	$v1,$a0,12813
    beqz	$v1,.L0da7a040
    nop
    # Line 760
    lwc1	$f14,8($a5)
    # lw $t9, -16488($gp) # &glTranslatef
    lwc1	$f13,4($a5)
    sd	$ra,96($sp)
    jal	glTranslatef
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a7fc:
    # Line 353
    li	$a3,16388
    bne	$a0,$a3,.L0da7a040
    # Line 535
    nop	# was lw $t9, -16736($gp) # &glLogicOp
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLogicOp
    addiu	$a0,$a0,5376
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a820:
    # Line 353
    slti	$a3,$a0,18440
    bnez	$a3,.L0da7ac98
    slti	$at,$a0,18441
    beqz	$at,.L0da7a040
    nop
    sd	$ra,96($sp)
    # Line 655
    lwc1	$f13,4($a5)
    # lw $t9, -16552($gp) # &glDepthRange
    lwc1	$f12,0($a5)
    cvt.d.s	$f13,$f13
    jal	glDepthRange
    cvt.d.s	$f12,$f12
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a858:
    # Line 546
    lw	$a2,0($a5)
    beqz	$a2,.L0da7aee8
    li	$v0,1
    beq	$a2,$v0,.L0da7aef0
    li	$v1,2
    beq	$a2,$v1,.L0da7af0c
    li	$a3,3
    beq	$a2,$a3,.L0da7af28
    li	$at,4
    beq	$a2,$at,.L0da7af44
    li	$v0,5
    beq	$a2,$v0,.L0da7af60
    lw	$a0,0($sp)
.L0da7a88c:
    # Line 567
    lw	$a2,4($a5)
    beqz	$a2,.L0da7aed4
    li	$v1,1
    beq	$a2,$v1,.L0da7aef8
    li	$a3,2
    beq	$a2,$a3,.L0da7af14
    li	$at,3
    beq	$a2,$at,.L0da7af30
    li	$v0,4
    beq	$a2,$v0,.L0da7af4c
    li	$v1,5
    beq	$a2,$v1,.L0da7af68
    lw	$a1,4($sp)
.L0da7a8c0:
    # Line 588
    lw	$a2,8($a5)
    beqz	$a2,.L0da7aedc
    li	$a3,1
    beq	$a2,$a3,.L0da7af00
    li	$at,2
    beq	$a2,$at,.L0da7af1c
    li	$v0,3
    beq	$a2,$v0,.L0da7af38
    li	$v1,4
    beq	$a2,$v1,.L0da7af54
    li	$a3,5
    beql	$a2,$a3,.L0da7af70
    sd	$ra,96($sp)
    sd	$ra,96($sp)
    lw	$a2,8($sp)
.L0da7a8fc:
    # Line 609
    # lw $t9, -16728($gp) # &glStencilOp
    jal	glStencilOp
    nop
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a910:
    # Line 634
    # lw $t9, -17036($gp) # &glLineStipple
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLineStipple
    addiu	$a0,$a0,1
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a92c:
    # Line 353
    li	$a1,0xd910
    slt	$a3,$a0,$a1
    bnez	$a3,.L0da7acb8
    slt	$at,$a1,$a0
    bnez	$at,.L0da7a040
    nop
    # Line 660
    lwc1	$f15,12($a5)
    lwc1	$f14,8($a5)
    # lw $t9, -16480($gp) # &glBlendColorEXT
    lwc1	$f13,4($a5)
    sd	$ra,96($sp)
    jal	glBlendColorEXT
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a968:
    # Line 353
    li	$v0,7680
    bne	$a0,$v0,.L0da7a040
    # Line 380
    nop	# was lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,8
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a988:
    # Line 353
    slti	$v1,$a0,15364
    bnez	$v1,.L0da7ad64
    slti	$a3,$a0,15365
    beqz	$a3,.L0da7a040
    # Line 517
    nop	# was lw $t9, -16860($gp) # &glDepthMask
    sd	$ra,96($sp)
    jal	glDepthMask
    lbu	$a0,3($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a9b0:
    # Line 353
    li	$at,20744
    bne	$a0,$at,.L0da7a040
    # Line 456
    addiu	$a2,$a5,4
    li	$a1,4613
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7a9dc:
    # Line 353
    li	$a3,0x9420
    bne	$a0,$a3,.L0da7a040
    # Line 781
    li	$a0,9
    # Line 779
    lw	$a4,__glCurrentContext
    # Line 781
    move	$a1,$zero
    addiu	$a2,$sp,48
    sd	$a4,88($sp)
    addiu	$a4,$a4,1108
.L0da7a9fc:
    addu	$at,$a1,$a4
    addu	$v0,$a1,$a2
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7a9fc
    sw	$at,0($v0)
    # Line 782
    li	$a0,9
    ld	$a2,88($sp)
    move	$a1,$zero
    la	$a4,__glMgr_InternalUnpack
    addiu	$a2,$a2,1108
.L0da7aa2c:
    addu	$at,$a1,$a2
    addu	$a3,$a1,$a4
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7aa2c
    sw	$a3,0($at)
    # Line 787
    addiu	$a6,$a5,36
    lwc1	$f17,24($a5)
    lwc1	$f16,20($a5)
    lwc1	$f15,16($a5)
    lwc1	$f14,12($a5)
    # lw $t9, -17672($gp) # &glBitmap
    lw	$a1,8($a5)
    sd	$ra,96($sp)
    jal	glBitmap
    lw	$a0,4($a5)
    # Line 795
    li	$a1,9
    move	$a0,$zero
    ld	$a4,88($sp)
    addiu	$a2,$sp,48
    ld	$ra,96($sp)
    addiu	$a4,$a4,1108
.L0da7aa88:
    addu	$at,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da7aa88
    sw	$at,0($v0)
    b	.L0da7a040
    nop
.L0da7aaac:
    # Line 427
    # lw $t9, -17076($gp) # &glFrontFace
    sd	$ra,96($sp)
    jal	glFrontFace
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7aac4:
    # Line 675
    # lw $t9, -17088($gp) # &glFogfv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glFogfv
    li	$a0,2916
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7aae0:
    # Line 353
    li	$v0,9728
    bne	$a0,$v0,.L0da7a040
    nop
    b	.L0da7a02c
    sd	$ra,96($sp)
.L0da7aaf4:
    li	$v1,21512
    bne	$a0,$v1,.L0da7a040
    # Line 471
    addiu	$a2,$a5,4
    li	$a1,4616
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ab20:
    # Line 353
    li	$a3,22284
    bne	$a0,$a3,.L0da7a040
    # Line 482
    nop	# was lw $t9, -17048($gp) # &glLightModelfv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glLightModelfv
    li	$a0,2899
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ab44:
    # Line 353
    li	$at,0xb410
    bne	$a0,$at,.L0da7a040
    # Line 667
    nop	# was lw $t9, -17088($gp) # &glFogfv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glFogfv
    li	$a0,2918
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ab68:
    # Line 353
    li	$v0,0xb704
    bne	$a0,$v0,.L0da7a040
    # Line 671
    nop	# was lw $t9, -17088($gp) # &glFogfv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glFogfv
    li	$a0,2914
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ab8c:
    # Line 353
    li	$v1,0xbd04
    bne	$a0,$v1,.L0da7a040
    # Line 410
    nop	# was lw $t9, -16884($gp) # &glClearIndex
    sd	$ra,96($sp)
    jal	glClearIndex
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7abac:
    # Line 495
    addiu	$a2,$a5,8
    # lw $t9, -17024($gp) # &glMaterialfv
    lw	$a1,4($a5)
    sd	$ra,96($sp)
    jal	glMaterialfv
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7abcc:
    # Line 718
    # lw $t9, -16540($gp) # &glLoadMatrixf
    sd	$ra,96($sp)
    jal	glLoadMatrixf
    move	$a0,$a5
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7abe4:
    # Line 423
    # lw $t9, -17100($gp) # &glColorMaterial
    lw	$a1,0($a5)
    sd	$ra,96($sp)
    jal	glColorMaterial
    li	$a0,1032
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ac00:
    # Line 353
    li	$a3,8448
    bne	$a0,$a3,.L0da7a040
    nop
    b	.L0da7a02c
    sd	$ra,96($sp)
.L0da7ac14:
    li	$at,9216
    bne	$a0,$at,.L0da7a040
    nop
    b	.L0da7a02c
    sd	$ra,96($sp)
.L0da7ac28:
    li	$v0,11264
    bne	$a0,$v0,.L0da7a040
    # Line 721
    nop	# was lw $t9, -16544($gp) # &glLoadIdentity
    sd	$ra,96($sp)
    jal	glLoadIdentity
    nop
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ac48:
    # Line 353
    li	$v1,12556
    bne	$a0,$v1,.L0da7a040
    nop
    # Line 755
    lwc1	$f14,8($a5)
    # lw $t9, -16496($gp) # &glScalef
    lwc1	$f13,4($a5)
    sd	$ra,96($sp)
    jal	glScalef
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ac74:
    # Line 353
    li	$a3,17156
    bne	$a0,$a3,.L0da7a040
    # Line 613
    nop	# was lw $t9, -16724($gp) # &glDepthFunc
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glDepthFunc
    addiu	$a0,$a0,512
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ac98:
    # Line 353
    li	$a3,18180
    bne	$a0,$a3,.L0da7a040
    # Line 646
    nop	# was lw $t9, -16996($gp) # &glShadeModel
    sd	$ra,96($sp)
    jal	glShadeModel
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7acb8:
    # Line 353
    li	$at,0xcc00
    bne	$a0,$at,.L0da7a040
    nop
    b	.L0da7a02c
    sd	$ra,96($sp)
.L0da7accc:
    # Line 362
    # lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,3
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ace4:
    # Line 377
    # lw $t9, -17676($gp) # &glBegin
    sd	$ra,96($sp)
    jal	glBegin
    li	$a0,7
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7acfc:
    # Line 508
    # lw $t9, -16868($gp) # &glStencilMask
    sd	$ra,96($sp)
    jal	glStencilMask
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ad14:
    # Line 353
    li	$v0,13336
    bne	$a0,$v0,.L0da7a040
    nop
    sd	$ra,96($sp)
    # Line 725
    lwc1	$f12,0($a5)
    # lw $t9, -16548($gp) # &glFrustum
    lwc1	$f13,4($a5)
    lwc1	$f14,8($a5)
    lwc1	$f17,20($a5)
    lwc1	$f16,16($a5)
    lwc1	$f15,12($a5)
    cvt.d.s	$f17,$f17
    cvt.d.s	$f16,$f16
    cvt.d.s	$f15,$f15
    cvt.d.s	$f14,$f14
    cvt.d.s	$f13,$f13
    jal	glFrustum
    cvt.d.s	$f12,$f12
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ad64:
    # Line 353
    li	$v1,15108
    bne	$a0,$v1,.L0da7a040
    nop
    sd	$ra,96($sp)
    # Line 511
    lw	$a0,0($a5)
    # lw $t9, -16864($gp) # &glColorMask
    lw	$a3,12($a5)
    lw	$a2,8($a5)
    lw	$a1,4($a5)
    sltu	$a3,$zero,$a3
    sltu	$a2,$zero,$a2
    sltu	$a1,$zero,$a1
    jal	glColorMask
    sltu	$a0,$zero,$a0
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ada4:
    # Line 466
    addiu	$a2,$a5,4
    li	$a1,4615
    # lw $t9, -17064($gp) # &glLightfv
    lw	$a0,0($a5)
    sd	$ra,96($sp)
    jal	glLightfv
    addiu	$a0,$a0,16384
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7adc8:
    # Line 620
    # lw $t9, -17008($gp) # &glPolygonMode
    lw	$a1,4($a5)
    sd	$ra,96($sp)
    jal	glPolygonMode
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ade4:
    # Line 353
    li	$a3,10496
    bne	$a0,$a3,.L0da7a040
    nop
    b	.L0da7a02c
    sd	$ra,96($sp)
.L0da7adf8:
    # Line 417
    # lw $t9, -17100($gp) # &glColorMaterial
    lw	$a1,0($a5)
    sd	$ra,96($sp)
    jal	glColorMaterial
    li	$a0,1028
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ae14:
    # Line 490
    # lw $t9, -17048($gp) # &glLightModelfv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glLightModelfv
    li	$a0,2898
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ae30:
    # Line 687
    # lw $t9, -17080($gp) # &glFogiv
    move	$a1,$a5
    sd	$ra,96($sp)
    jal	glFogiv
    li	$a0,2917
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ae4c:
    # Line 642
    # lw $t9, -17012($gp) # &glPointSize
    sd	$ra,96($sp)
    jal	glPointSize
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ae64:
    # Line 742
    # lw $t9, -16516($gp) # &glPopMatrix
    sd	$ra,96($sp)
    jal	glPopMatrix
    nop
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7ae7c:
    # Line 766
    lw	$a3,12($a5)
    lw	$a2,8($a5)
    # lw $t9, -16484($gp) # &glViewport
    lw	$a1,4($a5)
    sd	$ra,96($sp)
    jal	glViewport
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7aea0:
    # Line 692
    # lw $t9, -16472($gp) # &glPolygonOffsetEXT
    lwc1	$f13,4($a5)
    sd	$ra,96($sp)
    jal	glPolygonOffsetEXT
    lwc1	$f12,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7aebc:
    # Line 520
    # lw $t9, -16856($gp) # &glIndexMask
    sd	$ra,96($sp)
    jal	glIndexMask
    lw	$a0,0($a5)
    b	.L0da7a040
    ld	$ra,96($sp)
.L0da7aed4:
    # Line 571
    b	.L0da7a8c0
    # Line 570
    li	$a1,7680
.L0da7aedc:
    sd	$ra,96($sp)
    # Line 592
    b	.L0da7a8fc
    # Line 591
    li	$a2,7680
.L0da7aee8:
    # Line 550
    b	.L0da7a88c
    # Line 549
    li	$a0,7680
.L0da7aef0:
    # Line 553
    b	.L0da7a88c
    # Line 552
    move	$a0,$zero
.L0da7aef8:
    # Line 574
    b	.L0da7a8c0
    # Line 573
    move	$a1,$zero
.L0da7af00:
    sd	$ra,96($sp)
    # Line 595
    b	.L0da7a8fc
    # Line 594
    move	$a2,$zero
.L0da7af0c:
    # Line 556
    b	.L0da7a88c
    # Line 555
    li	$a0,7681
.L0da7af14:
    # Line 577
    b	.L0da7a8c0
    # Line 576
    li	$a1,7681
.L0da7af1c:
    sd	$ra,96($sp)
    # Line 598
    b	.L0da7a8fc
    # Line 597
    li	$a2,7681
.L0da7af28:
    # Line 559
    b	.L0da7a88c
    # Line 558
    li	$a0,7682
.L0da7af30:
    # Line 580
    b	.L0da7a8c0
    # Line 579
    li	$a1,7682
.L0da7af38:
    sd	$ra,96($sp)
    # Line 601
    b	.L0da7a8fc
    # Line 600
    li	$a2,7682
.L0da7af44:
    # Line 562
    b	.L0da7a88c
    # Line 561
    li	$a0,7683
.L0da7af4c:
    # Line 583
    b	.L0da7a8c0
    # Line 582
    li	$a1,7683
.L0da7af54:
    sd	$ra,96($sp)
    # Line 604
    b	.L0da7a8fc
    # Line 603
    li	$a2,7683
.L0da7af60:
    b	.L0da7a88c
    # Line 564
    li	$a0,5386
.L0da7af68:
    b	.L0da7a8c0
    # Line 585
    li	$a1,5386
.L0da7af70:
    b	.L0da7a8fc
    # Line 606
    li	$a2,5386
.end InterpretOthers

.rdata
_lit8_416fffffe0000000:
    .word 0x416fffff, 0xe0000000
_lit_457ff000:
    .word 0x457ff000

