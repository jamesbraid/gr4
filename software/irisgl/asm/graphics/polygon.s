# Source: ../igloo/graphics/polygon.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/polygon.c -o polygon.T
# Total Functions: 36

.text

# Function: gl_i_poly2s
# Declared: Line 163 (Source lines: 163-163)
# Address: 0x0f0ffa3c - 0x0f0ffbe0 (Size: 420 bytes, Frame: 208)
.globl gl_i_poly2s
.ent gl_i_poly2s
gl_i_poly2s:
    # Line 163
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,14348 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s1,8($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,24($sp)
    beqz	$at,.L0f0ffa80
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f0ffa80:
    beqzl	$s0,.L0f0ffb9c
    ld	$gp,16($sp)
    bltz	$s0,.L0f0ffbac
    slti	$v1,$s0,257
    beqz	$v1,.L0f0ffb6c
    sd	$ra,32($sp)
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    sd	$s5,40($sp)
    ld	$at,0($sp)
    lh	$v1,0($s1)
    sd	$s2,48($sp)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lh	$ra,2($s1)
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s2,$s1,4
    ld	$ra,32($sp)
    addiu	$a0,$s0,-1
    slti	$a2,$s0,2
    bnez	$a2,.L0f0ffb28
    move	$s5,$a0
.L0f0ffb08:
    la	$t9,glVertex2s
    lh	$a1,2($s2)
    addiu	$s5,$s5,-1
    jalr	$t9
    lh	$a0,0($s2)
    bnez	$s5,.L0f0ffb08
    addiu	$s2,$s2,4
    ld	$ra,32($sp)
.L0f0ffb28:
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    ld	$s5,40($sp)
    beqz	$at,.L0f0ffb58
    ld	$s2,48($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f0ffb58:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ffb6c:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24828($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ffb9c:
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ffbac:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24828($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_poly2s

# Function: gl_c_poly2s
# Declared: Line 163 (Source lines: 163-163)
# Address: 0x0f0ffbe0 - 0x0f0ffdac (Size: 460 bytes, Frame: 192)
.globl gl_c_poly2s
.ent gl_c_poly2s
gl_c_poly2s:
    addiu	$sp,$sp,-1088
    sd	$gp,1040($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,13928 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20416($gp)
    sd	$s0,1048($sp)
    beqz	$at,.L0f0ffd14
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f0ffd48
    addiu	$a4,$a4,-24840
.L0f0ffc10:
    move	$a0,$s0
    la	$v0,gl_n_poly2s
    bltz	$s0,.L0f0ffd80
    move	$a3,$a1
    slti	$at,$s0,257
    beqz	$at,.L0f0ffd58
    lw	$a2,12($a4)
    addiu	$a4,$sp,8
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f0ffce8
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f0ffc78
    move	$a7,$a4
.L0f0ffc50:
    lh	$at,0($a3)
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,4
    sh	$at,0($a4)
    addiu	$a4,$a4,4
    lh	$a2,-2($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f0ffc50
    sh	$a2,-2($a4)
    move	$a7,$a4
.L0f0ffc78:
    sra	$v0,$a5,0x2
    move	$t0,$a0
    beqz	$v0,.L0f0ffce4
    move	$a6,$a3
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$a6
.L0f0ffc94:
    lh	$v0,0($a1)
    sh	$v0,0($a3)
    lh	$at,2($a1)
    sh	$at,2($a3)
    lh	$a2,4($a1)
    sh	$a2,4($a3)
    lh	$v1,6($a1)
    sh	$v1,6($a3)
    lh	$v0,8($a1)
    sh	$v0,8($a3)
    lh	$at,10($a1)
    sh	$at,10($a3)
    lh	$a2,12($a1)
    addiu	$a1,$a1,16
    sh	$a2,12($a3)
    addiu	$a3,$a3,16
    lh	$v1,-2($a1)
    addiu	$a0,$a0,-4
    bnez	$a0,.L0f0ffc94
    sh	$v1,-2($a3)
.L0f0ffce4:
    sd	$ra,1056($sp)
.L0f0ffce8:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,1056($sp)
    addu	$a0,$s0,$s0
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$ra,1056($sp)
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.L0f0ffd14:
    sd	$a1,1064($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$ra,1056($sp)
    jalr	$t9
    addiu	$a0,$a0,-24840
    ld	$ra,1056($sp)
    li	$a1,1
    sw	$a1,-20416($gp)
    la	$a4,sub_0f030000
    ld	$a1,1064($sp)
    bnez	$s0,.L0f0ffc10
    addiu	$a4,$a4,-24840
.L0f0ffd48:
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.L0f0ffd58:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1056($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,1056($sp)
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.L0f0ffd80:
    lw	$a2,12($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1056($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,1056($sp)
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.end gl_c_poly2s

# Function: gl_n_poly2s
# Declared: Line 163 (Source lines: 163-163)
# Address: 0x0f0ffdac - 0x0f0ffec0 (Size: 276 bytes, Frame: 192)
.globl gl_n_poly2s
.ent gl_n_poly2s
gl_n_poly2s:
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,13468 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    beqz	$at,.L0f0ffde8
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s2,32($sp)
.L0f0ffde8:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,3
    sd	$s2,32($sp)
    jalr	$t9
    lw	$s2,0($s1)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,0($sp)
    lh	$v1,4($s1)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lh	$ra,6($s1)
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    ld	$ra,24($sp)
    addiu	$s1,$s1,8
    addiu	$s2,$s2,-1
    bltz	$s2,.L0f0ffe84
    la	$a1,gl_inMoveDraw
    sd	$s3,40($sp)
    li	$s3,-1
.L0f0ffe5c:
    la	$t9,glVertex2s
    lh	$a1,2($s1)
    addiu	$s2,$s2,-1
    jalr	$t9
    lh	$a0,0($s1)
    bne	$s2,$s3,.L0f0ffe5c
    addiu	$s1,$s1,4
    ld	$s3,40($sp)
    ld	$ra,24($sp)
    la	$a1,gl_inMoveDraw
.L0f0ffe84:
    lw	$a1,0($a1)
    beqz	$a1,.L0f0ffeac
    ld	$s2,32($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f0ffeac:
    ld	$gp,16($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_poly2s

# Function: gl_i_poly2i
# Declared: Line 164 (Source lines: 164-164)
# Address: 0x0f0ffec0 - 0x0f100064 (Size: 420 bytes, Frame: 208)
.globl gl_i_poly2i
.ent gl_i_poly2i
gl_i_poly2i:
    # Line 164
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,13192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s1,8($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,24($sp)
    beqz	$at,.L0f0fff04
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f0fff04:
    beqzl	$s0,.L0f100020
    ld	$gp,16($sp)
    bltz	$s0,.L0f100030
    slti	$v1,$s0,257
    beqz	$v1,.L0f0ffff0
    sd	$ra,32($sp)
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    sd	$s5,40($sp)
    ld	$at,0($sp)
    lw	$v1,0($s1)
    sd	$s2,48($sp)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lw	$ra,4($s1)
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s2,$s1,8
    ld	$ra,32($sp)
    addiu	$a0,$s0,-1
    slti	$a2,$s0,2
    bnez	$a2,.L0f0fffac
    move	$s5,$a0
.L0f0fff8c:
    la	$t9,glVertex2i
    lw	$a1,4($s2)
    addiu	$s5,$s5,-1
    jalr	$t9
    lw	$a0,0($s2)
    bnez	$s5,.L0f0fff8c
    addiu	$s2,$s2,8
    ld	$ra,32($sp)
.L0f0fffac:
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    ld	$s5,40($sp)
    beqz	$at,.L0f0fffdc
    ld	$s2,48($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f0fffdc:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ffff0:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24812($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100020:
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100030:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24812($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_poly2i

# Function: gl_c_poly2i
# Declared: Line 164 (Source lines: 164-164)
# Address: 0x0f100064 - 0x0f100234 (Size: 464 bytes, Frame: 192)
.globl gl_c_poly2i
.ent gl_c_poly2i
gl_c_poly2i:
    addiu	$sp,$sp,-2112
    sd	$gp,2064($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,12772 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20412($gp)
    sd	$s0,2072($sp)
    beqz	$at,.L0f100198
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f1001d0
    addiu	$a4,$a4,-24840
.L0f100094:
    move	$a0,$s0
    la	$v0,gl_n_poly2i
    bltz	$s0,.L0f100208
    move	$a3,$a1
    slti	$at,$s0,257
    beqz	$at,.L0f1001e0
    lw	$a2,28($a4)
    addiu	$a4,$sp,8
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f10016c
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f1000fc
    move	$a7,$a4
.L0f1000d4:
    lw	$at,0($a3)
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,8
    sw	$at,0($a4)
    addiu	$a4,$a4,8
    lw	$a2,-4($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f1000d4
    sw	$a2,-4($a4)
    move	$a7,$a4
.L0f1000fc:
    sra	$v0,$a5,0x2
    move	$t0,$a0
    beqz	$v0,.L0f100168
    move	$a6,$a3
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$a6
.L0f100118:
    lw	$v0,0($a1)
    sw	$v0,0($a3)
    lw	$at,4($a1)
    sw	$at,4($a3)
    lw	$a2,8($a1)
    sw	$a2,8($a3)
    lw	$v1,12($a1)
    sw	$v1,12($a3)
    lw	$v0,16($a1)
    sw	$v0,16($a3)
    lw	$at,20($a1)
    sw	$at,20($a3)
    lw	$a2,24($a1)
    addiu	$a1,$a1,32
    sw	$a2,24($a3)
    addiu	$a3,$a3,32
    lw	$v1,-4($a1)
    addiu	$a0,$a0,-4
    bnez	$a0,.L0f100118
    sw	$v1,-4($a3)
.L0f100168:
    sd	$ra,2080($sp)
.L0f10016c:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,2080($sp)
    sll	$a0,$s0,0x2
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f100198:
    sd	$a1,2088($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,2080($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,16
    ld	$ra,2080($sp)
    li	$a1,1
    sw	$a1,-20412($gp)
    la	$a4,sub_0f030000
    ld	$a1,2088($sp)
    bnez	$s0,.L0f100094
    addiu	$a4,$a4,-24840
.L0f1001d0:
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f1001e0:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f100208:
    lw	$a2,28($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.end gl_c_poly2i

# Function: gl_n_poly2i
# Declared: Line 164 (Source lines: 164-164)
# Address: 0x0f100234 - 0x0f100348 (Size: 276 bytes, Frame: 192)
.globl gl_n_poly2i
.ent gl_n_poly2i
gl_n_poly2i:
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,12308 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    beqz	$at,.L0f100270
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s2,32($sp)
.L0f100270:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,3
    sd	$s2,32($sp)
    jalr	$t9
    lw	$s2,0($s1)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,0($sp)
    lw	$v1,4($s1)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lw	$ra,8($s1)
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    ld	$ra,24($sp)
    addiu	$s1,$s1,12
    addiu	$s2,$s2,-1
    bltz	$s2,.L0f10030c
    la	$a1,gl_inMoveDraw
    sd	$s3,40($sp)
    li	$s3,-1
.L0f1002e4:
    la	$t9,glVertex2i
    lw	$a1,4($s1)
    addiu	$s2,$s2,-1
    jalr	$t9
    lw	$a0,0($s1)
    bne	$s2,$s3,.L0f1002e4
    addiu	$s1,$s1,8
    ld	$s3,40($sp)
    ld	$ra,24($sp)
    la	$a1,gl_inMoveDraw
.L0f10030c:
    lw	$a1,0($a1)
    beqz	$a1,.L0f100334
    ld	$s2,32($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f100334:
    ld	$gp,16($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_poly2i

# Function: gl_i_poly2
# Declared: Line 165 (Source lines: 165-165)
# Address: 0x0f100348 - 0x0f1004f0 (Size: 424 bytes, Frame: 208)
.globl gl_i_poly2
.ent gl_i_poly2
gl_i_poly2:
    # Line 165
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,12032 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s1,8($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,24($sp)
    beqz	$at,.L0f10038c
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10038c:
    beqzl	$s0,.L0f1004ac
    ld	$gp,16($sp)
    bltz	$s0,.L0f1004bc
    slti	$v1,$s0,257
    beqz	$v1,.L0f10047c
    sd	$ra,32($sp)
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    sd	$s5,40($sp)
    li	$at,1
    ld	$ra,0($sp)
    lwc1	$f2,0($s1)
    la	$t9,glVertex3fv
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,4($s1)
    sw	$at,11484($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    sd	$s2,48($sp)
    addiu	$s2,$s1,8
    ld	$ra,32($sp)
    addiu	$a0,$s0,-1
    slti	$v0,$s0,2
    bnez	$v0,.L0f100438
    move	$s5,$a0
.L0f100418:
    la	$t9,glVertex2f
    lwc1	$f13,4($s2)
    addiu	$s5,$s5,-1
    jalr	$t9
    lwc1	$f12,0($s2)
    bnez	$s5,.L0f100418
    addiu	$s2,$s2,8
    ld	$ra,32($sp)
.L0f100438:
    la	$v1,gl_inMoveDraw
    lw	$v1,0($v1)
    ld	$s5,40($sp)
    beqz	$v1,.L0f100468
    ld	$s2,48($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f100468:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f10047c:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24796($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f1004ac:
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f1004bc:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24796($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_poly2

# Function: gl_c_poly2
# Declared: Line 165 (Source lines: 165-165)
# Address: 0x0f1004f0 - 0x0f1006c0 (Size: 464 bytes, Frame: 192)
.globl gl_c_poly2
.ent gl_c_poly2
gl_c_poly2:
    addiu	$sp,$sp,-2112
    sd	$gp,2064($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,11608 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20408($gp)
    sd	$s0,2072($sp)
    beqz	$at,.L0f100624
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f10065c
    addiu	$a4,$a4,-24840
.L0f100520:
    move	$a0,$s0
    la	$v0,gl_n_poly2
    bltz	$s0,.L0f100694
    move	$a3,$a1
    slti	$at,$s0,257
    beqz	$at,.L0f10066c
    lw	$a2,44($a4)
    addiu	$a4,$sp,8
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f1005f8
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f100588
    move	$a7,$a4
.L0f100560:
    lwc1	$f1,0($a3)
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,8
    swc1	$f1,0($a4)
    addiu	$a4,$a4,8
    lwc1	$f0,-4($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f100560
    swc1	$f0,-4($a4)
    move	$a7,$a4
.L0f100588:
    sra	$a2,$a5,0x2
    move	$t0,$a0
    beqz	$a2,.L0f1005f4
    move	$a6,$a3
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$a6
.L0f1005a4:
    lwc1	$f1,0($a1)
    swc1	$f1,0($a3)
    lwc1	$f0,4($a1)
    swc1	$f0,4($a3)
    lwc1	$f3,8($a1)
    swc1	$f3,8($a3)
    lwc1	$f2,12($a1)
    swc1	$f2,12($a3)
    lwc1	$f1,16($a1)
    swc1	$f1,16($a3)
    lwc1	$f0,20($a1)
    swc1	$f0,20($a3)
    lwc1	$f3,24($a1)
    addiu	$a1,$a1,32
    swc1	$f3,24($a3)
    addiu	$a3,$a3,32
    lwc1	$f2,-4($a1)
    addiu	$a0,$a0,-4
    bnez	$a0,.L0f1005a4
    swc1	$f2,-4($a3)
.L0f1005f4:
    sd	$ra,2080($sp)
.L0f1005f8:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,2080($sp)
    sll	$a0,$s0,0x2
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f100624:
    sd	$a1,2088($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,2080($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,32
    ld	$ra,2080($sp)
    li	$a1,1
    sw	$a1,-20408($gp)
    la	$a4,sub_0f030000
    ld	$a1,2088($sp)
    bnez	$s0,.L0f100520
    addiu	$a4,$a4,-24840
.L0f10065c:
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f10066c:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f100694:
    lw	$a2,44($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.end gl_c_poly2

# Function: gl_n_poly2
# Declared: Line 165 (Source lines: 165-165)
# Address: 0x0f1006c0 - 0x0f1007dc (Size: 284 bytes, Frame: 192)
.globl gl_n_poly2
.ent gl_n_poly2
gl_n_poly2:
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,11144 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    beqz	$at,.L0f1006fc
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s2,32($sp)
.L0f1006fc:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,3
    sd	$s2,32($sp)
    jalr	$t9
    lw	$s2,0($s1)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    li	$at,1
    ld	$ra,0($sp)
    lwc1	$f2,4($s1)
    la	$t9,glVertex3fv
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,8($s1)
    sw	$at,11484($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$s1,$s1,12
    addiu	$s2,$s2,-1
    bltz	$s2,.L0f1007a0
    la	$v1,gl_inMoveDraw
    sd	$s3,40($sp)
    li	$s3,-1
.L0f100778:
    la	$t9,glVertex2f
    lwc1	$f13,4($s1)
    addiu	$s2,$s2,-1
    jalr	$t9
    lwc1	$f12,0($s1)
    bne	$s2,$s3,.L0f100778
    addiu	$s1,$s1,8
    ld	$s3,40($sp)
    ld	$ra,24($sp)
    la	$v1,gl_inMoveDraw
.L0f1007a0:
    lw	$v1,0($v1)
    beqz	$v1,.L0f1007c8
    ld	$s2,32($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f1007c8:
    ld	$gp,16($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_poly2

# Function: gl_i_polys
# Declared: Line 166 (Source lines: 166-166)
# Address: 0x0f1007dc - 0x0f100988 (Size: 428 bytes, Frame: 208)
.globl gl_i_polys
.ent gl_i_polys
gl_i_polys:
    # Line 166
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,10860 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s1,8($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,24($sp)
    beqz	$at,.L0f100820
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f100820:
    beqzl	$s0,.L0f100944
    ld	$gp,16($sp)
    bltz	$s0,.L0f100954
    slti	$v1,$s0,257
    beqz	$v1,.L0f100914
    sd	$ra,32($sp)
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,0($sp)
    lh	$a0,0($s1)
    sw	$a0,11488($at)
    lh	$v1,2($s1)
    sd	$s5,40($sp)
    sd	$s2,48($sp)
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,4($s1)
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$s2,$s1,6
    ld	$ra,32($sp)
    addiu	$a0,$s0,-1
    slti	$a2,$s0,2
    bnez	$a2,.L0f1008d0
    move	$s5,$a0
.L0f1008ac:
    la	$t9,glVertex3s
    lh	$a2,4($s2)
    lh	$a1,2($s2)
    jalr	$t9
    lh	$a0,0($s2)
    addiu	$s5,$s5,-1
    bnez	$s5,.L0f1008ac
    addiu	$s2,$s2,6
    ld	$ra,32($sp)
.L0f1008d0:
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    ld	$s5,40($sp)
    beqz	$at,.L0f100900
    ld	$s2,48($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f100900:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100914:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24780($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100944:
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100954:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24780($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_polys

# Function: gl_c_polys
# Declared: Line 166 (Source lines: 166-166)
# Address: 0x0f100988 - 0x0f100b9c (Size: 532 bytes, Frame: 192)
.globl gl_c_polys
.ent gl_c_polys
gl_c_polys:
    addiu	$sp,$sp,-1600
    sd	$gp,1552($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,10432 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20404($gp)
    sd	$s0,1560($sp)
    beqz	$at,.L0f100b00
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f100b38
    addiu	$a4,$a4,-24840
.L0f1009b8:
    move	$a0,$s0
    la	$v0,gl_n_polys
    bltz	$s0,.L0f100b70
    addiu	$a3,$sp,8
    slti	$at,$s0,257
    beqz	$at,.L0f100b48
    lw	$a2,60($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f100ab8
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f100a28
    move	$a7,$a4
.L0f1009f8:
    lh	$v0,0($a4)
    sh	$v0,0($a3)
    lh	$at,2($a4)
    addiu	$a0,$a0,-1
    addiu	$a4,$a4,6
    sh	$at,2($a3)
    addiu	$a3,$a3,6
    lh	$a2,-2($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f1009f8
    sh	$a2,-2($a3)
    move	$a7,$a4
.L0f100a28:
    move	$t0,$a0
    move	$a6,$a3
    sra	$v1,$a5,0x2
    beqz	$v1,.L0f100ab8
    move	$a0,$a6
    move	$a1,$t0
    move	$a3,$a7
.L0f100a44:
    lh	$v1,0($a3)
    sh	$v1,0($a0)
    lh	$v0,2($a3)
    sh	$v0,2($a0)
    lh	$at,4($a3)
    sh	$at,4($a0)
    lh	$a2,6($a3)
    sh	$a2,6($a0)
    lh	$v1,8($a3)
    sh	$v1,8($a0)
    lh	$v0,10($a3)
    sh	$v0,10($a0)
    lh	$at,12($a3)
    sh	$at,12($a0)
    lh	$a2,14($a3)
    sh	$a2,14($a0)
    lh	$v1,16($a3)
    sh	$v1,16($a0)
    lh	$v0,18($a3)
    sh	$v0,18($a0)
    lh	$at,20($a3)
    addiu	$a3,$a3,24
    sh	$at,20($a0)
    addiu	$a0,$a0,24
    lh	$a2,-2($a3)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f100a44
    sh	$a2,-2($a0)
    move	$a3,$a0
.L0f100ab8:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    addiu	$a0,$a1,4
    andi	$a2,$a0,0x1
    beqz	$a2,.L0f100ae0
    la	$t9,gl_compile
    sd	$ra,1568($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a3)
    la	$t9,gl_compile
.L0f100ae0:
    sd	$ra,1568($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,1568($sp)
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.L0f100b00:
    sd	$a1,1576($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,1568($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,48
    ld	$ra,1568($sp)
    li	$a1,1
    sw	$a1,-20404($gp)
    la	$a4,sub_0f030000
    ld	$a1,1576($sp)
    bnez	$s0,.L0f1009b8
    addiu	$a4,$a4,-24840
.L0f100b38:
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.L0f100b48:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1568($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,1568($sp)
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.L0f100b70:
    lw	$a2,60($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1568($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,1568($sp)
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.end gl_c_polys

# Function: gl_n_polys
# Declared: Line 166 (Source lines: 166-166)
# Address: 0x0f100b9c - 0x0f100cc8 (Size: 300 bytes, Frame: 192)
.globl gl_n_polys
.ent gl_n_polys
gl_n_polys:
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,9900 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    beqz	$at,.L0f100bd8
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s2,32($sp)
.L0f100bd8:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,3
    sd	$s2,32($sp)
    jalr	$t9
    lw	$s2,0($s1)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,0($sp)
    lh	$a0,4($s1)
    sw	$a0,11488($at)
    lh	$v1,6($s1)
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,8($s1)
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    ld	$ra,24($sp)
    addiu	$s1,$s1,10
    addiu	$s2,$s2,-1
    bltz	$s2,.L0f100c7c
    la	$a1,gl_inMoveDraw
    sd	$s3,40($sp)
    li	$s3,-1
.L0f100c50:
    lh	$a2,4($s1)
    la	$t9,glVertex3s
    lh	$a1,2($s1)
    addiu	$s2,$s2,-1
    jalr	$t9
    lh	$a0,0($s1)
    bne	$s2,$s3,.L0f100c50
    addiu	$s1,$s1,6
    ld	$s3,40($sp)
    ld	$ra,24($sp)
    la	$a1,gl_inMoveDraw
.L0f100c7c:
    lw	$a1,0($a1)
    beqz	$a1,.L0f100ca4
    ld	$s2,32($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f100ca4:
    andi	$a2,$s1,0x3
    beqz	$a2,.L0f100cb8
    ld	$gp,16($sp)
    addiu	$s1,$s1,2
    ld	$gp,16($sp)
.L0f100cb8:
    move	$v0,$s1
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_polys

# Function: gl_i_polyi
# Declared: Line 167 (Source lines: 167-167)
# Address: 0x0f100cc8 - 0x0f100e74 (Size: 428 bytes, Frame: 208)
.globl gl_i_polyi
.ent gl_i_polyi
gl_i_polyi:
    # Line 167
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,9600 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s1,8($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,24($sp)
    beqz	$at,.L0f100d0c
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f100d0c:
    beqzl	$s0,.L0f100e30
    ld	$gp,16($sp)
    bltz	$s0,.L0f100e40
    slti	$v1,$s0,257
    beqz	$v1,.L0f100e00
    sd	$ra,32($sp)
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,0($sp)
    lw	$a0,0($s1)
    sw	$a0,11488($at)
    lw	$v1,4($s1)
    sd	$s5,40($sp)
    sd	$s2,48($sp)
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,8($s1)
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$s2,$s1,12
    ld	$ra,32($sp)
    addiu	$a0,$s0,-1
    slti	$a2,$s0,2
    bnez	$a2,.L0f100dbc
    move	$s5,$a0
.L0f100d98:
    la	$t9,glVertex3i
    lw	$a2,8($s2)
    lw	$a1,4($s2)
    jalr	$t9
    lw	$a0,0($s2)
    addiu	$s5,$s5,-1
    bnez	$s5,.L0f100d98
    addiu	$s2,$s2,12
    ld	$ra,32($sp)
.L0f100dbc:
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    ld	$s5,40($sp)
    beqz	$at,.L0f100dec
    ld	$s2,48($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f100dec:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100e00:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24764($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100e30:
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f100e40:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24764($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_polyi

# Function: gl_c_polyi
# Declared: Line 167 (Source lines: 167-167)
# Address: 0x0f100e74 - 0x0f10108c (Size: 536 bytes, Frame: 192)
.globl gl_c_polyi
.ent gl_c_polyi
gl_c_polyi:
    addiu	$sp,$sp,-3136
    sd	$gp,3088($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,9172 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20400($gp)
    sd	$s0,3096($sp)
    beqz	$at,.L0f100ff0
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f101028
    addiu	$a4,$a4,-24840
.L0f100ea4:
    move	$a0,$s0
    la	$v0,gl_n_polyi
    bltz	$s0,.L0f101060
    addiu	$a3,$sp,8
    slti	$at,$s0,257
    beqz	$at,.L0f101038
    lw	$a2,76($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f100fa4
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f100f14
    move	$a7,$a4
.L0f100ee4:
    lw	$v0,0($a4)
    sw	$v0,0($a3)
    lw	$at,4($a4)
    addiu	$a0,$a0,-1
    addiu	$a4,$a4,12
    sw	$at,4($a3)
    addiu	$a3,$a3,12
    lw	$a2,-4($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f100ee4
    sw	$a2,-4($a3)
    move	$a7,$a4
.L0f100f14:
    move	$t0,$a0
    move	$a6,$a3
    sra	$v1,$a5,0x2
    beqz	$v1,.L0f100fa4
    move	$a0,$a6
    move	$a1,$t0
    move	$a3,$a7
.L0f100f30:
    lw	$v1,0($a3)
    sw	$v1,0($a0)
    lw	$v0,4($a3)
    sw	$v0,4($a0)
    lw	$at,8($a3)
    sw	$at,8($a0)
    lw	$a2,12($a3)
    sw	$a2,12($a0)
    lw	$v1,16($a3)
    sw	$v1,16($a0)
    lw	$v0,20($a3)
    sw	$v0,20($a0)
    lw	$at,24($a3)
    sw	$at,24($a0)
    lw	$a2,28($a3)
    sw	$a2,28($a0)
    lw	$v1,32($a3)
    sw	$v1,32($a0)
    lw	$v0,36($a3)
    sw	$v0,36($a0)
    lw	$at,40($a3)
    addiu	$a3,$a3,48
    sw	$at,40($a0)
    addiu	$a0,$a0,48
    lw	$a2,-4($a3)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f100f30
    sw	$a2,-4($a0)
    move	$a3,$a0
.L0f100fa4:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x1
    addiu	$a0,$a1,4
    andi	$a2,$a0,0x1
    beqz	$a2,.L0f100fd0
    la	$t9,gl_compile
    sd	$ra,3104($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a3)
    la	$t9,gl_compile
.L0f100fd0:
    sd	$ra,3104($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f100ff0:
    sd	$a1,3112($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,3104($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,64
    ld	$ra,3104($sp)
    li	$a1,1
    sw	$a1,-20400($gp)
    la	$a4,sub_0f030000
    ld	$a1,3112($sp)
    bnez	$s0,.L0f100ea4
    addiu	$a4,$a4,-24840
.L0f101028:
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f101038:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f101060:
    lw	$a2,76($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.end gl_c_polyi

# Function: gl_n_polyi
# Declared: Line 167 (Source lines: 167-167)
# Address: 0x0f10108c - 0x0f1011b8 (Size: 300 bytes, Frame: 192)
.globl gl_n_polyi
.ent gl_n_polyi
gl_n_polyi:
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,8636 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    beqz	$at,.L0f1010c8
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s2,32($sp)
.L0f1010c8:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,3
    sd	$s2,32($sp)
    jalr	$t9
    lw	$s2,0($s1)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,0($sp)
    lw	$a0,4($s1)
    sw	$a0,11488($at)
    lw	$v1,8($s1)
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,12($s1)
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    ld	$ra,24($sp)
    addiu	$s1,$s1,16
    addiu	$s2,$s2,-1
    bltz	$s2,.L0f10116c
    la	$a1,gl_inMoveDraw
    sd	$s3,40($sp)
    li	$s3,-1
.L0f101140:
    lw	$a2,8($s1)
    la	$t9,glVertex3i
    lw	$a1,4($s1)
    addiu	$s2,$s2,-1
    jalr	$t9
    lw	$a0,0($s1)
    bne	$s2,$s3,.L0f101140
    addiu	$s1,$s1,12
    ld	$s3,40($sp)
    ld	$ra,24($sp)
    la	$a1,gl_inMoveDraw
.L0f10116c:
    lw	$a1,0($a1)
    beqz	$a1,.L0f101194
    ld	$s2,32($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f101194:
    andi	$a2,$s1,0x3
    beqz	$a2,.L0f1011a8
    ld	$gp,16($sp)
    addiu	$s1,$s1,2
    ld	$gp,16($sp)
.L0f1011a8:
    move	$v0,$s1
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_polyi

# Function: gl_i_poly
# Declared: Line 168 (Source lines: 168-168)
# Address: 0x0f1011b8 - 0x0f101364 (Size: 428 bytes, Frame: 208)
.globl gl_i_poly
.ent gl_i_poly
gl_i_poly:
    # Line 168
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,8336 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s1,8($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,24($sp)
    beqz	$at,.L0f1011fc
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f1011fc:
    beqzl	$s0,.L0f101320
    ld	$gp,16($sp)
    bltz	$s0,.L0f101330
    slti	$v1,$s0,257
    beqz	$v1,.L0f1012f0
    sd	$ra,32($sp)
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$ra,0($sp)
    lwc1	$f2,0($s1)
    swc1	$f2,11488($ra)
    lwc1	$f1,4($s1)
    sd	$s5,40($sp)
    li	$at,1
    swc1	$f1,11492($ra)
    la	$t9,glVertex3fv
    lwc1	$f0,8($s1)
    addiu	$a0,$ra,11488
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    sd	$s2,48($sp)
    addiu	$s2,$s1,12
    ld	$ra,32($sp)
    addiu	$a0,$s0,-1
    slti	$v0,$s0,2
    bnez	$v0,.L0f1012ac
    move	$s5,$a0
.L0f101288:
    la	$t9,glVertex3f
    lwc1	$f14,8($s2)
    lwc1	$f13,4($s2)
    jalr	$t9
    lwc1	$f12,0($s2)
    addiu	$s5,$s5,-1
    bnez	$s5,.L0f101288
    addiu	$s2,$s2,12
    ld	$ra,32($sp)
.L0f1012ac:
    la	$v1,gl_inMoveDraw
    lw	$v1,0($v1)
    ld	$s5,40($sp)
    beqz	$v1,.L0f1012dc
    ld	$s2,48($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f1012dc:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f1012f0:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24748($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f101320:
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f101330:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24748($a2)
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_poly

# Function: gl_c_poly
# Declared: Line 168 (Source lines: 168-168)
# Address: 0x0f101364 - 0x0f10157c (Size: 536 bytes, Frame: 192)
.globl gl_c_poly
.ent gl_c_poly
gl_c_poly:
    addiu	$sp,$sp,-3136
    sd	$gp,3088($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,7908 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20396($gp)
    sd	$s0,3096($sp)
    beqz	$at,.L0f1014e0
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f101518
    addiu	$a4,$a4,-24840
.L0f101394:
    move	$a0,$s0
    la	$v0,gl_n_poly
    bltz	$s0,.L0f101550
    addiu	$a3,$sp,8
    slti	$at,$s0,257
    beqz	$at,.L0f101528
    lw	$a2,92($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f101494
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f101404
    move	$a7,$a4
.L0f1013d4:
    lwc1	$f2,0($a4)
    swc1	$f2,0($a3)
    lwc1	$f1,4($a4)
    addiu	$a0,$a0,-1
    addiu	$a4,$a4,12
    swc1	$f1,4($a3)
    addiu	$a3,$a3,12
    lwc1	$f0,-4($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f1013d4
    swc1	$f0,-4($a3)
    move	$a7,$a4
.L0f101404:
    move	$t0,$a0
    move	$a6,$a3
    sra	$a2,$a5,0x2
    beqz	$a2,.L0f101494
    move	$a0,$a6
    move	$a1,$t0
    move	$a3,$a7
.L0f101420:
    lwc1	$f2,0($a3)
    swc1	$f2,0($a0)
    lwc1	$f1,4($a3)
    swc1	$f1,4($a0)
    lwc1	$f0,8($a3)
    swc1	$f0,8($a0)
    lwc1	$f3,12($a3)
    swc1	$f3,12($a0)
    lwc1	$f2,16($a3)
    swc1	$f2,16($a0)
    lwc1	$f1,20($a3)
    swc1	$f1,20($a0)
    lwc1	$f0,24($a3)
    swc1	$f0,24($a0)
    lwc1	$f3,28($a3)
    swc1	$f3,28($a0)
    lwc1	$f2,32($a3)
    swc1	$f2,32($a0)
    lwc1	$f1,36($a3)
    swc1	$f1,36($a0)
    lwc1	$f0,40($a3)
    addiu	$a3,$a3,48
    swc1	$f0,40($a0)
    addiu	$a0,$a0,48
    lwc1	$f3,-4($a3)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f101420
    swc1	$f3,-4($a0)
    move	$a3,$a0
.L0f101494:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x1
    addiu	$a0,$a1,4
    andi	$at,$a0,0x1
    beqz	$at,.L0f1014c0
    la	$t9,gl_compile
    sd	$ra,3104($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a3)
    la	$t9,gl_compile
.L0f1014c0:
    sd	$ra,3104($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f1014e0:
    sd	$a1,3112($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,3104($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,80
    ld	$ra,3104($sp)
    li	$a1,1
    sw	$a1,-20396($gp)
    la	$a4,sub_0f030000
    ld	$a1,3112($sp)
    bnez	$s0,.L0f101394
    addiu	$a4,$a4,-24840
.L0f101518:
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f101528:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f101550:
    lw	$a2,92($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.end gl_c_poly

# Function: gl_n_poly
# Declared: Line 168 (Source lines: 168-168)
# Address: 0x0f10157c - 0x0f1016ac (Size: 304 bytes, Frame: 192)
.globl gl_n_poly
.ent gl_n_poly
gl_n_poly:
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,7372 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    beqz	$at,.L0f1015b8
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s2,32($sp)
.L0f1015b8:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,3
    sd	$s2,32($sp)
    jalr	$t9
    lw	$s2,0($s1)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$ra,0($sp)
    lwc1	$f2,4($s1)
    swc1	$f2,11488($ra)
    lwc1	$f1,8($s1)
    li	$at,1
    swc1	$f1,11492($ra)
    la	$t9,glVertex3fv
    lwc1	$f0,12($s1)
    addiu	$a0,$ra,11488
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    nop
    ld	$ra,24($sp)
    addiu	$s1,$s1,16
    addiu	$s2,$s2,-1
    bltz	$s2,.L0f101660
    la	$v1,gl_inMoveDraw
    sd	$s3,40($sp)
    li	$s3,-1
.L0f101634:
    lwc1	$f14,8($s1)
    la	$t9,glVertex3f
    lwc1	$f13,4($s1)
    addiu	$s2,$s2,-1
    jalr	$t9
    lwc1	$f12,0($s1)
    bne	$s2,$s3,.L0f101634
    addiu	$s1,$s1,12
    ld	$s3,40($sp)
    ld	$ra,24($sp)
    la	$v1,gl_inMoveDraw
.L0f101660:
    lw	$v1,0($v1)
    beqz	$v1,.L0f101688
    ld	$s2,32($sp)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f101688:
    andi	$a1,$s1,0x3
    beqz	$a1,.L0f10169c
    ld	$gp,16($sp)
    addiu	$s1,$s1,2
    ld	$gp,16($sp)
.L0f10169c:
    move	$v0,$s1
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_poly

# Function: gl_i_polf2s
# Declared: Line 170 (Source lines: 170-170)
# Address: 0x0f1016ac - 0x0f10184c (Size: 416 bytes, Frame: 224)
.globl gl_i_polf2s
.ent gl_i_polf2s
gl_i_polf2s:
    # Line 170
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,7068 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s2,24($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s1,16($sp)
    beqz	$at,.L0f1016f0
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,40($sp)
    jalr	$t9
    nop
    ld	$ra,40($sp)
.L0f1016f0:
    beqzl	$s1,.L0f101808
    ld	$gp,32($sp)
    bltz	$s1,.L0f101818
    slti	$v1,$s1,257
    beqz	$v1,.L0f1017d8
    sd	$ra,40($sp)
    sd	$s5,64($sp)
    la	$s5,gl_wstatep
    lw	$t9,0($s5)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    sd	$s4,48($sp)
    ld	$at,8($sp)
    lh	$v1,0($s2)
    sd	$s0,56($sp)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lh	$ra,2($s2)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s0,$s2,4
    addiu	$a0,$s1,-1
    slti	$a2,$s1,2
    bnez	$a2,.L0f1017a8
    move	$s4,$a0
    lh	$at,0($s0)
.L0f10177c:
    sh	$at,0($sp)
    lh	$ra,2($s0)
    lw	$t9,0($s5)
    sh	$ra,2($sp)
    lw	$t9,16($t9)
    addiu	$s4,$s4,-1
    addiu	$s0,$s0,4
    jalr	$t9
    addiu	$a0,$sp,0
    bnezl	$s4,.L0f10177c
    lh	$at,0($s0)
.L0f1017a8:
    lw	$t9,0($s5)
    lw	$t9,220($t9)
    ld	$s4,48($sp)
    jalr	$t9
    ld	$s0,56($sp)
    ld	$gp,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s5,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1017d8:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24732($a2)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f101808:
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f101818:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a2,-24732($a2)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_polf2s

# Function: gl_c_polf2s
# Declared: Line 170 (Source lines: 170-170)
# Address: 0x0f10184c - 0x0f101a1c (Size: 464 bytes, Frame: 192)
.globl gl_c_polf2s
.ent gl_c_polf2s
gl_c_polf2s:
    addiu	$sp,$sp,-1088
    sd	$gp,1040($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,6652 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20392($gp)
    sd	$s0,1048($sp)
    beqz	$at,.L0f101980
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f1019b8
    addiu	$a4,$a4,-24840
.L0f10187c:
    move	$a0,$s0
    la	$v0,gl_n_polf2s
    bltz	$s0,.L0f1019f0
    move	$a3,$a1
    slti	$at,$s0,257
    beqz	$at,.L0f1019c8
    lw	$a2,108($a4)
    addiu	$a4,$sp,8
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f101954
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f1018e4
    move	$a7,$a4
.L0f1018bc:
    lh	$at,0($a3)
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,4
    sh	$at,0($a4)
    addiu	$a4,$a4,4
    lh	$a2,-2($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f1018bc
    sh	$a2,-2($a4)
    move	$a7,$a4
.L0f1018e4:
    sra	$v0,$a5,0x2
    move	$t0,$a0
    beqz	$v0,.L0f101950
    move	$a6,$a3
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$a6
.L0f101900:
    lh	$v0,0($a1)
    sh	$v0,0($a3)
    lh	$at,2($a1)
    sh	$at,2($a3)
    lh	$a2,4($a1)
    sh	$a2,4($a3)
    lh	$v1,6($a1)
    sh	$v1,6($a3)
    lh	$v0,8($a1)
    sh	$v0,8($a3)
    lh	$at,10($a1)
    sh	$at,10($a3)
    lh	$a2,12($a1)
    addiu	$a1,$a1,16
    sh	$a2,12($a3)
    addiu	$a3,$a3,16
    lh	$v1,-2($a1)
    addiu	$a0,$a0,-4
    bnez	$a0,.L0f101900
    sh	$v1,-2($a3)
.L0f101950:
    sd	$ra,1056($sp)
.L0f101954:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,1056($sp)
    addu	$a0,$s0,$s0
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$ra,1056($sp)
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.L0f101980:
    sd	$a1,1064($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,1056($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,96
    ld	$ra,1056($sp)
    li	$a1,1
    sw	$a1,-20392($gp)
    la	$a4,sub_0f030000
    ld	$a1,1064($sp)
    bnez	$s0,.L0f10187c
    addiu	$a4,$a4,-24840
.L0f1019b8:
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.L0f1019c8:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1056($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,1056($sp)
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.L0f1019f0:
    lw	$a2,108($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1056($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,1056($sp)
    ld	$gp,1040($sp)
    ld	$s0,1048($sp)
    jr	$ra
    addiu	$sp,$sp,1088
.end gl_c_polf2s

# Function: gl_n_polf2s
# Declared: Line 170 (Source lines: 170-170)
# Address: 0x0f101a1c - 0x0f101b30 (Size: 276 bytes, Frame: 208)
.globl gl_n_polf2s
.ent gl_n_polf2s
gl_n_polf2s:
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,6188 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    beqz	$at,.L0f101a5c
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,48($sp)
    sd	$s1,32($sp)
.L0f101a5c:
    sd	$s3,48($sp)
    la	$s3,gl_wstatep
    lw	$t9,0($s3)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    li	$a0,9
    sd	$s1,32($sp)
    jalr	$t9
    lw	$s1,0($s0)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lh	$v1,4($s0)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lh	$ra,6($s0)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s0,$s0,8
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f101b08
    lw	$t9,0($s3)
    sd	$s5,56($sp)
    li	$s5,-1
    lh	$at,0($s0)
.L0f101ad4:
    sh	$at,0($sp)
    lh	$ra,2($s0)
    lw	$t9,0($s3)
    sh	$ra,2($sp)
    lw	$t9,16($t9)
    addiu	$s1,$s1,-1
    addiu	$s0,$s0,4
    jalr	$t9
    addiu	$a0,$sp,0
    bnel	$s1,$s5,.L0f101ad4
    lh	$at,0($s0)
    ld	$s5,56($sp)
    lw	$t9,0($s3)
.L0f101b08:
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
.end gl_n_polf2s

# Function: gl_i_polf2i
# Declared: Line 171 (Source lines: 171-171)
# Address: 0x0f101b30 - 0x0f101cd0 (Size: 416 bytes, Frame: 224)
.globl gl_i_polf2i
.ent gl_i_polf2i
gl_i_polf2i:
    # Line 171
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,5912 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s2,24($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s1,16($sp)
    beqz	$at,.L0f101b74
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,40($sp)
    jalr	$t9
    nop
    ld	$ra,40($sp)
.L0f101b74:
    beqzl	$s1,.L0f101c8c
    ld	$gp,32($sp)
    bltz	$s1,.L0f101c9c
    slti	$v1,$s1,257
    beqz	$v1,.L0f101c5c
    sd	$ra,40($sp)
    sd	$s5,64($sp)
    la	$s5,gl_wstatep
    lw	$t9,0($s5)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    sd	$s4,48($sp)
    ld	$at,8($sp)
    lw	$v1,0($s2)
    sd	$s0,56($sp)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lw	$ra,4($s2)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s0,$s2,8
    addiu	$a0,$s1,-1
    slti	$a2,$s1,2
    bnez	$a2,.L0f101c2c
    move	$s4,$a0
    lw	$at,0($s0)
.L0f101c00:
    sw	$at,0($sp)
    lw	$ra,4($s0)
    lw	$t9,0($s5)
    sw	$ra,4($sp)
    lw	$t9,12($t9)
    addiu	$s4,$s4,-1
    addiu	$s0,$s0,8
    jalr	$t9
    addiu	$a0,$sp,0
    bnezl	$s4,.L0f101c00
    lw	$at,0($s0)
.L0f101c2c:
    lw	$t9,0($s5)
    lw	$t9,220($t9)
    ld	$s4,48($sp)
    jalr	$t9
    ld	$s0,56($sp)
    ld	$gp,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s5,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f101c5c:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24716($a2)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f101c8c:
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f101c9c:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a2,-24716($a2)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_polf2i

# Function: gl_c_polf2i
# Declared: Line 171 (Source lines: 171-171)
# Address: 0x0f101cd0 - 0x0f101ea0 (Size: 464 bytes, Frame: 192)
.globl gl_c_polf2i
.ent gl_c_polf2i
gl_c_polf2i:
    addiu	$sp,$sp,-2112
    sd	$gp,2064($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,5496 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20388($gp)
    sd	$s0,2072($sp)
    beqz	$at,.L0f101e04
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f101e3c
    addiu	$a4,$a4,-24840
.L0f101d00:
    move	$a0,$s0
    la	$v0,gl_n_polf2i
    bltz	$s0,.L0f101e74
    move	$a3,$a1
    slti	$at,$s0,257
    beqz	$at,.L0f101e4c
    lw	$a2,124($a4)
    addiu	$a4,$sp,8
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f101dd8
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f101d68
    move	$a7,$a4
.L0f101d40:
    lw	$at,0($a3)
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,8
    sw	$at,0($a4)
    addiu	$a4,$a4,8
    lw	$a2,-4($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f101d40
    sw	$a2,-4($a4)
    move	$a7,$a4
.L0f101d68:
    sra	$v0,$a5,0x2
    move	$t0,$a0
    beqz	$v0,.L0f101dd4
    move	$a6,$a3
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$a6
.L0f101d84:
    lw	$v0,0($a1)
    sw	$v0,0($a3)
    lw	$at,4($a1)
    sw	$at,4($a3)
    lw	$a2,8($a1)
    sw	$a2,8($a3)
    lw	$v1,12($a1)
    sw	$v1,12($a3)
    lw	$v0,16($a1)
    sw	$v0,16($a3)
    lw	$at,20($a1)
    sw	$at,20($a3)
    lw	$a2,24($a1)
    addiu	$a1,$a1,32
    sw	$a2,24($a3)
    addiu	$a3,$a3,32
    lw	$v1,-4($a1)
    addiu	$a0,$a0,-4
    bnez	$a0,.L0f101d84
    sw	$v1,-4($a3)
.L0f101dd4:
    sd	$ra,2080($sp)
.L0f101dd8:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,2080($sp)
    sll	$a0,$s0,0x2
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f101e04:
    sd	$a1,2088($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,2080($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,112
    ld	$ra,2080($sp)
    li	$a1,1
    sw	$a1,-20388($gp)
    la	$a4,sub_0f030000
    ld	$a1,2088($sp)
    bnez	$s0,.L0f101d00
    addiu	$a4,$a4,-24840
.L0f101e3c:
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f101e4c:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f101e74:
    lw	$a2,124($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.end gl_c_polf2i

# Function: gl_n_polf2i
# Declared: Line 171 (Source lines: 171-171)
# Address: 0x0f101ea0 - 0x0f101fb4 (Size: 276 bytes, Frame: 208)
.globl gl_n_polf2i
.ent gl_n_polf2i
gl_n_polf2i:
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,5032 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    beqz	$at,.L0f101ee0
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,48($sp)
    sd	$s1,32($sp)
.L0f101ee0:
    sd	$s3,48($sp)
    la	$s3,gl_wstatep
    lw	$t9,0($s3)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    li	$a0,9
    sd	$s1,32($sp)
    jalr	$t9
    lw	$s1,0($s0)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lw	$v1,4($s0)
    li	$v0,2
    sw	$v1,11488($at)
    addiu	$a0,$at,11488
    lw	$ra,8($s0)
    lw	$t9,28($at)
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    addiu	$s0,$s0,12
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f101f8c
    lw	$t9,0($s3)
    sd	$s5,56($sp)
    li	$s5,-1
    lw	$at,0($s0)
.L0f101f58:
    sw	$at,0($sp)
    lw	$ra,4($s0)
    lw	$t9,0($s3)
    sw	$ra,4($sp)
    lw	$t9,12($t9)
    addiu	$s1,$s1,-1
    addiu	$s0,$s0,8
    jalr	$t9
    addiu	$a0,$sp,0
    bnel	$s1,$s5,.L0f101f58
    lw	$at,0($s0)
    ld	$s5,56($sp)
    lw	$t9,0($s3)
.L0f101f8c:
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
.end gl_n_polf2i

# Function: gl_i_polf2
# Declared: Line 172 (Source lines: 172-172)
# Address: 0x0f101fb4 - 0x0f102148 (Size: 404 bytes, Frame: 208)
.globl gl_i_polf2
.ent gl_i_polf2
gl_i_polf2:
    # Line 172
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,4756 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s2,16($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s1,8($sp)
    beqz	$at,.L0f101ff8
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f101ff8:
    beqzl	$s1,.L0f102104
    ld	$gp,24($sp)
    bltz	$s1,.L0f102114
    slti	$v1,$s1,257
    beqz	$v1,.L0f1020d4
    sd	$ra,32($sp)
    sd	$s5,56($sp)
    la	$s5,gl_wstatep
    lw	$t9,0($s5)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    sd	$s4,40($sp)
    ld	$ra,0($sp)
    lwc1	$f2,0($s2)
    li	$at,1
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,4($s2)
    sw	$at,11484($ra)
    lw	$t9,24($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    sd	$s0,48($sp)
    addiu	$s0,$s2,8
    addiu	$a0,$s1,-1
    slti	$v0,$s1,2
    bnez	$v0,.L0f1020a4
    move	$s4,$a0
.L0f102084:
    lw	$t9,0($s5)
    lw	$t9,4($t9)
    lwc1	$f13,4($s0)
    addiu	$s4,$s4,-1
    jalr	$t9
    lwc1	$f12,0($s0)
    bnez	$s4,.L0f102084
    addiu	$s0,$s0,8
.L0f1020a4:
    lw	$t9,0($s5)
    lw	$t9,220($t9)
    ld	$s4,40($sp)
    jalr	$t9
    ld	$s0,48($sp)
    ld	$gp,24($sp)
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    ld	$s2,16($sp)
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f1020d4:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24700($a2)
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f102104:
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f102114:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24700($a2)
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_polf2

# Function: gl_c_polf2
# Declared: Line 172 (Source lines: 172-172)
# Address: 0x0f102148 - 0x0f102318 (Size: 464 bytes, Frame: 192)
.globl gl_c_polf2
.ent gl_c_polf2
gl_c_polf2:
    addiu	$sp,$sp,-2112
    sd	$gp,2064($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,4352 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20384($gp)
    sd	$s0,2072($sp)
    beqz	$at,.L0f10227c
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f1022b4
    addiu	$a4,$a4,-24840
.L0f102178:
    move	$a0,$s0
    la	$v0,gl_n_polf2
    bltz	$s0,.L0f1022ec
    move	$a3,$a1
    slti	$at,$s0,257
    beqz	$at,.L0f1022c4
    lw	$a2,140($a4)
    addiu	$a4,$sp,8
    sw	$v0,0($sp)
    addiu	$v1,$s0,-1
    blez	$s0,.L0f102250
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f1021e0
    move	$a7,$a4
.L0f1021b8:
    lwc1	$f1,0($a3)
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,8
    swc1	$f1,0($a4)
    addiu	$a4,$a4,8
    lwc1	$f0,-4($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f1021b8
    swc1	$f0,-4($a4)
    move	$a7,$a4
.L0f1021e0:
    sra	$a2,$a5,0x2
    move	$t0,$a0
    beqz	$a2,.L0f10224c
    move	$a6,$a3
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$a6
.L0f1021fc:
    lwc1	$f1,0($a1)
    swc1	$f1,0($a3)
    lwc1	$f0,4($a1)
    swc1	$f0,4($a3)
    lwc1	$f3,8($a1)
    swc1	$f3,8($a3)
    lwc1	$f2,12($a1)
    swc1	$f2,12($a3)
    lwc1	$f1,16($a1)
    swc1	$f1,16($a3)
    lwc1	$f0,20($a1)
    swc1	$f0,20($a3)
    lwc1	$f3,24($a1)
    addiu	$a1,$a1,32
    swc1	$f3,24($a3)
    addiu	$a3,$a3,32
    lwc1	$f2,-4($a1)
    addiu	$a0,$a0,-4
    bnez	$a0,.L0f1021fc
    swc1	$f2,-4($a3)
.L0f10224c:
    sd	$ra,2080($sp)
.L0f102250:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,2080($sp)
    sll	$a0,$s0,0x2
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f10227c:
    sd	$a1,2088($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,2080($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,128
    ld	$ra,2080($sp)
    li	$a1,1
    sw	$a1,-20384($gp)
    la	$a4,sub_0f030000
    ld	$a1,2088($sp)
    bnez	$s0,.L0f102178
    addiu	$a4,$a4,-24840
.L0f1022b4:
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f1022c4:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.L0f1022ec:
    lw	$a2,140($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,2080($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,2080($sp)
    ld	$gp,2064($sp)
    ld	$s0,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.end gl_c_polf2

# Function: gl_n_polf2
# Declared: Line 172 (Source lines: 172-172)
# Address: 0x0f102318 - 0x0f102424 (Size: 268 bytes, Frame: 208)
.globl gl_n_polf2
.ent gl_n_polf2
gl_n_polf2:
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,3888 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s0,16($sp)
    beqz	$at,.L0f102358
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,40($sp)
    sd	$s1,24($sp)
.L0f102358:
    sd	$s3,40($sp)
    la	$s3,gl_wstatep
    lw	$t9,0($s3)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,9
    sd	$s1,24($sp)
    jalr	$t9
    lw	$s1,0($s0)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,4($s0)
    li	$at,1
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,8($s0)
    sw	$at,11484($ra)
    lw	$t9,24($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    nop
    addiu	$s0,$s0,12
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f1023fc
    lw	$t9,0($s3)
    sd	$s5,48($sp)
    li	$s5,-1
.L0f1023d4:
    lw	$t9,0($s3)
    lw	$t9,4($t9)
    lwc1	$f13,4($s0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lwc1	$f12,0($s0)
    bne	$s1,$s5,.L0f1023d4
    addiu	$s0,$s0,8
    ld	$s5,48($sp)
    lw	$t9,0($s3)
.L0f1023fc:
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
.end gl_n_polf2

# Function: gl_i_polfs
# Declared: Line 173 (Source lines: 173-173)
# Address: 0x0f102424 - 0x0f1025d0 (Size: 428 bytes, Frame: 224)
.globl gl_i_polfs
.ent gl_i_polfs
gl_i_polfs:
    # Line 173
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,3620 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s2,24($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s1,16($sp)
    beqz	$at,.L0f102468
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,40($sp)
    jalr	$t9
    nop
    ld	$ra,40($sp)
.L0f102468:
    beqzl	$s1,.L0f10258c
    ld	$gp,32($sp)
    bltz	$s1,.L0f10259c
    slti	$v1,$s1,257
    beqz	$v1,.L0f10255c
    sd	$ra,40($sp)
    sd	$s5,64($sp)
    la	$s5,gl_wstatep
    lw	$t9,0($s5)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lh	$a0,0($s2)
    sw	$a0,11488($at)
    sd	$s4,48($sp)
    lh	$v1,2($s2)
    sd	$s0,56($sp)
    addiu	$s0,$s2,6
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,4($s2)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$a0,$s1,-1
    slti	$a2,$s1,2
    bnez	$a2,.L0f10252c
    move	$s4,$a0
    lh	$v0,0($s0)
.L0f1024f8:
    sh	$v0,0($sp)
    lh	$at,2($s0)
    sh	$at,2($sp)
    lh	$ra,4($s0)
    lw	$t9,0($s5)
    sh	$ra,4($sp)
    lw	$t9,32($t9)
    addiu	$s4,$s4,-1
    addiu	$s0,$s0,6
    jalr	$t9
    addiu	$a0,$sp,0
    bnezl	$s4,.L0f1024f8
    lh	$v0,0($s0)
.L0f10252c:
    lw	$t9,0($s5)
    lw	$t9,220($t9)
    ld	$s4,48($sp)
    jalr	$t9
    ld	$s0,56($sp)
    ld	$gp,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s5,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f10255c:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24684($a2)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f10258c:
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f10259c:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a2,-24684($a2)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_polfs

# Function: gl_c_polfs
# Declared: Line 173 (Source lines: 173-173)
# Address: 0x0f1025d0 - 0x0f1027e4 (Size: 532 bytes, Frame: 192)
.globl gl_c_polfs
.ent gl_c_polfs
gl_c_polfs:
    addiu	$sp,$sp,-1600
    sd	$gp,1552($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,3192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20380($gp)
    sd	$s0,1560($sp)
    beqz	$at,.L0f102748
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f102780
    addiu	$a4,$a4,-24840
.L0f102600:
    move	$a0,$s0
    la	$v0,gl_n_polfs
    bltz	$s0,.L0f1027b8
    addiu	$a3,$sp,8
    slti	$at,$s0,257
    beqz	$at,.L0f102790
    lw	$a2,156($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f102700
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f102670
    move	$a7,$a4
.L0f102640:
    lh	$v0,0($a4)
    sh	$v0,0($a3)
    lh	$at,2($a4)
    addiu	$a0,$a0,-1
    addiu	$a4,$a4,6
    sh	$at,2($a3)
    addiu	$a3,$a3,6
    lh	$a2,-2($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f102640
    sh	$a2,-2($a3)
    move	$a7,$a4
.L0f102670:
    move	$t0,$a0
    move	$a6,$a3
    sra	$v1,$a5,0x2
    beqz	$v1,.L0f102700
    move	$a0,$a6
    move	$a1,$t0
    move	$a3,$a7
.L0f10268c:
    lh	$v1,0($a3)
    sh	$v1,0($a0)
    lh	$v0,2($a3)
    sh	$v0,2($a0)
    lh	$at,4($a3)
    sh	$at,4($a0)
    lh	$a2,6($a3)
    sh	$a2,6($a0)
    lh	$v1,8($a3)
    sh	$v1,8($a0)
    lh	$v0,10($a3)
    sh	$v0,10($a0)
    lh	$at,12($a3)
    sh	$at,12($a0)
    lh	$a2,14($a3)
    sh	$a2,14($a0)
    lh	$v1,16($a3)
    sh	$v1,16($a0)
    lh	$v0,18($a3)
    sh	$v0,18($a0)
    lh	$at,20($a3)
    addiu	$a3,$a3,24
    sh	$at,20($a0)
    addiu	$a0,$a0,24
    lh	$a2,-2($a3)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f10268c
    sh	$a2,-2($a0)
    move	$a3,$a0
.L0f102700:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    addiu	$a0,$a1,4
    andi	$a2,$a0,0x1
    beqz	$a2,.L0f102728
    la	$t9,gl_compile
    sd	$ra,1568($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a3)
    la	$t9,gl_compile
.L0f102728:
    sd	$ra,1568($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,1568($sp)
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.L0f102748:
    sd	$a1,1576($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,1568($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,144
    ld	$ra,1568($sp)
    li	$a1,1
    sw	$a1,-20380($gp)
    la	$a4,sub_0f030000
    ld	$a1,1576($sp)
    bnez	$s0,.L0f102600
    addiu	$a4,$a4,-24840
.L0f102780:
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.L0f102790:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1568($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,1568($sp)
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.L0f1027b8:
    lw	$a2,156($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,1568($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,1568($sp)
    ld	$gp,1552($sp)
    ld	$s0,1560($sp)
    jr	$ra
    addiu	$sp,$sp,1600
.end gl_c_polfs

# Function: gl_n_polfs
# Declared: Line 173 (Source lines: 173-173)
# Address: 0x0f1027e4 - 0x0f102910 (Size: 300 bytes, Frame: 208)
.globl gl_n_polfs
.ent gl_n_polfs
gl_n_polfs:
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,2660 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    beqz	$at,.L0f102824
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,48($sp)
    sd	$s1,32($sp)
.L0f102824:
    sd	$s3,48($sp)
    la	$s3,gl_wstatep
    lw	$t9,0($s3)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    li	$a0,9
    sd	$s1,32($sp)
    jalr	$t9
    lw	$s1,0($s0)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,8($sp)
    lh	$a0,4($s0)
    sw	$a0,11488($at)
    lh	$v1,6($s0)
    sw	$v1,11492($at)
    li	$v0,2
    lh	$ra,8($s0)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$s0,$s0,10
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f1028dc
    lw	$t9,0($s3)
    sd	$s5,56($sp)
    li	$s5,-1
    lh	$v0,0($s0)
.L0f1028a0:
    sh	$v0,0($sp)
    lh	$at,2($s0)
    sh	$at,2($sp)
    lh	$ra,4($s0)
    lw	$t9,0($s3)
    sh	$ra,4($sp)
    lw	$t9,32($t9)
    addiu	$s1,$s1,-1
    addiu	$s0,$s0,6
    jalr	$t9
    addiu	$a0,$sp,0
    bnel	$s1,$s5,.L0f1028a0
    lh	$v0,0($s0)
    ld	$s5,56($sp)
    lw	$t9,0($s3)
.L0f1028dc:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,32($sp)
    ld	$s3,48($sp)
    andi	$at,$s0,0x3
    beqz	$at,.L0f1028fc
    ld	$ra,40($sp)
    addiu	$s0,$s0,2
.L0f1028fc:
    ld	$gp,16($sp)
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_polfs

# Function: gl_i_polfi
# Declared: Line 174 (Source lines: 174-174)
# Address: 0x0f102910 - 0x0f102abc (Size: 428 bytes, Frame: 224)
.globl gl_i_polfi
.ent gl_i_polfi
gl_i_polfi:
    # Line 174
    addiu	$sp,$sp,-96
    sd	$gp,40($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,2360 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s2,32($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s1,24($sp)
    beqz	$at,.L0f102954
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,48($sp)
    jalr	$t9
    nop
    ld	$ra,48($sp)
.L0f102954:
    beqzl	$s1,.L0f102a78
    ld	$gp,40($sp)
    bltz	$s1,.L0f102a88
    slti	$v1,$s1,257
    beqz	$v1,.L0f102a48
    sd	$ra,48($sp)
    sd	$s5,72($sp)
    la	$s5,gl_wstatep
    lw	$t9,0($s5)
    sd	$t9,16($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,16($sp)
    lw	$a0,0($s2)
    sw	$a0,11488($at)
    sd	$s4,56($sp)
    lw	$v1,4($s2)
    sd	$s0,64($sp)
    addiu	$s0,$s2,12
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,8($s2)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$a0,$s1,-1
    slti	$a2,$s1,2
    bnez	$a2,.L0f102a18
    move	$s4,$a0
    lw	$v0,0($s0)
.L0f1029e4:
    sw	$v0,0($sp)
    lw	$at,4($s0)
    sw	$at,4($sp)
    lw	$ra,8($s0)
    lw	$t9,0($s5)
    sw	$ra,8($sp)
    lw	$t9,28($t9)
    addiu	$s4,$s4,-1
    addiu	$s0,$s0,12
    jalr	$t9
    addiu	$a0,$sp,0
    bnezl	$s4,.L0f1029e4
    lw	$v0,0($s0)
.L0f102a18:
    lw	$t9,0($s5)
    lw	$t9,220($t9)
    ld	$s4,56($sp)
    jalr	$t9
    ld	$s0,64($sp)
    ld	$gp,40($sp)
    ld	$s1,24($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f102a48:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24668($a2)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f102a78:
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f102a88:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a2,-24668($a2)
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_polfi

# Function: gl_c_polfi
# Declared: Line 174 (Source lines: 174-174)
# Address: 0x0f102abc - 0x0f102cd4 (Size: 536 bytes, Frame: 192)
.globl gl_c_polfi
.ent gl_c_polfi
gl_c_polfi:
    addiu	$sp,$sp,-3136
    sd	$gp,3088($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,1932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20376($gp)
    sd	$s0,3096($sp)
    beqz	$at,.L0f102c38
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f102c70
    addiu	$a4,$a4,-24840
.L0f102aec:
    move	$a0,$s0
    la	$v0,gl_n_polfi
    bltz	$s0,.L0f102ca8
    addiu	$a3,$sp,8
    slti	$at,$s0,257
    beqz	$at,.L0f102c80
    lw	$a2,172($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f102bec
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f102b5c
    move	$a7,$a4
.L0f102b2c:
    lw	$v0,0($a4)
    sw	$v0,0($a3)
    lw	$at,4($a4)
    addiu	$a0,$a0,-1
    addiu	$a4,$a4,12
    sw	$at,4($a3)
    addiu	$a3,$a3,12
    lw	$a2,-4($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f102b2c
    sw	$a2,-4($a3)
    move	$a7,$a4
.L0f102b5c:
    move	$t0,$a0
    move	$a6,$a3
    sra	$v1,$a5,0x2
    beqz	$v1,.L0f102bec
    move	$a0,$a6
    move	$a1,$t0
    move	$a3,$a7
.L0f102b78:
    lw	$v1,0($a3)
    sw	$v1,0($a0)
    lw	$v0,4($a3)
    sw	$v0,4($a0)
    lw	$at,8($a3)
    sw	$at,8($a0)
    lw	$a2,12($a3)
    sw	$a2,12($a0)
    lw	$v1,16($a3)
    sw	$v1,16($a0)
    lw	$v0,20($a3)
    sw	$v0,20($a0)
    lw	$at,24($a3)
    sw	$at,24($a0)
    lw	$a2,28($a3)
    sw	$a2,28($a0)
    lw	$v1,32($a3)
    sw	$v1,32($a0)
    lw	$v0,36($a3)
    sw	$v0,36($a0)
    lw	$at,40($a3)
    addiu	$a3,$a3,48
    sw	$at,40($a0)
    addiu	$a0,$a0,48
    lw	$a2,-4($a3)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f102b78
    sw	$a2,-4($a0)
    move	$a3,$a0
.L0f102bec:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x1
    addiu	$a0,$a1,4
    andi	$a2,$a0,0x1
    beqz	$a2,.L0f102c18
    la	$t9,gl_compile
    sd	$ra,3104($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a3)
    la	$t9,gl_compile
.L0f102c18:
    sd	$ra,3104($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f102c38:
    sd	$a1,3112($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,3104($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,160
    ld	$ra,3104($sp)
    li	$a1,1
    sw	$a1,-20376($gp)
    la	$a4,sub_0f030000
    ld	$a1,3112($sp)
    bnez	$s0,.L0f102aec
    addiu	$a4,$a4,-24840
.L0f102c70:
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f102c80:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f102ca8:
    lw	$a2,172($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.end gl_c_polfi

# Function: gl_n_polfi
# Declared: Line 174 (Source lines: 174-174)
# Address: 0x0f102cd4 - 0x0f102e00 (Size: 300 bytes, Frame: 224)
.globl gl_n_polfi
.ent gl_n_polfi
gl_n_polfi:
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,1396 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,48($sp)
    sd	$s0,32($sp)
    beqz	$at,.L0f102d14
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,56($sp)
    sd	$s1,40($sp)
.L0f102d14:
    sd	$s3,56($sp)
    la	$s3,gl_wstatep
    lw	$t9,0($s3)
    sd	$t9,16($sp)
    lw	$t9,216($t9)
    li	$a0,9
    sd	$s1,40($sp)
    jalr	$t9
    lw	$s1,0($s0)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$at,16($sp)
    lw	$a0,4($s0)
    sw	$a0,11488($at)
    lw	$v1,8($s0)
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,12($s0)
    lw	$t9,28($at)
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    addiu	$s0,$s0,16
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f102dcc
    lw	$t9,0($s3)
    sd	$s5,64($sp)
    li	$s5,-1
    lw	$v0,0($s0)
.L0f102d90:
    sw	$v0,0($sp)
    lw	$at,4($s0)
    sw	$at,4($sp)
    lw	$ra,8($s0)
    lw	$t9,0($s3)
    sw	$ra,8($sp)
    lw	$t9,28($t9)
    addiu	$s1,$s1,-1
    addiu	$s0,$s0,12
    jalr	$t9
    addiu	$a0,$sp,0
    bnel	$s1,$s5,.L0f102d90
    lw	$v0,0($s0)
    ld	$s5,64($sp)
    lw	$t9,0($s3)
.L0f102dcc:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,40($sp)
    ld	$s3,56($sp)
    andi	$at,$s0,0x3
    beqz	$at,.L0f102dec
    ld	$ra,48($sp)
    addiu	$s0,$s0,2
.L0f102dec:
    ld	$gp,24($sp)
    move	$v0,$s0
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_n_polfi

# Function: gl_i_polf
# Declared: Line 175 (Source lines: 175-175)
# Address: 0x0f102e00 - 0x0f102f98 (Size: 408 bytes, Frame: 208)
.globl gl_i_polf
.ent gl_i_polf
gl_i_polf:
    # Line 175
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,1096 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$s2,16($sp)
    lw	$at,0($at)
    move	$s2,$a1
    sd	$s1,8($sp)
    beqz	$at,.L0f102e44
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f102e44:
    beqzl	$s1,.L0f102f54
    ld	$gp,24($sp)
    bltz	$s1,.L0f102f64
    slti	$v1,$s1,257
    beqz	$v1,.L0f102f24
    sd	$ra,32($sp)
    sd	$s5,56($sp)
    la	$s5,gl_wstatep
    lw	$t9,0($s5)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,0($s2)
    swc1	$f2,11488($ra)
    lwc1	$f1,4($s2)
    sd	$s4,40($sp)
    li	$at,1
    swc1	$f1,11492($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,8($s2)
    lw	$t9,24($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    sd	$s0,48($sp)
    addiu	$s0,$s2,12
    addiu	$a0,$s1,-1
    slti	$v0,$s1,2
    bnez	$v0,.L0f102ef4
    move	$s4,$a0
.L0f102ed0:
    lw	$t9,0($s5)
    lwc1	$f14,8($s0)
    lw	$t9,20($t9)
    lwc1	$f13,4($s0)
    addiu	$s4,$s4,-1
    jalr	$t9
    lwc1	$f12,0($s0)
    bnez	$s4,.L0f102ed0
    addiu	$s0,$s0,12
.L0f102ef4:
    lw	$t9,0($s5)
    lw	$t9,220($t9)
    ld	$s4,40($sp)
    jalr	$t9
    ld	$s0,48($sp)
    ld	$gp,24($sp)
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    ld	$s2,16($sp)
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f102f24:
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,97
    jalr	$t9
    lw	$a2,-24652($a2)
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f102f54:
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f102f64:
    li	$a1,2
    li	$a0,3
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a2,-24652($a2)
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_polf

# Function: gl_c_polf
# Declared: Line 175 (Source lines: 175-175)
# Address: 0x0f102f98 - 0x0f1031b0 (Size: 536 bytes, Frame: 192)
.globl gl_c_polf
.ent gl_c_polf
gl_c_polf:
    addiu	$sp,$sp,-3136
    sd	$gp,3088($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,688 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20372($gp)
    sd	$s0,3096($sp)
    beqz	$at,.L0f103114
    move	$s0,$a0
    la	$a4,sub_0f030000
    beqz	$s0,.L0f10314c
    addiu	$a4,$a4,-24840
.L0f102fc8:
    move	$a0,$s0
    la	$v0,gl_n_polf
    bltz	$s0,.L0f103184
    addiu	$a3,$sp,8
    slti	$at,$s0,257
    beqz	$at,.L0f10315c
    lw	$a2,188($a4)
    sw	$v0,0($sp)
    move	$a4,$a1
    addiu	$v1,$s0,-1
    blez	$s0,.L0f1030c8
    sw	$v1,4($sp)
    move	$a5,$s0
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f103038
    move	$a7,$a4
.L0f103008:
    lwc1	$f2,0($a4)
    swc1	$f2,0($a3)
    lwc1	$f1,4($a4)
    addiu	$a0,$a0,-1
    addiu	$a4,$a4,12
    swc1	$f1,4($a3)
    addiu	$a3,$a3,12
    lwc1	$f0,-4($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f103008
    swc1	$f0,-4($a3)
    move	$a7,$a4
.L0f103038:
    move	$t0,$a0
    move	$a6,$a3
    sra	$a2,$a5,0x2
    beqz	$a2,.L0f1030c8
    move	$a0,$a6
    move	$a1,$t0
    move	$a3,$a7
.L0f103054:
    lwc1	$f2,0($a3)
    swc1	$f2,0($a0)
    lwc1	$f1,4($a3)
    swc1	$f1,4($a0)
    lwc1	$f0,8($a3)
    swc1	$f0,8($a0)
    lwc1	$f3,12($a3)
    swc1	$f3,12($a0)
    lwc1	$f2,16($a3)
    swc1	$f2,16($a0)
    lwc1	$f1,20($a3)
    swc1	$f1,20($a0)
    lwc1	$f0,24($a3)
    swc1	$f0,24($a0)
    lwc1	$f3,28($a3)
    swc1	$f3,28($a0)
    lwc1	$f2,32($a3)
    swc1	$f2,32($a0)
    lwc1	$f1,36($a3)
    swc1	$f1,36($a0)
    lwc1	$f0,40($a3)
    addiu	$a3,$a3,48
    swc1	$f0,40($a0)
    addiu	$a0,$a0,48
    lwc1	$f3,-4($a3)
    addiu	$a1,$a1,-4
    bnez	$a1,.L0f103054
    swc1	$f3,-4($a0)
    move	$a3,$a0
.L0f1030c8:
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x1
    addiu	$a0,$a1,4
    andi	$at,$a0,0x1
    beqz	$at,.L0f1030f4
    la	$t9,gl_compile
    sd	$ra,3104($sp)
    addiu	$a0,$a1,5
    sh	$zero,0($a3)
    la	$t9,gl_compile
.L0f1030f4:
    sd	$ra,3104($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f103114:
    sd	$a1,3112($sp)
    la	$a0,sub_0f030000
    la	$t9,gl_intrptab_insert
    sd	$ra,3104($sp)
    addiu	$a0,$a0,-24840
    jalr	$t9
    addiu	$a0,$a0,176
    ld	$ra,3104($sp)
    li	$a1,1
    sw	$a1,-20372($gp)
    la	$a4,sub_0f030000
    ld	$a1,3112($sp)
    bnez	$s0,.L0f102fc8
    addiu	$a4,$a4,-24840
.L0f10314c:
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f10315c:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,97
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.L0f103184:
    lw	$a2,188($a4)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,3104($sp)
    jalr	$t9
    li	$a0,3
    ld	$ra,3104($sp)
    ld	$gp,3088($sp)
    ld	$s0,3096($sp)
    jr	$ra
    addiu	$sp,$sp,3136
.end gl_c_polf

# Function: gl_n_polf
# Declared: Line 175 (Source lines: 175-175)
# Address: 0x0f1031b0 - 0x0f1032c8 (Size: 280 bytes, Frame: 208)
.globl gl_n_polf
.ent gl_n_polf
gl_n_polf:
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,152 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s0,16($sp)
    beqz	$at,.L0f1031f0
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s3,40($sp)
    sd	$s1,24($sp)
.L0f1031f0:
    sd	$s3,40($sp)
    la	$s3,gl_wstatep
    lw	$t9,0($s3)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    li	$a0,9
    sd	$s1,24($sp)
    jalr	$t9
    lw	$s1,0($s0)
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    lwc1	$f2,4($s0)
    swc1	$f2,11488($ra)
    lwc1	$f1,8($s0)
    li	$at,1
    swc1	$f1,11492($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,12($s0)
    lw	$t9,24($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    addiu	$s0,$s0,16
    addiu	$s1,$s1,-1
    bltz	$s1,.L0f103294
    lw	$t9,0($s3)
    sd	$s5,48($sp)
    li	$s5,-1
.L0f103268:
    lw	$t9,0($s3)
    lwc1	$f14,8($s0)
    lw	$t9,20($t9)
    lwc1	$f13,4($s0)
    addiu	$s1,$s1,-1
    jalr	$t9
    lwc1	$f12,0($s0)
    bne	$s1,$s5,.L0f103268
    addiu	$s0,$s0,12
    ld	$s5,48($sp)
    lw	$t9,0($s3)
.L0f103294:
    lw	$t9,220($t9)
    jalr	$t9
    ld	$s1,24($sp)
    ld	$s3,40($sp)
    andi	$at,$s0,0x3
    beqz	$at,.L0f1032b4
    ld	$ra,32($sp)
    addiu	$s0,$s0,2
.L0f1032b4:
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_polf

