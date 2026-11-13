# Source: ../igloo/polymode.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/polymode.c -o polymode.T
# Total Functions: 4

.text

# Function: __gl_PolygonMode
# Declared: Line 34 (Source lines: 35-55)
# Address: 0x0f1032c8 - 0x0f103374 (Size: 172 bytes, Frame: 32)
.globl __gl_PolygonMode
.ent __gl_PolygonMode
__gl_PolygonMode:
    # Line 35
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,-128 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 38
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    # Line 40
    li	$at,1
    beq	$a0,$at,.L0f103324
    # Line 38
    sw	$a0,24($v0)
    # Line 40
    li	$a1,3
    beq	$a0,$a1,.L0f103340
    li	$at,2
    beq	$a0,$at,.L0f10335c
    sd	$ra,8($sp)
    # Line 54
    la	$t9,__iglooSyncConcavePmode
.L0f10330c:
    jalr	$t9
    nop
    # Line 55
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f103324:
    # Line 42
    la	$t9,glPolygonMode
    li	$a1,6914
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,1032
    b	.L0f10330c
    # Line 54
    la	$t9,__iglooSyncConcavePmode
.L0f103340:
    # Line 45
    la	$t9,glPolygonMode
    li	$a1,6913
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,1032
    b	.L0f10330c
    # Line 54
    la	$t9,__iglooSyncConcavePmode
.L0f10335c:
    # Line 48
    la	$t9,glPolygonMode
    li	$a1,6912
    jalr	$t9
    li	$a0,1032
    b	.L0f10330c
    # Line 54
    la	$t9,__iglooSyncConcavePmode
.end __gl_PolygonMode

# Function: gl_i_polymode
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f103374 - 0x0f1033c4 (Size: 80 bytes, Frame: 48)
.globl gl_i_polymode
.ent gl_i_polymode
gl_i_polymode:
    # Line 57
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-300 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f1033a8
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f1033a8:
    la	$t9,__gl_PolygonMode
    bal __gl_PolygonMode
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_polymode

# Function: gl_c_polymode
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f1033c4 - 0x0f103438 (Size: 116 bytes, Frame: 192)
.globl gl_c_polymode
.ent gl_c_polymode
gl_c_polymode:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-380 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20368($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10341c
    move	$s8,$a0
.L0f1033ec:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_polymode
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10341c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-24648
    li	$a1,1
    b	.L0f1033ec
    sw	$a1,-20368($gp)
.end gl_c_polymode

# Function: gl_n_polymode
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f103438 - 0x0f103494 (Size: 92 bytes, Frame: 48)
.globl gl_n_polymode
.ent gl_n_polymode
gl_n_polymode:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-496 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f103470
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f103470:
    la	$t9,__gl_PolygonMode
    bal __gl_PolygonMode
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_polymode

