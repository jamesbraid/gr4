# Source: ../igloo/glws/mex_devname.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/mex_devname.c -o mex_devname.T
# Total Functions: 1

.text

# Function: _GLdevname
# Declared: Line 67 (Source lines: 68-76)
# Address: 0x0f0e3fc8 - 0x0f0e406c (Size: 164 bytes, Frame: 32)
.globl _GLdevname
.ent _GLdevname
_GLdevname:
    # Line 68
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-3456 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t0,sub_0f030000
    addiu	$t0,$t0,-28640
    # Line 71
    lh	$a3,4($t0)
    # Line 68
    move	$a6,$a0
    # Line 71
    move	$a7,$zero
    slt	$at,$a0,$a3
    bnez	$at,.L0f0e4018
    move	$v0,$a3
    move	$a0,$t0
.L0f0e4000:
    beq	$v0,$a6,.L0f0e405c
    addiu	$a7,$a7,1
    lh	$v0,12($a0)
    slt	$v1,$a6,$v0
    beqz	$v1,.L0f0e4000
    addiu	$a0,$a0,8
.L0f0e4018:
    # Line 75
    addiu	$a1,$gp,-17784
    sd	$ra,8($sp)
    la	$t9,sprintf
    # Line 71
    la	$a0,sub_0f030000
    # Line 75
    sll	$a3,$a7,0x3
    addu	$a3,$a3,$t0
    lw	$a2,-8($a3)
    lh	$a3,-4($a3)
    # Line 71
    addiu	$a0,$a0,3456
    # Line 75
    jalr	$t9
    subu	$a3,$a6,$a3
    # Line 76
    ld	$ra,8($sp)
    la	$v0,sub_0f030000
    ld	$gp,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,3456
.L0f0e405c:
    # Line 73
    lw	$v0,0($a0)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end _GLdevname

