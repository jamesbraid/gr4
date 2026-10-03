# Source: ../igloo/graphics/spolygon.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/spolygon.c -o spolygon.T
# Total Functions: 18

.text

# Function: gl_i_splf2s
# Declared: Line 180 (Source lines: 180-180)
# Address: 0x0f114858 - 0x0f114a38 (Size: 480 bytes, Frame: 240)
.globl gl_i_splf2s
.ent gl_i_splf2s
gl_i_splf2s:
    # Line 180
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-5648 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s4,32($sp)
    lw	$at,0($at)
    move	$s4,$a1
    sd	$s1,16($sp)
    beqz	$at,.L0f1148a4
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,48($sp)
    jalr	$t9
    nop
    ld	$ra,48($sp)
.L0f1148a4:
    beqzl	$s1,.L0f1149ec
    ld	$gp,40($sp)
    bltz	$s1,.L0f114a00
    slti	$v1,$s1,257
    beqz	$v1,.L0f1149b8
    sd	$ra,48($sp)
    sd	$s8,72($sp)
    la	$s8,gl_wstatep
    lw	$a0,0($s8)
    lw	$t9,172($a0)
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    li	$a0,9
    jalr	$t9
    addiu	$s0,$s0,2
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    sd	$s7,64($sp)
    ld	$at,8($sp)
    lh	$v1,0($s4)
    sd	$s5,56($sp)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lh	$ra,2($s4)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s5,$s4,4
    addiu	$a0,$s1,-1
    slti	$a3,$s1,2
    bnez	$a3,.L0f114984
    move	$s7,$a0
    lw	$a0,0($s8)
.L0f114944:
    lw	$t9,172($a0)
    addiu	$s7,$s7,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lh	$at,0($s5)
    sh	$at,0($sp)
    lh	$ra,2($s5)
    lw	$t9,0($s8)
    sh	$ra,2($sp)
    lw	$t9,16($t9)
    addiu	$a0,$sp,0
    addiu	$s5,$s5,4
    jalr	$t9
    addiu	$s0,$s0,2
    bnez	$s7,.L0f114944
    lw	$a0,0($s8)
.L0f114984:
    lw	$t9,0($s8)
    lw	$t9,220($t9)
    ld	$s5,56($sp)
    jalr	$t9
    ld	$s7,64($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,48($sp)
    ld	$s4,32($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1149b8:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-22156($a2)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1149ec:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f114a00:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a2,-22156($a2)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_i_splf2s

# Function: gl_c_splf2s
# Declared: Line 180 (Source lines: 180-180)
# Address: 0x0f114a38 - 0x0f114c70 (Size: 568 bytes, Frame: 224)
.globl gl_c_splf2s
.ent gl_c_splf2s
gl_c_splf2s:
    addiu	$sp,$sp,-1632
    sd	$s1,1552($sp)
    sd	$gp,1568($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-6128 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19976($gp)
    move	$s1,$a2
    sd	$s0,1560($sp)
    beqz	$at,.L0f114bcc
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f114c00
    addiu	$a4,$a4,-22168
.L0f114a70:
    move	$a0,$s0
    la	$v0,gl_n_splf2s
    bltz	$s0,.L0f114c40
    addiu	$a2,$sp,8
    slti	$at,$s0,257
    beqzl	$at,.L0f114c14
    lw	$a2,12($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f114b80
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f114ae4
    move	$a7,$a4
.L0f114ab0:
    lhu	$v0,0($s1)
    sh	$v0,0($a2)
    addiu	$a0,$a0,-1
    lh	$at,0($a4)
    addiu	$a4,$a4,4
    addiu	$a2,$a2,6
    sh	$at,-4($a2)
    addiu	$s1,$s1,2
    lh	$a3,-2($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f114ab0
    sh	$a3,-2($a2)
    move	$a7,$a4
.L0f114ae4:
    move	$t0,$s1
    move	$t1,$a0
    move	$a6,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0f114b80
    move	$a0,$a6
    move	$a1,$t1
    move	$a2,$a7
    move	$a4,$t0
.L0f114b08:
    lhu	$v1,0($a4)
    sh	$v1,0($a0)
    lh	$v0,0($a2)
    sh	$v0,2($a0)
    lh	$at,2($a2)
    sh	$at,4($a0)
    lhu	$a3,2($a4)
    sh	$a3,6($a0)
    lh	$v1,4($a2)
    sh	$v1,8($a0)
    lh	$v0,6($a2)
    sh	$v0,10($a0)
    lhu	$at,4($a4)
    sh	$at,12($a0)
    lh	$a3,8($a2)
    sh	$a3,14($a0)
    lh	$v1,10($a2)
    sh	$v1,16($a0)
    lhu	$v0,6($a4)
    sh	$v0,18($a0)
    lh	$at,12($a2)
    addiu	$a2,$a2,16
    addiu	$a0,$a0,24
    sh	$at,-4($a0)
    addiu	$a4,$a4,8
    lh	$a3,-2($a2)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f114b08
    sh	$a3,-2($a0)
    move	$a2,$a0
.L0f114b80:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    addiu	$a0,$a1,4
    andi	$a3,$a0,0x1
    beqz	$a3,.L0f114ba8
    la	$t9,gl_compile
    sd	$ra,1576($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a2)
    la	$t9,gl_compile
.L0f114ba8:
    sd	$ra,1576($sp)
    bal gl_compile
    addiu	$a1,$sp,0
    ld	$gp,1568($sp)
    ld	$ra,1576($sp)
    ld	$s0,1560($sp)
    ld	$s1,1552($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.L0f114bcc:
    sd	$a1,1584($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$ra,1576($sp)
    jalr	$t9
    addiu	$a0,$a0,-22168
    ld	$ra,1576($sp)
    li	$a1,1
    sw	$a1,-19976($gp)
    la	$a4,sub_0f030000
    ld	$a1,1584($sp)
    bnez	$s0,.L0f114a70
    addiu	$a4,$a4,-22168
.L0f114c00:
    ld	$gp,1568($sp)
    ld	$s0,1560($sp)
    ld	$s1,1552($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.L0f114c14:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1576($sp)
    jalr	$t9
    li	$a0,97
    ld	$gp,1568($sp)
    ld	$ra,1576($sp)
    ld	$s0,1560($sp)
    ld	$s1,1552($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.L0f114c40:
    lw	$a2,12($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1576($sp)
    jalr	$t9
    li	$a0,3
    ld	$gp,1568($sp)
    ld	$ra,1576($sp)
    ld	$s0,1560($sp)
    ld	$s1,1552($sp)
    jr	$ra
    addiu	$sp,$sp,1632
.end gl_c_splf2s

# Function: gl_n_splf2s
# Declared: Line 180 (Source lines: 180-180)
# Address: 0x0f114c70 - 0x0f114db0 (Size: 320 bytes, Frame: 208)
.globl gl_n_splf2s
.ent gl_n_splf2s
gl_n_splf2s:
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-6696 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    beqz	$at,.L0f114cb0
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,48($sp)
    sd	$s1,32($sp)
.L0f114cb0:
    sd	$s3,48($sp)
    la	$s3,gl_wstatep
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    lhu	$a1,4($s0)
    sd	$s1,32($sp)
    jalr	$t9
    lw	$s1,0($s0)
    lw	$t9,0($s3)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lh	$v1,6($s0)
    addiu	$s0,$s0,10
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lh	$ra,-2($s0)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f114d7c
    lw	$t9,0($s3)
    sd	$s5,56($sp)
    li	$s5,-1
    lw	$a0,0($s3)
.L0f114d38:
    lw	$t9,172($a0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lh	$at,2($s0)
    sh	$at,0($sp)
    lh	$ra,4($s0)
    lw	$t9,0($s3)
    sh	$ra,2($sp)
    lw	$t9,16($t9)
    addiu	$s0,$s0,6
    jalr	$t9
    addiu	$a0,$sp,0
    bne	$s1,$s5,.L0f114d38
    lw	$a0,0($s3)
    ld	$s5,56($sp)
    lw	$t9,0($s3)
.L0f114d7c:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,32($sp)
    ld	$s3,48($sp)
    andi	$at,$s0,0x3
    beqz	$at,.L0f114d9c
    ld	$ra,40($sp)
    addiu	$s0,$s0,2
.L0f114d9c:
    ld	$gp,16($sp)
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_splf2s

# Function: gl_i_splf2i
# Declared: Line 181 (Source lines: 181-181)
# Address: 0x0f114db0 - 0x0f114f90 (Size: 480 bytes, Frame: 240)
.globl gl_i_splf2i
.ent gl_i_splf2i
gl_i_splf2i:
    # Line 181
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-7016 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s4,32($sp)
    lw	$at,0($at)
    move	$s4,$a1
    sd	$s1,16($sp)
    beqz	$at,.L0f114dfc
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,48($sp)
    jalr	$t9
    nop
    ld	$ra,48($sp)
.L0f114dfc:
    beqzl	$s1,.L0f114f44
    ld	$gp,40($sp)
    bltz	$s1,.L0f114f58
    slti	$v1,$s1,257
    beqz	$v1,.L0f114f10
    sd	$ra,48($sp)
    sd	$s8,72($sp)
    la	$s8,gl_wstatep
    lw	$a0,0($s8)
    lw	$t9,172($a0)
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    li	$a0,9
    jalr	$t9
    addiu	$s0,$s0,2
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    sd	$s7,64($sp)
    ld	$at,8($sp)
    lw	$v1,0($s4)
    sd	$s5,56($sp)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lw	$ra,4($s4)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s5,$s4,8
    addiu	$a0,$s1,-1
    slti	$a3,$s1,2
    bnez	$a3,.L0f114edc
    move	$s7,$a0
    lw	$a0,0($s8)
.L0f114e9c:
    lw	$t9,172($a0)
    addiu	$s7,$s7,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$at,0($s5)
    sw	$at,0($sp)
    lw	$ra,4($s5)
    lw	$t9,0($s8)
    sw	$ra,4($sp)
    lw	$t9,12($t9)
    addiu	$a0,$sp,0
    addiu	$s5,$s5,8
    jalr	$t9
    addiu	$s0,$s0,2
    bnez	$s7,.L0f114e9c
    lw	$a0,0($s8)
.L0f114edc:
    lw	$t9,0($s8)
    lw	$t9,220($t9)
    ld	$s5,56($sp)
    jalr	$t9
    ld	$s7,64($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,48($sp)
    ld	$s4,32($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f114f10:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-22140($a2)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f114f44:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f114f58:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a2,-22140($a2)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_i_splf2i

# Function: gl_c_splf2i
# Declared: Line 181 (Source lines: 181-181)
# Address: 0x0f114f90 - 0x0f1151e4 (Size: 596 bytes, Frame: 224)
.globl gl_c_splf2i
.ent gl_c_splf2i
gl_c_splf2i:
    addiu	$sp,$sp,-3168
    sd	$s1,3088($sp)
    sd	$gp,3104($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-7496 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19972($gp)
    move	$s1,$a2
    sd	$s0,3096($sp)
    beqz	$at,.L0f11513c
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f115174
    addiu	$a4,$a4,-22168
.L0f114fc8:
    move	$a0,$s0
    la	$v0,gl_n_splf2i
    bltz	$s0,.L0f1151b4
    addiu	$a2,$sp,8
    slti	$at,$s0,257
    beqzl	$at,.L0f115188
    lw	$a2,28($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f1150ec
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f115040
    move	$a7,$a4
.L0f115008:
    lhu	$v0,0($s1)
    sh	$v0,0($a2)
    sh	$zero,2($a2)
    addiu	$a0,$a0,-1
    lw	$at,0($a4)
    addiu	$a4,$a4,8
    addiu	$a2,$a2,12
    sw	$at,-8($a2)
    addiu	$s1,$s1,2
    lw	$a3,-4($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f115008
    sw	$a3,-4($a2)
    move	$a7,$a4
.L0f115040:
    move	$t0,$s1
    move	$t1,$a0
    move	$a6,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0f1150ec
    move	$a0,$a6
    move	$a1,$t1
    move	$a2,$a7
    move	$a4,$t0
.L0f115064:
    lhu	$v1,0($a4)
    sh	$v1,0($a0)
    sh	$zero,2($a0)
    lw	$v0,0($a2)
    sw	$v0,4($a0)
    lw	$at,4($a2)
    sw	$at,8($a0)
    lhu	$a3,2($a4)
    sh	$a3,12($a0)
    sh	$zero,14($a0)
    lw	$v1,8($a2)
    sw	$v1,16($a0)
    lw	$v0,12($a2)
    sw	$v0,20($a0)
    lhu	$at,4($a4)
    sh	$at,24($a0)
    sh	$zero,26($a0)
    lw	$a3,16($a2)
    sw	$a3,28($a0)
    lw	$v1,20($a2)
    sw	$v1,32($a0)
    lhu	$v0,6($a4)
    sh	$v0,36($a0)
    sh	$zero,38($a0)
    lw	$at,24($a2)
    addiu	$a2,$a2,32
    addiu	$a0,$a0,48
    sw	$at,-8($a0)
    addiu	$a4,$a4,8
    lw	$a3,-4($a2)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f115064
    sw	$a3,-4($a0)
    move	$a2,$a0
.L0f1150ec:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x1
    addiu	$a0,$a1,4
    andi	$a3,$a0,0x1
    beqz	$a3,.L0f115118
    la	$t9,gl_compile
    sd	$ra,3112($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a2)
    la	$t9,gl_compile
.L0f115118:
    sd	$ra,3112($sp)
    bal gl_compile
    addiu	$a1,$sp,0
    ld	$gp,3104($sp)
    ld	$ra,3112($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.L0f11513c:
    sd	$a1,3120($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,3112($sp)
    addiu	$a0,$a0,-22168
    jalr	$t9
    addiu	$a0,$a0,16
    ld	$ra,3112($sp)
    li	$a1,1
    sw	$a1,-19972($gp)
    la	$a4,sub_0f030000
    ld	$a1,3120($sp)
    bnez	$s0,.L0f114fc8
    addiu	$a4,$a4,-22168
.L0f115174:
    ld	$gp,3104($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.L0f115188:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3112($sp)
    jalr	$t9
    li	$a0,97
    ld	$gp,3104($sp)
    ld	$ra,3112($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.L0f1151b4:
    lw	$a2,28($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3112($sp)
    jalr	$t9
    li	$a0,3
    ld	$gp,3104($sp)
    ld	$ra,3112($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.end gl_c_splf2i

# Function: gl_n_splf2i
# Declared: Line 181 (Source lines: 181-181)
# Address: 0x0f1151e4 - 0x0f115324 (Size: 320 bytes, Frame: 208)
.globl gl_n_splf2i
.ent gl_n_splf2i
gl_n_splf2i:
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-8092 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    beqz	$at,.L0f115224
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,48($sp)
    sd	$s1,32($sp)
.L0f115224:
    sd	$s3,48($sp)
    la	$s3,gl_wstatep
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    lhu	$a1,4($s0)
    sd	$s1,32($sp)
    jalr	$t9
    lw	$s1,0($s0)
    lw	$t9,0($s3)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lw	$v1,8($s0)
    addiu	$s0,$s0,16
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lw	$ra,-4($s0)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f1152f0
    lw	$t9,0($s3)
    sd	$s5,56($sp)
    li	$s5,-1
    lw	$a0,0($s3)
.L0f1152ac:
    lw	$t9,172($a0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$at,4($s0)
    sw	$at,0($sp)
    lw	$ra,8($s0)
    lw	$t9,0($s3)
    sw	$ra,4($sp)
    lw	$t9,12($t9)
    addiu	$s0,$s0,12
    jalr	$t9
    addiu	$a0,$sp,0
    bne	$s1,$s5,.L0f1152ac
    lw	$a0,0($s3)
    ld	$s5,56($sp)
    lw	$t9,0($s3)
.L0f1152f0:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,32($sp)
    ld	$s3,48($sp)
    andi	$at,$s0,0x3
    beqz	$at,.L0f115310
    ld	$ra,40($sp)
    addiu	$s0,$s0,2
.L0f115310:
    ld	$gp,16($sp)
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_splf2i

# Function: gl_i_splf2
# Declared: Line 182 (Source lines: 182-182)
# Address: 0x0f115324 - 0x0f1154fc (Size: 472 bytes, Frame: 240)
.globl gl_i_splf2
.ent gl_i_splf2
gl_i_splf2:
    # Line 182
    addiu	$sp,$sp,-112
    sd	$s0,16($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-8412 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s4,24($sp)
    lw	$at,0($at)
    move	$s4,$a1
    sd	$s1,8($sp)
    beqz	$at,.L0f115370
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,40($sp)
    jalr	$t9
    nop
    ld	$ra,40($sp)
.L0f115370:
    beqzl	$s1,.L0f1154b0
    ld	$gp,32($sp)
    bltz	$s1,.L0f1154c4
    slti	$v1,$s1,257
    beqz	$v1,.L0f11547c
    sd	$ra,40($sp)
    sd	$s8,64($sp)
    la	$s8,gl_wstatep
    lw	$a0,0($s8)
    lw	$t9,172($a0)
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,9
    jalr	$t9
    addiu	$s0,$s0,2
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    sd	$s5,48($sp)
    ld	$ra,0($sp)
    lwc1	$f2,0($s4)
    li	$at,1
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,4($s4)
    sw	$at,11484($ra)
    lw	$t9,24($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    sd	$s7,56($sp)
    addiu	$s5,$s4,8
    addiu	$a0,$s1,-1
    slti	$v0,$s1,2
    bnez	$v0,.L0f115448
    move	$s7,$a0
    lw	$a0,0($s8)
.L0f115414:
    lw	$t9,172($a0)
    addiu	$s7,$s7,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    lwc1	$f13,4($s5)
    lw	$t9,4($t9)
    lwc1	$f12,0($s5)
    addiu	$s5,$s5,8
    jalr	$t9
    addiu	$s0,$s0,2
    bnez	$s7,.L0f115414
    lw	$a0,0($s8)
.L0f115448:
    lw	$t9,0($s8)
    lw	$t9,220($t9)
    ld	$s5,48($sp)
    jalr	$t9
    ld	$s7,56($sp)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,40($sp)
    ld	$s4,24($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f11547c:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-22124($a2)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1154b0:
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1154c4:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a2,-22124($a2)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_i_splf2

# Function: gl_c_splf2
# Declared: Line 182 (Source lines: 182-182)
# Address: 0x0f1154fc - 0x0f115750 (Size: 596 bytes, Frame: 224)
.globl gl_c_splf2
.ent gl_c_splf2
gl_c_splf2:
    addiu	$sp,$sp,-3168
    sd	$s1,3088($sp)
    sd	$gp,3104($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-8884 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19968($gp)
    move	$s1,$a2
    sd	$s0,3096($sp)
    beqz	$at,.L0f1156a8
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f1156e0
    addiu	$a4,$a4,-22168
.L0f115534:
    move	$a0,$s0
    la	$v0,gl_n_splf2
    bltz	$s0,.L0f115720
    addiu	$a2,$sp,8
    slti	$at,$s0,257
    beqzl	$at,.L0f1156f4
    lw	$a2,44($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f115658
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f1155ac
    move	$a7,$a4
.L0f115574:
    lhu	$a3,0($s1)
    sh	$a3,0($a2)
    sh	$zero,2($a2)
    addiu	$a0,$a0,-1
    lwc1	$f1,0($a4)
    addiu	$a4,$a4,8
    addiu	$a2,$a2,12
    swc1	$f1,-8($a2)
    addiu	$s1,$s1,2
    lwc1	$f0,-4($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f115574
    swc1	$f0,-4($a2)
    move	$a7,$a4
.L0f1155ac:
    move	$t0,$s1
    move	$t1,$a0
    move	$a6,$a2
    sra	$at,$a5,0x2
    beqz	$at,.L0f115658
    move	$a0,$a6
    move	$a1,$t1
    move	$a2,$a7
    move	$a4,$t0
.L0f1155d0:
    lhu	$at,0($a4)
    sh	$at,0($a0)
    sh	$zero,2($a0)
    lwc1	$f1,0($a2)
    swc1	$f1,4($a0)
    lwc1	$f0,4($a2)
    swc1	$f0,8($a0)
    lhu	$a3,2($a4)
    sh	$a3,12($a0)
    sh	$zero,14($a0)
    lwc1	$f3,8($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,12($a2)
    swc1	$f2,20($a0)
    lhu	$v1,4($a4)
    sh	$v1,24($a0)
    sh	$zero,26($a0)
    lwc1	$f1,16($a2)
    swc1	$f1,28($a0)
    lwc1	$f0,20($a2)
    swc1	$f0,32($a0)
    lhu	$v0,6($a4)
    sh	$v0,36($a0)
    sh	$zero,38($a0)
    lwc1	$f3,24($a2)
    addiu	$a2,$a2,32
    addiu	$a0,$a0,48
    swc1	$f3,-8($a0)
    addiu	$a4,$a4,8
    lwc1	$f2,-4($a2)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f1155d0
    swc1	$f2,-4($a0)
    move	$a2,$a0
.L0f115658:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x1
    addiu	$a0,$a1,4
    andi	$v0,$a0,0x1
    beqz	$v0,.L0f115684
    la	$t9,gl_compile
    sd	$ra,3112($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a2)
    la	$t9,gl_compile
.L0f115684:
    sd	$ra,3112($sp)
    bal gl_compile
    addiu	$a1,$sp,0
    ld	$gp,3104($sp)
    ld	$ra,3112($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.L0f1156a8:
    sd	$a1,3120($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,3112($sp)
    addiu	$a0,$a0,-22168
    jalr	$t9
    addiu	$a0,$a0,32
    ld	$ra,3112($sp)
    li	$a1,1
    sw	$a1,-19968($gp)
    la	$a4,sub_0f030000
    ld	$a1,3120($sp)
    bnez	$s0,.L0f115534
    addiu	$a4,$a4,-22168
.L0f1156e0:
    ld	$gp,3104($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.L0f1156f4:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3112($sp)
    jalr	$t9
    li	$a0,97
    ld	$gp,3104($sp)
    ld	$ra,3112($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.L0f115720:
    lw	$a2,44($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3112($sp)
    jalr	$t9
    li	$a0,3
    ld	$gp,3104($sp)
    ld	$ra,3112($sp)
    ld	$s0,3096($sp)
    ld	$s1,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.end gl_c_splf2

# Function: gl_n_splf2
# Declared: Line 182 (Source lines: 182-182)
# Address: 0x0f115750 - 0x0f115884 (Size: 308 bytes, Frame: 208)
.globl gl_n_splf2
.ent gl_n_splf2
gl_n_splf2:
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-9480 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s0,16($sp)
    beqz	$at,.L0f115790
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,40($sp)
    sd	$s1,24($sp)
.L0f115790:
    sd	$s3,40($sp)
    la	$s3,gl_wstatep
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    lhu	$a1,4($s0)
    sd	$s1,24($sp)
    jalr	$t9
    lw	$s1,0($s0)
    lw	$t9,0($s3)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,8($s0)
    li	$at,1
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,12($s0)
    sw	$at,11484($ra)
    lw	$t9,24($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    addiu	$s0,$s0,16
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f115850
    lw	$t9,0($s3)
    sd	$s5,48($sp)
    li	$s5,-1
.L0f115818:
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s3)
    lw	$t9,4($t9)
    lwc1	$f13,8($s0)
    jalr	$t9
    lwc1	$f12,4($s0)
    bne	$s1,$s5,.L0f115818
    addiu	$s0,$s0,12
    ld	$s5,48($sp)
    lw	$t9,0($s3)
.L0f115850:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,24($sp)
    ld	$s3,40($sp)
    andi	$at,$s0,0x3
    beqz	$at,.L0f115870
    ld	$ra,32($sp)
    addiu	$s0,$s0,2
.L0f115870:
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_splf2

# Function: gl_i_splfs
# Declared: Line 184 (Source lines: 184-184)
# Address: 0x0f115884 - 0x0f115a70 (Size: 492 bytes, Frame: 240)
.globl gl_i_splfs
.ent gl_i_splfs
gl_i_splfs:
    # Line 184
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-9788 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s4,32($sp)
    lw	$at,0($at)
    move	$s4,$a1
    sd	$s1,16($sp)
    beqz	$at,.L0f1158d0
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,48($sp)
    jalr	$t9
    nop
    ld	$ra,48($sp)
.L0f1158d0:
    beqzl	$s1,.L0f115a24
    ld	$gp,40($sp)
    bltz	$s1,.L0f115a38
    slti	$v1,$s1,257
    beqz	$v1,.L0f1159f0
    sd	$ra,48($sp)
    sd	$s8,72($sp)
    la	$s8,gl_wstatep
    lw	$a0,0($s8)
    lw	$t9,172($a0)
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    li	$a0,9
    jalr	$t9
    addiu	$s0,$s0,2
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lh	$a0,0($s4)
    sw	$a0,11488($at)
    sd	$s7,64($sp)
    lh	$v1,2($s4)
    sd	$s5,56($sp)
    addiu	$s5,$s4,6
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,4($s4)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$a0,$s1,-1
    slti	$a3,$s1,2
    bnez	$a3,.L0f1159bc
    move	$s7,$a0
    lw	$a0,0($s8)
.L0f115974:
    lw	$t9,172($a0)
    addiu	$s7,$s7,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lh	$v0,0($s5)
    sh	$v0,0($sp)
    lh	$at,2($s5)
    sh	$at,2($sp)
    lh	$ra,4($s5)
    lw	$t9,0($s8)
    sh	$ra,4($sp)
    lw	$t9,32($t9)
    addiu	$a0,$sp,0
    addiu	$s5,$s5,6
    jalr	$t9
    addiu	$s0,$s0,2
    bnez	$s7,.L0f115974
    lw	$a0,0($s8)
.L0f1159bc:
    lw	$t9,0($s8)
    lw	$t9,220($t9)
    ld	$s5,56($sp)
    jalr	$t9
    ld	$s7,64($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,48($sp)
    ld	$s4,32($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1159f0:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-22108($a2)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f115a24:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f115a38:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a2,-22108($a2)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_i_splfs

# Function: gl_c_splfs
# Declared: Line 184 (Source lines: 184-184)
# Address: 0x0f115a70 - 0x0f115cb8 (Size: 584 bytes, Frame: 224)
.globl gl_c_splfs
.ent gl_c_splfs
gl_c_splfs:
    addiu	$sp,$sp,-2144
    sd	$s1,2064($sp)
    sd	$gp,2080($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-10280 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19964($gp)
    move	$s1,$a2
    sd	$s0,2072($sp)
    beqz	$at,.L0f115c10
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f115c48
    addiu	$a4,$a4,-22168
.L0f115aa8:
    la	$v0,gl_n_splfs
    move	$a0,$a1
    move	$a5,$s0
    bltz	$s0,.L0f115c88
    addiu	$a2,$sp,8
    slti	$at,$s0,257
    beqzl	$at,.L0f115c5c
    lw	$a2,60($a4)
    move	$a4,$s0
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f115be0
    sw	$v1,4($sp)
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f115b24
    move	$t0,$a4
.L0f115ae8:
    lhu	$v1,0($s1)
    sh	$v1,0($a2)
    lh	$v0,0($a0)
    sh	$v0,2($a2)
    addiu	$a4,$a4,-1
    lh	$at,2($a0)
    addiu	$a0,$a0,6
    addiu	$a2,$a2,8
    sh	$at,-4($a2)
    addiu	$s1,$s1,2
    lh	$a3,-2($a0)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f115ae8
    sh	$a3,-2($a2)
    move	$t0,$a4
.L0f115b24:
    sra	$a3,$a5,0x2
    move	$a6,$a0
    move	$t1,$s1
    move	$a7,$a2
    move	$a1,$a7
    beqz	$a3,.L0f115bdc
    move	$a4,$a6
    move	$a0,$t1
    move	$a2,$t0
.L0f115b48:
    lhu	$a3,0($a0)
    sh	$a3,0($a1)
    lh	$v1,0($a4)
    sh	$v1,2($a1)
    lh	$v0,2($a4)
    sh	$v0,4($a1)
    lh	$at,4($a4)
    sh	$at,6($a1)
    lhu	$a3,2($a0)
    sh	$a3,8($a1)
    lh	$v1,6($a4)
    sh	$v1,10($a1)
    lh	$v0,8($a4)
    sh	$v0,12($a1)
    lh	$at,10($a4)
    sh	$at,14($a1)
    lhu	$a3,4($a0)
    sh	$a3,16($a1)
    lh	$v1,12($a4)
    sh	$v1,18($a1)
    lh	$v0,14($a4)
    sh	$v0,20($a1)
    lh	$at,16($a4)
    sh	$at,22($a1)
    lhu	$a3,6($a0)
    sh	$a3,24($a1)
    lh	$v1,18($a4)
    sh	$v1,26($a1)
    lh	$v0,20($a4)
    addiu	$a4,$a4,24
    addiu	$a1,$a1,32
    sh	$v0,-4($a1)
    addiu	$a0,$a0,8
    lh	$at,-2($a4)
    addiu	$a2,$a2,-4
    bnez	$a2,.L0f115b48
    sh	$at,-2($a1)
.L0f115bdc:
    sd	$ra,2088($sp)
.L0f115be0:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,2088($sp)
    sll	$a0,$s0,0x2
    bal gl_compile
    addiu	$a0,$a0,4
    ld	$gp,2080($sp)
    ld	$ra,2088($sp)
    ld	$s0,2072($sp)
    ld	$s1,2064($sp)
    jr	$ra
    addiu	$sp,$sp,2144
.L0f115c10:
    sd	$a1,2096($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,2088($sp)
    addiu	$a0,$a0,-22168
    jalr	$t9
    addiu	$a0,$a0,48
    ld	$ra,2088($sp)
    li	$a1,1
    sw	$a1,-19964($gp)
    la	$a4,sub_0f030000
    ld	$a1,2096($sp)
    bnez	$s0,.L0f115aa8
    addiu	$a4,$a4,-22168
.L0f115c48:
    ld	$gp,2080($sp)
    ld	$s0,2072($sp)
    ld	$s1,2064($sp)
    jr	$ra
    addiu	$sp,$sp,2144
.L0f115c5c:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2088($sp)
    jalr	$t9
    li	$a0,97
    ld	$gp,2080($sp)
    ld	$ra,2088($sp)
    ld	$s0,2072($sp)
    ld	$s1,2064($sp)
    jr	$ra
    addiu	$sp,$sp,2144
.L0f115c88:
    lw	$a2,60($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2088($sp)
    jalr	$t9
    li	$a0,3
    ld	$gp,2080($sp)
    ld	$ra,2088($sp)
    ld	$s0,2072($sp)
    ld	$s1,2064($sp)
    jr	$ra
    addiu	$sp,$sp,2144
.end gl_c_splfs

# Function: gl_n_splfs
# Declared: Line 184 (Source lines: 184-184)
# Address: 0x0f115cb8 - 0x0f115df8 (Size: 320 bytes, Frame: 208)
.globl gl_n_splfs
.ent gl_n_splfs
gl_n_splfs:
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-10864 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    beqz	$at,.L0f115cf8
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,48($sp)
    sd	$s1,32($sp)
.L0f115cf8:
    sd	$s3,48($sp)
    la	$s3,gl_wstatep
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    lhu	$a1,4($s0)
    sd	$s1,32($sp)
    jalr	$t9
    lw	$s1,0($s0)
    lw	$t9,0($s3)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lh	$a0,6($s0)
    sw	$a0,11488($at)
    lh	$v1,8($s0)
    addiu	$s0,$s0,12
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,-2($s0)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f115dd0
    lw	$t9,0($s3)
    sd	$s5,56($sp)
    li	$s5,-1
    lw	$a0,0($s3)
.L0f115d84:
    lw	$t9,172($a0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lh	$v0,2($s0)
    sh	$v0,0($sp)
    lh	$at,4($s0)
    sh	$at,2($sp)
    lh	$ra,6($s0)
    lw	$t9,0($s3)
    sh	$ra,4($sp)
    lw	$t9,32($t9)
    addiu	$s0,$s0,8
    jalr	$t9
    addiu	$a0,$sp,0
    bne	$s1,$s5,.L0f115d84
    lw	$a0,0($s3)
    ld	$s5,56($sp)
    lw	$t9,0($s3)
.L0f115dd0:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,32($sp)
    ld	$gp,16($sp)
    move	$v0,$s0
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_splfs

# Function: gl_i_splfi
# Declared: Line 185 (Source lines: 185-185)
# Address: 0x0f115df8 - 0x0f115fe4 (Size: 492 bytes, Frame: 128)
.globl gl_i_splfi
.ent gl_i_splfi
gl_i_splfi:
    # Line 185
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    sd	$gp,48($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-11184 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s4,40($sp)
    lw	$at,0($at)
    move	$s4,$a1
    sd	$s1,24($sp)
    beqz	$at,.L0f115e44
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,56($sp)
    jalr	$t9
    nop
    ld	$ra,56($sp)
.L0f115e44:
    beqzl	$s1,.L0f115f98
    ld	$gp,48($sp)
    bltz	$s1,.L0f115fac
    slti	$v1,$s1,257
    beqz	$v1,.L0f115f64
    sd	$ra,56($sp)
    sd	$s8,80($sp)
    la	$s8,gl_wstatep
    lw	$a0,0($s8)
    lw	$t9,172($a0)
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    sd	$t9,16($sp)
    lw	$t9,216($t9)
    li	$a0,9
    jalr	$t9
    addiu	$s0,$s0,2
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,16($sp)
    lw	$a0,0($s4)
    sw	$a0,11488($at)
    sd	$s7,72($sp)
    lw	$v1,4($s4)
    sd	$s5,64($sp)
    addiu	$s5,$s4,12
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,8($s4)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$a0,$s1,-1
    slti	$a3,$s1,2
    bnez	$a3,.L0f115f30
    move	$s7,$a0
    lw	$a0,0($s8)
.L0f115ee8:
    lw	$t9,172($a0)
    addiu	$s7,$s7,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$v0,0($s5)
    sw	$v0,0($sp)
    lw	$at,4($s5)
    sw	$at,4($sp)
    lw	$ra,8($s5)
    lw	$t9,0($s8)
    sw	$ra,8($sp)
    lw	$t9,28($t9)
    addiu	$a0,$sp,0
    addiu	$s5,$s5,12
    jalr	$t9
    addiu	$s0,$s0,2
    bnez	$s7,.L0f115ee8
    lw	$a0,0($s8)
.L0f115f30:
    lw	$t9,0($s8)
    lw	$t9,220($t9)
    ld	$s5,64($sp)
    jalr	$t9
    ld	$s7,72($sp)
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,56($sp)
    ld	$s4,40($sp)
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f115f64:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-22092($a2)
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    ld	$ra,56($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f115f98:
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f115fac:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,56($sp)
    jalr	$t9
    lw	$a2,-22092($a2)
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    ld	$ra,56($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_i_splfi

# Function: gl_c_splfi
# Declared: Line 185 (Source lines: 185-185)
# Address: 0x0f115fe4 - 0x0f116240 (Size: 604 bytes, Frame: 224)
.globl gl_c_splfi
.ent gl_c_splfi
gl_c_splfi:
    addiu	$sp,$sp,-4192
    sd	$s1,4112($sp)
    sd	$gp,4128($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-11676 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19960($gp)
    move	$s1,$a2
    sd	$s0,4120($sp)
    beqz	$at,.L0f116198
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f1161d0
    addiu	$a4,$a4,-22168
.L0f11601c:
    la	$v0,gl_n_splfi
    move	$a0,$a1
    move	$a5,$s0
    bltz	$s0,.L0f116210
    addiu	$a2,$sp,8
    slti	$at,$s0,257
    beqzl	$at,.L0f1161e4
    lw	$a2,76($a4)
    move	$a4,$s0
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f116168
    sw	$v1,4($sp)
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f11609c
    move	$t0,$a4
.L0f11605c:
    lhu	$v1,0($s1)
    sh	$v1,0($a2)
    sh	$zero,2($a2)
    lw	$v0,0($a0)
    sw	$v0,4($a2)
    addiu	$a4,$a4,-1
    lw	$at,4($a0)
    addiu	$a0,$a0,12
    addiu	$a2,$a2,16
    sw	$at,-8($a2)
    addiu	$s1,$s1,2
    lw	$a3,-4($a0)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f11605c
    sw	$a3,-4($a2)
    move	$t0,$a4
.L0f11609c:
    sra	$a3,$a5,0x2
    move	$a6,$a0
    move	$t1,$s1
    move	$a7,$a2
    move	$a1,$a7
    beqz	$a3,.L0f116164
    move	$a4,$a6
    move	$a0,$t1
    move	$a2,$t0
.L0f1160c0:
    lhu	$a3,0($a0)
    sh	$a3,0($a1)
    sh	$zero,2($a1)
    lw	$v1,0($a4)
    sw	$v1,4($a1)
    lw	$v0,4($a4)
    sw	$v0,8($a1)
    lw	$at,8($a4)
    sw	$at,12($a1)
    lhu	$a3,2($a0)
    sh	$a3,16($a1)
    sh	$zero,18($a1)
    lw	$v1,12($a4)
    sw	$v1,20($a1)
    lw	$v0,16($a4)
    sw	$v0,24($a1)
    lw	$at,20($a4)
    sw	$at,28($a1)
    lhu	$a3,4($a0)
    sh	$a3,32($a1)
    sh	$zero,34($a1)
    lw	$v1,24($a4)
    sw	$v1,36($a1)
    lw	$v0,28($a4)
    sw	$v0,40($a1)
    lw	$at,32($a4)
    sw	$at,44($a1)
    lhu	$a3,6($a0)
    sh	$a3,48($a1)
    sh	$zero,50($a1)
    lw	$v1,36($a4)
    sw	$v1,52($a1)
    lw	$v0,40($a4)
    addiu	$a4,$a4,48
    addiu	$a1,$a1,64
    sw	$v0,-8($a1)
    addiu	$a0,$a0,8
    lw	$at,-4($a4)
    addiu	$a2,$a2,-4
    bnez	$a2,.L0f1160c0
    sw	$at,-4($a1)
.L0f116164:
    sd	$ra,4136($sp)
.L0f116168:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,4136($sp)
    sll	$a0,$s0,0x3
    bal gl_compile
    addiu	$a0,$a0,4
    ld	$gp,4128($sp)
    ld	$ra,4136($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.L0f116198:
    sd	$a1,4144($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,4136($sp)
    addiu	$a0,$a0,-22168
    jalr	$t9
    addiu	$a0,$a0,64
    ld	$ra,4136($sp)
    li	$a1,1
    sw	$a1,-19960($gp)
    la	$a4,sub_0f030000
    ld	$a1,4144($sp)
    bnez	$s0,.L0f11601c
    addiu	$a4,$a4,-22168
.L0f1161d0:
    ld	$gp,4128($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.L0f1161e4:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,4136($sp)
    jalr	$t9
    li	$a0,97
    ld	$gp,4128($sp)
    ld	$ra,4136($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.L0f116210:
    lw	$a2,76($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,4136($sp)
    jalr	$t9
    li	$a0,3
    ld	$gp,4128($sp)
    ld	$ra,4136($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.end gl_c_splfi

# Function: gl_n_splfi
# Declared: Line 185 (Source lines: 185-185)
# Address: 0x0f116240 - 0x0f116380 (Size: 320 bytes, Frame: 224)
.globl gl_n_splfi
.ent gl_n_splfi
gl_n_splfi:
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-12280 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,48($sp)
    sd	$s0,32($sp)
    beqz	$at,.L0f116280
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,56($sp)
    sd	$s1,40($sp)
.L0f116280:
    sd	$s3,56($sp)
    la	$s3,gl_wstatep
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    lhu	$a1,4($s0)
    sd	$s1,40($sp)
    jalr	$t9
    lw	$s1,0($s0)
    lw	$t9,0($s3)
    sd	$t9,16($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,16($sp)
    lw	$a0,8($s0)
    sw	$a0,11488($at)
    lw	$v1,12($s0)
    addiu	$s0,$s0,20
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,-4($s0)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f116358
    lw	$t9,0($s3)
    sd	$s5,64($sp)
    li	$s5,-1
    lw	$a0,0($s3)
.L0f11630c:
    lw	$t9,172($a0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$v0,4($s0)
    sw	$v0,0($sp)
    lw	$at,8($s0)
    sw	$at,4($sp)
    lw	$ra,12($s0)
    lw	$t9,0($s3)
    sw	$ra,8($sp)
    lw	$t9,28($t9)
    addiu	$s0,$s0,16
    jalr	$t9
    addiu	$a0,$sp,0
    bne	$s1,$s5,.L0f11630c
    lw	$a0,0($s3)
    ld	$s5,64($sp)
    lw	$t9,0($s3)
.L0f116358:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,40($sp)
    ld	$gp,24($sp)
    move	$v0,$s0
    ld	$ra,48($sp)
    ld	$s0,32($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_n_splfi

# Function: gl_i_splf
# Declared: Line 186 (Source lines: 186-186)
# Address: 0x0f116380 - 0x0f11655c (Size: 476 bytes, Frame: 240)
.globl gl_i_splf
.ent gl_i_splf
gl_i_splf:
    # Line 186
    addiu	$sp,$sp,-112
    sd	$s0,16($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-12600 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s0,$a2
    sd	$s4,24($sp)
    lw	$at,0($at)
    move	$s4,$a1
    sd	$s1,8($sp)
    beqz	$at,.L0f1163cc
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,40($sp)
    jalr	$t9
    nop
    ld	$ra,40($sp)
.L0f1163cc:
    beqzl	$s1,.L0f116510
    ld	$gp,32($sp)
    bltz	$s1,.L0f116524
    slti	$v1,$s1,257
    beqz	$v1,.L0f1164dc
    sd	$ra,40($sp)
    sd	$s8,64($sp)
    la	$s8,gl_wstatep
    lw	$a0,0($s8)
    lw	$t9,172($a0)
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,9
    jalr	$t9
    addiu	$s0,$s0,2
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,0($s4)
    swc1	$f2,11488($ra)
    sd	$s5,48($sp)
    lwc1	$f1,4($s4)
    addiu	$s5,$s4,12
    li	$at,1
    swc1	$f1,11492($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,8($s4)
    lw	$t9,24($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    sd	$s7,56($sp)
    addiu	$a0,$s1,-1
    slti	$v0,$s1,2
    bnez	$v0,.L0f1164a8
    move	$s7,$a0
    lw	$a0,0($s8)
.L0f116470:
    lw	$t9,172($a0)
    addiu	$s7,$s7,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s8)
    lwc1	$f14,8($s5)
    lw	$t9,20($t9)
    lwc1	$f13,4($s5)
    lwc1	$f12,0($s5)
    jalr	$t9
    addiu	$s0,$s0,2
    addiu	$s5,$s5,12
    bnez	$s7,.L0f116470
    lw	$a0,0($s8)
.L0f1164a8:
    lw	$t9,0($s8)
    lw	$t9,220($t9)
    ld	$s5,48($sp)
    jalr	$t9
    ld	$s7,56($sp)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,40($sp)
    ld	$s4,24($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1164dc:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-22076($a2)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f116510:
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f116524:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a2,-22076($a2)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_i_splf

# Function: gl_c_splf
# Declared: Line 186 (Source lines: 186-186)
# Address: 0x0f11655c - 0x0f1167b8 (Size: 604 bytes, Frame: 224)
.globl gl_c_splf
.ent gl_c_splf
gl_c_splf:
    addiu	$sp,$sp,-4192
    sd	$s1,4112($sp)
    sd	$gp,4128($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-13076 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19956($gp)
    move	$s1,$a2
    sd	$s0,4120($sp)
    beqz	$at,.L0f116710
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f116748
    addiu	$a4,$a4,-22168
.L0f116594:
    la	$v0,gl_n_splf
    move	$a0,$a1
    move	$a5,$s0
    bltz	$s0,.L0f116788
    addiu	$a2,$sp,8
    slti	$at,$s0,257
    beqzl	$at,.L0f11675c
    lw	$a2,92($a4)
    move	$a4,$s0
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f1166e0
    sw	$v1,4($sp)
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f116614
    move	$t0,$a4
.L0f1165d4:
    lhu	$a3,0($s1)
    sh	$a3,0($a2)
    sh	$zero,2($a2)
    lwc1	$f2,0($a0)
    swc1	$f2,4($a2)
    addiu	$a4,$a4,-1
    lwc1	$f1,4($a0)
    addiu	$a0,$a0,12
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$s1,$s1,2
    lwc1	$f0,-4($a0)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f1165d4
    swc1	$f0,-4($a2)
    move	$t0,$a4
.L0f116614:
    sra	$at,$a5,0x2
    move	$a6,$a0
    move	$t1,$s1
    move	$a7,$a2
    move	$a1,$a7
    beqz	$at,.L0f1166dc
    move	$a4,$a6
    move	$a0,$t1
    move	$a2,$t0
.L0f116638:
    lhu	$at,0($a0)
    sh	$at,0($a1)
    sh	$zero,2($a1)
    lwc1	$f2,0($a4)
    swc1	$f2,4($a1)
    lwc1	$f1,4($a4)
    swc1	$f1,8($a1)
    lwc1	$f0,8($a4)
    swc1	$f0,12($a1)
    lhu	$a3,2($a0)
    sh	$a3,16($a1)
    sh	$zero,18($a1)
    lwc1	$f3,12($a4)
    swc1	$f3,20($a1)
    lwc1	$f2,16($a4)
    swc1	$f2,24($a1)
    lwc1	$f1,20($a4)
    swc1	$f1,28($a1)
    lhu	$v1,4($a0)
    sh	$v1,32($a1)
    sh	$zero,34($a1)
    lwc1	$f0,24($a4)
    swc1	$f0,36($a1)
    lwc1	$f3,28($a4)
    swc1	$f3,40($a1)
    lwc1	$f2,32($a4)
    swc1	$f2,44($a1)
    lhu	$v0,6($a0)
    sh	$v0,48($a1)
    sh	$zero,50($a1)
    lwc1	$f1,36($a4)
    swc1	$f1,52($a1)
    lwc1	$f0,40($a4)
    addiu	$a4,$a4,48
    addiu	$a1,$a1,64
    swc1	$f0,-8($a1)
    addiu	$a0,$a0,8
    lwc1	$f3,-4($a4)
    addiu	$a2,$a2,-4
    bnez	$a2,.L0f116638
    swc1	$f3,-4($a1)
.L0f1166dc:
    sd	$ra,4136($sp)
.L0f1166e0:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,4136($sp)
    sll	$a0,$s0,0x3
    bal gl_compile
    addiu	$a0,$a0,4
    ld	$gp,4128($sp)
    ld	$ra,4136($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.L0f116710:
    sd	$a1,4144($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,4136($sp)
    addiu	$a0,$a0,-22168
    jalr	$t9
    addiu	$a0,$a0,80
    ld	$ra,4136($sp)
    li	$a1,1
    sw	$a1,-19956($gp)
    la	$a4,sub_0f030000
    ld	$a1,4144($sp)
    bnez	$s0,.L0f116594
    addiu	$a4,$a4,-22168
.L0f116748:
    ld	$gp,4128($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.L0f11675c:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,4136($sp)
    jalr	$t9
    li	$a0,97
    ld	$gp,4128($sp)
    ld	$ra,4136($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.L0f116788:
    lw	$a2,92($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,4136($sp)
    jalr	$t9
    li	$a0,3
    ld	$gp,4128($sp)
    ld	$ra,4136($sp)
    ld	$s0,4120($sp)
    ld	$s1,4112($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.end gl_c_splf

# Function: gl_n_splf
# Declared: Line 186 (Source lines: 186-186)
# Address: 0x0f1167b8 - 0x0f1168e4 (Size: 300 bytes, Frame: 208)
.globl gl_n_splf
.ent gl_n_splf
gl_n_splf:
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-13680 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s0,16($sp)
    beqz	$at,.L0f1167f8
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,40($sp)
    sd	$s1,24($sp)
.L0f1167f8:
    sd	$s3,40($sp)
    la	$s3,gl_wstatep
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    lhu	$a1,4($s0)
    sd	$s1,24($sp)
    jalr	$t9
    lw	$s1,0($s0)
    lw	$t9,0($s3)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,8($s0)
    swc1	$f2,11488($ra)
    lwc1	$f1,12($s0)
    addiu	$s0,$s0,20
    li	$at,1
    swc1	$f1,11492($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,-4($s0)
    lw	$t9,24($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f1168bc
    lw	$t9,0($s3)
    sd	$s5,48($sp)
    li	$s5,-1
.L0f116880:
    lw	$a0,0($s3)
    lw	$t9,172($a0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lhu	$a1,0($s0)
    lw	$t9,0($s3)
    lw	$t9,20($t9)
    lwc1	$f14,12($s0)
    lwc1	$f13,8($s0)
    jalr	$t9
    lwc1	$f12,4($s0)
    bne	$s1,$s5,.L0f116880
    addiu	$s0,$s0,16
    ld	$s5,48($sp)
    lw	$t9,0($s3)
.L0f1168bc:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,24($sp)
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_splf

