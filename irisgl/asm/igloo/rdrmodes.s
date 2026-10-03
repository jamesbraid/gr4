# Source: ../igloo/rdrmodes.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/rdrmodes.c -o rdrmodes.T
# Total Functions: 6

.text

# Function: gl_g_readcomponent
# Declared: Line 6 (Source lines: 10-10)
# Address: 0x0f1041b8 - 0x0f1041c0 (Size: 8 bytes, Frame: 0)
.globl gl_g_readcomponent
.ent gl_g_readcomponent
gl_g_readcomponent:
    # Line 10
    jr	$ra
    nop
.end gl_g_readcomponent

# Function: gl_g_glcompat
# Declared: Line 33 (Source lines: 34-129)
# Address: 0x0f1041c0 - 0x0f10441c (Size: 604 bytes, Frame: 48)
.globl gl_g_glcompat
.ent gl_g_glcompat
gl_g_glcompat:
    # Line 34
    move	$a4,$a1
    slti	$at,$a0,1005
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-3960
    bnez	$at,.L0f104224
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 35
    slti	$v1,$a0,1006
    bnez	$v1,.L0f10427c
    slti	$a2,$a0,1050
    bnez	$a2,.L0f1042cc
    slti	$at,$a0,1051
    bnez	$at,.L0f10427c
    slti	$v0,$a0,2000
    bnez	$v0,.L0f10433c
    slti	$v1,$a0,2001
    bnez	$v1,.L0f10427c
    slti	$a2,$a0,2002
    bnez	$a2,.L0f1043f4
    slti	$at,$a0,2003
    beqz	$at,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f104224:
    # Line 35
    slti	$v0,$a0,10
    bnez	$v0,.L0f104288
    slti	$v1,$a0,11
    bnez	$v1,.L0f104358
    slti	$a2,$a0,1002
    bnez	$a2,.L0f1042f8
    slti	$at,$a0,1003
    bnez	$at,.L0f10427c
    slti	$v0,$a0,1004
    bnez	$v0,.L0f1043b8
    slti	$v1,$a0,1005
    beqz	$v1,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f104260:
    # Line 35
    li	$a2,8
    beq	$a0,$a2,.L0f10427c
.L0f104268:
    # Line 125
    la	$t9,gl_ws_compat
.L0f10426c:
    sd	$ra,24($sp)
    jalr	$t9
    move	$a1,$a4
    ld	$ra,24($sp)
.L0f10427c:
    ld	$gp,16($sp)
.L0f104280:
    # Line 129
    jr	$ra
    addiu	$sp,$sp,48
.L0f104288:
    # Line 35
    blez	$a0,.L0f1043a0
    slti	$at,$a0,2
    bnez	$at,.L0f104314
    slti	$v0,$a0,9
    bnez	$v0,.L0f104260
    slti	$v1,$a0,10
    beqz	$v1,.L0f104268
    sd	$ra,24($sp)
    # Line 77
    la	$t9,glXGetVideoSyncSGI
    sd	$a4,8($sp)
    jalr	$t9
    addiu	$a0,$sp,4
    # Line 79
    ld	$ra,8($sp)
    lw	$a2,4($sp)
    sw	$a2,0($ra)
    # Line 81
    b	.L0f10427c
    ld	$ra,24($sp)
.L0f1042cc:
    # Line 35
    slti	$at,$a0,1008
    bnez	$at,.L0f104320
    slti	$v0,$a0,1009
    bnez	$v0,.L0f10427c
    slti	$v1,$a0,1018
    bnez	$v1,.L0f1043cc
    slti	$a2,$a0,1019
    beqz	$a2,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f1042f8:
    # Line 35
    slti	$at,$a0,1001
    bnez	$at,.L0f104378
    slti	$v0,$a0,1002
    beqz	$v0,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f104314:
    # Line 119
    la	$v1,gl_zrangemap
    # Line 120
    b	.L0f10427c
    # Line 119
    sw	$a4,0($v1)
.L0f104320:
    # Line 35
    slti	$a2,$a0,1007
    bnez	$a2,.L0f10438c
    slti	$at,$a0,1008
    beqz	$at,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f10433c:
    # Line 35
    slti	$v0,$a0,1052
    bnez	$v0,.L0f1043e0
    slti	$v1,$a0,1053
    beqz	$v1,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f104358:
    # Line 67
    addiu	$a2,$sp,0
    la	$t9,glXWaitVideoSyncSGI
    lw	$a1,4($a4)
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a0,0($a4)
    b	.L0f10427c
    ld	$ra,24($sp)
.L0f104378:
    # Line 35
    li	$a2,1000
    bne	$a0,$a2,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f10438c:
    # Line 35
    li	$at,1006
    bne	$a0,$at,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f1043a0:
    # Line 35
    bltz	$a0,.L0f104408
    lui	$v0,0xcaca
    bgtz	$a0,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f1043b8:
    # Line 35
    li	$v0,1003
    bne	$a0,$v0,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f1043cc:
    # Line 35
    li	$v1,1014
    bne	$a0,$v1,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f1043e0:
    # Line 35
    li	$a2,1051
    bne	$a0,$a2,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f1043f4:
    # Line 35
    li	$at,2001
    bne	$a0,$at,.L0f10426c
    # Line 125
    la	$t9,gl_ws_compat
    b	.L0f104280
    ld	$gp,16($sp)
.L0f104408:
    # Line 35
    ori	$v0,$v0,0xcaca
    bne	$a0,$v0,.L0f104268
    # Line 38
    la	$v1,gl_iglooUseTexObj
    # Line 39
    b	.L0f10427c
    # Line 38
    sw	$a4,0($v1)
.end gl_g_glcompat

# Function: gl_dither
# Declared: Line 139 (Source lines: 140-155)
# Address: 0x0f10441c - 0x0f10448c (Size: 112 bytes, Frame: 32)
.globl gl_dither
.ent gl_dither
gl_dither:
    # Line 140
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-4564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 145
    la	$at,gl_wstatep
    lw	$at,0($at)
    beqz	$a0,.L0f104470
    sw	$a0,3012($at)
    # Line 149
    li	$v1,1
    beq	$a0,$v1,.L0f104458
    # Line 153
    la	$t9,__iglooSetEnable
.L0f10444c:
    ld	$gp,0($sp)
    # Line 155
    jr	$ra
    addiu	$sp,$sp,32
.L0f104458:
    # Line 153
    li	$a1,1
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,3024
    b	.L0f10444c
    ld	$ra,8($sp)
.L0f104470:
    # Line 149
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,3024
    b	.L0f10444c
    ld	$ra,8($sp)
.end gl_dither

# Function: gl_i_dither
# Declared: Line 159 (Source lines: 159-159)
# Address: 0x0f10448c - 0x0f1044dc (Size: 80 bytes, Frame: 48)
.globl gl_i_dither
.ent gl_i_dither
gl_i_dither:
    # Line 159
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-4676 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f1044c0
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f1044c0:
    la	$t9,gl_dither
    bal gl_dither
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_dither

# Function: gl_c_dither
# Declared: Line 159 (Source lines: 159-159)
# Address: 0x0f1044dc - 0x0f104550 (Size: 116 bytes, Frame: 192)
.globl gl_c_dither
.ent gl_c_dither
gl_c_dither:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-4756 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20348($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f104534
    move	$s8,$a0
.L0f104504:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_dither
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f104534:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-24568
    li	$a1,1
    b	.L0f104504
    sw	$a1,-20348($gp)
.end gl_c_dither

# Function: gl_n_dither
# Declared: Line 159 (Source lines: 159-159)
# Address: 0x0f104550 - 0x0f1045ac (Size: 92 bytes, Frame: 48)
.globl gl_n_dither
.ent gl_n_dither
gl_n_dither:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-4872 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f104588
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f104588:
    la	$t9,gl_dither
    bal gl_dither
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_dither

