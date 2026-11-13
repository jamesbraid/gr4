# Source: ../igloo/stencil.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/stencil.c -o stencil.T
# Total Functions: 8

.text

# Function: stencilOpTranslate
# Declared: Line 11 (Source lines: 12-36)
# Address: 0x0f1179ec - 0x0f117a94 (Size: 168 bytes, Frame: 32)
.globl stencilOpTranslate
.ent stencilOpTranslate
stencilOpTranslate:
    # Line 12
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff2
    addiu	$at,$at,-18340
    # Line 13
    beqz	$a1,.L0f117a5c
    # Line 12
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 13
    li	$v0,1
    beq	$a1,$v0,.L0f117a68
    li	$v1,2
    beq	$a1,$v1,.L0f117a70
    li	$a2,3
    beq	$a1,$a2,.L0f117a7c
    li	$at,4
    beq	$a1,$at,.L0f117a88
    li	$v0,5
    beq	$a1,$v0,.L0f117a50
    # Line 33
    la	$t9,printf
    la	$a0,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a0,$a0,21200
    ld	$ra,8($sp)
.L0f117a44:
    ld	$gp,0($sp)
    # Line 36
    jr	$ra
    addiu	$sp,$sp,32
.L0f117a50:
    # Line 30
    li	$a2,5386
    # Line 31
    b	.L0f117a44
    # Line 30
    sw	$a2,0($a0)
.L0f117a5c:
    # Line 15
    li	$at,7680
    # Line 16
    b	.L0f117a44
    # Line 15
    sw	$at,0($a0)
.L0f117a68:
    # Line 19
    b	.L0f117a44
    # Line 18
    sw	$zero,0($a0)
.L0f117a70:
    # Line 21
    li	$v0,7681
    # Line 22
    b	.L0f117a44
    # Line 21
    sw	$v0,0($a0)
.L0f117a7c:
    # Line 24
    li	$v1,7682
    # Line 25
    b	.L0f117a44
    # Line 24
    sw	$v1,0($a0)
.L0f117a88:
    # Line 27
    li	$a2,7683
    # Line 28
    b	.L0f117a44
    # Line 27
    sw	$a2,0($a0)
.end stencilOpTranslate

# Function: __gl_stencil
# Declared: Line 42 (Source lines: 44-97)
# Address: 0x0f117a94 - 0x0f117b90 (Size: 252 bytes, Frame: 144)
.globl __gl_stencil
.ent __gl_stencil
__gl_stencil:
    # Line 44
    addiu	$sp,$sp,-144
    sd	$gp,64($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-18508 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 45
    la	$t0,gl_wstatep
    lw	$t0,0($t0)
    lw	$at,276($t0)
    lw	$at,56($at)
    li	$v0,16
    bnel	$at,$v0,.L0f117b64
    ld	$gp,64($sp)
    sd	$ra,72($sp)
    sd	$t0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    beqz	$a0,.L0f117b6c
    sd	$a3,56($sp)
    # Line 80
    la	$t9,stencilOpTranslate
    move	$a1,$a4
    bal stencilOpTranslate
    addiu	$a0,$sp,0
    # Line 81
    la	$t9,stencilOpTranslate
    ld	$a1,48($sp)
    bal stencilOpTranslate
    addiu	$a0,$sp,4
    # Line 82
    la	$t9,stencilOpTranslate
    ld	$a1,40($sp)
    bal stencilOpTranslate
    addiu	$a0,$sp,8
    # Line 84
    la	$t9,glStencilOp
    lw	$a2,8($sp)
    lw	$a1,4($sp)
    jalr	$t9
    lw	$a0,0($sp)
    # Line 87
    ld	$a2,56($sp)
    la	$t9,glStencilFunc
    ld	$a0,24($sp)
    ld	$a1,32($sp)
    jalr	$t9
    addiu	$a0,$a0,512
    # Line 89
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2960
    ld	$ra,16($sp)
    li	$a7,1
    # Line 90
    sw	$a7,2792($ra)
    ld	$ra,72($sp)
.L0f117b60:
    ld	$gp,64($sp)
.L0f117b64:
    # Line 97
    jr	$ra
    addiu	$sp,$sp,144
.L0f117b6c:
    # Line 93
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,2960
    ld	$ra,72($sp)
    ld	$v0,16($sp)
    li	$at,1
    b	.L0f117b60
    # Line 94
    sw	$at,2792($v0)
.end __gl_stencil

# Function: gl_i_swritemask
# Declared: Line 104 (Source lines: 104-104)
# Address: 0x0f117b90 - 0x0f117be0 (Size: 80 bytes, Frame: 48)
.globl gl_i_swritemask
.ent gl_i_swritemask
gl_i_swritemask:
    # Line 104
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-18760 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f117bc4
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f117bc4:
    la	$t9,glStencilMask
    jalr	$t9
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_swritemask

# Function: gl_c_swritemask
# Declared: Line 104 (Source lines: 104-104)
# Address: 0x0f117be0 - 0x0f117c54 (Size: 116 bytes, Frame: 192)
.globl gl_c_swritemask
.ent gl_c_swritemask
gl_c_swritemask:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-18840 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19952($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f117c38
    move	$s8,$a0
.L0f117c08:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_swritemask
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f117c38:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-22008
    li	$a1,1
    b	.L0f117c08
    sw	$a1,-19952($gp)
.end gl_c_swritemask

# Function: gl_n_swritemask
# Declared: Line 104 (Source lines: 104-104)
# Address: 0x0f117c54 - 0x0f117cb0 (Size: 92 bytes, Frame: 48)
.globl gl_n_swritemask
.ent gl_n_swritemask
gl_n_swritemask:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-18956 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f117c8c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f117c8c:
    la	$t9,glStencilMask
    jalr	$t9
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_swritemask

# Function: gl_i_stencil
# Declared: Line 105 (Source lines: 105-105)
# Address: 0x0f117cb0 - 0x0f117d30 (Size: 128 bytes, Frame: 144)
.globl gl_i_stencil
.ent gl_i_stencil
gl_i_stencil:
    # Line 105
    addiu	$sp,$sp,-144
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-19048 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f117d14
    sd	$ra,64($sp)
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$a4,40($sp)
    sd	$a1,32($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a5,16($sp)
    ld	$a6,24($sp)
    ld	$a1,32($sp)
    ld	$a4,40($sp)
    ld	$a2,48($sp)
    ld	$a3,56($sp)
.L0f117d14:
    la	$t9,__gl_stencil
    bal __gl_stencil
    nop
    ld	$ra,64($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_i_stencil

# Function: gl_c_stencil
# Declared: Line 105 (Source lines: 105-105)
# Address: 0x0f117d30 - 0x0f117df0 (Size: 192 bytes, Frame: 176)
.globl gl_c_stencil
.ent gl_c_stencil
gl_c_stencil:
    move	$t0,$a1
    addiu	$sp,$sp,-176
    sd	$gp,48($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-19176 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19948($gp)
    sd	$ra,56($sp)
    sd	$s8,40($sp)
    beqz	$at,.L0f117da4
    move	$s8,$a0
.L0f117d5c:
    addiu	$a1,$sp,0
    li	$a0,16
    sw	$a6,28($sp)
    sw	$a5,24($sp)
    sw	$a4,20($sp)
    sw	$a3,16($sp)
    sw	$a2,12($sp)
    sw	$t0,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_stencil
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f117da4:
    sd	$t0,104($sp)
    sd	$a2,96($sp)
    sd	$a3,88($sp)
    sd	$a4,80($sp)
    sd	$a5,72($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a6,64($sp)
    jalr	$t9
    addiu	$a0,$a0,-21992
    ld	$a6,64($sp)
    ld	$a5,72($sp)
    ld	$a4,80($sp)
    ld	$a3,88($sp)
    ld	$t0,104($sp)
    li	$a2,1
    sw	$a2,-19948($gp)
    b	.L0f117d5c
    ld	$a2,96($sp)
.end gl_c_stencil

# Function: gl_n_stencil
# Declared: Line 105 (Source lines: 105-105)
# Address: 0x0f117df0 - 0x0f117e64 (Size: 116 bytes, Frame: 48)
.globl gl_n_stencil
.ent gl_n_stencil
gl_n_stencil:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-19368 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f117e28
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f117e28:
    lw	$a6,24($s8)
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    lw	$a3,12($s8)
    la	$t9,__gl_stencil
    lw	$a2,8($s8)
    lw	$a1,4($s8)
    bal __gl_stencil
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,28
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_stencil

