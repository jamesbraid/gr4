# Source: ../igloo/graphics/stvp.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/stvp.c -o stvp.T
# Total Functions: 6

.text

# Function: __iglooDepthRange
# Declared: Line 26 (Source lines: 27-47)
# Address: 0x0f118708 - 0x0f118768 (Size: 96 bytes, Frame: 32)
.globl __iglooDepthRange
.ent __iglooDepthRange
__iglooDepthRange:
    # Line 31
    lw	$a1,4100($zero)
    # Line 39
    ldc1	$f0,248($a1)
    # Line 27
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 39
    c.eq.d	$f0,$f12
    # Line 27
    lui	$at,0xfff2
    addiu	$at,$at,-21696
    # Line 39
    bc1f	.L0f11874c
    # Line 27
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 39
    ldc1	$f1,256($a1)
    c.eq.d	$f1,$f13
    nop
    bc1f	.L0f118750
    # Line 44
    la	$t9,glDepthRange
.L0f118740:
    ld	$gp,0($sp)
    # Line 47
    jr	$ra
    addiu	$sp,$sp,32
.L0f11874c:
    # Line 44
    la	$t9,glDepthRange
.L0f118750:
    # Line 42
    sdc1	$f13,256($a1)
    sd	$ra,8($sp)
    # Line 44
    jalr	$t9
    # Line 41
    sdc1	$f12,248($a1)
    b	.L0f118740
    ld	$ra,8($sp)
.end __iglooDepthRange

# Function: __iglooGetDepthRange
# Declared: Line 49 (Source lines: 51-60)
# Address: 0x0f118768 - 0x0f118780 (Size: 24 bytes, Frame: 0)
.globl __iglooGetDepthRange
.ent __iglooGetDepthRange
__iglooGetDepthRange:
    # Line 51
    lw	$at,4100($zero)
    # Line 56
    ldc1	$f1,248($at)
    sdc1	$f1,0($a0)
    # Line 57
    ldc1	$f0,256($at)
    # Line 60
    jr	$ra
    # Line 57
    sdc1	$f0,0($a1)
.end __iglooGetDepthRange

# Function: __iglooScissor
# Declared: Line 80 (Source lines: 81-100)
# Address: 0x0f118780 - 0x0f1187cc (Size: 76 bytes, Frame: 48)
.globl __iglooScissor
.ent __iglooScissor
__iglooScissor:
    # Line 96
    li	$v1,1
    # Line 82
    lw	$at,4100($zero)
    # Line 81
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 96
    sb	$v1,244($at)
    # Line 95
    sw	$a3,240($at)
    sd	$gp,8($sp)
    # Line 81
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-21816 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 98
    la	$t9,glScissor
    # Line 94
    sw	$a2,236($at)
    # Line 93
    sw	$a1,232($at)
    # Line 98
    jalr	$t9
    # Line 92
    sw	$a0,228($at)
    # Line 100
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooScissor

# Function: __iglooGetScissor
# Declared: Line 102 (Source lines: 103-126)
# Address: 0x0f1187cc - 0x0f118888 (Size: 188 bytes, Frame: 240)
.globl __iglooGetScissor
.ent __iglooGetScissor
__iglooGetScissor:
    # Line 103
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    # Line 104
    lw	$s0,4100($zero)
    li	$v0,1
    sd	$gp,16($sp)
    lbu	$at,244($s0)
    # Line 103
    lui	$v1,0xfff2
    addiu	$v1,$v1,-21892
    # Line 104
    beq	$at,$v0,.L0f118858
    # Line 103
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    sd	$a2,40($sp)
    sd	$a3,32($sp)
    sd	$a1,48($sp)
    # Line 112
    addiu	$a1,$sp,0
    la	$t9,glGetIntegerv
    sd	$a0,56($sp)
    sd	$ra,64($sp)
    jalr	$t9
    li	$a0,3088
    # Line 114
    lw	$a5,0($sp)
    sw	$a5,228($s0)
    # Line 115
    lw	$a3,4($sp)
    sw	$a3,232($s0)
    ld	$ra,64($sp)
    # Line 116
    lw	$a2,8($sp)
    li	$a1,1
    ld	$a3,32($sp)
    sw	$a2,236($s0)
    ld	$a2,40($sp)
    # Line 117
    lw	$a0,12($sp)
    # Line 118
    sb	$a1,244($s0)
    ld	$a1,48($sp)
    # Line 117
    sw	$a0,240($s0)
    # Line 118
    b	.L0f11885c
    ld	$a0,56($sp)
.L0f118858:
    lw	$a5,228($s0)
.L0f11885c:
    # Line 120
    sw	$a5,0($a0)
    # Line 121
    lw	$v0,232($s0)
    sw	$v0,0($a1)
    # Line 122
    lw	$at,236($s0)
    sw	$at,0($a2)
    ld	$gp,16($sp)
    # Line 123
    lw	$a4,240($s0)
    # Line 126
    ld	$s0,24($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 123
    sw	$a4,0($a3)
.end __iglooGetScissor

# Function: __iglooViewport
# Declared: Line 147 (Source lines: 148-174)
# Address: 0x0f118888 - 0x0f1188d4 (Size: 76 bytes, Frame: 48)
.globl __iglooViewport
.ent __iglooViewport
__iglooViewport:
    # Line 170
    li	$v1,1
    # Line 149
    lw	$at,4100($zero)
    # Line 148
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 170
    sb	$v1,224($at)
    # Line 169
    sw	$a3,220($at)
    sd	$gp,8($sp)
    # Line 148
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-22080 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 172
    la	$t9,glViewport
    # Line 168
    sw	$a2,216($at)
    # Line 167
    sw	$a1,212($at)
    # Line 172
    jalr	$t9
    # Line 166
    sw	$a0,208($at)
    # Line 174
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooViewport

# Function: __iglooGetViewport
# Declared: Line 176 (Source lines: 177-200)
# Address: 0x0f1188d4 - 0x0f118990 (Size: 188 bytes, Frame: 240)
.globl __iglooGetViewport
.ent __iglooGetViewport
__iglooGetViewport:
    # Line 177
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    # Line 178
    lw	$s0,4100($zero)
    li	$v0,1
    sd	$gp,16($sp)
    lbu	$at,224($s0)
    # Line 177
    lui	$v1,0xfff2
    addiu	$v1,$v1,-22156
    # Line 178
    beq	$at,$v0,.L0f118960
    # Line 177
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    sd	$a2,40($sp)
    sd	$a3,32($sp)
    sd	$a1,48($sp)
    # Line 186
    addiu	$a1,$sp,0
    la	$t9,glGetIntegerv
    sd	$a0,56($sp)
    sd	$ra,64($sp)
    jalr	$t9
    li	$a0,2978
    # Line 188
    lw	$a5,0($sp)
    sw	$a5,208($s0)
    # Line 189
    lw	$a3,4($sp)
    sw	$a3,212($s0)
    ld	$ra,64($sp)
    # Line 190
    lw	$a2,8($sp)
    li	$a1,1
    ld	$a3,32($sp)
    sw	$a2,216($s0)
    ld	$a2,40($sp)
    # Line 191
    lw	$a0,12($sp)
    # Line 192
    sb	$a1,224($s0)
    ld	$a1,48($sp)
    # Line 191
    sw	$a0,220($s0)
    # Line 192
    b	.L0f118964
    ld	$a0,56($sp)
.L0f118960:
    lw	$a5,208($s0)
.L0f118964:
    # Line 194
    sw	$a5,0($a0)
    # Line 195
    lw	$v0,212($s0)
    sw	$v0,0($a1)
    # Line 196
    lw	$at,216($s0)
    sw	$at,0($a2)
    ld	$gp,16($sp)
    # Line 197
    lw	$a4,220($s0)
    # Line 200
    ld	$s0,24($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 197
    sw	$a4,0($a3)
.end __iglooGetViewport

