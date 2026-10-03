# Source: ../igloo/graphics/cmov.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/cmov.c -o cmov.T
# Total Functions: 19

.text

# Function: saveCmov
# Declared: Line 15 (Source lines: 22-27)
# Address: 0x0f09cb18 - 0x0f09cb38 (Size: 32 bytes, Frame: 0)
.ent saveCmov
saveCmov:
    # Line 22
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    # Line 23
    li	$at,1
    # Line 26
    swc1	$f14,11876($v0)
    # Line 25
    swc1	$f13,11872($v0)
    # Line 24
    swc1	$f12,11868($v0)
    # Line 27
    jr	$ra
    # Line 23
    sb	$at,11864($v0)
.end saveCmov

# Function: gl_i_cmov2s
# Declared: Line 71 (Source lines: 71-71)
# Address: 0x0f09cb38 - 0x0f09cbc0 (Size: 136 bytes, Frame: 48)
.globl gl_i_cmov2s
.ent gl_i_cmov2s
gl_i_cmov2s:
    # Line 71
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,26384 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sd	$a1,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f09cb74
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09cb74:
    la	$t9,glRasterPos2s
    move	$a0,$s8
    jalr	$t9
    ld	$a1,16($sp)
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    la	$t9,sub_0f0a0000
    mtc1	$zero,$f14
    mtc1	$ra,$f13
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f13,$f13
    ld	$s8,0($sp)
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_cmov2s

# Function: gl_c_cmov2s
# Declared: Line 71 (Source lines: 71-71)
# Address: 0x0f09cbc0 - 0x0f09cc44 (Size: 132 bytes, Frame: 192)
.globl gl_c_cmov2s
.ent gl_c_cmov2s
gl_c_cmov2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,26248 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20976($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09cc20
    move	$s8,$a0
.L0f09cbec:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_cmov2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09cc20:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29312
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f09cbec
    sw	$a2,-20976($gp)
.end gl_c_cmov2s

# Function: gl_n_cmov2s
# Declared: Line 71 (Source lines: 71-71)
# Address: 0x0f09cc44 - 0x0f09cccc (Size: 136 bytes, Frame: 48)
.globl gl_n_cmov2s
.ent gl_n_cmov2s
gl_n_cmov2s:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,26116 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f09cc7c
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09cc7c:
    la	$t9,glRasterPos2s
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,0($s7)
    lh	$at,2($s7)
    mtc1	$at,$f13
    la	$t9,sub_0f0a0000
    lh	$ra,0($s7)
    cvt.s.w	$f13,$f13
    mtc1	$zero,$f14
    mtc1	$ra,$f12
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    addiu	$v0,$s7,4
    ld	$s7,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_cmov2s

# Function: gl_i_cmov2i
# Declared: Line 72 (Source lines: 72-72)
# Address: 0x0f09cccc - 0x0f09cd54 (Size: 136 bytes, Frame: 48)
.globl gl_i_cmov2i
.ent gl_i_cmov2i
gl_i_cmov2i:
    # Line 72
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25980 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sd	$a1,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f09cd08
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09cd08:
    la	$t9,glRasterPos2i
    move	$a0,$s8
    jalr	$t9
    ld	$a1,16($sp)
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    la	$t9,sub_0f0a0000
    mtc1	$zero,$f14
    mtc1	$ra,$f13
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f13,$f13
    ld	$s8,0($sp)
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_cmov2i

# Function: gl_c_cmov2i
# Declared: Line 72 (Source lines: 72-72)
# Address: 0x0f09cd54 - 0x0f09cdd8 (Size: 132 bytes, Frame: 192)
.globl gl_c_cmov2i
.ent gl_c_cmov2i
gl_c_cmov2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25844 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20972($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09cdb4
    move	$s8,$a0
.L0f09cd80:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_cmov2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09cdb4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29328
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f09cd80
    sw	$a2,-20972($gp)
.end gl_c_cmov2i

# Function: gl_n_cmov2i
# Declared: Line 72 (Source lines: 72-72)
# Address: 0x0f09cdd8 - 0x0f09ce60 (Size: 136 bytes, Frame: 48)
.globl gl_n_cmov2i
.ent gl_n_cmov2i
gl_n_cmov2i:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25712 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f09ce10
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09ce10:
    la	$t9,glRasterPos2i
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,0($s7)
    lw	$at,4($s7)
    mtc1	$at,$f13
    la	$t9,sub_0f0a0000
    lw	$ra,0($s7)
    cvt.s.w	$f13,$f13
    mtc1	$zero,$f14
    mtc1	$ra,$f12
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_cmov2i

# Function: gl_i_cmov2
# Declared: Line 73 (Source lines: 73-73)
# Address: 0x0f09ce60 - 0x0f09ced8 (Size: 120 bytes, Frame: 48)
.globl gl_i_cmov2
.ent gl_i_cmov2
gl_i_cmov2:
    # Line 73
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25576 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f09ce9c
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09ce9c:
    la	$t9,glRasterPos2f
    mov.s	$f12,$f30
    jalr	$t9
    ldc1	$f13,8($sp)
    la	$t9,sub_0f0a0000
    mov.s	$f12,$f30
    ldc1	$f13,8($sp)
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    mtc1	$zero,$f14
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_cmov2

# Function: gl_c_cmov2
# Declared: Line 73 (Source lines: 73-73)
# Address: 0x0f09ced8 - 0x0f09cf5c (Size: 132 bytes, Frame: 192)
.globl gl_c_cmov2
.ent gl_c_cmov2
gl_c_cmov2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25456 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20968($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f09cf38
    mov.s	$f30,$f12
.L0f09cf04:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_cmov2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09cf38:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,29344
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f09cf04
    sw	$at,-20968($gp)
.end gl_c_cmov2

# Function: gl_n_cmov2
# Declared: Line 73 (Source lines: 73-73)
# Address: 0x0f09cf5c - 0x0f09cfd4 (Size: 120 bytes, Frame: 48)
.globl gl_n_cmov2
.ent gl_n_cmov2
gl_n_cmov2:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25324 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f09cf94
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09cf94:
    la	$t9,glRasterPos2f
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,sub_0f0a0000
    mtc1	$zero,$f14
    lwc1	$f13,4($s7)
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    lwc1	$f12,0($s7)
    ld	$ra,16($sp)
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_cmov2

# Function: gl_i_cmovs
# Declared: Line 74 (Source lines: 74-74)
# Address: 0x0f09cfd4 - 0x0f09d068 (Size: 148 bytes, Frame: 208)
.globl gl_i_cmovs
.ent gl_i_cmovs
gl_i_cmovs:
    # Line 74
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25204 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sd	$a2,16($sp)
    lw	$at,0($at)
    sd	$a1,24($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f09d014
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09d014:
    la	$t9,glRasterPos3s
    move	$a0,$s8
    ld	$a1,24($sp)
    jalr	$t9
    ld	$a2,16($sp)
    mtc1	$s8,$f12
    ld	$at,16($sp)
    cvt.s.w	$f12,$f12
    mtc1	$at,$f14
    la	$t9,sub_0f0a0000
    ld	$ra,24($sp)
    cvt.s.w	$f14,$f14
    mtc1	$ra,$f13
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f13,$f13
    ld	$s8,0($sp)
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_cmovs

# Function: gl_c_cmovs
# Declared: Line 74 (Source lines: 74-74)
# Address: 0x0f09d068 - 0x0f09d0fc (Size: 148 bytes, Frame: 224)
.globl gl_c_cmovs
.ent gl_c_cmovs
gl_c_cmovs:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,25056 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20964($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09d0d0
    move	$s8,$a0
.L0f09d094:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_cmovs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09d0d0:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29360
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20964($gp)
    b	.L0f09d094
    ld	$a2,40($sp)
.end gl_c_cmovs

# Function: gl_n_cmovs
# Declared: Line 74 (Source lines: 74-74)
# Address: 0x0f09d0fc - 0x0f09d190 (Size: 148 bytes, Frame: 48)
.globl gl_n_cmovs
.ent gl_n_cmovs
gl_n_cmovs:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,24908 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f09d134
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09d134:
    la	$t9,glRasterPos3s
    lh	$a2,4($s7)
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,0($s7)
    lh	$v0,4($s7)
    mtc1	$v0,$f14
    lh	$at,2($s7)
    cvt.s.w	$f14,$f14
    mtc1	$at,$f13
    la	$t9,sub_0f0a0000
    lh	$ra,0($s7)
    cvt.s.w	$f13,$f13
    mtc1	$ra,$f12
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_cmovs

# Function: gl_i_cmovi
# Declared: Line 75 (Source lines: 75-75)
# Address: 0x0f09d190 - 0x0f09d224 (Size: 148 bytes, Frame: 208)
.globl gl_i_cmovi
.ent gl_i_cmovi
gl_i_cmovi:
    # Line 75
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,24760 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sd	$a2,16($sp)
    lw	$at,0($at)
    sd	$a1,24($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f09d1d0
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09d1d0:
    la	$t9,glRasterPos3i
    move	$a0,$s8
    ld	$a1,24($sp)
    jalr	$t9
    ld	$a2,16($sp)
    mtc1	$s8,$f12
    ld	$at,16($sp)
    cvt.s.w	$f12,$f12
    mtc1	$at,$f14
    la	$t9,sub_0f0a0000
    ld	$ra,24($sp)
    cvt.s.w	$f14,$f14
    mtc1	$ra,$f13
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f13,$f13
    ld	$s8,0($sp)
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_cmovi

# Function: gl_c_cmovi
# Declared: Line 75 (Source lines: 75-75)
# Address: 0x0f09d224 - 0x0f09d2b4 (Size: 144 bytes, Frame: 224)
.globl gl_c_cmovi
.ent gl_c_cmovi
gl_c_cmovi:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,24612 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20960($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f09d288
    move	$s8,$a0
.L0f09d250:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_cmovi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09d288:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,29376
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20960($gp)
    b	.L0f09d250
    ld	$a2,48($sp)
.end gl_c_cmovi

# Function: gl_n_cmovi
# Declared: Line 75 (Source lines: 75-75)
# Address: 0x0f09d2b4 - 0x0f09d348 (Size: 148 bytes, Frame: 48)
.globl gl_n_cmovi
.ent gl_n_cmovi
gl_n_cmovi:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,24468 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f09d2ec
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09d2ec:
    la	$t9,glRasterPos3i
    lw	$a2,8($s7)
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,0($s7)
    lw	$v0,8($s7)
    mtc1	$v0,$f14
    lw	$at,4($s7)
    cvt.s.w	$f14,$f14
    mtc1	$at,$f13
    la	$t9,sub_0f0a0000
    lw	$ra,0($s7)
    cvt.s.w	$f13,$f13
    mtc1	$ra,$f12
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    addiu	$v0,$s7,12
    ld	$s7,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_cmovi

# Function: gl_i_cmov
# Declared: Line 76 (Source lines: 76-76)
# Address: 0x0f09d348 - 0x0f09d3c8 (Size: 128 bytes, Frame: 208)
.globl gl_i_cmov
.ent gl_i_cmov
gl_i_cmov:
    # Line 76
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,24320 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sdc1	$f14,8($sp)
    lw	$at,0($at)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f09d388
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09d388:
    la	$t9,glRasterPos3f
    mov.s	$f12,$f30
    ldc1	$f13,16($sp)
    jalr	$t9
    ldc1	$f14,8($sp)
    la	$t9,sub_0f0a0000
    mov.s	$f12,$f30
    ldc1	$f13,16($sp)
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    ldc1	$f14,8($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_cmov

# Function: gl_c_cmov
# Declared: Line 76 (Source lines: 76-76)
# Address: 0x0f09d3c8 - 0x0f09d45c (Size: 148 bytes, Frame: 224)
.globl gl_c_cmov
.ent gl_c_cmov
gl_c_cmov:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,24192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20956($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f09d430
    mov.s	$f30,$f12
.L0f09d3f8:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_cmov
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09d430:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29392
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f09d3f8
    sw	$at,-20956($gp)
.end gl_c_cmov

# Function: gl_n_cmov
# Declared: Line 76 (Source lines: 76-76)
# Address: 0x0f09d45c - 0x0f09d4d8 (Size: 124 bytes, Frame: 48)
.globl gl_n_cmov
.ent gl_n_cmov
gl_n_cmov:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,24044 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f09d494
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09d494:
    la	$t9,glRasterPos3f
    lwc1	$f14,8($s7)
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,sub_0f0a0000
    lwc1	$f14,8($s7)
    lwc1	$f13,4($s7)
    addiu	$t9,$t9,-13544
    bal gl_g_isobj
    lwc1	$f12,0($s7)
    ld	$ra,16($sp)
    addiu	$v0,$s7,12
    ld	$s7,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_cmov

