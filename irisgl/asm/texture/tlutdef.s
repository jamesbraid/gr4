# Source: ../igloo/texture/tlutdef.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/tlutdef.c -o tlutdef.T
# Total Functions: 3

.text

# Function: gl_g_tlutdef
# Declared: Line 11 (Source lines: 13-82)
# Address: 0x0f1243e0 - 0x0f124734 (Size: 852 bytes, Frame: 240)
.globl gl_g_tlutdef
.ent gl_g_tlutdef
gl_g_tlutdef:
    # Line 13
    addiu	$sp,$sp,-112
    sd	$ra,48($sp)
    sd	$a3,16($sp)
    sd	$s2,0($sp)
    sd	$gp,40($sp)
    # lui	v1,0xfff1 (gp disp hi)
    # addiu	v1,v1,-4504 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 14
    la	$v0,gl_wstatep
    # Line 13
    move	$s2,$a2
    sd	$s0,8($sp)
    # Line 14
    lw	$v0,0($v0)
    # Line 13
    move	$s0,$a1
    sd	$s1,32($sp)
    # Line 14
    lw	$at,11708($v0)
    # Line 13
    move	$s1,$a0
    sd	$s5,24($sp)
    # Line 14
    beqz	$at,.L0f124594
    move	$s5,$v0
    # Line 28
    la	$t9,gl_remove
.L0f124430:
    # Line 25
    la	$a0,gl_tluttab
    # Line 28
    jalr	$t9
    move	$a1,$s1
    bnez	$v0,.L0f1244bc
    # Line 33
    la	$t9,sub_0f120000
.L0f124444:
    addiu	$t9,$t9,18228
    bal gl_g_tlutdef
    nop
    la	$a0,gl_tluttab
    move	$a1,$v0
    # Line 37
    sw	$s0,1036($v0)
    # Line 36
    move	$a6,$v0
    # Line 37
    slti	$at,$s2,257
    bnez	$at,.L0f124470
    # Line 34
    sw	$s1,4($v0)
    # Line 42
    li	$s2,256
.L0f124470:
    # Line 44
    li	$v1,2
    beq	$s0,$v1,.L0f1244f4
    li	$t2,3
    beq	$s0,$t2,.L0f1245a8
    li	$a4,4
    beq	$s0,$a4,.L0f124660
.L0f124488:
    # Line 77
    la	$t9,gl_insert
.L0f12448c:
    ld	$s2,0($sp)
    jalr	$t9
    ld	$s0,8($sp)
    lw	$a5,11708($s5)
    lw	$a5,412($a5)
    ld	$s5,24($sp)
    beq	$a5,$s1,.L0f1244d4
    ld	$ra,48($sp)
.L0f1244ac:
    ld	$gp,40($sp)
    # Line 82
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f1244bc:
    # Line 31
    la	$t9,sub_0f120000
    addiu	$t9,$t9,18308
    bal gl_g_tlutdef
    move	$a0,$v0
    b	.L0f124444
    # Line 33
    la	$t9,sub_0f120000
.L0f1244d4:
    # Line 80
    move	$a0,$zero
    la	$t9,gl_tlutbind
    move	$a1,$s1
    li	$a2,1
    bal gl_tlutbind
    ld	$s5,24($sp)
    b	.L0f1244ac
    ld	$ra,48($sp)
.L0f1244f4:
    # Line 47
    mult	$s0,$s2
    ld	$v0,16($sp)
    ld	$s2,0($sp)
    mflo	$t0
    blez	$t0,.L0f124488
    move	$a7,$a6
    addu	$a2,$t0,$v0
    addiu	$s0,$t0,1
    srl	$t1,$s0,0x1f
    addu	$t1,$t1,$s0
    sra	$t1,$t1,0x1
    andi	$at,$t1,0x1
    beqz	$at,.L0f124544
    ld	$s0,8($sp)
    # Line 49
    lbu	$v1,0($v0)
    sb	$v1,13($a7)
    # Line 50
    lbu	$at,1($v0)
    # Line 47
    addiu	$v0,$v0,2
    addiu	$a7,$a7,2
    # Line 50
    sb	$at,10($a7)
.L0f124544:
    sra	$a4,$t1,0x1
    move	$t2,$a7
    beqz	$a4,.L0f12458c
    move	$t0,$v0
    move	$a6,$t2
    move	$a3,$t0
.L0f12455c:
    # Line 49
    lbu	$a5,0($a3)
    sb	$a5,13($a6)
    # Line 50
    lbu	$a4,1($a3)
    sb	$a4,12($a6)
    # Line 49
    lbu	$v1,2($a3)
    # Line 47
    addiu	$a6,$a6,4
    # Line 49
    sb	$v1,11($a6)
    # Line 47
    addiu	$a3,$a3,4
    # Line 50
    lbu	$a5,-1($a3)
    # Line 47
    slt	$at,$a3,$a2
    bnez	$at,.L0f12455c
    # Line 50
    sb	$a5,10($a6)
.L0f12458c:
    b	.L0f12448c
    # Line 77
    la	$t9,gl_insert
.L0f124594:
    # Line 25
    la	$t9,gl_init_texturing
    jalr	$t9
    move	$a0,$v0
    b	.L0f124430
    # Line 28
    la	$t9,gl_remove
.L0f1245a8:
    # Line 54
    mult	$s0,$s2
    mflo	$t0
    blez	$t0,.L0f124488
    addiu	$v0,$t0,2
    div	$zero,$v0,$t2
    move	$a7,$a6
    teq	$t2,$zero,0x7
    ld	$s2,0($sp)
    ld	$s0,8($sp)
    ld	$v0,16($sp)
    mflo	$t1
    andi	$at,$t1,0x1
    beqz	$at,.L0f124600
    addu	$a2,$t0,$v0
    # Line 56
    lbu	$a5,0($v0)
    sb	$a5,14($a7)
    # Line 57
    lbu	$a4,1($v0)
    sb	$a4,13($a7)
    # Line 58
    lbu	$v1,2($v0)
    # Line 54
    addiu	$v0,$v0,3
    addiu	$a7,$a7,3
    # Line 58
    sb	$v1,9($a7)
.L0f124600:
    move	$t2,$a7
    sra	$at,$t1,0x1
    beqz	$at,.L0f124658
    move	$t0,$v0
    move	$a3,$t2
    move	$a6,$t0
.L0f124618:
    # Line 56
    lbu	$a5,0($a6)
    sb	$a5,14($a3)
    # Line 57
    lbu	$a4,1($a6)
    sb	$a4,13($a3)
    # Line 58
    lbu	$v1,2($a6)
    sb	$v1,12($a3)
    # Line 56
    lbu	$at,3($a6)
    sb	$at,17($a3)
    # Line 57
    lbu	$a5,4($a6)
    # Line 54
    addiu	$a3,$a3,6
    # Line 57
    sb	$a5,10($a3)
    # Line 54
    addiu	$a6,$a6,6
    # Line 58
    lbu	$v1,-1($a6)
    # Line 54
    slt	$a4,$a6,$a2
    bnez	$a4,.L0f124618
    # Line 58
    sb	$v1,9($a3)
.L0f124658:
    b	.L0f12448c
    # Line 77
    la	$t9,gl_insert
.L0f124660:
    # Line 63
    mult	$s0,$s2
    mflo	$t0
    blez	$t0,.L0f124488
    ld	$v0,16($sp)
    move	$a7,$a6
    ld	$s2,0($sp)
    addu	$a2,$t0,$v0
    addiu	$s0,$t0,3
    sra	$t1,$s0,0x1
    srl	$t1,$t1,0x1e
    addu	$t1,$t1,$s0
    sra	$t1,$t1,0x2
    andi	$at,$t1,0x1
    beqz	$at,.L0f1246c4
    ld	$s0,8($sp)
    # Line 66
    lbu	$a5,0($v0)
    sb	$a5,15($a7)
    # Line 67
    lbu	$a4,1($v0)
    sb	$a4,14($a7)
    # Line 68
    lbu	$v1,2($v0)
    sb	$v1,13($a7)
    # Line 69
    lbu	$at,3($v0)
    # Line 63
    addiu	$v0,$v0,4
    addiu	$a7,$a7,4
    # Line 69
    sb	$at,8($a7)
.L0f1246c4:
    move	$t0,$a7
    sra	$at,$t1,0x1
    beqz	$at,.L0f12472c
    move	$a6,$v0
    move	$v0,$t0
    move	$a3,$a6
.L0f1246dc:
    # Line 66
    lbu	$v1,0($a3)
    sb	$v1,15($v0)
    # Line 67
    lbu	$at,1($a3)
    sb	$at,14($v0)
    # Line 68
    lbu	$a5,2($a3)
    sb	$a5,13($v0)
    # Line 69
    lbu	$a4,3($a3)
    sb	$a4,12($v0)
    # Line 66
    lbu	$v1,4($a3)
    sb	$v1,19($v0)
    # Line 67
    lbu	$at,5($a3)
    sb	$at,18($v0)
    # Line 68
    lbu	$a5,6($a3)
    # Line 63
    addiu	$v0,$v0,8
    # Line 68
    sb	$a5,9($v0)
    # Line 63
    addiu	$a3,$a3,8
    # Line 69
    lbu	$v1,-1($a3)
    # Line 63
    slt	$a4,$a3,$a2
    bnez	$a4,.L0f1246dc
    # Line 69
    sb	$v1,8($v0)
.L0f12472c:
    b	.L0f12448c
    # Line 77
    la	$t9,gl_insert
.end gl_g_tlutdef

# Function: gl_newtlut
# Declared: Line 84 (Source lines: 85-92)
# Address: 0x0f124734 - 0x0f124784 (Size: 80 bytes, Frame: 16)
.ent gl_newtlut
gl_newtlut:
    # Line 88
    lw	$a1,-14396($gp)
    li	$a0,1040
    la	$t9,gl_malloc
    # Line 85
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 88
    jalr	$t9
    sd	$s8,8($sp)
    move	$s8,$v0
    beqz	$v0,.L0f124770
    ld	$ra,0($sp)
.L0f12475c:
    # Line 91
    sw	$zero,8($s8)
    # Line 92
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f124770:
    # Line 90
    la	$t9,exit
    jalr	$t9
    li	$a0,1
    b	.L0f12475c
    ld	$ra,0($sp)
.end gl_newtlut

# Function: gl_freetlut
# Declared: Line 95 (Source lines: 96-98)
# Address: 0x0f124784 - 0x0f1247a4 (Size: 32 bytes, Frame: 32)
.ent gl_freetlut
gl_freetlut:
    # Line 97
    la	$t9,gl_free
    # Line 96
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 97
    jalr	$t9
    lw	$a1,-14396($gp)
    ld	$ra,0($sp)
    # Line 98
    jr	$ra
    addiu	$sp,$sp,32
.end gl_freetlut

