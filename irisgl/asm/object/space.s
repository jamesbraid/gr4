# Source: ../object/space.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/space.c -o space.T
# Total Functions: 5

.text

# Function: gl_compile
# Declared: Line 30 (Source lines: 33-57)
# Address: 0x0f11433c - 0x0f1144a4 (Size: 360 bytes, Frame: 48)
.globl gl_compile
.ent gl_compile
gl_compile:
    # Line 33
    andi	$at,$a0,0x1
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0xfff2
    addiu	$v0,$v0,-4340
    beqz	$at,.L0f114388
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 37
    li	$a1,5
    li	$a0,108
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a2,$a2,-22312
    ld	$ra,24($sp)
.L0f114388:
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f114458
    sd	$ra,24($sp)
    # Line 52
    la	$t9,sub_0f110000
    addiu	$t9,$t9,17572
    bal gl_compile
    move	$a0,$s0
    beqz	$v0,.L0f114490
    ld	$ra,24($sp)
    # Line 54
    srl	$s0,$s0,0x1
    # Line 52
    la	$a7,gl_currentpos
    # Line 54
    move	$a3,$s0
    blez	$s0,.L0f114440
    # Line 53
    lw	$a1,0($a7)
    andi	$a0,$s0,0x3
    beqz	$a0,.L0f1143f0
    move	$a6,$s0
.L0f1143d0:
    # Line 54
    addiu	$s0,$s0,-1
    # Line 55
    addiu	$a1,$a1,4
    addiu	$s1,$s1,4
    lw	$at,-4($s1)
    addi	$a0,$a0,-1
    bnez	$a0,.L0f1143d0
    sw	$at,-4($a1)
    move	$a6,$s0
.L0f1143f0:
    move	$a4,$s1
    move	$a5,$a1
    sra	$v0,$a3,0x2
    beqz	$v0,.L0f114440
    move	$a0,$a5
    move	$a3,$a6
    move	$a1,$a4
.L0f11440c:
    lw	$v0,0($a1)
    sw	$v0,0($a0)
    lw	$at,4($a1)
    sw	$at,4($a0)
    lw	$a2,8($a1)
    addiu	$a0,$a0,16
    sw	$a2,-8($a0)
    addiu	$a1,$a1,16
    lw	$v1,-4($a1)
    # Line 54
    addiu	$a3,$a3,-4
    bnez	$a3,.L0f11440c
    # Line 55
    sw	$v1,-4($a0)
    move	$a1,$a0
.L0f114440:
    ld	$gp,0($sp)
    # Line 56
    sw	$a1,0($a7)
    # Line 57
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f114458:
    # Line 47
    move	$a0,$s1
    # Line 44
    la	$v1,gl_n_retsym
    # Line 47
    la	$t9,gl_interpret
    # Line 44
    srl	$a1,$s0,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s1
    # Line 47
    jalr	$t9
    # Line 44
    sw	$v1,0($a1)
    ld	$gp,0($sp)
    # Line 48
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f114490:
    ld	$gp,0($sp)
    # Line 52
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_compile

# Function: gl_checkspace
# Declared: Line 60 (Source lines: 61-65)
# Address: 0x0f1144a4 - 0x0f1144f0 (Size: 76 bytes, Frame: 32)
.ent gl_checkspace
gl_checkspace:
    # Line 61
    la	$at,gl_replacemode
    lw	$at,0($at)
    addiu	$sp,$sp,-32
    beqz	$at,.L0f1144d4
    sd	$ra,0($sp)
    # Line 63
    la	$t9,sub_0f110000
    addiu	$t9,$t9,17740
    bal gl_nonprim_checkspace
    nop
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f1144d4:
    # Line 65
    la	$t9,sub_0f110000
    addiu	$t9,$t9,18376
    bal gl_nonprim_checkspace
    nop
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_checkspace

# Function: gl_nonprim_checkspace
# Declared: Line 73 (Source lines: 75-79)
# Address: 0x0f1144f0 - 0x0f11454c (Size: 92 bytes, Frame: 32)
.globl gl_nonprim_checkspace
.ent gl_nonprim_checkspace
gl_nonprim_checkspace:
    # Line 75
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-4776 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 76
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    # Line 77
    li	$v0,1
    # Line 76
    beqz	$at,.L0f114524
    la	$v1,gl_replacemode
    lw	$v1,0($v1)
    beqz	$v1,.L0f114530
    # Line 79
    la	$t9,gl_makeroom
.L0f114524:
    ld	$gp,0($sp)
    # Line 77
    jr	$ra
    addiu	$sp,$sp,32
.L0f114530:
    sd	$ra,8($sp)
    # Line 79
    jalr	$t9
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_nonprim_checkspace

# Function: gl_replacespace
# Declared: Line 83 (Source lines: 84-150)
# Address: 0x0f11454c - 0x0f1147c8 (Size: 636 bytes, Frame: 144)
.ent gl_replacespace
gl_replacespace:
    # Line 84
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    addiu	$sp,$sp,-144
    sd	$s0,80($sp)
    beqz	$at,.L0f11473c
    move	$s0,$a0
    sd	$s5,96($sp)
    sd	$s7,104($sp)
.L0f11456c:
    sd	$s1,88($sp)
    # Line 89
    la	$t9,gl_n_quad_nop3
    la	$t8,gl_n_quad_nop2
    la	$t3,gl_n_quad_nop1
    la	$s7,gl_n_tag
    la	$s5,gl_currentpos
    la	$t1,gl_n_jump
    la	$t2,gl_replacemode
    lw	$v0,0($s5)
    b	.L0f1145a4
    lw	$t2,0($t2)
.L0f114598:
    # Line 95
    beqz	$t2,.L0f1145d4
    nop
.L0f1145a0:
    # Line 106
    beqz	$a0,.L0f1145ec
.L0f1145a4:
    # Line 89
    move	$a7,$zero
.L0f1145a8:
    move	$t0,$zero
    move	$a6,$zero
    move	$a4,$zero
    # Line 94
    lw	$a2,0($v0)
    # Line 89
    move	$a5,$zero
    move	$a0,$zero
    # Line 94
    bne	$a2,$t1,.L0f114598
    move	$s1,$a2
    # Line 95
    lw	$v0,4($v0)
    b	.L0f1145a4
    sw	$v0,0($s5)
.L0f1145d4:
    bne	$a2,$t3,.L0f114610
    nop
    # Line 106
    li	$a5,1
    # Line 105
    addiu	$v0,$v0,4
    # Line 106
    b	.L0f114644
    # Line 105
    sw	$v0,0($s5)
.L0f1145ec:
    # Line 106
    bnez	$a4,.L0f1145a8
    # Line 89
    move	$a7,$zero
    # Line 106
    bnez	$t0,.L0f1145a8
    # Line 89
    move	$a7,$zero
    # Line 106
    bne	$a2,$s7,.L0f11464c
    la	$at,gl_n_slopnop2
    # Line 118
    addiu	$v0,$v0,8
    b	.L0f1145a4
    sw	$v0,0($s5)
.L0f114610:
    # Line 106
    bne	$a2,$t8,.L0f114628
    nop
    # Line 110
    li	$a6,1
    # Line 109
    addiu	$v0,$v0,8
    # Line 110
    b	.L0f114640
    # Line 109
    sw	$v0,0($s5)
.L0f114628:
    # Line 110
    bne	$a2,$t9,.L0f114640
    # Line 114
    move	$t0,$a7
    li	$a7,1
    # Line 113
    addiu	$v0,$v0,12
    sw	$v0,0($s5)
    # Line 114
    move	$t0,$a7
.L0f114640:
    # Line 110
    move	$a4,$a6
.L0f114644:
    b	.L0f1145a0
    # Line 106
    move	$a0,$a5
.L0f11464c:
    # Line 118
    bne	$a2,$at,.L0f114660
    la	$v1,gl_n_slopnop3
    # Line 122
    addiu	$v0,$v0,4
    b	.L0f1145a4
    sw	$v0,0($s5)
.L0f114660:
    bne	$a2,$v1,.L0f114674
    # Line 126
    la	$a1,gl_n_retsym
    addiu	$v0,$v0,8
    b	.L0f1145a4
    sw	$v0,0($s5)
.L0f114674:
    # Line 136
    li	$s7,4
    # Line 126
    beq	$a2,$a1,.L0f114788
    # Line 132
    la	$a3,gl_n_nonprim
    bne	$a2,$a3,.L0f1146b4
    # Line 138
    la	$t9,gl_getcmdlength
    bne	$s0,$s7,.L0f1146d0
.L0f11468c:
    la	$v1,gl_n_gl_ecallfunc
    move	$at,$s1
    ld	$s1,88($sp)
    beq	$at,$v1,.L0f11476c
    ld	$s7,104($sp)
.L0f1146a0:
    # Line 143
    li	$v0,1
    ld	$s0,80($sp)
    ld	$s5,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f1146b4:
    # Line 138
    lw	$a1,4($v0)
    sd	$ra,112($sp)
    jalr	$t9
    lw	$a0,0($v0)
    move	$s7,$v0
    beq	$s0,$v0,.L0f11468c
    ld	$ra,112($sp)
.L0f1146d0:
    ld	$s1,88($sp)
    # Line 147
    la	$t9,gl_getcmdname
    lw	$a0,0($s5)
    sd	$ra,112($sp)
    jalr	$t9
    lw	$a0,0($a0)
    move	$a3,$v0
    move	$a4,$s7
    move	$a2,$s0
    addiu	$a0,$sp,0
    la	$a1,sub_0f030000
    la	$t9,sprintf
    ld	$s5,96($sp)
    addiu	$a1,$a1,-22312
    jalr	$t9
    addiu	$a1,$a1,88
    # Line 149
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,59
    jalr	$t9
    ld	$s7,104($sp)
    # Line 150
    ld	$ra,112($sp)
    move	$v0,$zero
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f11473c:
    # Line 89
    li	$a1,5
    li	$a0,108
    la	$a2,sub_0f030000
    la	$t9,gl_ErrorHandler
    sd	$ra,112($sp)
    addiu	$a2,$a2,-22312
    jalr	$t9
    addiu	$a2,$a2,16
    sd	$s5,96($sp)
    sd	$s7,104($sp)
    b	.L0f11456c
    ld	$ra,112($sp)
.L0f11476c:
    # Line 142
    la	$t9,gl_intrp_freefunc
    lw	$a0,0($s5)
    sd	$ra,112($sp)
    jalr	$t9
    ld	$s1,88($sp)
    b	.L0f1146a0
    ld	$ra,112($sp)
.L0f114788:
    # Line 130
    li	$a1,2
    li	$a0,59
    ld	$s1,88($sp)
    ld	$s5,96($sp)
    ld	$s7,104($sp)
    la	$a2,sub_0f030000
    la	$t9,gl_ErrorHandler
    sd	$ra,112($sp)
    addiu	$a2,$a2,-22312
    jalr	$t9
    addiu	$a2,$a2,32
    # Line 132
    ld	$ra,112($sp)
    move	$v0,$zero
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_replacespace

# Function: gl_insertspace
# Declared: Line 157 (Source lines: 158-166)
# Address: 0x0f1147c8 - 0x0f114858 (Size: 144 bytes, Frame: 32)
.ent gl_insertspace
gl_insertspace:
    # Line 159
    la	$t9,gl_makeroom
    # Line 158
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 159
    jalr	$t9
    sd	$a0,0($sp)
    beqz	$v0,.L0f114848
    ld	$ra,8($sp)
    # Line 160
    la	$a4,gl_openobjhdr
    # Line 161
    lw	$at,0($a4)
    ld	$a3,0($sp)
    lw	$a5,8($at)
    addu	$a5,$a5,$a3
    sw	$a5,8($at)
    # Line 160
    la	$a5,gl_currentpos
    # Line 161
    lw	$a4,0($a4)
    lw	$a0,0($a5)
    lw	$a2,20($a4)
    bne	$a2,$a0,.L0f114820
    addu	$a3,$a3,$a3
    # Line 163
    addu	$at,$a2,$a3
    sw	$at,20($a4)
    lw	$a0,0($a5)
.L0f114820:
    # Line 164
    lw	$a1,4($a0)
    addu	$a2,$a3,$a0
    sw	$a1,4($a2)
    # Line 165
    lw	$a0,0($a5)
    # Line 166
    li	$v0,1
    # Line 165
    lw	$v1,0($a0)
    # Line 166
    addiu	$sp,$sp,32
    # Line 165
    addu	$a0,$a3,$a0
    # Line 166
    jr	$ra
    # Line 165
    sw	$v1,0($a0)
.L0f114848:
    ld	$ra,8($sp)
    # Line 160
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end gl_insertspace

