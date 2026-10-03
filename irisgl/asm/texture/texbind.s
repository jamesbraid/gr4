# Source: ../igloo/texture/texbind.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/texbind.c -o texbind.T
# Total Functions: 16

.text

# Function: gl_g_istexloaded
# Declared: Line 58 (Source lines: 59-101)
# Address: 0x0f1194a4 - 0x0f11954c (Size: 168 bytes, Frame: 48)
.globl gl_g_istexloaded
.ent gl_g_istexloaded
gl_g_istexloaded:
    # Line 59
    addiu	$sp,$sp,-48
    sd	$zero,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xfff2
    addiu	$at,$at,-25180
    # Line 61
    beqz	$a0,.L0f1194d0
    # Line 59
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 72
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1194d0:
    # Line 74
    la	$t9,gl_find
    sd	$ra,24($sp)
    jalr	$t9
    la	$a0,gl_texturetab
    beqz	$v0,.L0f11950c
    ld	$ra,24($sp)
    # Line 78
    li	$a0,1
    la	$v1,gl_iglooUseTexObj
    lw	$v1,0($v1)
    beq	$v1,$a0,.L0f11951c
    # Line 88
    addiu	$a2,$sp,0
.L0f1194fc:
    ld	$v0,8($sp)
    ld	$gp,16($sp)
    # Line 101
    jr	$ra
    addiu	$sp,$sp,48
.L0f11950c:
    # Line 78
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f11951c:
    # Line 88
    la	$t9,glAreTexturesResidentEXT
    addiu	$a1,$v0,12
    li	$a0,1
    jalr	$t9
    # Line 85
    sb	$zero,0($sp)
    ld	$ra,24($sp)
    li	$a2,1
    # Line 92
    andi	$a0,$v0,0xff
    xor	$a0,$a0,$a2
    sltiu	$a0,$a0,1
    b	.L0f1194fc
    sd	$a0,8($sp)
.end gl_g_istexloaded

# Function: gl_texbind
# Declared: Line 108 (Source lines: 109-195)
# Address: 0x0f11954c - 0x0f11973c (Size: 496 bytes, Frame: 224)
.globl gl_texbind
.ent gl_texbind
gl_texbind:
    # Line 109
    addiu	$sp,$sp,-96
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$ra,32($sp)
    sd	$s0,40($sp)
    sd	$gp,48($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-25348 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 110
    la	$at,gl_wstatep
    # Line 109
    move	$s0,$a0
    # Line 111
    la	$t9,gl_find
    # Line 110
    lw	$at,0($at)
    # Line 111
    la	$a0,gl_texturetab
    jalr	$t9
    sd	$at,16($sp)
    ld	$a0,16($sp)
    # Line 115
    beqz	$s0,.L0f1195b0
    # Line 195
    ld	$ra,32($sp)
    # Line 115
    li	$v1,1
    beq	$s0,$v1,.L0f1195f4
    ld	$gp,48($sp)
    # Line 195
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1195b0:
    # Line 118
    bnez	$v0,.L0f119608
    lw	$a0,11708($a0)
    # Line 121
    ld	$a3,16($sp)
    # Line 120
    sw	$zero,4($a0)
    # Line 121
    lw	$a4,11708($a3)
    sw	$zero,8($a4)
    lw	$a3,11708($a3)
    lw	$a3,0($a3)
    beqz	$a3,.L0f1195e0
    # Line 123
    la	$t9,gl_notexturing
    bal gl_notexturing
    nop
.L0f1195e0:
    # Line 125
    ld	$ra,32($sp)
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1195f4:
    ld	$gp,48($sp)
    # Line 189
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f119608:
    # Line 130
    ld	$v1,8($sp)
    lw	$at,4($a0)
    bne	$at,$v1,.L0f11963c
    li	$a1,1
    lw	$a3,8($v0)
    lw	$a1,8($a0)
    bne	$a1,$a3,.L0f11963c
    li	$a1,1
    ld	$a4,0($sp)
    bnel	$a4,$a1,.L0f1196e4
    # Line 151
    lw	$a3,136($v0)
    b	.L0f119640
    # Line 133
    lw	$a4,4($v0)
.L0f11963c:
    lw	$a4,4($v0)
.L0f119640:
    # Line 134
    ld	$a3,16($sp)
    # Line 133
    sw	$a4,4($a0)
    # Line 134
    lw	$a3,11708($a3)
    lw	$v1,8($v0)
    la	$at,gl_iglooUseTexObj
    sw	$v1,8($a3)
    lw	$at,0($at)
    bne	$at,$a1,.L0f119694
    # Line 143
    la	$t9,__iglooPixelStorei
    # Line 134
    lw	$at,28($v0)
    li	$v1,3
    beql	$at,$v1,.L0f119734
    sd	$v0,24($sp)
    sd	$v0,24($sp)
    # Line 138
    li	$a0,3553
.L0f11967c:
    la	$t9,glBindTextureEXT
    ld	$a1,24($sp)
    jalr	$t9
    lw	$a1,12($a1)
    b	.L0f1196c4
    nop
.L0f119694:
    sd	$v0,24($sp)
    # Line 143
    li	$a1,1
    bal __iglooPixelStorei
    li	$a0,3317
    # Line 144
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    bal __iglooPixelStorei
    li	$a0,3314
    # Line 148
    la	$t9,glCallList
    ld	$a0,24($sp)
    jalr	$t9
    lw	$a0,20($a0)
.L0f1196c4:
    # Line 150
    la	$t9,__iglooNotTexObjList
    bal __iglooNotTexObjList
    ld	$a0,24($sp)
    # Line 151
    la	$t9,gl_dotexturing
    bal gl_dotexturing
    nop
    ld	$v0,24($sp)
    lw	$a3,136($v0)
.L0f1196e4:
    li	$a4,3840
    bne	$a3,$a4,.L0f119708
    li	$v1,12288
    lw	$at,128($v0)
    beq	$at,$v1,.L0f11971c
    # Line 162
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-25828
    bal gl_n_texbind
    move	$a0,$v0
.L0f119708:
    # Line 167
    ld	$ra,32($sp)
.L0f11970c:
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f11971c:
    # Line 158
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-26500
    bal gl_n_texbind
    move	$a0,$v0
    b	.L0f11970c
    # Line 167
    ld	$ra,32($sp)
.L0f119734:
    # Line 138
    b	.L0f11967c
    li	$a0,0x806f
.end gl_texbind

# Function: gl_i_texbind
# Declared: Line 197 (Source lines: 197-197)
# Address: 0x0f11973c - 0x0f119794 (Size: 88 bytes, Frame: 48)
.globl gl_i_texbind
.ent gl_i_texbind
gl_i_texbind:
    # Line 197
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-25844 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f119778
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
.L0f119778:
    la	$t9,gl_texbind
    bal gl_texbind
    move	$a2,$zero
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_texbind

# Function: gl_c_texbind
# Declared: Line 197 (Source lines: 197-197)
# Address: 0x0f119794 - 0x0f119818 (Size: 132 bytes, Frame: 192)
.globl gl_c_texbind
.ent gl_c_texbind
gl_c_texbind:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-25932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19940($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1197f4
    move	$s8,$a0
.L0f1197c0:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_texbind
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1197f4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-21960
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f1197c0
    sw	$a2,-19940($gp)
.end gl_c_texbind

# Function: gl_n_texbind
# Declared: Line 197 (Source lines: 197-197)
# Address: 0x0f119818 - 0x0f11987c (Size: 100 bytes, Frame: 48)
.globl gl_n_texbind
.ent gl_n_texbind
gl_n_texbind:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-26064 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f119850
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f119850:
    la	$t9,gl_texbind
    move	$a2,$zero
    lw	$a1,4($s8)
    bal gl_texbind
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_texbind

# Function: __iglooDownLoadPixmodeTex
# Declared: Line 199 (Source lines: 200-238)
# Address: 0x0f11987c - 0x0f1199a4 (Size: 296 bytes, Frame: 208)
.ent __iglooDownLoadPixmodeTex
__iglooDownLoadPixmodeTex:
    # Line 200
    addiu	$sp,$sp,-80
    sd	$s0,56($sp)
    move	$s0,$a0
    # Line 210
    la	$t9,__iglooGetGraphicsType
    sd	$s1,48($sp)
    # Line 208
    lw	$s1,24($a0)
    sd	$ra,40($sp)
    # Line 210
    jalr	$t9
    # Line 208
    sltu	$s1,$zero,$s1
    # Line 211
    li	$at,3
    beq	$v0,$at,.L0f119970
    li	$v1,4
    beq	$v0,$v1,.L0f119970
    # Line 217
    addiu	$a3,$sp,20
.L0f1198b4:
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s0)
    jalr	$t9
    lw	$a0,32($s0)
    # Line 222
    addiu	$a3,$sp,24
    la	$t9,sub_0f120000
    addiu	$a2,$sp,16
    move	$a1,$s1
    addiu	$t9,$t9,-25352
    bal gl_n_texbind
    lbu	$a0,340($s0)
    # Line 223
    addiu	$a3,$sp,32
    la	$t9,sub_0f120000
    addiu	$a2,$sp,28
    move	$a1,$s1
    addiu	$t9,$t9,-25052
    bal gl_n_texbind
    lbu	$a0,341($s0)
    # Line 229
    move	$a5,$zero
    move	$a1,$zero
    li	$a0,3553
    lw	$a7,28($sp)
    lw	$a6,16($sp)
    lw	$a4,40($s0)
    lw	$a3,36($s0)
    la	$t9,glTexImage2D
    lw	$at,24($s0)
    lw	$a2,20($sp)
    jalr	$t9
    sw	$at,4($sp)
    lw	$a0,24($sp)
    beqz	$a0,.L0f119948
    # Line 234
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-25104
    bal gl_n_texbind
    nop
.L0f119948:
    lwc1	$f0,_lit_3f800000
    lwc1	$f12,32($sp)
    c.eq.s	$f12,$f0
    nop
    bc1f	.L0f11998c
    ld	$ra,40($sp)
.L0f119960:
    # Line 238
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f119970:
    # Line 211
    bnez	$s1,.L0f1198b4
    # Line 217
    addiu	$a3,$sp,20
    ld	$ra,40($sp)
    # Line 214
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f11998c:
    # Line 236
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-24820
    bal gl_n_texbind
    nop
    b	.L0f119960
    ld	$ra,40($sp)
.end __iglooDownLoadPixmodeTex

# Function: __iglooDownLoadPixmodeSubTex
# Declared: Line 240 (Source lines: 242-286)
# Address: 0x0f1199a4 - 0x0f119b1c (Size: 376 bytes, Frame: 160)
.ent __iglooDownLoadPixmodeSubTex
__iglooDownLoadPixmodeSubTex:
    # Line 242
    addiu	$sp,$sp,-160
    sd	$s1,104($sp)
    sd	$a0,72($sp)
    sd	$a1,48($sp)
    sd	$a2,56($sp)
    sd	$a3,64($sp)
    sd	$s0,96($sp)
    # Line 243
    la	$at,gl_wstatep
    # Line 242
    move	$s0,$a4
    # Line 253
    la	$t9,__iglooGetGraphicsType
    # Line 243
    lw	$at,0($at)
    sd	$ra,88($sp)
    # Line 253
    jalr	$t9
    sd	$at,80($sp)
    ld	$ra,88($sp)
    move	$s1,$v0
    # Line 256
    li	$v0,3
    beq	$s1,$v0,.L0f119a30
    move	$v1,$s1
    li	$a6,4
    beq	$v1,$a6,.L0f119a30
    ld	$s1,104($sp)
.L0f1199fc:
    # Line 262
    ld	$a1,80($sp)
    la	$t9,gl_find
    lw	$a1,11708($a1)
    la	$a0,gl_texturetab
    jalr	$t9
    lw	$a1,4($a1)
    bnez	$v0,.L0f119a44
    move	$s1,$v0
    ld	$ra,88($sp)
    # Line 265
    ld	$s0,96($sp)
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f119a30:
    # Line 256
    bnez	$s0,.L0f1199fc
    ld	$s1,104($sp)
    # Line 259
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f119a44:
    # Line 267
    addiu	$a3,$sp,20
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s1)
    jalr	$t9
    lw	$a0,32($s1)
    # Line 272
    addiu	$a3,$sp,24
    addiu	$a2,$sp,16
    la	$t9,sub_0f120000
    lbu	$a0,340($s1)
    sltu	$a1,$zero,$s0
    addiu	$t9,$t9,-25352
    bal gl_n_texbind
    sd	$a1,40($sp)
    # Line 273
    addiu	$a3,$sp,32
    la	$t9,sub_0f120000
    addiu	$a2,$sp,28
    ld	$a1,40($sp)
    addiu	$t9,$t9,-25052
    bal gl_n_texbind
    lbu	$a0,341($s1)
    # Line 277
    lw	$a7,28($sp)
    lw	$a6,16($sp)
    sw	$s0,4($sp)
    ld	$a5,64($sp)
    ld	$a4,56($sp)
    ld	$a3,48($sp)
    ld	$a2,72($sp)
    la	$t9,glTexSubImage2DEXT
    move	$a1,$zero
    li	$a0,3553
    jalr	$t9
    ld	$s1,104($sp)
    lw	$a0,24($sp)
    beqz	$a0,.L0f119ae0
    # Line 282
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-25104
    bal gl_n_texbind
    nop
.L0f119ae0:
    lwc1	$f0,_lit_3f800000
    lwc1	$f12,32($sp)
    c.eq.s	$f12,$f0
    nop
    bc1f	.L0f119b04
    ld	$ra,88($sp)
.L0f119af8:
    # Line 286
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f119b04:
    # Line 284
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-24820
    bal gl_n_texbind
    nop
    b	.L0f119af8
    ld	$ra,88($sp)
.end __iglooDownLoadPixmodeSubTex

# Function: __iglooDownLoadTex
# Declared: Line 288 (Source lines: 289-367)
# Address: 0x0f119b1c - 0x0f119cf8 (Size: 476 bytes, Frame: 224)
.ent __iglooDownLoadTex
__iglooDownLoadTex:
    # Line 289
    addiu	$sp,$sp,-96
    sd	$s3,72($sp)
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$s0,56($sp)
    # Line 290
    move	$s0,$zero
    # Line 298
    la	$t9,__iglooGetGraphicsType
    # Line 291
    lwc1	$f0,_lit_3f800000
    sd	$ra,48($sp)
    # Line 298
    jalr	$t9
    sdc1	$f0,32($sp)
    move	$s3,$v0
    # Line 299
    addiu	$a3,$sp,20
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s1)
    jalr	$t9
    lw	$a0,32($s1)
    lw	$at,24($s1)
    # Line 308
    li	$a1,3
    # Line 299
    beqz	$at,.L0f119c1c
    li	$v1,2
    lw	$v0,32($s1)
    beq	$v0,$v1,.L0f119ca0
    # Line 305
    la	$t9,__iglooGetMatrixMode
    # Line 308
    beq	$v0,$a1,.L0f119ccc
    # Line 312
    la	$t9,__iglooGetMatrixMode
    # Line 329
    lw	$s3,128($s1)
.L0f119b8c:
    li	$v1,1840
    li	$a2,1808
    beq	$s3,$a2,.L0f119c60
    li	$at,1824
    beq	$s3,$at,.L0f119c6c
    # Line 337
    li	$v0,5123
    # Line 329
    beq	$s3,$v1,.L0f119c74
    lw	$v0,24($sp)
    ld	$s3,72($sp)
.L0f119bb0:
    # Line 355
    move	$a7,$v0
    move	$a5,$zero
    move	$a1,$zero
    li	$a0,3553
    lw	$a6,16($sp)
    lw	$a4,40($s1)
    lw	$a3,36($s1)
    la	$t9,glTexImage2D
    lw	$t0,24($s1)
    lw	$a2,20($sp)
    jalr	$t9
    sw	$t0,4($sp)
    beqz	$s0,.L0f119bf4
    # Line 361
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-25104
    bal gl_n_texbind
    move	$a0,$s0
.L0f119bf4:
    lwc1	$f2,_lit_3f800000
    ldc1	$f1,32($sp)
    c.eq.s	$f1,$f2
    nop
    bc1f	.L0f119c48
    ld	$ra,48($sp)
.L0f119c0c:
    # Line 367
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f119c1c:
    # Line 322
    li	$at,3
    beq	$s3,$at,.L0f119c30
    li	$v1,4
    bnel	$s3,$v1,.L0f119b8c
    # Line 329
    lw	$s3,128($s1)
.L0f119c30:
    # Line 325
    ld	$s0,56($sp)
    ld	$ra,48($sp)
    ld	$s1,40($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f119c48:
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-24820
    # Line 365
    bal gl_n_texbind
    ldc1	$f12,32($sp)
    b	.L0f119c0c
    ld	$ra,48($sp)
.L0f119c60:
    # Line 333
    li	$v0,5121
    # Line 334
    b	.L0f119bb0
    ld	$s3,72($sp)
.L0f119c6c:
    # Line 338
    b	.L0f119bb0
    ld	$s3,72($sp)
.L0f119c74:
    ld	$s3,72($sp)
    # Line 341
    li	$ra,5123
    # Line 342
    lwc1	$f12,_lit_41800000
    # Line 341
    la	$t9,sub_0f120000
    sd	$ra,64($sp)
    # Line 342
    mov.s	$f3,$f12
    # Line 341
    addiu	$t9,$t9,-24820
    # Line 343
    bal gl_n_texbind
    sdc1	$f12,32($sp)
    b	.L0f119bb0
    ld	$v0,64($sp)
.L0f119ca0:
    # Line 305
    bal __iglooGetMatrixMode
    nop
    # Line 307
    la	$t9,__iglooMatrixMode
    # Line 305
    move	$s0,$v0
    # Line 307
    bal __iglooMatrixMode
    li	$a0,6144
    # Line 308
    la	$t9,__iglooLoadMatrix
    bal __iglooLoadMatrix
    la	$a0,__iglooTexCMatAL2LA
    b	.L0f119b8c
    # Line 329
    lw	$s3,128($s1)
.L0f119ccc:
    # Line 312
    bal __iglooGetMatrixMode
    nop
    # Line 313
    la	$t9,__iglooMatrixMode
    # Line 312
    move	$s0,$v0
    # Line 313
    bal __iglooMatrixMode
    li	$a0,6144
    # Line 314
    la	$t9,__iglooLoadMatrix
    bal __iglooLoadMatrix
    la	$a0,__iglooTexCMatBGR2RGB
    b	.L0f119b8c
    # Line 329
    lw	$s3,128($s1)
.end __iglooDownLoadTex

# Function: __iglooPixmodeFmt
# Declared: Line 370 (Source lines: 372-420)
# Address: 0x0f119cf8 - 0x0f119df0 (Size: 248 bytes, Frame: 48)
.ent __iglooPixmodeFmt
__iglooPixmodeFmt:
    # Line 372
    addiu	$sp,$sp,-48
    # Line 373
    sw	$zero,0($a3)
    # la	v0,sub_0f020000
    sll	$a5,$a0,0x2
    sltiu	$at,$a0,7
    la	$v0,jtbl_0f025398
    beqz	$at,.L0f119d30
    addu	$a5,$a5,$v0
    lw	$v1,0($a5)
    # Line 381
    li	$v0,6408
    # Line 373
    jr	$v1
    # Line 394
    li	$at,6410
.L0f119d28:
    # Line 384
    li	$a0,6407
    sw	$a0,0($a2)
.L0f119d30:
    # Line 420
    jr	$ra
    addiu	$sp,$sp,48
.L0f119d38:
    # Line 378
    li	$at,0x8000
    # Line 379
    b	.L0f119d30
    # Line 378
    sw	$at,0($a2)
.L0f119d44:
    # Line 382
    b	.L0f119d30
    # Line 381
    sw	$v0,0($a2)
.L0f119d4c:
    # Line 387
    li	$v1,6409
    # Line 388
    b	.L0f119d30
    # Line 387
    sw	$v1,0($a2)
.L0f119d58:
    # Line 391
    li	$a0,6406
    # Line 392
    b	.L0f119d30
    # Line 391
    sw	$a0,0($a2)
.L0f119d64:
    sd	$a3,0($sp)
    # Line 394
    beqz	$a1,.L0f119d30
    sw	$at,0($a2)
    # Line 397
    la	$t9,__iglooGetMatrixMode
    sd	$ra,8($sp)
    bal __iglooGetMatrixMode
    nop
    # Line 399
    la	$t9,__iglooMatrixMode
    # Line 397
    ld	$v1,0($sp)
    # Line 399
    li	$a0,6144
    bal __iglooMatrixMode
    # Line 397
    sw	$v0,0($v1)
    # Line 400
    la	$t9,__iglooLoadMatrix
    bal __iglooLoadMatrix
    la	$a0,__iglooTexCMatAL2LA
    b	.L0f119d30
    ld	$ra,8($sp)
.L0f119da8:
    sd	$a3,0($sp)
    # Line 406
    li	$a0,6407
    beqz	$a1,.L0f119d30
    sw	$a0,0($a2)
    # Line 409
    la	$t9,__iglooGetMatrixMode
    sd	$ra,8($sp)
    bal __iglooGetMatrixMode
    nop
    # Line 411
    la	$t9,__iglooMatrixMode
    # Line 409
    ld	$a1,0($sp)
    # Line 411
    li	$a0,6144
    bal __iglooMatrixMode
    # Line 409
    sw	$v0,0($a1)
    # Line 412
    la	$t9,__iglooLoadMatrix
    bal __iglooLoadMatrix
    la	$a0,__iglooTexCMatBGR2RGB
    b	.L0f119d30
    ld	$ra,8($sp)
.end __iglooPixmodeFmt

# Function: __iglooClearColMat
# Declared: Line 422 (Source lines: 423-429)
# Address: 0x0f119df0 - 0x0f119e24 (Size: 52 bytes, Frame: 32)
.ent __iglooClearColMat
__iglooClearColMat:
    # Line 423
    addiu	$sp,$sp,-32
    beqz	$a0,.L0f119e1c
    sd	$a0,0($sp)
    # Line 426
    la	$t9,__iglooLoadIdentity
    sd	$ra,8($sp)
    bal __iglooLoadIdentity
    nop
    # Line 427
    la	$t9,__iglooMatrixMode
    bal __iglooMatrixMode
    ld	$a0,0($sp)
    ld	$ra,8($sp)
.L0f119e1c:
    # Line 429
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooClearColMat

# Function: __iglooPixmodeType
# Declared: Line 431 (Source lines: 433-491)
# Address: 0x0f119e24 - 0x0f119f0c (Size: 232 bytes, Frame: 48)
.ent __iglooPixmodeType
__iglooPixmodeType:
    # Line 433
    addiu	$sp,$sp,-48
    # Line 434
    sll	$a5,$a0,0x2
    lwc1	$f0,_lit_3f800000
    # la	v0,sub_0f020000
    sltiu	$at,$a0,10
    swc1	$f0,0($a3)
    la	$v0,jtbl_0f0253b8
    beqz	$at,.L0f119e60
    addu	$a5,$a5,$v0
    lw	$v1,0($a5)
    # Line 461
    li	$v0,5120
    # Line 434
    jr	$v1
    # Line 479
    li	$at,5123
.L0f119e58:
    # Line 452
    li	$a0,5125
    sw	$a0,0($a2)
.L0f119e60:
    # Line 491
    jr	$ra
    addiu	$sp,$sp,48
.L0f119e68:
    # Line 438
    li	$at,5121
    # Line 439
    b	.L0f119e60
    # Line 438
    sw	$at,0($a2)
.L0f119e74:
    # Line 441
    li	$v0,5123
    # Line 442
    b	.L0f119e60
    # Line 441
    sw	$v0,0($a2)
.L0f119e80:
    # Line 444
    li	$v1,5126
    # Line 446
    b	.L0f119e60
    # Line 444
    sw	$v1,0($a2)
.L0f119e8c:
    # Line 448
    li	$a0,6656
    # Line 450
    b	.L0f119e60
    # Line 448
    sw	$a0,0($a2)
.L0f119e98:
    # Line 457
    li	$at,5124
    # Line 459
    b	.L0f119e60
    # Line 457
    sw	$at,0($a2)
.L0f119ea4:
    # Line 463
    b	.L0f119e60
    # Line 461
    sw	$v0,0($a2)
.L0f119eac:
    # Line 465
    li	$v1,5122
    # Line 467
    b	.L0f119e60
    # Line 465
    sw	$v1,0($a2)
.L0f119eb8:
    # Line 469
    li	$a0,5122
    beqz	$a1,.L0f119e60
    sw	$a0,0($a2)
    # Line 473
    la	$t9,sub_0f120000
    sd	$ra,0($sp)
    # Line 472
    lwc1	$f12,_lit_41800000
    # Line 473
    addiu	$t9,$t9,-24820
    bal gl_n_texbind
    # Line 472
    swc1	$f12,0($a3)
    b	.L0f119e60
    ld	$ra,0($sp)
.L0f119ee4:
    # Line 479
    beqz	$a1,.L0f119e60
    sw	$at,0($a2)
    # Line 483
    la	$t9,sub_0f120000
    sd	$ra,0($sp)
    # Line 482
    lwc1	$f12,_lit_41800000
    # Line 483
    addiu	$t9,$t9,-24820
    bal gl_n_texbind
    # Line 482
    swc1	$f12,0($a3)
    b	.L0f119e60
    ld	$ra,0($sp)
.end __iglooPixmodeType

# Function: __iglooColScale
# Declared: Line 493 (Source lines: 494-499)
# Address: 0x0f119f0c - 0x0f119f6c (Size: 96 bytes, Frame: 32)
.ent __iglooColScale
__iglooColScale:
    # Line 495
    mov.s	$f13,$f12
    li	$a0,3356
    # Line 494
    addiu	$sp,$sp,-32
    # Line 495
    la	$t9,__iglooPixelTransferf
    sdc1	$f20,0($sp)
    sd	$ra,8($sp)
    bal __iglooPixelTransferf
    # Line 494
    mov.s	$f20,$f12
    # Line 496
    la	$t9,__iglooPixelTransferf
    mov.s	$f13,$f20
    bal __iglooPixelTransferf
    li	$a0,3348
    # Line 497
    la	$t9,__iglooPixelTransferf
    mov.s	$f13,$f20
    bal __iglooPixelTransferf
    li	$a0,3352
    # Line 498
    la	$t9,__iglooPixelTransferf
    mov.s	$f13,$f20
    bal __iglooPixelTransferf
    li	$a0,3354
    ld	$ra,8($sp)
    # Line 499
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooColScale

# Function: __iglooNotTexObjList
# Declared: Line 502 (Source lines: 503-525)
# Address: 0x0f119f6c - 0x0f11a054 (Size: 232 bytes, Frame: 48)
.globl __iglooNotTexObjList
.ent __iglooNotTexObjList
__iglooNotTexObjList:
    # Line 503
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-27940 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 504
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$at,0($sp)
    lw	$at,11708($at)
    lw	$at,20($at)
    beqz	$at,.L0f119fd4
    sd	$a0,8($sp)
    # Line 509
    la	$t9,__iglooIsExtensionSupported
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,12
    li	$a4,2
    ld	$ra,24($sp)
    ld	$a5,8($sp)
    li	$a3,1
    beq	$a3,$v0,.L0f119fe0
    lw	$a5,28($a5)
    # Line 512
    beq	$a5,$a4,.L0f11a024
.L0f119fc8:
    ld	$at,0($sp)
    # Line 523
    lw	$at,11708($at)
    sw	$a3,0($at)
.L0f119fd4:
    ld	$gp,16($sp)
    # Line 525
    jr	$ra
    addiu	$sp,$sp,48
.L0f119fe0:
    # Line 509
    li	$v0,3
    beq	$a5,$v0,.L0f11a040
    # Line 511
    li	$a0,3553
.L0f119fec:
    la	$t9,__iglooSetEnable
    jalr	$t9
    li	$a1,1
    ld	$v1,8($sp)
    lw	$v1,28($v1)
    li	$a1,2
    beq	$v1,$a1,.L0f11a04c
    # Line 512
    li	$a0,3553
.L0f11a00c:
    la	$t9,__iglooSetEnable
    jalr	$t9
    move	$a1,$zero
    li	$a3,1
    b	.L0f119fc8
    ld	$ra,24($sp)
.L0f11a024:
    # Line 520
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3553
    li	$a3,1
    b	.L0f119fc8
    ld	$ra,24($sp)
.L0f11a040:
    # Line 511
    li	$a0,0x806f
    b	.L0f119fec
    nop
.L0f11a04c:
    # Line 512
    b	.L0f11a00c
    li	$a0,0x806f
.end __iglooNotTexObjList

# Function: gl_g_fbsubtexload
# Declared: Line 528 (Source lines: 543-543)
# Address: 0x0f11a054 - 0x0f11a05c (Size: 8 bytes, Frame: 0)
.globl gl_g_fbsubtexload
.ent gl_g_fbsubtexload
gl_g_fbsubtexload:
    # Line 543
    jr	$ra
    nop
.end gl_g_fbsubtexload

# Function: __iglooigl2OglTexture
# Declared: Line 545 (Source lines: 547-686)
# Address: 0x0f11a05c - 0x0f11a7b8 (Size: 1884 bytes, Frame: 144)
.globl __iglooigl2OglTexture
.ent __iglooigl2OglTexture
__iglooigl2OglTexture:
    # Line 547
    move	$v0,$a6
    move	$t2,$a1
    move	$t3,$a0
    # Line 550
    li	$at,1808
    # Line 547
    addiu	$sp,$sp,-144
    sd	$s1,40($sp)
    move	$s1,$a3
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$gp,56($sp)
    lui	$v1,0xfff2
    addiu	$v1,$v1,-28180
    # Line 550
    beq	$a4,$at,.L0f11a0bc
    # Line 547
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 550
    li	$a7,1824
    beq	$a4,$a7,.L0f11a118
    li	$t0,12288
    beq	$a4,$t0,.L0f11a174
    # Line 676
    move	$a0,$t3
.L0f11a0a8:
    ld	$gp,56($sp)
.L0f11a0ac:
    # Line 686
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f11a0bc:
    # Line 553
    li	$at,1
    beq	$a5,$at,.L0f11a748
    li	$v1,2
    beq	$a5,$v1,.L0f11a19c
    li	$a7,3
    beq	$a5,$a7,.L0f11a2f0
    li	$t0,4
    bnel	$a5,$t0,.L0f11a0ac
    ld	$gp,56($sp)
    # Line 605
    sw	$v0,4($sp)
    li	$a7,5121
    li	$a6,0x8000
    move	$a5,$s1
    move	$a4,$s0
    move	$a3,$t2
    move	$a2,$t3
    la	$t9,glTexSubImage2DEXT
    move	$a1,$zero
    sd	$ra,72($sp)
    jalr	$t9
    li	$a0,3553
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a118:
    # Line 614
    li	$at,1
    beq	$a5,$at,.L0f11a780
    li	$v1,2
    beq	$a5,$v1,.L0f11a470
    li	$a7,3
    beq	$a5,$a7,.L0f11a5c4
    li	$t0,4
    bnel	$a5,$t0,.L0f11a0ac
    ld	$gp,56($sp)
    # Line 667
    sw	$v0,4($sp)
    li	$a7,5123
    li	$a6,0x8000
    move	$a5,$s1
    move	$a4,$s0
    move	$a3,$t2
    move	$a2,$t3
    la	$t9,glTexSubImage2DEXT
    move	$a1,$zero
    sd	$ra,72($sp)
    jalr	$t9
    li	$a0,3553
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a174:
    # Line 676
    move	$a1,$t2
    move	$a2,$s0
    la	$t9,sub_0f120000
    move	$a3,$s1
    sd	$ra,72($sp)
    addiu	$t9,$t9,-26204
    bal gl_n_texbind
    move	$a4,$v0
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a19c:
    # Line 563
    mult	$s0,$s1
    sd	$t2,32($sp)
    sd	$t3,24($sp)
    sd	$s2,64($sp)
    # Line 562
    move	$s2,$v0
    # Line 563
    lw	$a1,-14408($gp)
    la	$t9,gl_malloc
    sd	$ra,72($sp)
    mflo	$a0
    jalr	$t9
    addu	$a0,$a0,$a0
    move	$a6,$v0
    sd	$v0,16($sp)
    # Line 566
    move	$a5,$zero
    ld	$a3,32($sp)
    blez	$s1,.L0f11a2ac
    ld	$a2,24($sp)
    b	.L0f11a26c
    # Line 567
    move	$t1,$s0
    move	$t8,$a4
.L0f11a1ec:
    sra	$a7,$t1,0x2
    move	$t3,$a6
    beqz	$a7,.L0f11a260
    move	$t2,$s2
    move	$a1,$t3
    move	$a6,$t8
    move	$a4,$t2
.L0f11a208:
    # Line 568
    lbu	$a7,1($a4)
    sb	$a7,0($a1)
    # Line 569
    lbu	$v1,0($a4)
    sb	$v1,1($a1)
    # Line 568
    lbu	$at,3($a4)
    sb	$at,2($a1)
    # Line 569
    lbu	$t0,2($a4)
    sb	$t0,3($a1)
    # Line 568
    lbu	$a7,5($a4)
    sb	$a7,4($a1)
    # Line 569
    lbu	$v1,4($a4)
    sb	$v1,5($a1)
    # Line 568
    lbu	$at,7($a4)
    # Line 570
    addiu	$a4,$a4,8
    # Line 568
    sb	$at,6($a1)
    # Line 569
    addiu	$a1,$a1,8
    lbu	$t0,-2($a4)
    # Line 567
    addiu	$a6,$a6,4
    bne	$s0,$a6,.L0f11a208
    # Line 569
    sb	$t0,-1($a1)
    move	$a6,$a1
    move	$s2,$a4
.L0f11a260:
    # Line 566
    addiu	$a5,$a5,1
    beq	$s1,$a5,.L0f11a2ac
    # Line 567
    move	$t1,$s0
.L0f11a26c:
    blez	$s0,.L0f11a260
    move	$a4,$zero
    andi	$a1,$s0,0x3
    beqz	$a1,.L0f11a1ec
    move	$t8,$a4
.L0f11a280:
    # Line 568
    lbu	$at,1($s2)
    # Line 567
    addiu	$a4,$a4,1
    # Line 570
    addiu	$s2,$s2,2
    # Line 568
    sb	$at,0($a6)
    # Line 569
    addiu	$a6,$a6,2
    lbu	$t0,-2($s2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f11a280
    sb	$t0,-1($a6)
    b	.L0f11a1ec
    move	$t8,$a4
.L0f11a2ac:
    # Line 573
    li	$a7,5121
    li	$a6,6410
    move	$a5,$s1
    move	$a4,$s0
    move	$a1,$zero
    la	$t9,glTexSubImage2DEXT
    ld	$v0,16($sp)
    li	$a0,3553
    jalr	$t9
    sw	$v0,4($sp)
    # Line 576
    la	$t9,gl_free
    ld	$a0,16($sp)
    lw	$a1,-14408($gp)
    jalr	$t9
    ld	$s2,64($sp)
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a2f0:
    # Line 584
    mult	$s0,$s1
    sd	$t2,32($sp)
    sd	$t3,24($sp)
    sd	$s2,64($sp)
    # Line 582
    move	$s2,$v0
    # Line 584
    lw	$a1,-14408($gp)
    sd	$ra,72($sp)
    la	$t9,gl_malloc
    mflo	$a2
    sll	$a0,$a2,0x2
    jalr	$t9
    subu	$a0,$a0,$a2
    move	$t1,$v0
    sd	$v0,16($sp)
    # Line 588
    blez	$s1,.L0f11a424
    move	$a5,$zero
    b	.L0f11a408
    # Line 590
    move	$t2,$s0
.L0f11a338:
    # Line 592
    lbu	$at,2($s2)
.L0f11a33c:
    sb	$at,0($t1)
    # Line 593
    lbu	$t0,1($s2)
    # Line 590
    addiu	$a4,$a4,1
    # Line 595
    addiu	$s2,$s2,3
    # Line 593
    sb	$t0,1($t1)
    # Line 594
    addiu	$t1,$t1,3
    lbu	$a7,-3($s2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f11a338
    sb	$a7,-1($t1)
    move	$t9,$a4
.L0f11a368:
    sra	$v1,$t2,0x2
    move	$t8,$t1
    beqz	$v1,.L0f11a3fc
    move	$t3,$s2
    move	$a6,$t8
    move	$t1,$t9
    move	$a4,$t3
.L0f11a384:
    # Line 592
    lbu	$v1,2($a4)
    sb	$v1,0($a6)
    # Line 593
    lbu	$at,1($a4)
    sb	$at,1($a6)
    # Line 594
    lbu	$t0,0($a4)
    sb	$t0,2($a6)
    # Line 592
    lbu	$a7,5($a4)
    sb	$a7,3($a6)
    # Line 593
    lbu	$v1,4($a4)
    sb	$v1,4($a6)
    # Line 594
    lbu	$at,3($a4)
    sb	$at,5($a6)
    # Line 592
    lbu	$t0,8($a4)
    sb	$t0,6($a6)
    # Line 593
    lbu	$a7,7($a4)
    sb	$a7,7($a6)
    # Line 594
    lbu	$v1,6($a4)
    sb	$v1,8($a6)
    # Line 592
    lbu	$at,11($a4)
    sb	$at,9($a6)
    # Line 593
    lbu	$t0,10($a4)
    # Line 595
    addiu	$a4,$a4,12
    # Line 593
    sb	$t0,10($a6)
    # Line 594
    addiu	$a6,$a6,12
    lbu	$a7,-3($a4)
    # Line 590
    addiu	$t1,$t1,4
    bne	$s0,$t1,.L0f11a384
    # Line 594
    sb	$a7,-1($a6)
    move	$t1,$a6
    move	$s2,$a4
.L0f11a3fc:
    # Line 588
    addiu	$a5,$a5,1
    beq	$s1,$a5,.L0f11a424
    # Line 590
    move	$t2,$s0
.L0f11a408:
    blez	$s0,.L0f11a3fc
    move	$a4,$zero
    andi	$a6,$s0,0x3
    beqz	$a6,.L0f11a368
    move	$t9,$a4
    b	.L0f11a33c
    # Line 592
    lbu	$at,2($s2)
.L0f11a424:
    # Line 598
    li	$a7,5121
    li	$a6,6407
    move	$a5,$s1
    move	$a4,$s0
    ld	$a3,32($sp)
    ld	$a2,24($sp)
    ld	$a0,16($sp)
    la	$t9,glTexSubImage2DEXT
    move	$a1,$zero
    sw	$a0,4($sp)
    jalr	$t9
    li	$a0,3553
    # Line 601
    la	$t9,gl_free
    ld	$a0,16($sp)
    lw	$a1,-14408($gp)
    jalr	$t9
    ld	$s2,64($sp)
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a470:
    # Line 624
    mult	$s0,$s1
    sd	$t2,32($sp)
    sd	$t3,24($sp)
    sd	$s2,64($sp)
    # Line 623
    move	$s2,$v0
    # Line 624
    lw	$a1,-14408($gp)
    la	$t9,gl_malloc
    sd	$ra,72($sp)
    mflo	$a0
    jalr	$t9
    sll	$a0,$a0,0x2
    move	$t1,$v0
    sd	$v0,16($sp)
    # Line 627
    blez	$s1,.L0f11a578
    move	$a5,$zero
    b	.L0f11a55c
    # Line 629
    move	$t2,$s0
.L0f11a4b4:
    # Line 631
    lh	$t0,2($s2)
.L0f11a4b8:
    # Line 629
    addiu	$a4,$a4,1
    # Line 633
    addiu	$s2,$s2,4
    # Line 631
    sh	$t0,0($t1)
    # Line 632
    addiu	$t1,$t1,4
    lh	$a7,-4($s2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f11a4b4
    sh	$a7,-2($t1)
    move	$t9,$a4
.L0f11a4dc:
    sra	$at,$t2,0x2
    move	$t8,$t1
    beqz	$at,.L0f11a550
    move	$t3,$s2
    move	$a4,$t8
    move	$t1,$t9
    move	$a6,$t3
.L0f11a4f8:
    # Line 631
    lh	$at,2($a6)
    sh	$at,0($a4)
    # Line 632
    lh	$t0,0($a6)
    sh	$t0,2($a4)
    # Line 631
    lh	$a7,6($a6)
    sh	$a7,4($a4)
    # Line 632
    lh	$v1,4($a6)
    sh	$v1,6($a4)
    # Line 631
    lh	$at,10($a6)
    sh	$at,8($a4)
    # Line 632
    lh	$t0,8($a6)
    sh	$t0,10($a4)
    # Line 631
    lh	$a7,14($a6)
    # Line 633
    addiu	$a6,$a6,16
    # Line 631
    sh	$a7,12($a4)
    # Line 632
    addiu	$a4,$a4,16
    lh	$v1,-4($a6)
    # Line 629
    addiu	$t1,$t1,4
    bne	$s0,$t1,.L0f11a4f8
    # Line 632
    sh	$v1,-2($a4)
    move	$t1,$a4
    move	$s2,$a6
.L0f11a550:
    # Line 627
    addiu	$a5,$a5,1
    beq	$s1,$a5,.L0f11a578
    # Line 629
    move	$t2,$s0
.L0f11a55c:
    blez	$s0,.L0f11a550
    move	$a4,$zero
    andi	$a6,$s0,0x3
    beqz	$a6,.L0f11a4dc
    move	$t9,$a4
    b	.L0f11a4b8
    # Line 631
    lh	$t0,2($s2)
.L0f11a578:
    # Line 636
    li	$a7,5121
    li	$a6,6410
    move	$a5,$s1
    move	$a4,$s0
    ld	$a3,32($sp)
    ld	$a2,24($sp)
    move	$a1,$zero
    la	$t9,glTexSubImage2DEXT
    ld	$v0,16($sp)
    li	$a0,3553
    jalr	$t9
    sw	$v0,4($sp)
    # Line 640
    la	$t9,gl_free
    ld	$a0,16($sp)
    lw	$a1,-14408($gp)
    jalr	$t9
    ld	$s2,64($sp)
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a5c4:
    # Line 647
    mult	$s0,$s1
    sd	$t2,32($sp)
    sd	$t3,24($sp)
    sd	$s2,64($sp)
    # Line 646
    move	$s2,$v0
    # Line 647
    lw	$a1,-14408($gp)
    sd	$ra,72($sp)
    la	$t9,gl_malloc
    mflo	$a2
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    jalr	$t9
    sll	$a0,$a0,0x1
    move	$t1,$v0
    sd	$v0,16($sp)
    # Line 650
    blez	$s1,.L0f11a6fc
    move	$a5,$zero
    b	.L0f11a6b4
    # Line 652
    move	$t2,$s0
    move	$t9,$a4
.L0f11a614:
    sra	$a7,$t2,0x2
    move	$t8,$t1
    beqz	$a7,.L0f11a6a8
    move	$t3,$s2
    move	$a4,$t8
    move	$t1,$t9
    move	$a6,$t3
.L0f11a630:
    # Line 654
    lh	$a7,4($a6)
    sh	$a7,0($a4)
    # Line 655
    lh	$v1,2($a6)
    sh	$v1,2($a4)
    # Line 656
    lh	$at,0($a6)
    sh	$at,4($a4)
    # Line 654
    lh	$t0,10($a6)
    sh	$t0,6($a4)
    # Line 655
    lh	$a7,8($a6)
    sh	$a7,8($a4)
    # Line 656
    lh	$v1,6($a6)
    sh	$v1,10($a4)
    # Line 654
    lh	$at,16($a6)
    sh	$at,12($a4)
    # Line 655
    lh	$t0,14($a6)
    sh	$t0,14($a4)
    # Line 656
    lh	$a7,12($a6)
    sh	$a7,16($a4)
    # Line 654
    lh	$v1,22($a6)
    sh	$v1,18($a4)
    # Line 655
    lh	$at,20($a6)
    # Line 657
    addiu	$a6,$a6,24
    # Line 655
    sh	$at,20($a4)
    # Line 656
    addiu	$a4,$a4,24
    lh	$t0,-6($a6)
    # Line 652
    addiu	$t1,$t1,4
    bne	$s0,$t1,.L0f11a630
    # Line 656
    sh	$t0,-2($a4)
    move	$t1,$a4
    move	$s2,$a6
.L0f11a6a8:
    # Line 650
    addiu	$a5,$a5,1
    beq	$s1,$a5,.L0f11a6fc
    # Line 652
    move	$t2,$s0
.L0f11a6b4:
    blez	$s0,.L0f11a6a8
    move	$a4,$zero
    andi	$a6,$s0,0x3
    beqz	$a6,.L0f11a614
    move	$t9,$a4
.L0f11a6c8:
    # Line 654
    lh	$v1,4($s2)
    sh	$v1,0($t1)
    # Line 655
    lh	$at,2($s2)
    # Line 652
    addiu	$a4,$a4,1
    # Line 657
    addiu	$s2,$s2,6
    # Line 655
    sh	$at,2($t1)
    # Line 656
    addiu	$t1,$t1,6
    lh	$t0,-6($s2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f11a6c8
    sh	$t0,-2($t1)
    b	.L0f11a614
    move	$t9,$a4
.L0f11a6fc:
    # Line 660
    li	$a7,5123
    li	$a6,6407
    move	$a5,$s1
    move	$a4,$s0
    ld	$a3,32($sp)
    ld	$a2,24($sp)
    ld	$a0,16($sp)
    la	$t9,glTexSubImage2DEXT
    move	$a1,$zero
    sw	$a0,4($sp)
    jalr	$t9
    li	$a0,3553
    # Line 663
    la	$t9,gl_free
    ld	$a0,16($sp)
    lw	$a1,-14408($gp)
    jalr	$t9
    ld	$s2,64($sp)
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a748:
    # Line 556
    sw	$v0,4($sp)
    li	$a7,5121
    li	$a6,6409
    move	$a5,$s1
    move	$a4,$s0
    move	$a3,$t2
    move	$a2,$t3
    la	$t9,glTexSubImage2DEXT
    move	$a1,$zero
    sd	$ra,72($sp)
    jalr	$t9
    li	$a0,3553
    b	.L0f11a0a8
    ld	$ra,72($sp)
.L0f11a780:
    # Line 617
    sw	$v0,4($sp)
    li	$a7,5123
    li	$a6,6409
    move	$a5,$s1
    move	$a4,$s0
    move	$a3,$t2
    move	$a2,$t3
    la	$t9,glTexSubImage2DEXT
    move	$a1,$zero
    sd	$ra,72($sp)
    jalr	$t9
    li	$a0,3553
    b	.L0f11a0a8
    ld	$ra,72($sp)
.end __iglooigl2OglTexture

# Function: gl_g_subtexload
# Declared: Line 688 (Source lines: 691-806)
# Address: 0x0f11a7b8 - 0x0f11a9e4 (Size: 556 bytes, Frame: 160)
.globl gl_g_subtexload
.ent gl_g_subtexload
gl_g_subtexload:
    # Line 691
    addiu	$sp,$sp,-160
    sd	$s0,80($sp)
    sd	$a7,40($sp)
    sdc1	$f17,16($sp)
    sdc1	$f16,8($sp)
    sdc1	$f15,24($sp)
    sdc1	$f14,0($sp)
    sd	$a1,32($sp)
    sd	$gp,64($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-30064 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 692
    la	$at,gl_wstatep
    sd	$a0,56($sp)
    # Line 700
    la	$t9,__iglooGetGraphicsType
    # Line 692
    lw	$at,0($at)
    sd	$ra,72($sp)
    # Line 700
    jalr	$t9
    sd	$at,48($sp)
    # Line 706
    li	$v1,4
    beq	$v0,$v1,.L0f11a844
    # Line 700
    move	$s0,$v0
    # Line 706
    li	$a2,3
    beq	$s0,$a2,.L0f11a844
    # Line 708
    la	$a3,gl_iglooUseTexObj
    lw	$a3,0($a3)
    beqz	$a3,.L0f11a964
    ld	$s0,80($sp)
    ld	$at,56($sp)
    # Line 714
    beqz	$at,.L0f11a858
.L0f11a830:
    # Line 806
    ld	$ra,72($sp)
.L0f11a834:
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f11a844:
    # Line 708
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f11a858:
    # Line 719
    la	$t9,gl_find
    ld	$a1,32($sp)
    jalr	$t9
    la	$a0,gl_texturetab
    ld	$a0,48($sp)
    lw	$a0,11708($a0)
    move	$s0,$v0
    lw	$v0,0($a0)
    beqz	$v0,.L0f11a830
    ld	$a2,32($sp)
    lw	$a1,4($a0)
    bne	$a1,$a2,.L0f11a834
    # Line 806
    ld	$ra,72($sp)
    # Line 725
    lw	$at,8($a0)
    lw	$a3,8($s0)
    bne	$a3,$at,.L0f11a974
    # Line 733
    la	$t9,gl_texbind
    # Line 740
    lw	$a1,40($s0)
.L0f11a8a0:
    mtc1	$a1,$f4
    # Line 737
    lw	$a0,36($s0)
    # Line 740
    cvt.s.w	$f4,$f4
    # Line 737
    mtc1	$a0,$f5
    # Line 740
    ldc1	$f1,8($sp)
    # Line 737
    cvt.s.w	$f5,$f5
    ldc1	$f0,0($sp)
    # Line 740
    mul.s	$f1,$f4,$f1
    # Line 737
    mul.s	$f0,$f5,$f0
    # Line 740
    trunc.w.s	$f1,$f1
    lw	$v0,164($sp)
    li	$v1,1
    # Line 737
    trunc.w.s	$f0,$f0
    # Line 756
    sltiu	$a3,$v0,3
    # Line 740
    mfc1	$a1,$f1
    # Line 756
    sltiu	$at,$v0,6
    # Line 737
    mfc1	$a0,$f0
    # Line 740
    move	$a7,$a1
    beq	$v0,$v1,.L0f11a988
    # Line 737
    move	$t2,$a0
    # Line 746
    li	$a2,2
    beql	$v0,$a2,.L0f11a9b8
    # Line 752
    move	$a0,$t2
    # Line 756
    bnez	$a3,.L0f11a910
    # Line 781
    ldc1	$f6,24($sp)
    # Line 756
    bnez	$at,.L0f11a834
    # Line 806
    ld	$ra,72($sp)
    # Line 781
    ldc1	$f6,24($sp)
.L0f11a910:
    mul.s	$f6,$f5,$f6
    # Line 784
    mtc1	$a1,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 781
    mtc1	$a0,$f8
    # Line 784
    ldc1	$f5,16($sp)
    # Line 781
    cvt.s.w	$f8,$f8
    # Line 784
    mul.s	$f5,$f4,$f5
    # Line 781
    sub.s	$f6,$f6,$f8
    # Line 784
    sub.s	$f5,$f5,$f7
    # Line 781
    trunc.w.s	$f6,$f6
    # Line 794
    ld	$a6,40($sp)
    # Line 784
    trunc.w.s	$f5,$f5
    # Line 794
    lw	$a5,32($s0)
    la	$t9,__iglooigl2OglTexture
    # Line 781
    mfc1	$a2,$f6
    # Line 784
    mfc1	$a3,$f5
    # Line 794
    bal __iglooigl2OglTexture
    lw	$a4,128($s0)
    b	.L0f11a834
    # Line 806
    ld	$ra,72($sp)
.L0f11a964:
    # Line 714
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f11a974:
    # Line 733
    move	$a0,$zero
    bal gl_texbind
    li	$a2,1
    b	.L0f11a8a0
    # Line 740
    lw	$a1,40($s0)
.L0f11a988:
    # Line 746
    move	$a0,$t2
    move	$a1,$a7
    ld	$a6,40($sp)
    li	$a5,1
    li	$a4,1824
    la	$t9,__iglooigl2OglTexture
    li	$a3,64
    li	$a2,64
    bal __iglooigl2OglTexture
    ld	$s0,80($sp)
    b	.L0f11a834
    # Line 806
    ld	$ra,72($sp)
.L0f11a9b8:
    # Line 752
    move	$a1,$a7
    ld	$a6,40($sp)
    li	$a5,4
    li	$a4,1808
    la	$t9,__iglooigl2OglTexture
    li	$a3,128
    li	$a2,128
    bal __iglooigl2OglTexture
    ld	$s0,80($sp)
    b	.L0f11a834
    # Line 806
    ld	$ra,72($sp)
.end gl_g_subtexload

.late_rodata
jtbl_0f025398:
    .word .L0f119d38
    .word .L0f119da8
    .word .L0f119d44
    .word .L0f119d28
    .word .L0f119d4c
    .word .L0f119d64
    .word .L0f119d58
jtbl_0f0253b8:
    .word .L0f119e8c
    .word .L0f119ea4
    .word .L0f119e68
    .word .L0f119eb8
    .word .L0f119ee4
    .word .L0f119eac
    .word .L0f119e74
    .word .L0f119e98
    .word .L0f119e58
    .word .L0f119e80

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_41800000:
    .word 0x41800000

