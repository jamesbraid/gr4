# Source: ../igloo/graphics/pmovedraw.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/pmovedraw.c -o pmovedraw.T
# Total Functions: 40

.text

# Function: gl_i_pmv2s
# Declared: Line 22 (Source lines: 22-22)
# Address: 0x0f0fd898 - 0x0f0fd930 (Size: 152 bytes, Frame: 192)
.globl gl_i_pmv2s
.ent gl_i_pmv2s
gl_i_pmv2s:
    # Line 22
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,22960 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$a1,16($sp)
    beqz	$at,.L0f0fd8d0
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fd8d0:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    li	$ra,2
    ld	$at,0($sp)
    ld	$v0,8($sp)
    ld	$v1,16($sp)
    addiu	$a0,$at,11488
    sw	$zero,11496($at)
    lw	$t9,28($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_pmv2s

# Function: gl_c_pmv2s
# Declared: Line 22 (Source lines: 22-22)
# Address: 0x0f0fd930 - 0x0f0fd9b4 (Size: 132 bytes, Frame: 192)
.globl gl_c_pmv2s
.ent gl_c_pmv2s
gl_c_pmv2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,22808 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20492($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fd990
    move	$s8,$a0
.L0f0fd95c:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pmv2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fd990:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25144
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0fd95c
    sw	$a2,-20492($gp)
.end gl_c_pmv2s

# Function: gl_n_pmv2s
# Declared: Line 22 (Source lines: 22-22)
# Address: 0x0f0fd9b4 - 0x0f0fda54 (Size: 160 bytes, Frame: 48)
.globl gl_n_pmv2s
.ent gl_n_pmv2s
gl_n_pmv2s:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,22676 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0fd9ec
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fd9ec:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,0($sp)
    lh	$v1,0($s3)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lh	$ra,2($s3)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    ld	$ra,24($sp)
    addiu	$v0,$s3,4
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pmv2s

# Function: gl_i_pmv2i
# Declared: Line 23 (Source lines: 23-23)
# Address: 0x0f0fda54 - 0x0f0fdaec (Size: 152 bytes, Frame: 192)
.globl gl_i_pmv2i
.ent gl_i_pmv2i
gl_i_pmv2i:
    # Line 23
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,22516 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$a1,16($sp)
    beqz	$at,.L0f0fda8c
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fda8c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    li	$ra,2
    ld	$at,0($sp)
    ld	$v0,8($sp)
    ld	$v1,16($sp)
    addiu	$a0,$at,11488
    sw	$zero,11496($at)
    lw	$t9,28($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_pmv2i

# Function: gl_c_pmv2i
# Declared: Line 23 (Source lines: 23-23)
# Address: 0x0f0fdaec - 0x0f0fdb70 (Size: 132 bytes, Frame: 192)
.globl gl_c_pmv2i
.ent gl_c_pmv2i
gl_c_pmv2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,22364 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20488($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fdb4c
    move	$s8,$a0
.L0f0fdb18:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pmv2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fdb4c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25128
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0fdb18
    sw	$a2,-20488($gp)
.end gl_c_pmv2i

# Function: gl_n_pmv2i
# Declared: Line 23 (Source lines: 23-23)
# Address: 0x0f0fdb70 - 0x0f0fdc10 (Size: 160 bytes, Frame: 48)
.globl gl_n_pmv2i
.ent gl_n_pmv2i
gl_n_pmv2i:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,22232 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0fdba8
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fdba8:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,0($sp)
    lw	$v1,0($s3)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lw	$ra,4($s3)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    ld	$ra,24($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pmv2i

# Function: gl_i_pmv2
# Declared: Line 24 (Source lines: 24-24)
# Address: 0x0f0fdc10 - 0x0f0fdcb0 (Size: 160 bytes, Frame: 192)
.globl gl_i_pmv2
.ent gl_i_pmv2
gl_i_pmv2:
    # Line 24
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,22072 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sdc1	$f13,8($sp)
    beqz	$at,.L0f0fdc48
    sdc1	$f12,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fdc48:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,16($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    li	$at,1
    mtc1	$zero,$f0
    ld	$ra,16($sp)
    ldc1	$f2,8($sp)
    ldc1	$f1,0($sp)
    addiu	$a0,$ra,11488
    swc1	$f2,11492($ra)
    swc1	$f1,11488($ra)
    lw	$t9,24($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    nop
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_pmv2

# Function: gl_c_pmv2
# Declared: Line 24 (Source lines: 24-24)
# Address: 0x0f0fdcb0 - 0x0f0fdd34 (Size: 132 bytes, Frame: 192)
.globl gl_c_pmv2
.ent gl_c_pmv2
gl_c_pmv2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,21912 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20484($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f0fdd10
    mov.s	$f30,$f12
.L0f0fdcdc:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pmv2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fdd10:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-25112
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f0fdcdc
    sw	$at,-20484($gp)
.end gl_c_pmv2

# Function: gl_n_pmv2
# Declared: Line 24 (Source lines: 24-24)
# Address: 0x0f0fdd34 - 0x0f0fdddc (Size: 168 bytes, Frame: 48)
.globl gl_n_pmv2
.ent gl_n_pmv2
gl_n_pmv2:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,21780 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0fdd6c
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fdd6c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,0($s3)
    li	$at,1
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,4($s3)
    sw	$at,11484($ra)
    lw	$t9,24($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pmv2

# Function: gl_i_pmvs
# Declared: Line 25 (Source lines: 25-25)
# Address: 0x0f0fdddc - 0x0f0fde7c (Size: 160 bytes, Frame: 208)
.globl gl_i_pmvs
.ent gl_i_pmvs
gl_i_pmvs:
    # Line 25
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,21612 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    lw	$at,0($at)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    beqz	$at,.L0f0fde18
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fde18:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    li	$ra,2
    ld	$v0,8($sp)
    ld	$at,0($sp)
    ld	$a1,16($sp)
    ld	$v1,24($sp)
    addiu	$a0,$at,11488
    sw	$a1,11496($at)
    lw	$t9,28($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_pmvs

# Function: gl_c_pmvs
# Declared: Line 25 (Source lines: 25-25)
# Address: 0x0f0fde7c - 0x0f0fdf10 (Size: 148 bytes, Frame: 224)
.globl gl_c_pmvs
.ent gl_c_pmvs
gl_c_pmvs:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,21452 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20480($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fdee4
    move	$s8,$a0
.L0f0fdea8:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pmvs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0fdee4:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25096
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20480($gp)
    b	.L0f0fdea8
    ld	$a2,40($sp)
.end gl_c_pmvs

# Function: gl_n_pmvs
# Declared: Line 25 (Source lines: 25-25)
# Address: 0x0f0fdf10 - 0x0f0fdfb4 (Size: 164 bytes, Frame: 48)
.globl gl_n_pmvs
.ent gl_n_pmvs
gl_n_pmvs:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,21304 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0fdf48
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fdf48:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,0($sp)
    lh	$a0,0($s3)
    sw	$a0,11488($at)
    lh	$v1,2($s3)
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,4($s3)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    ld	$ra,24($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pmvs

# Function: gl_i_pmvi
# Declared: Line 26 (Source lines: 26-26)
# Address: 0x0f0fdfb4 - 0x0f0fe054 (Size: 160 bytes, Frame: 208)
.globl gl_i_pmvi
.ent gl_i_pmvi
gl_i_pmvi:
    # Line 26
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,21140 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    lw	$at,0($at)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    beqz	$at,.L0f0fdff0
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fdff0:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    li	$ra,2
    ld	$v0,8($sp)
    ld	$at,0($sp)
    ld	$a1,16($sp)
    ld	$v1,24($sp)
    addiu	$a0,$at,11488
    sw	$a1,11496($at)
    lw	$t9,28($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_pmvi

# Function: gl_c_pmvi
# Declared: Line 26 (Source lines: 26-26)
# Address: 0x0f0fe054 - 0x0f0fe0e4 (Size: 144 bytes, Frame: 224)
.globl gl_c_pmvi
.ent gl_c_pmvi
gl_c_pmvi:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,20980 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20476($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f0fe0b8
    move	$s8,$a0
.L0f0fe080:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pmvi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0fe0b8:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-25080
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20476($gp)
    b	.L0f0fe080
    ld	$a2,48($sp)
.end gl_c_pmvi

# Function: gl_n_pmvi
# Declared: Line 26 (Source lines: 26-26)
# Address: 0x0f0fe0e4 - 0x0f0fe188 (Size: 164 bytes, Frame: 48)
.globl gl_n_pmvi
.ent gl_n_pmvi
gl_n_pmvi:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,20836 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0fe11c
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fe11c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,0($sp)
    lw	$a0,0($s3)
    sw	$a0,11488($at)
    lw	$v1,4($s3)
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,8($s3)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    ld	$ra,24($sp)
    addiu	$v0,$s3,12
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pmvi

# Function: gl_i_pmv
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f0fe188 - 0x0f0fe228 (Size: 160 bytes, Frame: 208)
.globl gl_i_pmv
.ent gl_i_pmv
gl_i_pmv:
    # Line 27
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,20672 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    lw	$at,0($at)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    beqz	$at,.L0f0fe1c4
    sdc1	$f12,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fe1c4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,24($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    li	$ra,1
    ldc1	$f0,0($sp)
    ld	$at,24($sp)
    ldc1	$f2,16($sp)
    ldc1	$f1,8($sp)
    addiu	$a0,$at,11488
    swc1	$f2,11496($at)
    lw	$t9,24($at)
    swc1	$f1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    swc1	$f0,11488($at)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_pmv

# Function: gl_c_pmv
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f0fe228 - 0x0f0fe2bc (Size: 148 bytes, Frame: 224)
.globl gl_c_pmv
.ent gl_c_pmv
gl_c_pmv:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,20512 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20472($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f0fe290
    mov.s	$f30,$f12
.L0f0fe258:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pmv
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0fe290:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25064
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f0fe258
    sw	$at,-20472($gp)
.end gl_c_pmv

# Function: gl_n_pmv
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f0fe2bc - 0x0f0fe364 (Size: 168 bytes, Frame: 48)
.globl gl_n_pmv
.ent gl_n_pmv
gl_n_pmv:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,20364 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0fe2f4
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fe2f4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,0($s3)
    swc1	$f2,11488($ra)
    lwc1	$f1,4($s3)
    li	$at,1
    swc1	$f1,11492($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,8($s3)
    lw	$t9,24($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,12
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pmv

# Function: gl_i_pdr2s
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f0fe364 - 0x0f0fe3b4 (Size: 80 bytes, Frame: 32)
.globl gl_i_pdr2s
.ent gl_i_pdr2s
gl_i_pdr2s:
    # Line 29
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,20196 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$ra,0($sp)
    li	$v0,2
    sw	$a0,11488($at)
    addiu	$a0,$at,11488
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$zero,11496($at)
    jalr	$t9
    sw	$a1,11492($at)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_pdr2s

# Function: gl_c_pdr2s
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f0fe3b4 - 0x0f0fe438 (Size: 132 bytes, Frame: 192)
.globl gl_c_pdr2s
.ent gl_c_pdr2s
gl_c_pdr2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,20116 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20468($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fe414
    move	$s8,$a0
.L0f0fe3e0:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pdr2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fe414:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25048
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0fe3e0
    sw	$a2,-20468($gp)
.end gl_c_pdr2s

# Function: gl_n_pdr2s
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f0fe438 - 0x0f0fe4a0 (Size: 104 bytes, Frame: 48)
.globl gl_n_pdr2s
.ent gl_n_pdr2s
gl_n_pdr2s:
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,19984 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_wstatep
    li	$v1,2
    sd	$s8,8($sp)
    lw	$v0,0($v0)
    lh	$a1,0($a0)
    move	$s8,$a0
    addiu	$a0,$v0,11488
    sw	$a1,11488($v0)
    lw	$t9,28($v0)
    lh	$at,2($s8)
    sw	$v1,11484($v0)
    sw	$zero,11496($v0)
    jalr	$t9
    sw	$at,11492($v0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pdr2s

# Function: gl_i_pdr2i
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0fe4a0 - 0x0f0fe4f0 (Size: 80 bytes, Frame: 32)
.globl gl_i_pdr2i
.ent gl_i_pdr2i
gl_i_pdr2i:
    # Line 30
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,19880 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$ra,0($sp)
    li	$v0,2
    sw	$a0,11488($at)
    addiu	$a0,$at,11488
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$zero,11496($at)
    jalr	$t9
    sw	$a1,11492($at)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_pdr2i

# Function: gl_c_pdr2i
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0fe4f0 - 0x0f0fe574 (Size: 132 bytes, Frame: 192)
.globl gl_c_pdr2i
.ent gl_c_pdr2i
gl_c_pdr2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,19800 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20464($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fe550
    move	$s8,$a0
.L0f0fe51c:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pdr2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fe550:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25032
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0fe51c
    sw	$a2,-20464($gp)
.end gl_c_pdr2i

# Function: gl_n_pdr2i
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0fe574 - 0x0f0fe5dc (Size: 104 bytes, Frame: 48)
.globl gl_n_pdr2i
.ent gl_n_pdr2i
gl_n_pdr2i:
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,19668 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_wstatep
    li	$v1,2
    sd	$s8,8($sp)
    lw	$v0,0($v0)
    lw	$a1,0($a0)
    move	$s8,$a0
    addiu	$a0,$v0,11488
    sw	$a1,11488($v0)
    lw	$t9,28($v0)
    lw	$at,4($s8)
    sw	$v1,11484($v0)
    sw	$zero,11496($v0)
    jalr	$t9
    sw	$at,11492($v0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pdr2i

# Function: gl_i_pdr2
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f0fe5dc - 0x0f0fe630 (Size: 84 bytes, Frame: 32)
.globl gl_i_pdr2
.ent gl_i_pdr2
gl_i_pdr2:
    # Line 31
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,19564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$ra,0($sp)
    lw	$at,0($at)
    li	$v0,1
    mtc1	$zero,$f0
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    lw	$t9,24($at)
    swc1	$f0,11496($at)
    swc1	$f13,11492($at)
    jalr	$t9
    swc1	$f12,11488($at)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_pdr2

# Function: gl_c_pdr2
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f0fe630 - 0x0f0fe6b4 (Size: 132 bytes, Frame: 192)
.globl gl_c_pdr2
.ent gl_c_pdr2
gl_c_pdr2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,19480 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20460($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f0fe690
    mov.s	$f30,$f12
.L0f0fe65c:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pdr2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fe690:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-25016
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f0fe65c
    sw	$at,-20460($gp)
.end gl_c_pdr2

# Function: gl_n_pdr2
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f0fe6b4 - 0x0f0fe720 (Size: 108 bytes, Frame: 48)
.globl gl_n_pdr2
.ent gl_n_pdr2
gl_n_pdr2:
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,19348 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    li	$v0,1
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$at,0($at)
    lwc1	$f2,0($s8)
    mtc1	$zero,$f1
    addiu	$a0,$at,11488
    swc1	$f2,11488($at)
    lw	$t9,24($at)
    lwc1	$f0,4($s8)
    sw	$v0,11484($at)
    swc1	$f1,11496($at)
    jalr	$t9
    swc1	$f0,11492($at)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pdr2

# Function: gl_i_pdrs
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f0fe720 - 0x0f0fe770 (Size: 80 bytes, Frame: 48)
.globl gl_i_pdrs
.ent gl_i_pdrs
gl_i_pdrs:
    # Line 32
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,19240 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$ra,0($sp)
    li	$v0,2
    sw	$a0,11488($at)
    addiu	$a0,$at,11488
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$a2,11496($at)
    jalr	$t9
    sw	$a1,11492($at)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pdrs

# Function: gl_c_pdrs
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f0fe770 - 0x0f0fe804 (Size: 148 bytes, Frame: 224)
.globl gl_c_pdrs
.ent gl_c_pdrs
gl_c_pdrs:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,19160 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20456($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fe7d8
    move	$s8,$a0
.L0f0fe79c:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pdrs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0fe7d8:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25000
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20456($gp)
    b	.L0f0fe79c
    ld	$a2,40($sp)
.end gl_c_pdrs

# Function: gl_n_pdrs
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f0fe804 - 0x0f0fe870 (Size: 108 bytes, Frame: 48)
.globl gl_n_pdrs
.ent gl_n_pdrs
gl_n_pdrs:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,19012 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_wstatep
    lh	$a2,0($a0)
    lw	$v0,0($v0)
    sd	$ra,0($sp)
    li	$v1,2
    sw	$a2,11488($v0)
    sd	$s8,8($sp)
    lh	$a1,2($a0)
    move	$s8,$a0
    addiu	$a0,$v0,11488
    sw	$a1,11492($v0)
    lw	$t9,28($v0)
    lh	$at,4($s8)
    sw	$v1,11484($v0)
    jalr	$t9
    sw	$at,11496($v0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pdrs

# Function: gl_i_pdri
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f0fe870 - 0x0f0fe8c0 (Size: 80 bytes, Frame: 48)
.globl gl_i_pdri
.ent gl_i_pdri
gl_i_pdri:
    # Line 33
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,18904 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$ra,0($sp)
    li	$v0,2
    sw	$a0,11488($at)
    addiu	$a0,$at,11488
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$a2,11496($at)
    jalr	$t9
    sw	$a1,11492($at)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pdri

# Function: gl_c_pdri
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f0fe8c0 - 0x0f0fe950 (Size: 144 bytes, Frame: 224)
.globl gl_c_pdri
.ent gl_c_pdri
gl_c_pdri:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,18824 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20452($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f0fe924
    move	$s8,$a0
.L0f0fe8ec:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pdri
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0fe924:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24984
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20452($gp)
    b	.L0f0fe8ec
    ld	$a2,48($sp)
.end gl_c_pdri

# Function: gl_n_pdri
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f0fe950 - 0x0f0fe9bc (Size: 108 bytes, Frame: 48)
.globl gl_n_pdri
.ent gl_n_pdri
gl_n_pdri:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,18680 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_wstatep
    lw	$a2,0($a0)
    lw	$v0,0($v0)
    sd	$ra,0($sp)
    li	$v1,2
    sw	$a2,11488($v0)
    sd	$s8,8($sp)
    lw	$a1,4($a0)
    move	$s8,$a0
    addiu	$a0,$v0,11488
    sw	$a1,11492($v0)
    lw	$t9,28($v0)
    lw	$at,8($s8)
    sw	$v1,11484($v0)
    jalr	$t9
    sw	$at,11496($v0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pdri

# Function: gl_i_pdr
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f0fe9bc - 0x0f0fea0c (Size: 80 bytes, Frame: 48)
.globl gl_i_pdr
.ent gl_i_pdr
gl_i_pdr:
    # Line 34
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,18572 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$ra,0($sp)
    li	$v0,1
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    lw	$t9,24($at)
    swc1	$f14,11496($at)
    swc1	$f13,11492($at)
    jalr	$t9
    swc1	$f12,11488($at)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pdr

# Function: gl_c_pdr
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f0fea0c - 0x0f0feaa0 (Size: 148 bytes, Frame: 224)
.globl gl_c_pdr
.ent gl_c_pdr
gl_c_pdr:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,18492 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20448($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f0fea74
    mov.s	$f30,$f12
.L0f0fea3c:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pdr
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0fea74:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24968
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f0fea3c
    sw	$at,-20448($gp)
.end gl_c_pdr

# Function: gl_n_pdr
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f0feaa0 - 0x0f0feb0c (Size: 108 bytes, Frame: 48)
.globl gl_n_pdr
.ent gl_n_pdr
gl_n_pdr:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,18344 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    lwc1	$f2,0($a0)
    lw	$at,0($at)
    sd	$ra,0($sp)
    li	$v0,1
    swc1	$f2,11488($at)
    sd	$s8,8($sp)
    lwc1	$f1,4($a0)
    move	$s8,$a0
    addiu	$a0,$at,11488
    swc1	$f1,11492($at)
    lw	$t9,24($at)
    lwc1	$f0,8($s8)
    sw	$v0,11484($at)
    jalr	$t9
    swc1	$f0,11496($at)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pdr

# Function: gl_i_pclos
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0feb0c - 0x0f0feb48 (Size: 60 bytes, Frame: 16)
.globl gl_i_pclos
.ent gl_i_pclos
gl_i_pclos:
    # Line 36
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff3
    addiu	$ra,$ra,18236
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_pclos

# Function: gl_c_pclos
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0feb48 - 0x0f0febac (Size: 100 bytes, Frame: 32)
.globl gl_c_pclos
.ent gl_c_pclos
gl_c_pclos:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,18176 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20444($gp)
    beqz	$at,.L0f0feb90
    sd	$ra,16($sp)
.L0f0feb68:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_pclos
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0feb90:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-24952
    li	$at,1
    b	.L0f0feb68
    sw	$at,-20444($gp)
.end gl_c_pclos

# Function: gl_n_pclos
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0febac - 0x0f0febf4 (Size: 72 bytes, Frame: 48)
.globl gl_n_pclos
.ent gl_n_pclos
gl_n_pclos:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff3
    addiu	$s8,$s8,18076
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pclos

# Function: gl_g_spclos
# Declared: Line 38 (Source lines: 40-42)
# Address: 0x0f0febf4 - 0x0f0fec28 (Size: 52 bytes, Frame: 16)
.globl gl_g_spclos
.ent gl_g_spclos
gl_g_spclos:
    # Line 40
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,18004 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 41
    la	$t9,pclos
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 42
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_spclos

