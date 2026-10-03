# Source: ../igloo/light/lmdef.c
# Category: light
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/light/lmdef.c -o lmdef.T
# Total Functions: 14

.text

# Function: gl_init_material
# Declared: Line 19 (Source lines: 20-52)
# Address: 0x0f0db424 - 0x0f0db49c (Size: 120 bytes, Frame: 0)
.globl gl_init_material
.ent gl_init_material
gl_init_material:
    # Line 45
    sw	$zero,72($a0)
    # Line 20
    lui	$v0,0xfff5
    addiu	$v0,$v0,32292
    addu	$at,$t9,$v0
    # Line 29
    lwc1	$f2,-19604($at)
    # Line 48
    lwc1	$f4,-19596($at)
    # Line 27
    lwc1	$f1,-19660($at)
    # Line 34
    lwc1	$f3,-19600($at)
    # Line 48
    swc1	$f4,80($a0)
    # Line 43
    swc1	$f1,68($a0)
    # Line 37
    swc1	$f1,52($a0)
    # Line 36
    swc1	$f3,48($a0)
    # Line 35
    swc1	$f3,44($a0)
    # Line 34
    swc1	$f3,40($a0)
    # Line 32
    swc1	$f1,36($a0)
    # Line 49
    lwc1	$f0,-19624($at)
    # Line 31
    swc1	$f2,32($a0)
    # Line 30
    swc1	$f2,28($a0)
    # Line 49
    swc1	$f0,84($a0)
    # Line 24
    lwc1	$f0,-19664($at)
    # Line 29
    swc1	$f2,24($a0)
    # Line 27
    swc1	$f1,20($a0)
    # Line 47
    swc1	$f0,76($a0)
    # Line 42
    swc1	$f0,64($a0)
    # Line 41
    swc1	$f0,60($a0)
    # Line 40
    swc1	$f0,56($a0)
    # Line 26
    swc1	$f0,16($a0)
    # Line 25
    swc1	$f0,12($a0)
    # Line 52
    jr	$ra
    # Line 24
    swc1	$f0,8($a0)
.end gl_init_material

# Function: gl_newmaterial
# Declared: Line 58 (Source lines: 59-67)
# Address: 0x0f0db49c - 0x0f0db4f0 (Size: 84 bytes, Frame: 32)
.globl gl_newmaterial
.ent gl_newmaterial
gl_newmaterial:
    # Line 62
    li	$a0,88
    # Line 59
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,32172 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 62
    la	$t9,gl_malloc
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$gp,-14760
    # Line 66
    la	$t9,gl_init_material
    # Line 62
    move	$s8,$v0
    # Line 66
    bal gl_init_material
    move	$a0,$v0
    ld	$gp,16($sp)
    # Line 67
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_newmaterial

# Function: gl_init_light
# Declared: Line 74 (Source lines: 75-96)
# Address: 0x0f0db4f0 - 0x0f0db55c (Size: 108 bytes, Frame: 0)
.globl gl_init_light
.ent gl_init_light
gl_init_light:
    # Line 91
    sw	$zero,72($a0)
    # Line 78
    li	$v0,1
    # Line 92
    li	$a1,180
    sw	$a1,76($a0)
    # Line 78
    sw	$v0,16($a0)
    # Line 75
    lui	$v1,0xfff5
    addiu	$v1,$v1,32088
    addu	$at,$t9,$v1
    # Line 95
    lwc1	$f2,-19652($at)
    # Line 79
    lwc1	$f0,-19664($at)
    # Line 82
    lwc1	$f1,-19660($at)
    # Line 95
    swc1	$f2,88($a0)
    # Line 94
    swc1	$f0,84($a0)
    # Line 93
    swc1	$f0,80($a0)
    # Line 90
    swc1	$f0,64($a0)
    # Line 89
    swc1	$f1,60($a0)
    # Line 88
    swc1	$f0,56($a0)
    # Line 87
    swc1	$f0,52($a0)
    # Line 86
    swc1	$f1,48($a0)
    # Line 85
    swc1	$f1,44($a0)
    # Line 84
    swc1	$f1,40($a0)
    # Line 83
    swc1	$f1,36($a0)
    # Line 82
    swc1	$f1,32($a0)
    # Line 81
    swc1	$f0,28($a0)
    # Line 80
    swc1	$f0,24($a0)
    # Line 96
    jr	$ra
    # Line 79
    swc1	$f0,20($a0)
.end gl_init_light

# Function: gl_newlight
# Declared: Line 98 (Source lines: 99-110)
# Address: 0x0f0db55c - 0x0f0db5c0 (Size: 100 bytes, Frame: 32)
.globl gl_newlight
.ent gl_newlight
gl_newlight:
    # Line 102
    li	$a0,100
    # Line 99
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,31980 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 102
    la	$t9,gl_malloc
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$gp,-14760
    move	$s8,$v0
    # Line 109
    move	$a0,$v0
    # Line 108
    sw	$zero,96($v0)
    # Line 109
    la	$t9,gl_init_light
    # Line 106
    sw	$zero,8($v0)
    # Line 107
    li	$v0,-1
    # Line 109
    bal gl_init_light
    # Line 107
    sw	$v0,12($s8)
    ld	$gp,16($sp)
    # Line 110
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_newlight

# Function: gl_init_lightingmodel
# Declared: Line 117 (Source lines: 118-133)
# Address: 0x0f0db5c0 - 0x0f0db600 (Size: 64 bytes, Frame: 0)
.globl gl_init_lightingmodel
.ent gl_init_lightingmodel
gl_init_lightingmodel:
    # Line 128
    sb	$zero,9($a0)
    # Line 126
    sb	$zero,8($a0)
    # Line 118
    lui	$v0,0xfff5
    addiu	$v0,$v0,31880
    addu	$at,$t9,$v0
    # Line 131
    lwc1	$f2,-19664($at)
    # Line 121
    lwc1	$f0,-19604($at)
    # Line 124
    lwc1	$f1,-19660($at)
    # Line 132
    swc1	$f2,20($a0)
    # Line 131
    swc1	$f2,16($a0)
    # Line 130
    swc1	$f1,12($a0)
    # Line 124
    swc1	$f1,36($a0)
    # Line 123
    swc1	$f0,32($a0)
    # Line 122
    swc1	$f0,28($a0)
    # Line 133
    jr	$ra
    # Line 121
    swc1	$f0,24($a0)
.end gl_init_lightingmodel

# Function: gl_newlightingmodel
# Declared: Line 135 (Source lines: 136-144)
# Address: 0x0f0db600 - 0x0f0db654 (Size: 84 bytes, Frame: 32)
.globl gl_newlightingmodel
.ent gl_newlightingmodel
gl_newlightingmodel:
    # Line 139
    li	$a0,40
    # Line 136
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,31816 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 139
    la	$t9,gl_malloc
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$gp,-14760
    # Line 143
    la	$t9,gl_init_lightingmodel
    # Line 139
    move	$s8,$v0
    # Line 143
    bal gl_init_lightingmodel
    move	$a0,$v0
    ld	$gp,16($sp)
    # Line 144
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_newlightingmodel

# Function: resetOpenGLMaterial
# Declared: Line 147 (Source lines: 148-208)
# Address: 0x0f0db654 - 0x0f0db7f4 (Size: 416 bytes, Frame: 224)
.globl resetOpenGLMaterial
.ent resetOpenGLMaterial
resetOpenGLMaterial:
    # Line 148
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    move	$s0,$a1
    sd	$s1,32($sp)
    lw	$at,4100($zero)
    move	$s1,$a0
    sd	$s2,48($sp)
    lw	$at,20($at)
    move	$s2,$a2
    sd	$gp,24($sp)
    lw	$at,16($at)
    lui	$v0,0xfff5
    addiu	$v0,$v0,31732
    beqz	$at,.L0f0db77c
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    andi	$v0,$s2,0x8
    beqz	$v0,.L0f0db6b4
    # Line 159
    move	$a0,$s1
    la	$t9,OglMaterialWrapperfv
    addiu	$a2,$s0,24
    sd	$ra,56($sp)
    bal OglMaterialWrapperfv
    li	$a1,4608
    ld	$ra,56($sp)
.L0f0db6b4:
    andi	$v1,$s2,0x90
    beqz	$v1,.L0f0db6d8
    # Line 162
    move	$a0,$s1
    la	$t9,OglMaterialWrapperfv
    addiu	$a2,$s0,40
    sd	$ra,56($sp)
    bal OglMaterialWrapperfv
    li	$a1,4609
    ld	$ra,56($sp)
.L0f0db6d8:
    andi	$a3,$s2,0x4
    beqz	$a3,.L0f0db6fc
    # Line 165
    move	$a0,$s1
    la	$t9,OglMaterialWrapperfv
    addiu	$a2,$s0,8
    sd	$ra,56($sp)
    bal OglMaterialWrapperfv
    li	$a1,5632
    ld	$ra,56($sp)
.L0f0db6fc:
    andi	$at,$s2,0x20
    beqz	$at,.L0f0db730
    # Line 189
    andi	$v1,$s2,0x40
    # Line 165
    lw	$v0,72($s0)
    beqz	$v0,.L0f0db7c0
    sd	$ra,56($sp)
    # Line 177
    la	$t9,OglMaterialWrapperfv
    move	$a0,$s1
    addiu	$a2,$s0,56
    bal OglMaterialWrapperfv
    li	$a1,4610
    ld	$ra,56($sp)
.L0f0db72c:
    # Line 189
    andi	$v1,$s2,0x40
.L0f0db730:
    beqzl	$v1,.L0f0db768
    ld	$gp,24($sp)
    # Line 197
    lw	$a0,72($s0)
    mtc1	$a0,$f0
    # Line 198
    addiu	$a2,$sp,16
    # Line 197
    cvt.s.w	$f0,$f0
    # Line 198
    li	$a1,5633
    la	$t9,OglMaterialWrapperfv
    sd	$ra,56($sp)
    move	$a0,$s1
    bal OglMaterialWrapperfv
    # Line 197
    swc1	$f0,16($sp)
    ld	$ra,56($sp)
    ld	$gp,24($sp)
.L0f0db768:
    # Line 208
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0db77c:
    # Line 177
    andi	$a3,$s2,0x100
    beqz	$a3,.L0f0db730
    # Line 189
    andi	$v1,$s2,0x40
    # Line 186
    lwc1	$f3,76($s0)
    swc1	$f3,0($sp)
    # Line 189
    addiu	$a2,$sp,0
    # Line 187
    lwc1	$f2,80($s0)
    # Line 189
    li	$a1,5635
    move	$a0,$s1
    # Line 187
    swc1	$f2,4($sp)
    # Line 189
    la	$t9,OglMaterialWrapperfv
    # Line 188
    lwc1	$f1,84($s0)
    sd	$ra,56($sp)
    # Line 189
    bal OglMaterialWrapperfv
    # Line 188
    swc1	$f1,8($sp)
    b	.L0f0db72c
    ld	$ra,56($sp)
.L0f0db7c0:
    # Line 175
    addiu	$a2,$sp,0
    li	$a1,4610
    move	$a0,$s1
    # Line 174
    lwc1	$f5,_lit_3f800000
    mtc1	$zero,$f4
    # Line 175
    la	$t9,OglMaterialWrapperfv
    # Line 174
    swc1	$f5,12($sp)
    swc1	$f4,0($sp)
    swc1	$f4,4($sp)
    # Line 175
    bal OglMaterialWrapperfv
    # Line 174
    swc1	$f4,8($sp)
    b	.L0f0db72c
    ld	$ra,56($sp)
.end resetOpenGLMaterial

# Function: resetOpenGLLight
# Declared: Line 210 (Source lines: 211-251)
# Address: 0x0f0db7f4 - 0x0f0db978 (Size: 388 bytes, Frame: 208)
.globl resetOpenGLLight
.ent resetOpenGLLight
resetOpenGLLight:
    # Line 211
    andi	$at,$a2,0x8
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    addiu	$s0,$a1,16384
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s2,16($sp)
    move	$s2,$a2
    sd	$gp,32($sp)
    lui	$v0,0xfff5
    addiu	$v0,$v0,31316
    beqz	$at,.L0f0db844
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 216
    move	$a0,$s0
    la	$t9,glLightfv
    addiu	$a2,$s1,20
    sd	$ra,40($sp)
    jalr	$t9
    li	$a1,4608
    ld	$ra,40($sp)
.L0f0db844:
    andi	$v1,$s2,0x30
    beqz	$v1,.L0f0db880
    # Line 219
    li	$a1,4609
    move	$a0,$s0
    la	$t9,glLightfv
    sd	$ra,40($sp)
    addiu	$a2,$s1,36
    jalr	$t9
    sd	$a2,0($sp)
    # Line 220
    la	$t9,glLightfv
    move	$a0,$s0
    ld	$a2,0($sp)
    jalr	$t9
    li	$a1,4610
    ld	$ra,40($sp)
.L0f0db880:
    andi	$a1,$s2,0x400
    beqz	$a1,.L0f0db8a4
    # Line 224
    move	$a0,$s0
    la	$t9,glLightfv
    addiu	$a2,$s1,80
    sd	$ra,40($sp)
    jalr	$t9
    li	$a1,4612
    ld	$ra,40($sp)
.L0f0db8a4:
    # Line 227
    andi	$at,$s2,0x200
    bnez	$at,.L0f0db8c4
    # Line 233
    move	$a0,$s0
    # Line 227
    andi	$v0,$s2,0x2
    sd	$ra,40($sp)
    beqz	$v0,.L0f0db950
    ld	$s2,16($sp)
    # Line 233
    move	$a0,$s0
.L0f0db8c4:
    addiu	$a2,$s1,52
    la	$t9,glLightfv
    li	$a1,4611
    sd	$ra,40($sp)
    jalr	$t9
    ld	$s2,16($sp)
    lw	$v1,16($s1)
    bnez	$v1,.L0f0db918
    # Line 239
    move	$a0,$s0
    # Line 236
    la	$t9,glLighti
    move	$a0,$s0
    lw	$a2,76($s1)
    jalr	$t9
    li	$a1,4614
    # Line 237
    la	$t9,glLighti
    move	$a0,$s0
    lw	$a2,72($s1)
    jalr	$t9
    li	$a1,4613
    b	.L0f0db954
    # Line 250
    la	$t9,__iglooSetEnable
.L0f0db918:
    # Line 239
    la	$t9,glLighti
    li	$a2,180
    li	$a1,4614
    jalr	$t9
    ld	$s1,8($sp)
    # Line 240
    la	$t9,glLighti
    move	$a0,$s0
    move	$a2,$zero
    jalr	$t9
    li	$a1,4613
    # Line 241
    la	$t9,__iglooSetEnable
    move	$a0,$s0
    jalr	$t9
    li	$a1,1
.L0f0db950:
    # Line 250
    la	$t9,__iglooSetEnable
.L0f0db954:
    move	$a0,$s0
    li	$a1,1
    jalr	$t9
    ld	$s1,8($sp)
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    # Line 251
    jr	$ra
    addiu	$sp,$sp,80
.end resetOpenGLLight

# Function: resetOpenGLModel
# Declared: Line 253 (Source lines: 254-262)
# Address: 0x0f0db978 - 0x0f0db9dc (Size: 100 bytes, Frame: 48)
.globl resetOpenGLModel
.ent resetOpenGLModel
resetOpenGLModel:
    # Line 254
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    move	$s7,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,30928 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 259
    la	$t9,glLightModelfv
    li	$a0,2899
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$s7,24
    # Line 260
    la	$t9,glLightModeli
    lbu	$a1,8($s7)
    jalr	$t9
    li	$a0,2897
    # Line 261
    la	$t9,glLightModeli
    lbu	$a1,9($s7)
    jalr	$t9
    li	$a0,2898
    # Line 262
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end resetOpenGLModel

# Function: gl_lmdef_material
# Declared: Line 264 (Source lines: 265-348)
# Address: 0x0f0db9dc - 0x0f0dbcbc (Size: 736 bytes, Frame: 208)
.globl gl_lmdef_material
.ent gl_lmdef_material
gl_lmdef_material:
    # Line 265
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s0,8($sp)
    # Line 272
    move	$s0,$zero
    sd	$s2,24($sp)
    sd	$gp,32($sp)
    sd	$s4,0($sp)
    # Line 265
    lui	$s4,0xfff5
    addiu	$s4,$s4,30828
    addu	$gp,$t9,$s4
    # Line 268
    la	$s2,gl_wstatep
    # Line 265
    move	$s4,$a1
    # Line 273
    beqz	$a1,.L0f0dbc44
    # Line 268
    lw	$s2,0($s2)
    # Line 273
    mtc1	$zero,$f1
    lwc1	$f0,0($s4)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0f0dbc48
    # Line 274
    la	$t9,gl_init_material
    sdc1	$f30,40($sp)
    # Line 277
    lwc1	$f30,_lit_3f000000
    lwc1	$f2,0($s4)
    add.s	$f2,$f2,$f30
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    beqz	$a0,.L0f0dbab4
    addiu	$s4,$s4,4
    b	.L0f0dba8c
    sd	$ra,48($sp)
.L0f0dba5c:
    # Line 320
    la	$t9,gl_ErrorHandler
    addiu	$a2,$gp,-14760
    li	$a1,2
    jalr	$t9
    li	$a0,22
.L0f0dba70:
    # Line 279
    lwc1	$f3,0($s4)
.L0f0dba74:
    add.s	$f3,$f3,$f30
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    beqz	$a0,.L0f0dbab0
    addiu	$s4,$s4,4
.L0f0dba8c:
    # Line 277
    # la	a3,sub_0f020000
    sll	$a1,$a0,0x2
    sltiu	$at,$a0,8
    la	$a3,jtbl_0f023548
    beqz	$at,.L0f0dba5c
    addu	$a1,$a1,$a3
    lw	$at,0($a1)
    jr	$at
    nop
.L0f0dbab0:
    ld	$ra,48($sp)
.L0f0dbab4:
    lw	$v0,3028($s2)
    ldc1	$f30,40($sp)
    bne	$v0,$s1,.L0f0dbaf0
    ld	$s4,0($sp)
    lh	$v1,3036($s2)
    beqz	$v1,.L0f0dbc9c
    sd	$ra,48($sp)
    # Line 333
    move	$a2,$s0
    la	$t9,resetOpenGLMaterial
    move	$a1,$s1
    li	$a0,1028
    bal resetOpenGLMaterial
    ld	$s2,24($sp)
    b	.L0f0dbafc
    ld	$ra,48($sp)
.L0f0dbaf0:
    # Line 336
    lw	$a3,3032($s2)
    beq	$a3,$s1,.L0f0dbc6c
    ld	$s2,24($sp)
.L0f0dbafc:
    ld	$gp,32($sp)
    # Line 348
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0dbb10:
    # Line 282
    lwc1	$f2,0($s4)
    swc1	$f2,8($s1)
    # Line 283
    lwc1	$f1,4($s4)
    swc1	$f1,12($s1)
    # Line 284
    addiu	$s4,$s4,12
    lwc1	$f0,-4($s4)
    # Line 281
    ori	$s0,$s0,0x4
    # Line 285
    b	.L0f0dba70
    # Line 284
    swc1	$f0,16($s1)
.L0f0dbb34:
    # Line 287
    lwc1	$f1,0($s4)
    swc1	$f1,24($s1)
    # Line 288
    lwc1	$f0,4($s4)
    swc1	$f0,28($s1)
    # Line 289
    addiu	$s4,$s4,12
    lwc1	$f3,-4($s4)
    # Line 286
    ori	$s0,$s0,0x8
    # Line 290
    b	.L0f0dba70
    # Line 289
    swc1	$f3,32($s1)
.L0f0dbb58:
    # Line 292
    lwc1	$f0,0($s4)
    swc1	$f0,40($s1)
    # Line 293
    lwc1	$f3,4($s4)
    swc1	$f3,44($s1)
    # Line 294
    addiu	$s4,$s4,12
    lwc1	$f2,-4($s4)
    # Line 291
    ori	$s0,$s0,0x10
    # Line 295
    b	.L0f0dba70
    # Line 294
    swc1	$f2,48($s1)
.L0f0dbb7c:
    # Line 297
    lwc1	$f3,0($s4)
    swc1	$f3,56($s1)
    # Line 298
    lwc1	$f2,4($s4)
    swc1	$f2,60($s1)
    # Line 299
    addiu	$s4,$s4,12
    lwc1	$f1,-4($s4)
    # Line 296
    ori	$s0,$s0,0x20
    # Line 300
    b	.L0f0dba70
    # Line 299
    swc1	$f1,64($s1)
.L0f0dbba0:
    # Line 301
    lwc1	$f0,0($s4)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    addiu	$s4,$s4,4
    bltz	$a0,.L0f0dbc90
    sw	$a0,72($s1)
.L0f0dbbb8:
    # Line 302
    slti	$at,$a0,129
    bnezl	$at,.L0f0dbbd0
    # Line 304
    ori	$s0,$s0,0x40
    li	$v0,128
    # Line 303
    sw	$v0,72($s1)
    # Line 304
    ori	$s0,$s0,0x40
.L0f0dbbd0:
    # Line 305
    b	.L0f0dba74
    # Line 279
    lwc1	$f3,0($s4)
.L0f0dbbd8:
    # Line 307
    addiu	$s4,$s4,4
    lwc1	$f1,-4($s4)
    # Line 306
    ori	$s0,$s0,0x80
    # Line 308
    b	.L0f0dba70
    # Line 307
    swc1	$f1,52($s1)
.L0f0dbbec:
    # Line 310
    lwc1	$f2,0($s4)
    swc1	$f2,76($s1)
    # Line 312
    lwc1	$f5,4($s4)
    # Line 313
    addiu	$s4,$s4,12
    # Line 312
    swc1	$f5,80($s1)
    # Line 314
    c.lt.s	$f5,$f2
    # Line 313
    lwc1	$f4,-4($s4)
    # Line 309
    ori	$s0,$s0,0x100
    # Line 314
    bc1t	.L0f0dbc24
    # Line 313
    swc1	$f4,84($s1)
    # Line 314
    c.lt.s	$f4,$f5
    nop
    bc1fl	.L0f0dba74
    # Line 279
    lwc1	$f3,0($s4)
.L0f0dbc24:
    # Line 315
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,91
    jalr	$t9
    addiu	$a2,$a2,13672
    b	.L0f0dba74
    # Line 279
    lwc1	$f3,0($s4)
.L0f0dbc44:
    # Line 274
    la	$t9,gl_init_material
.L0f0dbc48:
    move	$a0,$s1
    sd	$ra,48($sp)
    bal gl_init_material
    ld	$s4,0($sp)
    # Line 275
    lui	$s0,0xff
    sdc1	$f30,40($sp)
    ld	$ra,48($sp)
    b	.L0f0dbab4
    ori	$s0,$s0,0xffff
.L0f0dbc6c:
    # Line 340
    move	$a2,$s0
    move	$a1,$s1
    la	$t9,resetOpenGLMaterial
    li	$a0,1029
    sd	$ra,48($sp)
    bal resetOpenGLMaterial
    ld	$s2,24($sp)
    b	.L0f0dbafc
    ld	$ra,48($sp)
.L0f0dbc90:
    # Line 302
    move	$a0,$zero
    b	.L0f0dbbb8
    sw	$zero,72($s1)
.L0f0dbc9c:
    # Line 336
    move	$a2,$s0
    la	$t9,resetOpenGLMaterial
    move	$a1,$s1
    li	$a0,1032
    bal resetOpenGLMaterial
    ld	$s2,24($sp)
    b	.L0f0dbafc
    ld	$ra,48($sp)
.end gl_lmdef_material

# Function: gl_lmdef_light
# Declared: Line 350 (Source lines: 351-453)
# Address: 0x0f0dbcbc - 0x0f0dc188 (Size: 1228 bytes, Frame: 240)
.globl gl_lmdef_light
.ent gl_lmdef_light
gl_lmdef_light:
    # Line 351
    addiu	$sp,$sp,-112
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$s1,0($sp)
    move	$s1,$a0
    sd	$s3,32($sp)
    sd	$s4,16($sp)
    sd	$gp,24($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,30092 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 355
    la	$s4,gl_wstatep
    # Line 358
    move	$s3,$zero
    # Line 359
    beqz	$a1,.L0f0dc06c
    # Line 355
    lw	$s4,0($s4)
    # Line 359
    mtc1	$zero,$f1
    lwc1	$f0,0($s0)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0f0dc070
    # Line 360
    la	$t9,gl_init_light
    sdc1	$f28,40($sp)
    # Line 363
    lwc1	$f28,_lit_3f000000
    lwc1	$f2,0($s0)
    add.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    sd	$s6,88($sp)
    sd	$s5,72($sp)
    sd	$s7,64($sp)
    mfc1	$a0,$f2
    sd	$s8,56($sp)
    sd	$s2,48($sp)
    beqz	$a0,.L0f0dbe7c
    addiu	$s0,$s0,4
    li	$s2,2
    sd	$ra,80($sp)
    li	$s8,104
    li	$s7,103
    li	$s6,102
    b	.L0f0dbd8c
    li	$s5,101
.L0f0dbd60:
    # Line 433
    addiu	$a2,$gp,-14760
    li	$a1,2
    jalr	$t9
    li	$a0,22
.L0f0dbd70:
    # Line 365
    lwc1	$f3,0($s0)
.L0f0dbd74:
    add.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    beqz	$a0,.L0f0dbe68
    addiu	$s0,$s0,4
.L0f0dbd8c:
    # Line 367
    beql	$a0,$s2,.L0f0dbe48
    # Line 370
    lwc1	$f2,0($s0)
    # Line 367
    beql	$a0,$s5,.L0f0dbfe8
    # Line 376
    lwc1	$f1,0($s0)
    # Line 367
    beq	$a0,$s6,.L0f0dc008
    # Line 386
    li	$v0,1
    # Line 367
    beql	$a0,$s7,.L0f0dc04c
    # Line 398
    lwc1	$f1,0($s0)
    # Line 367
    bne	$a0,$s8,.L0f0dbd60
    # Line 433
    la	$t9,gl_ErrorHandler
    # Line 406
    lw	$a0,72($s1)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,0($s0)
    c.eq.s	$f0,$f1
    nop
    bc1tl	.L0f0dbdf0
    # Line 410
    addiu	$s0,$s0,4
    # Line 407
    lwc1	$f2,0($s0)
    trunc.w.s	$f2,$f2
    # Line 408
    ori	$s3,$s3,0x200
    # Line 407
    mfc1	$a0,$f2
    addiu	$s0,$s0,4
    sw	$a0,72($s1)
.L0f0dbdf0:
    # Line 410
    bltz	$a0,.L0f0dc09c
.L0f0dbdf4:
    # Line 412
    slti	$v0,$a0,129
    bnezl	$v0,.L0f0dbe0c
    # Line 423
    lwc1	$f3,0($s0)
    # Line 413
    li	$v1,128
    sw	$v1,72($s1)
    # Line 423
    lwc1	$f3,0($s0)
.L0f0dbe0c:
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    blez	$a0,.L0f0dc094
    addiu	$s0,$s0,4
.L0f0dbe20:
    # Line 424
    slti	$a3,$a0,91
    bnezl	$a3,.L0f0dbe34
    # Line 425
    lw	$at,76($s1)
    li	$a0,180
    lw	$at,76($s1)
.L0f0dbe34:
    beql	$at,$a0,.L0f0dbd74
    # Line 365
    lwc1	$f3,0($s0)
    # Line 429
    ori	$s3,$s3,0x200
    b	.L0f0dbd70
    # Line 428
    sw	$a0,76($s1)
.L0f0dbe48:
    # Line 370
    swc1	$f2,20($s1)
    # Line 371
    lwc1	$f1,4($s0)
    swc1	$f1,24($s1)
    # Line 372
    addiu	$s0,$s0,12
    lwc1	$f0,-4($s0)
    # Line 369
    ori	$s3,$s3,0x8
    # Line 373
    b	.L0f0dbd70
    # Line 372
    swc1	$f0,28($s1)
.L0f0dbe68:
    ld	$s8,56($sp)
    ld	$s7,64($sp)
    ld	$s5,72($sp)
    ld	$ra,80($sp)
    ld	$s6,88($sp)
.L0f0dbe7c:
    # Line 439
    move	$s0,$zero
    ldc1	$f28,40($sp)
    move	$s2,$s4
    # Line 443
    lw	$a0,3040($s2)
    beqzl	$a0,.L0f0dbeb4
    lw	$a0,3044($s2)
    lw	$v1,4($a0)
    lw	$v0,4($s1)
    bnel	$v0,$v1,.L0f0dbeb4
    lw	$a0,3044($s2)
    lw	$a3,8($s1)
    beq	$a3,$s4,.L0f0dc16c
    # Line 448
    move	$a0,$s1
.L0f0dbeb0:
    # Line 443
    lw	$a0,3044($s2)
.L0f0dbeb4:
    beqz	$a0,.L0f0dbed8
    # Line 439
    addiu	$s0,$s0,1
    # Line 443
    lw	$v0,4($a0)
    lw	$at,4($s1)
    bnel	$at,$v0,.L0f0dbedc
    lw	$a0,3048($s2)
    lw	$v1,8($s1)
    beq	$v1,$s4,.L0f0dc134
    # Line 448
    move	$a0,$s1
.L0f0dbed8:
    # Line 443
    lw	$a0,3048($s2)
.L0f0dbedc:
    beqz	$a0,.L0f0dbf00
    # Line 439
    addiu	$s0,$s0,1
    # Line 443
    lw	$at,4($a0)
    lw	$a3,4($s1)
    bnel	$a3,$at,.L0f0dbf04
    lw	$a0,3052($s2)
    lw	$v0,8($s1)
    beq	$v0,$s4,.L0f0dc150
    # Line 448
    move	$a0,$s1
.L0f0dbf00:
    # Line 443
    lw	$a0,3052($s2)
.L0f0dbf04:
    beqz	$a0,.L0f0dbf28
    # Line 439
    addiu	$s0,$s0,1
    # Line 443
    lw	$a3,4($a0)
    lw	$v1,4($s1)
    bnel	$v1,$a3,.L0f0dbf2c
    lw	$a0,3056($s2)
    lw	$at,8($s1)
    beq	$at,$s4,.L0f0dc0a8
    # Line 448
    move	$a0,$s1
.L0f0dbf28:
    # Line 443
    lw	$a0,3056($s2)
.L0f0dbf2c:
    beqz	$a0,.L0f0dbf50
    # Line 439
    addiu	$s0,$s0,1
    # Line 443
    lw	$v1,4($a0)
    lw	$v0,4($s1)
    bnel	$v0,$v1,.L0f0dbf54
    lw	$a0,3060($s2)
    lw	$a3,8($s1)
    beq	$a3,$s4,.L0f0dc0c4
    # Line 448
    move	$a0,$s1
.L0f0dbf50:
    # Line 443
    lw	$a0,3060($s2)
.L0f0dbf54:
    beqz	$a0,.L0f0dbf78
    # Line 439
    addiu	$s0,$s0,1
    # Line 443
    lw	$v0,4($a0)
    lw	$at,4($s1)
    bnel	$at,$v0,.L0f0dbf7c
    lw	$a0,3064($s2)
    lw	$v1,8($s1)
    beq	$v1,$s4,.L0f0dc0e0
    # Line 448
    move	$a0,$s1
.L0f0dbf78:
    # Line 443
    lw	$a0,3064($s2)
.L0f0dbf7c:
    beqz	$a0,.L0f0dbfa0
    # Line 439
    addiu	$s0,$s0,1
    # Line 443
    lw	$at,4($a0)
    lw	$a3,4($s1)
    bnel	$a3,$at,.L0f0dbfa4
    lw	$a0,3068($s2)
    lw	$v0,8($s1)
    beq	$v0,$s4,.L0f0dc0fc
    # Line 448
    move	$a0,$s1
.L0f0dbfa0:
    # Line 443
    lw	$a0,3068($s2)
.L0f0dbfa4:
    beqz	$a0,.L0f0dbfc8
    # Line 439
    addiu	$s0,$s0,1
    # Line 443
    lw	$a3,4($a0)
    lw	$v1,4($s1)
    bnel	$v1,$a3,.L0f0dbfcc
    ld	$gp,24($sp)
    lw	$at,8($s1)
    beq	$at,$s4,.L0f0dc118
    # Line 448
    move	$a0,$s1
.L0f0dbfc8:
    ld	$gp,24($sp)
.L0f0dbfcc:
    # Line 453
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s2,48($sp)
    ld	$s3,32($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0dbfe8:
    # Line 376
    swc1	$f1,36($s1)
    # Line 377
    lwc1	$f0,4($s0)
    swc1	$f0,40($s1)
    # Line 378
    addiu	$s0,$s0,12
    lwc1	$f3,-4($s0)
    # Line 375
    ori	$s3,$s3,0x30
    # Line 379
    b	.L0f0dbd70
    # Line 378
    swc1	$f3,44($s1)
.L0f0dc008:
    # Line 382
    lwc1	$f2,0($s0)
    swc1	$f2,52($s1)
    # Line 383
    lwc1	$f1,4($s0)
    swc1	$f1,56($s1)
    # Line 384
    lwc1	$f0,8($s0)
    swc1	$f0,60($s1)
    mtc1	$zero,$f3
    # Line 385
    lwc1	$f2,12($s0)
    # Line 386
    c.eq.s	$f2,$f3
    nop
    bc1fl	.L0f0dc038
    move	$v0,$zero
.L0f0dc038:
    # Line 385
    addiu	$s0,$s0,16
    # Line 381
    ori	$s3,$s3,0x2
    # Line 385
    swc1	$f2,64($s1)
    # Line 395
    b	.L0f0dbd70
    # Line 386
    sw	$v0,16($s1)
.L0f0dc04c:
    # Line 398
    swc1	$f1,80($s1)
    # Line 399
    lwc1	$f0,4($s0)
    swc1	$f0,84($s1)
    # Line 400
    addiu	$s0,$s0,12
    lwc1	$f3,-4($s0)
    # Line 397
    ori	$s3,$s3,0x400
    # Line 404
    b	.L0f0dbd70
    # Line 400
    swc1	$f3,88($s1)
.L0f0dc06c:
    # Line 360
    la	$t9,gl_init_light
.L0f0dc070:
    sd	$ra,80($sp)
    bal gl_init_light
    move	$a0,$s1
    # Line 361
    lui	$s3,0xff
    sd	$s2,48($sp)
    sdc1	$f28,40($sp)
    ld	$ra,80($sp)
    b	.L0f0dbe7c
    ori	$s3,$s3,0xffff
.L0f0dc094:
    b	.L0f0dbe20
    # Line 424
    move	$a0,$zero
.L0f0dc09c:
    # Line 412
    move	$a0,$zero
    b	.L0f0dbdf4
    sw	$zero,72($s1)
.L0f0dc0a8:
    # Line 448
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbf28
    ld	$ra,80($sp)
.L0f0dc0c4:
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbf50
    ld	$ra,80($sp)
.L0f0dc0e0:
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbf78
    ld	$ra,80($sp)
.L0f0dc0fc:
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbfa0
    ld	$ra,80($sp)
.L0f0dc118:
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbfc8
    ld	$ra,80($sp)
.L0f0dc134:
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbed8
    ld	$ra,80($sp)
.L0f0dc150:
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbf00
    ld	$ra,80($sp)
.L0f0dc16c:
    la	$t9,resetOpenGLLight
    move	$a1,$s0
    sd	$ra,80($sp)
    bal resetOpenGLLight
    move	$a2,$s3
    b	.L0f0dbeb0
    ld	$ra,80($sp)
.end gl_lmdef_light

# Function: gl_lmdef_lightingmodel
# Declared: Line 455 (Source lines: 456-507)
# Address: 0x0f0dc188 - 0x0f0dc4d8 (Size: 848 bytes, Frame: 128)
.globl gl_lmdef_lightingmodel
.ent gl_lmdef_lightingmodel
gl_lmdef_lightingmodel:
    # Line 456
    addiu	$sp,$sp,-128
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s3,32($sp)
    sd	$gp,24($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,28864 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 459
    la	$s3,gl_wstatep
    sdc1	$f30,40($sp)
    # Line 465
    beqz	$a1,.L0f0dc4b4
    # Line 459
    lw	$s3,0($s3)
    # Line 465
    mtc1	$zero,$f30
    lwc1	$f0,0($s1)
    c.eq.s	$f0,$f30
    nop
    bc1t	.L0f0dc4b8
    # Line 466
    la	$t9,gl_init_lightingmodel
    sdc1	$f28,48($sp)
    # Line 469
    lwc1	$f28,_lit_3f000000
    lwc1	$f1,0($s1)
    add.s	$f1,$f1,$f28
    trunc.w.s	$f1,$f1
    sd	$s6,96($sp)
    sd	$s4,80($sp)
    sd	$s5,72($sp)
    mfc1	$a0,$f1
    sd	$s7,64($sp)
    sd	$s8,56($sp)
    beqz	$a0,.L0f0dc2cc
    addiu	$s1,$s1,4
    sd	$ra,88($sp)
    li	$s8,203
    li	$s7,202
    li	$s6,204
    li	$s5,201
    b	.L0f0dc254
    li	$s4,2
.L0f0dc228:
    # Line 494
    addiu	$a2,$gp,-14760
    li	$a1,2
    jalr	$t9
    li	$a0,22
.L0f0dc238:
    # Line 471
    lwc1	$f2,0($s1)
.L0f0dc23c:
    add.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    beqz	$a0,.L0f0dc2b4
    addiu	$s1,$s1,4
.L0f0dc254:
    # Line 473
    beql	$a0,$s4,.L0f0dc298
    # Line 474
    lwc1	$f2,0($s1)
    # Line 473
    beql	$a0,$s5,.L0f0dc450
    # Line 478
    lwc1	$f3,0($s1)
    # Line 473
    beql	$a0,$s6,.L0f0dc468
    # Line 480
    lwc1	$f0,0($s1)
    # Line 473
    beql	$a0,$s7,.L0f0dc480
    # Line 482
    lwc1	$f1,0($s1)
    # Line 473
    bne	$a0,$s8,.L0f0dc228
    # Line 494
    la	$t9,gl_ErrorHandler
    # Line 490
    lwc1	$f3,0($s1)
    c.lt.s	$f3,$f30
    addiu	$s1,$s1,4
    bc1f	.L0f0dc238
    swc1	$f3,20($s0)
    # Line 491
    b	.L0f0dc238
    swc1	$f30,20($s0)
.L0f0dc298:
    # Line 474
    swc1	$f2,24($s0)
    # Line 475
    lwc1	$f1,4($s1)
    swc1	$f1,28($s0)
    # Line 476
    lwc1	$f0,8($s1)
    addiu	$s1,$s1,12
    # Line 477
    b	.L0f0dc238
    # Line 476
    swc1	$f0,32($s0)
.L0f0dc2b4:
    ld	$s8,56($sp)
    ld	$s7,64($sp)
    ld	$s5,72($sp)
    ld	$s4,80($sp)
    ld	$ra,88($sp)
    ld	$s6,96($sp)
.L0f0dc2cc:
    # Line 469
    lw	$v0,3024($s3)
    ldc1	$f30,40($sp)
    bne	$v0,$s0,.L0f0dc438
    ldc1	$f28,48($sp)
    # Line 499
    la	$t9,resetOpenGLModel
    sd	$ra,88($sp)
    bal resetOpenGLModel
    move	$a0,$s0
    li	$s1,16384
    move	$v1,$s3
    sd	$s3,0($sp)
    ld	$ra,88($sp)
    ld	$a4,0($sp)
    lw	$a4,3040($a4)
    beqz	$a4,.L0f0dc320
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc320:
    ld	$a4,0($sp)
    # Line 499
    lw	$a4,3044($a4)
    beqz	$a4,.L0f0dc348
    # Line 500
    addiu	$s1,$s1,1
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc348:
    ld	$a4,0($sp)
    # Line 499
    lw	$a4,3048($a4)
    beqz	$a4,.L0f0dc370
    # Line 500
    addiu	$s1,$s1,1
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc370:
    ld	$a4,0($sp)
    # Line 499
    lw	$a4,3052($a4)
    beqz	$a4,.L0f0dc398
    # Line 500
    addiu	$s1,$s1,1
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc398:
    ld	$a4,0($sp)
    # Line 499
    lw	$a4,3056($a4)
    beqz	$a4,.L0f0dc3c0
    # Line 500
    addiu	$s1,$s1,1
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc3c0:
    ld	$a4,0($sp)
    # Line 499
    lw	$a4,3060($a4)
    beqz	$a4,.L0f0dc3e8
    # Line 500
    addiu	$s1,$s1,1
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc3e8:
    ld	$a4,0($sp)
    # Line 499
    lw	$a4,3064($a4)
    beqz	$a4,.L0f0dc410
    # Line 500
    addiu	$s1,$s1,1
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc410:
    ld	$a4,0($sp)
    # Line 499
    lw	$a4,3068($a4)
    beqz	$a4,.L0f0dc438
    # Line 500
    addiu	$s1,$s1,1
    # Line 502
    la	$t9,__iglooSetOglAttenuation
    move	$a0,$s1
    move	$a1,$s0
    bal __iglooSetOglAttenuation
    lw	$a2,16($a4)
    ld	$ra,88($sp)
.L0f0dc438:
    ld	$gp,24($sp)
    # Line 507
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0dc450:
    # Line 478
    add.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    addiu	$s1,$s1,4
    # Line 479
    b	.L0f0dc238
    # Line 478
    sb	$at,8($s0)
.L0f0dc468:
    # Line 480
    add.s	$f0,$f0,$f28
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    addiu	$s1,$s1,4
    # Line 481
    b	.L0f0dc238
    # Line 480
    sb	$v0,9($s0)
.L0f0dc480:
    # Line 482
    swc1	$f1,12($s0)
    # Line 483
    c.lt.s	$f1,$f30
    lwc1	$f4,4($s1)
    addiu	$s1,$s1,8
    bc1f	.L0f0dc49c
    swc1	$f4,16($s0)
    # Line 487
    swc1	$f30,12($s0)
.L0f0dc49c:
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0f0dc23c
    # Line 471
    lwc1	$f2,0($s1)
    # Line 488
    b	.L0f0dc238
    swc1	$f30,16($s0)
.L0f0dc4b4:
    # Line 466
    la	$t9,gl_init_lightingmodel
.L0f0dc4b8:
    move	$a0,$s0
    sd	$ra,88($sp)
    bal gl_init_lightingmodel
    ldc1	$f30,40($sp)
    sdc1	$f28,48($sp)
    sdc1	$f30,40($sp)
    b	.L0f0dc2cc
    ld	$ra,88($sp)
.end gl_lmdef_lightingmodel

# Function: __glCheckDefMoveDraw
# Declared: Line 509 (Source lines: 510-536)
# Address: 0x0f0dc4d8 - 0x0f0dc5fc (Size: 292 bytes, Frame: 0)
.globl __glCheckDefMoveDraw
.ent __glCheckDefMoveDraw
__glCheckDefMoveDraw:
    # Line 510
    lui	$v0,0xfff5
    addiu	$v0,$v0,28016
    addu	$at,$t9,$v0
    # Line 512
    beqz	$a0,.L0f0dc5ec
    move	$v0,$zero
    lw	$a4,-23296($at)
    lw	$a4,0($a4)
    lw	$a5,3024($a4)
    beqzl	$a5,.L0f0dc50c
    # Line 522
    move	$a5,$a4
    # Line 512
    lw	$v1,4($a5)
    beq	$v1,$a1,.L0f0dc5f4
    # Line 522
    move	$a5,$a4
.L0f0dc50c:
    lw	$a4,3040($a5)
    beqzl	$a4,.L0f0dc52c
    lw	$a4,3044($a5)
    lw	$a0,4($a4)
    bnel	$a0,$a1,.L0f0dc52c
    lw	$a4,3044($a5)
    # Line 531
    li	$v0,1
    # Line 522
    lw	$a4,3044($a5)
.L0f0dc52c:
    beqzl	$a4,.L0f0dc548
    lw	$a4,3048($a5)
    lw	$a2,4($a4)
    bnel	$a2,$a1,.L0f0dc548
    lw	$a4,3048($a5)
    # Line 531
    li	$v0,1
    # Line 522
    lw	$a4,3048($a5)
.L0f0dc548:
    beqzl	$a4,.L0f0dc564
    lw	$a4,3052($a5)
    lw	$a3,4($a4)
    bnel	$a3,$a1,.L0f0dc564
    lw	$a4,3052($a5)
    # Line 531
    li	$v0,1
    # Line 522
    lw	$a4,3052($a5)
.L0f0dc564:
    beqzl	$a4,.L0f0dc580
    lw	$a4,3056($a5)
    lw	$v1,4($a4)
    bnel	$v1,$a1,.L0f0dc580
    lw	$a4,3056($a5)
    # Line 531
    li	$v0,1
    # Line 522
    lw	$a4,3056($a5)
.L0f0dc580:
    beqzl	$a4,.L0f0dc59c
    lw	$a4,3060($a5)
    lw	$a0,4($a4)
    bnel	$a0,$a1,.L0f0dc59c
    lw	$a4,3060($a5)
    # Line 531
    li	$v0,1
    # Line 522
    lw	$a4,3060($a5)
.L0f0dc59c:
    beqzl	$a4,.L0f0dc5b8
    lw	$a4,3064($a5)
    lw	$a2,4($a4)
    bnel	$a2,$a1,.L0f0dc5b8
    lw	$a4,3064($a5)
    # Line 531
    li	$v0,1
    # Line 522
    lw	$a4,3064($a5)
.L0f0dc5b8:
    beqzl	$a4,.L0f0dc5d4
    lw	$a4,3068($a5)
    lw	$a3,4($a4)
    bnel	$a3,$a1,.L0f0dc5d4
    lw	$a4,3068($a5)
    # Line 531
    li	$v0,1
    # Line 522
    lw	$a4,3068($a5)
.L0f0dc5d4:
    beqz	$a4,.L0f0dc5ec
    nop
    lw	$v1,4($a4)
    bne	$v1,$a1,.L0f0dc5ec
    nop
    # Line 531
    li	$v0,1
.L0f0dc5ec:
    # Line 536
    jr	$ra
    nop
.L0f0dc5f4:
    jr	$ra
    # Line 522
    li	$v0,1
.end __glCheckDefMoveDraw

# Function: gl_g_lmdef
# Declared: Line 539 (Source lines: 540-593)
# Address: 0x0f0dc5fc - 0x0f0dc7b4 (Size: 440 bytes, Frame: 208)
.globl gl_g_lmdef
.ent gl_g_lmdef
gl_g_lmdef:
    # Line 540
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$a3,0($sp)
    sd	$gp,16($sp)
    lui	$at,0xfff5
    addiu	$at,$at,27724
    beqz	$a1,.L0f0dc6e0
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 553
    la	$t9,__glCheckDefMoveDraw
    move	$a0,$s1
    bal __glCheckDefMoveDraw
    move	$a1,$s0
    beqz	$v0,.L0f0dc64c
    # Line 555
    la	$t9,__iglooCloseMoveDraw
    jalr	$t9
    nop
.L0f0dc64c:
    # Line 565
    beqz	$s1,.L0f0dc70c
    li	$v1,100
    beq	$s1,$v1,.L0f0dc760
    li	$a2,200
    beq	$s1,$a2,.L0f0dc68c
    # Line 590
    la	$t9,gl_ErrorHandler
    addiu	$a2,$gp,-14760
    li	$a1,2
    jalr	$t9
    li	$a0,22
    ld	$ra,32($sp)
.L0f0dc678:
    ld	$gp,16($sp)
    # Line 593
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0dc68c:
    # Line 583
    la	$t9,gl_remove
    la	$a0,gl_lightingmodeltab
    jalr	$t9
    move	$a1,$s0
    bnez	$v0,.L0f0dc6b4
    move	$s1,$v0
    # Line 584
    la	$t9,gl_newlightingmodel
    bal gl_newlightingmodel
    nop
    move	$s1,$v0
.L0f0dc6b4:
    # Line 586
    la	$t9,gl_lmdef_lightingmodel
    ld	$a1,0($sp)
    move	$a0,$s1
    bal gl_lmdef_lightingmodel
    # Line 585
    sw	$s0,4($s1)
    # Line 587
    la	$t9,gl_insert
    la	$a0,gl_lightingmodeltab
    jalr	$t9
    move	$a1,$s1
    b	.L0f0dc678
    ld	$ra,32($sp)
.L0f0dc6e0:
    # Line 546
    la	$t9,gl_ErrorHandler
    addiu	$a2,$gp,-14760
    li	$a1,2
    jalr	$t9
    li	$a0,55
    ld	$gp,16($sp)
    # Line 547
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0dc70c:
    # Line 569
    la	$t9,gl_remove
    la	$a0,gl_materialtab
    jalr	$t9
    move	$a1,$s0
    bnez	$v0,.L0f0dc734
    move	$s1,$v0
    # Line 570
    la	$t9,gl_newmaterial
    bal gl_newmaterial
    nop
    move	$s1,$v0
.L0f0dc734:
    # Line 572
    la	$t9,gl_lmdef_material
    ld	$a1,0($sp)
    move	$a0,$s1
    bal gl_lmdef_material
    # Line 571
    sw	$s0,4($s1)
    # Line 573
    la	$t9,gl_insert
    la	$a0,gl_materialtab
    jalr	$t9
    move	$a1,$s1
    b	.L0f0dc678
    ld	$ra,32($sp)
.L0f0dc760:
    # Line 576
    la	$t9,gl_remove
    la	$a0,gl_lighttab
    jalr	$t9
    move	$a1,$s0
    bnez	$v0,.L0f0dc788
    move	$s1,$v0
    # Line 577
    la	$t9,gl_newlight
    bal gl_newlight
    nop
    move	$s1,$v0
.L0f0dc788:
    # Line 579
    la	$t9,gl_lmdef_light
    ld	$a1,0($sp)
    move	$a0,$s1
    bal gl_lmdef_light
    # Line 578
    sw	$s0,4($s1)
    # Line 580
    la	$t9,gl_insert
    la	$a0,gl_lighttab
    jalr	$t9
    move	$a1,$s1
    b	.L0f0dc678
    ld	$ra,32($sp)
.end gl_g_lmdef

.late_rodata
jtbl_0f023548:
    .word .L0f0dba5c
    .word .L0f0dbb10
    .word .L0f0dbb34
    .word .L0f0dbb58
    .word .L0f0dbb7c
    .word .L0f0dbba0
    .word .L0f0dbbec
    .word .L0f0dbbd8

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000

