# Source: ../igloo/glws/attributil.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/attributil.c -o attributil.T
# Total Functions: 3

.text

# Function: gl_find
# Declared: Line 22 (Source lines: 27-37)
# Address: 0x0f094c2c - 0x0f094c8c (Size: 96 bytes, Frame: 0)
.globl gl_find
.ent gl_find
gl_find:
    # Line 27
    andi	$a5,$a1,0x7f
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a0
    lw	$v0,0($a5)
    beqz	$v0,.L0f094c60
    move	$a4,$v0
    lw	$at,4($v0)
.L0f094c48:
    beq	$at,$a1,.L0f094c68
    nop
    move	$a4,$v0
    lw	$v0,0($v0)
    bnezl	$v0,.L0f094c48
    lw	$at,4($v0)
.L0f094c60:
    # Line 37
    jr	$ra
    move	$v0,$zero
.L0f094c68:
    # Line 27
    beq	$v0,$a4,.L0f094c84
    nop
    # Line 30
    lw	$a0,0($v0)
    sw	$a0,0($a4)
    # Line 31
    lw	$v1,0($a5)
    sw	$v1,0($v0)
    # Line 32
    sw	$v0,0($a5)
.L0f094c84:
    # Line 34
    jr	$ra
    nop
.end gl_find

# Function: gl_insert
# Declared: Line 44 (Source lines: 48-51)
# Address: 0x0f094c8c - 0x0f094cac (Size: 32 bytes, Frame: 0)
.globl gl_insert
.ent gl_insert
gl_insert:
    # Line 48
    lw	$at,4($a1)
    andi	$at,$at,0x7f
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    # Line 49
    lw	$v0,0($at)
    sw	$v0,0($a1)
    # Line 51
    jr	$ra
    # Line 50
    sw	$a1,0($at)
.end gl_insert

# Function: gl_remove
# Declared: Line 55 (Source lines: 56-64)
# Address: 0x0f094cac - 0x0f094d18 (Size: 108 bytes, Frame: 48)
.globl gl_remove
.ent gl_remove
gl_remove:
    # Line 56
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-6756 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 59
    la	$t9,gl_find
    sd	$a1,8($sp)
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,0($sp)
    ld	$a2,8($sp)
    beqz	$v0,.L0f094d04
    # Line 62
    ld	$ra,16($sp)
    # Line 61
    andi	$a2,$a2,0x7f
    ld	$gp,24($sp)
    lw	$v1,0($v0)
    ld	$a3,0($sp)
    # Line 62
    addiu	$sp,$sp,48
    # Line 61
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    # Line 62
    jr	$ra
    # Line 61
    sw	$v1,0($a2)
.L0f094d04:
    ld	$gp,24($sp)
    # Line 64
    ld	$ra,16($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.end gl_remove

