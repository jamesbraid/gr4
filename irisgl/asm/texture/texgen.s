# Source: ../igloo/texture/texgen.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/texgen.c -o texgen.T
# Total Functions: 5

.text

# Function: gl_i_texgen
# Declared: Line 64 (Source lines: 64-64)
# Address: 0x0f122f74 - 0x0f122fd4 (Size: 96 bytes, Frame: 208)
.globl gl_i_texgen
.ent gl_i_texgen
gl_i_texgen:
    # Line 64
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,724 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f122fb8
    sd	$ra,32($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
.L0f122fb8:
    la	$t9,__gl_texgen
    bal __gl_texgen
    nop
    ld	$ra,32($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_texgen

# Function: gl_c_texgen
# Declared: Line 64 (Source lines: 64-64)
# Address: 0x0f122fd4 - 0x0f1230c4 (Size: 240 bytes, Frame: 240)
.globl gl_c_texgen
.ent gl_c_texgen
gl_c_texgen:
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    sd	$gp,48($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,628 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19852($gp)
    move	$s0,$a1
    sd	$s3,40($sp)
    beqz	$at,.L0f123098
    move	$s3,$a0
.L0f123000:
    addiu	$a0,$sp,12
    sw	$s0,8($sp)
    sw	$s3,4($sp)
    ld	$s3,40($sp)
    la	$a3,gl_n_texgen
    li	$v1,2
    beq	$s0,$v1,.L0f123068
    sw	$a3,0($sp)
    li	$at,3
    beq	$s0,$at,.L0f123068
    ld	$s3,40($sp)
    mtc1	$zero,$f4
    ld	$s0,32($sp)
    swc1	$f4,12($a0)
    swc1	$f4,8($a0)
    swc1	$f4,4($a0)
    swc1	$f4,0($a0)
    sd	$ra,64($sp)
.L0f123048:
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,14
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f123068:
    move	$a1,$a2
    ld	$s0,32($sp)
    lwc1	$f3,0($a1)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a1)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a1)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a1)
    swc1	$f0,12($a0)
    b	.L0f123048
    sd	$ra,64($sp)
.L0f123098:
    sd	$a2,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$ra,64($sp)
    jalr	$t9
    addiu	$a0,$a0,-21512
    ld	$ra,64($sp)
    li	$a2,1
    sw	$a2,-19852($gp)
    b	.L0f123000
    ld	$a2,56($sp)
.end gl_c_texgen

# Function: gl_n_texgen
# Declared: Line 64 (Source lines: 64-64)
# Address: 0x0f1230c4 - 0x0f123128 (Size: 100 bytes, Frame: 48)
.globl gl_n_texgen
.ent gl_n_texgen
gl_n_texgen:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,388 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f1230fc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1230fc:
    la	$t9,__gl_texgen
    addiu	$a2,$s8,8
    lw	$a1,4($s8)
    bal __gl_texgen
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_texgen

# Function: __gl_texgen
# Declared: Line 98 (Source lines: 99-177)
# Address: 0x0f123128 - 0x0f123370 (Size: 584 bytes, Frame: 224)
.globl __gl_texgen
.ent __gl_texgen
__gl_texgen:
    # Line 99
    addiu	$sp,$sp,-96
    sd	$gp,48($sp)
    sd	$s0,40($sp)
    lui	$s0,0xfff1
    addiu	$s0,$s0,288
    addu	$gp,$t9,$s0
    # Line 100
    la	$a4,gl_wstatep
    sd	$a2,8($sp)
    lw	$a4,0($a4)
    sd	$s2,16($sp)
    # Line 99
    move	$s2,$a0
    # Line 100
    lw	$at,11708($a4)
    sd	$s3,32($sp)
    # Line 99
    move	$s0,$a1
    # Line 100
    beqz	$at,.L0f1231e8
    move	$s3,$a4
.L0f123168:
    # Line 112
    li	$a0,1
    # Line 110
    lw	$s3,11708($s3)
    sll	$at,$s2,0x2
    subu	$at,$at,$s2
    sll	$at,$at,0x5
    addu	$s3,$s3,$at
    addiu	$s3,$s3,28
    sd	$s3,24($sp)
    # Line 112
    beqz	$s2,.L0f1231ac
    ld	$s3,32($sp)
    beq	$s2,$a0,.L0f1231ac
    ld	$s3,32($sp)
    li	$v0,2
    beq	$s2,$v0,.L0f1231ac
    li	$v1,3
    bnel	$s2,$v1,.L0f1231d8
    ld	$gp,48($sp)
.L0f1231ac:
    # Line 114
    beqz	$s0,.L0f12331c
    # Line 116
    la	$t9,__iglooSetEnable
    # Line 114
    beq	$s0,$a0,.L0f123344
    li	$a3,2
    beq	$s0,$a3,.L0f12322c
    li	$at,3
    beq	$s0,$at,.L0f1232ac
    li	$v0,4
    beq	$s0,$v0,.L0f123200
    # Line 147
    li	$a2,9218
.L0f1231d4:
    ld	$gp,48($sp)
.L0f1231d8:
    # Line 177
    ld	$s0,40($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1231e8:
    # Line 107
    la	$t9,gl_init_texturing
    sd	$ra,56($sp)
    jalr	$t9
    move	$a0,$a4
    b	.L0f123168
    ld	$ra,56($sp)
.L0f123200:
    # Line 147
    la	$t9,glTexGeni
    li	$a1,9472
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$s2,8192
    # Line 149
    ld	$v1,24($sp)
    ld	$ra,56($sp)
    li	$a3,1
    sw	$a3,12($v1)
    b	.L0f1231d4
    # Line 148
    sw	$s0,8($v1)
.L0f12322c:
    # Line 126
    li	$a2,9216
    li	$a1,9472
    la	$t9,glTexGeni
    sd	$ra,56($sp)
    addiu	$a0,$s2,8192
    jalr	$t9
    sd	$a0,0($sp)
    ld	$a0,0($sp)
    # Line 127
    la	$t9,glTexGenfv
    ld	$a2,8($sp)
    li	$a1,9474
    jalr	$t9
    ld	$s2,16($sp)
    # Line 128
    ld	$a4,24($sp)
    # Line 130
    ld	$a5,8($sp)
    li	$a6,1
    # Line 129
    sw	$a6,12($a4)
    # Line 128
    sw	$s0,8($a4)
    # Line 130
    lwc1	$f3,0($a5)
    swc1	$f3,16($a4)
    # Line 131
    lwc1	$f2,4($a5)
    swc1	$f2,20($a4)
    # Line 132
    lwc1	$f1,8($a5)
    # Line 134
    li	$a0,2982
    # Line 132
    swc1	$f1,24($a4)
    # Line 134
    la	$t9,__iglooGetMatrix
    # Line 133
    lwc1	$f0,12($a5)
    # Line 134
    addiu	$a1,$a4,32
    jalr	$t9
    # Line 133
    swc1	$f0,28($a4)
    b	.L0f1231d4
    ld	$ra,56($sp)
.L0f1232ac:
    # Line 137
    li	$a2,9217
    li	$a1,9472
    la	$t9,glTexGeni
    sd	$ra,56($sp)
    addiu	$a0,$s2,8192
    jalr	$t9
    sd	$a0,0($sp)
    ld	$a0,0($sp)
    # Line 138
    la	$t9,glTexGenfv
    ld	$a2,8($sp)
    li	$a1,9473
    jalr	$t9
    ld	$s2,16($sp)
    # Line 139
    ld	$ra,24($sp)
    # Line 141
    ld	$at,8($sp)
    li	$v0,1
    # Line 140
    sw	$v0,12($ra)
    # Line 139
    sw	$s0,8($ra)
    # Line 141
    lwc1	$f3,0($at)
    swc1	$f3,16($ra)
    # Line 142
    lwc1	$f2,4($at)
    swc1	$f2,20($ra)
    # Line 143
    lwc1	$f1,8($at)
    swc1	$f1,24($ra)
    # Line 144
    lwc1	$f0,12($at)
    swc1	$f0,28($ra)
    # Line 145
    b	.L0f1231d4
    ld	$ra,56($sp)
.L0f12331c:
    # Line 116
    move	$a1,$zero
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$s2,3168
    # Line 118
    ld	$v1,24($sp)
    ld	$ra,56($sp)
    li	$a3,1
    sw	$a3,4($v1)
    # Line 119
    b	.L0f1231d4
    # Line 117
    sw	$s0,0($v1)
.L0f123344:
    # Line 121
    la	$t9,__iglooSetEnable
    li	$a1,1
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$s2,3168
    # Line 123
    ld	$ra,24($sp)
    li	$at,1
    sw	$at,4($ra)
    # Line 122
    sw	$s0,0($ra)
    # Line 124
    b	.L0f1231d4
    ld	$ra,56($sp)
.end __gl_texgen

# Function: __iglooRebindTGen
# Declared: Line 179 (Source lines: 180-240)
# Address: 0x0f123370 - 0x0f1237a0 (Size: 1072 bytes, Frame: 192)
.globl __iglooRebindTGen
.ent __iglooRebindTGen
__iglooRebindTGen:
    # Line 180
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    lui	$a1,0xfff1
    addiu	$a1,$a1,-296
    addu	$gp,$t9,$a1
    # Line 181
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$at,11708($a0)
    sd	$ra,32($sp)
    sd	$s3,24($sp)
    beqz	$at,.L0f123560
    move	$s3,$a0
    # Line 192
    la	$t9,__iglooGetMatrixMode
    jalr	$t9
    nop
    sd	$s1,48($sp)
    # Line 194
    la	$t9,__iglooMatrixMode
    sd	$s2,56($sp)
    sd	$v0,0($sp)
    jalr	$t9
    li	$a0,5888
    li	$s2,3168
    move	$s1,$zero
    sd	$s0,40($sp)
    # Line 198
    lw	$s0,11708($s3)
    li	$a1,4
    # Line 194
    li	$a2,8192
    sd	$a2,8($sp)
    # Line 198
    addu	$s0,$s0,$s1
    addiu	$s0,$s0,28
    lw	$at,12($s0)
    beqzl	$at,.L0f123418
    # Line 222
    lw	$a2,4($s0)
    # Line 203
    lw	$v0,8($s0)
    li	$at,2
    beq	$v0,$at,.L0f1235d4
    li	$v1,3
    beq	$v0,$v1,.L0f123628
    # Line 212
    la	$t9,glTexGeni
    # Line 203
    beq	$v0,$a1,.L0f123654
    # Line 216
    la	$t9,glTexGeni
    # Line 222
    lw	$a2,4($s0)
.L0f123418:
    beqz	$a2,.L0f12343c
    li	$v1,1
    lw	$at,0($s0)
    beq	$at,$v1,.L0f123580
    # Line 233
    la	$t9,__iglooSetEnable
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    ld	$s0,40($sp)
.L0f12343c:
    # Line 196
    addiu	$s2,$s2,1
.L0f123440:
    ld	$a2,8($sp)
    addiu	$s1,$s1,96
    li	$a1,288
    addiu	$a2,$a2,1
    beq	$a1,$s1,.L0f123534
    sd	$a2,8($sp)
    # Line 198
    lw	$s0,11708($s3)
    addu	$s0,$s0,$s1
    addiu	$s0,$s0,28
    lw	$at,12($s0)
    beqz	$at,.L0f123490
    li	$a1,4
    # Line 203
    lw	$v0,8($s0)
    li	$at,2
    beq	$v0,$at,.L0f12366c
    li	$v1,3
    beq	$v0,$v1,.L0f1236c0
    # Line 212
    la	$t9,glTexGeni
    # Line 203
    beq	$v0,$a1,.L0f1236ec
    # Line 216
    la	$t9,glTexGeni
.L0f123490:
    # Line 222
    lw	$a2,4($s0)
.L0f123494:
    beqz	$a2,.L0f1234b8
    li	$v1,1
    lw	$at,0($s0)
    beq	$at,$v1,.L0f12359c
    # Line 233
    la	$t9,__iglooSetEnable
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    ld	$s0,40($sp)
.L0f1234b8:
    # Line 196
    addiu	$s2,$s2,1
.L0f1234bc:
    ld	$a2,8($sp)
    addiu	$s1,$s1,96
    li	$a1,288
    addiu	$a2,$a2,1
    beq	$a1,$s1,.L0f123534
    sd	$a2,8($sp)
    # Line 198
    lw	$s0,11708($s3)
    addu	$s0,$s0,$s1
    addiu	$s0,$s0,28
    lw	$at,12($s0)
    beqzl	$at,.L0f123510
    # Line 222
    lw	$a2,4($s0)
    # Line 203
    lw	$v0,8($s0)
    li	$at,2
    beq	$v0,$at,.L0f123704
    li	$v1,3
    beq	$v0,$v1,.L0f123758
    li	$a1,4
    beq	$v0,$a1,.L0f123788
    # Line 216
    la	$t9,glTexGeni
    # Line 222
    lw	$a2,4($s0)
.L0f123510:
    beqz	$a2,.L0f123534
    li	$v1,1
    lw	$at,0($s0)
    beq	$at,$v1,.L0f1235b8
    # Line 233
    la	$t9,__iglooSetEnable
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    ld	$s0,40($sp)
.L0f123534:
    ld	$a0,0($sp)
.L0f123538:
    # Line 239
    la	$t9,__iglooMatrixMode
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jalr	$t9
    ld	$s2,56($sp)
    # Line 240
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f123560:
    # Line 188
    la	$t9,gl_init_texturing
    jalr	$t9
    nop
    # Line 189
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f123580:
    # Line 229
    la	$t9,__iglooSetEnable
    move	$a0,$s2
    li	$a1,1
    jalr	$t9
    ld	$s0,40($sp)
    b	.L0f123440
    # Line 196
    addiu	$s2,$s2,1
.L0f12359c:
    # Line 229
    la	$t9,__iglooSetEnable
    move	$a0,$s2
    li	$a1,1
    jalr	$t9
    ld	$s0,40($sp)
    b	.L0f1234bc
    # Line 196
    addiu	$s2,$s2,1
.L0f1235b8:
    # Line 229
    la	$t9,__iglooSetEnable
    move	$a0,$s2
    li	$a1,1
    jalr	$t9
    ld	$s0,40($sp)
    b	.L0f123538
    ld	$a0,0($sp)
.L0f1235d4:
    # Line 205
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
    # Line 206
    la	$t9,__iglooLoadMatrix
    jalr	$t9
    addiu	$a0,$s0,32
    # Line 207
    la	$t9,glTexGeni
    ld	$a0,8($sp)
    li	$a2,9216
    jalr	$t9
    li	$a1,9472
    # Line 208
    la	$t9,glTexGenfv
    ld	$a0,8($sp)
    addiu	$a2,$s0,16
    jalr	$t9
    li	$a1,9474
    # Line 209
    la	$t9,__iglooPopMatrix
    jalr	$t9
    nop
    b	.L0f123418
    # Line 222
    lw	$a2,4($s0)
.L0f123628:
    ld	$a0,8($sp)
    # Line 212
    li	$a2,9217
    jalr	$t9
    li	$a1,9472
    # Line 213
    la	$t9,glTexGenfv
    ld	$a0,8($sp)
    addiu	$a2,$s0,16
    jalr	$t9
    li	$a1,9473
    b	.L0f123418
    # Line 222
    lw	$a2,4($s0)
.L0f123654:
    ld	$a0,8($sp)
    # Line 216
    li	$a2,9218
    jalr	$t9
    li	$a1,9472
    b	.L0f123418
    # Line 222
    lw	$a2,4($s0)
.L0f12366c:
    # Line 205
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
    # Line 206
    la	$t9,__iglooLoadMatrix
    jalr	$t9
    addiu	$a0,$s0,32
    # Line 207
    la	$t9,glTexGeni
    ld	$a0,8($sp)
    li	$a2,9216
    jalr	$t9
    li	$a1,9472
    # Line 208
    la	$t9,glTexGenfv
    ld	$a0,8($sp)
    addiu	$a2,$s0,16
    jalr	$t9
    li	$a1,9474
    # Line 209
    la	$t9,__iglooPopMatrix
    jalr	$t9
    nop
    b	.L0f123494
    # Line 222
    lw	$a2,4($s0)
.L0f1236c0:
    ld	$a0,8($sp)
    # Line 212
    li	$a2,9217
    jalr	$t9
    li	$a1,9472
    # Line 213
    la	$t9,glTexGenfv
    ld	$a0,8($sp)
    addiu	$a2,$s0,16
    jalr	$t9
    li	$a1,9473
    b	.L0f123494
    # Line 222
    lw	$a2,4($s0)
.L0f1236ec:
    ld	$a0,8($sp)
    # Line 216
    li	$a2,9218
    jalr	$t9
    li	$a1,9472
    b	.L0f123494
    # Line 222
    lw	$a2,4($s0)
.L0f123704:
    # Line 205
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
    # Line 206
    la	$t9,__iglooLoadMatrix
    jalr	$t9
    addiu	$a0,$s0,32
    # Line 207
    la	$t9,glTexGeni
    ld	$a0,8($sp)
    li	$a2,9216
    jalr	$t9
    li	$a1,9472
    # Line 208
    la	$t9,glTexGenfv
    ld	$a0,8($sp)
    addiu	$a2,$s0,16
    jalr	$t9
    li	$a1,9474
    # Line 209
    la	$t9,__iglooPopMatrix
    jalr	$t9
    nop
    b	.L0f123510
    # Line 222
    lw	$a2,4($s0)
.L0f123758:
    # Line 212
    la	$t9,glTexGeni
    ld	$a0,8($sp)
    li	$a2,9217
    jalr	$t9
    li	$a1,9472
    # Line 213
    la	$t9,glTexGenfv
    ld	$a0,8($sp)
    addiu	$a2,$s0,16
    jalr	$t9
    li	$a1,9473
    b	.L0f123510
    # Line 222
    lw	$a2,4($s0)
.L0f123788:
    ld	$a0,8($sp)
    # Line 216
    li	$a2,9218
    jalr	$t9
    li	$a1,9472
    b	.L0f123510
    # Line 222
    lw	$a2,4($s0)
.end __iglooRebindTGen

