# Source: ../igloo/xform/xsin.c
# Category: xform
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/xform/xsin.c -o xsin.T
# Total Functions: 2

.text

# Function: gl_xtableglobs
# Declared: Line 17 (Source lines: 19-19)
# Address: 0x0f1300b8 - 0x0f1300c0 (Size: 8 bytes, Frame: 0)
.globl gl_xtableglobs
.ent gl_xtableglobs
gl_xtableglobs:
    # Line 19
    jr	$ra
    nop
.end gl_xtableglobs

# Function: gl_g_gl_sincos
# Declared: Line 24 (Source lines: 25-60)
# Address: 0x0f1300c0 - 0x0f130214 (Size: 340 bytes, Frame: 0)
.globl gl_g_gl_sincos
.ent gl_g_gl_sincos
gl_g_gl_sincos:
    # Line 25
    lui	$v0,0xfff0
    addiu	$v0,$v0,12680
    bgez	$a0,.L0f13011c
    addu	$at,$t9,$v0
    li	$v1,3600
    li	$a3,3599
    subu	$a3,$a3,$a0
    div	$zero,$a3,$v1
    mflo	$a6
    andi	$a5,$a6,0x3
    beqz	$a5,.L0f1300fc
    teq	$v1,$zero,0x7
.L0f1300f0:
    addi	$a5,$a5,-1
    bnez	$a5,.L0f1300f0
    # Line 30
    addiu	$a0,$a0,3600
.L0f1300fc:
    sra	$a4,$a6,0x2
    beqz	$a4,.L0f13011c
    move	$a7,$a0
    move	$a5,$a7
    addiu	$a5,$a5,14400
.L0f130110:
    bltzl	$a5,.L0f130110
    addiu	$a5,$a5,14400
    move	$a0,$a5
.L0f13011c:
    # Line 32
    addiu	$v1,$a0,-1
    slti	$v0,$a0,901
    bnez	$v0,.L0f130190
    move	$a5,$zero
    li	$t1,900
    div	$zero,$v1,$t1
    move	$a6,$a0
    mflo	$a7
    andi	$a5,$a7,0x3
    beqz	$a5,.L0f130154
    teq	$t1,$zero,0x7
.L0f130148:
    addi	$a5,$a5,-1
    bnez	$a5,.L0f130148
    # Line 36
    addiu	$a0,$a0,-900
.L0f130154:
    sra	$a3,$a7,0x2
    beqz	$a3,.L0f130178
    move	$t0,$a0
    move	$a5,$t0
    addiu	$a5,$a5,-3600
.L0f130168:
    slti	$a4,$a5,901
    beqzl	$a4,.L0f130168
    addiu	$a5,$a5,-3600
    move	$a0,$a5
.L0f130178:
    addiu	$a5,$a6,-1
    div	$zero,$a5,$t1
    teq	$t1,$zero,0x7
    mflo	$a5
    nop
    nop
.L0f130190:
    andi	$v0,$a5,0x1
    beqz	$v0,.L0f1301f4
    # Line 42
    sll	$a6,$a0,0x1e
    subu	$a6,$a6,$a0
    lw	$a7,-32628($at)
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a7
    addiu	$a6,$a6,3600
.L0f1301b0:
    # Line 44
    beqz	$a1,.L0f1301c8
    andi	$v0,$a5,0x2
    beqz	$v0,.L0f13020c
    lwc1	$f4,0($a6)
    # Line 48
    neg.s	$f0,$f4
    swc1	$f0,0($a1)
.L0f1301c8:
    # Line 50
    beqz	$a2,.L0f1301ec
    addu	$v1,$a7,$a7
    subu	$v1,$v1,$a6
    addiu	$a3,$a5,1
    andi	$a3,$a3,0x2
    beqz	$a3,.L0f130204
    lwc1	$f4,3600($v1)
    # Line 56
    neg.s	$f1,$f4
    swc1	$f1,0($a2)
.L0f1301ec:
    # Line 60
    jr	$ra
    nop
.L0f1301f4:
    # Line 42
    lw	$a7,-32628($at)
    # Line 44
    sll	$a6,$a0,0x2
    b	.L0f1301b0
    addu	$a6,$a6,$a7
.L0f130204:
    # Line 60
    jr	$ra
    # Line 58
    swc1	$f4,0($a2)
.L0f13020c:
    b	.L0f1301c8
    # Line 50
    swc1	$f4,0($a1)
.end gl_g_gl_sincos

