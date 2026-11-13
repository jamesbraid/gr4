# Source: ../MGRAS/mgras_sim.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_sim.c
# Total Functions: 18

.text

# Function: simCatch
# Declared: Line 144 (Source lines: 144-168)
# Address: 0x0da91604 - 0x0da9172c (Size: 296 bytes, Frame: 192)
.ent simCatch
simCatch:
    # Line 144
    move	$a4,$a2
    li	$at,11
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-12140
    beq	$a0,$at,.L0da91630
    addu	$gp,$t9,$v0
    ld	$gp,8($sp)
    # Line 148
    jr	$ra
    addiu	$sp,$sp,64
.L0da91630:
    ld	$a5,8($a4)
    beqz	$a5,.L0da916fc
    # Line 155
    li	$v0,17
    # Line 154
    sll	$a2,$a5,0x0
    lw	$a0,0($a2)
    # Line 155
    srl	$a1,$a0,0x1a
    sltiu	$v1,$a1,8
    bnez	$v1,.L0da916c4
    sltiu	$a3,$a1,20
    bnez	$a3,.L0da91664
    sltiu	$at,$a1,24
    bnez	$at,.L0da916c8
    # Line 158
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
.L0da91664:
    # Line 155
    beq	$a1,$v0,.L0da916c4
    sd	$ra,16($sp)
    # Line 162
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$a4,0($sp)
    addiu	$t9,$t9,7140
    bal __glMgrInitRGB
    move	$a1,$a4
    li	$at,-1
    beq	$v0,$at,.L0da916f0
    ld	$ra,16($sp)
    # Line 164
    li	$a3,4
    ld	$v1,0($sp)
    ld	$v0,8($v1)
    daddu	$v0,$v0,$a3
    sd	$v0,8($v1)
.L0da916a0:
    # Line 167
    # lw $t9, -17840($gp) # &signal
    la	$a1,sub_0da90000
    li	$a0,11
    jal	signal
    addiu	$a1,$a1,5636
    # Line 168
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da916c4:
    # Line 158
    # lw $t9, -32736($gp) # &sub_0da90000
.L0da916c8:
    sd	$ra,16($sp)
    addiu	$t9,$t9,5932
    bal __glMgrInitRGB
    move	$a1,$a4
    li	$at,-1
    bne	$v0,$at,.L0da916a0
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 159
    jr	$ra
    addiu	$sp,$sp,64
.L0da916f0:
    ld	$gp,8($sp)
    # Line 163
    jr	$ra
    addiu	$sp,$sp,64
.L0da916fc:
    # Line 151
    ld	$a2,264($a4)
    sd	$ra,16($sp)
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-10088
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 152
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end simCatch

# Function: branchdelay
# Declared: Line 172 (Source lines: 172-300)
# Address: 0x0da9172c - 0x0da91be4 (Size: 1208 bytes, Frame: 48)
.ent branchdelay
branchdelay:
    # Line 172
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$ra,8($sp)
    # Line 187
    li	$a3,4
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 179
    ld	$a2,8($a1)
    sd	$s5,0($sp)
    # Line 187
    addiu	$t9,$t9,7140
    # Line 179
    sll	$s5,$a2,0x0
    lw	$s5,0($s5)
    # Line 187
    daddu	$a2,$a2,$a3
    sll	$a2,$a2,0x0
    bal __glMgrInitRGB
    lw	$a0,0($a2)
    li	$at,-1
    beq	$v0,$at,.L0da91a60
    # Line 188
    la	$at,sub_0dbf0000
    srl	$a2,$s5,0x1a
    dsll32	$a2,$a2,0x10
    dsra32	$a2,$a2,0x10
    addiu	$at,$at,-10056
    sll	$a1,$a2,0x2
    sltiu	$v0,$a2,24
    beqz	$v0,.L0da917a8
    addu	$a1,$a1,$at
    lw	$at,%lo(jtbl_0dbed8b8)($a1)
    # Line 248
    srl	$v0,$s5,0x15
    # Line 258
    srl	$a1,$s5,0x10
    # Line 188
    jr	$at
    # Line 258
    andi	$a1,$a1,0x1f
.L0da917a8:
    # Line 296
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    ld	$a1,8($s1)
    jal	printf
    addiu	$a0,$a0,-9872
    # Line 298
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
.L0da917c8:
    # Line 300
    move	$v0,$zero
.L0da917cc:
    ld	$ra,8($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da917e0:
    # Line 192
    ld	$at,8($s1)
    li	$v0,4
    daddu	$at,$at,$v0
    li	$v0,0xf000
    dsll	$v0,$v0,0x10
    and	$at,$at,$v0
    lui	$v0,0x3ff
    ori	$v0,$v0,0xffff
    and	$v0,$s5,$v0
    sll	$v0,$v0,0x2
    or	$at,$at,$v0
    # Line 193
    b	.L0da917c8
    # Line 192
    sd	$at,8($s1)
.L0da91814:
    # Line 196
    li	$a0,4
    # Line 195
    ld	$v1,8($s1)
    li	$at,8
    daddu	$at,$v1,$at
    sd	$at,264($s1)
    # Line 196
    daddu	$v1,$v1,$a0
    li	$a0,0xf000
    dsll	$a0,$a0,0x10
    and	$v1,$v1,$a0
    lui	$a0,0x3ff
    ori	$a0,$a0,0xffff
    and	$a0,$s5,$a0
    sll	$a0,$a0,0x2
    or	$v1,$v1,$a0
    # Line 197
    b	.L0da917c8
    # Line 196
    sd	$v1,8($s1)
.L0da91854:
    # Line 199
    li	$v0,8
    andi	$a2,$s5,0x3f
    beq	$a2,$v0,.L0da91b80
    li	$v1,9
    beq	$a2,$v1,.L0da91b10
    ld	$a1,8($s1)
    # Line 208
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    jal	printf
    addiu	$a0,$a0,-9960
    # Line 210
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
    b	.L0da917cc
    # Line 300
    move	$v0,$zero
.L0da91890:
    # Line 215
    srl	$at,$s5,0x15
    srl	$a1,$s5,0x10
    andi	$a1,$a1,0x1f
    andi	$at,$at,0x1f
    dsll32	$at,$at,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a1,$a1,0x10
    dsra32	$at,$at,0x10
    sll	$at,$at,0x3
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$s1
    addu	$at,$at,$s1
    ld	$at,16($at)
    ld	$a1,16($a1)
    bne	$a1,$at,.L0da91a78
    ld	$a1,8($s1)
    # Line 218
    dsll32	$at,$s5,0x10
    dsra32	$at,$at,0x10
    sll	$at,$at,0x2
    daddu	$at,$at,$a1
    li	$v0,4
    daddu	$at,$at,$v0
    b	.L0da917c8
    sd	$at,8($s1)
.L0da918f0:
    # Line 226
    srl	$v1,$s5,0x15
    andi	$v1,$v1,0x1f
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$s1
    ld	$v1,16($v1)
    srl	$v0,$s5,0x10
    andi	$v0,$v0,0x1f
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$s1
    ld	$v0,16($v0)
    beq	$v0,$v1,.L0da91a88
    ld	$a1,8($s1)
    # Line 229
    dsll32	$v1,$s5,0x10
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x2
    daddu	$v1,$v1,$a1
    li	$a0,4
    daddu	$v1,$v1,$a0
    b	.L0da917c8
    sd	$v1,8($s1)
.L0da91950:
    # Line 237
    srl	$a0,$s5,0x15
    andi	$a0,$a0,0x1f
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$s1
    ld	$a0,16($a0)
    # Line 243
    li	$at,8
    # Line 237
    blez	$a0,.L0da91b50
    ld	$a1,8($s1)
    # Line 243
    daddu	$at,$a1,$at
    b	.L0da917c8
    sd	$at,8($s1)
.L0da91984:
    # Line 251
    li	$a0,4
    # Line 248
    andi	$v0,$v0,0x1f
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$s1
    ld	$v0,16($v0)
    # Line 251
    dsll32	$v1,$s5,0x10
    # Line 248
    blez	$v0,.L0da91b70
    ld	$a1,8($s1)
    # Line 251
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x2
    daddu	$v1,$v1,$a1
    daddu	$v1,$v1,$a0
    b	.L0da917c8
    sd	$v1,8($s1)
.L0da919c4:
    # Line 258
    li	$v0,2
    beqz	$a1,.L0da919e8
    li	$at,1
    beq	$a1,$at,.L0da919ec
    # Line 266
    dsll32	$at,$s5,0x10
    # Line 258
    beq	$a1,$v0,.L0da919e8
    li	$v1,3
    bne	$a1,$v1,.L0da917cc
    # Line 300
    move	$v0,$zero
.L0da919e8:
    # Line 266
    dsll32	$at,$s5,0x10
.L0da919ec:
    ld	$a0,8($s1)
    dsra32	$at,$at,0x10
    sll	$at,$at,0x2
    daddu	$a0,$a0,$at
    li	$at,4
    daddu	$a0,$a0,$at
    # Line 267
    b	.L0da917c8
    # Line 266
    sd	$a0,8($s1)
.L0da91a0c:
    # Line 273
    srl	$a2,$s5,0x10
    andi	$a2,$a2,0x1f
    dsll32	$a2,$a2,0x10
    dsra32	$a2,$a2,0x10
    beqz	$a2,.L0da91adc
    li	$at,2
    beq	$a2,$at,.L0da91adc
    li	$v0,1
    beq	$a2,$v0,.L0da91a98
    li	$v1,3
    beq	$a2,$v1,.L0da91a98
    # Line 289
    nop	# was lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    ld	$a1,8($s1)
    jal	printf
    addiu	$a0,$a0,-9920
    # Line 291
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
    b	.L0da917cc
    # Line 300
    move	$v0,$zero
.L0da91a60:
    ld	$ra,8($sp)
    # Line 188
    li	$v0,-1
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da91a78:
    # Line 221
    li	$at,8
    daddu	$at,$a1,$at
    b	.L0da917c8
    sd	$at,8($s1)
.L0da91a88:
    # Line 232
    li	$v0,8
    daddu	$v0,$a1,$v0
    b	.L0da917c8
    sd	$v0,8($s1)
.L0da91a98:
    # Line 283
    srl	$v1,$s5,0x15
    andi	$v1,$v1,0x1f
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$s1
    ld	$v1,16($v1)
    bltz	$v1,.L0da91bb4
    ld	$a1,8($s1)
    # Line 284
    dsll32	$a0,$s5,0x10
    dsra32	$a0,$a0,0x10
    sll	$a0,$a0,0x2
    daddu	$a0,$a0,$a1
    li	$at,4
    daddu	$a0,$a0,$at
    b	.L0da917c8
    sd	$a0,8($s1)
.L0da91adc:
    # Line 276
    srl	$a1,$s5,0x15
    andi	$a1,$a1,0x1f
    dsll32	$a1,$a1,0x10
    dsra32	$a1,$a1,0x10
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$s1
    ld	$a1,16($a1)
    bltz	$a1,.L0da91bc4
    ld	$a1,8($s1)
    # Line 279
    li	$at,8
    daddu	$at,$a1,$at
    b	.L0da917c8
    sd	$at,8($s1)
.L0da91b10:
    # Line 205
    li	$v1,0xffff
    srl	$v0,$s5,0x15
    andi	$v0,$v0,0x1f
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sll	$v0,$v0,0x3
    # Line 204
    li	$a0,8
    daddu	$a0,$a1,$a0
    sd	$a0,264($s1)
    # Line 205
    addu	$v0,$v0,$s1
    ld	$v0,16($v0)
    dsll	$v1,$v1,0x10
    ori	$v1,$v1,0xfffc
    and	$v0,$v0,$v1
    # Line 206
    b	.L0da917c8
    # Line 205
    sd	$v0,8($s1)
.L0da91b50:
    # Line 240
    dsll32	$v1,$s5,0x10
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x2
    daddu	$v1,$v1,$a1
    li	$a0,4
    daddu	$v1,$v1,$a0
    b	.L0da917c8
    sd	$v1,8($s1)
.L0da91b70:
    # Line 254
    li	$a0,8
    daddu	$a0,$a1,$a0
    b	.L0da917c8
    sd	$a0,8($s1)
.L0da91b80:
    # Line 201
    li	$v0,0xffff
    srl	$at,$s5,0x15
    andi	$at,$at,0x1f
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    sll	$at,$at,0x3
    addu	$at,$at,$s1
    ld	$at,16($at)
    dsll	$v0,$v0,0x10
    ori	$v0,$v0,0xfffc
    and	$at,$at,$v0
    # Line 202
    b	.L0da917c8
    # Line 201
    sd	$at,8($s1)
.L0da91bb4:
    # Line 286
    li	$v0,8
    daddu	$v0,$a1,$v0
    b	.L0da917c8
    sd	$v0,8($s1)
.L0da91bc4:
    # Line 277
    dsll32	$v1,$s5,0x10
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x2
    daddu	$v1,$v1,$a1
    li	$a0,4
    daddu	$v1,$v1,$a0
    b	.L0da917c8
    sd	$v1,8($s1)
.end branchdelay

# Function: disass
# Declared: Line 304 (Source lines: 305-546)
# Address: 0x0da91be4 - 0x0da920c0 (Size: 1244 bytes, Frame: 192)
.ent disass
disass:
    # Line 305
    addiu	$sp,$sp,-64
    move	$a3,$a2
    # Line 320
    lw	$t2,__glCurrentContext
    # Line 330
    srl	$at,$a0,0x15
    andi	$at,$at,0x1f
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    sll	$at,$at,0x3
    addu	$at,$at,$a1
    ld	$at,16($at)
    dsll32	$t3,$a0,0x10
    dsra32	$t3,$t3,0x10
    daddu	$t3,$t3,$at
    # Line 336
    sltiu	$at,$t3,16384
    bnez	$at,.L0da91cf8
    # Line 330
    move	$t1,$t3
    # Line 336
    lui	$v0,0x21
    ori	$v0,$v0,0x4000
    sltu	$v0,$v0,$t1
    bnez	$v0,.L0da91cf8
    # Line 338
    lui	$t0,0x4
    ori	$t0,$t0,0xb000
    dsll32	$v1,$t0,0x0
    dsrl32	$v1,$v1,0x0
    beq	$v1,$t1,.L0da91cc4
    lui	$a4,0x7
    ori	$a4,$a4,0x4008
    dsll32	$at,$a4,0x0
    dsrl32	$at,$at,0x0
    beq	$at,$t1,.L0da91cc4
    # Line 350
    lui	$a3,0x7
    ori	$a3,$a3,0x400c
    dsll32	$a7,$a3,0x0
    dsrl32	$a7,$a7,0x0
    beq	$a7,$t1,.L0da91cc4
    lui	$a2,0x7
    ori	$a2,$a2,0x4014
    dsll32	$a7,$a2,0x0
    dsrl32	$a7,$a7,0x0
    beq	$a7,$t1,.L0da91cc4
    lui	$a6,0x7
    ori	$a6,$a6,0x4080
    dsll32	$a7,$a6,0x0
    dsrl32	$a7,$a7,0x0
    beq	$a7,$t1,.L0da91cc4
    lui	$a5,0x7
    ori	$a5,$a5,0x4104
    dsll32	$a7,$a5,0x0
    dsrl32	$a7,$a7,0x0
    beq	$a7,$t1,.L0da91cc4
    lui	$a7,0x8
    ori	$a7,$a7,0x4000
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    sltu	$a7,$t1,$a7
    bnez	$a7,.L0da92040
.L0da91cc4:
    # Line 381
    la	$a7,sub_0dbf0000
    addiu	$a7,$a7,-9440
    srl	$a2,$a0,0x1a
    dsll32	$a2,$a2,0x10
    dsra32	$a2,$a2,0x10
    addiu	$a3,$a2,-32
    sltiu	$at,$a3,30
    sll	$a3,$a3,0x2
    beqz	$at,.L0da91d28
    addu	$a3,$a3,$a7
    lw	$a7,%lo(jtbl_0dbedb20)($a3)
    jr	$a7
    # Line 419
    srl	$a7,$a0,0x10
.L0da91cf8:
    # Line 337
    move	$a2,$t1
    sd	$ra,16($sp)
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-9816
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 338
    ld	$ra,16($sp)
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,64
.L0da91d28:
    sd	$ra,16($sp)
    # Line 451
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-9320
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 452
    ld	$ra,16($sp)
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,64
.L0da91d54:
    # Line 387
    srl	$a3,$a0,0x10
    andi	$a3,$a3,0x1f
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a1
    ld	$a3,16($a3)
    andi	$a3,$a3,0xff
    sw	$a3,0($sp)
    # Line 389
    b	.L0da91da4
    # Line 388
    move	$a3,$zero
.L0da91d80:
    # Line 434
    sw	$zero,0($sp)
    # Line 433
    li	$a3,3
    # Line 435
    srl	$a7,$a0,0x10
    andi	$a7,$a7,0x1f
    dsll32	$a7,$a7,0x10
    dsra32	$a7,$a7,0x10
    sll	$a7,$a7,0x3
    addu	$a7,$a7,$a1
    sd	$zero,16($a7)
.L0da91da4:
    # Line 453
    lui	$at,0x7
    ori	$at,$at,0x4080
    bne	$t1,$at,.L0da91e68
    # Line 456
    lui	$a0,0x1
    addu	$a0,$t2,$a0
    lbu	$a0,-28044($a0)
    andi	$v0,$a0,0x4
    beqz	$v0,.L0da91e00
    li	$a7,2
    beq	$a3,$a7,.L0da91e38
    sd	$ra,16($sp)
    # Line 509
    # lw $t9, -32736($gp) # &sub_0da90000
    addiu	$t9,$t9,10732
    bal __glMgrSimInit
    li	$a0,1
    # Line 513
    lw	$ra,0($sp)
    lui	$at,0x29
    ori	$at,$at,0x80
    sw	$ra,0($at)
    ld	$ra,16($sp)
.L0da91df4:
    # Line 546
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
.L0da91e00:
    # Line 513
    andi	$v0,$a0,0x2
    beqz	$v0,.L0da91df4
    lw	$a2,0($sp)
    sd	$ra,16($sp)
    li	$v1,2
    srl	$a1,$a2,0x8
    beq	$a3,$v1,.L0da92020
    andi	$a1,$a1,0x1fff
    # Line 520
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    jal	printf
    addiu	$a0,$a0,-9168
    b	.L0da91df4
    ld	$ra,16($sp)
.L0da91e38:
    # Line 500
    # lw $t9, -32736($gp) # &sub_0da90000
    addiu	$t9,$t9,10732
    bal __glMgrSimInit
    li	$a0,1
    # Line 506
    lw	$ra,4($sp)
    # Line 505
    lw	$v0,8($sp)
    lui	$at,0x29
    ori	$at,$at,0x80
    sw	$v0,0($at)
    # Line 506
    sw	$ra,0($at)
    b	.L0da91df4
    ld	$ra,16($sp)
.L0da91e68:
    # Line 456
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    sd	$ra,16($sp)
    jal	printf
    addiu	$a0,$a0,-9288
    b	.L0da91df4
    ld	$ra,16($sp)
.L0da91e84:
    # Line 392
    srl	$a3,$a0,0x10
    andi	$a3,$a3,0x1f
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a1
    ld	$a3,16($a3)
    andi	$a3,$a3,0xffff
    sw	$a3,0($sp)
    # Line 394
    b	.L0da91da4
    # Line 393
    move	$a3,$zero
.L0da91eb0:
    # Line 399
    move	$a3,$zero
    # Line 397
    andi	$at,$t3,0x3
    dsll	$at,$at,0x3
    sll	$at,$at,0x0
    # Line 398
    srl	$a7,$a0,0x10
    andi	$a7,$a7,0x1f
    dsll32	$a7,$a7,0x10
    dsra32	$a7,$a7,0x10
    sll	$a7,$a7,0x3
    addu	$a7,$a7,$a1
    ld	$a7,16($a7)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dsrlv	$a7,$a7,$at
    # Line 400
    b	.L0da91da4
    # Line 398
    sw	$a7,0($sp)
.L0da91ef0:
    # Line 403
    srl	$at,$a0,0x10
    andi	$at,$at,0x1f
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    sll	$at,$at,0x3
    addu	$at,$at,$a1
    ld	$at,16($at)
    # Line 404
    move	$a3,$zero
    # Line 405
    b	.L0da91da4
    # Line 403
    sw	$at,0($sp)
.L0da91f18:
    # Line 410
    move	$a3,$zero
    # Line 408
    andi	$v1,$t3,0x3
    dsll	$v1,$v1,0x3
    sll	$v1,$v1,0x0
    # Line 409
    srl	$v0,$a0,0x10
    andi	$v0,$v0,0x1f
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a1
    ld	$v0,16($v0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dsllv	$v0,$v0,$v1
    # Line 411
    b	.L0da91da4
    # Line 409
    sw	$v0,0($sp)
.L0da91f58:
    # Line 414
    srl	$v1,$a0,0x10
    andi	$v1,$v1,0x1f
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a1
    ld	$v1,272($v1)
    # Line 415
    li	$a3,1
    # Line 416
    b	.L0da91da4
    # Line 414
    sw	$v1,0($sp)
.L0da91f80:
    # Line 419
    andi	$a7,$a7,0x1f
    dsll32	$a7,$a7,0x10
    dsra32	$a7,$a7,0x10
    sll	$a7,$a7,0x3
    addu	$a7,$a7,$a1
    # Line 420
    ld	$at,280($a7)
    # Line 421
    li	$a3,2
    # Line 419
    ld	$a7,272($a7)
    # Line 420
    sw	$at,8($sp)
    # Line 422
    b	.L0da91da4
    # Line 419
    sw	$a7,4($sp)
.L0da91fac:
    # Line 425
    li	$a3,3
    # Line 429
    srl	$at,$a0,0x10
    andi	$at,$at,0x1f
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    sll	$at,$at,0x3
    addu	$at,$at,$a1
    # Line 430
    b	.L0da91da4
    # Line 429
    sd	$zero,16($at)
.L0da91fd0:
    # Line 440
    sw	$zero,0($sp)
    # Line 439
    li	$a3,3
    # Line 441
    srl	$v0,$a0,0x10
    andi	$v0,$v0,0x1f
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a1
    # Line 442
    b	.L0da91da4
    # Line 441
    sd	$zero,16($v0)
.L0da91ff8:
    # Line 446
    sw	$zero,0($sp)
    # Line 445
    li	$a3,4
    # Line 447
    srl	$v1,$a0,0x10
    andi	$v1,$v1,0x1f
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a1
    # Line 448
    b	.L0da91da4
    # Line 447
    sd	$zero,272($v1)
.L0da92020:
    # Line 517
    lw	$a3,4($sp)
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    lw	$a2,8($sp)
    jal	printf
    addiu	$a0,$a0,-9240
    b	.L0da91df4
    ld	$ra,16($sp)
.L0da92040:
    # Line 359
    sll	$a1,$t1,0x0
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    sd	$ra,16($sp)
    jal	printf
    addiu	$a0,$a0,-9768
    lui	$a4,0x7
    lui	$a6,0x7
    lui	$a5,0x7
    lui	$a1,0x4
    lui	$a3,0x7
    lui	$a2,0x7
    ori	$a2,$a2,0x4008
    ori	$a3,$a3,0x400c
    ori	$a1,$a1,0xb000
    ori	$a5,$a5,0x4080
    ori	$a6,$a6,0x4104
    # Line 361
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    ori	$a4,$a4,0x4014
    jal	printf
    addiu	$a0,$a0,-9696
    lui	$a1,0x8
    # Line 376
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    ori	$a1,$a1,0x4000
    jal	printf
    addiu	$a0,$a0,-9480
    # Line 381
    ld	$ra,16($sp)
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,64
.end disass

# Function: simIoctl
# Declared: Line 551 (Source lines: 552-578)
# Address: 0x0da920c0 - 0x0da92198 (Size: 216 bytes, Frame: 192)
.ent simIoctl
simIoctl:
    # Line 552
    addiu	$sp,$sp,-64
    sd	$s3,16($sp)
    move	$s3,$a1
    sd	$a2,24($sp)
    # Line 555
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbf0000
    sd	$ra,0($sp)
    jal	getenv
    addiu	$a0,$a0,-9128
    move	$a3,$s3
    ld	$s3,16($sp)
    li	$a4,102
    beq	$a3,$a4,.L0da92104
    ld	$ra,0($sp)
.L0da920f8:
    # Line 578
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
.L0da92104:
    # Line 568
    move	$a0,$v0
    # Line 565
    li	$s3,204
    # Line 563
    li	$t2,1279
    # Line 564
    li	$t3,1023
    # Line 566
    li	$t8,24
    # Line 568
    # lw $t9, -17856($gp) # &atoi
    # Line 562
    addiu	$t0,$gp,-15584
    # Line 561
    addiu	$a5,$gp,-15592
    ld	$a6,24($sp)
    lhu	$a7,4($a5)
    lw	$a5,0($a5)
    # Line 560
    lw	$a6,4($a6)
    # Line 562
    lbu	$t1,4($t0)
    lw	$t0,0($t0)
    sd	$a6,8($sp)
    # Line 567
    sb	$zero,41($a6)
    # Line 566
    sb	$t8,72($a6)
    # Line 564
    sh	$t3,34($a6)
    # Line 563
    sh	$t2,32($a6)
    # Line 562
    sb	$t1,20($a6)
    sw	$t0,16($a6)
    # Line 561
    sh	$a7,4($a6)
    sw	$a5,0($a6)
    # Line 565
    sw	$s3,36($a6)
    # Line 568
    jal	atoi
    ld	$s3,16($sp)
    ld	$at,8($sp)
    # Line 569
    li	$ra,1
    # Line 572
    li	$v1,1024
    sh	$v1,34($at)
    # Line 570
    sb	$ra,45($at)
    # Line 569
    sb	$ra,44($at)
    ld	$ra,0($sp)
    # Line 568
    sb	$v0,43($at)
    # Line 571
    li	$v0,1280
    b	.L0da920f8
    sh	$v0,32($at)
.end simIoctl

# Function: __glMgrSimIoctl
# Declared: Line 582 (Source lines: 583-592)
# Address: 0x0da92198 - 0x0da92250 (Size: 184 bytes, Frame: 208)
.globl __glMgrSimIoctl
.ent __glMgrSimIoctl
__glMgrSimIoctl:
    # Line 583
    move	$a4,$a1
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$gp,24($sp)
    # Line 584
    lw	$a5,__glCurrentContext
    # Line 583
    lui	$v0,0x17
    # Line 584
    lui	$at,0x1
    addu	$a5,$a5,$at
    lbu	$a5,-28044($a5)
    # Line 583
    addiu	$v0,$v0,-15104
    # Line 584
    li	$at,-129
    and	$at,$a5,$at
    beqz	$at,.L0da921e0
    # Line 583
    addu	$gp,$t9,$v0
    # Line 584
    andi	$v0,$a5,0x4
    beqz	$v0,.L0da92208
    sd	$ra,32($sp)
.L0da921e0:
    # Line 592
    # lw $t9, -17944($gp) # &ioctl
    move	$a0,$s8
    sd	$ra,32($sp)
    jal	ioctl
    move	$a1,$a4
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da92208:
    sd	$a4,0($sp)
    sd	$a2,8($sp)
    # Line 589
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    move	$a1,$a5
    jal	printf
    addiu	$a0,$a0,-9112
    # Line 590
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s8
    ld	$a1,0($sp)
    addiu	$t9,$t9,8384
    bal __glMgrInitRGB
    ld	$a2,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrSimIoctl

# Function: simOpenGraphics
# Declared: Line 598 (Source lines: 599-659)
# Address: 0x0da92250 - 0x0da92470 (Size: 544 bytes, Frame: 144)
.ent simOpenGraphics
simOpenGraphics:
    # Line 599
    addiu	$sp,$sp,-144
    sd	$s0,96($sp)
    sd	$gp,104($sp)
    li	$at,0x9274
    addu	$at,$at,$a0
    lbu	$at,0($at)
    lui	$v0,0x17
    addiu	$v0,$v0,-15288
    andi	$at,$at,0x10
    beqz	$at,.L0da92380
    addu	$gp,$t9,$v0
    sd	$s1,120($sp)
    # Line 610
    li	$a1,2050
    # lw $t9, -17936($gp) # &open
    la	$a0,sub_0dbf0000
    sd	$ra,112($sp)
    jal	open
    addiu	$a0,$a0,-9064
    move	$s1,$v0
    bltz	$v0,.L0da9238c
    move	$s0,$v0
    # Line 620
    addiu	$a2,$sp,80
.L0da922a8:
    li	$a1,103
    move	$a0,$s1
    # lw $t9, -17944($gp) # &ioctl
    # Line 616
    sw	$zero,80($sp)
    # Line 618
    li	$a3,16384
    # Line 620
    jal	ioctl
    # Line 618
    sw	$a3,84($sp)
    # Line 620
    li	$at,-1
    beq	$v0,$at,.L0da923c8
    # Line 635
    li	$a1,1000
.L0da922d0:
    move	$a0,$s0
    # Line 634
    sw	$zero,-13364($gp)
    # Line 623
    addiu	$a2,$gp,-13376
    # Line 635
    # lw $t9, -17944($gp) # &ioctl
    li	$a3,-1
    # Line 633
    sw	$a3,-13368($gp)
    # Line 635
    jal	ioctl
    addiu	$a2,$a2,8
    move	$s1,$v0
    move	$at,$v0
    bltz	$v0,.L0da92404
    sd	$v0,88($sp)
    # Line 641
    li	$a1,1002
.L0da92304:
    move	$a0,$s0
    # lw $t9, -17944($gp) # &ioctl
    # Line 640
    sw	$s1,-13360($gp)
    addiu	$a2,$gp,-13376
    # Line 641
    jal	ioctl
    addiu	$a2,$a2,16
    bltz	$v0,.L0da92428
    ld	$s1,120($sp)
    # Line 648
    li	$a1,1003
.L0da92328:
    move	$a0,$s0
    # Line 647
    lui	$a4,0x1
    ori	$a4,$a4,0x2345
    # Line 643
    la	$a2,sub_0dc00000
    # Line 646
    ld	$a3,88($sp)
    # Line 648
    # lw $t9, -17944($gp) # &ioctl
    # Line 643
    addiu	$a2,$a2,-13600
    # Line 647
    sw	$a4,4($a2)
    # Line 648
    jal	ioctl
    # Line 646
    sw	$a3,0($a2)
    li	$at,-1
    # Line 648
    beq	$v0,$at,.L0da9244c
    ld	$ra,112($sp)
.L0da9235c:
    ld	$gp,104($sp)
    # Line 657
    li	$v0,1280
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
    # Line 659
    move	$v0,$s0
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da92380:
    # Line 655
    li	$s0,-1
    b	.L0da9235c
    nop
.L0da9238c:
    # Line 611
    addiu	$a0,$sp,0
    la	$a2,sub_0dbf0000
    # lw $t9, -17928($gp) # &sprintf
    la	$a1,sub_0dbf0000
    addiu	$a2,$a2,-9064
    jal	sprintf
    addiu	$a1,$a1,-9048
    # Line 612
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$sp,0
    # Line 613
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
    b	.L0da922a8
    # Line 620
    addiu	$a2,$sp,80
.L0da923c8:
    # Line 621
    addiu	$a0,$sp,0
    la	$a2,sub_0dbf0000
    # lw $t9, -17928($gp) # &sprintf
    la	$a1,sub_0dbf0000
    addiu	$a2,$a2,-9016
    jal	sprintf
    addiu	$a1,$a1,-9032
    # Line 622
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$sp,0
    # Line 623
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
    b	.L0da922d0
    # Line 635
    li	$a1,1000
.L0da92404:
    # Line 636
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-9000
    # Line 637
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
    b	.L0da92304
    # Line 641
    li	$a1,1002
.L0da92428:
    # Line 642
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-8984
    # Line 643
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
    b	.L0da92328
    # Line 648
    li	$a1,1003
.L0da9244c:
    # Line 649
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-8960
    # Line 650
    # lw $t9, -17836($gp) # &exit
    jal	exit
    li	$a0,1
    b	.L0da9235c
    ld	$ra,112($sp)
.end simOpenGraphics

# Function: simAllocHWContext
# Declared: Line 664 (Source lines: 668-669)
# Address: 0x0da92470 - 0x0da92488 (Size: 24 bytes, Frame: 0)
.ent simAllocHWContext
simAllocHWContext:
    # Line 669
    li	$v0,1
    # Line 668
    li	$at,1536
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 669
    jr	$ra
    # Line 668
    sw	$at,0($v1)
.end simAllocHWContext

# Function: simFreeHWContext
# Declared: Line 674 (Source lines: 676-676)
# Address: 0x0da92488 - 0x0da92490 (Size: 8 bytes, Frame: 0)
.ent simFreeHWContext
simFreeHWContext:
    # Line 676
    jr	$ra
    nop
.end simFreeHWContext

# Function: simBindHWContextToWindow
# Declared: Line 680 (Source lines: 682-682)
# Address: 0x0da92490 - 0x0da92498 (Size: 8 bytes, Frame: 0)
.ent simBindHWContextToWindow
simBindHWContextToWindow:
    # Line 682
    jr	$ra
    nop
.end simBindHWContextToWindow

# Function: simPixmapMemory
# Declared: Line 686 (Source lines: 688-688)
# Address: 0x0da92498 - 0x0da924a0 (Size: 8 bytes, Frame: 0)
.ent simPixmapMemory
simPixmapMemory:
    # Line 688
    jr	$ra
    move	$v0,$zero
.end simPixmapMemory

# Function: __glMgrSimInit
# Declared: Line 692 (Source lines: 693-711)
# Address: 0x0da924a0 - 0x0da92568 (Size: 200 bytes, Frame: 48)
.globl __glMgrSimInit
.ent __glMgrSimInit
__glMgrSimInit:
    # Line 693
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lbu	$a2,-28044($a2)
    lui	$v0,0x17
    addiu	$v0,$v0,-15880
    andi	$at,$a2,0x4
    beqz	$at,.L0da924f0
    addu	$gp,$t9,$v0
    # Line 698
    li	$a0,11
    # lw $t9, -17840($gp) # &signal
    la	$a1,sub_0da90000
    sd	$ra,8($sp)
    jal	signal
    addiu	$a1,$a1,5636
    # Line 699
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da924f0:
    andi	$at,$a2,0x10
    beqz	$at,.L0da92540
.L0da924f8:
    # Line 706
    la	$v1,sub_0da90000
    # Line 707
    la	$a1,sub_0da90000
    # Line 708
    la	$at,sub_0da90000
    # Line 706
    addiu	$v1,$v1,9328
    # Line 707
    addiu	$a1,$a1,9352
    # Line 708
    addiu	$at,$at,9360
    sw	$at,52($a0)
    # Line 709
    la	$v0,sub_0da90000
    # Line 707
    sw	$a1,48($a0)
    # Line 706
    sw	$v1,44($a0)
    # Line 709
    addiu	$v0,$v0,9368
    sw	$v0,56($a0)
    # Line 705
    la	$v0,sub_0da90000
    ld	$gp,0($sp)
    # Line 711
    addiu	$sp,$sp,48
    # Line 705
    addiu	$v0,$v0,8784
    # Line 711
    jr	$ra
    # Line 705
    sw	$v0,40($a0)
.L0da92540:
    sd	$a0,16($sp)
    # Line 703
    li	$a0,11
    # lw $t9, -17840($gp) # &signal
    la	$a1,sub_0da90000
    sd	$ra,8($sp)
    jal	signal
    addiu	$a1,$a1,5636
    ld	$a0,16($sp)
    b	.L0da924f8
    ld	$ra,8($sp)
.end __glMgrSimInit

# Function: setup
# Declared: Line 727 (Source lines: 728-757)
# Address: 0x0da92568 - 0x0da9262c (Size: 196 bytes, Frame: 48)
.ent setup
setup:
    # Line 739
    li	$a2,950
    # Line 728
    addiu	$sp,$sp,-48
    # Line 739
    # lw $t9, -17832($gp) # &semget
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	semget
    li	$a1,2
    move	$at,$v0
    bltz	$v0,.L0da92610
    sd	$v0,8($sp)
    # Line 750
    li	$a2,8
    move	$a1,$zero
    move	$a0,$v0
    # lw $t9, -17828($gp) # &semctl
    # Line 745
    ld	$a4,16($sp)
    # Line 749
    sw	$zero,0($sp)
    # Line 750
    addiu	$a3,$sp,0
    lw	$a3,0($a3)
    # Line 745
    sw	$v0,0($a4)
    # Line 750
    jal	semctl
    dsll32	$a3,$a3,0x0
    bltz	$v0,.L0da925f4
    li	$a2,8
    li	$a1,1
    # lw $t9, -17828($gp) # &semctl
    addiu	$a3,$sp,0
    lw	$a3,0($a3)
    ld	$a0,8($sp)
    jal	semctl
    dsll32	$a3,$a3,0x0
    bltz	$v0,.L0da925f4
    ld	$ra,24($sp)
    # Line 757
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0da925f4:
    # Line 753
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-15568
    ld	$ra,24($sp)
    # Line 754
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,48
.L0da92610:
    # Line 741
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-15576
    ld	$ra,24($sp)
    # Line 742
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,48
.end setup

# Function: cleanup
# Declared: Line 760 (Source lines: 761-770)
# Address: 0x0da9262c - 0x0da926ac (Size: 128 bytes, Frame: 32)
.ent cleanup
cleanup:
    # Line 761
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    bltz	$a0,.L0da9267c
    move	$s0,$a0
    # Line 763
    move	$a0,$s0
    move	$a1,$zero
    # lw $t9, -17828($gp) # &semctl
    move	$a3,$zero
    sd	$ra,8($sp)
    jal	semctl
    li	$a2,10
    bltz	$v0,.L0da9268c
    move	$a0,$s0
    # lw $t9, -17828($gp) # &semctl
    move	$a3,$zero
    li	$a2,10
    jal	semctl
    li	$a1,1
    bltz	$v0,.L0da9268c
    ld	$ra,8($sp)
.L0da9267c:
    # Line 770
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9268c:
    # Line 766
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-15568
    # Line 767
    ld	$ra,8($sp)
    li	$v0,-1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end cleanup

# Function: clean_IPC
# Declared: Line 776 (Source lines: 777-781)
# Address: 0x0da926ac - 0x0da92714 (Size: 104 bytes, Frame: 16)
.ent clean_IPC
clean_IPC:
    # Line 778
    move	$a3,$zero
    li	$a2,10
    # Line 777
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,-16404
    addu	$gp,$t9,$at
    # Line 778
    # lw $t9, -17828($gp) # &semctl
    move	$a1,$zero
    sd	$ra,0($sp)
    jal	semctl
    lw	$a0,-13376($gp)
    # Line 779
    move	$a3,$zero
    # lw $t9, -17828($gp) # &semctl
    li	$a2,10
    li	$a1,1
    jal	semctl
    lw	$a0,-13376($gp)
    # Line 780
    # lw $t9, -17824($gp) # &kill
    li	$a1,9
    jal	kill
    lw	$a0,-13372($gp)
    # Line 781
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end clean_IPC

# Function: sem_signal
# Declared: Line 784 (Source lines: 785-794)
# Address: 0x0da92714 - 0x0da927bc (Size: 168 bytes, Frame: 48)
.ent sem_signal
sem_signal:
    # Line 787
    li	$a2,1
    # Line 786
    li	$at,1
    # Line 785
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 787
    # lw $t9, -17820($gp) # &semop
    # Line 785
    move	$a4,$a1
    # Line 786
    la	$a3,sub_0dbf0000
    sd	$a1,8($sp)
    sll	$a1,$a1,0x2
    subu	$a1,$a1,$a4
    addiu	$a3,$a3,12056
    sll	$a1,$a1,0x1
    addu	$a1,$a1,$a3
    # Line 787
    jal	semop
    # Line 786
    sh	$at,2($a1)
    # Line 787
    bltz	$v0,.L0da92768
    ld	$ra,16($sp)
    # Line 794
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0da92768:
    # Line 789
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-15560
    ld	$a0,0($sp)
    # Line 790
    # lw $t9, -17828($gp) # &semctl
    ld	$a1,8($sp)
    move	$a3,$zero
    jal	semctl
    li	$a2,5
    move	$a3,$v0
    ld	$a2,8($sp)
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-8936
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,16($sp)
    # Line 792
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,48
.end sem_signal

# Function: sem_wait
# Declared: Line 798 (Source lines: 799-808)
# Address: 0x0da927bc - 0x0da92864 (Size: 168 bytes, Frame: 48)
.ent sem_wait
sem_wait:
    # Line 801
    li	$a2,1
    # Line 800
    li	$at,-1
    # Line 799
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 801
    # lw $t9, -17820($gp) # &semop
    # Line 799
    move	$a4,$a1
    # Line 800
    la	$a3,sub_0dbf0000
    sd	$a1,8($sp)
    sll	$a1,$a1,0x2
    subu	$a1,$a1,$a4
    addiu	$a3,$a3,12056
    sll	$a1,$a1,0x1
    addu	$a1,$a1,$a3
    # Line 801
    jal	semop
    # Line 800
    sh	$at,2($a1)
    # Line 801
    bltz	$v0,.L0da92810
    ld	$ra,16($sp)
    # Line 808
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0da92810:
    # Line 803
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-15560
    ld	$a0,0($sp)
    # Line 804
    # lw $t9, -17828($gp) # &semctl
    ld	$a1,8($sp)
    move	$a3,$zero
    jal	semctl
    li	$a2,5
    move	$a3,$v0
    ld	$a2,8($sp)
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-8912
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,16($sp)
    # Line 806
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,48
.end sem_wait

# Function: init_externalcontext
# Declared: Line 815 (Source lines: 816-857)
# Address: 0x0da92864 - 0x0da929ec (Size: 392 bytes, Frame: 192)
.ent init_externalcontext
init_externalcontext:
    # Line 820
    lui	$a0,0x6
    # Line 816
    addiu	$sp,$sp,-704
    # Line 820
    # lw $t9, -32736($gp) # &sub_0da90000
    addiu	$a1,$sp,0
    sd	$ra,680($sp)
    addiu	$t9,$t9,9576
    bal __glMgrSimInit
    ori	$a0,$a0,0xc433
    bltz	$v0,.L0da92958
    # Line 826
    nop	# was lw $t9, -17816($gp) # &fork
    # Line 824
    lw	$at,0($sp)
    # Line 826
    jal	fork
    # Line 824
    sw	$at,-13376($gp)
    # Line 826
    bltz	$v0,.L0da929ac
    move	$a1,$v0
    # Line 830
    bnez	$v0,.L0da92918
    # Line 856
    nop	# was lw $t9, -17812($gp) # &atexit
    # Line 837
    # lw $t9, -17808($gp) # &putenv
    la	$a0,sub_0dbf0000
    sd	$a1,688($sp)
    jal	putenv
    addiu	$a0,$a0,-8784
    # Line 838
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbf0000
    jal	getenv
    addiu	$a0,$a0,-8760
    beqz	$v0,.L0da9297c
    sd	$v0,672($sp)
.L0da928d4:
    # Line 843
    # lw $t9, -17804($gp) # &stat
    addiu	$a1,$sp,520
    jal	stat
    addiu	$a0,$sp,8
    bnez	$v0,.L0da92934
    # Line 847
    addiu	$a2,$sp,8
    # Line 844
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    ld	$a1,672($sp)
    jal	printf
    addiu	$a0,$a0,-8704
    # Line 845
    # lw $t9, -17800($gp) # &execv
    ld	$a0,672($sp)
    jal	execv
    move	$a1,$zero
    ld	$a1,688($sp)
    # Line 856
    # lw $t9, -17812($gp) # &atexit
.L0da92918:
    la	$a0,sub_0da90000
    # Line 855
    sw	$a1,-13372($gp)
    # Line 856
    jal	atexit
    addiu	$a0,$a0,9900
    ld	$ra,680($sp)
    # Line 857
    jr	$ra
    addiu	$sp,$sp,704
.L0da92934:
    # Line 847
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-8680
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,680($sp)
    # Line 848
    jr	$ra
    addiu	$sp,$sp,704
.L0da92958:
    # Line 821
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-8888
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,680($sp)
    # Line 822
    jr	$ra
    addiu	$sp,$sp,704
.L0da9297c:
    # Line 840
    # lw $t9, -17896($gp) # &getenv
    jal	getenv
    addiu	$a0,$gp,-15544
    move	$a2,$v0
    # lw $t9, -17928($gp) # &sprintf
    la	$a1,sub_0dbf0000
    addiu	$a0,$sp,8
    jal	sprintf
    addiu	$a1,$a1,-8736
    # Line 841
    addiu	$a2,$sp,8
    b	.L0da928d4
    sd	$a2,672($sp)
.L0da929ac:
    # Line 827
    # lw $t9, -17888($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-15552
    # Line 828
    # lw $t9, -32736($gp) # &sub_0da90000
    addiu	$t9,$t9,9772
    bal __glMgrSimInit
    lw	$a0,0($sp)
    # Line 829
    la	$a1,sub_0dbf0000
    # lw $t9, -17908($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-8840
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,680($sp)
    # Line 830
    jr	$ra
    addiu	$sp,$sp,704
.end init_externalcontext

# Function: force_externalcontextswitch
# Declared: Line 865 (Source lines: 866-894)
# Address: 0x0da929ec - 0x0da92b34 (Size: 328 bytes, Frame: 32)
.ent force_externalcontextswitch
force_externalcontextswitch:
    # Line 866
    lw	$v0,__glCurrentContext
    li	$at,0x9278
    addu	$at,$at,$v0
    lw	$at,0($at)
    beqz	$at,.L0da92a0c
    addiu	$sp,$sp,-32
    # Line 873
    jr	$ra
    addiu	$sp,$sp,32
.L0da92a0c:
    # Line 875
    lw	$v1,-13352($gp)
    li	$a4,1
    addiu	$v1,$v1,1
    beq	$v1,$a4,.L0da92abc
    sw	$v1,-13352($gp)
.L0da92a20:
    # Line 881
    beqz	$a0,.L0da92a68
    # Line 887
    lw	$v0,-13348($gp)
    # Line 881
    lw	$a2,-13344($gp)
    andi	$a2,$a2,0x200
    beqz	$a2,.L0da92a40
    nop
    # Line 885
    jr	$ra
    addiu	$sp,$sp,32
.L0da92a40:
    beqz	$a0,.L0da92a6c
    lw	$v1,-13344($gp)
.L0da92a48:
    # Line 887
    beqz	$v0,.L0da92a80
    # Line 890
    lw	$at,-13352($gp)
    div	$zero,$at,$v0
    mfhi	$a3
    beqz	$a3,.L0da92a80
    teq	$v0,$zero,0x7
.L0da92a60:
    # Line 891
    jr	$ra
    addiu	$sp,$sp,32
.L0da92a68:
    # Line 885
    lw	$v1,-13344($gp)
.L0da92a6c:
    andi	$v1,$v1,0x100
    beqz	$v1,.L0da92a48
    nop
    # Line 887
    jr	$ra
    addiu	$sp,$sp,32
.L0da92a80:
    # Line 890
    beq	$v0,$a4,.L0da92a60
    # Line 892
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
    move	$a1,$zero
    sd	$ra,0($sp)
    addiu	$t9,$t9,10004
    bal __glMgrSimInit
    lw	$a0,-13376($gp)
    # Line 893
    # lw $t9, -32736($gp) # &sub_0da90000
    li	$a1,1
    addiu	$t9,$t9,10172
    bal __glMgrSimInit
    lw	$a0,-13376($gp)
    ld	$ra,0($sp)
    # Line 894
    jr	$ra
    addiu	$sp,$sp,32
.L0da92abc:
    # Line 877
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$ra,0($sp)
    addiu	$t9,$t9,10340
    bal __glMgrSimInit
    sd	$a0,8($sp)
    # Line 878
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbf0000
    jal	getenv
    addiu	$a0,$a0,-8664
    # lw $t9, -17856($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    li	$a4,1
    move	$a5,$v0
    sw	$v0,-13344($gp)
    ld	$a0,8($sp)
    beqz	$v0,.L0da92b28
    ld	$ra,0($sp)
    # Line 880
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    move	$a1,$v0
    jal	printf
    addiu	$a0,$a0,-8632
    li	$a4,1
    lw	$a5,-13344($gp)
    ld	$a0,8($sp)
    ld	$ra,0($sp)
.L0da92b28:
    # Line 881
    andi	$a2,$a5,0xff
    b	.L0da92a20
    sw	$a2,-13348($gp)
.end force_externalcontextswitch

.late_rodata
jtbl_0dbed8b8:
    .word .L0da91854
    .word .L0da91a0c
    .word .L0da917e0
    .word .L0da91814
    .word .L0da91890
    .word .L0da918f0
    .word .L0da91950
    .word .L0da91984
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da919c4
    .word .L0da917a8
    .word .L0da917a8
    .word .L0da91890
    .word .L0da918f0
    .word .L0da91950
    .word .L0da91984
jtbl_0dbedb20:
    .word .L0da91fac
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91fd0
    .word .L0da91d80
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d54
    .word .L0da91e84
    .word .L0da91eb0
    .word .L0da91ef0
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91f18
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91ff8
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91f58
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91d28
    .word .L0da91f80

