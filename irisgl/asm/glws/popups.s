# Source: ../igloo/glws/popups.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/popups.c -o popups.T
# Total Functions: 5

.text

# Function: gl_g_pupmode
# Declared: Line 16 (Source lines: 17-20)
# Address: 0x0f103494 - 0x0f1034d8 (Size: 68 bytes, Frame: 16)
.globl gl_g_pupmode
.ent gl_g_pupmode
gl_g_pupmode:
    # Line 17
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-588 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 18
    la	$t9,__GLgetdrawmode
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 19
    la	$t9,__GLdrawmode
    li	$a0,32
    jalr	$t9
    # Line 18
    sw	$v0,-20364($gp)
    # Line 20
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_pupmode

# Function: gl_g_endpupmode
# Declared: Line 22 (Source lines: 23-25)
# Address: 0x0f1034d8 - 0x0f10350c (Size: 52 bytes, Frame: 16)
.globl gl_g_endpupmode
.ent gl_g_endpupmode
gl_g_endpupmode:
    # Line 23
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-656 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 24
    la	$t9,__GLdrawmode
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a0,-20364($gp)
    # Line 25
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_endpupmode

# Function: gl_wmfullscrn
# Declared: Line 27 (Source lines: 28-119)
# Address: 0x0f10350c - 0x0f103654 (Size: 328 bytes, Frame: 192)
.globl gl_wmfullscrn
.ent gl_wmfullscrn
gl_wmfullscrn:
    # Line 28
    addiu	$sp,$sp,-64
    sd	$s4,40($sp)
    sd	$s2,0($sp)
    # Line 32
    lw	$s2,4100($zero)
    sd	$s0,16($sp)
    # Line 28
    move	$s0,$a0
    sd	$s1,24($sp)
    sd	$gp,32($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-708
    addu	$gp,$t9,$t8
    # Line 37
    la	$t9,__GLgetdrawmode
    # Line 33
    la	$s1,gl_wstatep
    sd	$ra,8($sp)
    # Line 37
    jalr	$t9
    # Line 33
    lw	$s1,0($s1)
    # Line 39
    lw	$a7,224($s1)
    # Line 38
    move	$s4,$zero
    # Line 54
    li	$v1,64
    # Line 39
    beqz	$a7,.L0f1035d4
    ld	$ra,8($sp)
    # Line 54
    li	$at,16
    beq	$v0,$at,.L0f103608
    nop
    beq	$v0,$v1,.L0f103624
    li	$a3,128
    beq	$v0,$a3,.L0f10363c
    li	$a4,32
    beq	$v0,$a4,.L0f103644
    nop
.L0f103584:
    # Line 76
    beqz	$s4,.L0f1035d4
    # Line 102
    li	$a3,-2
    # Line 76
    li	$at,1
    beq	$s0,$at,.L0f103610
    lw	$v0,32($a7)
    # Line 102
    and	$a3,$v0,$a3
    sw	$a3,32($a7)
    lw	$v1,36($s2)
    beqz	$v1,.L0f1035c8
    # Line 107
    addiu	$a4,$a7,176
    addiu	$a3,$a7,172
    la	$t9,__iglooCalculateBias
    move	$a2,$s4
    lw	$a1,8($a7)
    jalr	$t9
    lw	$a0,4($a7)
    ld	$ra,8($sp)
.L0f1035c8:
    lbu	$a4,367($s2)
    bnel	$a4,$s0,.L0f1035f0
    # Line 114
    sw	$s0,364($s2)
.L0f1035d4:
    ld	$gp,32($sp)
    # Line 119
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s2,0($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1035f0:
    # Line 115
    lw	$t9,208($s1)
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s4
    b	.L0f1035d4
    ld	$ra,8($sp)
.L0f103608:
    # Line 58
    b	.L0f103584
    # Line 57
    lw	$s4,8($a7)
.L0f103610:
    # Line 100
    sw	$zero,172($a7)
    sw	$zero,176($a7)
    # Line 96
    ori	$at,$v0,0x1
    # Line 100
    b	.L0f1035c8
    # Line 96
    sw	$at,32($a7)
.L0f103624:
    # Line 61
    la	$v1,__iglooSoftPupPlanes
    lw	$v1,0($v1)
    beqz	$v1,.L0f10364c
    nop
    # Line 62
    b	.L0f103584
    lw	$s4,136($a7)
.L0f10363c:
    # Line 72
    b	.L0f103584
    # Line 71
    lw	$s4,144($a7)
.L0f103644:
    b	.L0f103584
    # Line 74
    lw	$s4,136($a7)
.L0f10364c:
    b	.L0f103584
    # Line 64
    lw	$s4,140($a7)
.end gl_wmfullscrn

# Function: gl_g_fullscrn
# Declared: Line 139 (Source lines: 140-165)
# Address: 0x0f103654 - 0x0f103808 (Size: 436 bytes, Frame: 16)
.globl gl_g_fullscrn
.ent gl_g_fullscrn
gl_g_fullscrn:
    # Line 140
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-1036 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 141
    la	$t9,gl_wmfullscrn
    sd	$ra,0($sp)
    bal gl_wmfullscrn
    li	$a0,1
    # Line 142
    la	$a1,gl_sstatep
    move	$a2,$zero
    lw	$a1,0($a1)
    la	$t9,viewport
    move	$a0,$zero
    lh	$a3,6($a1)
    jalr	$t9
    lh	$a1,2($a1)
    # Line 145
    la	$t9,getmmode
    jalr	$t9
    nop
    li	$at,1
    beq	$v0,$at,.L0f103724
    ld	$ra,0($sp)
    li	$v1,2
    beq	$v0,$v1,.L0f1037a4
    la	$a1,gl_sstatep
    beqz	$v0,.L0f1036d0
    la	$a0,gl_sstatep
.L0f1036c4:
    ld	$gp,8($sp)
    # Line 165
    jr	$ra
    addiu	$sp,$sp,16
.L0f1036d0:
    # Line 161
    lw	$a0,0($a0)
    lw	$a1,4($a0)
    mtc1	$a1,$f15
    lw	$a0,0($a0)
    cvt.s.w	$f15,$f15
    mtc1	$a0,$f13
    nop
    cvt.s.w	$f13,$f13
    ldc1	$f14,_lit8_3fe0000000000000
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f14
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f14
    lwc1	$f12,_lit_bf000000
    la	$t9,ortho2
    cvt.s.d	$f15,$f15
    mov.s	$f14,$f12
    jalr	$t9
    cvt.s.d	$f13,$f13
    b	.L0f1036c4
    ld	$ra,0($sp)
.L0f103724:
    la	$a1,gl_sstatep
    # Line 147
    lw	$a1,0($a1)
    lw	$a2,4($a1)
    mtc1	$a2,$f15
    lw	$a1,0($a1)
    cvt.s.w	$f15,$f15
    mtc1	$a1,$f13
    nop
    cvt.s.w	$f13,$f13
    ldc1	$f14,_lit8_3fe0000000000000
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f14
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f14
    lwc1	$f12,_lit_bf000000
    la	$t9,ortho2
    cvt.s.d	$f15,$f15
    mov.s	$f14,$f12
    jalr	$t9
    cvt.s.d	$f13,$f13
    # Line 149
    la	$t9,mmode
    jalr	$t9
    li	$a0,2
    # Line 150
    la	$t9,loadmatrix
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-24632
    # Line 151
    la	$t9,mmode
    jalr	$t9
    li	$a0,1
    b	.L0f1036c4
    ld	$ra,0($sp)
.L0f1037a4:
    # Line 155
    lw	$a1,0($a1)
    lw	$a2,4($a1)
    mtc1	$a2,$f15
    lw	$a1,0($a1)
    cvt.s.w	$f15,$f15
    mtc1	$a1,$f13
    nop
    cvt.s.w	$f13,$f13
    ldc1	$f14,_lit8_3fe0000000000000
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f14
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f14
    lwc1	$f12,_lit_bf000000
    la	$t9,ortho2
    cvt.s.d	$f15,$f15
    mov.s	$f14,$f12
    jalr	$t9
    cvt.s.d	$f13,$f13
    # Line 157
    la	$t9,loadmatrix
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-24632
    b	.L0f1036c4
    ld	$ra,0($sp)
.end gl_g_fullscrn

# Function: gl_g_endfullscrn
# Declared: Line 167 (Source lines: 168-172)
# Address: 0x0f103808 - 0x0f103848 (Size: 64 bytes, Frame: 16)
.globl gl_g_endfullscrn
.ent gl_g_endfullscrn
gl_g_endfullscrn:
    # Line 168
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-1472 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 169
    la	$t9,gl_wmfullscrn
    sd	$ra,0($sp)
    bal gl_wmfullscrn
    move	$a0,$zero
    # Line 170
    la	$t9,__GLreshapeviewport
    jalr	$t9
    nop
    # Line 172
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_endfullscrn

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit_bf000000:
    .word 0xbf000000

