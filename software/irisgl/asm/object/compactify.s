# Source: ../object/compactify.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/compactify.c -o compactify.T
# Total Functions: 1

.text

# Function: gl_g_compactify
# Declared: Line 21 (Source lines: 23-186)
# Address: 0x0f0a0a18 - 0x0f0a0eac (Size: 1172 bytes, Frame: 144)
.globl gl_g_compactify
.ent gl_g_compactify
gl_g_compactify:
    # Line 23
    addiu	$sp,$sp,-144
    sd	$gp,80($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,10288 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 37
    la	$t9,__GLisobj
    sd	$ra,72($sp)
    jalr	$t9
    sd	$a0,16($sp)
    beqz	$v0,.L0f0a0cd4
    # Line 41
    la	$t9,gl_findhash
    ld	$a0,16($sp)
    jalr	$t9
    li	$a1,-1
    la	$a4,gl_openobjhdr
    move	$v1,$v0
    sd	$v0,64($sp)
    lw	$v0,0($a4)
    beq	$v0,$v1,.L0f0a0ce4
    # Line 48
    la	$t9,gl_SetImmediateMode
.L0f0a0a68:
    sd	$s2,24($sp)
    # Line 55
    la	$t9,gl_malloc
    # Line 50
    la	$a0,gl_objchunksize
    # Line 55
    lw	$a1,-15264($gp)
    jalr	$t9
    lw	$a0,0($a0)
    move	$a2,$v0
    sd	$v0,40($sp)
    bnez	$v0,.L0f0a0aa4
    move	$s2,$v0
    # Line 56
    ld	$ra,72($sp)
    ld	$gp,80($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a0aa4:
    # Line 62
    la	$t9,gl_malloc
    sd	$s4,88($sp)
    lw	$a1,-15264($gp)
    jalr	$t9
    li	$a0,8
    move	$s4,$v0
    move	$a3,$v0
    beqz	$v0,.L0f0a0dcc
    sd	$v0,8($sp)
    # Line 71
    la	$a7,gl_n_slopnop3
    la	$a4,gl_n_slopnop2
    sd	$s3,112($sp)
    la	$s3,gl_n_jump
    sd	$s1,104($sp)
    la	$s1,gl_n_retsym
    li	$a6,-1
    sd	$s0,96($sp)
    # Line 67
    sw	$s2,4($s4)
    la	$at,gl_objchunksize
    # Line 66
    sw	$zero,0($s4)
    # Line 68
    ld	$s0,64($sp)
    # Line 69
    lw	$at,0($at)
    sd	$zero,48($sp)
    # Line 68
    lw	$s0,0($s0)
    # Line 69
    sra	$at,$at,0x1
    sd	$at,32($sp)
    # Line 71
    addiu	$at,$at,-4
    b	.L0f0a0b24
    sd	$at,56($sp)
.L0f0a0b18:
    # Line 117
    bne	$s4,$a7,.L0f0a0bf8
    # Line 125
    la	$t9,gl_getcmdlength
    # Line 119
    addiu	$s0,$s0,8
.L0f0a0b24:
    # Line 82
    lw	$a0,0($s0)
.L0f0a0b28:
    beq	$a0,$s1,.L0f0a0b50
    move	$s4,$a0
    # Line 106
    bne	$s4,$s3,.L0f0a0b40
    nop
    # Line 112
    b	.L0f0a0b24
    lw	$s0,4($s0)
.L0f0a0b40:
    bne	$s4,$a4,.L0f0a0b18
    nop
    # Line 117
    b	.L0f0a0b24
    addiu	$s0,$s0,4
.L0f0a0b50:
    # Line 86
    sw	$s1,0($s2)
    ld	$s1,104($sp)
    ld	$s4,88($sp)
    # Line 92
    ld	$a2,64($sp)
    ld	$s3,112($sp)
    # Line 88
    ld	$a3,48($sp)
    # Line 92
    lw	$s0,4($a2)
    # Line 87
    ld	$v1,32($sp)
    # Line 88
    sw	$a3,8($a2)
    # Line 92
    beqz	$s0,.L0f0a0bb4
    # Line 87
    sw	$v1,12($a2)
    ld	$s1,104($sp)
    ld	$s4,88($sp)
    ld	$s3,112($sp)
    # Line 94
    la	$t9,gl_free
.L0f0a0b8c:
    lw	$a1,-15264($gp)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 97
    la	$t9,gl_free
    lw	$a1,-15264($gp)
    # Line 95
    move	$a0,$s0
    # Line 97
    jalr	$t9
    # Line 96
    lw	$s0,0($s0)
    # Line 97
    bnez	$s0,.L0f0a0b8c
    # Line 94
    la	$t9,gl_free
.L0f0a0bb4:
    ld	$gp,80($sp)
    ld	$ra,64($sp)
    # Line 102
    ld	$at,8($sp)
    # Line 103
    ld	$v0,40($sp)
    # Line 104
    sw	$s2,20($ra)
    # Line 105
    ld	$s0,56($sp)
    # Line 103
    sw	$v0,0($ra)
    # Line 102
    sw	$at,4($ra)
    # Line 105
    addu	$s0,$s0,$s0
    addu	$s0,$s0,$s2
    addiu	$s0,$s0,8
    sw	$s0,24($ra)
    # Line 106
    ld	$ra,72($sp)
    ld	$s2,24($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a0bf8:
    # Line 125
    jalr	$t9
    lw	$a1,4($s0)
    la	$a4,gl_n_slopnop2
    ld	$v1,56($sp)
    li	$a6,-1
    la	$a7,gl_n_slopnop3
    slt	$v1,$v1,$v0
    bnez	$v1,.L0f0a0d00
    move	$a5,$v0
.L0f0a0c1c:
    la	$a3,gl_n_tag
    # Line 171
    lw	$a2,0($s0)
    beq	$a2,$a3,.L0f0a0da0
.L0f0a0c28:
    ld	$v1,56($sp)
    # Line 183
    ld	$at,48($sp)
    # Line 184
    subu	$v1,$v1,$a5
    # Line 183
    addu	$at,$at,$a5
    # Line 185
    addiu	$a5,$a5,-1
    sd	$v1,56($sp)
    beq	$a5,$a6,.L0f0a0b24
    sd	$at,48($sp)
    addiu	$t0,$a5,1
    andi	$a1,$t0,0x3
    beqz	$a1,.L0f0a0c78
    move	$t1,$s0
.L0f0a0c58:
    addiu	$a5,$a5,-1
    # Line 186
    addiu	$s2,$s2,2
    addiu	$s0,$s0,2
    lh	$a2,-2($s0)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f0a0c58
    sh	$a2,-2($s2)
    move	$t1,$s0
.L0f0a0c78:
    move	$t3,$a5
    move	$t2,$s2
    sra	$a3,$t0,0x2
    beqz	$a3,.L0f0a0ccc
    move	$a5,$t2
    move	$t0,$t3
    move	$a1,$t1
.L0f0a0c94:
    lh	$a3,0($a1)
    sh	$a3,0($a5)
    lh	$a2,2($a1)
    sh	$a2,2($a5)
    lh	$v1,4($a1)
    addiu	$a5,$a5,8
    sh	$v1,-4($a5)
    addiu	$a1,$a1,8
    lh	$at,-2($a1)
    # Line 185
    addiu	$t0,$t0,-4
    bne	$t0,$a6,.L0f0a0c94
    # Line 186
    sh	$at,-2($a5)
    move	$s0,$a1
    move	$s2,$a5
.L0f0a0ccc:
    b	.L0f0a0b28
    # Line 82
    lw	$a0,0($s0)
.L0f0a0cd4:
    # Line 37
    ld	$ra,72($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a0ce4:
    # Line 48
    li	$a0,1
    jalr	$t9
    # Line 46
    sw	$zero,0($a4)
    # Line 50
    la	$v1,gl_openobj
    li	$at,-1
    b	.L0f0a0a68
    sw	$at,0($v1)
.L0f0a0d00:
    sd	$a5,120($sp)
    # Line 133
    lw	$a1,-15264($gp)
    la	$t9,gl_malloc
    la	$a0,gl_objchunksize
    # Line 132
    sw	$s3,0($s2)
    # Line 133
    jalr	$t9
    lw	$a0,0($a0)
    bnez	$v0,.L0f0a0d30
    move	$a1,$v0
    ld	$a2,8($sp)
    bnez	$a2,.L0f0a0e64
    sd	$a1,0($sp)
.L0f0a0d30:
    # Line 147
    la	$t9,gl_malloc
    sd	$a1,0($sp)
    lw	$a1,-15264($gp)
    jalr	$t9
    li	$a0,8
    la	$a4,gl_n_slopnop2
    li	$a6,-1
    la	$a7,gl_n_slopnop3
    move	$s4,$v0
    beqz	$v0,.L0f0a0df4
    ld	$a5,120($sp)
.L0f0a0d5c:
    # Line 165
    ld	$at,8($sp)
    ld	$a3,0($sp)
    la	$v1,gl_objchunksize
    sw	$at,0($s4)
    # Line 164
    sw	$a3,4($s4)
    # Line 168
    sw	$a3,4($s2)
    # Line 166
    move	$at,$s4
    # Line 169
    lw	$s2,0($v1)
    # Line 170
    ld	$at,32($sp)
    sd	$s4,8($sp)
    # Line 169
    sra	$s2,$s2,0x1
    # Line 170
    addu	$at,$s2,$at
    # Line 169
    addiu	$s2,$s2,-4
    sd	$at,32($sp)
    sd	$s2,56($sp)
    b	.L0f0a0c1c
    # Line 171
    move	$s2,$a3
.L0f0a0da0:
    sd	$a5,120($sp)
    # Line 178
    la	$t9,gl_replacehash
    move	$a0,$s2
    ld	$a1,16($sp)
    jalr	$t9
    lw	$a2,4($s0)
    la	$a4,gl_n_slopnop2
    li	$a6,-1
    la	$a7,gl_n_slopnop3
    b	.L0f0a0c28
    ld	$a5,120($sp)
.L0f0a0dcc:
    # Line 63
    la	$t9,gl_free
    ld	$a0,40($sp)
    lw	$a1,-15264($gp)
    jalr	$t9
    ld	$s4,88($sp)
    # Line 64
    ld	$ra,72($sp)
    ld	$gp,80($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a0df4:
    # Line 152
    la	$t9,gl_free
    ld	$a0,0($sp)
    jalr	$t9
    lw	$a1,-15264($gp)
    la	$a4,gl_n_slopnop2
    ld	$a2,8($sp)
    li	$a6,-1
    la	$a7,gl_n_slopnop3
    beqz	$a2,.L0f0a0d5c
    ld	$a5,120($sp)
    # Line 154
    la	$t9,gl_free
    ld	$a0,8($sp)
    lw	$a1,-15264($gp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$a0,8($sp)
    # Line 157
    lw	$a1,-15264($gp)
    ld	$s4,88($sp)
    la	$t9,gl_free
    ld	$s0,96($sp)
    ld	$s1,104($sp)
    jalr	$t9
    ld	$s3,112($sp)
    # Line 158
    ld	$ra,72($sp)
    ld	$gp,80($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a0e64:
    # Line 140
    la	$t9,gl_free
    ld	$a0,8($sp)
    lw	$a1,-15264($gp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$a0,8($sp)
    # Line 143
    lw	$a1,-15264($gp)
    ld	$s0,96($sp)
    la	$t9,gl_free
    ld	$s3,112($sp)
    ld	$s4,88($sp)
    jalr	$t9
    ld	$s1,104($sp)
    # Line 144
    ld	$ra,72($sp)
    ld	$gp,80($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_g_compactify

