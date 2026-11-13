# Source: ../igloo/graphics/clear.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/clear.c -o clear.T
# Total Functions: 14

.text

# Function: gl_clear
# Declared: Line 15 (Source lines: 16-152)
# Address: 0x0f09bde4 - 0x0f09c0c0 (Size: 732 bytes, Frame: 192)
.ent gl_clear
gl_clear:
    # Line 16
    addiu	$sp,$sp,-64
    # Line 17
    la	$at,gl_wstatep
    sd	$ra,32($sp)
    # Line 26
    lw	$v0,4100($zero)
    # Line 17
    lw	$at,0($at)
    # Line 46
    la	$t9,__iglooGetRenderMode
    # Line 26
    lw	$v0,20($v0)
    sd	$at,40($sp)
    # Line 22
    addiu	$at,$at,2904
    # Line 26
    lw	$v0,16($v0)
    sd	$at,48($sp)
    # Line 46
    jalr	$t9
    sd	$v0,56($sp)
    li	$a0,7168
    bne	$a0,$v0,.L0f09be9c
    ld	$ra,32($sp)
    ld	$v0,40($sp)
    lw	$v0,276($v0)
    beqz	$v0,.L0f09bea4
    nop
    lw	$v1,12($v0)
    beqz	$v1,.L0f09bea4
    # Line 48
    li	$v0,1
.L0f09be40:
    beqz	$v0,.L0f09be5c
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$a1,7168
    beq	$a1,$v0,.L0f09bef8
    ld	$ra,32($sp)
.L0f09be5c:
    ld	$a2,56($sp)
    ld	$a3,48($sp)
    beqz	$a2,.L0f09beac
    lw	$a3,0($a3)
    beqz	$a3,.L0f09bec8
    ld	$a4,40($sp)
    # Line 133
    la	$t9,glClearColor
    lwc1	$f15,3132($a4)
    lwc1	$f14,3128($a4)
    lwc1	$f13,3124($a4)
    jalr	$t9
    lwc1	$f12,3120($a4)
    # Line 149
    la	$t9,glClear
.L0f09be90:
    jalr	$t9
    li	$a0,16384
    ld	$ra,32($sp)
.L0f09be9c:
    # Line 152
    jr	$ra
    addiu	$sp,$sp,64
.L0f09bea4:
    b	.L0f09be40
    # Line 48
    move	$v0,$zero
.L0f09beac:
    # Line 137
    beqz	$a3,.L0f09c02c
    # Line 143
    la	$t9,glClearIndex
    ld	$a5,48($sp)
    jalr	$t9
    lwc1	$f12,96($a5)
    b	.L0f09be90
    # Line 149
    la	$t9,glClear
.L0f09bec8:
    # Line 136
    la	$t9,__iglooGetFloatv
    addiu	$a1,$sp,8
    jalr	$t9
    li	$a0,2816
    # Line 137
    lwc1	$f15,20($sp)
    la	$t9,glClearColor
    lwc1	$f14,16($sp)
    lwc1	$f13,12($sp)
    jalr	$t9
    lwc1	$f12,8($sp)
    b	.L0f09be90
    # Line 149
    la	$t9,glClear
.L0f09bef8:
    # Line 53
    la	$t9,__iglooGetMatrixMode
    jalr	$t9
    nop
    # Line 55
    la	$t9,__iglooMatrixMode
    sd	$v0,24($sp)
    jalr	$t9
    li	$a0,5888
    # Line 57
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
    # Line 58
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    nop
    # Line 67
    la	$t9,__iglooMatrixMode
    jalr	$t9
    li	$a0,5889
    # Line 68
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
    # Line 69
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    nop
    ld	$at,56($sp)
    beqz	$at,.L0f09c050
    # Line 75
    la	$t9,__iglooGetAndSetEnable
    addiu	$a2,$sp,0
    move	$a1,$zero
    jalr	$t9
    li	$a0,28647
    ld	$v1,48($sp)
    lw	$v1,0($v1)
    beqz	$v1,.L0f09bf8c
    ld	$a1,40($sp)
    # Line 79
    lw	$t9,152($a1)
    move	$a0,$a1
    jalr	$t9
    addiu	$a1,$a1,3120
.L0f09bf8c:
    # Line 82
    la	$t9,__iglooSetSavedEnable
    lw	$a2,0($sp)
    move	$a1,$zero
    jalr	$t9
    li	$a0,28647
    # Line 98
    li	$a3,1
.L0f09bfa4:
    la	$t9,glRecti
    li	$a2,1
    li	$a1,-1
    jalr	$t9
    li	$a0,-1
    ld	$a2,56($sp)
    ld	$a3,48($sp)
    beqz	$a2,.L0f09c0a4
    lw	$a3,0($a3)
    beqz	$a3,.L0f09bfe4
    ld	$t9,40($sp)
    # Line 113
    move	$a0,$t9
    lw	$t9,152($t9)
    ld	$a1,48($sp)
    jalr	$t9
    addiu	$a1,$a1,8
.L0f09bfe4:
    # Line 123
    la	$t9,__iglooMatrixMode
.L0f09bfe8:
    jalr	$t9
    li	$a0,5888
    # Line 124
    la	$t9,__iglooPopMatrix
    jalr	$t9
    nop
    # Line 125
    la	$t9,__iglooMatrixMode
    jalr	$t9
    li	$a0,5889
    # Line 126
    la	$t9,__iglooPopMatrix
    jalr	$t9
    nop
    # Line 127
    la	$t9,__iglooMatrixMode
    jalr	$t9
    ld	$a0,24($sp)
    ld	$ra,32($sp)
    b	.L0f09be9c
    nop
.L0f09c02c:
    # Line 145
    la	$t9,__iglooGetFloatv
    addiu	$a1,$sp,8
    jalr	$t9
    li	$a0,2817
    # Line 146
    la	$t9,glClearIndex
    jalr	$t9
    lwc1	$f12,8($sp)
    b	.L0f09be90
    # Line 149
    la	$t9,glClear
.L0f09c050:
    # Line 88
    la	$t9,__iglooGetAndSetEnable
    addiu	$a2,$sp,4
    move	$a1,$zero
    jalr	$t9
    li	$a0,8167
    ld	$at,48($sp)
    lw	$at,0($at)
    beqz	$at,.L0f09c088
    ld	$t9,40($sp)
    # Line 92
    move	$a0,$t9
    lw	$t9,176($t9)
    ld	$v0,48($sp)
    jalr	$t9
    lwc1	$f13,96($v0)
.L0f09c088:
    # Line 95
    la	$t9,__iglooSetSavedEnable
    lw	$a2,4($sp)
    move	$a1,$zero
    jalr	$t9
    li	$a0,8167
    b	.L0f09bfa4
    # Line 98
    li	$a3,1
.L0f09c0a4:
    # Line 113
    beqz	$a3,.L0f09bfe4
    # Line 119
    la	$t9,glIndexi
    ld	$a0,40($sp)
    jalr	$t9
    lhu	$a0,2944($a0)
    b	.L0f09bfe8
    # Line 123
    la	$t9,__iglooMatrixMode
.end gl_clear

# Function: gl_i_clear
# Declared: Line 156 (Source lines: 156-156)
# Address: 0x0f09c0c0 - 0x0f09c110 (Size: 80 bytes, Frame: 16)
.globl gl_i_clear
.ent gl_i_clear
gl_i_clear:
    # Line 156
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,29064 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09c0f0
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09c0f0:
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-16924
    bal gl_i_gl_scrrect
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_clear

# Function: gl_c_clear
# Declared: Line 156 (Source lines: 156-156)
# Address: 0x0f09c110 - 0x0f09c174 (Size: 100 bytes, Frame: 32)
.globl gl_c_clear
.ent gl_c_clear
gl_c_clear:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28984 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20996($gp)
    beqz	$at,.L0f09c158
    sd	$ra,16($sp)
.L0f09c130:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_clear
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f09c158:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29232
    li	$at,1
    b	.L0f09c130
    sw	$at,-20996($gp)
.end gl_c_clear

# Function: gl_n_clear
# Declared: Line 156 (Source lines: 156-156)
# Address: 0x0f09c174 - 0x0f09c1cc (Size: 88 bytes, Frame: 48)
.globl gl_n_clear
.ent gl_n_clear
gl_n_clear:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28884 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f09c1a8
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09c1a8:
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-16924
    bal gl_i_gl_scrrect
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_clear

# Function: gl_i_zclear
# Declared: Line 170 (Source lines: 170-170)
# Address: 0x0f09c1cc - 0x0f09c224 (Size: 88 bytes, Frame: 16)
.globl gl_i_zclear
.ent gl_i_zclear
gl_i_zclear:
    # Line 170
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28796 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09c1fc
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09c1fc:
    la	$t9,glClearDepth
    jalr	$t9
    ldc1	$f12,_lit8_3ff0000000000000
    la	$t9,glClear
    jalr	$t9
    li	$a0,256
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_zclear

# Function: gl_c_zclear
# Declared: Line 170 (Source lines: 170-170)
# Address: 0x0f09c224 - 0x0f09c288 (Size: 100 bytes, Frame: 32)
.globl gl_c_zclear
.ent gl_c_zclear
gl_c_zclear:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28708 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20992($gp)
    beqz	$at,.L0f09c26c
    sd	$ra,16($sp)
.L0f09c244:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_zclear
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f09c26c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29248
    li	$at,1
    b	.L0f09c244
    sw	$at,-20992($gp)
.end gl_c_zclear

# Function: gl_n_zclear
# Declared: Line 170 (Source lines: 170-170)
# Address: 0x0f09c288 - 0x0f09c2e8 (Size: 96 bytes, Frame: 48)
.globl gl_n_zclear
.ent gl_n_zclear
gl_n_zclear:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28608 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f09c2bc
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09c2bc:
    la	$t9,glClearDepth
    jalr	$t9
    ldc1	$f12,_lit8_3ff0000000000000
    la	$t9,glClear
    jalr	$t9
    li	$a0,256
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_zclear

# Function: gl_i_sclear
# Declared: Line 187 (Source lines: 187-187)
# Address: 0x0f09c2e8 - 0x0f09c344 (Size: 92 bytes, Frame: 48)
.globl gl_i_sclear
.ent gl_i_sclear
gl_i_sclear:
    # Line 187
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28512 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09c31c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09c31c:
    la	$t9,glClearStencil
    jalr	$t9
    nop
    la	$t9,glClear
    jalr	$t9
    li	$a0,1024
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_sclear

# Function: gl_c_sclear
# Declared: Line 187 (Source lines: 187-187)
# Address: 0x0f09c344 - 0x0f09c3b8 (Size: 116 bytes, Frame: 192)
.globl gl_c_sclear
.ent gl_c_sclear
gl_c_sclear:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28420 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20988($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09c39c
    move	$s8,$a0
.L0f09c36c:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_sclear
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09c39c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29264
    li	$a1,1
    b	.L0f09c36c
    sw	$a1,-20988($gp)
.end gl_c_sclear

# Function: gl_n_sclear
# Declared: Line 187 (Source lines: 187-187)
# Address: 0x0f09c3b8 - 0x0f09c420 (Size: 104 bytes, Frame: 48)
.globl gl_n_sclear
.ent gl_n_sclear
gl_n_sclear:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,28304 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f09c3ec
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09c3ec:
    la	$t9,glClearStencil
    ld	$a0,0($sp)
    jalr	$t9
    lw	$a0,0($a0)
    la	$t9,glClear
    jalr	$t9
    li	$a0,1024
    ld	$v0,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$v0,4
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_sclear

# Function: _czclear
# Declared: Line 207 (Source lines: 208-268)
# Address: 0x0f09c420 - 0x0f09c5dc (Size: 444 bytes, Frame: 208)
.ent _czclear
_czclear:
    # Line 221
    li	$at,1
    # Line 208
    addiu	$sp,$sp,-80
    sd	$ra,48($sp)
    sd	$s2,40($sp)
    # Line 221
    lw	$v0,4100($zero)
    sd	$s0,16($sp)
    # Line 220
    la	$s0,gl_wstatep
    # Line 221
    lw	$v0,20($v0)
    # Line 208
    move	$s2,$a0
    # Line 220
    lw	$s0,0($s0)
    # Line 221
    lbu	$v0,19($v0)
    sd	$a1,24($sp)
    # Line 220
    addiu	$s0,$s0,2832
    # Line 221
    beq	$at,$v0,.L0f09c500
    sd	$v0,32($sp)
    # Line 239
    la	$t9,__iglooGetIndexMask
    addiu	$a0,$sp,8
    jalr	$t9
    # Line 237
    sw	$zero,8($sp)
    # Line 240
    la	$t9,__iglooIndexMask
    jalr	$t9
    li	$a0,-1
    # Line 242
    la	$t9,glClearIndex
    dsll32	$v1,$s2,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f12
    jalr	$t9
    cvt.s.l	$f12,$f12
    ld	$s2,40($sp)
.L0f09c494:
    lbu	$a2,12($s0)
    beqz	$a2,.L0f09c5b0
    ld	$a3,24($sp)
.L0f09c4a0:
    # Line 250
    mtc1	$a3,$f14
    nop
    cvt.d.w	$f14,$f14
    ldc1	$f13,40($s0)
    mul.d	$f13,$f13,$f14
    la	$t9,glClearDepth
    ldc1	$f12,48($s0)
    jalr	$t9
    add.d	$f12,$f12,$f13
    # Line 252
    la	$t9,glClear
    jalr	$t9
    li	$a0,16640
    lbu	$at,12($s0)
    beqz	$at,.L0f09c5c4
    ld	$s0,16($sp)
    # Line 256
    ld	$v1,32($sp)
.L0f09c4e0:
    li	$v0,1
    beq	$v0,$v1,.L0f09c590
    # Line 266
    la	$t9,__iglooIndexMask
    jalr	$t9
    lw	$a0,8($sp)
    ld	$ra,48($sp)
.L0f09c4f8:
    # Line 268
    jr	$ra
    addiu	$sp,$sp,80
.L0f09c500:
    # Line 225
    la	$t9,__iglooGetColorMask
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 226
    li	$a3,1
    la	$t9,__iglooColorMask
    li	$a2,1
    li	$a1,1
    jalr	$t9
    li	$a0,1
    # Line 228
    srl	$a3,$s2,0x18
    dmtc1	$a3,$f15
    nop
    cvt.s.l	$f15,$f15
    lwc1	$f16,_lit_437f0000
    div.s	$f15,$f15,$f16
    andi	$a2,$s2,0xff
    dmtc1	$a2,$f12
    nop
    cvt.s.l	$f12,$f12
    div.s	$f12,$f12,$f16
    srl	$a1,$s2,0x10
    andi	$a1,$a1,0xff
    dmtc1	$a1,$f14
    nop
    cvt.s.l	$f14,$f14
    div.s	$f14,$f14,$f16
    srl	$a0,$s2,0x8
    andi	$a0,$a0,0xff
    dmtc1	$a0,$f13
    nop
    cvt.s.l	$f13,$f13
    la	$t9,glClearColor
    jalr	$t9
    div.s	$f13,$f13,$f16
    b	.L0f09c494
    ld	$s2,40($sp)
.L0f09c590:
    # Line 261
    lbu	$a3,3($sp)
    la	$t9,__iglooColorMask
    lbu	$a2,2($sp)
    lbu	$a1,1($sp)
    jalr	$t9
    lbu	$a0,0($sp)
    b	.L0f09c4f8
    ld	$ra,48($sp)
.L0f09c5b0:
    # Line 247
    la	$t9,__iglooDepthMask
    jalr	$t9
    li	$a0,1
    b	.L0f09c4a0
    ld	$a3,24($sp)
.L0f09c5c4:
    # Line 256
    la	$t9,__iglooDepthMask
    move	$a0,$zero
    jalr	$t9
    ld	$s0,16($sp)
    b	.L0f09c4e0
    ld	$v1,32($sp)
.end _czclear

# Function: gl_i_czclear
# Declared: Line 272 (Source lines: 272-272)
# Address: 0x0f09c5dc - 0x0f09c638 (Size: 92 bytes, Frame: 48)
.globl gl_i_czclear
.ent gl_i_czclear
gl_i_czclear:
    # Line 272
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,27756 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09c618
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
.L0f09c618:
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-15328
    bal gl_n_sclear
    nop
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_czclear

# Function: gl_c_czclear
# Declared: Line 272 (Source lines: 272-272)
# Address: 0x0f09c638 - 0x0f09c6bc (Size: 132 bytes, Frame: 192)
.globl gl_c_czclear
.ent gl_c_czclear
gl_c_czclear:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,27664 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20984($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09c698
    move	$s8,$a0
.L0f09c664:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_czclear
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09c698:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29280
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f09c664
    sw	$a2,-20984($gp)
.end gl_c_czclear

# Function: gl_n_czclear
# Declared: Line 272 (Source lines: 272-272)
# Address: 0x0f09c6bc - 0x0f09c720 (Size: 100 bytes, Frame: 48)
.globl gl_n_czclear
.ent gl_n_czclear
gl_n_czclear:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,27532 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f09c6f4
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09c6f4:
    la	$t9,sub_0f0a0000
    lw	$a1,4($s8)
    addiu	$t9,$t9,-15328
    bal gl_n_sclear
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_czclear

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_437f0000:
    .word 0x437f0000

