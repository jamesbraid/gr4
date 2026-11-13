# Source: ../igloo/blend.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/blend.c -o blend.T
# Total Functions: 16

.text

# Function: gl_i_blendfunction
# Declared: Line 108 (Source lines: 108-108)
# Address: 0x0f095ca8 - 0x0f095d00 (Size: 88 bytes, Frame: 48)
.globl gl_i_blendfunction
.ent gl_i_blendfunction
gl_i_blendfunction:
    # Line 108
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-10848 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f095ce4
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
.L0f095ce4:
    la	$t9,gl_blendfunction
    bal gl_blendfunction
    nop
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_blendfunction

# Function: gl_c_blendfunction
# Declared: Line 108 (Source lines: 108-108)
# Address: 0x0f095d00 - 0x0f095d84 (Size: 132 bytes, Frame: 192)
.globl gl_c_blendfunction
.ent gl_c_blendfunction
gl_c_blendfunction:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-10936 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21108($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f095d60
    move	$s8,$a0
.L0f095d2c:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_blendfunction
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f095d60:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,28704
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f095d2c
    sw	$a2,-21108($gp)
.end gl_c_blendfunction

# Function: gl_n_blendfunction
# Declared: Line 108 (Source lines: 108-108)
# Address: 0x0f095d84 - 0x0f095de4 (Size: 96 bytes, Frame: 48)
.globl gl_n_blendfunction
.ent gl_n_blendfunction
gl_n_blendfunction:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11068 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f095dbc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f095dbc:
    la	$t9,gl_blendfunction
    lw	$a1,4($s8)
    bal gl_blendfunction
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_blendfunction

# Function: gl_i_blendcolor
# Declared: Line 109 (Source lines: 109-109)
# Address: 0x0f095de4 - 0x0f095e68 (Size: 132 bytes, Frame: 208)
.globl gl_i_blendcolor
.ent gl_i_blendcolor
gl_i_blendcolor:
    # Line 109
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11164 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    mov.s	$f4,$f15
    mov.s	$f5,$f14
    lw	$at,0($at)
    mov.s	$f6,$f13
    mov.s	$f7,$f12
    beqz	$at,.L0f095e40
    sd	$ra,40($sp)
    sdc1	$f4,32($sp)
    la	$t9,__iglooNCloseMoveDraw
    sdc1	$f5,24($sp)
    sdc1	$f6,16($sp)
    jalr	$t9
    sdc1	$f7,8($sp)
    ldc1	$f7,8($sp)
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
.L0f095e40:
    mov.s	$f12,$f7
    la	$t9,glBlendColorEXT
    mov.s	$f13,$f6
    mov.s	$f14,$f5
    jalr	$t9
    mov.s	$f15,$f4
    ld	$ra,40($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_blendcolor

# Function: gl_c_blendcolor
# Declared: Line 109 (Source lines: 109-109)
# Address: 0x0f095e68 - 0x0f095f0c (Size: 164 bytes, Frame: 240)
.globl gl_c_blendcolor
.ent gl_c_blendcolor
gl_c_blendcolor:
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11296 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21104($gp)
    sd	$ra,64($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f095ed8
    mov.s	$f30,$f12
.L0f095e9c:
    addiu	$a1,$sp,0
    li	$a0,10
    swc1	$f6,16($sp)
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_blendcolor
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,64($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f095ed8:
    sdc1	$f4,56($sp)
    sdc1	$f5,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sdc1	$f6,40($sp)
    jalr	$t9
    addiu	$a0,$a0,28720
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    ldc1	$f4,56($sp)
    li	$at,1
    b	.L0f095e9c
    sw	$at,-21104($gp)
.end gl_c_blendcolor

# Function: gl_n_blendcolor
# Declared: Line 109 (Source lines: 109-109)
# Address: 0x0f095f0c - 0x0f095f74 (Size: 104 bytes, Frame: 48)
.globl gl_n_blendcolor
.ent gl_n_blendcolor
gl_n_blendcolor:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11460 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f095f44
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f095f44:
    lwc1	$f15,12($s8)
    la	$t9,glBlendColorEXT
    lwc1	$f14,8($s8)
    lwc1	$f13,4($s8)
    jalr	$t9
    lwc1	$f12,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_blendcolor

# Function: gl_i_logicop
# Declared: Line 110 (Source lines: 110-110)
# Address: 0x0f095f74 - 0x0f095fc4 (Size: 80 bytes, Frame: 48)
.globl gl_i_logicop
.ent gl_i_logicop
gl_i_logicop:
    # Line 110
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f095fa8
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f095fa8:
    la	$t9,gl_logicop
    bal gl_logicop
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_logicop

# Function: gl_c_logicop
# Declared: Line 110 (Source lines: 110-110)
# Address: 0x0f095fc4 - 0x0f096038 (Size: 116 bytes, Frame: 192)
.globl gl_c_logicop
.ent gl_c_logicop
gl_c_logicop:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11644 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21100($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09601c
    move	$s8,$a0
.L0f095fec:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_logicop
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09601c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28736
    li	$a1,1
    b	.L0f095fec
    sw	$a1,-21100($gp)
.end gl_c_logicop

# Function: gl_n_logicop
# Declared: Line 110 (Source lines: 110-110)
# Address: 0x0f096038 - 0x0f096094 (Size: 92 bytes, Frame: 48)
.globl gl_n_logicop
.ent gl_n_logicop
gl_n_logicop:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11760 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f096070
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f096070:
    la	$t9,gl_logicop
    bal gl_logicop
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_logicop

# Function: gl_i_afunction
# Declared: Line 111 (Source lines: 111-111)
# Address: 0x0f096094 - 0x0f0960ec (Size: 88 bytes, Frame: 48)
.globl gl_i_afunction
.ent gl_i_afunction
gl_i_afunction:
    # Line 111
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11852 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0960d0
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
.L0f0960d0:
    la	$t9,gl_alphafunc
    bal gl_alphafunc
    nop
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_afunction

# Function: gl_c_afunction
# Declared: Line 111 (Source lines: 111-111)
# Address: 0x0f0960ec - 0x0f096170 (Size: 132 bytes, Frame: 192)
.globl gl_c_afunction
.ent gl_c_afunction
gl_c_afunction:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-11940 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21096($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09614c
    move	$s8,$a0
.L0f096118:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_afunction
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09614c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,28752
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f096118
    sw	$a2,-21096($gp)
.end gl_c_afunction

# Function: gl_n_afunction
# Declared: Line 111 (Source lines: 111-111)
# Address: 0x0f096170 - 0x0f0961d0 (Size: 96 bytes, Frame: 48)
.globl gl_n_afunction
.ent gl_n_afunction
gl_n_afunction:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-12072 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0961a8
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0961a8:
    la	$t9,gl_alphafunc
    lw	$a1,4($s8)
    bal gl_alphafunc
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_afunction

# Function: gl_alphafunc
# Declared: Line 125 (Source lines: 126-142)
# Address: 0x0f0961d0 - 0x0f096298 (Size: 200 bytes, Frame: 48)
.globl gl_alphafunc
.ent gl_alphafunc
gl_alphafunc:
    # Line 130
    li	$at,7
    # Line 126
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s7,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfffa (gp disp hi)
    # addiu	v1,v1,-12168 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 130
    la	$v0,gl_wstatep
    # Line 126
    move	$s7,$a0
    sd	$s8,8($sp)
    # Line 130
    lw	$v0,0($v0)
    addiu	$s8,$a1,512
    beq	$a1,$at,.L0f096260
    sw	$s8,2788($v0)
    # Line 139
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3008
    li	$a1,-256
.L0f096220:
    and	$a1,$s7,$a1
    beqz	$a1,.L0f096278
    # Line 141
    lwc1	$f0,_lit_3b808081
    # Line 139
    bltz	$s7,.L0f096290
    # Line 141
    mtc1	$zero,$f4
    lwc1	$f4,_lit_3f800000
    ld	$s7,0($sp)
.L0f09623c:
    mov.s	$f13,$f4
.L0f096240:
    la	$t9,glAlphaFunc
    jalr	$t9
    move	$a0,$s8
    # Line 142
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f096260:
    # Line 137
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,3008
    b	.L0f096220
    # Line 139
    li	$a1,-256
.L0f096278:
    # Line 141
    mtc1	$s7,$f13
    nop
    cvt.s.w	$f13,$f13
    ld	$s7,0($sp)
    b	.L0f096240
    mul.s	$f13,$f13,$f0
.L0f096290:
    b	.L0f09623c
    ld	$s7,0($sp)
.end gl_alphafunc

# Function: __iglooRebindBlendLogicopData
# Declared: Line 178 (Source lines: 179-202)
# Address: 0x0f096298 - 0x0f096478 (Size: 480 bytes, Frame: 48)
.globl __iglooRebindBlendLogicopData
.ent __iglooRebindBlendLogicopData
__iglooRebindBlendLogicopData:
    # Line 179
    lw	$at,4100($zero)
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    lw	$at,20($at)
    move	$s7,$a0
    sd	$gp,8($sp)
    lw	$at,16($at)
    lui	$v0,0xfffa
    addiu	$v0,$v0,-12368
    beqz	$at,.L0f096378
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    lw	$a0,2796($s7)
    beqzl	$a0,.L0f0963b0
    # Line 190
    lw	$a1,2800($s7)
    # Line 179
    lw	$v0,2800($s7)
    beqz	$v0,.L0f0963ec
    nop
    # Line 183
    lw	$v1,2824($s7)
    li	$a1,3042
    bne	$v1,$a1,.L0f096338
    sd	$ra,16($sp)
    # Line 185
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3042
    la	$t9,__iglooBlendEquationEXT
    jalr	$t9
    lw	$a0,2804($s7)
    lw	$a0,2804($s7)
    li	$at,0x8007
    beq	$a0,$at,.L0f096368
    ld	$ra,16($sp)
    li	$v0,0x8008
    beq	$a0,$v0,.L0f096368
    la	$t9,__iglooBlendFunc
    lw	$a1,2812($s7)
    jalr	$t9
    lw	$a0,2808($s7)
    b	.L0f096368
    ld	$ra,16($sp)
.L0f096338:
    # Line 187
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3042
    la	$t9,__iglooLogicOp
    jalr	$t9
    lw	$a0,2820($s7)
    la	$t9,__iglooBlendEquationEXT
    li	$a0,3057
    jalr	$t9
    ld	$s7,0($sp)
    ld	$ra,16($sp)
.L0f096368:
    ld	$gp,8($sp)
    # Line 202
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f096378:
    # Line 189
    lw	$v1,2800($s7)
    beqz	$v1,.L0f09645c
    sd	$ra,16($sp)
    # Line 197
    la	$t9,__iglooLogicOp
    jalr	$t9
    lw	$a0,2820($s7)
    # Line 198
    la	$t9,__iglooSetEnable
    li	$a1,1
    li	$a0,3057
    jalr	$t9
    ld	$s7,0($sp)
    b	.L0f096368
    ld	$ra,16($sp)
.L0f0963ac:
    # Line 190
    lw	$a1,2800($s7)
.L0f0963b0:
    beqz	$a1,.L0f096440
    sd	$ra,16($sp)
    # Line 192
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3042
    la	$t9,__iglooLogicOp
    jalr	$t9
    lw	$a0,2820($s7)
    la	$t9,__iglooBlendEquationEXT
    li	$a0,3057
    jalr	$t9
    ld	$s7,0($sp)
    b	.L0f096368
    ld	$ra,16($sp)
.L0f0963ec:
    # Line 184
    beqz	$a0,.L0f0963ac
    # Line 190
    la	$t9,__iglooSetEnable
    li	$a1,1
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,3042
    la	$t9,__iglooBlendEquationEXT
    jalr	$t9
    lw	$a0,2804($s7)
    lw	$a0,2804($s7)
    li	$at,0x8007
    beq	$a0,$at,.L0f096368
    ld	$ra,16($sp)
    li	$v0,0x8008
    beq	$a0,$v0,.L0f096368
    la	$t9,__iglooBlendFunc
    lw	$a1,2812($s7)
    jalr	$t9
    lw	$a0,2808($s7)
    b	.L0f096368
    ld	$ra,16($sp)
.L0f096440:
    # Line 194
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    li	$a0,3042
    jalr	$t9
    ld	$s7,0($sp)
    b	.L0f096368
    ld	$ra,16($sp)
.L0f09645c:
    # Line 200
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    li	$a0,3057
    jalr	$t9
    ld	$s7,0($sp)
    b	.L0f096368
    ld	$ra,16($sp)
.end __iglooRebindBlendLogicopData

# Function: gl_blendfunction
# Declared: Line 207 (Source lines: 208-250)
# Address: 0x0f096478 - 0x0f0965ac (Size: 308 bytes, Frame: 192)
.globl gl_blendfunction
.ent gl_blendfunction
gl_blendfunction:
    # Line 208
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s5,8($sp)
    move	$s5,$a1
    sd	$s1,16($sp)
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-12848 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 209
    la	$s1,gl_wstatep
    # Line 217
    slti	$at,$a0,15
    beqz	$at,.L0f0964c8
    # Line 209
    lw	$s1,0($s1)
    # Line 217
    bltz	$s0,.L0f0964c8
    slti	$v0,$s5,13
    beqz	$v0,.L0f0964cc
    # Line 218
    li	$a1,2
    # Line 217
    bgez	$s5,.L0f0964ec
    # Line 225
    li	$at,3042
.L0f0964c8:
    # Line 218
    li	$a1,2
.L0f0964cc:
    li	$a0,110
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a2,$a2,8480
    ld	$ra,32($sp)
    # Line 225
    li	$at,3042
.L0f0964ec:
    li	$a0,1
    beq	$s0,$a0,.L0f096568
    sw	$at,2824($s1)
    # Line 244
    sll	$a2,$s0,0x2
.L0f0964fc:
    # Line 231
    li	$v0,13
    beq	$s0,$v0,.L0f096594
    # Line 230
    sw	$a0,2796($s1)
    # Line 231
    li	$v1,14
    beq	$s0,$v1,.L0f09657c
    # Line 243
    li	$v0,0x8006
    la	$v1,sub_0f020000
    sd	$ra,32($sp)
    # Line 245
    sll	$at,$s5,0x2
    # Line 243
    addiu	$v1,$v1,28584
    # Line 244
    addu	$a2,$a2,$v1
    # Line 245
    addu	$at,$at,$v1
    lw	$at,64($at)
    # Line 244
    lw	$a2,0($a2)
    # Line 243
    sw	$v0,2804($s1)
    # Line 245
    sw	$at,2812($s1)
    # Line 244
    sw	$a2,2808($s1)
.L0f096540:
    # Line 249
    la	$t9,__iglooRebindBlendLogicopData
    bal __iglooRebindBlendLogicopData
    move	$a0,$s1
    ld	$gp,0($sp)
    # Line 250
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f096568:
    # Line 225
    bnez	$s5,.L0f0964fc
    # Line 244
    sll	$a2,$s0,0x2
    sd	$ra,32($sp)
    # Line 228
    b	.L0f096540
    sw	$zero,2796($s1)
.L0f09657c:
    sd	$ra,32($sp)
    # Line 240
    sw	$zero,2812($s1)
    # Line 239
    sw	$a0,2808($s1)
    # Line 238
    li	$a2,0x8008
    # Line 241
    b	.L0f096540
    # Line 238
    sw	$a2,2804($s1)
.L0f096594:
    # Line 233
    li	$at,0x8007
    sd	$ra,32($sp)
    # Line 235
    sw	$zero,2812($s1)
    # Line 234
    sw	$a0,2808($s1)
    # Line 236
    b	.L0f096540
    # Line 233
    sw	$at,2804($s1)
.end gl_blendfunction

# Function: gl_logicop
# Declared: Line 273 (Source lines: 274-297)
# Address: 0x0f0965ac - 0x0f096630 (Size: 132 bytes, Frame: 48)
.globl gl_logicop
.ent gl_logicop
gl_logicop:
    # Line 281
    li	$v1,3057
    # Line 274
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    # Line 284
    li	$v0,3
    sd	$s8,0($sp)
    sd	$gp,8($sp)
    # Line 274
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-13156 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 275
    la	$s8,gl_wstatep
    # Line 282
    andi	$at,$a0,0xf
    # Line 283
    addiu	$a0,$at,5376
    # Line 275
    lw	$s8,0($s8)
    # Line 284
    xor	$a1,$at,$v0
    sltu	$a1,$zero,$a1
    sw	$a1,2800($s8)
    # Line 283
    sw	$a0,2820($s8)
    # Line 282
    sw	$at,2816($s8)
    # Line 284
    beq	$at,$v0,.L0f09661c
    # Line 281
    sw	$v1,2824($s8)
    # Line 296
    la	$t9,__iglooRebindBlendLogicopData
.L0f096600:
    bal __iglooRebindBlendLogicopData
    move	$a0,$s8
    # Line 297
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09661c:
    # Line 292
    la	$t9,__iglooLogicOp
    jalr	$t9
    li	$a0,5379
    b	.L0f096600
    # Line 296
    la	$t9,__iglooRebindBlendLogicopData
.end gl_logicop

.rdata
_lit_3b808081:
    .word 0x3b808081
_lit_3f800000:
    .word 0x3f800000

