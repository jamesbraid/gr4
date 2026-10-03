# Source: ../igloo/glws/misc.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/misc.c -o misc.T
# Total Functions: 6

.text

# Function: gl_init
# Declared: Line 11 (Source lines: 12-21)
# Address: 0x0f0eec30 - 0x0f0eec94 (Size: 100 bytes, Frame: 16)
.globl gl_init
.ent gl_init
gl_init:
    # Line 12
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,17944 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_scrntab
    lw	$at,0($at)
    beqz	$at,.L0f0eec80
    sd	$ra,8($sp)
    # Line 16
    la	$t9,gl_devdepattach
.L0f0eec58:
    la	$a0,gl_selected_scrn
    bal gl_devdepattach
    lw	$a0,0($a0)
    # Line 19
    la	$t9,gl_initobjectstuff
    bal gl_initobjectstuff
    nop
    # Line 21
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0eec80:
    # Line 14
    la	$t9,gl_init_scrntab
    bal gl_init_scrntab
    nop
    b	.L0f0eec58
    # Line 16
    la	$t9,gl_devdepattach
.end gl_init

# Function: __iglooIsGlxScreen
# Declared: Line 28 (Source lines: 29-49)
# Address: 0x0f0eec94 - 0x0f0eece4 (Size: 80 bytes, Frame: 0)
.globl __iglooIsGlxScreen
.ent __iglooIsGlxScreen
__iglooIsGlxScreen:
    # Line 29
    lui	$v0,0xfff4
    addiu	$v0,$v0,17844
    addu	$at,$t9,$v0
    # Line 30
    bltz	$a0,.L0f0eecdc
    move	$v0,$zero
    lw	$v1,-32372($at)
    lw	$v1,0($v1)
    slt	$v1,$a0,$v1
    beqz	$v1,.L0f0eecdc
    # Line 34
    lw	$a4,-32376($at)
    lw	$a4,0($a4)
    beqz	$a4,.L0f0eecdc
    nop
    # Line 44
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a4
    lw	$v0,36($v0)
.L0f0eecdc:
    # Line 49
    jr	$ra
    nop
.end __iglooIsGlxScreen

# Function: isGlxScreen
# Declared: Line 56 (Source lines: 57-76)
# Address: 0x0f0eece4 - 0x0f0eed28 (Size: 68 bytes, Frame: 32)
.ent isGlxScreen
isGlxScreen:
    # Line 57
    addiu	$sp,$sp,-32
    # Line 66
    la	$t9,glXChooseVisual
    la	$a2,sub_0f030000
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a2,$a2,-26280
    bnez	$v0,.L0f0eed10
    ld	$ra,0($sp)
    # Line 69
    move	$v0,$zero
.L0f0eed08:
    # Line 76
    jr	$ra
    addiu	$sp,$sp,32
.L0f0eed10:
    # Line 73
    la	$t9,XFree
    jalr	$t9
    move	$a0,$v0
    # Line 74
    li	$v0,1
    b	.L0f0eed08
    ld	$ra,0($sp)
.end isGlxScreen

# Function: gl_init_scrntab
# Declared: Line 84 (Source lines: 85-138)
# Address: 0x0f0eed28 - 0x0f0eeedc (Size: 436 bytes, Frame: 224)
.globl gl_init_scrntab
.ent gl_init_scrntab
gl_init_scrntab:
    # Line 85
    addiu	$sp,$sp,-96
    sd	$s5,40($sp)
    sd	$s6,24($sp)
    # Line 93
    addiu	$a0,$sp,0
    sd	$gp,16($sp)
    # Line 85
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,17696 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 93
    la	$t9,__iglooEarlyDisplayAccess
    # Line 85
    la	$at,gl_standalone
    sd	$ra,8($sp)
    # Line 93
    jalr	$t9
    # Line 89
    sw	$zero,0($at)
    sd	$s7,48($sp)
    sd	$s0,32($sp)
    # Line 97
    lw	$a1,0($sp)
    la	$s6,gl_nscrns
    la	$s5,gl_selected_scrn
    lw	$a1,136($a1)
    # Line 101
    la	$t9,__iglooCalloc
    # Line 99
    sw	$zero,0($s5)
    # Line 97
    sw	$a1,0($s6)
    # Line 101
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    jalr	$t9
    sll	$a0,$a0,0x3
    sd	$s2,80($sp)
    sd	$s3,72($sp)
    sd	$s4,64($sp)
    # Line 105
    move	$s0,$zero
    # Line 101
    la	$s7,gl_scrntab
    # Line 103
    lw	$ra,0($s5)
    # Line 105
    lw	$a2,0($s6)
    # Line 101
    sw	$v0,0($s7)
    # Line 103
    sll	$a3,$ra,0x2
    addu	$a3,$a3,$ra
    la	$ra,gl_sstatep
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$v0
    sw	$a3,0($ra)
    # Line 105
    blez	$a2,.L0f0eeec0
    ld	$ra,8($sp)
    sd	$s1,56($sp)
    move	$s3,$zero
    la	$s4,sub_0f0f0000
    move	$s2,$zero
    b	.L0f0eedf8
    addiu	$s4,$s4,-4892
.L0f0eede8:
    lw	$at,0($s6)
.L0f0eedec:
    slt	$at,$s0,$at
    beqz	$at,.L0f0eeeac
    addiu	$s3,$s3,40
.L0f0eedf8:
    # Line 109
    lw	$a4,0($s7)
    # Line 111
    sw	$s0,0($s5)
    # Line 121
    li	$v0,1
    # Line 109
    addu	$a4,$a4,$s3
    # Line 111
    beqz	$s0,.L0f0eee94
    # Line 109
    move	$s1,$a4
.L0f0eee10:
    # Line 128
    move	$t9,$s4
    move	$a1,$s0
    # Line 121
    sw	$v0,8($a4)
    # Line 127
    sb	$zero,32($s1)
    # Line 128
    bal __iglooIsGlxScreen
    lw	$a0,0($sp)
    # Line 129
    sw	$zero,8($s1)
    # Line 128
    sw	$v0,36($s1)
    # Line 131
    lw	$a6,0($sp)
    lw	$a6,140($a6)
    addu	$a6,$a6,$s2
    lw	$a6,12($a6)
    addiu	$a6,$a6,-1
    sw	$a6,0($s1)
    # Line 132
    lw	$a5,0($sp)
    # Line 105
    addiu	$s0,$s0,1
    # Line 132
    lw	$a5,140($a5)
    # Line 134
    la	$t9,getenv
    la	$a0,sub_0f020000
    # Line 132
    addu	$a5,$a5,$s2
    lw	$a5,16($a5)
    # Line 134
    addiu	$a0,$a0,17616
    # Line 105
    addiu	$s2,$s2,80
    # Line 132
    addiu	$a5,$a5,-1
    # Line 134
    jalr	$t9
    # Line 132
    sw	$a5,4($s1)
    # Line 134
    beqz	$v0,.L0f0eedec
    # Line 105
    lw	$at,0($s6)
    # Line 136
    la	$t9,atoi
    jalr	$t9
    move	$a0,$v0
    b	.L0f0eede8
    sb	$v0,33($s1)
.L0f0eee94:
    la	$at,gl_standalone
    # Line 111
    lw	$at,0($at)
    bnez	$at,.L0f0eee10
    nop
    # Line 121
    b	.L0f0eee10
    move	$v0,$zero
.L0f0eeeac:
    ld	$s1,56($sp)
    ld	$s4,64($sp)
    ld	$ra,8($sp)
    ld	$s3,72($sp)
    ld	$s2,80($sp)
.L0f0eeec0:
    ld	$gp,16($sp)
    # Line 138
    ld	$s0,32($sp)
    ld	$s5,40($sp)
    ld	$s6,24($sp)
    ld	$s7,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_init_scrntab

# Function: gl_devdepattach
# Declared: Line 144 (Source lines: 145-147)
# Address: 0x0f0eeedc - 0x0f0eef0c (Size: 48 bytes, Frame: 0)
.globl gl_devdepattach
.ent gl_devdepattach
gl_devdepattach:
    # Line 145
    lui	$v1,0xfff4
    addiu	$v1,$v1,17260
    addu	$at,$t9,$v1
    # Line 146
    lw	$v0,-32376($at)
    sll	$a1,$a0,0x2
    addu	$a0,$a1,$a0
    lw	$v0,0($v0)
    sll	$a0,$a0,0x3
    lw	$v1,-32368($at)
    addu	$v0,$v0,$a0
    # Line 147
    jr	$ra
    # Line 146
    sw	$v0,0($v1)
.end gl_devdepattach

# Function: gl_sginap
# Declared: Line 149 (Source lines: 150-151)
# Address: 0x0f0eef0c - 0x0f0eef40 (Size: 52 bytes, Frame: 32)
.globl gl_sginap
.ent gl_sginap
gl_sginap:
    # Line 150
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,17212 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 151
    la	$t9,sginap
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_sginap

