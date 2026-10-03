# Source: ../igloo/pattern.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/pattern.c -o pattern.T
# Total Functions: 8

.text

# Function: gl_findpattern
# Declared: Line 43 (Source lines: 44-54)
# Address: 0x0f0f7b5c - 0x0f0f7bb4 (Size: 88 bytes, Frame: 32)
.globl gl_findpattern
.ent gl_findpattern
gl_findpattern:
    # Line 44
    move	$a1,$a0
    # Line 47
    move	$v0,$zero
    # Line 44
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-18708
    # Line 47
    beqz	$a0,.L0f0f7b98
    # Line 44
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 49
    la	$a0,sub_0f040000
    la	$t9,gl_find
    sd	$ra,8($sp)
    addiu	$a0,$a0,-30360
    jalr	$t9
    addiu	$a0,$a0,144
    ld	$ra,8($sp)
.L0f0f7b98:
    bnezl	$v0,.L0f0f7bac
    ld	$gp,0($sp)
    la	$v0,sub_0f040000
    addiu	$v0,$v0,-30360
    ld	$gp,0($sp)
.L0f0f7bac:
    # Line 54
    jr	$ra
    addiu	$sp,$sp,32
.end gl_findpattern

# Function: gl_setpattern
# Declared: Line 59 (Source lines: 60-81)
# Address: 0x0f0f7bb4 - 0x0f0f7cb4 (Size: 256 bytes, Frame: 192)
.globl gl_setpattern
.ent gl_setpattern
gl_setpattern:
    # Line 60
    addiu	$sp,$sp,-64
    sd	$s3,8($sp)
    sd	$gp,40($sp)
    lui	$t8,0xfff4
    addiu	$t8,$t8,-18796
    addu	$gp,$t9,$t8
    # Line 64
    la	$t9,gl_findpattern
    # Line 61
    la	$s3,gl_wstatep
    sd	$ra,16($sp)
    # Line 64
    bal gl_findpattern
    # Line 61
    lw	$s3,0($s3)
    # Line 65
    lw	$a0,276($s3)
    lw	$v1,4($v0)
    sw	$v1,12($a0)
    lw	$at,8($v0)
    sd	$v0,32($sp)
    # Line 64
    move	$a1,$v0
    # Line 65
    beqz	$at,.L0f0f7c68
    sd	$v0,24($sp)
    # Line 73
    la	$t9,__iglooPixelStorei
    li	$a1,1
    li	$a0,3317
    jalr	$t9
    ld	$s3,8($sp)
    # Line 74
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3314
    # Line 76
    la	$t9,glPolygonStipple
    ld	$a0,32($sp)
    jalr	$t9
    addiu	$a0,$a0,12
    # Line 78
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2882
    # Line 80
    la	$t9,__iglooGetRenderMode
.L0f0f7c48:
    bal __iglooGetRenderMode
    nop
    li	$a1,7169
    beq	$v0,$a1,.L0f0f7c84
    ld	$ra,16($sp)
.L0f0f7c5c:
    ld	$gp,40($sp)
    # Line 81
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f7c68:
    # Line 68
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    li	$a0,2882
    jalr	$t9
    ld	$s3,8($sp)
    b	.L0f0f7c48
    # Line 80
    la	$t9,__iglooGetRenderMode
.L0f0f7c84:
    la	$t9,glPassThrough
    ld	$a2,24($sp)
    li	$a3,63
    sb	$a3,0($sp)
    lw	$a2,4($a2)
    li	$a3,3
    sb	$a3,1($sp)
    sh	$a2,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f0f7c5c
    ld	$ra,16($sp)
.end gl_setpattern

# Function: gl_free_patterns
# Declared: Line 84 (Source lines: 85-97)
# Address: 0x0f0f7cb4 - 0x0f0f7d38 (Size: 132 bytes, Frame: 48)
.globl gl_free_patterns
.ent gl_free_patterns
gl_free_patterns:
    # Line 85
    addiu	$sp,$sp,-48
    sd	$s5,16($sp)
    sd	$gp,0($sp)
    sd	$s7,8($sp)
    lui	$s7,0xfff4
    addiu	$s7,$s7,-19052
    addu	$gp,$t9,$s7
    la	$s5,sub_0f040000
    sd	$s1,24($sp)
    sd	$ra,32($sp)
    addiu	$s5,$s5,-30360
    b	.L0f0f7cf0
    addiu	$s7,$s5,512
.L0f0f7ce8:
    # Line 90
    beq	$s5,$s7,.L0f0f7d1c
    # Line 95
    sw	$zero,140($s5)
.L0f0f7cf0:
    # Line 91
    lw	$a0,144($s5)
    beqz	$a0,.L0f0f7ce8
    # Line 90
    addiu	$s5,$s5,4
.L0f0f7cfc:
    # Line 93
    la	$t9,gl_free
    lw	$a1,-14592($gp)
    jalr	$t9
    # Line 92
    lw	$s1,0($a0)
    # Line 91
    bnez	$s1,.L0f0f7cfc
    move	$a0,$s1
    b	.L0f0f7ce8
    nop
.L0f0f7d1c:
    ld	$gp,0($sp)
    # Line 97
    ld	$s1,24($sp)
    ld	$ra,32($sp)
    ld	$s5,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_patterns

# Function: gl_g_getpattern
# Declared: Line 102 (Source lines: 103-106)
# Address: 0x0f0f7d38 - 0x0f0f7d58 (Size: 32 bytes, Frame: 0)
.globl gl_g_getpattern
.ent gl_g_getpattern
gl_g_getpattern:
    # Line 103
    lui	$v1,0xfff4
    addiu	$v1,$v1,-19184
    addu	$at,$t9,$v1
    # Line 106
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    jr	$ra
    lw	$v0,12($v0)
.end gl_g_getpattern

# Function: gl_g_defpattern
# Declared: Line 109 (Source lines: 110-169)
# Address: 0x0f0f7d58 - 0x0f0f7f5c (Size: 516 bytes, Frame: 224)
.globl gl_g_defpattern
.ent gl_g_defpattern
gl_g_defpattern:
    # Line 110
    addiu	$sp,$sp,-96
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$a2,8($sp)
    sd	$gp,32($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-19216
    beqz	$a0,.L0f0f7f30
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$s2,48($sp)
    # Line 123
    la	$a0,sub_0f040000
    la	$t9,gl_remove
    move	$a1,$s0
    addiu	$a0,$a0,-30216
    jalr	$t9
    sd	$a0,0($sp)
    move	$s2,$v0
    beqz	$v0,.L0f0f7efc
    ld	$ra,40($sp)
.L0f0f7db0:
    # Line 129
    li	$a6,-1
    # Line 131
    addiu	$t1,$s2,76
    # Line 132
    li	$a3,16
    # Line 130
    addiu	$t0,$s2,12
    move	$a5,$t0
    # Line 132
    beq	$s1,$a3,.L0f0f7e68
    move	$a0,$t1
    li	$a4,32
    bne	$s1,$a4,.L0f0f7ebc
    move	$v0,$a6
    ld	$a1,8($sp)
    move	$a0,$t0
    # Line 144
    addiu	$a5,$a1,128
.L0f0f7de4:
    # Line 147
    lhu	$a3,0($a1)
    lhu	$v1,2($a1)
    sll	$a3,$a3,0x10
    or	$v1,$v1,$a3
    sw	$v1,0($a0)
    lhu	$a4,4($a1)
    lhu	$a3,6($a1)
    # Line 148
    addiu	$a0,$a0,8
    # Line 147
    sll	$a4,$a4,0x10
    or	$a3,$a3,$a4
    sw	$a3,-4($a0)
    # Line 144
    addiu	$a1,$a1,8
    # Line 148
    move	$at,$a3
    and	$v0,$v1,$v0
    # Line 144
    bne	$a1,$a5,.L0f0f7de4
    # Line 148
    and	$v0,$a3,$v0
    move	$a6,$v0
.L0f0f7e28:
    # Line 162
    move	$a1,$s2
    ld	$a0,0($sp)
    # Line 161
    sw	$s0,4($s2)
    # Line 162
    la	$t9,gl_insert
    # Line 159
    li	$a4,-1
    xor	$a4,$a6,$a4
    sltu	$a4,$zero,$a4
    # Line 162
    jalr	$t9
    # Line 159
    sw	$a4,8($s2)
    ld	$gp,32($sp)
    # Line 169
    ld	$s0,24($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f7e68:
    move	$v0,$a6
    ld	$a1,8($sp)
    # Line 134
    addiu	$a7,$a1,32
.L0f0f7e74:
    # Line 135
    lhu	$a4,0($a1)
    # Line 138
    addiu	$a0,$a0,8
    # Line 137
    sll	$a3,$a4,0x10
    or	$a3,$a3,$a4
    sw	$a3,0($a5)
    # Line 138
    sw	$a3,-8($a0)
    # Line 137
    addiu	$a5,$a5,8
    # Line 135
    lhu	$v1,2($a1)
    # Line 134
    addiu	$a1,$a1,4
    # Line 139
    and	$v0,$a3,$v0
    # Line 137
    sll	$at,$v1,0x10
    or	$at,$at,$v1
    # Line 139
    and	$v0,$at,$v0
    # Line 137
    sw	$at,-4($a5)
    # Line 134
    bne	$a1,$a7,.L0f0f7e74
    # Line 138
    sw	$at,-4($a0)
    b	.L0f0f7e28
    move	$a6,$v0
.L0f0f7ebc:
    # Line 154
    la	$t9,gl_ErrorHandler
    lw	$a2,-14588($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,56
    # Line 155
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    lw	$a1,-14588($gp)
    ld	$gp,32($sp)
    # Line 156
    ld	$s0,24($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f7efc:
    # Line 125
    la	$t9,gl_malloc
    lw	$a1,-14588($gp)
    jalr	$t9
    li	$a0,140
    move	$s2,$v0
    bnez	$v0,.L0f0f7db0
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 126
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f7f30:
    # Line 117
    la	$t9,gl_ErrorHandler
    lw	$a2,-14588($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,55
    ld	$gp,32($sp)
    # Line 118
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_defpattern

# Function: gl_i_setpattern
# Declared: Line 171 (Source lines: 171-171)
# Address: 0x0f0f7f5c - 0x0f0f7fac (Size: 80 bytes, Frame: 48)
.globl gl_i_setpattern
.ent gl_i_setpattern
gl_i_setpattern:
    # Line 171
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-19732 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f7f90
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f7f90:
    la	$t9,gl_setpattern
    bal gl_setpattern
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_setpattern

# Function: gl_c_setpattern
# Declared: Line 171 (Source lines: 171-171)
# Address: 0x0f0f7fac - 0x0f0f8024 (Size: 120 bytes, Frame: 192)
.globl gl_c_setpattern
.ent gl_c_setpattern
gl_c_setpattern:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-19812 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20536($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f8008
    move	$s8,$a0
.L0f0f7fd4:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_setpattern
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f8008:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25272
    li	$a1,1
    b	.L0f0f7fd4
    sw	$a1,-20536($gp)
.end gl_c_setpattern

# Function: gl_n_setpattern
# Declared: Line 171 (Source lines: 171-171)
# Address: 0x0f0f8024 - 0x0f0f8080 (Size: 92 bytes, Frame: 48)
.globl gl_n_setpattern
.ent gl_n_setpattern
gl_n_setpattern:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-19932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f805c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f805c:
    la	$t9,gl_setpattern
    bal gl_setpattern
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_setpattern

