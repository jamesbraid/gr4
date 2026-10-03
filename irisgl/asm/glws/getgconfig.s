# Source: ../igloo/glws/getgconfig.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/getgconfig.c -o getgconfig.T
# Total Functions: 1

.text

# Function: gl_g_getgconfig
# Declared: Line 17 (Source lines: 18-163)
# Address: 0x0f0bf878 - 0x0f0bfa84 (Size: 524 bytes, Frame: 192)
.globl gl_g_getgconfig
.ent gl_g_getgconfig
gl_g_getgconfig:
    # Line 18
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,14800 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 23
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$zero,24($sp)
    bnez	$at,.L0f0bf8b0
    sd	$a0,16($sp)
    # Line 27
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0bf8b0:
    # Line 30
    la	$t9,__iglooGetVisualInfo
    sd	$ra,40($sp)
    jalr	$t9
    nop
    ld	$a3,16($sp)
    beqz	$v0,.L0f0bf918
    ld	$ra,40($sp)
    # Line 38
    sltiu	$v1,$a3,17
    # la	at,sub_0f020000
    lw	$a4,4100($zero)
    sll	$a3,$a3,0x2
    la	$at,jtbl_0f022f40
    lw	$a4,20($a4)
    addu	$a3,$a3,$at
    beqz	$v1,.L0f0bf918
    lbu	$a4,19($a4)
    lw	$at,0($a3)
    jr	$at
    # Line 99
    la	$t9,__iglooCalcDepthExtrema
.L0f0bf8fc:
    addiu	$a2,$sp,12
    addiu	$a1,$sp,8
    jalr	$t9
    lw	$a0,48($v0)
    # Line 100
    lw	$v1,12($sp)
    ld	$ra,40($sp)
    sd	$v1,24($sp)
.L0f0bf918:
    ld	$v0,24($sp)
.L0f0bf91c:
    ld	$gp,32($sp)
    # Line 163
    jr	$ra
    addiu	$sp,$sp,64
.L0f0bf928:
    # Line 43
    bnezl	$a4,.L0f0bf91c
    ld	$v0,24($sp)
    # Line 45
    lw	$a1,12($v0)
    lw	$a2,8($v0)
    blez	$a1,.L0f0bf918
    sd	$a2,24($sp)
    la	$at,__iglooMixedModel
    lw	$at,0($at)
    bnez	$at,.L0f0bf91c
    ld	$v0,24($sp)
    # Line 50
    la	$a0,__iglooSoftPupShift
    lw	$a0,0($a0)
    beqz	$a0,.L0f0bf918
    # Line 52
    move	$a1,$a0
    b	.L0f0bf918
    sd	$a0,24($sp)
.L0f0bf968:
    # Line 57
    beqzl	$a4,.L0f0bf91c
    ld	$v0,24($sp)
    # Line 59
    lw	$a2,32($v0)
    b	.L0f0bf918
    sd	$a2,24($sp)
.L0f0bf97c:
    # Line 64
    beqzl	$a4,.L0f0bf91c
    ld	$v0,24($sp)
    # Line 66
    lw	$at,36($v0)
    b	.L0f0bf918
    sd	$at,24($sp)
.L0f0bf990:
    # Line 71
    beqzl	$a4,.L0f0bf91c
    ld	$v0,24($sp)
    # Line 73
    lw	$v1,40($v0)
    b	.L0f0bf918
    sd	$v1,24($sp)
.L0f0bf9a4:
    # Line 78
    beqzl	$a4,.L0f0bf91c
    ld	$v0,24($sp)
    # Line 80
    lw	$a1,44($v0)
    b	.L0f0bf918
    sd	$a1,24($sp)
.L0f0bf9b8:
    # Line 85
    lw	$a2,48($v0)
    # Line 87
    b	.L0f0bf918
    sd	$a2,24($sp)
.L0f0bf9c4:
    # Line 91
    la	$t9,__iglooCalcDepthExtrema
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,48($v0)
    # Line 92
    lw	$ra,0($sp)
    sd	$ra,24($sp)
    # Line 95
    b	.L0f0bf918
    ld	$ra,40($sp)
.L0f0bf9e8:
    # Line 105
    lw	$at,52($v0)
    # Line 107
    b	.L0f0bf918
    sd	$at,24($sp)
.L0f0bf9f4:
    # Line 111
    lw	$v1,56($v0)
    # Line 117
    b	.L0f0bf918
    sd	$v1,24($sp)
.L0f0bfa00:
    # Line 119
    lw	$a1,76($v0)
    # Line 121
    b	.L0f0bf918
    sd	$a1,24($sp)
.L0f0bfa0c:
    # Line 123
    lw	$a2,76($v0)
    blezl	$a2,.L0f0bf91c
    ld	$v0,24($sp)
    # Line 125
    lw	$at,48($v0)
    b	.L0f0bf918
    sd	$at,24($sp)
.L0f0bfa24:
    # Line 131
    b	.L0f0bf918
    sd	$zero,24($sp)
.L0f0bfa2c:
    # Line 133
    lw	$v1,76($v0)
    blez	$v1,.L0f0bf918
    # Line 135
    la	$t9,__GLgetgconfig
    jalr	$t9
    li	$a0,7
    sd	$v0,24($sp)
    b	.L0f0bf918
    ld	$ra,40($sp)
.L0f0bfa4c:
    # Line 139
    lw	$a1,76($v0)
    blez	$a1,.L0f0bf918
    # Line 141
    la	$t9,__GLgetgconfig
    jalr	$t9
    li	$a0,8
    sd	$v0,24($sp)
    b	.L0f0bf918
    ld	$ra,40($sp)
.L0f0bfa6c:
    # Line 145
    lw	$a2,24($v0)
    # Line 146
    b	.L0f0bf918
    sd	$a2,24($sp)
.L0f0bfa78:
    # Line 148
    lw	$at,20($v0)
    b	.L0f0bf918
    sd	$at,24($sp)
.end gl_g_getgconfig

.late_rodata
jtbl_0f022f40:
    .word .L0f0bf928
    .word .L0f0bf968
    .word .L0f0bf97c
    .word .L0f0bf990
    .word .L0f0bf9a4
    .word .L0f0bf9b8
    .word .L0f0bf9c4
    .word .L0f0bf8fc
    .word .L0f0bf9e8
    .word .L0f0bf9f4
    .word .L0f0bfa00
    .word .L0f0bfa0c
    .word .L0f0bfa24
    .word .L0f0bfa2c
    .word .L0f0bfa4c
    .word .L0f0bfa6c
    .word .L0f0bfa78

