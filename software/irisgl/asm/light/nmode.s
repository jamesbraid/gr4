# Source: ../igloo/light/nmode.c
# Category: light
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/light/nmode.c -o nmode.T
# Total Functions: 4

.text

# Function: gl_i_nmode
# Declared: Line 19 (Source lines: 19-19)
# Address: 0x0f0f31d8 - 0x0f0f3228 (Size: 80 bytes, Frame: 48)
.globl gl_i_nmode
.ent gl_i_nmode
gl_i_nmode:
    # Line 19
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,112 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f320c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f320c:
    la	$t9,gl_normalmode
    bal gl_normalmode
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_nmode

# Function: gl_c_nmode
# Declared: Line 19 (Source lines: 19-19)
# Address: 0x0f0f3228 - 0x0f0f329c (Size: 116 bytes, Frame: 192)
.globl gl_c_nmode
.ent gl_c_nmode
gl_c_nmode:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,32 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20552($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f3280
    move	$s8,$a0
.L0f0f3250:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_nmode
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f3280:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25464
    li	$a1,1
    b	.L0f0f3250
    sw	$a1,-20552($gp)
.end gl_c_nmode

# Function: gl_n_nmode
# Declared: Line 19 (Source lines: 19-19)
# Address: 0x0f0f329c - 0x0f0f32f8 (Size: 92 bytes, Frame: 48)
.globl gl_n_nmode
.ent gl_n_nmode
gl_n_nmode:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-84 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f32d4
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f32d4:
    la	$t9,gl_normalmode
    bal gl_normalmode
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_nmode

# Function: gl_normalmode
# Declared: Line 21 (Source lines: 22-35)
# Address: 0x0f0f32f8 - 0x0f0f335c (Size: 100 bytes, Frame: 32)
.globl gl_normalmode
.ent gl_normalmode
gl_normalmode:
    # Line 22
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-176
    # Line 23
    beqz	$a0,.L0f0f3340
    # Line 22
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 23
    li	$v0,1
    beq	$a0,$v0,.L0f0f3340
    sd	$ra,8($sp)
    # Line 33
    la	$t9,gl_ErrorHandler
    addiu	$a2,$gp,-17032
    li	$a1,2
    jalr	$t9
    li	$a0,98
    ld	$ra,8($sp)
.L0f0f3334:
    ld	$gp,0($sp)
    # Line 35
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f3340:
    # Line 29
    la	$t9,__iglooSetEnable
    li	$a1,1
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,2977
    b	.L0f0f3334
    ld	$ra,8($sp)
.end gl_normalmode

