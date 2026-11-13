# Source: ../igloo/mulsam.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/mulsam.c -o mulsam.T
# Total Functions: 22

.text

# Function: gl_i_msalpha
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0f23c8 - 0x0f0f2418 (Size: 80 bytes, Frame: 48)
.globl gl_i_msalpha
.ent gl_i_msalpha
gl_i_msalpha:
    # Line 36
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3712 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f23fc
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f23fc:
    la	$t9,gl_msalpha
    bal gl_msalpha
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_msalpha

# Function: gl_c_msalpha
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0f2418 - 0x0f0f248c (Size: 116 bytes, Frame: 192)
.globl gl_c_msalpha
.ent gl_c_msalpha
gl_c_msalpha:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3632 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20572($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f2470
    move	$s8,$a0
.L0f0f2440:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_msalpha
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f2470:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25544
    li	$a1,1
    b	.L0f0f2440
    sw	$a1,-20572($gp)
.end gl_c_msalpha

# Function: gl_n_msalpha
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0f248c - 0x0f0f24e8 (Size: 92 bytes, Frame: 48)
.globl gl_n_msalpha
.ent gl_n_msalpha
gl_n_msalpha:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3516 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f24c4
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f24c4:
    la	$t9,gl_msalpha
    bal gl_msalpha
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_msalpha

# Function: gl_i_msmask
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f0f24e8 - 0x0f0f2544 (Size: 92 bytes, Frame: 48)
.globl gl_i_msmask
.ent gl_i_msmask
gl_i_msmask:
    # Line 37
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3424 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    mov.s	$f4,$f12
    beqz	$at,.L0f0f2528
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    bal __iglooNCloseMoveDraw
    sdc1	$f4,8($sp)
    ldc1	$f4,8($sp)
    ld	$a1,16($sp)
.L0f0f2528:
    la	$t9,gl_msmask
    bal gl_msmask
    mov.s	$f12,$f4
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_msmask

# Function: gl_c_msmask
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f0f2544 - 0x0f0f25c8 (Size: 132 bytes, Frame: 192)
.globl gl_c_msmask
.ent gl_c_msmask
gl_c_msmask:
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3332 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20568($gp)
    move	$s8,$a1
    sdc1	$f30,16($sp)
    beqz	$at,.L0f0f25ac
    mov.s	$f30,$f12
.L0f0f2574:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$s8,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_msmask
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s8,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f25ac:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25528
    li	$at,1
    b	.L0f0f2574
    sw	$at,-20568($gp)
.end gl_c_msmask

# Function: gl_n_msmask
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f0f25c8 - 0x0f0f2628 (Size: 96 bytes, Frame: 48)
.globl gl_n_msmask
.ent gl_n_msmask
gl_n_msmask:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3200 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f2600
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f2600:
    la	$t9,gl_msmask
    lw	$a1,4($s8)
    bal gl_msmask
    lwc1	$f12,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_msmask

# Function: gl_i_mspattern
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f0f2628 - 0x0f0f2678 (Size: 80 bytes, Frame: 48)
.globl gl_i_mspattern
.ent gl_i_mspattern
gl_i_mspattern:
    # Line 38
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3104 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f265c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f265c:
    la	$t9,gl_mspattern
    bal gl_mspattern
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_mspattern

# Function: gl_c_mspattern
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f0f2678 - 0x0f0f26ec (Size: 116 bytes, Frame: 192)
.globl gl_c_mspattern
.ent gl_c_mspattern
gl_c_mspattern:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,3024 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20564($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f26d0
    move	$s8,$a0
.L0f0f26a0:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_mspattern
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f26d0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25512
    li	$a1,1
    b	.L0f0f26a0
    sw	$a1,-20564($gp)
.end gl_c_mspattern

# Function: gl_n_mspattern
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f0f26ec - 0x0f0f2748 (Size: 92 bytes, Frame: 48)
.globl gl_n_mspattern
.ent gl_n_mspattern
gl_n_mspattern:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,2908 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f2724
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f2724:
    la	$t9,gl_mspattern
    bal gl_mspattern
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_mspattern

# Function: gl_i_mssample
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f0f2748 - 0x0f0f2798 (Size: 80 bytes, Frame: 48)
.globl gl_i_mssample
.ent gl_i_mssample
gl_i_mssample:
    # Line 39
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,2816 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f277c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f277c:
    la	$t9,gl_mssample
    bal gl_mssample
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_mssample

# Function: gl_c_mssample
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f0f2798 - 0x0f0f280c (Size: 116 bytes, Frame: 192)
.globl gl_c_mssample
.ent gl_c_mssample
gl_c_mssample:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,2736 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20560($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f27f0
    move	$s8,$a0
.L0f0f27c0:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_mssample
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f27f0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25496
    li	$a1,1
    b	.L0f0f27c0
    sw	$a1,-20560($gp)
.end gl_c_mssample

# Function: gl_n_mssample
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f0f280c - 0x0f0f2868 (Size: 92 bytes, Frame: 48)
.globl gl_n_mssample
.ent gl_n_mssample
gl_n_mssample:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,2620 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f2844
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f2844:
    la	$t9,gl_mssample
    bal gl_mssample
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_mssample

# Function: gl_i_multisample
# Declared: Line 40 (Source lines: 40-40)
# Address: 0x0f0f2868 - 0x0f0f28b8 (Size: 80 bytes, Frame: 48)
.globl gl_i_multisample
.ent gl_i_multisample
gl_i_multisample:
    # Line 40
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,2528 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f289c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f289c:
    la	$t9,gl_multisample
    bal gl_multisample
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_multisample

# Function: gl_c_multisample
# Declared: Line 40 (Source lines: 40-40)
# Address: 0x0f0f28b8 - 0x0f0f292c (Size: 116 bytes, Frame: 192)
.globl gl_c_multisample
.ent gl_c_multisample
gl_c_multisample:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,2448 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20556($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f2910
    move	$s8,$a0
.L0f0f28e0:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_multisample
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f2910:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25480
    li	$a1,1
    b	.L0f0f28e0
    sw	$a1,-20556($gp)
.end gl_c_multisample

# Function: gl_n_multisample
# Declared: Line 40 (Source lines: 40-40)
# Address: 0x0f0f292c - 0x0f0f2988 (Size: 92 bytes, Frame: 48)
.globl gl_n_multisample
.ent gl_n_multisample
gl_n_multisample:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,2332 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f2964
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f2964:
    la	$t9,gl_multisample
    bal gl_multisample
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_multisample

# Function: gl_msalpha
# Declared: Line 44 (Source lines: 45-70)
# Address: 0x0f0f2988 - 0x0f0f2a7c (Size: 244 bytes, Frame: 48)
.globl gl_msalpha
.ent gl_msalpha
gl_msalpha:
    # Line 45
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,2240 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 46
    la	$t9,__iglooIsExtensionSupported
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,16
    li	$a3,1
    bne	$a3,$v0,.L0f0f29fc
    ld	$ra,0($sp)
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$v0,12120($a0)
    beqz	$v0,.L0f0f29fc
    ld	$at,8($sp)
    lw	$a1,12124($a0)
    ld	$v1,8($sp)
    beq	$a1,$at,.L0f0f29fc
    ld	$v0,8($sp)
    # Line 52
    beqz	$v0,.L0f0f2a2c
    # Line 51
    sw	$v0,12124($a0)
    # Line 52
    beq	$v1,$a3,.L0f0f2a54
    li	$at,2
    ld	$a1,8($sp)
    beq	$a1,$at,.L0f0f2a08
    # Line 62
    la	$t9,__iglooSetEnable
.L0f0f29fc:
    ld	$gp,16($sp)
    # Line 70
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f2a08:
    # Line 62
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x809e
    # Line 63
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x809f
    b	.L0f0f29fc
    ld	$ra,0($sp)
.L0f0f2a2c:
    # Line 54
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x809f
    # Line 55
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,0x809e
    b	.L0f0f29fc
    ld	$ra,0($sp)
.L0f0f2a54:
    # Line 58
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x809e
    # Line 59
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,0x809f
    b	.L0f0f29fc
    ld	$ra,0($sp)
.end gl_msalpha

# Function: gl_msmask
# Declared: Line 72 (Source lines: 73-83)
# Address: 0x0f0f2a7c - 0x0f0f2b24 (Size: 168 bytes, Frame: 192)
.globl gl_msmask
.ent gl_msmask
gl_msmask:
    # Line 76
    li	$a0,16
    # Line 73
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,1996 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 74
    la	$at,gl_wstatep
    sd	$a1,16($sp)
    sdc1	$f12,0($sp)
    lw	$at,0($at)
    # Line 76
    la	$t9,__iglooIsExtensionSupported
    sd	$ra,8($sp)
    # Line 74
    addiu	$at,$at,12120
    # Line 76
    jalr	$t9
    sd	$at,24($sp)
    li	$v1,1
    bne	$v0,$v1,.L0f0f2aec
    ld	$ra,8($sp)
    ld	$a0,24($sp)
    # Line 77
    ldc1	$f1,0($sp)
    lwc1	$f0,16($a0)
    c.eq.s	$f0,$f1
    ld	$v0,16($sp)
    bc1f	.L0f0f2af8
    ld	$at,24($sp)
    lw	$at,20($at)
    bne	$at,$v0,.L0f0f2afc
    # Line 80
    la	$t9,glSampleMaskSGIS
.L0f0f2aec:
    ld	$gp,32($sp)
    # Line 83
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f2af8:
    # Line 80
    la	$t9,glSampleMaskSGIS
.L0f0f2afc:
    ld	$v1,16($sp)
    ldc1	$f2,0($sp)
    # Line 79
    ld	$v0,24($sp)
    # Line 80
    andi	$a1,$v1,0xff
    mov.s	$f12,$f2
    # Line 79
    sw	$v1,20($v0)
    # Line 80
    jalr	$t9
    # Line 78
    swc1	$f2,16($v0)
    b	.L0f0f2aec
    ld	$ra,8($sp)
.end gl_msmask

# Function: gl_mspattern
# Declared: Line 85 (Source lines: 86-122)
# Address: 0x0f0f2b24 - 0x0f0f2c00 (Size: 220 bytes, Frame: 48)
.globl gl_mspattern
.ent gl_mspattern
gl_mspattern:
    # Line 86
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,1828 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 87
    la	$t9,__iglooIsExtensionSupported
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,16
    li	$v1,1
    beq	$v0,$v1,.L0f0f2b64
    # Line 122
    ld	$ra,16($sp)
.L0f0f2b58:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f2b64:
    ld	$at,0($sp)
    # Line 91
    # la	v1,sub_0f020000
    sltiu	$a1,$at,7
    la	$v0,gl_wstatep
    la	$v1,jtbl_0f024648
    sll	$a0,$at,0x2
    lw	$v0,0($v0)
    addu	$a0,$a0,$v1
    beqz	$a1,.L0f0f2bd8
    sw	$at,12132($v0)
    lw	$a1,0($a0)
    jr	$a1
    # Line 113
    li	$a0,0x80a7
.L0f0f2b98:
    # Line 96
    b	.L0f0f2ba4
    # Line 95
    li	$a0,0x80a1
.L0f0f2ba0:
    # Line 101
    li	$a0,0x80a3
.L0f0f2ba4:
    # Line 120
    la	$t9,glSamplePatternSGIS
    jalr	$t9
    nop
    b	.L0f0f2b58
    # Line 122
    ld	$ra,16($sp)
.L0f0f2bb8:
    # Line 99
    b	.L0f0f2ba4
    # Line 98
    li	$a0,0x80a2
.L0f0f2bc0:
    # Line 105
    b	.L0f0f2ba4
    # Line 104
    li	$a0,0x80a4
.L0f0f2bc8:
    # Line 108
    b	.L0f0f2ba4
    # Line 107
    li	$a0,0x80a5
.L0f0f2bd0:
    # Line 111
    b	.L0f0f2ba4
    # Line 110
    li	$a0,0x80a6
.L0f0f2bd8:
    # Line 116
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,56
    jalr	$t9
    addiu	$a2,$a2,18024
    # Line 118
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_mspattern

# Function: gl_mssample
# Declared: Line 124 (Source lines: 125-129)
# Address: 0x0f0f2c00 - 0x0f0f2c1c (Size: 28 bytes, Frame: 0)
.globl gl_mssample
.ent gl_mssample
gl_mssample:
    # Line 125
    lui	$v1,0xfff4
    addiu	$v1,$v1,1608
    addu	$at,$t9,$v1
    # Line 128
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    # Line 129
    jr	$ra
    # Line 128
    sw	$a0,12128($v0)
.end gl_mssample

# Function: gl_multisample
# Declared: Line 131 (Source lines: 132-141)
# Address: 0x0f0f2c1c - 0x0f0f2ca0 (Size: 132 bytes, Frame: 48)
.globl gl_multisample
.ent gl_multisample
gl_multisample:
    # Line 132
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,1580 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 133
    la	$at,gl_wstatep
    sd	$a0,8($sp)
    # Line 135
    li	$a0,16
    # Line 133
    lw	$at,0($at)
    # Line 135
    la	$t9,__iglooIsExtensionSupported
    sd	$ra,0($sp)
    # Line 133
    addiu	$at,$at,12120
    # Line 135
    jalr	$t9
    sd	$at,16($sp)
    li	$v1,1
    bne	$v0,$v1,.L0f0f2c74
    ld	$ra,0($sp)
    ld	$a1,16($sp)
    ld	$at,8($sp)
    lw	$a1,0($a1)
    bne	$a1,$at,.L0f0f2c80
    # Line 138
    li	$a0,0x809d
.L0f0f2c74:
    ld	$gp,24($sp)
    # Line 141
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f2c80:
    # Line 138
    ld	$a2,8($sp)
    la	$t9,__iglooSetEnable
    # Line 137
    ld	$a3,16($sp)
    # Line 138
    andi	$a1,$a2,0xff
    jalr	$t9
    # Line 137
    sw	$a2,0($a3)
    b	.L0f0f2c74
    ld	$ra,0($sp)
.end gl_multisample

# Function: gl_g_getmultisample
# Declared: Line 143 (Source lines: 144-156)
# Address: 0x0f0f2ca0 - 0x0f0f2cec (Size: 76 bytes, Frame: 0)
.globl gl_g_getmultisample
.ent gl_g_getmultisample
gl_g_getmultisample:
    # Line 147
    move	$v0,$zero
    # Line 149
    lw	$a3,4100($zero)
    # Line 144
    lui	$v1,0xfff4
    addiu	$v1,$v1,1448
    # Line 149
    beqz	$a3,.L0f0f2ce4
    # Line 144
    addu	$at,$t9,$v1
    # Line 149
    lw	$a4,20($a3)
    beqz	$a4,.L0f0f2ce4
    # Line 151
    lw	$a1,-23296($at)
    lw	$a0,72($a4)
    beqz	$a0,.L0f0f2ce4
    nop
    lw	$a1,0($a1)
    lw	$a1,12120($a1)
    beqz	$a1,.L0f0f2ce4
    nop
    # Line 154
    li	$v0,1
.L0f0f2ce4:
    # Line 156
    jr	$ra
    nop
.end gl_g_getmultisample

# Function: gl_g_gl_ms_init_pixels
# Declared: Line 159 (Source lines: 160-184)
# Address: 0x0f0f2cec - 0x0f0f2d20 (Size: 52 bytes, Frame: 16)
.globl gl_g_gl_ms_init_pixels
.ent gl_g_gl_ms_init_pixels
gl_g_gl_ms_init_pixels:
    # Line 160
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,1372 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 181
    la	$t9,glClear
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,16640
    # Line 184
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_gl_ms_init_pixels

.late_rodata
jtbl_0f024648:
    .word .L0f0f2b98
    .word .L0f0f2bb8
    .word .L0f0f2ba0
    .word .L0f0f2bc0
    .word .L0f0f2bc8
    .word .L0f0f2bd0
    .word .L0f0f2ba4

