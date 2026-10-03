# Source: ../igloo/acbuf.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/acbuf.c -o acbuf.T
# Total Functions: 5

.text

# Function: gl_i_acbuf
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f093014 - 0x0f093074 (Size: 96 bytes, Frame: 48)
.globl gl_i_acbuf
.ent gl_i_acbuf
gl_i_acbuf:
    # Line 34
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    mov.s	$f4,$f13
    beqz	$at,.L0f093054
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a0,16($sp)
    jalr	$t9
    sdc1	$f4,8($sp)
    ldc1	$f4,8($sp)
    ld	$a0,16($sp)
.L0f093054:
    la	$t9,sub_0f090000
    addiu	$t9,$t9,12636
    bal gl_n_acbuf
    mov.s	$f13,$f4
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_acbuf

# Function: gl_c_acbuf
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f093074 - 0x0f0930f8 (Size: 132 bytes, Frame: 192)
.globl gl_c_acbuf
.ent gl_c_acbuf
gl_c_acbuf:
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,468 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21168($gp)
    mov.s	$f30,$f13
    sd	$s8,24($sp)
    beqz	$at,.L0f0930dc
    move	$s8,$a0
.L0f0930a4:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f30,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_acbuf
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s8,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0930dc:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28360
    li	$a1,1
    b	.L0f0930a4
    sw	$a1,-21168($gp)
.end gl_c_acbuf

# Function: gl_n_acbuf
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f0930f8 - 0x0f09315c (Size: 100 bytes, Frame: 48)
.globl gl_n_acbuf
.ent gl_n_acbuf
gl_n_acbuf:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,336 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f093130
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f093130:
    la	$t9,sub_0f090000
    lwc1	$f13,4($s8)
    addiu	$t9,$t9,12636
    bal gl_n_acbuf
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_acbuf

# Function: __igloo_acbuf
# Declared: Line 59 (Source lines: 60-158)
# Address: 0x0f09315c - 0x0f0934d4 (Size: 888 bytes, Frame: 192)
.ent __igloo_acbuf
__igloo_acbuf:
    # Line 60
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    move	$s0,$a0
    sdc1	$f13,8($sp)
    # Line 64
    la	$t9,__iglooGetGraphicsType
    sd	$s1,32($sp)
    # Line 61
    la	$s1,gl_wstatep
    sd	$ra,24($sp)
    # Line 64
    jalr	$t9
    # Line 61
    lw	$s1,0($s1)
    # Line 65
    la	$t9,__iglooGetVisualInfo
    jalr	$t9
    sd	$v0,16($sp)
    # Line 67
    lw	$a0,276($s1)
    lw	$at,36($a0)
    # Line 99
    lwc1	$f5,_lit_c3800000
    # Line 67
    beqz	$at,.L0f0931c0
    li	$a1,16
    lw	$a3,56($v0)
    # Line 83
    li	$v0,1
    # Line 67
    beqz	$a3,.L0f0931c0
    # Line 71
    ld	$at,16($sp)
    # Line 67
    lw	$v1,56($a0)
    beq	$v1,$a1,.L0f0931ec
    # Line 71
    li	$a0,2
.L0f0931c0:
    # Line 70
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,98
    jalr	$t9
    addiu	$a2,$a2,8224
    ld	$ra,24($sp)
    # Line 71
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0931ec:
    beq	$at,$a0,.L0f093498
    # Line 86
    li	$v1,5
    # Line 83
    addiu	$s1,$a3,-1
    sllv	$s1,$v0,$s1
    # Line 86
    beqz	$s0,.L0f09324c
    # Line 83
    addiu	$s1,$s1,-1
    # Line 86
    beq	$s0,$v0,.L0f09327c
    ldc1	$f4,8($sp)
    beq	$s0,$a0,.L0f093294
    li	$v0,3
    beq	$s0,$v0,.L0f0932e4
    li	$at,4
    beq	$s0,$at,.L0f0934c0
    # Line 145
    la	$t9,glAccum
    # Line 86
    beq	$s0,$v1,.L0f0932b4
    # Line 156
    la	$t9,perror
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,8248
.L0f093238:
    ld	$ra,24($sp)
.L0f09323c:
    # Line 158
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09324c:
    # Line 89
    ldc1	$f4,8($sp)
    mtc1	$s1,$f5
    nop
    cvt.s.w	$f5,$f5
    div.s	$f4,$f4,$f5
    lwc1	$f5,_lit_bf800000
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0f093304
    # Line 90
    lwc1	$f6,_lit_3f800000
    b	.L0f09331c
    mov.s	$f12,$f5
.L0f09327c:
    # Line 99
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0f093344
    lwc1	$f6,_lit_43800000
    b	.L0f09335c
    mov.s	$f4,$f5
.L0f093294:
    # Line 108
    lwc1	$f5,_lit_c3800000
    ldc1	$f4,8($sp)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0f093388
    lwc1	$f6,_lit_43800000
    b	.L0f0933a0
    mov.s	$f4,$f5
.L0f0932b4:
    # Line 152
    mtc1	$s1,$f14
    lwc1	$f15,_lit_3b800000
    ldc1	$f13,8($sp)
    cvt.s.w	$f14,$f14
    mul.s	$f13,$f13,$f15
    mul.s	$f14,$f14,$f15
    la	$t9,glAccum
    li	$a0,260
    jalr	$t9
    div.s	$f13,$f13,$f14
    b	.L0f09323c
    ld	$ra,24($sp)
.L0f0932e4:
    # Line 117
    mtc1	$zero,$f5
    ldc1	$f4,8($sp)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0f0933cc
    mov.s	$f0,$f5
    b	.L0f0933ec
    sdc1	$f5,0($sp)
.L0f093304:
    # Line 90
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0f093318
    mov.s	$f5,$f4
    mov.s	$f5,$f6
.L0f093318:
    mov.s	$f12,$f5
.L0f09331c:
    # Line 92
    la	$t9,glClearAccum
    mov.s	$f13,$f12
    mov.s	$f14,$f12
    jalr	$t9
    mov.s	$f15,$f12
    # Line 93
    la	$t9,glClear
    jalr	$t9
    li	$a0,512
    b	.L0f09323c
    ld	$ra,24($sp)
.L0f093344:
    # Line 99
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0f093358
    mov.s	$f5,$f4
    mov.s	$f5,$f6
.L0f093358:
    mov.s	$f4,$f5
.L0f09335c:
    # Line 102
    mtc1	$s1,$f13
    nop
    cvt.s.w	$f13,$f13
    lwc1	$f14,_lit_3b800000
    mul.s	$f13,$f13,$f14
    la	$t9,glAccum
    li	$a0,256
    jalr	$t9
    div.s	$f13,$f4,$f13
    b	.L0f09323c
    ld	$ra,24($sp)
.L0f093388:
    # Line 108
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0f09339c
    mov.s	$f5,$f4
    mov.s	$f5,$f6
.L0f09339c:
    mov.s	$f4,$f5
.L0f0933a0:
    # Line 111
    mtc1	$s1,$f13
    nop
    cvt.s.w	$f13,$f13
    lwc1	$f14,_lit_3b800000
    mul.s	$f13,$f13,$f14
    la	$t9,glAccum
    li	$a0,257
    jalr	$t9
    div.s	$f13,$f4,$f13
    b	.L0f09323c
    ld	$ra,24($sp)
.L0f0933cc:
    # Line 117
    lwc1	$f6,_lit_3f800000
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0f0933e4
    mov.s	$f5,$f4
    mov.s	$f5,$f6
.L0f0933e4:
    mov.s	$f0,$f5
    sdc1	$f5,0($sp)
.L0f0933ec:
    ld	$a1,16($sp)
    # Line 124
    beq	$a1,$v0,.L0f093400
    ld	$a2,16($sp)
    li	$at,4
    bne	$a2,$at,.L0f093468
.L0f093400:
    # Line 127
    la	$t9,__iglooIsEnabled
    jalr	$t9
    li	$a0,2929
    andi	$s0,$v0,0xff
    beqz	$s0,.L0f093424
    # Line 130
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,2929
.L0f093424:
    # Line 132
    mtc1	$s1,$f14
    nop
    cvt.s.w	$f14,$f14
    lwc1	$f15,_lit_3b800000
    mul.s	$f14,$f14,$f15
    la	$t9,glAccum
    ldc1	$f13,0($sp)
    li	$a0,258
    jalr	$t9
    mul.s	$f13,$f13,$f14
    beqz	$s0,.L0f093238
    # Line 135
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2929
    b	.L0f09323c
    ld	$ra,24($sp)
.L0f093468:
    # Line 138
    mtc1	$s1,$f14
    nop
    cvt.s.w	$f14,$f14
    lwc1	$f15,_lit_3b800000
    mul.s	$f14,$f14,$f15
    la	$t9,glAccum
    ldc1	$f13,0($sp)
    li	$a0,258
    jalr	$t9
    mul.s	$f13,$f13,$f14
    b	.L0f09323c
    ld	$ra,24($sp)
.L0f093498:
    # Line 79
    la	$t9,sub_0f090000
    move	$a0,$s0
    addiu	$t9,$t9,13524
    bal gl_n_acbuf
    ldc1	$f13,8($sp)
    ld	$ra,24($sp)
    # Line 80
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0934c0:
    # Line 145
    ldc1	$f13,8($sp)
    jalr	$t9
    li	$a0,259
    b	.L0f09323c
    ld	$ra,24($sp)
.end __igloo_acbuf

# Function: __igloo_acbuf_hw
# Declared: Line 160 (Source lines: 161-325)
# Address: 0x0f0934d4 - 0x0f093adc (Size: 1544 bytes, Frame: 208)
.ent __igloo_acbuf_hw
__igloo_acbuf_hw:
    # Line 161
    addiu	$sp,$sp,-80
    # Line 162
    la	$a3,gl_wstatep
    # Line 165
    li	$v0,2
    li	$v1,3
    # Line 162
    lw	$a3,0($a3)
    # Line 169
    lwc1	$f3,_lit_3f800000
    # Line 165
    beqz	$a0,.L0f0935b0
    # Line 162
    move	$a2,$a3
    # Line 165
    li	$at,1
    beq	$a0,$at,.L0f093594
    # Line 181
    mov.s	$f4,$f13
    # Line 249
    mtc1	$zero,$f8
    # Line 165
    beq	$a0,$v0,.L0f093684
    li	$at,5
    beq	$a0,$v1,.L0f0935e0
    li	$a1,4
    beq	$a0,$a1,.L0f0939fc
    # Line 265
    mtc1	$zero,$f8
    # Line 165
    beq	$a0,$at,.L0f09354c
    # Line 265
    lwc1	$f5,_lit_3b800000
    # Line 321
    li	$a1,2
    li	$a0,110
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a2,$a2,8280
    ld	$ra,48($sp)
.L0f093544:
    # Line 325
    jr	$ra
    addiu	$sp,$sp,80
.L0f09354c:
    # Line 265
    mul.s	$f5,$f13,$f5
    c.lt.s	$f13,$f8
    lwc1	$f6,12148($a3)
    bc1f	.L0f0936b4
    mov.s	$f7,$f5
    c.lt.s	$f8,$f6
    nop
    bc1f	.L0f093a74
    lwc1	$f0,_lit_3f800000
    c.lt.s	$f0,$f6
    nop
    bc1f	.L0f0935fc
    lwc1	$f4,_lit_3f800000
    lwc1	$f1,_lit_bf800000
    # Line 271
    add.s	$f1,$f6,$f1
    div.s	$f1,$f6,$f1
    b	.L0f093604
    sdc1	$f1,8($sp)
.L0f093594:
    # Line 181
    lwc1	$f5,_lit_c3800000
    c.lt.s	$f13,$f5
    nop
    bc1f	.L0f093754
    mtc1	$zero,$f8
    b	.L0f093770
    mov.s	$f4,$f5
.L0f0935b0:
    # Line 168
    mtc1	$zero,$f2
    # Line 169
    lwc1	$f5,_lit_c3800000
    mov.s	$f4,$f13
    # Line 168
    swc1	$f2,12144($a3)
    # Line 169
    c.lt.s	$f13,$f5
    # Line 168
    swc1	$f2,12148($a2)
    # Line 169
    swc1	$f3,12152($a2)
    bc1f	.L0f093840
    swc1	$f3,12156($a2)
    sd	$ra,48($sp)
    # Line 172
    b	.L0f093860
    mov.s	$f12,$f5
.L0f0935e0:
    # Line 249
    mov.s	$f4,$f13
    c.lt.s	$f13,$f8
    nop
    bc1f	.L0f093930
    lwc1	$f3,_lit_3f800000
    b	.L0f093948
    mov.s	$f4,$f8
.L0f0935fc:
    lwc1	$f0,_lit_3f800000
    sdc1	$f0,8($sp)
.L0f093604:
    # Line 273
    lwc1	$f0,12156($a3)
    lwc1	$f13,12152($a3)
    ldc1	$f2,_lit8_3ff0000000000000
    mul.s	$f0,$f0,$f6
    cvt.d.s	$f1,$f13
    c.eq.d	$f1,$f2
    sd	$ra,48($sp)
    sd	$a2,16($sp)
    bc1f	.L0f093a0c
    div.s	$f4,$f4,$f0
.L0f09362c:
    # Line 280
    la	$t9,glAccum
    mul.s	$f13,$f5,$f4
    jalr	$t9
    li	$a0,260
    # Line 282
    ld	$at,16($sp)
    lwc1	$f3,_lit_bf800000
    lwc1	$f0,12144($at)
    add.s	$f0,$f0,$f3
    lwc1	$f1,12152($at)
    div.s	$f0,$f0,$f1
    # Line 288
    lwc1	$f2,12156($at)
    ldc1	$f1,8($sp)
    mul.s	$f2,$f2,$f1
    # Line 281
    lwc1	$f1,12148($at)
    ld	$ra,48($sp)
    add.s	$f1,$f1,$f3
    # Line 288
    swc1	$f2,12156($at)
    # Line 282
    swc1	$f0,12144($at)
    lwc1	$f0,_lit_3f800000
    # Line 281
    swc1	$f1,12148($at)
    # Line 289
    b	.L0f093544
    swc1	$f0,12152($at)
.L0f093684:
    # Line 238
    lwc1	$f1,_lit_3f800000
    # Line 239
    lwc1	$f5,_lit_c3800000
    # Line 238
    swc1	$f1,12144($a3)
    # Line 239
    mov.s	$f4,$f13
    c.lt.s	$f13,$f5
    swc1	$f1,12156($a2)
    swc1	$f1,12152($a2)
    bc1f	.L0f0939c8
    # Line 238
    swc1	$f1,12148($a2)
    sd	$ra,48($sp)
    # Line 242
    b	.L0f0939e8
    mov.s	$f13,$f5
.L0f0936b4:
    # Line 294
    lwc1	$f3,_lit_3f800000
    add.s	$f8,$f6,$f3
    swc1	$f8,12148($a3)
    # Line 295
    lwc1	$f9,12152($a2)
    lwc1	$f2,12144($a2)
    lwc1	$f8,12148($a2)
    mul.s	$f2,$f2,$f9
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f8
    c.lt.d	$f0,$f1
    add.s	$f2,$f2,$f3
    bc1f	.L0f093738
    swc1	$f2,12144($a2)
    # Line 302
    lwc1	$f0,_lit_bf800000
    add.s	$f0,$f8,$f0
    div.s	$f0,$f0,$f8
    mul.s	$f0,$f0,$f9
    # Line 304
    lwc1	$f13,12156($a2)
    mul.s	$f13,$f13,$f0
    lwc1	$f4,_lit_3f800000
    # Line 305
    c.lt.s	$f13,$f4
    swc1	$f4,12156($a2)
    bc1t	.L0f093a4c
    # Line 303
    sub.s	$f4,$f4,$f0
    lwc1	$f1,_lit_3f800000
    # Line 308
    c.lt.s	$f1,$f13
    nop
    bc1fl	.L0f093734
    sd	$ra,48($sp)
    # Line 311
    div.s	$f4,$f4,$f13
    # Line 310
    swc1	$f13,12156($a2)
.L0f093730:
    sd	$ra,48($sp)
.L0f093734:
    # Line 313
    mul.s	$f7,$f5,$f4
.L0f093738:
    # Line 316
    la	$t9,glAccum
    mov.s	$f13,$f7
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,260
    b	.L0f093544
    ld	$ra,48($sp)
.L0f093754:
    # Line 181
    lwc1	$f6,_lit_43800000
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0f09376c
    mov.s	$f5,$f4
    mov.s	$f5,$f6
.L0f09376c:
    mov.s	$f4,$f5
.L0f093770:
    c.lt.s	$f13,$f8
    mov.s	$f5,$f4
    mov.s	$f7,$f4
    bc1f	.L0f093888
    lwc1	$f6,12148($a3)
    c.lt.s	$f8,$f6
    nop
    bc1f	.L0f093ac0
    lwc1	$f2,_lit_3f800000
    c.lt.s	$f2,$f6
    nop
    bc1f	.L0f0937b4
    lwc1	$f3,_lit_bf800000
    # Line 187
    add.s	$f3,$f6,$f3
    div.s	$f3,$f6,$f3
    b	.L0f0937bc
    sdc1	$f3,0($sp)
.L0f0937b4:
    lwc1	$f0,_lit_3f800000
    sdc1	$f0,0($sp)
.L0f0937bc:
    # Line 189
    lwc1	$f0,12156($a3)
    lwc1	$f13,12152($a3)
    ldc1	$f2,_lit8_3ff0000000000000
    mul.s	$f0,$f0,$f6
    cvt.d.s	$f1,$f13
    sd	$ra,48($sp)
    c.eq.d	$f1,$f2
    lwc1	$f4,_lit_3f800000
    sd	$a2,16($sp)
    bc1f	.L0f093a2c
    div.s	$f4,$f4,$f0
.L0f0937e8:
    # Line 196
    la	$t9,glAccum
    mul.s	$f13,$f5,$f4
    jalr	$t9
    li	$a0,256
    # Line 198
    ld	$v1,16($sp)
    lwc1	$f3,_lit_bf800000
    lwc1	$f0,12144($v1)
    add.s	$f0,$f0,$f3
    lwc1	$f1,12152($v1)
    div.s	$f0,$f0,$f1
    # Line 197
    lwc1	$f2,12148($v1)
    add.s	$f2,$f2,$f3
    # Line 204
    ldc1	$f3,0($sp)
    lwc1	$f1,12156($v1)
    mul.s	$f1,$f1,$f3
    lwc1	$f3,_lit_3f800000
    ld	$ra,48($sp)
    # Line 197
    swc1	$f2,12148($v1)
    # Line 205
    swc1	$f3,12152($v1)
    # Line 204
    swc1	$f1,12156($v1)
    # Line 205
    b	.L0f093544
    # Line 198
    swc1	$f0,12144($v1)
.L0f093840:
    # Line 172
    lwc1	$f6,_lit_43800000
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0f093858
    mov.s	$f5,$f4
    mov.s	$f5,$f6
.L0f093858:
    sd	$ra,48($sp)
    mov.s	$f12,$f5
.L0f093860:
    # Line 174
    la	$t9,glClearAccum
    mov.s	$f13,$f12
    mov.s	$f14,$f12
    jalr	$t9
    mov.s	$f15,$f12
    # Line 175
    la	$t9,glClear
    jalr	$t9
    li	$a0,512
    b	.L0f093544
    ld	$ra,48($sp)
.L0f093888:
    # Line 210
    lwc1	$f2,_lit_3f800000
    add.s	$f3,$f6,$f2
    swc1	$f3,12148($a3)
    # Line 211
    lwc1	$f9,12152($a2)
    lwc1	$f1,12144($a2)
    lwc1	$f8,12148($a2)
    mul.s	$f1,$f1,$f9
    ldc1	$f3,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f8
    c.lt.d	$f3,$f0
    add.s	$f1,$f1,$f2
    bc1f	.L0f09390c
    swc1	$f1,12144($a2)
    # Line 218
    lwc1	$f0,_lit_bf800000
    add.s	$f0,$f8,$f0
    div.s	$f0,$f0,$f8
    mul.s	$f0,$f0,$f9
    # Line 220
    lwc1	$f13,12156($a2)
    mul.s	$f13,$f13,$f0
    lwc1	$f4,_lit_3f800000
    # Line 221
    c.lt.s	$f13,$f4
    swc1	$f4,12156($a2)
    bc1t	.L0f093a90
    # Line 219
    sub.s	$f4,$f4,$f0
    lwc1	$f1,_lit_3f800000
    # Line 224
    c.lt.s	$f1,$f13
    nop
    bc1fl	.L0f093908
    sd	$ra,48($sp)
    # Line 227
    div.s	$f4,$f4,$f13
    # Line 226
    swc1	$f13,12156($a2)
.L0f093904:
    sd	$ra,48($sp)
.L0f093908:
    # Line 229
    mul.s	$f7,$f5,$f4
.L0f09390c:
    # Line 232
    mov.s	$f13,$f7
    li	$a0,256
    la	$t9,glAccum
    lwc1	$f2,_lit_3f800000
    sd	$ra,48($sp)
    jalr	$t9
    # Line 231
    swc1	$f2,12152($a2)
    b	.L0f093544
    ld	$ra,48($sp)
.L0f093930:
    # Line 249
    c.lt.s	$f3,$f4
    nop
    bc1f	.L0f093944
    mov.s	$f5,$f4
    lwc1	$f5,_lit_3f800000
.L0f093944:
    mov.s	$f4,$f5
.L0f093948:
    lwc1	$f6,12144($a3)
    c.eq.s	$f6,$f8
    nop
    bc1t	.L0f093964
    mov.s	$f5,$f4
    # Line 250
    b	.L0f093968
    mul.s	$f4,$f6,$f5
.L0f093964:
    mov.s	$f4,$f5
.L0f093968:
    # Line 252
    lwc1	$f6,12152($a3)
    mul.s	$f6,$f6,$f4
    lwc1	$f5,12156($a3)
    mul.s	$f5,$f5,$f6
    lwc1	$f6,_lit_c0800000
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0f093998
    # Line 256
    lwc1	$f6,_lit_407fffd6
    sd	$ra,48($sp)
    b	.L0f0939b4
    mov.s	$f13,$f6
.L0f093998:
    c.lt.s	$f6,$f5
    nop
    bc1f	.L0f0939ac
    mov.s	$f4,$f5
    mov.s	$f4,$f6
.L0f0939ac:
    sd	$ra,48($sp)
    mov.s	$f13,$f4
.L0f0939b4:
    # Line 257
    la	$t9,glAccum
    jalr	$t9
    li	$a0,258
    b	.L0f093544
    ld	$ra,48($sp)
.L0f0939c8:
    # Line 242
    lwc1	$f6,_lit_43800000
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0f0939e0
    mov.s	$f5,$f4
    mov.s	$f5,$f6
.L0f0939e0:
    sd	$ra,48($sp)
    mov.s	$f13,$f5
.L0f0939e8:
    # Line 244
    la	$t9,glAccum
    jalr	$t9
    li	$a0,257
    b	.L0f093544
    ld	$ra,48($sp)
.L0f0939fc:
    # Line 261
    lwc1	$f0,12152($a3)
    mul.s	$f0,$f0,$f13
    # Line 262
    b	.L0f093544
    # Line 261
    swc1	$f0,12152($a3)
.L0f093a0c:
    # Line 276
    la	$t9,glAccum
    sdc1	$f4,24($sp)
    sdc1	$f5,40($sp)
    jalr	$t9
    li	$a0,259
    ldc1	$f5,40($sp)
    b	.L0f09362c
    ldc1	$f4,24($sp)
.L0f093a2c:
    # Line 192
    la	$t9,glAccum
    sdc1	$f4,24($sp)
    sdc1	$f5,32($sp)
    jalr	$t9
    li	$a0,259
    ldc1	$f5,32($sp)
    b	.L0f0937e8
    ldc1	$f4,24($sp)
.L0f093a4c:
    sdc1	$f5,40($sp)
    # Line 308
    la	$t9,glAccum
    sdc1	$f4,24($sp)
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,259
    ldc1	$f4,24($sp)
    ldc1	$f5,40($sp)
    b	.L0f093730
    ld	$ra,48($sp)
.L0f093a74:
    # Line 291
    la	$t9,glAccum
    mov.s	$f13,$f5
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,260
    b	.L0f093544
    ld	$ra,48($sp)
.L0f093a90:
    sd	$a2,16($sp)
    sdc1	$f5,32($sp)
    # Line 224
    la	$t9,glAccum
    sdc1	$f4,24($sp)
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,259
    ldc1	$f4,24($sp)
    ldc1	$f5,32($sp)
    ld	$a2,16($sp)
    b	.L0f093904
    ld	$ra,48($sp)
.L0f093ac0:
    # Line 207
    la	$t9,glAccum
    mov.s	$f13,$f5
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,256
    b	.L0f093544
    ld	$ra,48($sp)
.end __igloo_acbuf_hw

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3b800000:
    .word 0x3b800000
_lit_3f800000:
    .word 0x3f800000
_lit_407fffd6:
    .word 0x407fffd6
_lit_43800000:
    .word 0x43800000
_lit_bf800000:
    .word 0xbf800000
_lit_c0800000:
    .word 0xc0800000
_lit_c3800000:
    .word 0xc3800000

