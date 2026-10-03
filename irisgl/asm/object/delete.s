# Source: ../object/delete.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/delete.c -o delete.T
# Total Functions: 1

.text

# Function: gl_g_objdelete
# Declared: Line 22 (Source lines: 24-162)
# Address: 0x0f0a2d94 - 0x0f0a3080 (Size: 748 bytes, Frame: 208)
.globl gl_g_objdelete
.ent gl_g_objdelete
gl_g_objdelete:
    # Line 24
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    sd	$s1,0($sp)
    lui	$s1,0xfff9
    addiu	$s1,$s1,1204
    addu	$gp,$t9,$s1
    la	$a4,gl_openobjhdr
    lw	$a4,0($a4)
    move	$v0,$a0
    beqz	$a4,.L0f0a3028
    move	$s1,$a1
    # Line 36
    li	$at,-2
    bnel	$v0,$at,.L0f0a2dec
    sd	$s3,24($sp)
    sd	$s2,32($sp)
    sd	$s4,48($sp)
    sd	$s5,56($sp)
    sd	$s3,24($sp)
    # Line 44
    lw	$s3,0($a4)
    sd	$s0,40($sp)
    b	.L0f0a2e10
    addiu	$s3,$s3,-8
.L0f0a2dec:
    # Line 47
    move	$a1,$v0
    la	$t9,gl_findhash
    la	$a0,gl_openobj
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a0,0($a0)
    move	$s3,$v0
    beqz	$v0,.L0f0a3054
    ld	$ra,16($sp)
.L0f0a2e10:
    sd	$ra,16($sp)
    # Line 59
    la	$a1,gl_n_tag
    sd	$s4,48($sp)
    la	$s4,gl_n_jump
    sd	$s2,32($sp)
    la	$s2,gl_n_retsym
    sd	$s0,40($sp)
    sd	$s5,56($sp)
    addiu	$s5,$s3,8
    b	.L0f0a2e58
    move	$s0,$s5
.L0f0a2e3c:
    # Line 136
    beq	$v0,$a2,.L0f0a3000
.L0f0a2e40:
    # Line 150
    la	$t9,gl_getcmdlength
    jalr	$t9
    lw	$a1,4($s0)
    la	$a1,gl_n_tag
    addu	$a3,$v0,$v0
    addu	$s0,$a3,$s0
.L0f0a2e58:
    # Line 65
    lw	$a0,0($s0)
    beq	$a0,$s2,.L0f0a2ec8
    move	$v0,$a0
    # Line 99
    bne	$v0,$s4,.L0f0a2e74
    nop
    # Line 105
    b	.L0f0a2e58
    lw	$s0,4($s0)
.L0f0a2e74:
    bne	$v0,$a1,.L0f0a2e3c
    la	$a2,gl_n_gl_ecallfunc
    lw	$a0,4($s0)
    bne	$s1,$a0,.L0f0a2ff0
    # Line 136
    la	$t9,__GLdeltag
    ld	$ra,16($sp)
    ld	$s2,32($sp)
    move	$at,$s5
    # Line 118
    beq	$at,$s0,.L0f0a2fac
    ld	$s5,56($sp)
    ld	$ra,16($sp)
    ld	$s2,32($sp)
    addiu	$v1,$s3,12
    beq	$v1,$s0,.L0f0a301c
    ld	$s5,56($sp)
    # Line 122
    addiu	$a2,$s3,16
    bnel	$a2,$s0,.L0f0a3014
    # Line 129
    sw	$s0,12($s3)
    # Line 125
    la	$a3,gl_n_slopnop3
    # Line 126
    b	.L0f0a2fac
    # Line 125
    sw	$a3,8($s3)
.L0f0a2ec8:
    ld	$s0,40($sp)
    # Line 65
    li	$at,-3
    beq	$s1,$at,.L0f0a2ef4
    ld	$s4,48($sp)
    # Line 70
    lw	$a2,-15208($gp)
    li	$a1,2
    la	$t9,gl_ErrorHandler
    li	$a0,32
    ld	$s0,40($sp)
    jalr	$t9
    ld	$s4,48($sp)
.L0f0a2ef4:
    la	$a4,gl_openobjhdr
    # Line 76
    sw	$s2,8($s3)
    # Line 81
    lw	$ra,0($a4)
    sw	$s5,20($ra)
    # Line 86
    lw	$a4,0($a4)
    ld	$s3,24($sp)
    lw	$v0,4($a4)
    la	$a5,gl_objchunksize
    ld	$s2,32($sp)
    beqz	$v0,.L0f0a2f88
    ld	$ra,16($sp)
    la	$a5,gl_objchunksize
    lw	$a1,0($a5)
    ld	$s2,32($sp)
    sra	$a1,$a1,0x1
    addu	$a1,$a1,$a1
    lw	$a0,4($v0)
.L0f0a2f38:
    sltu	$a2,$s5,$a0
    bnez	$a2,.L0f0a2f50
    addu	$a3,$a0,$a1
    sltu	$a3,$s5,$a3
    bnez	$a3,.L0f0a2f54
    # Line 87
    li	$a0,1
.L0f0a2f50:
    move	$a0,$zero
.L0f0a2f54:
    bnez	$a0,.L0f0a2f8c
    nop
    # Line 86
    lw	$v0,0($v0)
    bnezl	$v0,.L0f0a2f38
    lw	$a0,4($v0)
.L0f0a2f68:
    # Line 95
    la	$t9,gl_ErrorHandler
    lw	$a2,-15208($gp)
    li	$a1,5
    jalr	$t9
    li	$a0,108
    ld	$ra,16($sp)
    b	.L0f0a2fac
    ld	$s5,56($sp)
.L0f0a2f88:
    ld	$s3,24($sp)
.L0f0a2f8c:
    # Line 91
    beqz	$v0,.L0f0a2f68
    # Line 92
    lw	$at,0($a5)
    lw	$s5,4($v0)
    sra	$at,$at,0x1
    addu	$at,$at,$at
    addu	$s5,$s5,$at
    sw	$s5,24($a4)
    ld	$s5,56($sp)
.L0f0a2fac:
    # Line 162
    ld	$s0,40($sp)
    la	$v0,gl_openobjhdr
    # Line 159
    la	$a3,gl_replacemode
    # Line 162
    ld	$s1,0($sp)
    # Line 160
    lw	$v0,0($v0)
    # Line 159
    sw	$zero,0($a3)
    # Line 160
    la	$a2,gl_currentpos
    lw	$v1,20($v0)
    # Line 162
    ld	$s3,24($sp)
    ld	$s4,48($sp)
    # Line 160
    sw	$v1,0($a2)
    # Line 161
    la	$v1,gl_currentend
    ld	$gp,8($sp)
    lw	$v0,24($v0)
    # Line 162
    addiu	$sp,$sp,80
    jr	$ra
    # Line 161
    sw	$v0,0($v1)
.L0f0a2ff0:
    # Line 136
    jalr	$t9
    # Line 137
    addiu	$s0,$s0,8
    # Line 136
    b	.L0f0a2e58
    la	$a1,gl_n_tag
.L0f0a3000:
    # Line 145
    la	$t9,gl_intrp_freefunc
    jalr	$t9
    move	$a0,$s0
    b	.L0f0a2e40
    lw	$a0,0($s0)
.L0f0a3014:
    # Line 130
    b	.L0f0a2fac
    # Line 128
    sw	$s4,8($s3)
.L0f0a301c:
    # Line 121
    la	$v1,gl_n_slopnop2
    # Line 122
    b	.L0f0a2fac
    # Line 121
    sw	$v1,8($s3)
.L0f0a3028:
    # Line 35
    lw	$a2,-15208($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,5
    # Line 36
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0a3054:
    # Line 48
    lw	$a2,-15208($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,32
    jalr	$t9
    ld	$s3,24($sp)
    # Line 49
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_objdelete

