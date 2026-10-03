# Source: ../igloo/fog.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/fog.c -o fog.T
# Total Functions: 4

.text

# Function: gl_fogvertex
# Declared: Line 27 (Source lines: 28-112)
# Address: 0x0f0be99c - 0x0f0bec7c (Size: 736 bytes, Frame: 48)
.globl gl_fogvertex
.ent gl_fogvertex
gl_fogvertex:
    # Line 28
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 29
    lw	$at,4100($zero)
    # Line 28
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,18604 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 29
    lw	$at,20($at)
    la	$a3,gl_wstatep
    sd	$s0,8($sp)
    lw	$at,16($at)
    lw	$a3,0($a3)
    # Line 36
    lwc1	$f0,_lit_3f800000
    # Line 29
    beqz	$at,.L0f0bec24
    move	$s0,$a3
    # Line 36
    swc1	$f0,3100($a3)
    # la	at,sub_0f020000
    sll	$a4,$a0,0x2
    sltiu	$v0,$a0,8
    la	$at,jtbl_0f022e48
    beqz	$v0,.L0f0bea00
    addu	$a4,$a4,$at
    lw	$v0,0($a4)
    # Line 48
    li	$a2,9729
    # Line 36
    jr	$v0
    # Line 47
    li	$v1,1
.L0f0bea00:
    ld	$gp,0($sp)
    # Line 112
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bea10:
    # Line 48
    lw	$a0,3084($s0)
    beq	$a0,$a2,.L0f0bec34
    # Line 47
    sw	$v1,3080($s0)
    # Line 48
    li	$at,2048
    beq	$a0,$at,.L0f0bec60
    li	$v0,2049
    beq	$a0,$v0,.L0f0bec60
    sd	$ra,16($sp)
    # Line 61
    la	$t9,glFogfv
.L0f0bea34:
    addiu	$a1,$s0,3088
    jalr	$t9
    li	$a0,2918
    # Line 62
    lw	$v1,3084($s0)
    la	$t9,glFogf
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f13
    li	$a0,2917
    jalr	$t9
    cvt.s.l	$f13,$f13
    # Line 63
    la	$t9,__iglooSetEnable
    li	$a1,1
    bal __iglooSetEnable
    li	$a0,2912
    # Line 64
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bea84:
    # Line 67
    move	$a1,$zero
    la	$t9,__iglooSetEnable
    li	$a0,2912
    sd	$ra,16($sp)
    bal __iglooSetEnable
    # Line 66
    sw	$zero,3080($s0)
    # Line 68
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0beab0:
    # Line 71
    beqzl	$a1,.L0f0beaf0
    sd	$ra,16($sp)
    # Line 72
    lwc1	$f13,0($a1)
    ldc1	$f0,_lit8_4016000000000000
    cvt.d.s	$f13,$f13
    mul.d	$f13,$f13,$f0
    cvt.s.d	$f13,$f13
    swc1	$f13,3104($s0)
    # Line 73
    lwc1	$f2,4($a1)
    swc1	$f2,3088($s0)
    # Line 74
    lwc1	$f1,8($a1)
    swc1	$f1,3092($s0)
    # Line 75
    lwc1	$f0,12($a1)
    sd	$ra,16($sp)
    b	.L0f0beaf4
    swc1	$f0,3096($s0)
.L0f0beaf0:
    lwc1	$f13,3104($s0)
.L0f0beaf4:
    # Line 78
    la	$t9,glFogf
    jalr	$t9
    li	$a0,2914
    # Line 79
    la	$t9,glFogfv
    addiu	$a1,$s0,3088
    jalr	$t9
    li	$a0,2918
    ld	$gp,0($sp)
    # Line 80
    li	$a0,2048
    # Line 81
    ld	$ra,16($sp)
    # Line 80
    sw	$a0,3084($s0)
    # Line 81
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0beb2c:
    # Line 84
    beqz	$a1,.L0f0beb60
    # Line 85
    lwc1	$f0,_lit_401617e3
    lwc1	$f13,0($a1)
    mul.s	$f13,$f13,$f0
    swc1	$f13,3104($s0)
    # Line 86
    lwc1	$f2,4($a1)
    swc1	$f2,3088($s0)
    # Line 87
    lwc1	$f1,8($a1)
    swc1	$f1,3092($s0)
    # Line 88
    lwc1	$f0,12($a1)
    sd	$ra,16($sp)
    b	.L0f0beb68
    swc1	$f0,3096($s0)
.L0f0beb60:
    sd	$ra,16($sp)
    lwc1	$f13,3104($s0)
.L0f0beb68:
    # Line 91
    la	$t9,glFogf
    jalr	$t9
    li	$a0,2914
    # Line 92
    la	$t9,glFogfv
    addiu	$a1,$s0,3088
    jalr	$t9
    li	$a0,2918
    ld	$gp,0($sp)
    # Line 93
    li	$a2,2049
    # Line 94
    ld	$ra,16($sp)
    # Line 93
    sw	$a2,3084($s0)
    # Line 94
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0beba0:
    # Line 97
    beqzl	$a1,.L0f0bebd8
    sd	$ra,16($sp)
    # Line 98
    lwc1	$f13,0($a1)
    swc1	$f13,3108($s0)
    # Line 99
    lwc1	$f0,4($a1)
    swc1	$f0,3112($s0)
    # Line 100
    lwc1	$f3,8($a1)
    swc1	$f3,3088($s0)
    # Line 101
    lwc1	$f2,12($a1)
    swc1	$f2,3092($s0)
    # Line 102
    lwc1	$f1,16($a1)
    sd	$ra,16($sp)
    b	.L0f0bebdc
    swc1	$f1,3096($s0)
.L0f0bebd8:
    lwc1	$f13,3108($s0)
.L0f0bebdc:
    # Line 105
    la	$t9,glFogf
    jalr	$t9
    li	$a0,2915
    # Line 106
    la	$t9,glFogf
    lwc1	$f13,3112($s0)
    jalr	$t9
    li	$a0,2916
    # Line 107
    la	$t9,glFogfv
    addiu	$a1,$s0,3088
    jalr	$t9
    li	$a0,2918
    # Line 108
    li	$ra,9729
    sw	$ra,3084($s0)
    # Line 109
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bec24:
    ld	$gp,0($sp)
    # Line 34
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bec34:
    # Line 50
    la	$t9,glFogf
    lwc1	$f13,3108($s0)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,2915
    # Line 51
    la	$t9,glFogf
    lwc1	$f13,3112($s0)
    jalr	$t9
    li	$a0,2916
    b	.L0f0bea34
    # Line 61
    la	$t9,glFogfv
.L0f0bec60:
    # Line 55
    la	$t9,glFogf
    lwc1	$f13,3104($s0)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,2914
    b	.L0f0bea34
    # Line 61
    la	$t9,glFogfv
.end gl_fogvertex

# Function: gl_i_fogvertex
# Declared: Line 164 (Source lines: 164-164)
# Address: 0x0f0bec7c - 0x0f0becd4 (Size: 88 bytes, Frame: 48)
.globl gl_i_fogvertex
.ent gl_i_fogvertex
gl_i_fogvertex:
    # Line 164
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,17868 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0becb8
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
.L0f0becb8:
    la	$t9,gl_fogvertex
    bal gl_fogvertex
    nop
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_fogvertex

# Function: gl_c_fogvertex
# Declared: Line 164 (Source lines: 164-164)
# Address: 0x0f0becd4 - 0x0f0bee30 (Size: 348 bytes, Frame: 224)
.globl gl_c_fogvertex
.ent gl_c_fogvertex
gl_c_fogvertex:
    addiu	$sp,$sp,-224
    sd	$gp,176($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,17780 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20796($gp)
    sd	$s0,168($sp)
    beqz	$at,.L0f0bee04
    move	$s0,$a0
.L0f0becf8:
    li	$v1,2
    beq	$s0,$v1,.L0f0bed34
    li	$a2,4
    beq	$s0,$a2,.L0f0bed34
    li	$at,6
    beq	$s0,$at,.L0f0bed34
    li	$v0,7
    beq	$s0,$v0,.L0f0bed34
    li	$v1,3
    beq	$s0,$v1,.L0f0bedf8
    li	$a2,5
    beq	$s0,$a2,.L0f0bedf8
    move	$a7,$zero
    b	.L0f0bed3c
    addiu	$a3,$sp,12
.L0f0bed34:
    li	$a7,4
    addiu	$a3,$sp,12
.L0f0bed3c:
    move	$t0,$a7
    andi	$a6,$a7,0x3
    addu	$a0,$a7,$a7
    sw	$s0,4($sp)
    la	$s0,gl_n_fogvertex
    addiu	$a0,$a0,8
    sw	$a0,8($sp)
    sw	$s0,0($sp)
    blez	$a7,.L0f0bedd8
    ld	$s0,168($sp)
    move	$a5,$a1
    ld	$s0,168($sp)
    sll	$a4,$a7,0x2
    beqz	$a6,.L0f0bed90
    addu	$a4,$a4,$a1
.L0f0bed78:
    addiu	$a5,$a5,4
    addiu	$a3,$a3,4
    lwc1	$f0,-4($a5)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f0bed78
    swc1	$f0,-4($a3)
.L0f0bed90:
    sra	$at,$t0,0x2
    move	$a7,$a3
    beqz	$at,.L0f0bedd4
    move	$a6,$a5
    move	$a3,$a7
    move	$a1,$a6
.L0f0beda8:
    lwc1	$f0,0($a1)
    swc1	$f0,0($a3)
    lwc1	$f3,4($a1)
    swc1	$f3,4($a3)
    lwc1	$f2,8($a1)
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,12($a1)
    addiu	$a1,$a1,16
    bne	$a1,$a4,.L0f0beda8
    swc1	$f1,-4($a3)
.L0f0bedd4:
    sd	$ra,192($sp)
.L0f0bedd8:
    la	$t9,gl_compile
    sd	$ra,192($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,192($sp)
    ld	$gp,176($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f0bedf8:
    li	$a7,5
    b	.L0f0bed3c
    addiu	$a3,$sp,12
.L0f0bee04:
    sd	$a1,184($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$ra,192($sp)
    bal gl_intrptab_insert
    addiu	$a0,$a0,-31712
    ld	$ra,192($sp)
    li	$a1,1
    sw	$a1,-20796($gp)
    b	.L0f0becf8
    ld	$a1,184($sp)
.end gl_c_fogvertex

# Function: gl_n_fogvertex
# Declared: Line 164 (Source lines: 164-164)
# Address: 0x0f0bee30 - 0x0f0bee9c (Size: 108 bytes, Frame: 48)
.globl gl_n_fogvertex
.ent gl_n_fogvertex
gl_n_fogvertex:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,17432 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0bee68
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0bee68:
    la	$t9,gl_fogvertex
    addiu	$a1,$s8,8
    bal gl_fogvertex
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    lw	$v0,4($s8)
    addu	$v0,$v0,$v0
    addu	$v0,$v0,$s8
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,-4
.end gl_n_fogvertex

.late_rodata
jtbl_0f022e48:
    .word .L0f0bea84
    .word .L0f0bea10
    .word .L0f0beab0
    .word .L0f0beba0
    .word .L0f0beab0
    .word .L0f0beba0
    .word .L0f0beb2c
    .word .L0f0beb2c

.rdata
_lit8_4016000000000000:
    .word 0x40160000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_401617e3:
    .word 0x401617e3

