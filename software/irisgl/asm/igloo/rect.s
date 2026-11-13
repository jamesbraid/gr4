# Source: ../igloo/rect.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/rect.c -o rect.T
# Total Functions: 36

.text

# Function: gl_i_rect
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f104a00 - 0x0f104ac4 (Size: 196 bytes, Frame: 224)
.globl gl_i_rect
.ent gl_i_rect
gl_i_rect:
    # Line 31
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-6072 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    lw	$at,0($at)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f104a44
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f104a44:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,32($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f30
    jalr	$t9
    ldc1	$f13,24($sp)
    la	$t9,glVertex2f
    ldc1	$f12,16($sp)
    jalr	$t9
    ldc1	$f13,24($sp)
    la	$t9,glVertex2f
    ldc1	$f12,16($sp)
    jalr	$t9
    ldc1	$f13,8($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f30
    jalr	$t9
    ldc1	$f13,8($sp)
    ldc1	$f30,0($sp)
    ld	$t9,32($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_rect

# Function: gl_c_rect
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f104ac4 - 0x0f104b68 (Size: 164 bytes, Frame: 240)
.globl gl_c_rect
.ent gl_c_rect
gl_c_rect:
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-6268 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20344($gp)
    sd	$ra,64($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f104b34
    mov.s	$f30,$f12
.L0f104af8:
    addiu	$a1,$sp,0
    li	$a0,10
    swc1	$f6,16($sp)
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rect
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,64($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f104b34:
    sdc1	$f4,56($sp)
    sdc1	$f5,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f6,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24552
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    ldc1	$f4,56($sp)
    li	$at,1
    b	.L0f104af8
    sw	$at,-20344($gp)
.end gl_c_rect

# Function: gl_n_rect
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f104b68 - 0x0f104c24 (Size: 188 bytes, Frame: 48)
.globl gl_n_rect
.ent gl_n_rect
gl_n_rect:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-6432 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f104ba0
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f104ba0:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2f
    lwc1	$f13,4($s3)
    jalr	$t9
    lwc1	$f12,0($s3)
    la	$t9,glVertex2f
    lwc1	$f13,4($s3)
    jalr	$t9
    lwc1	$f12,8($s3)
    la	$t9,glVertex2f
    lwc1	$f13,12($s3)
    jalr	$t9
    lwc1	$f12,8($s3)
    la	$t9,glVertex2f
    lwc1	$f13,12($s3)
    jalr	$t9
    lwc1	$f12,0($s3)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,16
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_rect

# Function: gl_i_sbox
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f104c24 - 0x0f104ce8 (Size: 196 bytes, Frame: 224)
.globl gl_i_sbox
.ent gl_i_sbox
gl_i_sbox:
    # Line 34
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-6620 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    lw	$at,0($at)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f104c68
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f104c68:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,32($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f30
    jalr	$t9
    ldc1	$f13,24($sp)
    la	$t9,glVertex2f
    ldc1	$f12,16($sp)
    jalr	$t9
    ldc1	$f13,24($sp)
    la	$t9,glVertex2f
    ldc1	$f12,16($sp)
    jalr	$t9
    ldc1	$f13,8($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f30
    jalr	$t9
    ldc1	$f13,8($sp)
    ldc1	$f30,0($sp)
    ld	$t9,32($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_sbox

# Function: gl_c_sbox
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f104ce8 - 0x0f104d8c (Size: 164 bytes, Frame: 240)
.globl gl_c_sbox
.ent gl_c_sbox
gl_c_sbox:
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-6816 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20340($gp)
    sd	$ra,64($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f104d58
    mov.s	$f30,$f12
.L0f104d1c:
    addiu	$a1,$sp,0
    li	$a0,10
    swc1	$f6,16($sp)
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_sbox
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,64($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f104d58:
    sdc1	$f4,56($sp)
    sdc1	$f5,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f6,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24536
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    ldc1	$f4,56($sp)
    li	$at,1
    b	.L0f104d1c
    sw	$at,-20340($gp)
.end gl_c_sbox

# Function: gl_n_sbox
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f104d8c - 0x0f104e48 (Size: 188 bytes, Frame: 48)
.globl gl_n_sbox
.ent gl_n_sbox
gl_n_sbox:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-6980 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f104dc4
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f104dc4:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2f
    lwc1	$f13,4($s3)
    jalr	$t9
    lwc1	$f12,0($s3)
    la	$t9,glVertex2f
    lwc1	$f13,4($s3)
    jalr	$t9
    lwc1	$f12,8($s3)
    la	$t9,glVertex2f
    lwc1	$f13,12($s3)
    jalr	$t9
    lwc1	$f12,8($s3)
    la	$t9,glVertex2f
    lwc1	$f13,12($s3)
    jalr	$t9
    lwc1	$f12,0($s3)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,16
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_sbox

# Function: gl_i_recti
# Declared: Line 54 (Source lines: 54-54)
# Address: 0x0f104e48 - 0x0f104f0c (Size: 196 bytes, Frame: 224)
.globl gl_i_recti
.ent gl_i_recti
gl_i_recti:
    # Line 54
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-7168 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    lw	$at,0($at)
    sd	$a1,40($sp)
    sd	$s2,8($sp)
    beqz	$at,.L0f104e8c
    move	$s2,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f104e8c:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2i
    move	$a0,$s2
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2i
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2i
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,24($sp)
    la	$t9,glVertex2i
    move	$a0,$s2
    jalr	$t9
    ld	$a1,24($sp)
    ld	$s2,8($sp)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,48($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_recti

# Function: gl_c_recti
# Declared: Line 54 (Source lines: 54-54)
# Address: 0x0f104f0c - 0x0f104fa8 (Size: 156 bytes, Frame: 240)
.globl gl_c_recti
.ent gl_c_recti
gl_c_recti:
    move	$a5,$a1
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-7364 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20336($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f104f74
    move	$s8,$a0
.L0f104f38:
    addiu	$a1,$sp,0
    li	$a0,10
    sw	$a3,16($sp)
    sw	$a2,12($sp)
    sw	$a5,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_recti
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f104f74:
    sd	$a5,64($sp)
    sd	$a2,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24520
    ld	$a3,48($sp)
    ld	$a5,64($sp)
    li	$a2,1
    sw	$a2,-20336($gp)
    b	.L0f104f38
    ld	$a2,56($sp)
.end gl_c_recti

# Function: gl_n_recti
# Declared: Line 54 (Source lines: 54-54)
# Address: 0x0f104fa8 - 0x0f105064 (Size: 188 bytes, Frame: 48)
.globl gl_n_recti
.ent gl_n_recti
gl_n_recti:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-7520 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f104fe0
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f104fe0:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2i
    lw	$a1,4($s3)
    jalr	$t9
    lw	$a0,0($s3)
    la	$t9,glVertex2i
    lw	$a1,4($s3)
    jalr	$t9
    lw	$a0,8($s3)
    la	$t9,glVertex2i
    lw	$a1,12($s3)
    jalr	$t9
    lw	$a0,8($s3)
    la	$t9,glVertex2i
    lw	$a1,12($s3)
    jalr	$t9
    lw	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,16
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_recti

# Function: gl_i_sboxi
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f105064 - 0x0f105128 (Size: 196 bytes, Frame: 224)
.globl gl_i_sboxi
.ent gl_i_sboxi
gl_i_sboxi:
    # Line 57
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-7708 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    lw	$at,0($at)
    sd	$a1,40($sp)
    sd	$s2,8($sp)
    beqz	$at,.L0f1050a8
    move	$s2,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1050a8:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2i
    move	$a0,$s2
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2i
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2i
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,24($sp)
    la	$t9,glVertex2i
    move	$a0,$s2
    jalr	$t9
    ld	$a1,24($sp)
    ld	$s2,8($sp)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,48($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_sboxi

# Function: gl_c_sboxi
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f105128 - 0x0f1051c4 (Size: 156 bytes, Frame: 240)
.globl gl_c_sboxi
.ent gl_c_sboxi
gl_c_sboxi:
    move	$a5,$a1
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-7904 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20332($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f105190
    move	$s8,$a0
.L0f105154:
    addiu	$a1,$sp,0
    li	$a0,10
    sw	$a3,16($sp)
    sw	$a2,12($sp)
    sw	$a5,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_sboxi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f105190:
    sd	$a5,64($sp)
    sd	$a2,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24504
    ld	$a3,48($sp)
    ld	$a5,64($sp)
    li	$a2,1
    sw	$a2,-20332($gp)
    b	.L0f105154
    ld	$a2,56($sp)
.end gl_c_sboxi

# Function: gl_n_sboxi
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f1051c4 - 0x0f105280 (Size: 188 bytes, Frame: 48)
.globl gl_n_sboxi
.ent gl_n_sboxi
gl_n_sboxi:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-8060 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f1051fc
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1051fc:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2i
    lw	$a1,4($s3)
    jalr	$t9
    lw	$a0,0($s3)
    la	$t9,glVertex2i
    lw	$a1,4($s3)
    jalr	$t9
    lw	$a0,8($s3)
    la	$t9,glVertex2i
    lw	$a1,12($s3)
    jalr	$t9
    lw	$a0,8($s3)
    la	$t9,glVertex2i
    lw	$a1,12($s3)
    jalr	$t9
    lw	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,16
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_sboxi

# Function: gl_i_rects
# Declared: Line 71 (Source lines: 71-71)
# Address: 0x0f105280 - 0x0f105344 (Size: 196 bytes, Frame: 224)
.globl gl_i_rects
.ent gl_i_rects
gl_i_rects:
    # Line 71
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-8248 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    lw	$at,0($at)
    sd	$a1,40($sp)
    sd	$s2,8($sp)
    beqz	$at,.L0f1052c4
    move	$s2,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1052c4:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2s
    move	$a0,$s2
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2s
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2s
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,24($sp)
    la	$t9,glVertex2s
    move	$a0,$s2
    jalr	$t9
    ld	$a1,24($sp)
    ld	$s2,8($sp)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,48($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_rects

# Function: gl_c_rects
# Declared: Line 71 (Source lines: 71-71)
# Address: 0x0f105344 - 0x0f1053e0 (Size: 156 bytes, Frame: 224)
.globl gl_c_rects
.ent gl_c_rects
gl_c_rects:
    move	$a5,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-8444 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20328($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1053ac
    move	$s8,$a0
.L0f105370:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$a3,10($sp)
    sh	$a2,8($sp)
    sh	$a5,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rects
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1053ac:
    sd	$a5,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24488
    ld	$a3,40($sp)
    ld	$a5,56($sp)
    li	$a2,1
    sw	$a2,-20328($gp)
    b	.L0f105370
    ld	$a2,48($sp)
.end gl_c_rects

# Function: gl_n_rects
# Declared: Line 71 (Source lines: 71-71)
# Address: 0x0f1053e0 - 0x0f10549c (Size: 188 bytes, Frame: 48)
.globl gl_n_rects
.ent gl_n_rects
gl_n_rects:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-8600 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f105418
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f105418:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2s
    lh	$a1,2($s3)
    jalr	$t9
    lh	$a0,0($s3)
    la	$t9,glVertex2s
    lh	$a1,2($s3)
    jalr	$t9
    lh	$a0,4($s3)
    la	$t9,glVertex2s
    lh	$a1,6($s3)
    jalr	$t9
    lh	$a0,4($s3)
    la	$t9,glVertex2s
    lh	$a1,6($s3)
    jalr	$t9
    lh	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_rects

# Function: gl_i_sboxs
# Declared: Line 74 (Source lines: 74-74)
# Address: 0x0f10549c - 0x0f105560 (Size: 196 bytes, Frame: 224)
.globl gl_i_sboxs
.ent gl_i_sboxs
gl_i_sboxs:
    # Line 74
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-8788 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    lw	$at,0($at)
    sd	$a1,40($sp)
    sd	$s2,8($sp)
    beqz	$at,.L0f1054e0
    move	$s2,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1054e0:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2s
    move	$a0,$s2
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2s
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,40($sp)
    la	$t9,glVertex2s
    ld	$a0,32($sp)
    jalr	$t9
    ld	$a1,24($sp)
    la	$t9,glVertex2s
    move	$a0,$s2
    jalr	$t9
    ld	$a1,24($sp)
    ld	$s2,8($sp)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,48($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_sboxs

# Function: gl_c_sboxs
# Declared: Line 74 (Source lines: 74-74)
# Address: 0x0f105560 - 0x0f1055fc (Size: 156 bytes, Frame: 224)
.globl gl_c_sboxs
.ent gl_c_sboxs
gl_c_sboxs:
    move	$a5,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-8984 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20324($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1055c8
    move	$s8,$a0
.L0f10558c:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$a3,10($sp)
    sh	$a2,8($sp)
    sh	$a5,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_sboxs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1055c8:
    sd	$a5,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24472
    ld	$a3,40($sp)
    ld	$a5,56($sp)
    li	$a2,1
    sw	$a2,-20324($gp)
    b	.L0f10558c
    ld	$a2,48($sp)
.end gl_c_sboxs

# Function: gl_n_sboxs
# Declared: Line 74 (Source lines: 74-74)
# Address: 0x0f1055fc - 0x0f1056b8 (Size: 188 bytes, Frame: 48)
.globl gl_n_sboxs
.ent gl_n_sboxs
gl_n_sboxs:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-9140 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f105634
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f105634:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$t9,216($v1)
    li	$a0,2
    addiu	$v1,$v1,4
    jalr	$t9
    sd	$v1,0($sp)
    la	$t9,glVertex2s
    lh	$a1,2($s3)
    jalr	$t9
    lh	$a0,0($s3)
    la	$t9,glVertex2s
    lh	$a1,2($s3)
    jalr	$t9
    lh	$a0,4($s3)
    la	$t9,glVertex2s
    lh	$a1,6($s3)
    jalr	$t9
    lh	$a0,4($s3)
    la	$t9,glVertex2s
    lh	$a1,6($s3)
    jalr	$t9
    lh	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_sboxs

# Function: gl_i_rectf
# Declared: Line 88 (Source lines: 88-88)
# Address: 0x0f1056b8 - 0x0f1057e4 (Size: 300 bytes, Frame: 208)
.globl gl_i_rectf
.ent gl_i_rectf
gl_i_rectf:
    # Line 88
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sdc1	$f24,24($sp)
    mov.s	$f24,$f15
    sdc1	$f26,8($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-9328 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    mov.s	$f26,$f14
    sdc1	$f20,0($sp)
    lw	$at,0($at)
    mov.s	$f20,$f13
    sdc1	$f22,16($sp)
    beqz	$at,.L0f105708
    mov.s	$f22,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f105708:
    mov.s	$f12,$f22
    la	$t9,glRectf
    mov.s	$f13,$f20
    mov.s	$f14,$f26
    jalr	$t9
    mov.s	$f15,$f24
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2f
    mov.s	$f12,$f22
    jalr	$t9
    mov.s	$f13,$f20
    la	$t9,glVertex2f
    mov.s	$f12,$f26
    jalr	$t9
    mov.s	$f13,$f20
    ldc1	$f20,0($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f26
    jalr	$t9
    mov.s	$f13,$f24
    ldc1	$f26,8($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f22
    jalr	$t9
    mov.s	$f13,$f24
    ldc1	$f24,24($sp)
    ldc1	$f22,16($sp)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,40($sp)
    li	$a0,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f1057c8
    ld	$gp,32($sp)
    lw	$a1,48($a2)
    li	$v1,1028
    beq	$a1,$v1,.L0f1057d4
    la	$t9,glFlush
    beq	$a1,$a0,.L0f1057d0
    li	$at,1025
    beq	$a1,$at,.L0f1057d0
    li	$v0,1032
    beq	$a1,$v0,.L0f1057d4
    la	$t9,glFlush
.L0f1057c4:
    ld	$gp,32($sp)
.L0f1057c8:
    jr	$ra
    addiu	$sp,$sp,80
.L0f1057d0:
    la	$t9,glFlush
.L0f1057d4:
    jalr	$t9
    nop
    b	.L0f1057c4
    ld	$ra,40($sp)
.end gl_i_rectf

# Function: gl_c_rectf
# Declared: Line 88 (Source lines: 88-88)
# Address: 0x0f1057e4 - 0x0f105888 (Size: 164 bytes, Frame: 240)
.globl gl_c_rectf
.ent gl_c_rectf
gl_c_rectf:
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-9628 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20320($gp)
    sd	$ra,64($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f105854
    mov.s	$f30,$f12
.L0f105818:
    addiu	$a1,$sp,0
    li	$a0,10
    swc1	$f6,16($sp)
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rectf
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,64($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f105854:
    sdc1	$f4,56($sp)
    sdc1	$f5,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f6,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24456
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    ldc1	$f4,56($sp)
    li	$at,1
    b	.L0f105818
    sw	$at,-20320($gp)
.end gl_c_rectf

# Function: gl_n_rectf
# Declared: Line 88 (Source lines: 88-88)
# Address: 0x0f105888 - 0x0f105994 (Size: 268 bytes, Frame: 48)
.globl gl_n_rectf
.ent gl_n_rectf
gl_n_rectf:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-9792 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f1058c0
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1058c0:
    lwc1	$f15,12($s7)
    la	$t9,glRectf
    lwc1	$f14,8($s7)
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2f
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,glVertex2f
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,8($s7)
    la	$t9,glVertex2f
    lwc1	$f13,12($s7)
    jalr	$t9
    lwc1	$f12,8($s7)
    la	$t9,glVertex2f
    lwc1	$f13,12($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,16($sp)
    li	$a1,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f105970
    ld	$gp,0($sp)
    lw	$a0,48($a2)
    li	$v1,1028
    beq	$a0,$v1,.L0f105984
    la	$t9,glFlush
    beq	$a0,$a1,.L0f105980
    li	$at,1025
    beq	$a0,$at,.L0f105980
    li	$v0,1032
    beq	$a0,$v0,.L0f105984
    la	$t9,glFlush
.L0f10596c:
    ld	$gp,0($sp)
.L0f105970:
    addiu	$v0,$s7,16
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f105980:
    la	$t9,glFlush
.L0f105984:
    jalr	$t9
    nop
    b	.L0f10596c
    ld	$ra,16($sp)
.end gl_n_rectf

# Function: gl_i_sboxf
# Declared: Line 91 (Source lines: 91-91)
# Address: 0x0f105994 - 0x0f105ac0 (Size: 300 bytes, Frame: 208)
.globl gl_i_sboxf
.ent gl_i_sboxf
gl_i_sboxf:
    # Line 91
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sdc1	$f24,24($sp)
    mov.s	$f24,$f15
    sdc1	$f26,8($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-10060 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    mov.s	$f26,$f14
    sdc1	$f20,0($sp)
    lw	$at,0($at)
    mov.s	$f20,$f13
    sdc1	$f22,16($sp)
    beqz	$at,.L0f1059e4
    mov.s	$f22,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1059e4:
    mov.s	$f12,$f22
    la	$t9,glRectf
    mov.s	$f13,$f20
    mov.s	$f14,$f26
    jalr	$t9
    mov.s	$f15,$f24
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2f
    mov.s	$f12,$f22
    jalr	$t9
    mov.s	$f13,$f20
    la	$t9,glVertex2f
    mov.s	$f12,$f26
    jalr	$t9
    mov.s	$f13,$f20
    ldc1	$f20,0($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f26
    jalr	$t9
    mov.s	$f13,$f24
    ldc1	$f26,8($sp)
    la	$t9,glVertex2f
    mov.s	$f12,$f22
    jalr	$t9
    mov.s	$f13,$f24
    ldc1	$f24,24($sp)
    ldc1	$f22,16($sp)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,40($sp)
    li	$a0,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f105aa4
    ld	$gp,32($sp)
    lw	$a1,48($a2)
    li	$v1,1028
    beq	$a1,$v1,.L0f105ab0
    la	$t9,glFlush
    beq	$a1,$a0,.L0f105aac
    li	$at,1025
    beq	$a1,$at,.L0f105aac
    li	$v0,1032
    beq	$a1,$v0,.L0f105ab0
    la	$t9,glFlush
.L0f105aa0:
    ld	$gp,32($sp)
.L0f105aa4:
    jr	$ra
    addiu	$sp,$sp,80
.L0f105aac:
    la	$t9,glFlush
.L0f105ab0:
    jalr	$t9
    nop
    b	.L0f105aa0
    ld	$ra,40($sp)
.end gl_i_sboxf

# Function: gl_c_sboxf
# Declared: Line 91 (Source lines: 91-91)
# Address: 0x0f105ac0 - 0x0f105b64 (Size: 164 bytes, Frame: 240)
.globl gl_c_sboxf
.ent gl_c_sboxf
gl_c_sboxf:
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-10360 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20316($gp)
    sd	$ra,64($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f105b30
    mov.s	$f30,$f12
.L0f105af4:
    addiu	$a1,$sp,0
    li	$a0,10
    swc1	$f6,16($sp)
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_sboxf
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,64($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f105b30:
    sdc1	$f4,56($sp)
    sdc1	$f5,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f6,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24440
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    ldc1	$f4,56($sp)
    li	$at,1
    b	.L0f105af4
    sw	$at,-20316($gp)
.end gl_c_sboxf

# Function: gl_n_sboxf
# Declared: Line 91 (Source lines: 91-91)
# Address: 0x0f105b64 - 0x0f105c70 (Size: 268 bytes, Frame: 48)
.globl gl_n_sboxf
.ent gl_n_sboxf
gl_n_sboxf:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-10524 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f105b9c
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f105b9c:
    lwc1	$f15,12($s7)
    la	$t9,glRectf
    lwc1	$f14,8($s7)
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2f
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,glVertex2f
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,8($s7)
    la	$t9,glVertex2f
    lwc1	$f13,12($s7)
    jalr	$t9
    lwc1	$f12,8($s7)
    la	$t9,glVertex2f
    lwc1	$f13,12($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,16($sp)
    li	$a1,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f105c4c
    ld	$gp,0($sp)
    lw	$a0,48($a2)
    li	$v1,1028
    beq	$a0,$v1,.L0f105c60
    la	$t9,glFlush
    beq	$a0,$a1,.L0f105c5c
    li	$at,1025
    beq	$a0,$at,.L0f105c5c
    li	$v0,1032
    beq	$a0,$v0,.L0f105c60
    la	$t9,glFlush
.L0f105c48:
    ld	$gp,0($sp)
.L0f105c4c:
    addiu	$v0,$s7,16
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f105c5c:
    la	$t9,glFlush
.L0f105c60:
    jalr	$t9
    nop
    b	.L0f105c48
    ld	$ra,16($sp)
.end gl_n_sboxf

# Function: gl_i_rectfi
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f105c70 - 0x0f105d9c (Size: 300 bytes, Frame: 208)
.globl gl_i_rectfi
.ent gl_i_rectfi
gl_i_rectfi:
    # Line 106
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    move	$s1,$a3
    sd	$s0,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-10792 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s2,8($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s3,0($sp)
    beqz	$at,.L0f105cc0
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f105cc0:
    move	$a0,$s3
    la	$t9,glRecti
    move	$a1,$s2
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s1
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2i
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s2
    la	$t9,glVertex2i
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    ld	$s2,8($sp)
    la	$t9,glVertex2i
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$s0,24($sp)
    la	$t9,glVertex2i
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s1
    ld	$s1,16($sp)
    ld	$s3,0($sp)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,40($sp)
    li	$a4,1024
    lw	$a1,4100($zero)
    beqzl	$a1,.L0f105d80
    ld	$gp,32($sp)
    lw	$a0,48($a1)
    li	$v1,1028
    beq	$a0,$v1,.L0f105d8c
    la	$t9,glFlush
    beq	$a0,$a4,.L0f105d88
    li	$at,1025
    beq	$a0,$at,.L0f105d88
    li	$v0,1032
    beq	$a0,$v0,.L0f105d8c
    la	$t9,glFlush
.L0f105d7c:
    ld	$gp,32($sp)
.L0f105d80:
    jr	$ra
    addiu	$sp,$sp,80
.L0f105d88:
    la	$t9,glFlush
.L0f105d8c:
    jalr	$t9
    nop
    b	.L0f105d7c
    ld	$ra,40($sp)
.end gl_i_rectfi

# Function: gl_c_rectfi
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f105d9c - 0x0f105e38 (Size: 156 bytes, Frame: 240)
.globl gl_c_rectfi
.ent gl_c_rectfi
gl_c_rectfi:
    move	$a5,$a1
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-11092 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20312($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f105e04
    move	$s8,$a0
.L0f105dc8:
    addiu	$a1,$sp,0
    li	$a0,10
    sw	$a3,16($sp)
    sw	$a2,12($sp)
    sw	$a5,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rectfi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f105e04:
    sd	$a5,64($sp)
    sd	$a2,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24424
    ld	$a3,48($sp)
    ld	$a5,64($sp)
    li	$a2,1
    sw	$a2,-20312($gp)
    b	.L0f105dc8
    ld	$a2,56($sp)
.end gl_c_rectfi

# Function: gl_n_rectfi
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f105e38 - 0x0f105f44 (Size: 268 bytes, Frame: 48)
.globl gl_n_rectfi
.ent gl_n_rectfi
gl_n_rectfi:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-11248 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f105e70
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f105e70:
    lw	$a3,12($s7)
    la	$t9,glRecti
    lw	$a2,8($s7)
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,0($s7)
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2i
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,0($s7)
    la	$t9,glVertex2i
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,8($s7)
    la	$t9,glVertex2i
    lw	$a1,12($s7)
    jalr	$t9
    lw	$a0,8($s7)
    la	$t9,glVertex2i
    lw	$a1,12($s7)
    jalr	$t9
    lw	$a0,0($s7)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,16($sp)
    li	$a1,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f105f20
    ld	$gp,0($sp)
    lw	$a0,48($a2)
    li	$v1,1028
    beq	$a0,$v1,.L0f105f34
    la	$t9,glFlush
    beq	$a0,$a1,.L0f105f30
    li	$at,1025
    beq	$a0,$at,.L0f105f30
    li	$v0,1032
    beq	$a0,$v0,.L0f105f34
    la	$t9,glFlush
.L0f105f1c:
    ld	$gp,0($sp)
.L0f105f20:
    addiu	$v0,$s7,16
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f105f30:
    la	$t9,glFlush
.L0f105f34:
    jalr	$t9
    nop
    b	.L0f105f1c
    ld	$ra,16($sp)
.end gl_n_rectfi

# Function: gl_i_sboxfi
# Declared: Line 109 (Source lines: 109-109)
# Address: 0x0f105f44 - 0x0f106070 (Size: 300 bytes, Frame: 208)
.globl gl_i_sboxfi
.ent gl_i_sboxfi
gl_i_sboxfi:
    # Line 109
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    move	$s1,$a3
    sd	$s0,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-11516 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s2,8($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s3,0($sp)
    beqz	$at,.L0f105f94
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f105f94:
    move	$a0,$s3
    la	$t9,glRecti
    move	$a1,$s2
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s1
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2i
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s2
    la	$t9,glVertex2i
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    ld	$s2,8($sp)
    la	$t9,glVertex2i
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$s0,24($sp)
    la	$t9,glVertex2i
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s1
    ld	$s1,16($sp)
    ld	$s3,0($sp)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,40($sp)
    li	$a4,1024
    lw	$a1,4100($zero)
    beqzl	$a1,.L0f106054
    ld	$gp,32($sp)
    lw	$a0,48($a1)
    li	$v1,1028
    beq	$a0,$v1,.L0f106060
    la	$t9,glFlush
    beq	$a0,$a4,.L0f10605c
    li	$at,1025
    beq	$a0,$at,.L0f10605c
    li	$v0,1032
    beq	$a0,$v0,.L0f106060
    la	$t9,glFlush
.L0f106050:
    ld	$gp,32($sp)
.L0f106054:
    jr	$ra
    addiu	$sp,$sp,80
.L0f10605c:
    la	$t9,glFlush
.L0f106060:
    jalr	$t9
    nop
    b	.L0f106050
    ld	$ra,40($sp)
.end gl_i_sboxfi

# Function: gl_c_sboxfi
# Declared: Line 109 (Source lines: 109-109)
# Address: 0x0f106070 - 0x0f10610c (Size: 156 bytes, Frame: 240)
.globl gl_c_sboxfi
.ent gl_c_sboxfi
gl_c_sboxfi:
    move	$a5,$a1
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-11816 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20308($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f1060d8
    move	$s8,$a0
.L0f10609c:
    addiu	$a1,$sp,0
    li	$a0,10
    sw	$a3,16($sp)
    sw	$a2,12($sp)
    sw	$a5,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_sboxfi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1060d8:
    sd	$a5,64($sp)
    sd	$a2,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24408
    ld	$a3,48($sp)
    ld	$a5,64($sp)
    li	$a2,1
    sw	$a2,-20308($gp)
    b	.L0f10609c
    ld	$a2,56($sp)
.end gl_c_sboxfi

# Function: gl_n_sboxfi
# Declared: Line 109 (Source lines: 109-109)
# Address: 0x0f10610c - 0x0f106218 (Size: 268 bytes, Frame: 48)
.globl gl_n_sboxfi
.ent gl_n_sboxfi
gl_n_sboxfi:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-11972 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f106144
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f106144:
    lw	$a3,12($s7)
    la	$t9,glRecti
    lw	$a2,8($s7)
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,0($s7)
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2i
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,0($s7)
    la	$t9,glVertex2i
    lw	$a1,4($s7)
    jalr	$t9
    lw	$a0,8($s7)
    la	$t9,glVertex2i
    lw	$a1,12($s7)
    jalr	$t9
    lw	$a0,8($s7)
    la	$t9,glVertex2i
    lw	$a1,12($s7)
    jalr	$t9
    lw	$a0,0($s7)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,16($sp)
    li	$a1,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f1061f4
    ld	$gp,0($sp)
    lw	$a0,48($a2)
    li	$v1,1028
    beq	$a0,$v1,.L0f106208
    la	$t9,glFlush
    beq	$a0,$a1,.L0f106204
    li	$at,1025
    beq	$a0,$at,.L0f106204
    li	$v0,1032
    beq	$a0,$v0,.L0f106208
    la	$t9,glFlush
.L0f1061f0:
    ld	$gp,0($sp)
.L0f1061f4:
    addiu	$v0,$s7,16
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f106204:
    la	$t9,glFlush
.L0f106208:
    jalr	$t9
    nop
    b	.L0f1061f0
    ld	$ra,16($sp)
.end gl_n_sboxfi

# Function: gl_i_rectfs
# Declared: Line 124 (Source lines: 124-124)
# Address: 0x0f106218 - 0x0f106344 (Size: 300 bytes, Frame: 208)
.globl gl_i_rectfs
.ent gl_i_rectfs
gl_i_rectfs:
    # Line 124
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    move	$s1,$a3
    sd	$s0,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-12240 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s2,8($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s3,0($sp)
    beqz	$at,.L0f106268
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f106268:
    move	$a0,$s3
    la	$t9,glRects
    move	$a1,$s2
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s1
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2s
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s2
    la	$t9,glVertex2s
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    ld	$s2,8($sp)
    la	$t9,glVertex2s
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$s0,24($sp)
    la	$t9,glVertex2s
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s1
    ld	$s1,16($sp)
    ld	$s3,0($sp)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,40($sp)
    li	$a4,1024
    lw	$a1,4100($zero)
    beqzl	$a1,.L0f106328
    ld	$gp,32($sp)
    lw	$a0,48($a1)
    li	$v1,1028
    beq	$a0,$v1,.L0f106334
    la	$t9,glFlush
    beq	$a0,$a4,.L0f106330
    li	$at,1025
    beq	$a0,$at,.L0f106330
    li	$v0,1032
    beq	$a0,$v0,.L0f106334
    la	$t9,glFlush
.L0f106324:
    ld	$gp,32($sp)
.L0f106328:
    jr	$ra
    addiu	$sp,$sp,80
.L0f106330:
    la	$t9,glFlush
.L0f106334:
    jalr	$t9
    nop
    b	.L0f106324
    ld	$ra,40($sp)
.end gl_i_rectfs

# Function: gl_c_rectfs
# Declared: Line 124 (Source lines: 124-124)
# Address: 0x0f106344 - 0x0f1063e0 (Size: 156 bytes, Frame: 224)
.globl gl_c_rectfs
.ent gl_c_rectfs
gl_c_rectfs:
    move	$a5,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-12540 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20304($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1063ac
    move	$s8,$a0
.L0f106370:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$a3,10($sp)
    sh	$a2,8($sp)
    sh	$a5,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rectfs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1063ac:
    sd	$a5,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24392
    ld	$a3,40($sp)
    ld	$a5,56($sp)
    li	$a2,1
    sw	$a2,-20304($gp)
    b	.L0f106370
    ld	$a2,48($sp)
.end gl_c_rectfs

# Function: gl_n_rectfs
# Declared: Line 124 (Source lines: 124-124)
# Address: 0x0f1063e0 - 0x0f1064ec (Size: 268 bytes, Frame: 48)
.globl gl_n_rectfs
.ent gl_n_rectfs
gl_n_rectfs:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-12696 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f106418
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f106418:
    lh	$a3,6($s7)
    la	$t9,glRects
    lh	$a2,4($s7)
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,0($s7)
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2s
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,0($s7)
    la	$t9,glVertex2s
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,4($s7)
    la	$t9,glVertex2s
    lh	$a1,6($s7)
    jalr	$t9
    lh	$a0,4($s7)
    la	$t9,glVertex2s
    lh	$a1,6($s7)
    jalr	$t9
    lh	$a0,0($s7)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,16($sp)
    li	$a1,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f1064c8
    ld	$gp,0($sp)
    lw	$a0,48($a2)
    li	$v1,1028
    beq	$a0,$v1,.L0f1064dc
    la	$t9,glFlush
    beq	$a0,$a1,.L0f1064d8
    li	$at,1025
    beq	$a0,$at,.L0f1064d8
    li	$v0,1032
    beq	$a0,$v0,.L0f1064dc
    la	$t9,glFlush
.L0f1064c4:
    ld	$gp,0($sp)
.L0f1064c8:
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1064d8:
    la	$t9,glFlush
.L0f1064dc:
    jalr	$t9
    nop
    b	.L0f1064c4
    ld	$ra,16($sp)
.end gl_n_rectfs

# Function: gl_i_sboxfs
# Declared: Line 127 (Source lines: 127-127)
# Address: 0x0f1064ec - 0x0f106618 (Size: 300 bytes, Frame: 208)
.globl gl_i_sboxfs
.ent gl_i_sboxfs
gl_i_sboxfs:
    # Line 127
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    move	$s1,$a3
    sd	$s0,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-12964 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s2,8($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s3,0($sp)
    beqz	$at,.L0f10653c
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f10653c:
    move	$a0,$s3
    la	$t9,glRects
    move	$a1,$s2
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s1
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2s
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s2
    la	$t9,glVertex2s
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    ld	$s2,8($sp)
    la	$t9,glVertex2s
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$s0,24($sp)
    la	$t9,glVertex2s
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s1
    ld	$s1,16($sp)
    ld	$s3,0($sp)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,40($sp)
    li	$a4,1024
    lw	$a1,4100($zero)
    beqzl	$a1,.L0f1065fc
    ld	$gp,32($sp)
    lw	$a0,48($a1)
    li	$v1,1028
    beq	$a0,$v1,.L0f106608
    la	$t9,glFlush
    beq	$a0,$a4,.L0f106604
    li	$at,1025
    beq	$a0,$at,.L0f106604
    li	$v0,1032
    beq	$a0,$v0,.L0f106608
    la	$t9,glFlush
.L0f1065f8:
    ld	$gp,32($sp)
.L0f1065fc:
    jr	$ra
    addiu	$sp,$sp,80
.L0f106604:
    la	$t9,glFlush
.L0f106608:
    jalr	$t9
    nop
    b	.L0f1065f8
    ld	$ra,40($sp)
.end gl_i_sboxfs

# Function: gl_c_sboxfs
# Declared: Line 127 (Source lines: 127-127)
# Address: 0x0f106618 - 0x0f1066b4 (Size: 156 bytes, Frame: 224)
.globl gl_c_sboxfs
.ent gl_c_sboxfs
gl_c_sboxfs:
    move	$a5,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-13264 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20300($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f106680
    move	$s8,$a0
.L0f106644:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$a3,10($sp)
    sh	$a2,8($sp)
    sh	$a5,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_sboxfs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f106680:
    sd	$a5,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24376
    ld	$a3,40($sp)
    ld	$a5,56($sp)
    li	$a2,1
    sw	$a2,-20300($gp)
    b	.L0f106644
    ld	$a2,48($sp)
.end gl_c_sboxfs

# Function: gl_n_sboxfs
# Declared: Line 127 (Source lines: 127-127)
# Address: 0x0f1066b4 - 0x0f1067c0 (Size: 268 bytes, Frame: 48)
.globl gl_n_sboxfs
.ent gl_n_sboxfs
gl_n_sboxfs:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-13420 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f1066ec
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1066ec:
    lh	$a3,6($s7)
    la	$t9,glRects
    lh	$a2,4($s7)
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,0($s7)
    la	$t9,glBegin
    jalr	$t9
    li	$a0,2
    la	$t9,glVertex2s
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,0($s7)
    la	$t9,glVertex2s
    lh	$a1,2($s7)
    jalr	$t9
    lh	$a0,4($s7)
    la	$t9,glVertex2s
    lh	$a1,6($s7)
    jalr	$t9
    lh	$a0,4($s7)
    la	$t9,glVertex2s
    lh	$a1,6($s7)
    jalr	$t9
    lh	$a0,0($s7)
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,16($sp)
    li	$a1,1024
    lw	$a2,4100($zero)
    beqzl	$a2,.L0f10679c
    ld	$gp,0($sp)
    lw	$a0,48($a2)
    li	$v1,1028
    beq	$a0,$v1,.L0f1067b0
    la	$t9,glFlush
    beq	$a0,$a1,.L0f1067ac
    li	$at,1025
    beq	$a0,$at,.L0f1067ac
    li	$v0,1032
    beq	$a0,$v0,.L0f1067b0
    la	$t9,glFlush
.L0f106798:
    ld	$gp,0($sp)
.L0f10679c:
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1067ac:
    la	$t9,glFlush
.L0f1067b0:
    jalr	$t9
    nop
    b	.L0f106798
    ld	$ra,16($sp)
.end gl_n_sboxfs

