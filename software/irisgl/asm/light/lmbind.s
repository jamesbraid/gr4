# Source: ../igloo/light/lmbind.c
# Category: light
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/light/lmbind.c -o lmbind.T
# Total Functions: 16

.text

# Function: OglMaterialWrapperfv
# Declared: Line 116 (Source lines: 117-160)
# Address: 0x0f0d9aa4 - 0x0f0da4fc (Size: 2648 bytes, Frame: 192)
.globl OglMaterialWrapperfv
.ent OglMaterialWrapperfv
OglMaterialWrapperfv:
    # Line 117
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    lui	$a5,0xfff6
    addiu	$a5,$a5,-26716
    addu	$gp,$t9,$a5
    # Line 118
    la	$a4,gl_wstatep
    # Line 143
    li	$v1,4610
    li	$a3,5633
    # Line 118
    lw	$a4,0($a4)
    # Line 129
    li	$v0,4608
    # Line 118
    li	$a6,1
    lw	$at,3160($a4)
    sd	$s0,8($sp)
    # Line 117
    move	$s0,$a2
    # Line 118
    bne	$at,$a6,.L0f0d9b44
    move	$a5,$a4
    lw	$a7,3164($a4)
    # Line 143
    li	$at,4608
    # Line 118
    beq	$a7,$a6,.L0f0d9b60
    li	$a7,5632
    # Line 143
    beq	$a7,$a1,.L0f0d9ba0
    # Line 142
    lw	$a2,11392($a4)
    # Line 143
    beq	$a1,$at,.L0f0d9c0c
    li	$v0,4609
    beq	$a1,$v0,.L0f0d9c78
    # Line 146
    li	$at,1028
    # Line 143
    beql	$a1,$v1,.L0f0d9ce0
    # Line 147
    li	$a3,1028
    # Line 143
    beq	$a1,$a3,.L0f0d9d48
    li	$at,5635
    beq	$a1,$at,.L0f0d9d7c
.L0f0d9b20:
    # Line 153
    la	$t9,glMaterialfv
.L0f0d9b24:
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$ra,24($sp)
    ld	$s0,8($sp)
.L0f0d9b38:
    ld	$gp,16($sp)
    # Line 160
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d9b44:
    # Line 156
    la	$t9,glMaterialfv
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$ra,24($sp)
    b	.L0f0d9b38
    ld	$s0,8($sp)
.L0f0d9b60:
    # Line 129
    li	$at,5633
    beq	$a7,$a1,.L0f0d9e98
    li	$a3,4610
    beq	$a1,$v0,.L0f0d9f68
    li	$v1,4609
    beql	$a1,$v1,.L0f0da008
    # Line 132
    li	$at,1028
    # Line 129
    beql	$a1,$a3,.L0f0da0cc
    # Line 133
    li	$at,1028
    # Line 129
    beq	$a1,$at,.L0f0da138
    li	$v0,5635
    beq	$a1,$v0,.L0f0da1d0
    # Line 135
    li	$at,1028
.L0f0d9b94:
    # Line 139
    sw	$a6,11480($a5)
.L0f0d9b98:
    b	.L0f0d9b38
    ld	$s0,8($sp)
.L0f0d9ba0:
    # Line 144
    li	$v1,1028
    beq	$a0,$v1,.L0f0d9dd8
    li	$a3,1029
    beq	$a0,$a3,.L0f0d9e68
    li	$at,1032
    bne	$a0,$at,.L0f0d9b24
    # Line 153
    la	$t9,glMaterialfv
    # Line 144
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,48($a4)
    lwc1	$f2,0($a5)
    swc1	$f2,128($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,52($a4)
    lwc1	$f0,4($a5)
    swc1	$f0,132($a4)
    lwc1	$f3,8($a5)
    swc1	$f3,56($a4)
    lwc1	$f2,8($a5)
    swc1	$f2,136($a4)
    lwc1	$f1,12($a5)
    swc1	$f1,60($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,140($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9c0c:
    # Line 145
    li	$v0,1028
    beq	$a0,$v0,.L0f0d9e08
    li	$v1,1029
    beq	$a0,$v1,.L0f0d9f38
    li	$a3,1032
    bne	$a0,$a3,.L0f0d9b24
    # Line 153
    la	$t9,glMaterialfv
    # Line 145
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,64($a4)
    lwc1	$f2,0($a5)
    swc1	$f2,144($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,68($a4)
    lwc1	$f0,4($a5)
    swc1	$f0,148($a4)
    lwc1	$f3,8($a5)
    swc1	$f3,72($a4)
    lwc1	$f2,8($a5)
    swc1	$f2,152($a4)
    lwc1	$f1,12($a5)
    swc1	$f1,76($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,156($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9c78:
    # Line 146
    beq	$a0,$at,.L0f0d9e38
    li	$v0,1029
    beq	$a0,$v0,.L0f0d9fd8
    li	$v1,1032
    bne	$a0,$v1,.L0f0d9b24
    # Line 153
    la	$t9,glMaterialfv
    # Line 146
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,80($a4)
    lwc1	$f2,0($a5)
    swc1	$f2,160($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,84($a4)
    lwc1	$f0,4($a5)
    swc1	$f0,164($a4)
    lwc1	$f3,8($a5)
    swc1	$f3,88($a4)
    lwc1	$f2,8($a5)
    swc1	$f2,168($a4)
    lwc1	$f1,12($a5)
    swc1	$f1,92($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,172($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9ce0:
    # Line 147
    beq	$a0,$a3,.L0f0d9f08
    li	$at,1029
    beq	$a0,$at,.L0f0da09c
    li	$v0,1032
    bne	$a0,$v0,.L0f0d9b24
    # Line 153
    la	$t9,glMaterialfv
    # Line 147
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,96($a4)
    lwc1	$f2,0($a5)
    swc1	$f2,176($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,100($a4)
    lwc1	$f0,4($a5)
    swc1	$f0,180($a4)
    lwc1	$f3,8($a5)
    swc1	$f3,104($a4)
    lwc1	$f2,8($a5)
    swc1	$f2,184($a4)
    lwc1	$f1,12($a5)
    swc1	$f1,108($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,188($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9d48:
    # Line 148
    li	$v1,1028
    beq	$a0,$v1,.L0f0da23c
    li	$a3,1029
    beq	$a0,$a3,.L0f0da24c
    li	$at,1032
    bne	$a0,$at,.L0f0d9b24
    # Line 153
    la	$t9,glMaterialfv
    # Line 148
    lwc1	$f1,0($s0)
    swc1	$f1,112($a2)
    lwc1	$f0,0($s0)
    sd	$ra,24($sp)
    b	.L0f0d9b20
    swc1	$f0,192($a2)
.L0f0d9d7c:
    # Line 149
    li	$v0,1028
    beq	$a0,$v0,.L0f0da074
    li	$v1,1029
    beq	$a0,$v1,.L0f0da1a8
    li	$a3,1032
    bne	$a0,$a3,.L0f0d9b24
    # Line 153
    la	$t9,glMaterialfv
    # Line 149
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,116($a4)
    lwc1	$f2,0($a5)
    swc1	$f2,196($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,120($a4)
    lwc1	$f0,4($a5)
    swc1	$f0,200($a4)
    lwc1	$f3,8($a5)
    swc1	$f3,124($a4)
    lwc1	$f2,8($a5)
    swc1	$f2,204($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9dd8:
    # Line 144
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,48($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,52($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,56($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,60($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9e08:
    # Line 145
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,64($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,68($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,72($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,76($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9e38:
    # Line 146
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,80($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,84($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,88($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,92($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9e68:
    # Line 144
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,128($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,132($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,136($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,140($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9e98:
    # Line 130
    li	$at,1028
    beq	$a0,$at,.L0f0da25c
    li	$v0,1029
    beq	$a0,$v0,.L0f0da294
    li	$v1,1032
    bnel	$a0,$v1,.L0f0d9b98
    # Line 139
    sw	$a6,11480($a5)
    sd	$a5,0($sp)
    # Line 130
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    move	$a1,$s0
    la	$t9,putData
    ld	$a2,0($sp)
    li	$a0,4
    jalr	$t9
    sw	$v0,11428($a2)
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11452($a5)
    ori	$a3,$a3,0x1
    ori	$a3,$a3,0x40
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0d9f08:
    # Line 147
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,96($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,100($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,104($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,108($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9f38:
    # Line 145
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,144($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,148($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,152($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,156($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0d9f68:
    # Line 131
    li	$at,1028
    beq	$a0,$at,.L0f0da2cc
    li	$v0,1029
    beq	$a0,$v0,.L0f0da304
    li	$v1,1032
    bnel	$a0,$v1,.L0f0d9b98
    # Line 139
    sw	$a6,11480($a5)
    sd	$a5,0($sp)
    # Line 131
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    move	$a1,$s0
    la	$t9,putData
    ld	$a2,0($sp)
    li	$a0,4
    jalr	$t9
    sw	$v0,11432($a2)
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11456($a5)
    ori	$a3,$a3,0x2
    ori	$a3,$a3,0x80
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0d9fd8:
    # Line 146
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f3,0($a5)
    swc1	$f3,160($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,164($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,168($a4)
    lwc1	$f0,12($a5)
    swc1	$f0,172($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0da008:
    # Line 132
    beq	$a0,$at,.L0f0da33c
    li	$v0,1029
    beq	$a0,$v0,.L0f0da374
    li	$v1,1032
    bnel	$a0,$v1,.L0f0d9b98
    # Line 139
    sw	$a6,11480($a5)
    sd	$a5,0($sp)
    # Line 132
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    move	$a1,$s0
    la	$t9,putData
    ld	$a2,0($sp)
    li	$a0,4
    jalr	$t9
    sw	$v0,11436($a2)
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11460($a5)
    ori	$a3,$a3,0x4
    ori	$a3,$a3,0x100
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0da074:
    # Line 149
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f2,0($a5)
    swc1	$f2,116($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,120($a4)
    lwc1	$f0,8($a5)
    swc1	$f0,124($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0da09c:
    # Line 147
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f2,0($a5)
    swc1	$f2,176($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,180($a4)
    lwc1	$f0,8($a5)
    swc1	$f0,184($a4)
    lwc1	$f3,12($a5)
    swc1	$f3,188($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0da0cc:
    # Line 133
    beq	$a0,$at,.L0f0da3ac
    li	$v0,1029
    beq	$a0,$v0,.L0f0da3e4
    li	$v1,1032
    bnel	$a0,$v1,.L0f0d9b98
    # Line 139
    sw	$a6,11480($a5)
    sd	$a5,0($sp)
    # Line 133
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    move	$a1,$s0
    la	$t9,putData
    ld	$a2,0($sp)
    li	$a0,4
    jalr	$t9
    sw	$v0,11440($a2)
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11464($a5)
    ori	$a3,$a3,0x8
    ori	$a3,$a3,0x200
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0da138:
    # Line 134
    li	$at,1028
    beq	$a0,$at,.L0f0da41c
    li	$v0,1029
    beq	$a0,$v0,.L0f0da454
    li	$v1,1032
    bnel	$a0,$v1,.L0f0d9b98
    # Line 139
    sw	$a6,11480($a5)
    sd	$a5,0($sp)
    # Line 134
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,1
    move	$a1,$s0
    la	$t9,putData
    ld	$a2,0($sp)
    li	$a0,1
    jalr	$t9
    sw	$v0,11444($a2)
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11468($a5)
    ori	$a3,$a3,0x10
    ori	$a3,$a3,0x400
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0da1a8:
    # Line 149
    move	$a5,$s0
    move	$a4,$a2
    lwc1	$f1,0($a5)
    swc1	$f1,196($a4)
    lwc1	$f0,4($a5)
    swc1	$f0,200($a4)
    lwc1	$f3,8($a5)
    swc1	$f3,204($a4)
    b	.L0f0d9b20
    sd	$ra,24($sp)
.L0f0da1d0:
    # Line 135
    beq	$a0,$at,.L0f0da48c
    li	$v0,1029
    beq	$a0,$v0,.L0f0da4c4
    li	$v1,1032
    bnel	$a0,$v1,.L0f0d9b98
    # Line 139
    sw	$a6,11480($a5)
    sd	$a5,0($sp)
    # Line 135
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,3
    move	$a1,$s0
    la	$t9,putData
    ld	$a2,0($sp)
    li	$a0,3
    jalr	$t9
    sw	$v0,11448($a2)
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11472($a5)
    ori	$a3,$a3,0x20
    ori	$a3,$a3,0x800
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0da23c:
    # Line 148
    lwc1	$f2,0($s0)
    sd	$ra,24($sp)
    b	.L0f0d9b20
    swc1	$f2,112($a2)
.L0f0da24c:
    lwc1	$f3,0($s0)
    sd	$ra,24($sp)
    b	.L0f0d9b20
    swc1	$f3,192($a2)
.L0f0da25c:
    sd	$a5,0($sp)
    # Line 130
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a4,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11428($a5)
    ori	$a4,$a4,0x1
    b	.L0f0d9b94
    sw	$a4,11476($a5)
.L0f0da294:
    sd	$a5,0($sp)
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    lw	$ra,11476($a5)
    li	$a6,1
    sw	$v0,11452($a5)
    ori	$ra,$ra,0x40
    sw	$ra,11476($a5)
    b	.L0f0d9b94
    ld	$ra,24($sp)
.L0f0da2cc:
    sd	$a5,0($sp)
    # Line 131
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    li	$a6,1
    lw	$at,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11432($a5)
    ori	$at,$at,0x2
    b	.L0f0d9b94
    sw	$at,11476($a5)
.L0f0da304:
    sd	$a5,0($sp)
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    li	$a6,1
    lw	$v1,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11456($a5)
    ori	$v0,$v1,0x80
    b	.L0f0d9b94
    sw	$v0,11476($a5)
.L0f0da33c:
    sd	$a5,0($sp)
    # Line 132
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11436($a5)
    ori	$a3,$a3,0x4
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0da374:
    sd	$a5,0($sp)
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a4,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11460($a5)
    ori	$a4,$a4,0x100
    b	.L0f0d9b94
    sw	$a4,11476($a5)
.L0f0da3ac:
    sd	$a5,0($sp)
    # Line 133
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    lw	$ra,11476($a5)
    li	$a6,1
    sw	$v0,11440($a5)
    ori	$ra,$ra,0x8
    sw	$ra,11476($a5)
    b	.L0f0d9b94
    ld	$ra,24($sp)
.L0f0da3e4:
    sd	$a5,0($sp)
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,4
    ld	$a5,0($sp)
    li	$a6,1
    lw	$at,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11464($a5)
    ori	$at,$at,0x200
    b	.L0f0d9b94
    sw	$at,11476($a5)
.L0f0da41c:
    sd	$a5,0($sp)
    # Line 134
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,1
    ld	$a5,0($sp)
    li	$a6,1
    lw	$v1,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11444($a5)
    ori	$v0,$v1,0x10
    b	.L0f0d9b94
    sw	$v0,11476($a5)
.L0f0da454:
    sd	$a5,0($sp)
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,1
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a3,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11468($a5)
    ori	$a3,$a3,0x400
    b	.L0f0d9b94
    sw	$a3,11476($a5)
.L0f0da48c:
    sd	$a5,0($sp)
    # Line 135
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,3
    ld	$a5,0($sp)
    li	$a6,1
    lw	$a4,11476($a5)
    ld	$ra,24($sp)
    sw	$v0,11448($a5)
    ori	$a4,$a4,0x20
    b	.L0f0d9b94
    sw	$a4,11476($a5)
.L0f0da4c4:
    sd	$a5,0($sp)
    la	$t9,putData
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,3
    ld	$a5,0($sp)
    lw	$ra,11476($a5)
    li	$a6,1
    sw	$v0,11472($a5)
    ori	$ra,$ra,0x800
    sw	$ra,11476($a5)
    b	.L0f0d9b94
    ld	$ra,24($sp)
.end OglMaterialWrapperfv

# Function: __iglooSetOglMaterial
# Declared: Line 162 (Source lines: 163-194)
# Address: 0x0f0da4fc - 0x0f0da68c (Size: 400 bytes, Frame: 192)
.globl __iglooSetOglMaterial
.ent __iglooSetOglMaterial
__iglooSetOglMaterial:
    # Line 163
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-29364 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 169
    lwc1	$f0,_lit_3f800000
    swc1	$f0,12($sp)
    lw	$at,4100($zero)
    lw	$at,20($at)
    sd	$ra,40($sp)
    sd	$s0,16($sp)
    lw	$at,16($at)
    # Line 163
    move	$s0,$a1
    sd	$s1,24($sp)
    # Line 169
    beqz	$at,.L0f0da61c
    # Line 163
    move	$s1,$a0
    # Line 171
    la	$t9,OglMaterialWrapperfv
    move	$a0,$s1
    addiu	$a2,$s0,24
    bal OglMaterialWrapperfv
    li	$a1,4608
    # Line 172
    la	$t9,OglMaterialWrapperfv
    move	$a0,$s1
    addiu	$a2,$s0,40
    bal OglMaterialWrapperfv
    li	$a1,4609
    # Line 173
    la	$t9,OglMaterialWrapperfv
    move	$a0,$s1
    addiu	$a2,$s0,8
    bal OglMaterialWrapperfv
    li	$a1,5632
    lw	$v1,72($s0)
    beqz	$v1,.L0f0da5d4
    # Line 180
    la	$t9,OglMaterialWrapperfv
    move	$a0,$s1
    addiu	$a2,$s0,56
    bal OglMaterialWrapperfv
    li	$a1,4610
    # Line 181
    lw	$a0,72($s0)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 182
    addiu	$a2,$sp,0
    la	$t9,OglMaterialWrapperfv
    li	$a1,5633
    move	$a0,$s1
    bal OglMaterialWrapperfv
    # Line 181
    swc1	$f1,0($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s0,16($sp)
.L0f0da5c8:
    ld	$gp,32($sp)
    # Line 194
    jr	$ra
    addiu	$sp,$sp,64
.L0f0da5d4:
    # Line 176
    addiu	$a2,$sp,0
    li	$a1,4610
    move	$a0,$s1
    # Line 175
    mtc1	$zero,$f2
    ld	$s0,16($sp)
    # Line 176
    la	$t9,OglMaterialWrapperfv
    # Line 175
    swc1	$f2,8($sp)
    swc1	$f2,4($sp)
    # Line 176
    bal OglMaterialWrapperfv
    # Line 175
    swc1	$f2,0($sp)
    # Line 177
    la	$t9,OglMaterialWrapperfv
    move	$a0,$s1
    addiu	$a2,$sp,12
    bal OglMaterialWrapperfv
    li	$a1,5633
    ld	$ra,40($sp)
    b	.L0f0da5c8
    ld	$s1,24($sp)
.L0f0da61c:
    # Line 189
    lwc1	$f5,76($s0)
    swc1	$f5,0($sp)
    lwc1	$f4,80($s0)
    # Line 190
    addiu	$a2,$sp,0
    li	$a1,5635
    # Line 189
    swc1	$f4,4($sp)
    # Line 190
    la	$t9,OglMaterialWrapperfv
    # Line 189
    lwc1	$f3,84($s0)
    # Line 190
    move	$a0,$s1
    bal OglMaterialWrapperfv
    # Line 189
    swc1	$f3,8($sp)
    # Line 190
    lw	$a0,72($s0)
    ld	$s0,16($sp)
    beqz	$a0,.L0f0da668
    lwc1	$f4,_lit_3f800000
    ld	$s0,16($sp)
    # Line 191
    mtc1	$a0,$f4
    nop
    cvt.s.w	$f4,$f4
.L0f0da668:
    # Line 192
    addiu	$a2,$sp,12
    la	$t9,OglMaterialWrapperfv
    li	$a1,5633
    move	$a0,$s1
    bal OglMaterialWrapperfv
    # Line 191
    swc1	$f4,12($sp)
    ld	$ra,40($sp)
    b	.L0f0da5c8
    ld	$s1,24($sp)
.end __iglooSetOglMaterial

# Function: __iglooSetOglModel
# Declared: Line 196 (Source lines: 197-209)
# Address: 0x0f0da68c - 0x0f0da6f0 (Size: 100 bytes, Frame: 48)
.globl __iglooSetOglModel
.ent __iglooSetOglModel
__iglooSetOglModel:
    # Line 197
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    move	$s7,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-29764 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 200
    la	$t9,glLightModelfv
    li	$a0,2899
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$s7,24
    # Line 201
    la	$t9,glLightModeli
    lbu	$a1,8($s7)
    jalr	$t9
    li	$a0,2897
    # Line 202
    la	$t9,glLightModeli
    lbu	$a1,9($s7)
    jalr	$t9
    li	$a0,2898
    # Line 209
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooSetOglModel

# Function: __iglooSetOglLightPosition
# Declared: Line 212 (Source lines: 213-219)
# Address: 0x0f0da6f0 - 0x0f0da754 (Size: 100 bytes, Frame: 48)
.globl __iglooSetOglLightPosition
.ent __iglooSetOglLightPosition
__iglooSetOglLightPosition:
    # Line 213
    move	$a2,$a1
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # Line 217
    li	$a1,4611
    addiu	$a2,$a2,52
    sd	$gp,16($sp)
    # Line 213
    lui	$a3,0xfff6
    addiu	$a3,$a3,-29864
    addu	$gp,$t9,$a3
    # Line 217
    la	$t9,glLightfv
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 213
    move	$s8,$a0
    # Line 218
    move	$a0,$s8
    la	$t9,glLightfv
    ld	$a2,24($sp)
    li	$a1,4612
    jalr	$t9
    addiu	$a2,$a2,80
    # Line 219
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooSetOglLightPosition

# Function: __iglooSetOglLight
# Declared: Line 221 (Source lines: 222-241)
# Address: 0x0f0da754 - 0x0f0da844 (Size: 240 bytes, Frame: 192)
.globl __iglooSetOglLight
.ent __iglooSetOglLight
__iglooSetOglLight:
    # Line 222
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    lw	$at,16($a1)
    lui	$v0,0xfff6
    addiu	$v0,$v0,-29964
    beqz	$at,.L0f0da814
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 227
    la	$t9,glLighti
    move	$a0,$s0
    li	$a2,180
    jalr	$t9
    li	$a1,4614
    # Line 228
    la	$t9,glLighti
    move	$a0,$s0
    move	$a2,$zero
    jalr	$t9
    li	$a1,4613
    # Line 233
    la	$t9,glLightfv
.L0f0da7b0:
    move	$a0,$s0
    addiu	$a2,$s1,20
    jalr	$t9
    li	$a1,4608
    # Line 234
    li	$a1,4609
    la	$t9,glLightfv
    move	$a0,$s0
    addiu	$a2,$s1,36
    jalr	$t9
    sd	$a2,0($sp)
    ld	$s1,8($sp)
    # Line 235
    la	$t9,glLightfv
    move	$a0,$s0
    ld	$a2,0($sp)
    jalr	$t9
    li	$a1,4610
    # Line 240
    la	$t9,__iglooSetEnable
    move	$a0,$s0
    jalr	$t9
    li	$a1,1
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$gp,24($sp)
    # Line 241
    jr	$ra
    addiu	$sp,$sp,64
.L0f0da814:
    # Line 230
    la	$t9,glLighti
    move	$a0,$s0
    lw	$a2,76($s1)
    jalr	$t9
    li	$a1,4614
    # Line 231
    la	$t9,glLighti
    move	$a0,$s0
    lw	$a2,72($s1)
    jalr	$t9
    li	$a1,4613
    b	.L0f0da7b0
    # Line 233
    la	$t9,glLightfv
.end __iglooSetOglLight

# Function: __iglooSetOglAttenuation
# Declared: Line 243 (Source lines: 244-261)
# Address: 0x0f0da844 - 0x0f0da95c (Size: 280 bytes, Frame: 208)
.globl __iglooSetOglAttenuation
.ent __iglooSetOglAttenuation
__iglooSetOglAttenuation:
    # Line 244
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sdc1	$f20,0($sp)
    sd	$gp,24($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-30204 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 250
    bnez	$a2,.L0f0da8b0
    mtc1	$zero,$f20
    lwc1	$f14,12($s1)
    c.eq.s	$f14,$f20
    nop
    bc1f	.L0f0da908
    # Line 257
    move	$a0,$s0
    # Line 250
    lwc1	$f0,16($s1)
    c.eq.s	$f0,$f20
    nop
    bc1f	.L0f0da908
    # Line 257
    move	$a0,$s0
    # Line 250
    lwc1	$f1,20($s1)
    c.eq.s	$f1,$f20
    nop
    bc1f	.L0f0da904
    sd	$ra,32($sp)
.L0f0da8b0:
    # Line 253
    move	$a0,$s0
    lwc1	$f14,_lit_3f800000
    la	$t9,glLightf
    li	$a1,4615
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s1,8($sp)
    # Line 254
    la	$t9,glLightf
    move	$a0,$s0
    mov.s	$f14,$f20
    jalr	$t9
    li	$a1,4616
    # Line 255
    la	$t9,glLightf
    move	$a0,$s0
    mov.s	$f14,$f20
    jalr	$t9
    li	$a1,4617
    ldc1	$f20,0($sp)
    ld	$ra,32($sp)
    b	.L0f0da950
    ld	$s0,16($sp)
.L0f0da904:
    # Line 257
    move	$a0,$s0
.L0f0da908:
    la	$t9,glLightf
    li	$a1,4615
    sd	$ra,32($sp)
    jalr	$t9
    ldc1	$f20,0($sp)
    # Line 258
    la	$t9,glLightf
    move	$a0,$s0
    lwc1	$f14,16($s1)
    jalr	$t9
    li	$a1,4616
    # Line 259
    la	$t9,glLightf
    move	$a0,$s0
    lwc1	$f14,20($s1)
    jalr	$t9
    li	$a1,4617
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s0,16($sp)
.L0f0da950:
    ld	$gp,24($sp)
    # Line 261
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooSetOglAttenuation

# Function: __glCheckBindMoveDraw
# Declared: Line 263 (Source lines: 265-306)
# Address: 0x0f0da95c - 0x0f0daa08 (Size: 172 bytes, Frame: 0)
.globl __glCheckBindMoveDraw
.ent __glCheckBindMoveDraw
__glCheckBindMoveDraw:
    # Line 265
    li	$at,1000
    beq	$a0,$at,.L0f0da980
    move	$v0,$zero
    li	$v1,1001
    beql	$a0,$v1,.L0f0da984
    # Line 270
    lw	$a0,3028($a2)
    li	$v0,1
.L0f0da978:
    # Line 306
    jr	$ra
    nop
.L0f0da980:
    # Line 270
    lw	$a0,3028($a2)
.L0f0da984:
    beqzl	$a0,.L0f0da9a4
    # Line 284
    lw	$a0,3032($a2)
    # Line 270
    beqzl	$a1,.L0f0da9e4
    lw	$v1,4($a0)
    # Line 279
    lw	$a3,4($a0)
.L0f0da998:
    beqz	$a3,.L0f0daa00
    nop
.L0f0da9a0:
    # Line 284
    lw	$a0,3032($a2)
.L0f0da9a4:
    beqz	$a0,.L0f0da978
    nop
    beqzl	$a1,.L0f0da9c8
    lw	$at,4($a0)
    # Line 294
    lw	$a4,4($a0)
.L0f0da9b8:
    bnez	$a4,.L0f0da978
    nop
    # Line 306
    jr	$ra
    # Line 299
    li	$v0,1
.L0f0da9c8:
    # Line 284
    beqz	$at,.L0f0da9d4
    nop
    # Line 294
    li	$v0,1
.L0f0da9d4:
    beqz	$a1,.L0f0da978
    nop
    b	.L0f0da9b8
    lw	$a4,4($a0)
.L0f0da9e4:
    # Line 270
    beqz	$v1,.L0f0da9f0
    nop
    # Line 279
    li	$v0,1
.L0f0da9f0:
    beqzl	$a1,.L0f0da9a4
    # Line 284
    lw	$a0,3032($a2)
    b	.L0f0da998
    # Line 279
    lw	$a3,4($a0)
.L0f0daa00:
    b	.L0f0da9a0
    # Line 284
    li	$v0,1
.end __glCheckBindMoveDraw

# Function: __gllmbind
# Declared: Line 309 (Source lines: 310-569)
# Address: 0x0f0daa08 - 0x0f0db0d8 (Size: 1744 bytes, Frame: 192)
.globl __gllmbind
.ent __gllmbind
__gllmbind:
    # Line 310
    addiu	$sp,$sp,-320
    sd	$s3,272($sp)
    sd	$s0,240($sp)
    sd	$gp,264($sp)
    sd	$s1,248($sp)
    lui	$s1,0xfff6
    addiu	$s1,$s1,-30656
    addu	$gp,$t9,$s1
    # Line 314
    la	$s0,gl_wstatep
    # Line 310
    move	$s3,$a1
    sd	$ra,256($sp)
    # Line 314
    lw	$s0,0($s0)
    # Line 310
    move	$s1,$a0
    # Line 321
    la	$t9,__glCheckBindMoveDraw
    # Line 318
    lw	$at,3076($s0)
    # Line 321
    move	$a2,$s0
    bal __glCheckBindMoveDraw
    sd	$at,208($sp)
    beqz	$v0,.L0f0daa60
    # Line 323
    la	$t9,__iglooCloseMoveDraw
    jalr	$t9
    nop
.L0f0daa60:
    slti	$at,$s1,1103
    bnez	$at,.L0f0daab0
    # Line 326
    slti	$v1,$s1,1104
    bnez	$v1,.L0f0daac4
    slti	$a2,$s1,1106
    bnez	$a2,.L0f0dacd8
    slti	$a5,$s1,1107
    bnez	$a5,.L0f0daac4
    slti	$at,$s1,1200
    bnez	$at,.L0f0dae8c
    slti	$v1,$s1,1201
    beqz	$v1,.L0f0dac64
    # Line 529
    la	$t9,gl_ErrorHandler
    # Line 404
    beqz	$s3,.L0f0daf0c
    la	$t9,gl_find
    move	$a1,$s3
    jalr	$t9
    la	$a0,gl_lightingmodeltab
    b	.L0f0daf10
    move	$a0,$v0
.L0f0daab0:
    # Line 326
    slti	$a2,$s1,1100
    bnez	$a2,.L0f0dabfc
    slti	$a5,$s1,1101
    beqz	$a5,.L0f0dacc0
    slti	$a2,$s1,1102
.L0f0daac4:
    # Line 435
    lh	$at,264($s0)
.L0f0daac8:
    beqz	$at,.L0f0daea0
    # Line 442
    li	$a1,2
.L0f0daad0:
    beqz	$s3,.L0f0daaf0
    # Line 445
    la	$t9,gl_find
    sd	$s2,288($sp)
    move	$a1,$s3
    jalr	$t9
    la	$a0,gl_lighttab
    b	.L0f0daaf8
    move	$s2,$v0
.L0f0daaf0:
    sd	$s2,288($sp)
    move	$s2,$zero
.L0f0daaf8:
    move	$a4,$s2
    # Line 448
    sll	$a3,$s1,0x2
    addu	$a3,$a3,$s0
    lw	$a4,-1360($a3)
    beq	$s2,$a4,.L0f0dab2c
    sd	$s2,216($sp)
    bnez	$a4,.L0f0dac38
    nop
    beqz	$s2,.L0f0dac40
    nop
    # Line 453
    lw	$a5,3072($s0)
    addiu	$a5,$a5,1
    sw	$a5,3072($s0)
.L0f0dab2c:
    # Line 454
    beqz	$s2,.L0f0dada4
    nop
.L0f0dab34:
    beq	$s2,$a4,.L0f0dad2c
    # Line 474
    la	$t9,__iglooSetOglLightPosition
    lw	$at,8($s2)
    beq	$at,$s0,.L0f0daebc
    # Line 485
    addiu	$v0,$s1,15284
    beqzl	$a4,.L0f0dad88
    sd	$v0,232($sp)
    sd	$v0,232($sp)
    # Line 494
    sw	$zero,8($a4)
    # Line 493
    li	$v1,-1
    sw	$v1,12($a4)
.L0f0dab60:
    # Line 502
    move	$a1,$s2
    ld	$a0,232($sp)
    # Line 499
    sw	$s0,8($s2)
    # Line 502
    la	$t9,__iglooSetOglLightPosition
    # Line 500
    addiu	$a2,$s1,-1100
    sw	$a2,12($s2)
    # Line 502
    bal __iglooSetOglLightPosition
    # Line 501
    sw	$s2,-1360($a3)
    # Line 503
    la	$t9,__iglooSetOglLight
    ld	$a0,232($sp)
    bal __iglooSetOglLight
    move	$a1,$s2
    lw	$a1,3024($s0)
    beqz	$a1,.L0f0daba8
    # Line 511
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,232($sp)
    bal __iglooSetOglAttenuation
    lw	$a2,16($s2)
.L0f0daba8:
    ld	$a5,216($sp)
.L0f0dabac:
    # Line 532
    beqz	$a5,.L0f0dac80
    ld	$s2,288($sp)
.L0f0dabb4:
    # Line 537
    ld	$at,208($sp)
.L0f0dabb8:
    lw	$v0,3076($s0)
    beql	$v0,$at,.L0f0dabe4
    ld	$gp,264($sp)
    beqz	$v0,.L0f0db0a4
    # Line 564
    la	$t9,__iglooSetEnable
    # Line 537
    lw	$v1,2904($s0)
    beqz	$v1,.L0f0dad40
    # Line 566
    la	$t9,__iglooSyncLmcolor
.L0f0dabd8:
    jalr	$t9
    move	$a0,$s0
    ld	$gp,264($sp)
.L0f0dabe4:
    # Line 569
    ld	$s0,240($sp)
    ld	$ra,256($sp)
    ld	$s1,248($sp)
    ld	$s3,272($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0f0dabfc:
    # Line 326
    slti	$a2,$s1,1001
    bnez	$a2,.L0f0dac58
    slti	$a5,$s1,1002
    beqz	$a5,.L0f0dac64
    # Line 529
    la	$t9,gl_ErrorHandler
    # Line 369
    beqz	$s3,.L0f0dacf4
    lh	$a0,3036($s0)
    # Line 371
    la	$t9,gl_find
    move	$a1,$s3
    sd	$a0,280($sp)
    jalr	$t9
    la	$a0,gl_materialtab
    move	$a1,$v0
    b	.L0f0dacf8
    ld	$a0,280($sp)
.L0f0dac38:
    # Line 453
    bnez	$s2,.L0f0dab34
    nop
.L0f0dac40:
    beqz	$a4,.L0f0dab2c
    nop
    # Line 455
    lw	$at,3072($s0)
    addiu	$at,$at,-1
    b	.L0f0dab2c
    sw	$at,3072($s0)
.L0f0dac58:
    # Line 326
    li	$v1,1000
    beq	$s1,$v1,.L0f0dadfc
    # Line 529
    la	$t9,gl_ErrorHandler
.L0f0dac64:
    addiu	$a2,$gp,-14768
    li	$a1,2
    jalr	$t9
    li	$a0,22
    lw	$a2,88($sp)
    # Line 532
    bnez	$a2,.L0f0dabb4
    sd	$a2,216($sp)
.L0f0dac80:
    beqz	$s3,.L0f0dabb4
    # Line 535
    move	$a4,$s1
    move	$a3,$s3
    addiu	$a2,$gp,-14768
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,96
    jalr	$t9
    addiu	$a1,$a1,13600
    # Line 537
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,96
    li	$a1,2
    jalr	$t9
    li	$a0,91
    b	.L0f0dabb8
    ld	$at,208($sp)
.L0f0dacc0:
    # Line 326
    bnez	$a2,.L0f0dadd4
    slti	$a5,$s1,1103
    beqz	$a5,.L0f0dac64
    # Line 529
    la	$t9,gl_ErrorHandler
    b	.L0f0daac8
    # Line 435
    lh	$at,264($s0)
.L0f0dacd8:
    # Line 326
    slti	$at,$s1,1105
    bnez	$at,.L0f0dade8
    slti	$v1,$s1,1106
    beqz	$v1,.L0f0dac64
    # Line 529
    la	$t9,gl_ErrorHandler
    b	.L0f0daac8
    # Line 435
    lh	$at,264($s0)
.L0f0dacf4:
    # Line 371
    move	$a1,$zero
.L0f0dacf8:
    move	$a2,$a1
    sd	$a1,216($sp)
    # Line 374
    beqz	$a1,.L0f0dae58
    sw	$a1,3032($s0)
    # Line 377
    la	$t9,__iglooSetOglMaterial
    li	$a0,1029
    # Line 376
    li	$a3,1
    # Line 377
    bal __iglooSetOglMaterial
    # Line 376
    sh	$a3,3036($s0)
    sd	$s2,288($sp)
    # Line 385
    li	$a5,1028
    b	.L0f0daba8
    sw	$a5,3148($s0)
.L0f0dad2c:
    # Line 474
    move	$a1,$s2
    bal __iglooSetOglLightPosition
    addiu	$a0,$s1,15284
    b	.L0f0dabac
    ld	$a5,216($sp)
.L0f0dad40:
    # Line 548
    la	$t9,__iglooOglLightingOn
    bal __iglooOglLightingOn
    move	$a0,$s0
    lw	$at,4100($zero)
    lw	$at,20($at)
    lw	$at,16($at)
    bnez	$at,.L0f0dabd8
    # Line 566
    la	$t9,__iglooSyncLmcolor
    # Line 556
    la	$t9,__iglooGetFloatv
    addiu	$a1,$sp,184
    jalr	$t9
    li	$a0,2817
    # Line 557
    lw	$t9,176($s0)
    move	$a0,$s0
    jalr	$t9
    lwc1	$f13,184($sp)
    b	.L0f0dabd8
    # Line 566
    la	$t9,__iglooSyncLmcolor
.L0f0dad88:
    # Line 497
    la	$t9,__iglooSetEnable
    sd	$a3,296($sp)
    move	$a0,$v0
    jalr	$t9
    li	$a1,1
    b	.L0f0dab60
    ld	$a3,296($sp)
.L0f0dada4:
    # Line 511
    beqz	$a4,.L0f0daba8
    ld	$s2,288($sp)
    # Line 523
    move	$a1,$zero
    addiu	$a0,$s1,15284
    # Line 520
    sw	$zero,-1360($a3)
    # Line 523
    la	$t9,__iglooSetEnable
    # Line 522
    sw	$zero,8($a4)
    # Line 521
    li	$v0,-1
    # Line 523
    jalr	$t9
    # Line 521
    sw	$v0,12($a4)
    b	.L0f0dabac
    ld	$a5,216($sp)
.L0f0dadd4:
    # Line 326
    li	$v1,1101
    bne	$s1,$v1,.L0f0dac64
    # Line 529
    la	$t9,gl_ErrorHandler
    b	.L0f0daac8
    # Line 435
    lh	$at,264($s0)
.L0f0dade8:
    # Line 326
    li	$a2,1104
    bne	$s1,$a2,.L0f0dac64
    # Line 529
    la	$t9,gl_ErrorHandler
    b	.L0f0daac8
    # Line 435
    lh	$at,264($s0)
.L0f0dadfc:
    # Line 328
    beqz	$s3,.L0f0dae18
    # Line 329
    la	$t9,gl_find
    move	$a1,$s3
    jalr	$t9
    la	$a0,gl_materialtab
    b	.L0f0dae1c
    move	$a1,$v0
.L0f0dae18:
    move	$a1,$zero
.L0f0dae1c:
    move	$a5,$a1
    sd	$a1,216($sp)
    # Line 331
    beqz	$a1,.L0f0db0c4
    sw	$a1,3028($s0)
    # Line 339
    lw	$at,3024($s0)
    lh	$v1,3036($s0)
    sltu	$at,$zero,$at
    beqz	$v1,.L0f0db0d0
    sw	$at,3076($s0)
    # Line 348
    li	$a0,1028
.L0f0dae44:
    # Line 353
    la	$t9,__iglooSetOglMaterial
    bal __iglooSetOglMaterial
    # Line 352
    sw	$a0,3148($s0)
    b	.L0f0daba8
    sd	$s2,288($sp)
.L0f0dae58:
    # Line 387
    lw	$a1,3028($s0)
    sd	$s2,288($sp)
    beqz	$a1,.L0f0daba8
    sh	$zero,3036($s0)
    beqz	$a0,.L0f0daba8
    sd	$s2,288($sp)
    # Line 391
    la	$t9,__iglooSetOglMaterial
    li	$a0,1032
    # Line 390
    li	$v0,1032
    # Line 391
    bal __iglooSetOglMaterial
    # Line 390
    sw	$v0,3148($s0)
    b	.L0f0daba8
    sd	$s2,288($sp)
.L0f0dae8c:
    # Line 326
    li	$v1,1107
    bne	$s1,$v1,.L0f0dac64
    # Line 529
    la	$t9,gl_ErrorHandler
    b	.L0f0daac8
    # Line 435
    lh	$at,264($s0)
.L0f0daea0:
    # Line 442
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,98
    jalr	$t9
    addiu	$a2,$a2,13536
    b	.L0f0daad0
    nop
.L0f0daebc:
    # Line 482
    move	$a3,$s3
    addiu	$a2,$gp,-14768
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    ld	$s2,288($sp)
    jalr	$t9
    addiu	$a1,$a1,13568
    # Line 484
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    jalr	$t9
    li	$a0,91
    ld	$gp,264($sp)
    # Line 485
    ld	$s0,240($sp)
    ld	$ra,256($sp)
    ld	$s1,248($sp)
    ld	$s3,272($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0f0daf0c:
    # Line 404
    move	$a0,$zero
.L0f0daf10:
    move	$a2,$a0
    sd	$a0,216($sp)
    # Line 406
    beqz	$a0,.L0f0db0b8
    sw	$a0,3024($s0)
    # Line 409
    la	$t9,__iglooSetOglModel
    bal __iglooSetOglModel
    nop
    move	$a5,$s0
    sd	$s0,224($sp)
    li	$at,16384
    sd	$at,200($sp)
    ld	$v0,224($sp)
    lw	$v0,3040($v0)
    beqz	$v0,.L0f0daf5c
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0daf5c:
    ld	$v0,224($sp)
    # Line 410
    ld	$v1,200($sp)
    # Line 409
    lw	$v0,3044($v0)
    # Line 410
    addiu	$v1,$v1,1
    # Line 409
    beqz	$v0,.L0f0daf88
    sd	$v1,200($sp)
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0daf88:
    ld	$v0,224($sp)
    # Line 410
    ld	$v1,200($sp)
    # Line 409
    lw	$v0,3048($v0)
    # Line 410
    addiu	$v1,$v1,1
    # Line 409
    beqz	$v0,.L0f0dafb4
    sd	$v1,200($sp)
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0dafb4:
    ld	$v0,224($sp)
    # Line 410
    ld	$v1,200($sp)
    # Line 409
    lw	$v0,3052($v0)
    # Line 410
    addiu	$v1,$v1,1
    # Line 409
    beqz	$v0,.L0f0dafe0
    sd	$v1,200($sp)
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0dafe0:
    ld	$v0,224($sp)
    # Line 410
    ld	$v1,200($sp)
    # Line 409
    lw	$v0,3056($v0)
    # Line 410
    addiu	$v1,$v1,1
    # Line 409
    beqz	$v0,.L0f0db00c
    sd	$v1,200($sp)
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0db00c:
    ld	$v0,224($sp)
    # Line 410
    ld	$v1,200($sp)
    # Line 409
    lw	$v0,3060($v0)
    # Line 410
    addiu	$v1,$v1,1
    # Line 409
    beqz	$v0,.L0f0db038
    sd	$v1,200($sp)
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0db038:
    ld	$v0,224($sp)
    # Line 410
    ld	$v1,200($sp)
    # Line 409
    lw	$v0,3064($v0)
    # Line 410
    addiu	$v1,$v1,1
    # Line 409
    beqz	$v0,.L0f0db064
    sd	$v1,200($sp)
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0db064:
    ld	$v0,224($sp)
    # Line 410
    ld	$v1,200($sp)
    # Line 409
    lw	$v0,3068($v0)
    # Line 410
    addiu	$v1,$v1,1
    # Line 409
    beqz	$v0,.L0f0db090
    sd	$v1,200($sp)
    # Line 414
    la	$t9,__iglooSetOglAttenuation
    ld	$a0,200($sp)
    lw	$a2,16($v0)
    bal __iglooSetOglAttenuation
    lw	$a1,3024($s0)
.L0f0db090:
    # Line 419
    lw	$v1,3028($s0)
    sd	$s2,288($sp)
    sltu	$v1,$zero,$v1
    b	.L0f0daba8
    sw	$v1,3076($s0)
.L0f0db0a4:
    # Line 564
    move	$a1,$zero
    jalr	$t9
    li	$a0,2896
    b	.L0f0dabd8
    # Line 566
    la	$t9,__iglooSyncLmcolor
.L0f0db0b8:
    sd	$s2,288($sp)
    b	.L0f0daba8
    # Line 424
    sw	$zero,3076($s0)
.L0f0db0c4:
    sd	$s2,288($sp)
    b	.L0f0daba8
    # Line 355
    sw	$zero,3076($s0)
.L0f0db0d0:
    b	.L0f0dae44
    # Line 350
    li	$a0,1032
.end __gllmbind

# Function: gl_i_lmbind
# Declared: Line 573 (Source lines: 573-573)
# Address: 0x0f0db0d8 - 0x0f0db10c (Size: 52 bytes, Frame: 32)
.globl gl_i_lmbind
.ent gl_i_lmbind
gl_i_lmbind:
    # Line 573
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-32400 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,__gllmbind
    sd	$ra,0($sp)
    bal __gllmbind
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_lmbind

# Function: gl_c_lmbind
# Declared: Line 573 (Source lines: 573-573)
# Address: 0x0f0db10c - 0x0f0db190 (Size: 132 bytes, Frame: 192)
.globl gl_c_lmbind
.ent gl_c_lmbind
gl_c_lmbind:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-32452 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20768($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0db16c
    move	$s8,$a0
.L0f0db138:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_lmbind
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0db16c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-28912
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0db138
    sw	$a2,-20768($gp)
.end gl_c_lmbind

# Function: gl_n_lmbind
# Declared: Line 573 (Source lines: 573-573)
# Address: 0x0f0db190 - 0x0f0db1d8 (Size: 72 bytes, Frame: 48)
.globl gl_n_lmbind
.ent gl_n_lmbind
gl_n_lmbind:
    lh	$a1,2($a0)
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-32584 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,__gllmbind
    move	$s8,$a0
    sd	$ra,0($sp)
    bal __gllmbind
    lh	$a0,0($a0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_lmbind

# Function: __iglooOglLightingOn
# Declared: Line 585 (Source lines: 586-594)
# Address: 0x0f0db1d8 - 0x0f0db224 (Size: 76 bytes, Frame: 32)
.globl __iglooOglLightingOn
.ent __iglooOglLightingOn
__iglooOglLightingOn:
    # Line 586
    li	$v0,16
    lw	$at,276($a0)
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,56($at)
    lui	$v1,0xfff6
    addiu	$v1,$v1,-32656
    beq	$at,$v0,.L0f0db208
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
.L0f0db1fc:
    ld	$gp,0($sp)
    # Line 594
    jr	$ra
    addiu	$sp,$sp,32
.L0f0db208:
    # Line 591
    la	$t9,__iglooSetEnable
    li	$a1,1
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,2896
    b	.L0f0db1fc
    ld	$ra,8($sp)
.end __iglooOglLightingOn

# Function: gl_free_materials
# Declared: Line 597 (Source lines: 598-610)
# Address: 0x0f0db224 - 0x0f0db2b4 (Size: 144 bytes, Frame: 48)
.globl gl_free_materials
.ent gl_free_materials
gl_free_materials:
    # Line 598
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$ra,40($sp)
    sd	$s5,8($sp)
    sd	$gp,0($sp)
    sd	$s4,32($sp)
    lui	$s4,0xfff6
    addiu	$s4,$s4,-32732
    addu	$gp,$t9,$s4
    la	$s4,gl_materialtab
    sd	$s1,16($sp)
    la	$s1,sub_0f030000
    addiu	$s5,$s4,512
    b	.L0f0db268
    addiu	$s1,$s1,-28896
.L0f0db260:
    # Line 603
    beq	$s4,$s5,.L0f0db294
    # Line 608
    sw	$zero,-4($s4)
.L0f0db268:
    # Line 604
    lw	$a0,0($s4)
    beqz	$a0,.L0f0db260
    # Line 603
    addiu	$s4,$s4,4
.L0f0db274:
    # Line 606
    la	$t9,gl_free
    move	$a1,$s1
    jalr	$t9
    # Line 605
    lw	$s0,0($a0)
    # Line 604
    bnez	$s0,.L0f0db274
    move	$a0,$s0
    b	.L0f0db260
    nop
.L0f0db294:
    ld	$gp,0($sp)
    # Line 610
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_materials

# Function: gl_free_lights
# Declared: Line 613 (Source lines: 614-626)
# Address: 0x0f0db2b4 - 0x0f0db344 (Size: 144 bytes, Frame: 48)
.globl gl_free_lights
.ent gl_free_lights
gl_free_lights:
    # Line 614
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$ra,40($sp)
    sd	$s5,8($sp)
    sd	$gp,0($sp)
    sd	$s4,32($sp)
    lui	$s4,0xfff5
    addiu	$s4,$s4,32660
    addu	$gp,$t9,$s4
    la	$s4,gl_lighttab
    sd	$s1,16($sp)
    la	$s1,sub_0f030000
    addiu	$s5,$s4,512
    b	.L0f0db2f8
    addiu	$s1,$s1,-28872
.L0f0db2f0:
    # Line 619
    beq	$s4,$s5,.L0f0db324
    # Line 624
    sw	$zero,-4($s4)
.L0f0db2f8:
    # Line 620
    lw	$a0,0($s4)
    beqz	$a0,.L0f0db2f0
    # Line 619
    addiu	$s4,$s4,4
.L0f0db304:
    # Line 622
    la	$t9,gl_free
    move	$a1,$s1
    jalr	$t9
    # Line 621
    lw	$s0,0($a0)
    # Line 620
    bnez	$s0,.L0f0db304
    move	$a0,$s0
    b	.L0f0db2f0
    nop
.L0f0db324:
    ld	$gp,0($sp)
    # Line 626
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_lights

# Function: gl_free_lightingmodels
# Declared: Line 630 (Source lines: 631-643)
# Address: 0x0f0db344 - 0x0f0db3d4 (Size: 144 bytes, Frame: 48)
.globl gl_free_lightingmodels
.ent gl_free_lightingmodels
gl_free_lightingmodels:
    # Line 631
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$ra,40($sp)
    sd	$s5,8($sp)
    sd	$gp,0($sp)
    sd	$s4,32($sp)
    lui	$s4,0xfff5
    addiu	$s4,$s4,32516
    addu	$gp,$t9,$s4
    la	$s4,gl_lightingmodeltab
    sd	$s1,16($sp)
    la	$s1,sub_0f030000
    addiu	$s5,$s4,512
    b	.L0f0db388
    addiu	$s1,$s1,-28856
.L0f0db380:
    # Line 636
    beq	$s4,$s5,.L0f0db3b4
    # Line 641
    sw	$zero,-4($s4)
.L0f0db388:
    # Line 637
    lw	$a0,0($s4)
    beqz	$a0,.L0f0db380
    # Line 636
    addiu	$s4,$s4,4
.L0f0db394:
    # Line 639
    la	$t9,gl_free
    move	$a1,$s1
    jalr	$t9
    # Line 638
    lw	$s0,0($a0)
    # Line 637
    bnez	$s0,.L0f0db394
    move	$a0,$s0
    b	.L0f0db380
    nop
.L0f0db3b4:
    ld	$gp,0($sp)
    # Line 643
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_lightingmodels

# Function: gl_free_lighting
# Declared: Line 645 (Source lines: 646-650)
# Address: 0x0f0db3d4 - 0x0f0db420 (Size: 76 bytes, Frame: 16)
.globl gl_free_lighting
.ent gl_free_lighting
gl_free_lighting:
    # Line 646
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,32372 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 647
    la	$t9,gl_free_materials
    sd	$ra,0($sp)
    bal gl_free_materials
    nop
    # Line 648
    la	$t9,gl_free_lightingmodels
    bal gl_free_lightingmodels
    nop
    # Line 649
    la	$t9,gl_free_lights
    bal gl_free_lights
    nop
    # Line 650
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_free_lighting

.rdata
_lit_3f800000:
    .word 0x3f800000

