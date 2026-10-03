# Source: ../igloo/glws/mex_constrain.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/mex_constrain.c -o mex_constrain.T
# Total Functions: 12

.text

# Function: _GLhintinit
# Declared: Line 22 (Source lines: 23-32)
# Address: 0x0f0e3b38 - 0x0f0e3bb4 (Size: 124 bytes, Frame: 0)
.globl _GLhintinit
.ent _GLhintinit
_GLhintinit:
    # Line 23
    lui	$v0,0xfff5
    addiu	$v0,$v0,-2288
    # Line 28
    bnez	$a0,.L0f0e3b50
    # Line 23
    addu	$at,$t9,$v0
    # Line 28
    lw	$v1,-20724($at)
    bnez	$v1,.L0f0e3bac
.L0f0e3b50:
    # Line 30
    li	$a1,1
    # Line 29
    lw	$a0,-32680($at)
    # Line 30
    sw	$a1,-20724($at)
    # Line 29
    lw	$a1,-32456($at)
    addiu	$a0,$a0,14416
    lhu	$v1,60($a0)
    sh	$v1,60($a1)
    ld	$v1,40($a0)
    lw	$v0,56($a0)
    sd	$v1,40($a1)
    ld	$a2,48($a0)
    sw	$v0,56($a1)
    ld	$v0,32($a0)
    sd	$a2,48($a1)
    ld	$a2,24($a0)
    sd	$v0,32($a1)
    ld	$v0,16($a0)
    sd	$a2,24($a1)
    ld	$a2,8($a0)
    ld	$a0,0($a0)
    sd	$v0,16($a1)
    sd	$a2,8($a1)
    sd	$a0,0($a1)
.L0f0e3bac:
    # Line 32
    jr	$ra
    nop
.end _GLhintinit

# Function: gl_g_minsize
# Declared: Line 40 (Source lines: 41-45)
# Address: 0x0f0e3bb4 - 0x0f0e3c08 (Size: 84 bytes, Frame: 48)
.globl gl_g_minsize
.ent gl_g_minsize
gl_g_minsize:
    # Line 41
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-2412 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 42
    la	$t9,_GLhintinit
    move	$a0,$zero
    sd	$ra,0($sp)
    bal _GLhintinit
    sd	$a1,24($sp)
    # Line 44
    ld	$v1,24($sp)
    # Line 43
    la	$v0,initportreq
    ld	$gp,16($sp)
    # Line 45
    ld	$ra,0($sp)
    # Line 44
    sh	$v1,2($v0)
    # Line 43
    sh	$s8,0($v0)
    # Line 45
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_minsize

# Function: gl_g_maxsize
# Declared: Line 53 (Source lines: 54-58)
# Address: 0x0f0e3c08 - 0x0f0e3c5c (Size: 84 bytes, Frame: 48)
.globl gl_g_maxsize
.ent gl_g_maxsize
gl_g_maxsize:
    # Line 54
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-2496 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 55
    la	$t9,_GLhintinit
    move	$a0,$zero
    sd	$ra,0($sp)
    bal _GLhintinit
    sd	$a1,24($sp)
    # Line 57
    ld	$v1,24($sp)
    # Line 56
    la	$v0,initportreq
    ld	$gp,16($sp)
    # Line 58
    ld	$ra,0($sp)
    # Line 57
    sh	$v1,6($v0)
    # Line 56
    sh	$s8,4($v0)
    # Line 58
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_maxsize

# Function: gl_g_keepaspect
# Declared: Line 66 (Source lines: 67-72)
# Address: 0x0f0e3c5c - 0x0f0e3cb8 (Size: 92 bytes, Frame: 48)
.globl gl_g_keepaspect
.ent gl_g_keepaspect
gl_g_keepaspect:
    # Line 67
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-2580 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 68
    la	$t9,_GLhintinit
    move	$a0,$zero
    sd	$ra,0($sp)
    bal _GLhintinit
    sd	$a1,24($sp)
    # Line 69
    la	$v1,initportreq
    ld	$gp,16($sp)
    # Line 71
    ld	$a0,24($sp)
    # Line 69
    li	$v0,1
    # Line 72
    ld	$ra,0($sp)
    # Line 71
    sh	$a0,12($v1)
    # Line 69
    sh	$v0,8($v1)
    # Line 70
    sh	$s8,10($v1)
    # Line 72
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_keepaspect

# Function: gl_g_prefsize
# Declared: Line 80 (Source lines: 81-86)
# Address: 0x0f0e3cb8 - 0x0f0e3d14 (Size: 92 bytes, Frame: 48)
.globl gl_g_prefsize
.ent gl_g_prefsize
gl_g_prefsize:
    # Line 81
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-2672 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 82
    la	$t9,_GLhintinit
    move	$a0,$zero
    sd	$ra,0($sp)
    bal _GLhintinit
    sd	$a1,24($sp)
    # Line 83
    la	$v1,initportreq
    ld	$gp,16($sp)
    # Line 85
    ld	$a0,24($sp)
    # Line 83
    li	$v0,1
    # Line 86
    ld	$ra,0($sp)
    # Line 85
    sh	$a0,18($v1)
    # Line 83
    sh	$v0,14($v1)
    # Line 84
    sh	$s8,16($v1)
    # Line 86
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_prefsize

# Function: gl_g_stepunit
# Declared: Line 93 (Source lines: 94-98)
# Address: 0x0f0e3d14 - 0x0f0e3d68 (Size: 84 bytes, Frame: 48)
.globl gl_g_stepunit
.ent gl_g_stepunit
gl_g_stepunit:
    # Line 94
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-2764 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 95
    la	$t9,_GLhintinit
    move	$a0,$zero
    sd	$ra,0($sp)
    bal _GLhintinit
    sd	$a1,24($sp)
    # Line 97
    ld	$v1,24($sp)
    # Line 96
    la	$v0,initportreq
    ld	$gp,16($sp)
    # Line 98
    ld	$ra,0($sp)
    # Line 97
    sh	$v1,28($v0)
    # Line 96
    sh	$s8,26($v0)
    # Line 98
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_stepunit

# Function: gl_g_fudge
# Declared: Line 106 (Source lines: 107-111)
# Address: 0x0f0e3d68 - 0x0f0e3dbc (Size: 84 bytes, Frame: 48)
.globl gl_g_fudge
.ent gl_g_fudge
gl_g_fudge:
    # Line 107
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-2848 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 108
    la	$t9,_GLhintinit
    move	$a0,$zero
    sd	$ra,0($sp)
    bal _GLhintinit
    sd	$a1,24($sp)
    # Line 110
    ld	$v1,24($sp)
    # Line 109
    la	$v0,initportreq
    ld	$gp,16($sp)
    # Line 111
    ld	$ra,0($sp)
    # Line 110
    sh	$v1,32($v0)
    # Line 109
    sh	$s8,30($v0)
    # Line 111
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_fudge

# Function: gl_g_prefposition
# Declared: Line 119 (Source lines: 120-128)
# Address: 0x0f0e3dbc - 0x0f0e3eac (Size: 240 bytes, Frame: 208)
.globl gl_g_prefposition
.ent gl_g_prefposition
gl_g_prefposition:
    # Line 120
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    move	$s2,$a0
    # Line 121
    move	$a0,$zero
    sd	$s4,16($sp)
    # Line 120
    move	$s4,$a3
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$gp,40($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-2932 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 121
    la	$t9,_GLhintinit
    sd	$s1,32($sp)
    sd	$ra,8($sp)
    bal _GLhintinit
    # Line 120
    move	$s1,$a1
    ld	$ra,8($sp)
    # Line 123
    slt	$v1,$s0,$s4
    # Line 122
    li	$a3,1
    la	$a0,initportreq
    slt	$v0,$s2,$s1
    beqz	$v0,.L0f0e3e28
    sh	$a3,20($a0)
    # Line 123
    move	$a1,$s2
    b	.L0f0e3e2c
    nop
.L0f0e3e28:
    move	$a1,$s1
.L0f0e3e2c:
    # Line 125
    subu	$a2,$s1,$s2
    # Line 123
    beqz	$v1,.L0f0e3e40
    sh	$a1,22($a0)
    # Line 124
    b	.L0f0e3e44
    move	$a1,$s0
.L0f0e3e40:
    move	$a1,$s4
.L0f0e3e44:
    # Line 125
    sh	$a3,14($a0)
    bltz	$a2,.L0f0e3e8c
    # Line 124
    sh	$a1,24($a0)
    # Line 126
    move	$a1,$a2
    ld	$s1,32($sp)
    ld	$s2,0($sp)
.L0f0e3e5c:
    addiu	$a4,$a1,1
    subu	$a2,$s4,$s0
    bltz	$a2,.L0f0e3e9c
    sh	$a4,16($a0)
    # Line 127
    move	$a1,$a2
    ld	$s0,24($sp)
    ld	$s4,16($sp)
.L0f0e3e78:
    ld	$gp,40($sp)
    # Line 128
    addiu	$sp,$sp,80
    # Line 127
    addiu	$at,$a1,1
    # Line 128
    jr	$ra
    # Line 127
    sh	$at,18($a0)
.L0f0e3e8c:
    # Line 126
    subu	$a1,$s2,$s1
    ld	$s1,32($sp)
    b	.L0f0e3e5c
    ld	$s2,0($sp)
.L0f0e3e9c:
    # Line 127
    subu	$a1,$s0,$s4
    ld	$s0,24($sp)
    b	.L0f0e3e78
    ld	$s4,16($sp)
.end gl_g_prefposition

# Function: gl_g_noport
# Declared: Line 136 (Source lines: 137-140)
# Address: 0x0f0e3eac - 0x0f0e3eec (Size: 64 bytes, Frame: 16)
.globl gl_g_noport
.ent gl_g_noport
gl_g_noport:
    # Line 137
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-3172 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 138
    la	$t9,_GLhintinit
    sd	$ra,0($sp)
    bal _GLhintinit
    move	$a0,$zero
    # Line 139
    la	$v1,initportreq
    ld	$gp,8($sp)
    # Line 140
    ld	$ra,0($sp)
    addiu	$sp,$sp,16
    # Line 139
    li	$v0,1
    # Line 140
    jr	$ra
    # Line 139
    sh	$v0,60($v1)
.end gl_g_noport

# Function: gl_g_imakebackground
# Declared: Line 148 (Source lines: 149-152)
# Address: 0x0f0e3eec - 0x0f0e3f2c (Size: 64 bytes, Frame: 16)
.globl gl_g_imakebackground
.ent gl_g_imakebackground
gl_g_imakebackground:
    # Line 149
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-3236 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 150
    la	$t9,_GLhintinit
    sd	$ra,0($sp)
    bal _GLhintinit
    move	$a0,$zero
    # Line 151
    la	$v1,initportreq
    ld	$gp,8($sp)
    # Line 152
    ld	$ra,0($sp)
    addiu	$sp,$sp,16
    # Line 151
    li	$v0,1
    # Line 152
    jr	$ra
    # Line 151
    sh	$v0,34($v1)
.end gl_g_imakebackground

# Function: gl_g_noborder
# Declared: Line 159 (Source lines: 160-163)
# Address: 0x0f0e3f2c - 0x0f0e3f6c (Size: 64 bytes, Frame: 16)
.globl gl_g_noborder
.ent gl_g_noborder
gl_g_noborder:
    # Line 160
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-3300 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 161
    la	$t9,_GLhintinit
    sd	$ra,0($sp)
    bal _GLhintinit
    move	$a0,$zero
    # Line 162
    la	$v1,initportreq
    ld	$gp,8($sp)
    # Line 163
    ld	$ra,0($sp)
    addiu	$sp,$sp,16
    # Line 162
    li	$v0,1
    # Line 163
    jr	$ra
    # Line 162
    sh	$v0,52($v1)
.end gl_g_noborder

# Function: gl_g_iconsize
# Declared: Line 170 (Source lines: 171-176)
# Address: 0x0f0e3f6c - 0x0f0e3fc8 (Size: 92 bytes, Frame: 48)
.globl gl_g_iconsize
.ent gl_g_iconsize
gl_g_iconsize:
    # Line 171
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-3364 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 172
    la	$t9,_GLhintinit
    move	$a0,$zero
    sd	$ra,0($sp)
    bal _GLhintinit
    sd	$a1,24($sp)
    # Line 173
    la	$v1,initportreq
    ld	$gp,16($sp)
    # Line 175
    ld	$a0,24($sp)
    # Line 173
    li	$v0,1
    # Line 176
    ld	$ra,0($sp)
    # Line 175
    sh	$a0,58($v1)
    # Line 173
    sh	$v0,54($v1)
    # Line 174
    sh	$s8,56($v1)
    # Line 176
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_iconsize

