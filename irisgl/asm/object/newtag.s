# Source: ../object/newtag.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/newtag.c -o newtag.T
# Total Functions: 1

.text

# Function: gl_g_newtag
# Declared: Line 25 (Source lines: 28-100)
# Address: 0x0f0f2d20 - 0x0f0f31d8 (Size: 1208 bytes, Frame: 144)
.globl gl_g_newtag
.ent gl_g_newtag
gl_g_newtag:
    # Line 28
    move	$a5,$zero
    addiu	$sp,$sp,-144
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,1320 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$a6,gl_openobjhdr
    sd	$s1,16($sp)
    move	$s1,$a2
    lw	$at,0($a6)
    sd	$s2,32($sp)
    move	$s2,$a0
    beqz	$at,.L0f0f3114
    move	$v0,$a1
    sd	$ra,64($sp)
    sd	$v0,88($sp)
    # Line 36
    bltz	$s2,.L0f0f3144
    sd	$a5,96($sp)
    # Line 42
    la	$t9,__GListag
    jalr	$t9
    move	$a0,$s2
    ld	$a1,88($sp)
    beqz	$v0,.L0f0f2dac
    ld	$a0,96($sp)
    # Line 43
    la	$t9,gl_ErrorHandler
    lw	$a2,-14656($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,36
    ld	$gp,24($sp)
    # Line 44
    ld	$ra,64($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f2dac:
    li	$v1,-2
    bne	$a1,$v1,.L0f0f2dd0
    # Line 48
    la	$t9,gl_findhash
    sd	$s0,72($sp)
    la	$s0,gl_openobjhdr
    # Line 47
    lw	$s0,0($s0)
    lw	$s0,0($s0)
    b	.L0f0f2de8
    addiu	$s0,$s0,-8
.L0f0f2dd0:
    la	$a0,gl_openobj
    sd	$s0,72($sp)
    # Line 48
    jalr	$t9
    lw	$a0,0($a0)
    move	$s0,$v0
    sltiu	$a0,$v0,1
.L0f0f2de8:
    sd	$s3,56($sp)
    # Line 50
    la	$a1,gl_n_slopnop2
    la	$a6,gl_n_retsym
    # Line 48
    bnez	$a0,.L0f0f2fc4
    sd	$s4,48($sp)
    # Line 50
    addiu	$s0,$s0,8
    beqz	$s1,.L0f0f2e94
    sd	$s3,56($sp)
    la	$a5,gl_n_jump
    la	$a2,gl_n_slopnop3
    sd	$s4,48($sp)
    b	.L0f0f2e30
    la	$s3,gl_n_tag
.L0f0f2e1c:
    # Line 53
    bne	$s4,$a1,.L0f0f2e44
    nop
    # Line 55
    addiu	$s0,$s0,4
.L0f0f2e28:
    # Line 65
    beqz	$s1,.L0f0f2ea0
    # Line 68
    la	$t9,gl_addchunk
.L0f0f2e30:
    # Line 52
    lw	$a0,0($s0)
    bne	$a0,$s3,.L0f0f2e1c
    move	$s4,$a0
    # Line 53
    b	.L0f0f2e28
    addiu	$s0,$s0,8
.L0f0f2e44:
    # Line 55
    bne	$s4,$a2,.L0f0f2e54
    nop
    # Line 57
    b	.L0f0f2e28
    addiu	$s0,$s0,6
.L0f0f2e54:
    bne	$s4,$a5,.L0f0f2e64
    nop
    # Line 59
    b	.L0f0f2e28
    lw	$s0,4($s0)
.L0f0f2e64:
    beq	$s4,$a6,.L0f0f3194
    # Line 64
    addiu	$s1,$s1,-1
    # Line 65
    la	$t9,gl_getcmdlength
    jalr	$t9
    lw	$a1,4($s0)
    la	$a1,gl_n_slopnop2
    la	$a2,gl_n_slopnop3
    la	$a5,gl_n_jump
    la	$a6,gl_n_retsym
    addu	$a3,$v0,$v0
    b	.L0f0f2e28
    addu	$s0,$a3,$s0
.L0f0f2e94:
    sd	$s4,48($sp)
    la	$s3,gl_n_tag
    # Line 68
    la	$t9,gl_addchunk
.L0f0f2ea0:
    bal gl_addchunk
    lw	$a0,-14656($gp)
    beqz	$v0,.L0f0f2fc4
    move	$s4,$v0
    # Line 74
    move	$a0,$s2
    # Line 71
    move	$a6,$s4
    sd	$s4,8($sp)
    sd	$s0,0($sp)
    # Line 70
    move	$a5,$s0
    # Line 73
    la	$a4,gl_objchunksize
    # Line 72
    la	$a5,gl_currentpos
    # Line 74
    la	$t9,__GLmaketag
    # Line 73
    lw	$a4,0($a4)
    # Line 72
    sw	$s4,0($a5)
    # Line 70
    la	$a5,gl_currentend
    # Line 73
    sra	$a4,$a4,0x1
    addu	$a4,$a4,$a4
    addu	$a4,$a4,$s4
    # Line 74
    jalr	$t9
    # Line 73
    sw	$a4,0($a5)
    # Line 75
    addiu	$s1,$s4,8
    # Line 76
    la	$t9,gl_getcmdlength
    sd	$s5,80($sp)
    lw	$a1,4($s0)
    jalr	$t9
    lw	$a0,0($s0)
    move	$s4,$v0
    slti	$at,$v0,4
    beqz	$at,.L0f0f2ff8
    move	$s5,$v0
    sd	$s6,40($sp)
    # Line 78
    beqz	$s4,.L0f0f31cc
    addiu	$s5,$s4,-1
    li	$s6,-1
    move	$v0,$s4
    andi	$a0,$s4,0x3
    beqz	$a0,.L0f0f2f54
    ld	$s4,48($sp)
.L0f0f2f38:
    addiu	$s5,$s5,-1
    # Line 79
    addiu	$s1,$s1,2
    addiu	$s0,$s0,2
    lh	$v1,-2($s0)
    addi	$a0,$a0,-1
    bnez	$a0,.L0f0f2f38
    sh	$v1,-2($s1)
.L0f0f2f54:
    move	$a1,$s5
    move	$a0,$s1
    sra	$a3,$v0,0x2
    beqz	$a3,.L0f0f2fac
    move	$a2,$s0
    move	$a6,$a1
    move	$a5,$a0
    move	$v0,$a2
.L0f0f2f74:
    lh	$a3,0($v0)
    sh	$a3,0($a5)
    lh	$v1,2($v0)
    sh	$v1,2($a5)
    lh	$at,4($v0)
    addiu	$a5,$a5,8
    sh	$at,-4($a5)
    addiu	$v0,$v0,8
    lh	$a4,-2($v0)
    # Line 78
    addiu	$a6,$a6,-4
    bne	$a6,$s6,.L0f0f2f74
    # Line 79
    sh	$a4,-2($a5)
    move	$s0,$v0
    move	$s1,$a5
.L0f0f2fac:
    # Line 80
    la	$t9,gl_getcmdlength
    lw	$a1,4($s0)
    jalr	$t9
    lw	$a0,0($s0)
    b	.L0f0f3004
    move	$s5,$v0
.L0f0f2fc4:
    ld	$s0,72($sp)
    ld	$s4,48($sp)
    # Line 99
    la	$t9,__GLeditobj
    la	$a0,gl_openobj
    ld	$s3,56($sp)
    jalr	$t9
    lw	$a0,0($a0)
    ld	$gp,24($sp)
    # Line 100
    ld	$ra,64($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f2ff8:
    sd	$s6,40($sp)
    # Line 80
    li	$s6,-1
    ld	$s4,48($sp)
.L0f0f3004:
    lw	$a0,0($s0)
    beq	$a0,$s3,.L0f0f3170
    # Line 90
    addiu	$s5,$s5,-1
    la	$a3,gl_n_retsym
    # Line 84
    bne	$a0,$a3,.L0f0f3038
    ld	$s3,56($sp)
    la	$at,gl_openobjhdr
    # Line 86
    lw	$v1,0($at)
    la	$a4,gl_currentend
    sw	$s1,20($v1)
    # Line 87
    lw	$at,0($at)
    lw	$a4,0($a4)
    sw	$a4,24($at)
.L0f0f3038:
    # Line 90
    beq	$s5,$s6,.L0f0f30c8
    addiu	$a0,$s5,1
    andi	$v0,$a0,0x3
    beqz	$v0,.L0f0f306c
    sra	$a4,$a0,0x2
.L0f0f304c:
    addiu	$s5,$s5,-1
    # Line 91
    addiu	$s1,$s1,2
    addiu	$s0,$s0,2
    lh	$a3,-2($s0)
    addi	$v0,$v0,-1
    bnez	$v0,.L0f0f304c
    sh	$a3,-2($s1)
    sra	$a4,$a0,0x2
.L0f0f306c:
    move	$a5,$s1
    move	$a2,$s0
    move	$a6,$s5
    beqz	$a4,.L0f0f30c8
    ld	$s5,80($sp)
    move	$a1,$a6
    move	$v0,$a5
    move	$a0,$a2
    ld	$s5,80($sp)
.L0f0f3090:
    lh	$a4,0($a0)
    sh	$a4,0($v0)
    lh	$a3,2($a0)
    sh	$a3,2($v0)
    lh	$v1,4($a0)
    addiu	$v0,$v0,8
    sh	$v1,-4($v0)
    addiu	$a0,$a0,8
    lh	$at,-2($a0)
    # Line 90
    addiu	$a1,$a1,-4
    bne	$a1,$s6,.L0f0f3090
    # Line 91
    sh	$at,-2($v0)
    move	$s0,$a0
    move	$s1,$v0
.L0f0f30c8:
    # Line 96
    move	$a0,$s2
    ld	$s6,40($sp)
    ld	$s5,80($sp)
    # Line 92
    ld	$a7,0($sp)
    # Line 93
    ld	$a6,8($sp)
    la	$a5,gl_n_jump
    # Line 96
    la	$t9,__GLobjinsert
    # Line 93
    sw	$a6,4($a7)
    # Line 92
    sw	$a5,0($a7)
    # Line 95
    sw	$s0,4($s1)
    # Line 96
    jalr	$t9
    # Line 94
    sw	$a5,0($s1)
    ld	$gp,24($sp)
    # Line 97
    ld	$s0,72($sp)
    ld	$ra,64($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f3114:
    # Line 35
    lw	$a2,-14656($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,64($sp)
    jalr	$t9
    li	$a0,5
    ld	$gp,24($sp)
    # Line 36
    ld	$ra,64($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f3144:
    # Line 39
    la	$t9,gl_ErrorHandler
    lw	$a2,-14656($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,35
    ld	$gp,24($sp)
    # Line 40
    ld	$ra,64($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f3170:
    # Line 84
    move	$a0,$s1
    lw	$a2,4($s0)
    la	$t9,gl_replacehash
    la	$a1,gl_openobj
    ld	$s3,56($sp)
    jalr	$t9
    lw	$a1,0($a1)
    b	.L0f0f3038
    nop
.L0f0f3194:
    # Line 61
    la	$t9,gl_ErrorHandler
    lw	$a2,-14656($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,37
    ld	$gp,24($sp)
    # Line 62
    ld	$s0,72($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$ra,64($sp)
    ld	$s3,56($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f31cc:
    # Line 78
    li	$s6,-1
    b	.L0f0f2fac
    ld	$s4,48($sp)
.end gl_g_newtag

