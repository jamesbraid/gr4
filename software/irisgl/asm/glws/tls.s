# Source: ../igloo/glws/tls.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/tls.c -o tls.T
# Total Functions: 2

.text

# Function: __iglooTlsInit
# Declared: Line 15 (Source lines: 16-115)
# Address: 0x0f123ed0 - 0x0f123f88 (Size: 184 bytes, Frame: 32)
.globl __iglooTlsInit
.ent __iglooTlsInit
__iglooTlsInit:
    # Line 16
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 19
    lw	$a1,4096($zero)
    # Line 20
    lui	$a3,0x20
    ori	$a3,$a3,0xe00
    lw	$a3,0($a3)
    # Line 16
    lui	$at,0xfff1
    addiu	$at,$at,-3208
    # Line 20
    beq	$a1,$a3,.L0f123f50
    # Line 16
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 34
    la	$at,gl_wstatep
    lw	$at,0($at)
    beqz	$a1,.L0f123f34
    sw	$at,4104($zero)
    # Line 46
    la	$t9,prctl
    sd	$a3,8($sp)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,13
    ld	$a3,8($sp)
    # Line 57
    li	$v1,-1
    beq	$v0,$v1,.L0f123f78
    ld	$ra,16($sp)
    andi	$a0,$v0,0x2
    beqz	$a0,.L0f123f78
.L0f123f34:
    # Line 87
    la	$a2,gl_inMoveDraw
    # Line 81
    sw	$zero,4100($zero)
    # Line 80
    sw	$a3,4096($zero)
    # Line 87
    sw	$zero,0($a2)
.L0f123f44:
    ld	$gp,0($sp)
    # Line 115
    jr	$ra
    addiu	$sp,$sp,32
.L0f123f50:
    # Line 93
    lw	$v0,4100($zero)
    # Line 110
    la	$a2,gl_inMoveDraw
    # Line 93
    beqz	$v0,.L0f123f44
    # Line 108
    la	$a0,gl_inMoveDraw
    # Line 93
    lw	$at,96($v0)
    andi	$at,$at,0x1
    beqz	$at,.L0f123f80
    # Line 108
    li	$v1,1
    b	.L0f123f44
    sw	$v1,0($a0)
.L0f123f78:
    b	.L0f123f34
    # Line 59
    sw	$zero,4108($zero)
.L0f123f80:
    b	.L0f123f44
    # Line 110
    sw	$zero,0($a2)
.end __iglooTlsInit

# Function: __iglooTlsIsInitialized
# Declared: Line 117 (Source lines: 118-133)
# Address: 0x0f123f88 - 0x0f123fb0 (Size: 40 bytes, Frame: 0)
.globl __iglooTlsIsInitialized
.ent __iglooTlsIsInitialized
__iglooTlsIsInitialized:
    # Line 118
    lw	$v0,4096($zero)
    lui	$at,0x20
    ori	$at,$at,0xe00
    lw	$at,0($at)
    bne	$at,$v0,.L0f123fa8
    # Line 128
    move	$v0,$zero
    # Line 133
    jr	$ra
    # Line 123
    li	$v0,1
.L0f123fa8:
    # Line 133
    jr	$ra
    nop
.end __iglooTlsIsInitialized

