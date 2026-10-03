# Source: ../igloo/xform/matstack.c
# Category: xform
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/xform/matstack.c -o matstack.T
# Total Functions: 6

.text

# Function: __iglooGetMatrixStacks
# Declared: Line 13 (Source lines: 14-31)
# Address: 0x0f0dc918 - 0x0f0dc9b8 (Size: 160 bytes, Frame: 192)
.globl __iglooGetMatrixStacks
.ent __iglooGetMatrixStacks
__iglooGetMatrixStacks:
    # Line 14
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    sd	$s8,32($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,26928 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 19
    la	$t9,__iglooGetMatrixMode
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 14
    move	$s0,$a0
    # Line 19
    move	$s8,$v0
    # Line 21
    li	$a2,2982
    # Line 19
    la	$s1,sub_0f0e0000
    # Line 21
    li	$a1,5888
    move	$a0,$s0
    # Line 19
    addiu	$s1,$s1,-13896
    # Line 21
    bal __iglooGetMatrixStacks
    move	$t9,$s1
    # Line 24
    li	$a2,2983
    li	$a1,5889
    addiu	$a0,$s0,8
    bal __iglooGetMatrixStacks
    move	$t9,$s1
    # Line 27
    li	$a2,2984
    li	$a1,5890
    addiu	$a0,$s0,16
    bal __iglooGetMatrixStacks
    move	$t9,$s1
    # Line 30
    la	$t9,__iglooMatrixMode
    move	$a0,$s8
    ld	$s1,24($sp)
    jalr	$t9
    ld	$s0,0($sp)
    # Line 31
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __iglooGetMatrixStacks

# Function: __iglooGetMatrixStack
# Declared: Line 38 (Source lines: 40-85)
# Address: 0x0f0dc9b8 - 0x0f0dca74 (Size: 188 bytes, Frame: 208)
.ent __iglooGetMatrixStack
__iglooGetMatrixStack:
    # Line 40
    move	$v0,$a2
    addiu	$sp,$sp,-80
    sd	$s3,32($sp)
    move	$s3,$a1
    sd	$s2,24($sp)
    sd	$s1,8($sp)
    # Line 56
    lw	$s1,0($a0)
    # Line 63
    li	$s2,1
    sd	$s0,16($sp)
    beqz	$s1,.L0f0dca5c
    # Line 57
    lw	$s0,4($a0)
    sd	$ra,40($sp)
    b	.L0f0dc9fc
    sd	$v0,0($sp)
.L0f0dc9f0:
    # Line 83
    la	$t9,__iglooPopMatrix
.L0f0dc9f4:
    jalr	$t9
    nop
.L0f0dc9fc:
    # Line 67
    la	$t9,__iglooGetIglooMatrix
    jalr	$t9
    ld	$a0,0($sp)
    # Line 69
    move	$a6,$s0
    move	$a5,$zero
    li	$a1,18
.L0f0dca14:
    addu	$v1,$a5,$a6
    addu	$at,$a5,$v0
    addiu	$a5,$a5,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0f0dca14
    sw	$at,0($v1)
    # Line 71
    addiu	$s1,$s1,-1
    # Line 73
    beqz	$s1,.L0f0dca58
    # Line 76
    addiu	$s0,$s0,72
    beqz	$s2,.L0f0dc9f0
    # Line 81
    la	$t9,__iglooMatrixMode
    # Line 80
    move	$s2,$zero
    # Line 81
    jalr	$t9
    move	$a0,$s3
    b	.L0f0dc9f4
    # Line 83
    la	$t9,__iglooPopMatrix
.L0f0dca58:
    ld	$ra,40($sp)
.L0f0dca5c:
    # Line 85
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooGetMatrixStack

# Function: __iglooSetMatrixStacks
# Declared: Line 92 (Source lines: 93-108)
# Address: 0x0f0dca74 - 0x0f0dcb14 (Size: 160 bytes, Frame: 192)
.globl __iglooSetMatrixStacks
.ent __iglooSetMatrixStacks
__iglooSetMatrixStacks:
    # Line 93
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    sd	$s8,32($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,26580 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 98
    la	$t9,__iglooGetMatrixMode
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 93
    move	$s0,$a0
    # Line 98
    move	$s8,$v0
    # Line 100
    li	$a2,2982
    # Line 98
    la	$s1,sub_0f0e0000
    # Line 100
    li	$a1,5888
    move	$a0,$s0
    # Line 98
    addiu	$s1,$s1,-13548
    # Line 100
    bal __iglooSetMatrixStacks
    move	$t9,$s1
    # Line 102
    li	$a2,2983
    li	$a1,5889
    addiu	$a0,$s0,8
    bal __iglooSetMatrixStacks
    move	$t9,$s1
    # Line 104
    li	$a2,2984
    li	$a1,5890
    addiu	$a0,$s0,16
    bal __iglooSetMatrixStacks
    move	$t9,$s1
    # Line 107
    la	$t9,__iglooMatrixMode
    move	$a0,$s8
    ld	$s1,24($sp)
    jalr	$t9
    ld	$s0,0($sp)
    # Line 108
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __iglooSetMatrixStacks

# Function: __iglooSetMatrixStack
# Declared: Line 115 (Source lines: 117-165)
# Address: 0x0f0dcb14 - 0x0f0dcbe8 (Size: 212 bytes, Frame: 208)
.ent __iglooSetMatrixStack
__iglooSetMatrixStack:
    # Line 117
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    move	$s1,$a1
    sd	$s4,16($sp)
    # Line 135
    li	$s4,1
    sd	$s2,8($sp)
    # Line 132
    lw	$s2,0($a0)
    sd	$s0,24($sp)
    # Line 133
    lw	$s0,4($a0)
    sll	$at,$s2,0x3
    addu	$at,$at,$s2
    sll	$at,$at,0x3
    addu	$s0,$s0,$at
    # Line 135
    beqz	$s2,.L0f0dcbd0
    # Line 133
    addiu	$s0,$s0,-72
    sd	$ra,40($sp)
    b	.L0f0dcb90
    sd	$a2,0($sp)
.L0f0dcb5c:
    # Line 148
    la	$t9,__iglooLoadIglooMatrix
    jalr	$t9
    move	$a0,$s0
.L0f0dcb68:
    # Line 153
    beqz	$s2,.L0f0dcbcc
    # Line 156
    addiu	$s0,$s0,-72
    beqz	$s4,.L0f0dcb84
    # Line 160
    la	$t9,__iglooMatrixMode
    jalr	$t9
    move	$a0,$s1
    # Line 161
    move	$s4,$zero
.L0f0dcb84:
    # Line 163
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
.L0f0dcb90:
    # Line 139
    la	$t9,__iglooGetRawIglooMatrix
    jalr	$t9
    ld	$a0,0($sp)
    # Line 141
    lw	$a1,68($v0)
    beqz	$a1,.L0f0dcbb4
    # Line 151
    addiu	$s2,$s2,-1
    # Line 141
    lw	$v0,68($s0)
    beq	$v0,$a1,.L0f0dcb68
    nop
.L0f0dcbb4:
    beqz	$s4,.L0f0dcb5c
    # Line 145
    la	$t9,__iglooMatrixMode
    jalr	$t9
    move	$a0,$s1
    b	.L0f0dcb5c
    # Line 146
    move	$s4,$zero
.L0f0dcbcc:
    ld	$ra,40($sp)
.L0f0dcbd0:
    # Line 165
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,8($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooSetMatrixStack

# Function: __iglooAllocMatrixStacks
# Declared: Line 176 (Source lines: 177-231)
# Address: 0x0f0dcbe8 - 0x0f0dccdc (Size: 244 bytes, Frame: 192)
.globl __iglooAllocMatrixStacks
.ent __iglooAllocMatrixStacks
__iglooAllocMatrixStacks:
    # Line 205
    move	$a1,$zero
    # Line 177
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    sd	$gp,48($sp)
    lui	$a3,0xfff5
    addiu	$a3,$a3,26208
    # Line 178
    lw	$a4,4100($zero)
    # Line 177
    addu	$gp,$t9,$a3
    # Line 205
    la	$t9,gl_malloc
    # Line 190
    lw	$a5,180($a4)
    # Line 191
    lw	$a2,192($a4)
    # Line 189
    lw	$a4,168($a4)
    # Line 190
    addiu	$a5,$a5,1
    sd	$a5,16($sp)
    # Line 189
    addiu	$a4,$a4,1
    sd	$a4,8($sp)
    # Line 191
    addiu	$a2,$a2,1
    sd	$a2,32($sp)
    # Line 205
    sll	$a0,$a2,0x3
    addu	$a0,$a0,$a2
    li	$a2,-8
    sll	$a3,$a5,0x3
    addu	$a3,$a3,$a5
    sll	$a0,$a0,0x3
    sll	$a3,$a3,0x3
    addiu	$a3,$a3,7
    addiu	$a0,$a0,7
    and	$a0,$a0,$a2
    and	$a3,$a2,$a3
    sd	$a3,40($sp)
    addu	$a0,$a0,$a3
    sll	$a3,$a4,0x3
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x3
    addiu	$a3,$a3,7
    and	$a2,$a2,$a3
    sd	$a2,24($sp)
    addu	$a0,$a0,$a2
    jalr	$t9
    addiu	$a0,$a0,24
    # Line 212
    ld	$a1,8($sp)
    # Line 213
    ld	$at,16($sp)
    # Line 205
    beqz	$v0,.L0f0dccd0
    ld	$ra,0($sp)
    # Line 212
    sw	$a1,0($v0)
    ld	$v1,32($sp)
    # Line 220
    addiu	$a0,$v0,24
    sw	$a0,4($v0)
    # Line 214
    sw	$v1,16($v0)
    # Line 225
    ld	$v1,24($sp)
    # Line 213
    sw	$at,8($v0)
    # Line 229
    ld	$at,40($sp)
    # Line 225
    addu	$v1,$v0,$v1
    addiu	$a0,$v1,24
    sw	$a0,12($v0)
    # Line 229
    addu	$at,$at,$v1
    addiu	$at,$at,24
    sw	$at,20($v0)
.L0f0dccd0:
    ld	$gp,48($sp)
    # Line 231
    jr	$ra
    addiu	$sp,$sp,64
.end __iglooAllocMatrixStacks

# Function: __iglooFreeMatrixStacks
# Declared: Line 238 (Source lines: 239-243)
# Address: 0x0f0dccdc - 0x0f0dcd10 (Size: 52 bytes, Frame: 32)
.globl __iglooFreeMatrixStacks
.ent __iglooFreeMatrixStacks
__iglooFreeMatrixStacks:
    # Line 239
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,25964 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 242
    la	$t9,gl_free
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$zero
    # Line 243
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooFreeMatrixStacks

