# Source: ../igloo/gl_misc.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/gl_misc.c -o gl_misc.T
# Total Functions: 1

.text

# Function: gl_g_gl_misc
# Declared: Line 10 (Source lines: 17-80)
# Address: 0x0f0d60c0 - 0x0f0d6164 (Size: 164 bytes, Frame: 192)
.globl gl_g_gl_misc
.ent gl_g_gl_misc
gl_g_gl_misc:
    # Line 17
    addiu	$sp,$sp,-64
    # Line 18
    li	$v0,-1
    # Line 17
    lui	$v1,0xfff6
    addiu	$v1,$v1,-11896
    # Line 18
    beqz	$a4,.L0f0d611c
    # Line 17
    addu	$at,$t9,$v1
    # Line 18
    sltiu	$a1,$a3,4
    bnez	$a1,.L0f0d611c
    # Line 40
    lw	$a3,-23296($at)
    # Line 44
    li	$a1,0x8001
    # Line 40
    lw	$a3,0($a3)
    # Line 44
    li	$a5,0x8000
    beq	$a0,$a5,.L0f0d6124
    # Line 40
    lw	$a3,224($a3)
    # Line 44
    li	$a5,0x8002
    beq	$a0,$a5,.L0f0d613c
    li	$v1,0x8003
    beql	$a0,$v1,.L0f0d614c
    # Line 55
    lw	$v1,144($a3)
    # Line 44
    beql	$a0,$a1,.L0f0d6158
    # Line 59
    lw	$a1,136($a3)
.L0f0d6114:
    # Line 65
    beqz	$v0,.L0f0d6134
    # Line 71
    lw	$a5,0($sp)
.L0f0d611c:
    # Line 80
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d6124:
    # Line 47
    lw	$a2,8($a3)
    # Line 48
    move	$v0,$zero
    # Line 49
    b	.L0f0d6114
    # Line 47
    sw	$a2,0($sp)
.L0f0d6134:
    b	.L0f0d611c
    # Line 71
    sw	$a5,0($a4)
.L0f0d613c:
    # Line 51
    lw	$v0,140($a3)
    sw	$v0,0($sp)
    # Line 53
    b	.L0f0d6114
    # Line 52
    move	$v0,$zero
.L0f0d614c:
    # Line 56
    move	$v0,$zero
    # Line 57
    b	.L0f0d6114
    # Line 55
    sw	$v1,0($sp)
.L0f0d6158:
    # Line 60
    move	$v0,$zero
    b	.L0f0d6114
    # Line 59
    sw	$a1,0($sp)
.end gl_g_gl_misc

