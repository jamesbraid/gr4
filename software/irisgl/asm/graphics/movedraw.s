# Source: ../igloo/graphics/movedraw.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/movedraw.c -o movedraw.T
# Total Functions: 41

.text

# Function: gl_i_move2s
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f0f0e24 - 0x0f0f0ebc (Size: 152 bytes, Frame: 192)
.globl gl_i_move2s
.ent gl_i_move2s
gl_i_move2s:
    # Line 27
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,9252 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$a1,16($sp)
    beqz	$at,.L0f0f0e5c
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f0e5c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    li	$ra,2
    ld	$v0,8($sp)
    ld	$at,0($sp)
    la	$t9,glVertex3iv
    ld	$v1,16($sp)
    addiu	$a0,$at,11488
    sw	$zero,11496($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_move2s

# Function: gl_c_move2s
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f0f0ebc - 0x0f0f0f40 (Size: 132 bytes, Frame: 192)
.globl gl_c_move2s
.ent gl_c_move2s
gl_c_move2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,9100 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20620($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f0f1c
    move	$s8,$a0
.L0f0f0ee8:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_move2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f0f1c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25736
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0f0ee8
    sw	$a2,-20620($gp)
.end gl_c_move2s

# Function: gl_n_move2s
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f0f0f40 - 0x0f0f0fe0 (Size: 160 bytes, Frame: 48)
.globl gl_n_move2s
.ent gl_n_move2s
gl_n_move2s:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,8968 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0f0f78
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f0f78:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    ld	$at,0($sp)
    lh	$v1,0($s3)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lh	$ra,2($s3)
    addiu	$a0,$at,11488
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
.end gl_n_move2s

# Function: gl_i_move2i
# Declared: Line 28 (Source lines: 28-28)
# Address: 0x0f0f0fe0 - 0x0f0f1078 (Size: 152 bytes, Frame: 192)
.globl gl_i_move2i
.ent gl_i_move2i
gl_i_move2i:
    # Line 28
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,8808 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$a1,16($sp)
    beqz	$at,.L0f0f1018
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f1018:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    li	$ra,2
    ld	$v0,8($sp)
    ld	$at,0($sp)
    la	$t9,glVertex3iv
    ld	$v1,16($sp)
    addiu	$a0,$at,11488
    sw	$zero,11496($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_move2i

# Function: gl_c_move2i
# Declared: Line 28 (Source lines: 28-28)
# Address: 0x0f0f1078 - 0x0f0f10fc (Size: 132 bytes, Frame: 192)
.globl gl_c_move2i
.ent gl_c_move2i
gl_c_move2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,8656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20616($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f10d8
    move	$s8,$a0
.L0f0f10a4:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_move2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f10d8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25720
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0f10a4
    sw	$a2,-20616($gp)
.end gl_c_move2i

# Function: gl_n_move2i
# Declared: Line 28 (Source lines: 28-28)
# Address: 0x0f0f10fc - 0x0f0f119c (Size: 160 bytes, Frame: 48)
.globl gl_n_move2i
.ent gl_n_move2i
gl_n_move2i:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,8524 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0f1134
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f1134:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    ld	$at,0($sp)
    lw	$v1,0($s3)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lw	$ra,4($s3)
    addiu	$a0,$at,11488
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
.end gl_n_move2i

# Function: gl_i_move2
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f0f119c - 0x0f0f123c (Size: 160 bytes, Frame: 192)
.globl gl_i_move2
.ent gl_i_move2
gl_i_move2:
    # Line 29
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,8364 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sdc1	$f13,8($sp)
    beqz	$at,.L0f0f11d4
    sdc1	$f12,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f11d4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,16($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    li	$at,1
    la	$t9,glVertex3fv
    mtc1	$zero,$f0
    ld	$ra,16($sp)
    ldc1	$f2,8($sp)
    ldc1	$f1,0($sp)
    addiu	$a0,$ra,11488
    swc1	$f2,11492($ra)
    swc1	$f1,11488($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    nop
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_move2

# Function: gl_c_move2
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f0f123c - 0x0f0f12c0 (Size: 132 bytes, Frame: 192)
.globl gl_c_move2
.ent gl_c_move2
gl_c_move2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,8204 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20612($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f0f129c
    mov.s	$f30,$f12
.L0f0f1268:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_move2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f129c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-25704
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f0f1268
    sw	$at,-20612($gp)
.end gl_c_move2

# Function: gl_n_move2
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f0f12c0 - 0x0f0f1368 (Size: 168 bytes, Frame: 48)
.globl gl_n_move2
.ent gl_n_move2
gl_n_move2:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,8072 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0f12f8
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f12f8:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    li	$at,1
    ld	$ra,0($sp)
    lwc1	$f2,0($s3)
    la	$t9,glVertex3fv
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,4($s3)
    sw	$at,11484($ra)
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
.end gl_n_move2

# Function: gl_i_moves
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0f1368 - 0x0f0f1408 (Size: 160 bytes, Frame: 208)
.globl gl_i_moves
.ent gl_i_moves
gl_i_moves:
    # Line 30
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,7904 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    lw	$at,0($at)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    beqz	$at,.L0f0f13a4
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f13a4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    li	$ra,2
    ld	$v0,8($sp)
    la	$t9,glVertex3iv
    ld	$at,0($sp)
    ld	$a1,16($sp)
    ld	$v1,24($sp)
    addiu	$a0,$at,11488
    sw	$a1,11496($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_moves

# Function: gl_c_moves
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0f1408 - 0x0f0f149c (Size: 148 bytes, Frame: 224)
.globl gl_c_moves
.ent gl_c_moves
gl_c_moves:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,7744 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20608($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f1470
    move	$s8,$a0
.L0f0f1434:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_moves
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f1470:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25688
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20608($gp)
    b	.L0f0f1434
    ld	$a2,40($sp)
.end gl_c_moves

# Function: gl_n_moves
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0f149c - 0x0f0f1540 (Size: 164 bytes, Frame: 48)
.globl gl_n_moves
.ent gl_n_moves
gl_n_moves:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,7596 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0f14d4
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f14d4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    ld	$at,0($sp)
    lh	$a0,0($s3)
    sw	$a0,11488($at)
    lh	$v1,2($s3)
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,4($s3)
    la	$t9,glVertex3iv
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
.end gl_n_moves

# Function: gl_i_movei
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f0f1540 - 0x0f0f15e0 (Size: 160 bytes, Frame: 208)
.globl gl_i_movei
.ent gl_i_movei
gl_i_movei:
    # Line 31
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,7432 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    lw	$at,0($at)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    beqz	$at,.L0f0f157c
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f157c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    li	$ra,2
    ld	$v0,8($sp)
    la	$t9,glVertex3iv
    ld	$at,0($sp)
    ld	$a1,16($sp)
    ld	$v1,24($sp)
    addiu	$a0,$at,11488
    sw	$a1,11496($at)
    sw	$v1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$v0,11488($at)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_movei

# Function: gl_c_movei
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f0f15e0 - 0x0f0f1670 (Size: 144 bytes, Frame: 224)
.globl gl_c_movei
.ent gl_c_movei
gl_c_movei:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,7272 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20604($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f0f1644
    move	$s8,$a0
.L0f0f160c:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_movei
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f1644:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-25672
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20604($gp)
    b	.L0f0f160c
    ld	$a2,48($sp)
.end gl_c_movei

# Function: gl_n_movei
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f0f1670 - 0x0f0f1714 (Size: 164 bytes, Frame: 48)
.globl gl_n_movei
.ent gl_n_movei
gl_n_movei:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,7128 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0f16a8
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f16a8:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    ld	$at,0($sp)
    lw	$a0,0($s3)
    sw	$a0,11488($at)
    lw	$v1,4($s3)
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,8($s3)
    la	$t9,glVertex3iv
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
.end gl_n_movei

# Function: gl_i_move
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f0f1714 - 0x0f0f17b4 (Size: 160 bytes, Frame: 208)
.globl gl_i_move
.ent gl_i_move
gl_i_move:
    # Line 32
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,6964 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    lw	$at,0($at)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    beqz	$at,.L0f0f1750
    sdc1	$f12,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f1750:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,24($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    li	$ra,1
    ldc1	$f0,0($sp)
    la	$t9,glVertex3fv
    ld	$at,24($sp)
    ldc1	$f2,16($sp)
    ldc1	$f1,8($sp)
    addiu	$a0,$at,11488
    swc1	$f2,11496($at)
    swc1	$f1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    swc1	$f0,11488($at)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_move

# Function: gl_c_move
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f0f17b4 - 0x0f0f1848 (Size: 148 bytes, Frame: 224)
.globl gl_c_move
.ent gl_c_move
gl_c_move:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,6804 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20600($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f0f181c
    mov.s	$f30,$f12
.L0f0f17e4:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_move
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f181c:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25656
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f0f17e4
    sw	$at,-20600($gp)
.end gl_c_move

# Function: gl_n_move
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f0f1848 - 0x0f0f18f0 (Size: 168 bytes, Frame: 48)
.globl gl_n_move
.ent gl_n_move
gl_n_move:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,6656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0f1880
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f1880:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    ld	$ra,0($sp)
    lwc1	$f2,0($s3)
    swc1	$f2,11488($ra)
    lwc1	$f1,4($s3)
    li	$at,1
    swc1	$f1,11492($ra)
    la	$t9,glVertex3fv
    lwc1	$f0,8($s3)
    addiu	$a0,$ra,11488
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
.end gl_n_move

# Function: gl_i_draw2s
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f0f18f0 - 0x0f0f1964 (Size: 116 bytes, Frame: 192)
.globl gl_i_draw2s
.ent gl_i_draw2s
gl_i_draw2s:
    # Line 34
    addiu	$sp,$sp,-64
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,6488 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$s8,$a0
    la	$t9,__iglooCheckDrawRestart
    lw	$at,0($at)
    sd	$ra,0($sp)
    bal __iglooCheckDrawRestart
    sd	$at,24($sp)
    li	$v1,2
    ld	$a1,24($sp)
    la	$t9,glVertex3iv
    ld	$a2,32($sp)
    addiu	$a0,$a1,11488
    sw	$zero,11496($a1)
    sw	$a2,11492($a1)
    sw	$s8,11488($a1)
    jalr	$t9
    sw	$v1,11484($a1)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_draw2s

# Function: gl_c_draw2s
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f0f1964 - 0x0f0f19e8 (Size: 132 bytes, Frame: 192)
.globl gl_c_draw2s
.ent gl_c_draw2s
gl_c_draw2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,6372 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20596($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f19c4
    move	$s8,$a0
.L0f0f1990:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_draw2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f19c4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25640
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0f1990
    sw	$a2,-20596($gp)
.end gl_c_draw2s

# Function: gl_n_draw2s
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f0f19e8 - 0x0f0f1a60 (Size: 120 bytes, Frame: 48)
.globl gl_n_draw2s
.ent gl_n_draw2s
gl_n_draw2s:
    addiu	$sp,$sp,-48
    sd	$s7,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,6240
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    move	$s7,$a0
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    lh	$v1,0($s7)
    addiu	$a0,$s8,11488
    li	$v0,2
    sw	$v1,11488($s8)
    la	$t9,glVertex3iv
    lh	$at,2($s7)
    sw	$v0,11484($s8)
    sw	$zero,11496($s8)
    jalr	$t9
    sw	$at,11492($s8)
    ld	$gp,16($sp)
    addiu	$v0,$s7,4
    ld	$ra,0($sp)
    ld	$s7,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_draw2s

# Function: gl_i_draw2i
# Declared: Line 35 (Source lines: 35-35)
# Address: 0x0f0f1a60 - 0x0f0f1ad4 (Size: 116 bytes, Frame: 192)
.globl gl_i_draw2i
.ent gl_i_draw2i
gl_i_draw2i:
    # Line 35
    addiu	$sp,$sp,-64
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,6120 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$s8,$a0
    la	$t9,__iglooCheckDrawRestart
    lw	$at,0($at)
    sd	$ra,0($sp)
    bal __iglooCheckDrawRestart
    sd	$at,24($sp)
    li	$v1,2
    ld	$a1,24($sp)
    la	$t9,glVertex3iv
    ld	$a2,32($sp)
    addiu	$a0,$a1,11488
    sw	$zero,11496($a1)
    sw	$a2,11492($a1)
    sw	$s8,11488($a1)
    jalr	$t9
    sw	$v1,11484($a1)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_draw2i

# Function: gl_c_draw2i
# Declared: Line 35 (Source lines: 35-35)
# Address: 0x0f0f1ad4 - 0x0f0f1b58 (Size: 132 bytes, Frame: 192)
.globl gl_c_draw2i
.ent gl_c_draw2i
gl_c_draw2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,6004 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20592($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f1b34
    move	$s8,$a0
.L0f0f1b00:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_draw2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f1b34:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25624
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0f1b00
    sw	$a2,-20592($gp)
.end gl_c_draw2i

# Function: gl_n_draw2i
# Declared: Line 35 (Source lines: 35-35)
# Address: 0x0f0f1b58 - 0x0f0f1bd0 (Size: 120 bytes, Frame: 48)
.globl gl_n_draw2i
.ent gl_n_draw2i
gl_n_draw2i:
    addiu	$sp,$sp,-48
    sd	$s7,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,5872
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    move	$s7,$a0
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    lw	$v1,0($s7)
    addiu	$a0,$s8,11488
    li	$v0,2
    sw	$v1,11488($s8)
    la	$t9,glVertex3iv
    lw	$at,4($s7)
    sw	$v0,11484($s8)
    sw	$zero,11496($s8)
    jalr	$t9
    sw	$at,11492($s8)
    ld	$gp,16($sp)
    addiu	$v0,$s7,8
    ld	$ra,0($sp)
    ld	$s7,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_draw2i

# Function: gl_i_draw2
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0f1bd0 - 0x0f0f1c48 (Size: 120 bytes, Frame: 192)
.globl gl_i_draw2
.ent gl_i_draw2
gl_i_draw2:
    # Line 36
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    sd	$s8,24($sp)
    sd	$gp,32($sp)
    sd	$ra,16($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,5752
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    mov.s	$f30,$f12
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    addiu	$a0,$s8,11488
    swc1	$f30,11488($s8)
    li	$at,1
    sw	$at,11484($s8)
    ldc1	$f1,8($sp)
    la	$t9,glVertex3fv
    mtc1	$zero,$f0
    swc1	$f1,11492($s8)
    jalr	$t9
    swc1	$f0,11496($s8)
    ld	$gp,32($sp)
    ld	$ra,16($sp)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_draw2

# Function: gl_c_draw2
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0f1c48 - 0x0f0f1ccc (Size: 132 bytes, Frame: 192)
.globl gl_c_draw2
.ent gl_c_draw2
gl_c_draw2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,5632 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20588($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f0f1ca8
    mov.s	$f30,$f12
.L0f0f1c74:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_draw2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f1ca8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-25608
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f0f1c74
    sw	$at,-20588($gp)
.end gl_c_draw2

# Function: gl_n_draw2
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f0f1ccc - 0x0f0f1d48 (Size: 124 bytes, Frame: 48)
.globl gl_n_draw2
.ent gl_n_draw2
gl_n_draw2:
    addiu	$sp,$sp,-48
    sd	$s7,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,5500
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    move	$s7,$a0
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    addiu	$a0,$s8,11488
    lwc1	$f2,0($s7)
    li	$at,1
    la	$t9,glVertex3fv
    swc1	$f2,11488($s8)
    mtc1	$zero,$f1
    lwc1	$f0,4($s7)
    sw	$at,11484($s8)
    swc1	$f1,11496($s8)
    jalr	$t9
    swc1	$f0,11492($s8)
    ld	$gp,16($sp)
    addiu	$v0,$s7,8
    ld	$ra,0($sp)
    ld	$s7,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_draw2

# Function: gl_i_draws
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f0f1d48 - 0x0f0f1dc4 (Size: 124 bytes, Frame: 208)
.globl gl_i_draws
.ent gl_i_draws
gl_i_draws:
    # Line 37
    addiu	$sp,$sp,-80
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,5376 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$s8,$a0
    la	$t9,__iglooCheckDrawRestart
    lw	$at,0($at)
    sd	$ra,0($sp)
    bal __iglooCheckDrawRestart
    sd	$at,24($sp)
    li	$v1,2
    la	$t9,glVertex3iv
    ld	$a1,24($sp)
    ld	$a3,32($sp)
    ld	$a2,40($sp)
    addiu	$a0,$a1,11488
    sw	$a3,11496($a1)
    sw	$a2,11492($a1)
    sw	$s8,11488($a1)
    jalr	$t9
    sw	$v1,11484($a1)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_draws

# Function: gl_c_draws
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f0f1dc4 - 0x0f0f1e58 (Size: 148 bytes, Frame: 224)
.globl gl_c_draws
.ent gl_c_draws
gl_c_draws:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,5252 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20584($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f1e2c
    move	$s8,$a0
.L0f0f1df0:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_draws
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f1e2c:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25592
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20584($gp)
    b	.L0f0f1df0
    ld	$a2,40($sp)
.end gl_c_draws

# Function: gl_n_draws
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f0f1e58 - 0x0f0f1ed4 (Size: 124 bytes, Frame: 48)
.globl gl_n_draws
.ent gl_n_draws
gl_n_draws:
    addiu	$sp,$sp,-48
    sd	$s7,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,5104
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    move	$s7,$a0
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    lh	$a0,0($s7)
    sw	$a0,11488($s8)
    lh	$v1,2($s7)
    li	$v0,2
    la	$t9,glVertex3iv
    sw	$v1,11492($s8)
    addiu	$a0,$s8,11488
    lh	$at,4($s7)
    sw	$v0,11484($s8)
    jalr	$t9
    sw	$at,11496($s8)
    ld	$gp,16($sp)
    addiu	$v0,$s7,8
    ld	$ra,0($sp)
    ld	$s7,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_draws

# Function: gl_i_drawi
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f0f1ed4 - 0x0f0f1f50 (Size: 124 bytes, Frame: 208)
.globl gl_i_drawi
.ent gl_i_drawi
gl_i_drawi:
    # Line 38
    addiu	$sp,$sp,-80
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,4980 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$s8,$a0
    la	$t9,__iglooCheckDrawRestart
    lw	$at,0($at)
    sd	$ra,0($sp)
    bal __iglooCheckDrawRestart
    sd	$at,24($sp)
    li	$v1,2
    la	$t9,glVertex3iv
    ld	$a1,24($sp)
    ld	$a3,32($sp)
    ld	$a2,40($sp)
    addiu	$a0,$a1,11488
    sw	$a3,11496($a1)
    sw	$a2,11492($a1)
    sw	$s8,11488($a1)
    jalr	$t9
    sw	$v1,11484($a1)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_drawi

# Function: gl_c_drawi
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f0f1f50 - 0x0f0f1fe0 (Size: 144 bytes, Frame: 224)
.globl gl_c_drawi
.ent gl_c_drawi
gl_c_drawi:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,4856 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20580($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f0f1fb4
    move	$s8,$a0
.L0f0f1f7c:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_drawi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f1fb4:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-25576
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20580($gp)
    b	.L0f0f1f7c
    ld	$a2,48($sp)
.end gl_c_drawi

# Function: gl_n_drawi
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f0f1fe0 - 0x0f0f205c (Size: 124 bytes, Frame: 48)
.globl gl_n_drawi
.ent gl_n_drawi
gl_n_drawi:
    addiu	$sp,$sp,-48
    sd	$s7,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,4712
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    move	$s7,$a0
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    lw	$a0,0($s7)
    sw	$a0,11488($s8)
    lw	$v1,4($s7)
    li	$v0,2
    la	$t9,glVertex3iv
    sw	$v1,11492($s8)
    addiu	$a0,$s8,11488
    lw	$at,8($s7)
    sw	$v0,11484($s8)
    jalr	$t9
    sw	$at,11496($s8)
    ld	$gp,16($sp)
    addiu	$v0,$s7,12
    ld	$ra,0($sp)
    ld	$s7,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_drawi

# Function: gl_i_draw
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f0f205c - 0x0f0f20d8 (Size: 124 bytes, Frame: 208)
.globl gl_i_draw
.ent gl_i_draw
gl_i_draw:
    # Line 39
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    sd	$s8,32($sp)
    sd	$gp,40($sp)
    sd	$ra,24($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,4588
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    mov.s	$f30,$f12
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    addiu	$a0,$s8,11488
    swc1	$f30,11488($s8)
    li	$at,1
    sw	$at,11484($s8)
    ldc1	$f1,8($sp)
    la	$t9,glVertex3fv
    ldc1	$f0,16($sp)
    swc1	$f1,11496($s8)
    jalr	$t9
    swc1	$f0,11492($s8)
    ld	$gp,40($sp)
    ld	$ra,24($sp)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_draw

# Function: gl_c_draw
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f0f20d8 - 0x0f0f216c (Size: 148 bytes, Frame: 224)
.globl gl_c_draw
.ent gl_c_draw
gl_c_draw:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,4464 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20576($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f0f2140
    mov.s	$f30,$f12
.L0f0f2108:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_draw
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f2140:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25560
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f0f2108
    sw	$at,-20576($gp)
.end gl_c_draw

# Function: gl_n_draw
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f0f216c - 0x0f0f21e8 (Size: 124 bytes, Frame: 48)
.globl gl_n_draw
.ent gl_n_draw
gl_n_draw:
    addiu	$sp,$sp,-48
    sd	$s7,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,4316
    addu	$gp,$t9,$ra
    la	$t9,__iglooCheckDrawRestart
    la	$s8,gl_wstatep
    move	$s7,$a0
    bal __iglooCheckDrawRestart
    lw	$s8,0($s8)
    lwc1	$f2,0($s7)
    swc1	$f2,11488($s8)
    lwc1	$f1,4($s7)
    addiu	$a0,$s8,11488
    li	$at,1
    swc1	$f1,11492($s8)
    la	$t9,glVertex3fv
    lwc1	$f0,8($s7)
    sw	$at,11484($s8)
    jalr	$t9
    swc1	$f0,11496($s8)
    ld	$gp,16($sp)
    addiu	$v0,$s7,12
    ld	$ra,0($sp)
    ld	$s7,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_draw

# Function: __iglooCheckDrawRestart
# Declared: Line 42 (Source lines: 43-60)
# Address: 0x0f0f21e8 - 0x0f0f2290 (Size: 168 bytes, Frame: 32)
.globl __iglooCheckDrawRestart
.ent __iglooCheckDrawRestart
__iglooCheckDrawRestart:
    # Line 43
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,4192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 44
    la	$a2,gl_wstatep
    la	$at,gl_inMoveDraw
    lw	$a2,0($a2)
    lw	$at,0($at)
    move	$v0,$a2
    beqz	$at,.L0f0f2224
    sd	$a2,0($sp)
.L0f0f2218:
    ld	$gp,8($sp)
    # Line 60
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f2224:
    # Line 47
    lw	$t9,216($a2)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,3
    # Line 48
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    li	$a0,1
    ld	$v1,0($sp)
    lw	$v1,11484($v1)
    li	$a0,1
    beq	$v1,$a0,.L0f0f2270
    # Line 54
    ld	$a0,0($sp)
    la	$t9,glVertex3i
    lw	$a2,11496($a0)
    lw	$a1,11492($a0)
    jalr	$t9
    lw	$a0,11488($a0)
    b	.L0f0f2218
    ld	$ra,16($sp)
.L0f0f2270:
    # Line 50
    ld	$a1,0($sp)
    la	$t9,glVertex3f
    lwc1	$f14,11496($a1)
    lwc1	$f13,11492($a1)
    jalr	$t9
    lwc1	$f12,11488($a1)
    b	.L0f0f2218
    ld	$ra,16($sp)
.end __iglooCheckDrawRestart

# Function: __iglooSetMoveDraw
# Declared: Line 66 (Source lines: 67-96)
# Address: 0x0f0f2290 - 0x0f0f22d4 (Size: 68 bytes, Frame: 0)
.globl __iglooSetMoveDraw
.ent __iglooSetMoveDraw
__iglooSetMoveDraw:
    # Line 67
    lui	$v1,0xfff4
    addiu	$v1,$v1,4024
    addu	$at,$t9,$v1
    # Line 72
    lw	$v0,-32364($at)
    sw	$a0,0($v0)
    # Line 79
    lw	$a3,4100($zero)
    beqz	$a3,.L0f0f22c0
    # Line 89
    li	$a2,-2
    # Line 79
    beqz	$a0,.L0f0f22c8
    lw	$a4,96($a3)
    # Line 85
    ori	$a1,$a4,0x1
    sw	$a1,96($a3)
.L0f0f22c0:
    # Line 96
    jr	$ra
    nop
.L0f0f22c8:
    # Line 89
    and	$a2,$a4,$a2
    # Line 96
    jr	$ra
    # Line 89
    sw	$a2,96($a3)
.end __iglooSetMoveDraw

# Function: __iglooCloseMoveDraw
# Declared: Line 102 (Source lines: 103-138)
# Address: 0x0f0f22d4 - 0x0f0f2360 (Size: 140 bytes, Frame: 16)
.globl __iglooCloseMoveDraw
.ent __iglooCloseMoveDraw
__iglooCloseMoveDraw:
    # Line 103
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,3956 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 110
    la	$t9,__iglooGetCurrentContextInfo
    sd	$ra,0($sp)
    jalr	$t9
    nop
    beqz	$v0,.L0f0f2354
    ld	$ra,0($sp)
    la	$v0,gl_inMoveDraw
    lw	$v0,0($v0)
    beqz	$v0,.L0f0f2354
    # Line 123
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    beqz	$a1,.L0f0f232c
    # Line 125
    la	$t9,glEnd
    # Line 123
    lw	$t9,220($a1)
    bnez	$t9,.L0f0f233c
    nop
    # Line 125
    la	$t9,glEnd
.L0f0f232c:
    jalr	$t9
    nop
    b	.L0f0f2344
    nop
.L0f0f233c:
    # Line 129
    jalr	$t9
    nop
.L0f0f2344:
    # Line 131
    la	$t9,__iglooSetMoveDraw
    bal __iglooSetMoveDraw
    move	$a0,$zero
    ld	$ra,0($sp)
.L0f0f2354:
    ld	$gp,8($sp)
    # Line 138
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooCloseMoveDraw

# Function: __iglooCloseMoveDrawFromTable
# Declared: Line 144 (Source lines: 145-152)
# Address: 0x0f0f2360 - 0x0f0f2394 (Size: 52 bytes, Frame: 16)
.globl __iglooCloseMoveDrawFromTable
.ent __iglooCloseMoveDrawFromTable
__iglooCloseMoveDrawFromTable:
    # Line 145
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,3816 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 151
    la	$t9,__iglooCloseMoveDraw
    sd	$ra,0($sp)
    bal __iglooCloseMoveDraw
    nop
    # Line 152
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooCloseMoveDrawFromTable

# Function: __iglooNCloseMoveDraw
# Declared: Line 154 (Source lines: 155-165)
# Address: 0x0f0f2394 - 0x0f0f23c8 (Size: 52 bytes, Frame: 16)
.globl __iglooNCloseMoveDraw
.ent __iglooNCloseMoveDraw
__iglooNCloseMoveDraw:
    # Line 155
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,3764 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 164
    la	$t9,__iglooCloseMoveDraw
    sd	$ra,0($sp)
    bal __iglooCloseMoveDraw
    nop
    # Line 165
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooNCloseMoveDraw

