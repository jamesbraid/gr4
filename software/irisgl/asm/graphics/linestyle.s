# Source: ../igloo/graphics/linestyle.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/linestyle.c -o linestyle.T
# Total Functions: 15

.text

# Function: gl_findlinestyle
# Declared: Line 22 (Source lines: 23-31)
# Address: 0x0f0d9250 - 0x0f0d92a4 (Size: 84 bytes, Frame: 32)
.globl gl_findlinestyle
.ent gl_findlinestyle
gl_findlinestyle:
    # Line 23
    move	$a1,$a0
    # Line 26
    move	$v0,$zero
    # Line 23
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff6
    addiu	$at,$at,-24584
    # Line 26
    beqz	$a0,.L0f0d9288
    # Line 23
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 28
    la	$t9,gl_find
    la	$a0,sub_0f030000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a0,$a0,1296
    ld	$ra,8($sp)
.L0f0d9288:
    bnezl	$v0,.L0f0d929c
    ld	$gp,0($sp)
    # Line 30
    la	$v0,sub_0f030000
    addiu	$v0,$v0,-28976
    ld	$gp,0($sp)
.L0f0d929c:
    # Line 31
    jr	$ra
    addiu	$sp,$sp,32
.end gl_findlinestyle

# Function: gl_g_deflinestyle
# Declared: Line 35 (Source lines: 36-71)
# Address: 0x0f0d92a4 - 0x0f0d9368 (Size: 196 bytes, Frame: 48)
.globl gl_g_deflinestyle
.ent gl_g_deflinestyle
gl_g_deflinestyle:
    # Line 36
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$a1,0($sp)
    sd	$gp,8($sp)
    lui	$at,0xfff6
    addiu	$at,$at,-24668
    beqz	$a0,.L0f0d9340
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 48
    la	$t9,gl_remove
    # Line 42
    la	$a0,sub_0f030000
    # Line 48
    move	$a1,$s0
    jalr	$t9
    # Line 42
    addiu	$a0,$a0,1296
    # Line 48
    bnez	$v0,.L0f0d930c
    # Line 54
    la	$t9,gl_malloc
    lw	$a1,-14780($gp)
    jalr	$t9
    li	$a0,12
    bnez	$v0,.L0f0d930c
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    # Line 56
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d930c:
    # Line 64
    move	$a1,$v0
    # Line 61
    sw	$s0,4($v0)
    la	$a0,sub_0f030000
    # Line 64
    la	$t9,gl_insert
    # Line 60
    ld	$a2,0($sp)
    addiu	$a0,$a0,1296
    # Line 64
    jalr	$t9
    # Line 60
    sh	$a2,8($v0)
    # Line 71
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d9340:
    # Line 41
    la	$t9,gl_ErrorHandler
    lw	$a2,-14780($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,55
    # Line 42
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_deflinestyle

# Function: gl_setlinestyle
# Declared: Line 80 (Source lines: 81-99)
# Address: 0x0f0d9368 - 0x0f0d9470 (Size: 264 bytes, Frame: 192)
.globl gl_setlinestyle
.ent gl_setlinestyle
gl_setlinestyle:
    # Line 81
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    sd	$gp,32($sp)
    lui	$t8,0xfff6
    addiu	$t8,$t8,-24864
    addu	$gp,$t9,$t8
    # Line 85
    la	$t9,gl_findlinestyle
    # Line 82
    la	$s0,gl_wstatep
    sd	$ra,24($sp)
    # Line 85
    bal gl_findlinestyle
    # Line 82
    lw	$s0,0($s0)
    # Line 86
    lw	$a0,276($s0)
    lw	$v1,4($v0)
    sw	$v1,4($a0)
    lw	$at,4($v0)
    beqz	$at,.L0f0d9420
    # Line 85
    move	$a3,$v0
    # Line 89
    lhu	$a1,8($v0)
    li	$a2,0xffff
    beq	$a1,$a2,.L0f0d9404
    sd	$a3,16($sp)
    # Line 92
    la	$t9,glLineStipple
    lw	$a0,276($s0)
    jalr	$t9
    lw	$a0,8($a0)
    # Line 93
    la	$t9,__iglooSetEnable
    li	$a1,1
    li	$a0,2852
    jalr	$t9
    ld	$s0,8($sp)
    # Line 98
    la	$t9,__iglooGetRenderMode
.L0f0d93e4:
    jalr	$t9
    nop
    li	$a2,7169
    beq	$v0,$a2,.L0f0d9440
    ld	$ra,24($sp)
.L0f0d93f8:
    ld	$gp,32($sp)
    # Line 99
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d9404:
    # Line 95
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    li	$a0,2852
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0d93e4
    # Line 98
    la	$t9,__iglooGetRenderMode
.L0f0d9420:
    sd	$a3,16($sp)
    # Line 89
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    li	$a0,2852
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0d93e4
    # Line 98
    la	$t9,__iglooGetRenderMode
.L0f0d9440:
    la	$t9,glPassThrough
    ld	$a3,16($sp)
    li	$a4,63
    sb	$a4,0($sp)
    lw	$a3,4($a3)
    li	$a4,2
    sb	$a4,1($sp)
    sh	$a3,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f0d93f8
    ld	$ra,24($sp)
.end gl_setlinestyle

# Function: gl_i_setlinestyle
# Declared: Line 101 (Source lines: 101-101)
# Address: 0x0f0d9470 - 0x0f0d94c0 (Size: 80 bytes, Frame: 48)
.globl gl_i_setlinestyle
.ent gl_i_setlinestyle
gl_i_setlinestyle:
    # Line 101
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-25128 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0d94a4
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0d94a4:
    la	$t9,gl_setlinestyle
    bal gl_setlinestyle
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_setlinestyle

# Function: gl_c_setlinestyle
# Declared: Line 101 (Source lines: 101-101)
# Address: 0x0f0d94c0 - 0x0f0d9538 (Size: 120 bytes, Frame: 192)
.globl gl_c_setlinestyle
.ent gl_c_setlinestyle
gl_c_setlinestyle:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-25208 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20780($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0d951c
    move	$s8,$a0
.L0f0d94e8:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_setlinestyle
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d951c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-28960
    li	$a1,1
    b	.L0f0d94e8
    sw	$a1,-20780($gp)
.end gl_c_setlinestyle

# Function: gl_n_setlinestyle
# Declared: Line 101 (Source lines: 101-101)
# Address: 0x0f0d9538 - 0x0f0d9594 (Size: 92 bytes, Frame: 48)
.globl gl_n_setlinestyle
.ent gl_n_setlinestyle
gl_n_setlinestyle:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-25328 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0d9570
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0d9570:
    la	$t9,gl_setlinestyle
    bal gl_setlinestyle
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_setlinestyle

# Function: gl_g_getlstyle
# Declared: Line 103 (Source lines: 104-106)
# Address: 0x0f0d9594 - 0x0f0d95b4 (Size: 32 bytes, Frame: 0)
.globl gl_g_getlstyle
.ent gl_g_getlstyle
gl_g_getlstyle:
    # Line 104
    lui	$v1,0xfff6
    addiu	$v1,$v1,-25420
    addu	$at,$t9,$v1
    # Line 106
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    jr	$ra
    lw	$v0,4($v0)
.end gl_g_getlstyle

# Function: gl_free_linestyles
# Declared: Line 111 (Source lines: 112-125)
# Address: 0x0f0d95b4 - 0x0f0d9638 (Size: 132 bytes, Frame: 48)
.globl gl_free_linestyles
.ent gl_free_linestyles
gl_free_linestyles:
    # Line 112
    addiu	$sp,$sp,-48
    sd	$s5,16($sp)
    sd	$gp,0($sp)
    sd	$s7,8($sp)
    lui	$s7,0xfff6
    addiu	$s7,$s7,-25452
    addu	$gp,$t9,$s7
    la	$s5,sub_0f030000
    sd	$s1,24($sp)
    sd	$ra,32($sp)
    addiu	$s5,$s5,1296
    b	.L0f0d95f0
    addiu	$s7,$s5,512
.L0f0d95e8:
    # Line 118
    beq	$s5,$s7,.L0f0d961c
    # Line 123
    sw	$zero,-4($s5)
.L0f0d95f0:
    # Line 119
    lw	$a0,0($s5)
    beqz	$a0,.L0f0d95e8
    # Line 118
    addiu	$s5,$s5,4
.L0f0d95fc:
    # Line 121
    la	$t9,gl_free
    lw	$a1,-14776($gp)
    jalr	$t9
    # Line 120
    lw	$s1,0($a0)
    # Line 119
    bnez	$s1,.L0f0d95fc
    move	$a0,$s1
    b	.L0f0d95e8
    nop
.L0f0d961c:
    ld	$gp,0($sp)
    # Line 125
    ld	$s1,24($sp)
    ld	$ra,32($sp)
    ld	$s5,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_linestyles

# Function: gl_lsrepeat
# Declared: Line 144 (Source lines: 145-161)
# Address: 0x0f0d9638 - 0x0f0d96dc (Size: 164 bytes, Frame: 48)
.globl gl_lsrepeat
.ent gl_lsrepeat
gl_lsrepeat:
    # Line 145
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    lui	$a2,0xfff6
    addiu	$a2,$a2,-25584
    addu	$gp,$t9,$a2
    # Line 146
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    # Line 149
    lw	$a2,276($a1)
    sd	$a0,16($sp)
    sw	$a0,8($a2)
    # Line 150
    la	$t9,gl_findlinestyle
    lw	$a0,276($a1)
    sd	$ra,8($sp)
    bal gl_findlinestyle
    lw	$a0,4($a0)
    lhu	$a1,8($v0)
    li	$a3,0xffff
    beq	$a1,$a3,.L0f0d968c
    # Line 157
    la	$t9,glLineStipple
    jalr	$t9
    ld	$a0,16($sp)
.L0f0d968c:
    # Line 160
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$at,7169
    beq	$v0,$at,.L0f0d96b0
    ld	$ra,8($sp)
.L0f0d96a4:
    ld	$gp,24($sp)
    # Line 161
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d96b0:
    # Line 160
    la	$t9,glPassThrough
    li	$a0,63
    li	$v1,6
    ld	$v0,16($sp)
    sb	$v1,1($sp)
    sb	$a0,0($sp)
    sh	$v0,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f0d96a4
    ld	$ra,8($sp)
.end gl_lsrepeat

# Function: gl_i_lsrepeat
# Declared: Line 163 (Source lines: 163-163)
# Address: 0x0f0d96dc - 0x0f0d972c (Size: 80 bytes, Frame: 48)
.globl gl_i_lsrepeat
.ent gl_i_lsrepeat
gl_i_lsrepeat:
    # Line 163
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-25748 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0d9710
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0d9710:
    la	$t9,gl_lsrepeat
    bal gl_lsrepeat
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_lsrepeat

# Function: gl_c_lsrepeat
# Declared: Line 163 (Source lines: 163-163)
# Address: 0x0f0d972c - 0x0f0d97a0 (Size: 116 bytes, Frame: 192)
.globl gl_c_lsrepeat
.ent gl_c_lsrepeat
gl_c_lsrepeat:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-25828 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20776($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0d9784
    move	$s8,$a0
.L0f0d9754:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_lsrepeat
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d9784:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-28944
    li	$a1,1
    b	.L0f0d9754
    sw	$a1,-20776($gp)
.end gl_c_lsrepeat

# Function: gl_n_lsrepeat
# Declared: Line 163 (Source lines: 163-163)
# Address: 0x0f0d97a0 - 0x0f0d97fc (Size: 92 bytes, Frame: 48)
.globl gl_n_lsrepeat
.ent gl_n_lsrepeat
gl_n_lsrepeat:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-25944 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0d97d8
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0d97d8:
    la	$t9,gl_lsrepeat
    bal gl_lsrepeat
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_lsrepeat

# Function: gl_g_getlsrepeat
# Declared: Line 166 (Source lines: 167-170)
# Address: 0x0f0d97fc - 0x0f0d981c (Size: 32 bytes, Frame: 0)
.globl gl_g_getlsrepeat
.ent gl_g_getlsrepeat
gl_g_getlsrepeat:
    # Line 167
    lui	$v1,0xfff6
    addiu	$v1,$v1,-26036
    addu	$at,$t9,$v1
    # Line 170
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    jr	$ra
    lw	$v0,8($v0)
.end gl_g_getlsrepeat

# Function: gl_g_gl_resetls
# Declared: Line 202 (Source lines: 202-209)
# Address: 0x0f0d981c - 0x0f0d9890 (Size: 116 bytes, Frame: 192)
.globl gl_g_gl_resetls
.ent gl_g_gl_resetls
gl_g_gl_resetls:
    # Line 202
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-26068 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20772($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0d9874
    move	$s8,$a0
.L0f0d9844:
    # Line 207
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    # Line 205
    la	$v1,gl_n_gl_resetls
    # Line 206
    sw	$s8,4($sp)
    # Line 207
    jalr	$t9
    # Line 205
    sw	$v1,0($sp)
    # Line 209
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d9874:
    # Line 202
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-28928
    li	$a1,1
    b	.L0f0d9844
    sw	$a1,-20772($gp)
.end gl_g_gl_resetls

# Function: gl_n_gl_resetls
# Declared: Line 211 (Source lines: 214-214)
# Address: 0x0f0d9890 - 0x0f0d9898 (Size: 8 bytes, Frame: 0)
.globl gl_n_gl_resetls
.ent gl_n_gl_resetls
gl_n_gl_resetls:
    # Line 214
    jr	$ra
    addiu	$v0,$a0,4
.end gl_n_gl_resetls

