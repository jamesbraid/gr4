# Source: ../igloo/texture/tevdef.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/tevdef.c -o tevdef.T
# Total Functions: 3

.text

# Function: gl_g_tevdef
# Declared: Line 35 (Source lines: 36-62)
# Address: 0x0f1191c8 - 0x0f1192f0 (Size: 296 bytes, Frame: 208)
.globl gl_g_tevdef
.ent gl_g_tevdef
gl_g_tevdef:
    # Line 36
    move	$v0,$a2
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$at,0xfff2
    addiu	$at,$at,-24448
    beqz	$a0,.L0f1192c4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 43
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lw	$v1,11708($v1)
    lw	$v1,20($v1)
    sd	$ra,32($sp)
    sd	$v0,0($sp)
    beq	$v1,$s0,.L0f11926c
    sd	$a1,8($sp)
    # Line 54
    la	$t9,gl_remove
    sd	$s1,40($sp)
    # Line 52
    la	$a0,gl_tevtab
    # Line 54
    jalr	$t9
    move	$a1,$s0
    beqz	$v0,.L0f1192a8
    move	$s1,$v0
.L0f119228:
    la	$s0,gl_tevtab
    # Line 59
    la	$t9,sub_0f120000
    move	$a0,$s1
    ld	$a1,8($sp)
    addiu	$t9,$t9,-27812
    bal gl_g_tevdef
    ld	$a2,0($sp)
    # Line 60
    la	$t9,gl_insert
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$ra,32($sp)
    ld	$s1,40($sp)
.L0f11925c:
    ld	$gp,16($sp)
    # Line 62
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f11926c:
    # Line 50
    la	$t9,gl_find
    move	$a1,$s0
    jalr	$t9
    la	$a0,gl_tevtab
    # Line 51
    la	$t9,sub_0f120000
    # Line 50
    move	$a0,$v0
    # Line 51
    ld	$a1,8($sp)
    addiu	$t9,$t9,-27812
    bal gl_g_tevdef
    ld	$a2,0($sp)
    # Line 52
    la	$t9,gl_dotexturing
    bal gl_dotexturing
    nop
    b	.L0f11925c
    ld	$ra,32($sp)
.L0f1192a8:
    # Line 56
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-27920
    bal gl_g_tevdef
    nop
    move	$s1,$v0
    b	.L0f119228
    # Line 57
    sw	$s0,4($v0)
.L0f1192c4:
    # Line 42
    lw	$a2,-14412($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,32($sp)
    jalr	$t9
    li	$a0,55
    # Line 43
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_tevdef

# Function: gl_newtev
# Declared: Line 64 (Source lines: 65-78)
# Address: 0x0f1192f0 - 0x0f11935c (Size: 108 bytes, Frame: 16)
.ent gl_newtev
gl_newtev:
    # Line 68
    lw	$a1,-14412($gp)
    li	$a0,36
    la	$t9,gl_malloc
    # Line 65
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 68
    jalr	$t9
    sd	$s8,8($sp)
    move	$s8,$v0
    beqz	$v0,.L0f119348
    ld	$ra,0($sp)
.L0f119318:
    # Line 76
    sw	$zero,32($s8)
    # Line 78
    move	$v0,$s8
    # Line 72
    lwc1	$f0,_lit_3f800000
    # Line 71
    li	$at,257
    sw	$at,12($s8)
    # Line 75
    swc1	$f0,28($s8)
    # Line 74
    swc1	$f0,24($s8)
    # Line 73
    swc1	$f0,20($s8)
    # Line 72
    swc1	$f0,16($s8)
    # Line 78
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f119348:
    # Line 70
    la	$t9,exit
    jalr	$t9
    li	$a0,1
    b	.L0f119318
    ld	$ra,0($sp)
.end gl_newtev

# Function: gl_tevdef
# Declared: Line 81 (Source lines: 82-131)
# Address: 0x0f11935c - 0x0f1194a4 (Size: 328 bytes, Frame: 48)
.ent gl_tevdef
gl_tevdef:
    # Line 87
    li	$a5,259
    li	$a6,0x8062
    li	$t2,768
    # Line 82
    beqz	$a2,.L0f11943c
    addiu	$sp,$sp,-48
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    beqz	$at,.L0f11943c
    # Line 87
    li	$a7,260
    li	$t0,261
    li	$t1,258
    li	$a4,257
    b	.L0f1193c4
    # Line 88
    lwc1	$f2,0($a2)
.L0f11939c:
    # Line 102
    sw	$a7,12($a0)
.L0f1193a0:
    # Line 129
    beqz	$a2,.L0f11943c
    nop
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    beqz	$v0,.L0f11943c
    nop
    # Line 88
    lwc1	$f2,0($a2)
.L0f1193c4:
    trunc.w.s	$f2,$f2
    mfc1	$a3,$f2
    nop
    slti	$v1,$a3,260
    bnez	$v1,.L0f119408
    addiu	$a2,$a2,4
    slti	$a1,$a3,261
    bnez	$a1,.L0f11939c
    slti	$at,$a3,512
    bnez	$at,.L0f119444
    slti	$v0,$a3,513
    bnezl	$v0,.L0f119480
    # Line 115
    lwc1	$f2,0($a2)
    # Line 88
    bne	$a3,$t2,.L0f11945c
    # Line 123
    addiu	$a2,$a2,4
    # Line 125
    b	.L0f1193a0
    nop
.L0f119408:
    # Line 88
    slti	$v1,$a3,258
    bnez	$v1,.L0f11942c
    slti	$a1,$a3,259
    bnez	$a1,.L0f119454
    nop
    bnel	$a3,$a5,.L0f119460
    # Line 127
    lw	$a2,-14412($gp)
    # Line 113
    b	.L0f1193a0
    # Line 112
    sw	$a5,12($a0)
.L0f11942c:
    # Line 88
    bnel	$a3,$a4,.L0f119460
    # Line 127
    lw	$a2,-14412($gp)
    # Line 110
    b	.L0f1193a0
    # Line 109
    sw	$a4,12($a0)
.L0f11943c:
    # Line 131
    jr	$ra
    addiu	$sp,$sp,48
.L0f119444:
    # Line 88
    bnel	$a3,$t0,.L0f119460
    # Line 127
    lw	$a2,-14412($gp)
    # Line 94
    b	.L0f1193a0
    # Line 90
    sw	$a6,12($a0)
.L0f119454:
    # Line 107
    b	.L0f1193a0
    # Line 106
    sw	$t1,12($a0)
.L0f11945c:
    # Line 127
    lw	$a2,-14412($gp)
.L0f119460:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,22
    ld	$ra,0($sp)
    # Line 128
    jr	$ra
    addiu	$sp,$sp,48
.L0f119480:
    # Line 115
    swc1	$f2,16($a0)
    # Line 116
    lwc1	$f1,4($a2)
    swc1	$f1,20($a0)
    # Line 117
    lwc1	$f0,8($a2)
    swc1	$f0,24($a0)
    # Line 118
    lwc1	$f3,12($a2)
    addiu	$a2,$a2,16
    # Line 121
    b	.L0f1193a0
    # Line 118
    swc1	$f3,28($a0)
.end gl_tevdef

.rdata
_lit_3f800000:
    .word 0x3f800000

