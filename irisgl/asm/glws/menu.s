# Source: ../igloo/glws/menu.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/menu.c -o menu.T
# Total Functions: 56

.text

# Function: create_aFuncChain
# Declared: Line 223 (Source lines: 224-228)
# Address: 0x0f0dfa58 - 0x0f0dfa9c (Size: 68 bytes, Frame: 16)
.ent create_aFuncChain
create_aFuncChain:
    # Line 226
    addiu	$a1,$gp,-18800
    li	$a0,8
    la	$t9,gl_malloc
    # Line 224
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 226
    jalr	$t9
    sd	$s8,8($sp)
    # Line 227
    la	$t9,bzero
    # Line 226
    move	$s8,$v0
    # Line 227
    move	$a0,$v0
    jalr	$t9
    li	$a1,8
    # Line 228
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end create_aFuncChain

# Function: extend_aFuncChain
# Declared: Line 231 (Source lines: 232-245)
# Address: 0x0f0dfa9c - 0x0f0dfb04 (Size: 104 bytes, Frame: 48)
.ent extend_aFuncChain
extend_aFuncChain:
    # Line 232
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    beqz	$a1,.L0f0dfafc
    sd	$a1,0($sp)
    # Line 235
    la	$t9,gl_malloc
    addiu	$a1,$gp,-18800
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,8
    # Line 237
    ld	$v1,0($sp)
    # Line 236
    sw	$zero,4($v0)
    # Line 237
    ld	$at,8($sp)
    sw	$v1,0($v0)
    lw	$at,0($at)
    ld	$a2,8($sp)
    bnez	$at,.L0f0dfaec
    ld	$ra,16($sp)
    # Line 239
    sw	$v0,0($a2)
    b	.L0f0dfafc
    sw	$v0,4($a2)
.L0f0dfaec:
    ld	$a3,8($sp)
    # Line 241
    lw	$at,4($a3)
    sw	$v0,4($at)
    # Line 242
    sw	$v0,4($a3)
.L0f0dfafc:
    # Line 245
    jr	$ra
    addiu	$sp,$sp,48
.end extend_aFuncChain

# Function: call_aFuncChain
# Declared: Line 247 (Source lines: 248-253)
# Address: 0x0f0dfb04 - 0x0f0dfb74 (Size: 112 bytes, Frame: 192)
.ent call_aFuncChain
call_aFuncChain:
    # Line 248
    addiu	$sp,$sp,-64
    sw	$a2,52($sp)
    sd	$s0,0($sp)
    # Line 251
    lw	$s0,0($a0)
    # Line 248
    move	$v0,$a2
    sd	$s1,8($sp)
    # Line 251
    beqz	$s0,.L0f0dfb64
    # Line 248
    move	$s1,$a1
    # Line 251
    beqzl	$s1,.L0f0dfb5c
    sd	$ra,16($sp)
    sd	$ra,16($sp)
.L0f0dfb30:
    # Line 252
    addiu	$a0,$sp,52
.L0f0dfb34:
    lw	$t9,0($s0)
    jalr	$t9
    nop
    sw	$v0,52($sp)
    # Line 251
    lw	$s0,4($s0)
    beqz	$s0,.L0f0dfb64
    ld	$ra,16($sp)
    bnezl	$s1,.L0f0dfb30
    sd	$ra,16($sp)
    sd	$ra,16($sp)
.L0f0dfb5c:
    b	.L0f0dfb34
    # Line 252
    move	$a0,$v0
.L0f0dfb64:
    # Line 253
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end call_aFuncChain

# Function: destroy_aFuncChain
# Declared: Line 256 (Source lines: 257-264)
# Address: 0x0f0dfb74 - 0x0f0dfbd4 (Size: 96 bytes, Frame: 48)
.ent destroy_aFuncChain
destroy_aFuncChain:
    # Line 257
    addiu	$sp,$sp,-48
    # Line 259
    lw	$a3,0($a0)
    sd	$ra,8($sp)
    sd	$s8,0($sp)
    beqz	$a3,.L0f0dfbb4
    # Line 257
    move	$s8,$a0
    sd	$s7,16($sp)
    sd	$ra,8($sp)
.L0f0dfb94:
    # Line 261
    la	$t9,gl_free
    addiu	$a1,$gp,-18800
    move	$a0,$a3
    jalr	$t9
    # Line 260
    lw	$s7,4($a3)
    # Line 259
    bnez	$s7,.L0f0dfb94
    move	$a3,$s7
    ld	$s7,16($sp)
.L0f0dfbb4:
    # Line 263
    la	$t9,gl_free
    move	$a0,$s8
    jalr	$t9
    addiu	$a1,$gp,-18800
    ld	$ra,8($sp)
    # Line 264
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end destroy_aFuncChain

# Function: create_aFont
# Declared: Line 270 (Source lines: 271-297)
# Address: 0x0f0dfbd4 - 0x0f0dfd5c (Size: 392 bytes, Frame: 192)
.ent create_aFont
create_aFont:
    # Line 271
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    sd	$s1,16($sp)
    sd	$s0,24($sp)
    la	$s0,allFontInfo
    move	$s1,$a0
    sd	$s2,8($sp)
    # Line 272
    lw	$s0,0($s0)
    # Line 271
    move	$s2,$a1
    sd	$s3,32($sp)
    # Line 273
    beqz	$s0,.L0f0dfc80
    move	$s3,$zero
    b	.L0f0dfc18
    sd	$ra,0($sp)
.L0f0dfc0c:
    # Line 275
    lw	$s0,12($s0)
.L0f0dfc10:
    beqz	$s0,.L0f0dfc80
    nop
.L0f0dfc18:
    # Line 273
    lw	$at,8($s0)
    bne	$at,$s1,.L0f0dfc0c
    # Line 279
    li	$v0,1
    # Line 273
    bnezl	$s2,.L0f0dfc44
    # Line 279
    lw	$a2,4($s0)
    # Line 273
    lw	$v1,4($s0)
    beqz	$v1,.L0f0dfd40
    # Line 278
    move	$v0,$s0
    # Line 279
    beqz	$s2,.L0f0dfc0c
    nop
    lw	$a2,4($s0)
.L0f0dfc44:
    beqz	$a2,.L0f0dfc0c
    # Line 281
    la	$t9,strcmp
    move	$a0,$s2
    jalr	$t9
    lw	$a1,4($s0)
    bnezl	$v0,.L0f0dfc10
    # Line 275
    lw	$s0,12($s0)
    # Line 282
    move	$v0,$s0
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,0($sp)
    ld	$s2,8($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0dfc80:
    # Line 275
    bnez	$s2,.L0f0dfce4
    # Line 285
    la	$t9,XLoadQueryFont
.L0f0dfc88:
    beqz	$s3,.L0f0dfd10
.L0f0dfc8c:
    # Line 291
    la	$t9,gl_malloc
    addiu	$a1,$gp,-18800
    jalr	$t9
    li	$a0,16
    la	$a3,allFontInfo
    # Line 292
    sw	$s1,8($v0)
    # Line 293
    lw	$ra,0($a3)
    # Line 291
    move	$s0,$v0
    # Line 293
    sw	$ra,12($v0)
    ld	$ra,0($sp)
    # Line 294
    sw	$v0,0($a3)
    # Line 295
    bnez	$s2,.L0f0dfcf8
    sw	$s3,0($v0)
    # Line 296
    move	$a0,$s2
.L0f0dfcc4:
    sw	$a0,4($s0)
    # Line 297
    move	$v0,$s0
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0dfce4:
    # Line 285
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    b	.L0f0dfc88
    move	$s3,$v0
.L0f0dfcf8:
    # Line 296
    la	$t9,_GLstrdup
    jalr	$t9
    move	$a0,$s2
    move	$a0,$v0
    b	.L0f0dfcc4
    ld	$ra,0($sp)
.L0f0dfd10:
    # Line 287
    la	$t9,XLoadQueryFont
    move	$a0,$s1
    jalr	$t9
    lw	$a1,-14748($gp)
    bnez	$v0,.L0f0dfc8c
    move	$s3,$v0
    # Line 289
    la	$t9,XLoadQueryFont
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$gp,-18792
    b	.L0f0dfc8c
    move	$s3,$v0
.L0f0dfd40:
    # Line 278
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,0($sp)
    ld	$s2,8($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end create_aFont

# Function: strWidth_aFont
# Declared: Line 300 (Source lines: 301-306)
# Address: 0x0f0dfd5c - 0x0f0dfd98 (Size: 60 bytes, Frame: 208)
.ent strWidth_aFont
strWidth_aFont:
    # Line 305
    lw	$a0,0($a0)
    # Line 301
    addiu	$sp,$sp,-80
    # Line 305
    addiu	$a6,$sp,16
    addiu	$a5,$sp,8
    la	$t9,XTextExtents
    addiu	$a4,$sp,4
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a3,$sp,0
    # Line 306
    lh	$v0,16($sp)
    ld	$ra,32($sp)
    lh	$v1,18($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addu	$v0,$v0,$v1
.end strWidth_aFont

# Function: doAddPup
# Declared: Line 310 (Source lines: 311-384)
# Address: 0x0f0dfd98 - 0x0f0e008c (Size: 756 bytes, Frame: 160)
.ent doAddPup
doAddPup:
    # Line 311
    addiu	$sp,$sp,-672
    sd	$s3,616($sp)
    # Line 313
    lw	$at,-20764($gp)
    # Line 311
    move	$s3,$a0
    sd	$a2,624($sp)
    # Line 313
    beqz	$at,.L0f0dfdbc
    sd	$zero,592($sp)
    # Line 317
    li	$v1,1
    sb	$v1,18($s3)
.L0f0dfdbc:
    # Line 318
    lw	$v0,4($s3)
    beqzl	$v0,.L0f0dfe04
    sd	$s6,520($sp)
    b	.L0f0dfde4
    lh	$a0,24($v0)
.L0f0dfdd0:
    sd	$a0,592($sp)
    lw	$v0,4($v0)
.L0f0dfdd8:
    beqzl	$v0,.L0f0dfdf4
    sd	$s2,544($sp)
    lh	$a0,24($v0)
.L0f0dfde4:
    beqzl	$a0,.L0f0dfdd8
    lw	$v0,4($v0)
    b	.L0f0dfdd0
    # Line 320
    move	$a3,$a0
.L0f0dfdf4:
    sd	$s4,568($sp)
    sd	$s0,576($sp)
    sd	$s1,584($sp)
    sd	$s6,520($sp)
.L0f0dfe04:
    sd	$ra,528($sp)
    sd	$s7,552($sp)
    sd	$s5,560($sp)
    sd	$s8,536($sp)
    # Line 321
    move	$a5,$a1
    sd	$s1,584($sp)
    li	$s1,37
    sd	$s0,576($sp)
    li	$s0,124
    sw	$a1,0($sp)
    sd	$s2,544($sp)
    ld	$s2,592($sp)
    sd	$s4,568($sp)
    la	$s4,sub_0f0e0000
    addiu	$s2,$s2,1
    b	.L0f0dfe84
    addiu	$s4,$s4,3556
.L0f0dfe48:
    addiu	$at,$sp,8
.L0f0dfe4c:
    # Line 362
    beql	$s6,$at,.L0f0dffd0
    # Line 384
    ld	$s0,576($sp)
    sd	$v0,632($sp)
    # Line 364
    beqz	$s7,.L0f0dff4c
    sb	$zero,0($s6)
    # Line 369
    move	$a0,$s3
    addiu	$a1,$sp,8
    bal gl_g_setpup
    move	$t9,$s4
.L0f0dfe70:
    # Line 381
    lw	$a5,0($sp)
.L0f0dfe74:
    lbu	$v1,0($a5)
    beqz	$v1,.L0f0dffcc
    # Line 321
    addiu	$a5,$a5,1
    sw	$a5,0($sp)
.L0f0dfe84:
    # Line 334
    move	$s8,$zero
    sd	$zero,608($sp)
    # Line 335
    move	$s7,$zero
    sd	$zero,600($sp)
    # Line 338
    lbu	$a0,0($a5)
    # Line 336
    move	$v0,$s2
    # Line 337
    move	$s5,$zero
    # Line 338
    beqz	$a0,.L0f0dfe48
    addiu	$s6,$sp,8
    beq	$s0,$a0,.L0f0dfe4c
    addiu	$at,$sp,8
.L0f0dfeb0:
    # Line 340
    beq	$s1,$a0,.L0f0dfeec
    # Line 344
    la	$a3,sub_0f020000
    # Line 342
    addiu	$a3,$a5,1
    sw	$a3,0($sp)
    lbu	$a3,-1($a3)
    sb	$a3,0($s6)
    addiu	$s6,$s6,1
    lw	$a5,0($sp)
.L0f0dfed0:
    # Line 341
    lbu	$a0,0($a5)
    beqz	$a0,.L0f0dfe48
    nop
    bne	$s0,$a0,.L0f0dfeb0
    nop
    b	.L0f0dfe48
    nop
.L0f0dfeec:
    # Line 344
    addiu	$a5,$a5,1
    sw	$a5,0($sp)
    lbu	$a0,0($a5)
    addiu	$a3,$a3,13800
    addiu	$a0,$a0,-37
    sltiu	$a4,$a0,84
    sll	$a0,$a0,0x2
    beqz	$a4,.L0f0dff40
    addu	$a0,$a0,$a3
    lw	$a3,0($a0)
    jr	$a3
    # Line 350
    ld	$v1,624($sp)
    # Line 347
    li	$a4,1
    sd	$a4,600($sp)
    li	$at,-8
    # Line 349
    ld	$s8,624($sp)
    addiu	$v1,$s8,7
    and	$at,$at,$v1
    addiu	$s8,$at,8
    sd	$s8,624($sp)
    lw	$s8,-4($s8)
.L0f0dff40:
    # Line 358
    addiu	$a5,$a5,1
    b	.L0f0dfed0
    sw	$a5,0($sp)
.L0f0dff4c:
    # Line 371
    addiu	$a2,$sp,8
    move	$a0,$s3
    addiu	$s2,$s2,1
    ld	$a1,592($sp)
    la	$t9,sub_0f0e0000
    ld	$s6,632($sp)
    addiu	$a1,$a1,1
    addiu	$t9,$t9,8584
    bal gl_g_setpup
    sd	$a1,592($sp)
    ld	$v1,600($sp)
    # Line 372
    beqz	$s5,.L0f0dff94
    sw	$s6,28($v0)
    lw	$at,-20764($gp)
    beqz	$at,.L0f0dff90
    # Line 374
    move	$a0,$s5
    lw	$a0,0($s5)
.L0f0dff90:
    sw	$a0,8($v0)
.L0f0dff94:
    # Line 377
    ld	$a3,608($sp)
    # Line 374
    beqz	$v1,.L0f0dffa4
    nop
    # Line 376
    sw	$zero,60($v0)
.L0f0dffa4:
    # Line 377
    beqz	$a3,.L0f0dfe70
    sw	$s8,64($v0)
    la	$t9,sub_0f0e0000
    # Line 379
    move	$a0,$s3
    move	$a1,$zero
    addiu	$t9,$t9,8584
    bal gl_g_setpup
    move	$a2,$zero
    b	.L0f0dfe74
    # Line 381
    lw	$a5,0($sp)
.L0f0dffcc:
    # Line 384
    ld	$s0,576($sp)
.L0f0dffd0:
    ld	$s1,584($sp)
    ld	$s2,544($sp)
    ld	$s3,616($sp)
    ld	$s4,568($sp)
    ld	$s5,560($sp)
    ld	$s6,520($sp)
    ld	$ra,528($sp)
    ld	$s7,552($sp)
    ld	$s8,536($sp)
    jr	$ra
    addiu	$sp,$sp,672
    # Line 345
    b	.L0f0dff40
    li	$s7,1
    # Line 346
    li	$at,1
    b	.L0f0dff40
    sd	$at,608($sp)
    # Line 350
    addiu	$a4,$v1,7
    li	$a3,-8
    and	$a3,$a3,$a4
    addiu	$v1,$a3,8
    sd	$v1,624($sp)
    lw	$v1,-4($v1)
    sw	$v1,56($s3)
    b	.L0f0dff40
    lw	$a5,0($sp)
    li	$at,-8
    # Line 351
    ld	$s5,624($sp)
    addiu	$v1,$s5,7
    and	$at,$at,$v1
    addiu	$s5,$at,8
    sd	$s5,624($sp)
    b	.L0f0dff40
    lw	$s5,-4($s5)
    # Line 353
    li	$a2,10
    la	$t9,strtol
    addiu	$a1,$sp,0
    addiu	$a0,$a5,1
    jalr	$t9
    sw	$a0,0($sp)
    # Line 354
    lw	$a5,0($sp)
    addiu	$a5,$a5,-1
    # Line 355
    b	.L0f0dff40
    # Line 354
    sw	$a5,0($sp)
    # Line 356
    addiu	$s6,$s6,1
    sb	$s1,-1($s6)
    b	.L0f0dff40
    lw	$a5,0($sp)
.end doAddPup

# Function: gl_g_addtopup
# Declared: Line 386 (Source lines: 387-395)
# Address: 0x0f0e008c - 0x0f0e0104 (Size: 120 bytes, Frame: 224)
.globl gl_g_addtopup
.ent gl_g_addtopup
gl_g_addtopup:
    # Line 387
    addiu	$sp,$sp,-96
    sd	$a7,88($sp)
    sd	$a6,80($sp)
    sd	$a5,72($sp)
    sd	$a4,64($sp)
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,12732
    addu	$gp,$t9,$ra
    # Line 388
    la	$t9,sub_0f0e0000
    # Line 387
    sw	$a1,44($sp)
    sd	$a0,8($sp)
    # Line 388
    addiu	$t9,$t9,11728
    bal gl_g_setpup
    # Line 387
    sw	$a0,36($sp)
    # Line 388
    beqz	$v0,.L0f0e00f8
    ld	$ra,0($sp)
    # Line 392
    la	$t9,sub_0f0e0000
    ld	$a0,8($sp)
    addiu	$a2,$sp,48
    addiu	$t9,$t9,-616
    bal gl_mem_ntoh_wfmoutline_array
    lw	$a1,44($sp)
    ld	$ra,0($sp)
.L0f0e00f8:
    ld	$gp,16($sp)
    # Line 395
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_addtopup

# Function: gl_g_addtop
# Declared: Line 397 (Source lines: 398-408)
# Address: 0x0f0e0104 - 0x0f0e01c4 (Size: 192 bytes, Frame: 224)
.globl gl_g_addtop
.ent gl_g_addtop
gl_g_addtop:
    # Line 398
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    sd	$s8,32($sp)
    move	$s8,$a3
    sd	$s1,0($sp)
    move	$s1,$a2
    sd	$s7,24($sp)
    move	$s7,$a0
    # Line 401
    addiu	$a0,$a2,1
    sd	$s5,16($sp)
    sd	$gp,40($sp)
    # Line 398
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,12612 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 401
    la	$t9,gl_malloc
    # Line 398
    move	$s5,$a1
    sd	$ra,8($sp)
    # Line 401
    jalr	$t9
    addiu	$a1,$gp,-18800
    move	$s0,$v0
    # Line 402
    la	$t9,bcopy
    move	$a0,$s5
    move	$a1,$v0
    jalr	$t9
    move	$a2,$s1
    # Line 405
    move	$a2,$s8
    move	$a1,$s0
    move	$a0,$s7
    ld	$s5,16($sp)
    # Line 403
    addu	$v0,$s1,$s0
    # Line 405
    la	$t9,gl_g_addtopup
    # Line 404
    li	$v1,1
    sw	$v1,-20764($gp)
    # Line 405
    bal gl_g_addtopup
    # Line 403
    sb	$zero,0($v0)
    # Line 407
    addiu	$a1,$gp,-18800
    move	$a0,$s0
    # Line 406
    sw	$zero,-20764($gp)
    # Line 407
    la	$t9,gl_free
    ld	$s8,32($sp)
    ld	$s7,24($sp)
    jalr	$t9
    ld	$s1,0($sp)
    # Line 408
    ld	$ra,8($sp)
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_addtop

# Function: gl_g_defpup
# Declared: Line 411 (Source lines: 413-424)
# Address: 0x0f0e01c4 - 0x0f0e025c (Size: 152 bytes, Frame: 224)
.globl gl_g_defpup
.ent gl_g_defpup
gl_g_defpup:
    # Line 413
    addiu	$sp,$sp,-96
    sd	$a7,88($sp)
    sd	$a6,80($sp)
    sd	$a5,72($sp)
    sd	$a4,64($sp)
    sd	$a3,56($sp)
    sd	$gp,8($sp)
    sd	$ra,16($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,12420
    addu	$gp,$t9,$ra
    # Line 417
    la	$t9,sub_0f0e0000
    # Line 413
    sd	$a2,48($sp)
    sd	$a1,40($sp)
    # Line 417
    addiu	$t9,$t9,11728
    bal gl_g_setpup
    # Line 413
    sw	$a0,36($sp)
    # Line 417
    bnez	$v0,.L0f0e0224
    # Line 420
    la	$t9,newpup
    # Line 418
    ld	$ra,16($sp)
    li	$v0,-1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e0224:
    # Line 420
    jalr	$t9
    nop
    move	$a0,$v0
    # Line 422
    la	$t9,sub_0f0e0000
    sd	$v0,0($sp)
    addiu	$a2,$sp,40
    addiu	$t9,$t9,-616
    bal gl_mem_ntoh_wfmoutline_array
    lw	$a1,36($sp)
    # Line 424
    ld	$ra,16($sp)
    ld	$v0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_defpup

# Function: gl_g_idefpup
# Declared: Line 427 (Source lines: 428-431)
# Address: 0x0f0e025c - 0x0f0e02bc (Size: 96 bytes, Frame: 192)
.globl gl_g_idefpup
.ent gl_g_idefpup
gl_g_idefpup:
    # Line 428
    addiu	$sp,$sp,-64
    sd	$a1,32($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,12268 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 429
    la	$t9,newpup
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 428
    move	$s8,$a0
    # Line 429
    move	$a0,$v0
    # Line 430
    la	$t9,sub_0f0e0000
    sd	$v0,24($sp)
    move	$a1,$s8
    addiu	$t9,$t9,-616
    bal gl_mem_ntoh_wfmoutline_array
    ld	$a2,32($sp)
    ld	$v0,24($sp)
    # Line 431
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_idefpup

# Function: __GLidefpup
# Declared: Line 439 (Source lines: 440-445)
# Address: 0x0f0e02bc - 0x0f0e0318 (Size: 92 bytes, Frame: 32)
.globl __GLidefpup
.ent __GLidefpup
__GLidefpup:
    # Line 440
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,12172 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_dgl_table_is_remote
    lw	$at,0($at)
    beqz	$at,.L0f0e02fc
    sd	$ra,8($sp)
    # Line 443
    la	$t9,gl_d_idefpup
    jalr	$t9
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e02fc:
    # Line 445
    la	$t9,gl_g_idefpup
    bal gl_g_idefpup
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __GLidefpup

# Function: gl_g_dopup
# Declared: Line 448 (Source lines: 449-470)
# Address: 0x0f0e0318 - 0x0f0e03f4 (Size: 220 bytes, Frame: 208)
.globl gl_g_dopup
.ent gl_g_dopup
gl_g_dopup:
    # Line 449
    addiu	$sp,$sp,-80
    sd	$gp,40($sp)
    sd	$ra,48($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,12080
    addu	$gp,$t9,$ra
    # Line 455
    la	$t9,sub_0f0e0000
    sd	$s0,56($sp)
    addiu	$t9,$t9,11728
    bal gl_g_setpup
    # Line 449
    move	$s0,$a0
    # Line 455
    bnez	$v0,.L0f0e0364
    # Line 458
    addiu	$a7,$sp,28
    # Line 456
    ld	$ra,48($sp)
    li	$v0,-1
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e0364:
    # Line 458
    addiu	$a6,$sp,28
    addiu	$a5,$sp,24
    addiu	$a4,$sp,20
    addiu	$a3,$sp,16
    lw	$t1,0($s0)
    addiu	$a2,$sp,16
    addiu	$at,$sp,28
    lw	$a0,4($t1)
    lw	$t1,8($t1)
    la	$t9,XQueryPointer
    lw	$a1,140($a0)
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x4
    addu	$a1,$a1,$t0
    lw	$a1,8($a1)
    jalr	$t9
    sw	$at,4($sp)
    # Line 468
    move	$a0,$s0
    la	$t9,sub_0f0e0000
    lw	$a3,24($sp)
    lw	$a2,20($sp)
    addiu	$t9,$t9,4644
    bal gl_g_setpup
    li	$a1,3
    # Line 469
    la	$t9,XFlush
    lw	$a0,0($s0)
    sd	$v0,32($sp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$v0,32($sp)
    # Line 470
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_dopup

# Function: gl_g_freepup
# Declared: Line 473 (Source lines: 474-480)
# Address: 0x0f0e03f4 - 0x0f0e0450 (Size: 92 bytes, Frame: 48)
.globl gl_g_freepup
.ent gl_g_freepup
gl_g_freepup:
    # Line 474
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$ra,8($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,11860
    addu	$gp,$t9,$ra
    # Line 475
    la	$t9,sub_0f0e0000
    sd	$s0,0($sp)
    addiu	$t9,$t9,11728
    bal gl_g_setpup
    # Line 474
    move	$s0,$a0
    # Line 475
    beqz	$v0,.L0f0e0440
    ld	$ra,8($sp)
    beqz	$s0,.L0f0e0440
    # Line 478
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,3696
    bal gl_g_setpup
    move	$a0,$s0
    ld	$ra,8($sp)
.L0f0e0440:
    ld	$gp,16($sp)
    # Line 480
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_freepup

# Function: gl_g_newpup
# Declared: Line 482 (Source lines: 483-497)
# Address: 0x0f0e0450 - 0x0f0e04e4 (Size: 148 bytes, Frame: 16)
.globl gl_g_newpup
.ent gl_g_newpup
gl_g_newpup:
    # Line 483
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    sd	$ra,8($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,11768
    addu	$gp,$t9,$ra
    # Line 487
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,11728
    bal gl_g_setpup
    nop
    beqz	$v0,.L0f0e04d4
    # Line 488
    ld	$ra,8($sp)
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    beqz	$a3,.L0f0e04c0
    # Line 494
    la	$a0,gl_sstatep
    # Line 491
    lw	$a0,224($a3)
    # Line 492
    lw	$a1,12($a0)
    # Line 491
    lw	$a0,4($a0)
    # Line 492
    lw	$a1,8($a1)
.L0f0e04a0:
    # Line 497
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,2992
    bal gl_g_setpup
    move	$a2,$zero
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0e04c0:
    # Line 494
    lw	$a0,0($a0)
    lw	$a0,28($a0)
    # Line 495
    lw	$a1,8($a0)
    b	.L0f0e04a0
    # Line 494
    lw	$a0,4($a0)
.L0f0e04d4:
    # Line 488
    li	$v0,-1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_newpup

# Function: gl_g_setpup
# Declared: Line 500 (Source lines: 501-511)
# Address: 0x0f0e04e4 - 0x0f0e0590 (Size: 172 bytes, Frame: 208)
.globl gl_g_setpup
.ent gl_g_setpup
gl_g_setpup:
    # Line 501
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    sd	$ra,40($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,11620
    addu	$gp,$t9,$ra
    # Line 504
    la	$t9,sub_0f0e0000
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    addiu	$t9,$t9,11728
    bal gl_g_setpup
    sd	$a0,24($sp)
    beqz	$v0,.L0f0e0580
    # Line 507
    la	$t9,sub_0f0e0000
    ld	$a0,24($sp)
    addiu	$t9,$t9,8348
    bal gl_g_setpup
    ld	$a1,16($sp)
    bnez	$v0,.L0f0e0544
    sd	$v0,0($sp)
    # Line 511
    ld	$ra,40($sp)
.L0f0e0538:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e0544:
    # Line 508
    ld	$a1,8($sp)
    la	$t9,sub_0f0e0000
    ld	$a0,0($sp)
    andi	$a1,$a1,0x1
    addiu	$t9,$t9,9028
    bal gl_g_setpup
    sltiu	$a1,$a1,1
    # Line 509
    la	$t9,sub_0f0e0000
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    addiu	$t9,$t9,9044
    bal gl_g_setpup
    andi	$a1,$a1,0x6
    b	.L0f0e0538
    # Line 511
    ld	$ra,40($sp)
.L0f0e0580:
    # Line 505
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_setpup

# Function: create_aPopupInfo
# Declared: Line 560 (Source lines: 561-695)
# Address: 0x0f0e0590 - 0x0f0e0bb0 (Size: 1568 bytes, Frame: 224)
.ent create_aPopupInfo
create_aPopupInfo:
    # Line 561
    addiu	$sp,$sp,-224
    sd	$s1,144($sp)
    move	$s1,$a0
    sd	$s2,168($sp)
    move	$s2,$a1
    # Line 566
    sll	$at,$a1,0x2
    sd	$s0,152($sp)
    # Line 562
    lw	$s0,-20736($gp)
    sd	$s3,160($sp)
    # Line 566
    lw	$s3,140($a0)
    addu	$at,$at,$a1
    sll	$at,$at,0x4
    addu	$s3,$s3,$at
    beqz	$s0,.L0f0e0614
    lw	$s3,8($s3)
    b	.L0f0e05e4
    lw	$v1,4($s0)
    # Line 572
    lw	$s0,0($s0)
.L0f0e05d8:
    beqz	$s0,.L0f0e0618
    # Line 574
    la	$t9,gl_malloc
    # Line 566
    lw	$v1,4($s0)
.L0f0e05e4:
    bnel	$v1,$s1,.L0f0e05d8
    # Line 572
    lw	$s0,0($s0)
    # Line 566
    lw	$a3,8($s0)
    bnel	$a3,$s2,.L0f0e05d8
    # Line 572
    lw	$s0,0($s0)
    # Line 571
    move	$v0,$s0
    ld	$s0,152($sp)
    ld	$s1,144($sp)
    ld	$s2,168($sp)
    ld	$s3,160($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f0e0614:
    # Line 574
    la	$t9,gl_malloc
.L0f0e0618:
    addiu	$a1,$gp,-18800
    sd	$ra,184($sp)
    jalr	$t9
    li	$a0,156
    # Line 576
    sw	$s2,8($v0)
    # Line 574
    la	$a4,gl_sstatep
    # Line 575
    sw	$s1,4($v0)
    # Line 577
    lw	$a2,0($a4)
    lw	$a2,28($a2)
    lw	$a2,24($a2)
    lw	$a2,0($a2)
    lw	$a2,0($a2)
    sw	$a2,56($v0)
    # Line 578
    lw	$a4,0($a4)
    lw	$a4,28($a4)
    lw	$a4,24($a4)
    # Line 574
    move	$s0,$v0
    # Line 579
    move	$a3,$zero
    # Line 578
    lw	$a4,0($a4)
    # Line 579
    move	$a1,$s3
    la	$t9,XCreateColormap
    # Line 578
    lw	$a4,12($a4)
    # Line 579
    move	$a0,$s1
    jalr	$t9
    # Line 578
    sw	$a4,60($v0)
    sd	$s4,192($sp)
    sd	$s5,200($sp)
    # Line 580
    la	$t9,XCreateFontCursor
    li	$a1,2
    move	$a0,$s1
    jalr	$t9
    # Line 579
    sw	$v0,52($s0)
    sd	$s6,176($sp)
    # Line 582
    move	$a4,$zero
    addiu	$a2,$gp,-18784
    # Line 581
    sw	$zero,12($s0)
    # Line 580
    sw	$v0,152($s0)
    la	$s4,m_class
    # Line 582
    la	$a3,sub_0f020000
    # Line 580
    la	$s5,m_inst
    # Line 582
    la	$t9,_GLgetresource
    addiu	$a3,$a3,14136
    move	$a1,$s5
    jalr	$t9
    move	$a0,$s4
    move	$s2,$v0
    bnez	$v0,.L0f0e0b28
    move	$s6,$v0
    # Line 586
    li	$a4,1000
    sw	$a4,-20752($gp)
    # Line 587
    move	$a0,$s4
.L0f0e06e4:
    move	$a1,$s5
    move	$a4,$zero
    la	$t9,_GLgetresource
    la	$a3,sub_0f020000
    addiu	$a2,$gp,-18784
    jalr	$t9
    addiu	$a3,$a3,14152
    move	$s2,$v0
    bnez	$v0,.L0f0e0b50
    move	$s6,$v0
    # Line 591
    li	$a4,160
    sw	$a4,-20756($gp)
    # Line 592
    move	$a0,$s4
.L0f0e0718:
    move	$a1,$s5
    move	$a4,$zero
    la	$a3,sub_0f020000
    la	$t9,_GLgetresource
    la	$a2,sub_0f020000
    addiu	$a3,$a3,14184
    jalr	$t9
    addiu	$a2,$a2,14168
    move	$s2,$v0
    bnez	$v0,.L0f0e0b78
    move	$s6,$v0
    # Line 599
    move	$a0,$s4
.L0f0e0748:
    move	$a1,$s5
    move	$a4,$zero
    ld	$s6,176($sp)
    la	$a3,sub_0f020000
    la	$t9,_GLgetresource
    la	$a2,sub_0f020000
    addiu	$a3,$a3,14216
    jalr	$t9
    addiu	$a2,$a2,14200
    beqz	$v0,.L0f0e07a4
    move	$s2,$v0
    # Line 600
    move	$a0,$s1
    la	$t9,XParseColor
    addiu	$a3,$sp,0
    move	$a2,$s2
    jalr	$t9
    lw	$a1,52($s0)
    # Line 601
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-18800
    b	.L0f0e07b8
    # Line 604
    la	$t9,XAllocColor
.L0f0e07a4:
    # Line 603
    li	$a4,0xaa00
    sh	$a4,4($sp)
    sh	$a4,6($sp)
    sh	$a4,8($sp)
    # Line 604
    la	$t9,XAllocColor
.L0f0e07b8:
    move	$a0,$s1
    addiu	$a2,$sp,0
    jalr	$t9
    lw	$a1,52($s0)
    # Line 607
    move	$a0,$s4
    move	$a1,$s5
    move	$a4,$zero
    la	$a3,sub_0f020000
    la	$t9,_GLgetresource
    la	$a2,sub_0f020000
    addiu	$a3,$a3,14248
    jalr	$t9
    addiu	$a2,$a2,14232
    beqz	$v0,.L0f0e0824
    move	$s2,$v0
    # Line 608
    move	$a0,$s1
    la	$t9,XParseColor
    addiu	$a3,$sp,16
    move	$a2,$s2
    jalr	$t9
    lw	$a1,52($s0)
    # Line 609
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-18800
    b	.L0f0e0834
    # Line 612
    la	$t9,XAllocColor
.L0f0e0824:
    # Line 611
    sh	$zero,20($sp)
    sh	$zero,22($sp)
    sh	$zero,24($sp)
    # Line 612
    la	$t9,XAllocColor
.L0f0e0834:
    move	$a0,$s1
    addiu	$a2,$sp,16
    jalr	$t9
    lw	$a1,52($s0)
    # Line 615
    move	$a0,$s4
    move	$a1,$s5
    move	$a4,$zero
    la	$a3,sub_0f020000
    la	$t9,_GLgetresource
    la	$a2,sub_0f020000
    addiu	$a3,$a3,14264
    jalr	$t9
    addiu	$a2,$a2,14200
    move	$s2,$v0
    ld	$s4,192($sp)
    beqz	$v0,.L0f0e08a8
    ld	$s5,200($sp)
    # Line 616
    move	$a0,$s1
    la	$t9,XParseColor
    addiu	$a3,$sp,32
    move	$a2,$s2
    jalr	$t9
    lw	$a1,52($s0)
    # Line 617
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-18800
    b	.L0f0e08bc
    # Line 620
    la	$t9,XAllocColor
.L0f0e08a8:
    # Line 619
    li	$a4,0xff00
    sh	$a4,36($sp)
    sh	$a4,38($sp)
    sh	$a4,40($sp)
    # Line 620
    la	$t9,XAllocColor
.L0f0e08bc:
    move	$a0,$s1
    addiu	$a2,$sp,32
    jalr	$t9
    lw	$a1,52($s0)
    # Line 622
    move	$a5,$zero
    lw	$a7,60($s0)
    lw	$a6,16($sp)
    li	$a4,16
    li	$a3,16
    move	$a1,$s3
    la	$s2,sub_0f030000
    la	$t9,XCreatePixmapFromBitmapData
    move	$a0,$s1
    addiu	$s2,$s2,-28816
    jalr	$t9
    move	$a2,$s2
    # Line 629
    li	$a7,1
    move	$a6,$zero
    li	$a5,1
    li	$a4,8
    li	$a3,16
    addiu	$a2,$s2,32
    move	$a1,$s3
    # Line 622
    sw	$v0,64($s0)
    # Line 629
    la	$t9,XCreatePixmapFromBitmapData
    # Line 628
    lw	$t8,16($sp)
    # Line 629
    move	$a0,$s1
    jalr	$t9
    # Line 628
    sw	$t8,56($sp)
    # Line 631
    addiu	$a3,$sp,48
    li	$a2,2052
    la	$t9,XCreateGC
    move	$a0,$s1
    # Line 629
    sw	$v0,96($sp)
    # Line 631
    jalr	$t9
    lw	$a1,64($s0)
    # Line 633
    la	$t9,XFreePixmap
    move	$a0,$s1
    # Line 631
    sw	$v0,16($s0)
    # Line 633
    jalr	$t9
    lw	$a1,96($sp)
    # Line 635
    li	$a7,1
    li	$a6,1
    move	$a5,$zero
    li	$a4,16
    li	$a3,16
    move	$a2,$s2
    move	$a1,$s3
    la	$t9,XCreatePixmapFromBitmapData
    move	$a0,$s1
    # Line 634
    li	$at,3
    # Line 635
    jalr	$t9
    # Line 634
    sw	$at,80($sp)
    # Line 638
    addiu	$a3,$sp,48
    li	$a2,4
    move	$a0,$s1
    # Line 637
    lw	$v1,0($sp)
    # Line 638
    la	$t9,XCreateGC
    # Line 635
    sw	$v0,96($sp)
    # Line 637
    sw	$v1,56($sp)
    # Line 638
    jalr	$t9
    lw	$a1,64($s0)
    # Line 640
    addiu	$a3,$sp,48
    # Line 638
    sw	$v0,28($s0)
    # Line 640
    li	$a2,2316
    # Line 639
    lw	$a1,16($sp)
    # Line 640
    la	$t9,XCreateGC
    move	$a0,$s1
    # Line 639
    sw	$a1,60($sp)
    # Line 640
    jalr	$t9
    lw	$a1,64($s0)
    # Line 643
    addiu	$a3,$sp,48
    # Line 640
    sw	$v0,20($s0)
    # Line 643
    li	$a2,2316
    # Line 642
    lw	$a4,32($sp)
    # Line 643
    la	$t9,XCreateGC
    move	$a0,$s1
    # Line 642
    sw	$a4,56($sp)
    # Line 643
    jalr	$t9
    lw	$a1,64($s0)
    # Line 645
    addiu	$a3,$sp,48
    li	$a2,4
    la	$t9,XCreateGC
    lw	$a1,64($s0)
    move	$a0,$s1
    jalr	$t9
    # Line 643
    sw	$v0,24($s0)
    # Line 647
    addiu	$a3,$sp,48
    # Line 645
    sw	$v0,36($s0)
    # Line 647
    li	$a2,2316
    # Line 646
    lw	$a5,0($sp)
    # Line 647
    la	$t9,XCreateGC
    move	$a0,$s1
    # Line 646
    sw	$a5,60($sp)
    # Line 647
    jalr	$t9
    lw	$a1,64($s0)
    sw	$v0,32($s0)
    # Line 650
    lw	$t0,32($sp)
    sw	$t0,40($s0)
    # Line 651
    lw	$a7,16($sp)
    sw	$a7,44($s0)
    # Line 652
    lw	$a6,0($sp)
    # Line 654
    la	$t9,XFreePixmap
    move	$a0,$s1
    # Line 652
    sw	$a6,48($s0)
    # Line 654
    jalr	$t9
    lw	$a1,96($sp)
    # Line 687
    lw	$a7,60($s0)
    li	$a4,16
    li	$a3,16
    move	$a2,$s2
    move	$a1,$s3
    la	$t9,XCreatePixmapFromBitmapData
    # Line 672
    lw	$at,32($s0)
    # Line 668
    lw	$ra,24($s0)
    # Line 678
    lw	$t8,16($s0)
    # Line 666
    lw	$t1,20($s0)
    # Line 665
    lw	$t2,36($s0)
    # Line 680
    lw	$t3,28($s0)
    # Line 685
    sw	$t1,148($s0)
    # Line 684
    sw	$t2,144($s0)
    # Line 683
    sw	$t1,140($s0)
    # Line 682
    sw	$t1,136($s0)
    # Line 681
    sw	$t2,132($s0)
    # Line 680
    sw	$t3,128($s0)
    # Line 679
    sw	$t2,124($s0)
    # Line 678
    sw	$t8,120($s0)
    # Line 677
    sw	$t2,116($s0)
    # Line 676
    sw	$t2,112($s0)
    # Line 675
    sw	$t1,108($s0)
    # Line 674
    sw	$t2,104($s0)
    # Line 673
    sw	$ra,84($s0)
    # Line 672
    sw	$at,80($s0)
    # Line 671
    sw	$t1,76($s0)
    # Line 670
    sw	$t2,72($s0)
    # Line 668
    sw	$ra,100($s0)
    # Line 667
    sw	$t2,96($s0)
    # Line 666
    sw	$t1,92($s0)
    # Line 665
    sw	$t2,88($s0)
    # Line 687
    move	$a0,$s1
    lw	$a6,32($sp)
    jalr	$t9
    lw	$a5,0($sp)
    # Line 695
    ld	$s1,144($sp)
    ld	$s2,168($sp)
    ld	$s3,160($sp)
    # Line 693
    lw	$v1,-20736($gp)
    # Line 694
    sw	$s0,-20736($gp)
    # Line 687
    sw	$v0,68($s0)
    # Line 695
    move	$v0,$s0
    ld	$ra,184($sp)
    # Line 693
    sw	$v1,0($s0)
    # Line 695
    ld	$s0,152($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f0e0b28:
    # Line 583
    la	$t9,atoi
    jalr	$t9
    move	$a0,$s2
    # Line 584
    la	$t9,gl_free
    addiu	$a1,$gp,-18800
    move	$a0,$s6
    jalr	$t9
    # Line 583
    sw	$v0,-20752($gp)
    b	.L0f0e06e4
    # Line 587
    move	$a0,$s4
.L0f0e0b50:
    # Line 588
    la	$t9,atoi
    jalr	$t9
    move	$a0,$s2
    # Line 589
    la	$t9,gl_free
    addiu	$a1,$gp,-18800
    move	$a0,$s6
    jalr	$t9
    # Line 588
    sw	$v0,-20756($gp)
    b	.L0f0e0718
    # Line 592
    move	$a0,$s4
.L0f0e0b78:
    # Line 593
    la	$t9,gl_strcasecmp
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-18776
    beqz	$v0,.L0f0e0ba4
.L0f0e0b8c:
    # Line 595
    la	$t9,gl_free
    move	$a0,$s6
    jalr	$t9
    addiu	$a1,$gp,-18800
    b	.L0f0e0748
    # Line 599
    move	$a0,$s4
.L0f0e0ba4:
    # Line 594
    li	$a3,1
    b	.L0f0e0b8c
    sw	$a3,12($s0)
.end create_aPopupInfo

# Function: create_aMenu
# Declared: Line 700 (Source lines: 701-751)
# Address: 0x0f0e0bb0 - 0x0f0e0de4 (Size: 564 bytes, Frame: 176)
.ent create_aMenu
create_aMenu:
    # Line 701
    addiu	$sp,$sp,-176
    sd	$s1,128($sp)
    sd	$s7,120($sp)
    move	$s7,$a2
    sd	$s2,96($sp)
    move	$s2,$a1
    # Line 706
    addiu	$a1,$gp,-18800
    sd	$s0,104($sp)
    la	$t9,gl_malloc
    # Line 701
    move	$s0,$a0
    sd	$ra,112($sp)
    # Line 706
    jalr	$t9
    li	$a0,60
    # Line 707
    la	$t9,bzero
    # Line 706
    move	$a0,$v0
    move	$s1,$v0
    # Line 707
    jalr	$t9
    li	$a1,60
    # Line 709
    la	$t9,sub_0f0e0000
    move	$a0,$s0
    addiu	$t9,$t9,1424
    bal gl_g_setpup
    move	$a1,$s2
    # Line 710
    sb	$s7,13($s1)
    andi	$at,$s7,0xff
    beqz	$at,.L0f0e0d94
    # Line 709
    sw	$v0,0($s1)
    # Line 711
    move	$a4,$zero
    addiu	$a3,$gp,-18760
    addiu	$a2,$gp,-18768
    ld	$s7,120($sp)
    la	$a1,sub_0f020000
    la	$t9,_GLgetresource
    la	$a0,sub_0f020000
    addiu	$a1,$a1,14296
    jalr	$t9
    addiu	$a0,$a0,14280
    la	$t9,sub_0f0e0000
    move	$a1,$v0
    addiu	$t9,$t9,-1068
    bal gl_mem_ntoh_wfmoutline_array
    move	$a0,$s0
    # Line 713
    lw	$at,0($s1)
    # Line 711
    sw	$v0,52($s1)
    # Line 713
    lw	$at,48($at)
    sd	$s8,136($sp)
    # Line 714
    li	$t2,2
    # Line 713
    sw	$at,36($sp)
.L0f0e0c70:
    # Line 721
    lw	$a0,0($s1)
    # Line 728
    li	$a6,1
    li	$a5,100
    # Line 721
    lw	$a0,44($a0)
    # Line 722
    li	$v1,1
    sw	$v1,80($sp)
    # Line 721
    sw	$a0,44($sp)
    # Line 728
    li	$a4,100
    # Line 723
    lw	$v0,0($s1)
    # Line 728
    move	$a3,$zero
    move	$a2,$zero
    # Line 723
    lw	$v0,152($v0)
    # Line 728
    addiu	$t0,$sp,32
    la	$t9,XCreateWindow
    # Line 723
    sw	$v0,88($sp)
    # Line 728
    move	$a0,$s0
    # Line 724
    lw	$at,0($s1)
    # Line 728
    sll	$s8,$s2,0x2
    addu	$s8,$s8,$s2
    # Line 724
    lw	$at,52($at)
    # Line 725
    li	$ra,0xa07c
    sw	$ra,72($sp)
    # Line 724
    sw	$at,84($sp)
    # Line 728
    sll	$s8,$s8,0x4
    lw	$v0,0($s1)
    lw	$a1,140($s0)
    li	$v1,1
    lw	$a7,60($v0)
    addu	$a1,$a1,$s8
    lw	$a1,8($a1)
    sw	$v1,4($sp)
    ori	$v1,$t2,0x6a08
    lw	$v0,56($v0)
    sw	$t0,28($sp)
    sw	$v1,20($sp)
    jalr	$t9
    sw	$v0,12($sp)
    # Line 742
    move	$a6,$zero
    li	$a5,100
    li	$a4,100
    move	$a3,$zero
    move	$a2,$zero
    move	$a0,$s0
    ld	$s2,96($sp)
    # Line 740
    lw	$t0,0($s1)
    # Line 728
    sw	$v0,24($s1)
    # Line 742
    addiu	$t2,$sp,32
    # Line 740
    lw	$t0,64($t0)
    # Line 741
    li	$a7,12
    sw	$a7,72($sp)
    # Line 740
    sw	$t0,32($sp)
    # Line 742
    la	$t9,XCreateWindow
    lw	$t0,0($s1)
    lw	$a1,140($s0)
    li	$t1,1
    lw	$a7,60($t0)
    addu	$a1,$a1,$s8
    lw	$a1,8($a1)
    sw	$t1,4($sp)
    li	$t1,27145
    lw	$t0,56($t0)
    sw	$t2,28($sp)
    sw	$t1,20($sp)
    jalr	$t9
    sw	$t0,12($sp)
    # Line 751
    ld	$s0,104($sp)
    # Line 742
    sw	$v0,28($s1)
    # Line 751
    move	$v0,$s1
    ld	$ra,112($sp)
    ld	$s1,128($sp)
    ld	$s8,136($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0e0d94:
    # Line 716
    move	$a4,$zero
    addiu	$a3,$gp,-18760
    addiu	$a2,$gp,-18768
    la	$t9,_GLgetresource
    la	$a1,m_inst
    la	$a0,m_class
    jalr	$t9
    ld	$s7,120($sp)
    la	$t9,sub_0f0e0000
    move	$a1,$v0
    addiu	$t9,$t9,-1068
    bal gl_mem_ntoh_wfmoutline_array
    move	$a0,$s0
    # Line 718
    lw	$at,0($s1)
    # Line 716
    sw	$v0,52($s1)
    sd	$s8,136($sp)
    # Line 718
    lw	$at,68($at)
    # Line 719
    li	$t2,1
    b	.L0f0e0c70
    # Line 718
    sw	$at,32($sp)
.end create_aMenu

# Function: setTitle_aMenu
# Declared: Line 754 (Source lines: 755-764)
# Address: 0x0f0e0de4 - 0x0f0e0e70 (Size: 140 bytes, Frame: 48)
.ent setTitle_aMenu
setTitle_aMenu:
    # Line 755
    lbu	$at,13($a0)
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    beqz	$at,.L0f0e0e04
    move	$s0,$a0
    # Line 757
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e0e04:
    lw	$a0,36($s0)
    sd	$ra,16($sp)
    beqz	$a0,.L0f0e0e24
    sd	$a1,0($sp)
    # Line 759
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,3696
    bal gl_g_setpup
    nop
.L0f0e0e24:
    # Line 760
    lw	$a0,0($s0)
    la	$t9,sub_0f0e0000
    li	$a2,1
    lw	$a1,8($a0)
    addiu	$t9,$t9,2992
    bal gl_g_setpup
    lw	$a0,4($a0)
    move	$a0,$v0
    # Line 762
    la	$t9,sub_0f0e0000
    ld	$a2,0($sp)
    move	$a1,$zero
    addiu	$t9,$t9,8584
    bal gl_g_setpup
    # Line 760
    sw	$v0,36($s0)
    # Line 764
    ld	$ra,16($sp)
    # Line 763
    sb	$zero,16($s0)
    # Line 764
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end setTitle_aMenu

# Function: destroy_aMenu
# Declared: Line 766 (Source lines: 767-772)
# Address: 0x0f0e0e70 - 0x0f0e0ee8 (Size: 120 bytes, Frame: 32)
.ent destroy_aMenu
destroy_aMenu:
.L0f0e0e70:
    # Line 767
    lw	$a2,4($a0)
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$a2,.L0f0e0e9c
    move	$s0,$a0
    # Line 768
    la	$t9,sub_0f0e0000
    sd	$ra,8($sp)
    addiu	$t9,$t9,8912
    bal gl_g_setpup
    move	$a0,$a2
    ld	$ra,8($sp)
.L0f0e0e9c:
    lw	$a0,36($s0)
    beqz	$a0,.L0f0e0eb8
    sd	$ra,8($sp)
    # Line 769
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,3696
    bal .L0f0e0e70
    nop
.L0f0e0eb8:
    # Line 770
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    li	$a1,60
    # Line 771
    la	$t9,gl_free
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$gp,-18800
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 772
    jr	$ra
    addiu	$sp,$sp,32
.end destroy_aMenu

# Function: map_aMenu
# Declared: Line 774 (Source lines: 775-786)
# Address: 0x0f0e0ee8 - 0x0f0e0f98 (Size: 176 bytes, Frame: 48)
.ent map_aMenu
map_aMenu:
    # Line 775
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 776
    lbu	$at,12($a0)
    sd	$s1,8($sp)
    lw	$s1,0($a0)
    # Line 775
    move	$s0,$a0
    # Line 776
    beqz	$at,.L0f0e0f88
    lw	$s1,4($s1)
    # Line 778
    la	$t9,XRaiseWindow
    move	$a0,$s1
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a1,28($s0)
    # Line 779
    move	$a0,$s1
    la	$t9,XResizeWindow
    lh	$a3,22($s0)
    lh	$a2,20($s0)
    jalr	$t9
    lw	$a1,28($s0)
    # Line 780
    move	$a0,$s1
    la	$t9,XResizeWindow
    lh	$a3,22($s0)
    lh	$a2,20($s0)
    jalr	$t9
    lw	$a1,24($s0)
    # Line 781
    la	$t9,XRaiseWindow
    move	$a0,$s1
    jalr	$t9
    lw	$a1,24($s0)
    # Line 782
    la	$t9,XMapWindow
    move	$a0,$s1
    jalr	$t9
    lw	$a1,28($s0)
    # Line 783
    la	$t9,XMapWindow
    move	$a0,$s1
    jalr	$t9
    lw	$a1,24($s0)
    # Line 784
    li	$ra,1
    sb	$ra,14($s0)
    ld	$ra,16($sp)
.L0f0e0f88:
    # Line 786
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end map_aMenu

# Function: realize_aMenu
# Declared: Line 792 (Source lines: 793-840)
# Address: 0x0f0e0f98 - 0x0f0e115c (Size: 452 bytes, Frame: 224)
.ent realize_aMenu
realize_aMenu:
.L0f0e0f98:
    # Line 793
    addiu	$sp,$sp,-96
    sd	$s2,40($sp)
    move	$s2,$a0
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a2
    # Line 801
    lbu	$at,13($a0)
    # Line 799
    lw	$v0,0($a0)
    sd	$s4,24($sp)
    sd	$s8,0($sp)
    lw	$s8,4($v0)
    # Line 800
    lw	$v0,8($v0)
    sd	$s3,32($sp)
    lw	$s3,140($s8)
    sll	$s4,$v0,0x2
    addu	$s4,$s4,$v0
    sll	$s4,$s4,0x4
    addu	$s3,$s3,$s4
    # Line 801
    lw	$s4,16($s3)
    beqz	$at,.L0f0e1104
    # Line 800
    lw	$s3,12($s3)
.L0f0e0ff0:
    # Line 807
    bltz	$s1,.L0f0e10ec
    nop
.L0f0e0ff8:
    # Line 811
    lh	$a0,20($s2)
    addu	$v1,$a0,$s1
    slt	$v1,$s3,$v1
    beqzl	$v1,.L0f0e1018
    # Line 817
    lw	$a0,36($s2)
    # Line 814
    subu	$s1,$s3,$a0
    addiu	$s1,$s1,-2
    # Line 817
    lw	$a0,36($s2)
.L0f0e1018:
    lh	$a1,22($s2)
    beqz	$a0,.L0f0e10f4
    addiu	$a1,$a1,2
    # Line 819
    lh	$a2,22($a0)
    addiu	$a2,$a2,6
    slt	$a4,$s0,$a2
    beqz	$a4,.L0f0e1040
    # Line 824
    addu	$a4,$s0,$a1
    # Line 821
    move	$s0,$a2
.L0f0e103c:
    # Line 824
    addu	$a4,$s0,$a1
.L0f0e1040:
    slt	$a4,$s4,$a4
    beqz	$a4,.L0f0e1050
    nop
    # Line 826
    subu	$s0,$s4,$a1
.L0f0e1050:
    beqz	$a0,.L0f0e1074
    sd	$ra,48($sp)
    # Line 829
    lh	$a2,22($a0)
    la	$t9,sub_0f0e0000
    move	$a1,$s1
    subu	$a2,$s0,$a2
    addiu	$t9,$t9,3992
    bal .L0f0e0f98
    addiu	$a2,$a2,-6
.L0f0e1074:
    # Line 832
    move	$a0,$s8
    la	$t9,XMoveWindow
    move	$a3,$s0
    move	$a2,$s1
    jalr	$t9
    lw	$a1,24($s2)
    # Line 833
    move	$a0,$s8
    la	$t9,XMoveWindow
    addiu	$a3,$s0,7
    addiu	$a2,$s1,7
    jalr	$t9
    lw	$a1,28($s2)
    # Line 839
    move	$a0,$s2
    # Line 838
    sw	$zero,48($s2)
    # Line 837
    sw	$zero,44($s2)
    # Line 839
    la	$t9,sub_0f0e0000
    # Line 836
    sw	$zero,40($s2)
    # Line 835
    li	$at,1
    # Line 839
    addiu	$t9,$t9,3816
    bal gl_g_setpup
    # Line 835
    sb	$at,12($s2)
    ld	$ra,48($sp)
    # Line 840
    ld	$s1,8($sp)
    ld	$s3,32($sp)
    ld	$s8,0($sp)
    ld	$s4,24($sp)
    ld	$s2,40($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e10ec:
    b	.L0f0e0ff8
    # Line 811
    move	$s1,$zero
.L0f0e10f4:
    # Line 821
    bgez	$s0,.L0f0e1040
    # Line 824
    addu	$a4,$s0,$a1
    b	.L0f0e103c
    move	$s0,$zero
.L0f0e1104:
    # Line 804
    la	$t9,sub_0f0e0000
    sd	$ra,48($sp)
    addiu	$t9,$t9,7740
    bal gl_g_setpup
    move	$a0,$s2
    lbu	$at,17($s2)
    beqz	$at,.L0f0e0ff0
    ld	$ra,48($sp)
    lw	$a0,4($s2)
    beqz	$a0,.L0f0e0ff0
    nop
    # Line 806
    lh	$v1,40($a0)
    # Line 807
    lh	$at,42($a0)
    # Line 806
    srl	$v0,$v1,0x1f
    # Line 807
    srl	$a4,$at,0x1f
    addu	$a4,$a4,$at
    # Line 806
    addu	$v0,$v0,$v1
    sra	$v0,$v0,0x1
    # Line 807
    sra	$a4,$a4,0x1
    subu	$s0,$s0,$a4
    b	.L0f0e0ff0
    # Line 806
    subu	$s1,$s1,$v0
.end realize_aMenu

# Function: find_aMenu
# Declared: Line 842 (Source lines: 843-855)
# Address: 0x0f0e115c - 0x0f0e1224 (Size: 200 bytes, Frame: 48)
.ent find_aMenu
find_aMenu:
.L0f0e115c:
    # Line 843
    lw	$at,24($a0)
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    beq	$at,$a1,.L0f0e11f8
    move	$s0,$a1
    # Line 847
    lw	$v0,36($a0)
    beqzl	$v0,.L0f0e118c
    sd	$s1,16($sp)
    lw	$v1,24($v0)
    beql	$v1,$s0,.L0f0e121c
    # Line 849
    ld	$s0,24($sp)
    sd	$s1,16($sp)
.L0f0e118c:
    # Line 850
    lw	$s1,4($a0)
    sd	$s2,8($sp)
    beqz	$s1,.L0f0e11dc
    sd	$ra,0($sp)
    la	$s2,sub_0f0e0000
    sd	$ra,0($sp)
    b	.L0f0e11c8
    addiu	$s2,$s2,4444
.L0f0e11ac:
    # Line 852
    bal .L0f0e115c
    move	$t9,$s2
    bnezl	$v0,.L0f0e1208
    # Line 853
    ld	$s0,24($sp)
    # Line 850
    lw	$s1,4($s1)
.L0f0e11c0:
    beqz	$s1,.L0f0e11e0
    # Line 855
    move	$v0,$zero
.L0f0e11c8:
    # Line 850
    lw	$a0,8($s1)
    beqzl	$a0,.L0f0e11c0
    lw	$s1,4($s1)
    b	.L0f0e11ac
    # Line 852
    move	$a1,$s0
.L0f0e11dc:
    # Line 855
    move	$v0,$zero
.L0f0e11e0:
    ld	$s0,24($sp)
    ld	$ra,0($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e11f8:
    # Line 847
    move	$v0,$a0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e1208:
    ld	$ra,0($sp)
    # Line 853
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e121c:
    # Line 849
    jr	$ra
    addiu	$sp,$sp,48
.end find_aMenu

# Function: popup_aMenu
# Declared: Line 860 (Source lines: 861-991)
# Address: 0x0f0e1224 - 0x0f0e1740 (Size: 1308 bytes, Frame: 144)
.ent popup_aMenu
popup_aMenu:
    # Line 861
    la	$a7,_GLmenuIsUp
    # Line 863
    lw	$a6,0($a0)
    # Line 861
    addiu	$sp,$sp,-272
    sd	$s1,152($sp)
    # Line 864
    lw	$s1,4($a6)
    # Line 865
    sb	$a1,15($a0)
    lw	$at,0($a7)
    # Line 861
    move	$v0,$a1
    sd	$s2,160($sp)
    # Line 865
    beqz	$at,.L0f0e1284
    # Line 861
    move	$s2,$a0
    sd	$ra,224($sp)
    # Line 868
    la	$a1,sub_0f020000
    la	$t9,fprintf
    la	$a0,__iob
    addiu	$a1,$a1,14312
    jalr	$t9
    addiu	$a0,$a0,32
    # Line 869
    li	$v0,-1
    ld	$ra,224($sp)
    ld	$s1,152($sp)
    ld	$s2,160($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0f0e1284:
    la	$a4,gl_wstatep
    sd	$v0,128($sp)
    lw	$a4,0($a4)
    sd	$a6,136($sp)
    sd	$a2,112($sp)
    bnez	$a4,.L0f0e12b4
    sd	$a3,120($sp)
    # Line 872
    li	$v0,-1
    ld	$s1,152($sp)
    ld	$s2,160($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0f0e12b4:
    # Line 880
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    sd	$ra,224($sp)
    jalr	$t9
    move	$a1,$zero
    # Line 881
    la	$t9,gl_findEndOfQueue
    jalr	$t9
    nop
    sd	$v0,144($sp)
    # Line 883
    la	$t9,XInstallColormap
    ld	$a1,136($sp)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,52($a1)
    la	$a0,gl_wstatep
    # Line 884
    la	$t9,_GLsetwmcolormaps
    lw	$a0,0($a0)
    lw	$a1,24($s2)
    jalr	$t9
    lw	$a0,224($a0)
    # Line 885
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s1
    ld	$a2,120($sp)
    # Line 887
    ld	$a1,112($sp)
    # Line 886
    ld	$a3,136($sp)
    # Line 887
    la	$t9,sub_0f0e0000
    move	$a0,$s2
    # Line 886
    lw	$a3,12($a3)
    # Line 887
    addiu	$t9,$t9,3992
    bal gl_g_setpup
    # Line 886
    sb	$a3,17($s2)
    # Line 892
    la	$t9,gl_rightmouseinqueue
    jalr	$t9
    ld	$a0,144($sp)
    beqz	$v0,.L0f0e1384
    # Line 893
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,7332
    bal gl_g_setpup
    move	$a0,$s2
    la	$a0,gl_wstatep
    # Line 894
    la	$t9,_GLsetwmcolormaps
    lw	$a0,0($a0)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,224($a0)
    # Line 895
    li	$v0,-1
    ld	$ra,224($sp)
    ld	$s1,152($sp)
    ld	$s2,160($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0f0e1384:
    sd	$s6,192($sp)
    sd	$s0,200($sp)
    sd	$s5,208($sp)
    sd	$s8,216($sp)
    # Line 900
    move	$a0,$zero
    # Line 899
    sw	$s2,-20740($gp)
    # Line 900
    la	$t9,sub_0f0e0000
    # Line 897
    li	$a1,1
    la	$a2,_GLmenuIsUp
    # Line 900
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    # Line 897
    sw	$a1,0($a2)
    sd	$s2,104($sp)
    sd	$s4,168($sp)
    sd	$s3,176($sp)
    sd	$s7,184($sp)
    # Line 900
    lw	$s6,4($sp)
    la	$s5,sub_0f030000
    lw	$s8,0($sp)
    la	$s0,sub_0f0e0000
    addiu	$s5,$s5,3344
    b	.L0f0e13f0
    addiu	$s0,$s0,11216
.L0f0e13e0:
    # Line 910
    la	$t9,_GLgrabEverything
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,8
.L0f0e13f0:
    # Line 904
    move	$a0,$s1
.L0f0e13f4:
    addiu	$a1,$sp,8
    bal gl_g_setpup
    move	$t9,$s0
    # Line 905
    la	$t9,_GLupdatePointer
    bal _GLupdatePointer
    addiu	$a0,$sp,8
    # la	v1,sub_0f020000
    lw	$v0,8($sp)
    la	$v1,jtbl_0f023818
    sltiu	$a4,$v0,13
    sll	$v0,$v0,0x2
    beqz	$a4,.L0f0e13f0
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    la	$t9,sub_0f0e0000
.L0f0e1434:
    # Line 913
    la	$t9,_GLgrabEverything
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,8
    lw	$a5,60($sp)
    ld	$a4,128($sp)
    bne	$a4,$a5,.L0f0e13f4
    # Line 904
    move	$a0,$s1
    # Line 919
    la	$t9,sub_0f0e0000
    # Line 917
    li	$s1,-1
    # Line 915
    lw	$s0,-20740($gp)
    # Line 919
    addiu	$t9,$t9,-1448
    bal gl_mem_ntoh_wfmoutline_array
    # Line 915
    lw	$s0,40($s0)
    # Line 919
    move	$s2,$v0
    sd	$v0,144($sp)
    ld	$s4,168($sp)
    ld	$s7,184($sp)
    ld	$s6,192($sp)
    ld	$s5,208($sp)
    bnez	$s0,.L0f0e16ec
    ld	$s8,216($sp)
    # Line 928
    la	$t9,sub_0f0e0000
.L0f0e1490:
    ld	$a0,104($sp)
    ld	$s4,168($sp)
    addiu	$t9,$t9,7332
    bal gl_g_setpup
    ld	$s3,176($sp)
    beqz	$s0,.L0f0e14e8
    la	$ra,_GLmenuIsUp
    lw	$at,20($s0)
    beqz	$at,.L0f0e14e8
    la	$ra,_GLmenuIsUp
    # Line 929
    lw	$v1,8($s0)
    bnez	$v1,.L0f0e14e8
    la	$ra,_GLmenuIsUp
    ld	$a0,144($sp)
    # Line 930
    la	$t9,sub_0f0e0000
    lw	$a2,28($s0)
    ld	$a1,104($sp)
    addiu	$t9,$t9,-1276
    bal gl_mem_ntoh_wfmoutline_array
    lbu	$a1,18($a1)
    move	$s1,$v0
    la	$ra,_GLmenuIsUp
.L0f0e14e8:
    # Line 932
    la	$t9,sub_0f0e0000
    move	$a0,$s2
    # Line 931
    sw	$zero,0($ra)
    # Line 932
    addiu	$t9,$t9,-1164
    bal gl_mem_ntoh_wfmoutline_array
    ld	$s0,200($sp)
    la	$a0,gl_wstatep
    # Line 938
    la	$t9,_GLsetwmcolormaps
    lw	$a0,0($a0)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,224($a0)
    # Line 939
    move	$v0,$s1
    ld	$ra,224($sp)
    ld	$s1,152($sp)
    ld	$s2,160($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0f0e1530:
    # Line 946
    lw	$s2,-20740($gp)
    # Line 944
    move	$s3,$zero
    b	.L0f0e1558
    # Line 946
    lw	$s2,24($s2)
.L0f0e1540:
    # Line 954
    la	$t9,XCheckMaskEvent
.L0f0e1544:
    move	$a0,$s1
    addiu	$a2,$sp,8
    jalr	$t9
    li	$a1,8192
    beqz	$v0,.L0f0e15ac
.L0f0e1558:
    # Line 949
    lw	$a4,-20760($gp)
    # Line 946
    lw	$at,24($sp)
    bne	$at,$s2,.L0f0e1544
    # Line 954
    la	$t9,XCheckMaskEvent
    # Line 949
    sll	$a5,$a4,0x3
    # Line 952
    li	$s3,1
    # Line 951
    addiu	$a4,$a4,1
    # Line 950
    lw	$s8,44($sp)
    # Line 949
    lw	$s6,40($sp)
    addu	$a5,$a5,$s5
    # Line 950
    sw	$s8,4($a5)
    # Line 949
    sw	$s6,0($a5)
    # Line 951
    sra	$a5,$a4,0x1f
    xor	$v1,$a4,$a5
    sra	$a4,$a4,0x1f
    subu	$v1,$v1,$a5
    andi	$v1,$v1,0x3
    xor	$v1,$v1,$a4
    subu	$v1,$v1,$a4
    b	.L0f0e1540
    sw	$v1,-20760($gp)
.L0f0e15ac:
    # Line 954
    beqz	$s3,.L0f0e13f4
    # Line 904
    move	$a0,$s1
    la	$t9,sub_0f0e0000
    # Line 956
    move	$a0,$s6
    addiu	$t9,$t9,6600
    bal gl_g_setpup
    move	$a1,$s8
    b	.L0f0e13f4
    # Line 904
    move	$a0,$s1
.L0f0e15d0:
    # Line 970
    addiu	$a2,$sp,8
.L0f0e15d4:
    li	$a1,48
    move	$a0,$s1
    # Line 969
    lw	$s3,24($sp)
    # Line 970
    la	$t9,XCheckMaskEvent
    # Line 968
    lw	$s7,8($sp)
    # Line 967
    lw	$s2,44($sp)
    # Line 970
    jalr	$t9
    # Line 966
    lw	$s4,40($sp)
    # Line 970
    bnez	$v0,.L0f0e15d4
    addiu	$a2,$sp,8
    li	$at,7
    beq	$s7,$at,.L0f0e16ac
    # Line 973
    lw	$v1,-20748($gp)
    li	$a4,3
    beq	$v1,$a4,.L0f0e13f4
    # Line 904
    move	$a0,$s1
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,6368
    # Line 975
    bal gl_g_setpup
    lw	$a0,-20740($gp)
    b	.L0f0e13f4
    # Line 904
    move	$a0,$s1
.L0f0e162c:
    # Line 981
    ld	$a0,104($sp)
    # Line 980
    lw	$a1,24($sp)
    addiu	$t9,$t9,4444
    # Line 981
    bal gl_g_setpup
    # Line 980
    move	$s2,$a1
    # Line 981
    beqz	$v0,.L0f0e13f0
    move	$s7,$v0
    # Line 983
    lh	$s4,22($v0)
    b	.L0f0e1688
    # Line 984
    move	$s3,$zero
.L0f0e1654:
    # Line 986
    addu	$a2,$a2,$v0
    slt	$at,$s3,$a2
    beqz	$at,.L0f0e1668
    nop
    # Line 988
    move	$s3,$a2
.L0f0e1668:
    beqz	$a4,.L0f0e16cc
    # Line 991
    move	$a0,$s1
.L0f0e1670:
    la	$t9,XCheckWindowEvent
    move	$a1,$s2
    addiu	$a3,$sp,8
    jalr	$t9
    li	$a2,0x8000
    beqz	$v0,.L0f0e16a4
.L0f0e1688:
    # Line 984
    lw	$v0,32($sp)
    # Line 988
    lw	$a4,44($sp)
    # Line 984
    slt	$a5,$v0,$s4
    beqz	$a5,.L0f0e1654
    # Line 986
    lw	$a2,40($sp)
    b	.L0f0e1654
    move	$s4,$v0
.L0f0e16a4:
    b	.L0f0e13f4
    # Line 904
    move	$a0,$s1
.L0f0e16ac:
    la	$t9,sub_0f0e0000
    # Line 973
    move	$a0,$s3
    move	$a1,$s4
    addiu	$t9,$t9,5952
    bal gl_g_setpup
    move	$a2,$s2
    b	.L0f0e13f4
    # Line 904
    move	$a0,$s1
.L0f0e16cc:
    la	$t9,sub_0f0e0000
    # Line 990
    move	$a0,$s7
    move	$a1,$s4
    addiu	$t9,$t9,7480
    bal gl_g_setpup
    move	$a2,$s3
    b	.L0f0e1670
    # Line 991
    move	$a0,$s1
.L0f0e16ec:
    # Line 921
    la	$s3,sub_0f0e0000
    lw	$a1,64($s0)
    ld	$a0,144($sp)
    addiu	$s3,$s3,-1380
    bal gl_mem_ntoh_wfmoutline_array
    move	$t9,$s3
    lw	$at,60($s0)
    beqz	$at,.L0f0e1490
    # Line 928
    la	$t9,sub_0f0e0000
    # Line 924
    lw	$s4,0($s0)
    beqz	$s4,.L0f0e1490
    # Line 928
    la	$t9,sub_0f0e0000
    ld	$a0,144($sp)
.L0f0e1720:
    # Line 925
    lw	$a1,56($s4)
    bal gl_mem_ntoh_wfmoutline_array
    move	$t9,$s3
    # Line 924
    lw	$s4,48($s4)
    bnez	$s4,.L0f0e1720
    ld	$a0,144($sp)
    b	.L0f0e1490
    # Line 928
    la	$t9,sub_0f0e0000
.end popup_aMenu

# Function: enter_aMenu
# Declared: Line 1003 (Source lines: 1004-1047)
# Address: 0x0f0e1740 - 0x0f0e18e0 (Size: 416 bytes, Frame: 208)
.ent enter_aMenu
enter_aMenu:
    # Line 1004
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    # Line 1006
    lw	$a4,-20740($gp)
    # Line 1004
    move	$s1,$a0
    sd	$a1,8($sp)
    # Line 1006
    lw	$a4,44($a4)
    sd	$a2,0($sp)
    sd	$s0,24($sp)
    beqz	$a4,.L0f0e1770
    move	$s0,$a4
    lw	$at,24($s0)
    beq	$at,$s1,.L0f0e1858
.L0f0e1770:
    # Line 1015
    lw	$v0,-20748($gp)
    li	$v1,3
    bne	$v0,$v1,.L0f0e1798
    # Line 1020
    ld	$s0,24($sp)
    # Line 1015
    lw	$a3,24($a4)
    beq	$a3,$s1,.L0f0e179c
    # Line 1021
    la	$t9,sub_0f0e0000
    # Line 1020
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e1798:
    # Line 1021
    la	$t9,sub_0f0e0000
.L0f0e179c:
    sd	$ra,32($sp)
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    move	$a0,$zero
    # Line 1022
    lw	$a0,-20740($gp)
    lw	$s0,48($a0)
    beqz	$s0,.L0f0e17c8
    nop
    lw	$at,24($s0)
    beq	$at,$s1,.L0f0e18a0
    # Line 1025
    la	$t9,sub_0f0e0000
.L0f0e17c8:
    # Line 1034
    beqz	$a0,.L0f0e17e8
    move	$s0,$a0
    lw	$v0,24($s0)
.L0f0e17d4:
    beq	$v0,$s1,.L0f0e180c
    nop
    # Line 1044
    lw	$s0,48($s0)
    bnezl	$s0,.L0f0e17d4
    # Line 1034
    lw	$v0,24($s0)
.L0f0e17e8:
    # Line 1046
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,6368
    bal gl_g_setpup
    nop
    ld	$ra,32($sp)
    # Line 1047
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e180c:
    # Line 1034
    beq	$s0,$a0,.L0f0e1830
    la	$s1,sub_0f0e0000
    addiu	$s1,$s1,6368
.L0f0e1818:
    # Line 1038
    bal gl_g_setpup
    move	$t9,$s1
    # Line 1039
    lw	$a0,-20740($gp)
    lw	$a0,48($a0)
    bne	$s0,$a0,.L0f0e1818
    sw	$a0,-20740($gp)
.L0f0e1830:
    # Line 1041
    la	$t9,sub_0f0e0000
    ld	$a0,8($sp)
    addiu	$t9,$t9,6600
    bal gl_g_setpup
    ld	$a1,0($sp)
    ld	$ra,32($sp)
    # Line 1042
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e1858:
    # Line 1009
    la	$t9,sub_0f0e0000
    sd	$ra,32($sp)
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    move	$a0,$zero
    ld	$a1,0($sp)
    # Line 1010
    lw	$ra,-20740($gp)
    # Line 1014
    la	$t9,sub_0f0e0000
    ld	$a0,8($sp)
    # Line 1010
    sw	$ra,48($s0)
    # Line 1014
    addiu	$t9,$t9,6600
    bal gl_g_setpup
    # Line 1011
    sw	$s0,-20740($gp)
    ld	$ra,32($sp)
    # Line 1015
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e18a0:
    # Line 1025
    addiu	$t9,$t9,6368
    bal gl_g_setpup
    nop
    ld	$a1,0($sp)
    # Line 1026
    lw	$ra,-20740($gp)
    # Line 1030
    la	$t9,sub_0f0e0000
    ld	$a0,8($sp)
    # Line 1026
    sw	$zero,48($ra)
    # Line 1030
    addiu	$t9,$t9,6600
    bal gl_g_setpup
    # Line 1027
    sw	$s0,-20740($gp)
    ld	$ra,32($sp)
    # Line 1031
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end enter_aMenu

# Function: leaveItem_aMenu
# Declared: Line 1049 (Source lines: 1050-1060)
# Address: 0x0f0e18e0 - 0x0f0e1950 (Size: 112 bytes, Frame: 32)
.ent leaveItem_aMenu
leaveItem_aMenu:
    # Line 1050
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 1051
    la	$t9,sub_0f0e0000
    # Line 1050
    move	$s0,$a0
    sd	$ra,0($sp)
    # Line 1051
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    move	$a0,$zero
    lw	$a0,40($s0)
    beqz	$a0,.L0f0e1944
    ld	$ra,0($sp)
    # Line 1053
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,9508
    bal gl_g_setpup
    nop
    # Line 1054
    lw	$a0,44($s0)
    sw	$zero,40($s0)
    beqz	$a0,.L0f0e1944
    ld	$ra,0($sp)
    # Line 1056
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,7332
    bal gl_g_setpup
    nop
    # Line 1057
    sw	$zero,44($s0)
    ld	$ra,0($sp)
.L0f0e1944:
    # Line 1060
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end leaveItem_aMenu

# Function: HistoryAllows
# Declared: Line 1067 (Source lines: 1068-1076)
# Address: 0x0f0e1950 - 0x0f0e19c8 (Size: 120 bytes, Frame: 0)
.ent HistoryAllows
HistoryAllows:
    # Line 1074
    lw	$v1,-20760($gp)
    addiu	$a1,$v1,3
    sra	$a0,$a1,0x1f
    xor	$v0,$a1,$a0
    subu	$v0,$v0,$a0
    # Line 1068
    la	$a0,sub_0f030000
    # Line 1074
    sll	$v1,$v1,0x3
    sra	$a1,$a1,0x1f
    # Line 1068
    addiu	$a0,$a0,3344
    # Line 1074
    addu	$v1,$v1,$a0
    lw	$at,0($v1)
    andi	$v0,$v0,0x3
    xor	$v0,$v0,$a1
    subu	$v0,$v0,$a1
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a0
    lw	$a2,0($v0)
    # Line 1075
    lw	$v1,4($v1)
    lw	$v0,4($v0)
    # Line 1074
    subu	$a2,$a2,$at
    # Line 1075
    blez	$a2,.L0f0e19bc
    subu	$v0,$v0,$v1
    blez	$v0,.L0f0e19bc
    # Line 1076
    addu	$a1,$a2,$a2
    slt	$a1,$v0,$a1
    bnez	$a1,.L0f0e19c0
    li	$v0,1
.L0f0e19bc:
    move	$v0,$zero
.L0f0e19c0:
    jr	$ra
    nop
.end HistoryAllows

# Function: moveTo
# Declared: Line 1079 (Source lines: 1080-1106)
# Address: 0x0f0e19c8 - 0x0f0e1b70 (Size: 424 bytes, Frame: 48)
.ent moveTo
moveTo:
    # Line 1081
    li	$a4,3
    # Line 1080
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a0
    # Line 1081
    lw	$a3,-20748($gp)
    lw	$a5,-20740($gp)
    sd	$s0,8($sp)
    beq	$a3,$a4,.L0f0e1b24
    lw	$s0,4($a5)
    # Line 1083
    beqz	$s0,.L0f0e1aa0
    # Line 1100
    li	$at,2
    b	.L0f0e1a0c
    # Line 1083
    lh	$a0,36($s0)
    # Line 1100
    lw	$s0,4($s0)
.L0f0e1a00:
    beqz	$s0,.L0f0e1aa0
    li	$at,2
    # Line 1083
    lh	$a0,36($s0)
.L0f0e1a0c:
    slt	$at,$s1,$a0
    bnezl	$at,.L0f0e1a00
    # Line 1100
    lw	$s0,4($s0)
    # Line 1083
    lh	$v0,40($s0)
    addu	$v0,$v0,$a0
    slt	$v0,$s1,$v0
    beqzl	$v0,.L0f0e1a00
    # Line 1100
    lw	$s0,4($s0)
    # Line 1086
    lh	$a0,38($s0)
    slt	$v1,$a1,$a0
    bnezl	$v1,.L0f0e1a00
    # Line 1100
    lw	$s0,4($s0)
    # Line 1086
    lh	$a2,42($s0)
    addu	$a2,$a2,$a0
    slt	$a2,$a1,$a2
    beqzl	$a2,.L0f0e1a00
    # Line 1100
    lw	$s0,4($s0)
    # Line 1086
    lw	$at,40($a5)
    beq	$at,$s0,.L0f0e1b14
    li	$v0,2
    bne	$a3,$v0,.L0f0e1ad4
    sd	$ra,16($sp)
    # Line 1089
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,6480
    bal gl_g_setpup
    nop
    beqz	$v0,.L0f0e1ad4
    # Line 1090
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    li	$a0,3
    ld	$ra,16($sp)
    # Line 1091
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 1100
    li	$at,2
.L0f0e1aa0:
    beq	$a3,$at,.L0f0e1b34
    # Line 1102
    la	$t9,sub_0f0e0000
.L0f0e1aa8:
    beq	$a3,$a4,.L0f0e1ac4
    # Line 1105
    la	$t9,sub_0f0e0000
    sd	$ra,16($sp)
    addiu	$t9,$t9,6368
    bal gl_g_setpup
    lw	$a0,-20740($gp)
    ld	$ra,16($sp)
.L0f0e1ac4:
    # Line 1106
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e1ad4:
    # Line 1093
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    move	$a0,$zero
    # Line 1094
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,6368
    bal gl_g_setpup
    lw	$a0,-20740($gp)
    # Line 1095
    la	$t9,sub_0f0e0000
    move	$a1,$s0
    addiu	$t9,$t9,7024
    bal gl_g_setpup
    lw	$a0,-20740($gp)
    # Line 1096
    lw	$ra,-20740($gp)
    sw	$s1,32($ra)
    ld	$ra,16($sp)
.L0f0e1b14:
    # Line 1098
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e1b24:
    # Line 1083
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e1b34:
    sd	$ra,16($sp)
    # Line 1102
    addiu	$t9,$t9,6480
    bal gl_g_setpup
    nop
    li	$a4,3
    beqz	$v0,.L0f0e1b68
    ld	$ra,16($sp)
    # Line 1103
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    li	$a0,3
    li	$a4,3
    ld	$ra,16($sp)
.L0f0e1b68:
    b	.L0f0e1aa8
    lw	$a3,-20748($gp)
.end moveTo

# Function: enterItem_aMenu
# Declared: Line 1108 (Source lines: 1109-1118)
# Address: 0x0f0e1b70 - 0x0f0e1be8 (Size: 120 bytes, Frame: 48)
.ent enterItem_aMenu
enterItem_aMenu:
    # Line 1109
    move	$at,$a0
    addiu	$sp,$sp,-48
    sd	$s3,16($sp)
    move	$s3,$a1
    sd	$a0,0($sp)
    # Line 1112
    move	$a0,$a1
    sd	$s0,24($sp)
    la	$t9,sub_0f0e0000
    # Line 1110
    lw	$s0,8($a1)
    sd	$ra,8($sp)
    # Line 1112
    addiu	$t9,$t9,9460
    bal gl_g_setpup
    # Line 1111
    sw	$a1,40($at)
    # Line 1112
    lw	$at,20($s3)
    ld	$s3,16($sp)
    beqz	$at,.L0f0e1bbc
    ld	$ra,8($sp)
    bnez	$s0,.L0f0e1bc8
    ld	$s3,16($sp)
.L0f0e1bbc:
    # Line 1118
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e1bc8:
    # Line 1116
    la	$t9,sub_0f0e0000
    li	$a0,1
    # Line 1115
    ld	$v0,0($sp)
    # Line 1116
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    # Line 1115
    sw	$s0,44($v0)
    b	.L0f0e1bbc
    ld	$ra,8($sp)
.end enterItem_aMenu

# Function: postSubMenu
# Declared: Line 1120 (Source lines: 1121-1137)
# Address: 0x0f0e1be8 - 0x0f0e1ca4 (Size: 188 bytes, Frame: 48)
.ent postSubMenu
postSubMenu:
    # Line 1121
    addiu	$sp,$sp,-48
    # Line 1128
    addiu	$a7,$sp,8
    addiu	$a6,$sp,4
    addiu	$a5,$sp,0
    sd	$s8,24($sp)
    # Line 1122
    lw	$s8,-20740($gp)
    sd	$ra,16($sp)
    # Line 1128
    la	$t9,XTranslateCoordinates
    # Line 1123
    lw	$t0,40($s8)
    # Line 1128
    lw	$a1,24($s8)
    # Line 1124
    lw	$t1,0($s8)
    # Line 1128
    lh	$a4,38($t0)
    lh	$a3,36($t0)
    lh	$t0,40($t0)
    addiu	$a4,$a4,-3
    # Line 1124
    lw	$a2,4($t1)
    # Line 1128
    addu	$a3,$a3,$t0
    addiu	$a3,$a3,-2
    lw	$t1,8($t1)
    sd	$a2,32($sp)
    move	$a0,$a2
    lw	$a2,140($a2)
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x4
    addu	$a2,$a2,$t0
    jalr	$t9
    lw	$a2,8($a2)
    # Line 1133
    lw	$ra,44($s8)
    # Line 1134
    la	$t9,sub_0f0e0000
    # Line 1133
    sb	$zero,17($ra)
    # Line 1134
    addiu	$t9,$t9,3992
    lw	$a2,4($sp)
    lw	$a1,0($sp)
    bal gl_g_setpup
    lw	$a0,44($s8)
    # Line 1135
    la	$t9,XFlush
    ld	$a0,32($sp)
    jalr	$t9
    ld	$s8,24($sp)
    # Line 1136
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    li	$a0,2
    ld	$ra,16($sp)
    # Line 1137
    jr	$ra
    addiu	$sp,$sp,48
.end postSubMenu

# Function: cancel_aMenu
# Declared: Line 1139 (Source lines: 1140-1152)
# Address: 0x0f0e1ca4 - 0x0f0e1d38 (Size: 148 bytes, Frame: 48)
.ent cancel_aMenu
cancel_aMenu:
.L0f0e1ca4:
    # Line 1143
    lw	$a1,28($a0)
    # Line 1140
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    sd	$s8,0($sp)
    # Line 1141
    lw	$s8,0($a0)
    # Line 1140
    move	$s0,$a0
    # Line 1143
    la	$t9,XUnmapWindow
    # Line 1141
    lw	$s8,4($s8)
    sd	$ra,8($sp)
    # Line 1143
    jalr	$t9
    move	$a0,$s8
    # Line 1144
    la	$t9,XUnmapWindow
    move	$a0,$s8
    jalr	$t9
    lw	$a1,24($s0)
    # Line 1145
    la	$t9,sub_0f0e0000
    move	$a0,$zero
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    ld	$s8,0($sp)
    # Line 1146
    lw	$a0,36($s0)
    beqz	$a0,.L0f0e1d10
    sb	$zero,14($s0)
    # Line 1148
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,7332
    bal .L0f0e1ca4
    nop
.L0f0e1d10:
    # Line 1150
    la	$t9,sub_0f0e0000
    move	$a0,$s0
    addiu	$t9,$t9,6368
    bal gl_g_setpup
    # Line 1149
    sb	$zero,12($s0)
    ld	$ra,8($sp)
    # Line 1151
    sw	$zero,48($s0)
    # Line 1152
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end cancel_aMenu

# Function: render_aMenu
# Declared: Line 1154 (Source lines: 1155-1168)
# Address: 0x0f0e1d38 - 0x0f0e1e20 (Size: 232 bytes, Frame: 192)
.ent render_aMenu
render_aMenu:
    # Line 1155
    move	$t0,$a0
    # Line 1156
    lw	$t1,0($a0)
    # Line 1155
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s2,0($sp)
    # Line 1157
    lbu	$at,14($a0)
    # Line 1155
    move	$s2,$a2
    sd	$s0,16($sp)
    # Line 1157
    beqz	$at,.L0f0e1e0c
    lw	$s0,4($a0)
    # Line 1159
    lbu	$v0,13($t0)
    beqz	$v0,.L0f0e1e00
    # Line 1160
    addiu	$a2,$t1,72
    sd	$ra,24($sp)
.L0f0e1d74:
    lh	$a6,22($t0)
    lh	$a5,20($t0)
    move	$a4,$zero
    la	$t9,sub_0f0e0000
    move	$a3,$zero
    lw	$a1,24($t0)
    addiu	$t9,$t9,10224
    bal gl_g_setpup
    lw	$a0,4($t1)
    beqz	$s0,.L0f0e1dec
    ld	$ra,24($sp)
    b	.L0f0e1db8
    lh	$a0,38($s0)
.L0f0e1da8:
    # Line 1166
    lw	$s0,4($s0)
.L0f0e1dac:
    beqz	$s0,.L0f0e1dec
    ld	$ra,24($sp)
    # Line 1160
    lh	$a0,38($s0)
.L0f0e1db8:
    lh	$at,42($s0)
    addu	$at,$at,$a0
    slt	$at,$at,$s1
    bnez	$at,.L0f0e1da8
    slt	$v0,$a0,$s2
    beqzl	$v0,.L0f0e1dac
    # Line 1166
    lw	$s0,4($s0)
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,9632
    # Line 1165
    bal gl_g_setpup
    move	$a0,$s0
    b	.L0f0e1dac
    # Line 1166
    lw	$s0,4($s0)
.L0f0e1dec:
    # Line 1168
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0e1e00:
    # Line 1160
    addiu	$a2,$t1,88
    b	.L0f0e1d74
    sd	$ra,24($sp)
.L0f0e1e0c:
    # Line 1159
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end render_aMenu

# Function: appendItem_aMenu
# Declared: Line 1170 (Source lines: 1171-1177)
# Address: 0x0f0e1e20 - 0x0f0e1e3c (Size: 28 bytes, Frame: 0)
.ent appendItem_aMenu
appendItem_aMenu:
    # Line 1171
    lw	$at,4($a0)
    beqzl	$at,.L0f0e1e34
    # Line 1175
    sw	$a1,4($a0)
    # Line 1173
    lw	$v0,8($a0)
    sw	$a1,4($v0)
.L0f0e1e34:
    # Line 1177
    jr	$ra
    # Line 1176
    sw	$a1,8($a0)
.end appendItem_aMenu

# Function: layout_aMenu
# Declared: Line 1179 (Source lines: 1180-1235)
# Address: 0x0f0e1e3c - 0x0f0e2090 (Size: 596 bytes, Frame: 240)
.ent layout_aMenu
layout_aMenu:
.L0f0e1e3c:
    # Line 1180
    addiu	$sp,$sp,-112
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$s2,40($sp)
    # Line 1183
    move	$s2,$zero
    sd	$zero,0($sp)
    sd	$s0,24($sp)
    # Line 1186
    lw	$s0,4($a0)
    sd	$s6,32($sp)
    # Line 1187
    lbu	$at,16($a0)
    # Line 1185
    move	$s6,$zero
    sd	$s1,16($sp)
    # Line 1187
    beqz	$at,.L0f0e1e90
    # Line 1184
    li	$s1,4
    # Line 1189
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$s6,32($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e1e90:
    sd	$s7,48($sp)
    # Line 1190
    li	$v0,1
    beqz	$s0,.L0f0e1fac
    sb	$v0,16($s8)
    la	$s7,sub_0f0e0000
    sd	$s3,72($sp)
    sd	$ra,64($sp)
    sd	$s4,56($sp)
    sd	$s5,80($sp)
    la	$s5,sub_0f0e0000
    addiu	$s7,$s7,9968
    b	.L0f0e1f14
    addiu	$s5,$s5,9980
.L0f0e1ec4:
    # Line 1206
    beqz	$at,.L0f0e1ed4
    # Line 1208
    move	$a0,$s0
    # Line 1207
    move	$s2,$s5
    # Line 1208
    move	$a0,$s0
.L0f0e1ed4:
    li	$a1,4
    la	$t9,sub_0f0e0000
    move	$a2,$s1
    la	$s5,sub_0f0e0000
    addiu	$t9,$t9,10000
    bal gl_g_setpup
    addiu	$s5,$s5,9980
    # Line 1209
    lw	$at,48($s0)
    addu	$s1,$s3,$s1
    beqz	$at,.L0f0e1f0c
    # Line 1212
    move	$s0,$s4
    # Line 1209
    beqz	$s4,.L0f0e1f0c
    nop
    # Line 1211
    addiu	$s1,$s1,2
.L0f0e1f0c:
    # Line 1212
    beqzl	$s4,.L0f0e1f9c
    ld	$s5,80($sp)
.L0f0e1f14:
    # Line 1193
    lw	$s4,4($s0)
    # Line 1194
    move	$a0,$s0
    bal gl_g_setpup
    move	$t9,$s5
    # Line 1196
    lw	$v0,8($s0)
    lh	$s3,42($s0)
    # Line 1198
    li	$a3,15
    # Line 1196
    beqz	$v0,.L0f0e1f44
    # Line 1195
    lh	$s5,40($s0)
    # Line 1198
    slti	$v1,$s3,8
    bnez	$v1,.L0f0e1f7c
    sd	$a3,0($sp)
.L0f0e1f44:
    # Line 1201
    lbu	$at,12($s0)
.L0f0e1f48:
    li	$v0,1
    beq	$at,$v0,.L0f0e1f74
    nop
.L0f0e1f54:
    # Line 1205
    lw	$v1,48($s0)
    slti	$a3,$s3,11
    beqz	$v1,.L0f0e1ec4
    # Line 1206
    slt	$at,$s2,$s5
    # Line 1205
    beqz	$a3,.L0f0e1ec4
    nop
    b	.L0f0e1ec4
    # Line 1206
    li	$s3,11
.L0f0e1f74:
    b	.L0f0e1f54
    # Line 1205
    li	$s6,18
.L0f0e1f7c:
    # Line 1201
    li	$a2,8
    move	$a1,$s5
    move	$a0,$s0
    # Line 1200
    li	$s3,8
    # Line 1201
    bal gl_g_setpup
    move	$t9,$s7
    b	.L0f0e1f48
    lbu	$at,12($s0)
.L0f0e1f9c:
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    b	.L0f0e1fb4
    ld	$s3,72($sp)
.L0f0e1fac:
    # Line 1212
    la	$s7,sub_0f0e0000
    addiu	$s7,$s7,9968
.L0f0e1fb4:
    # Line 1214
    ld	$at,0($sp)
    # Line 1216
    lw	$a0,36($s8)
    # Line 1214
    addu	$at,$s6,$at
    addu	$s2,$at,$s2
    addiu	$s2,$s2,8
    dsll32	$s2,$s2,0x10
    dsra32	$s2,$s2,0x10
    # Line 1216
    addiu	$at,$s2,8
    beqz	$a0,.L0f0e201c
    sh	$at,20($s8)
    # Line 1219
    la	$t9,sub_0f0e0000
    sd	$ra,64($sp)
    addiu	$t9,$t9,7740
    bal .L0f0e1e3c
    nop
    # Line 1220
    lw	$a0,36($s8)
    lh	$a1,20($s8)
    lh	$a2,20($a0)
    slt	$at,$a2,$a1
    bnez	$at,.L0f0e2078
    ld	$ra,64($sp)
    # Line 1223
    sh	$a2,20($s8)
    # Line 1222
    subu	$at,$a2,$a1
    # Line 1224
    addu	$s2,$s2,$at
    dsll32	$s2,$s2,0x10
    dsra32	$s2,$s2,0x10
.L0f0e201c:
    # Line 1231
    lw	$s0,4($s8)
    # Line 1228
    addiu	$v0,$s1,4
    # Line 1231
    beqz	$s0,.L0f0e2058
    # Line 1228
    sh	$v0,22($s8)
    sd	$ra,64($sp)
    # Line 1233
    lh	$a2,42($s0)
.L0f0e2034:
    move	$a1,$s2
    move	$a0,$s0
    # Line 1232
    sw	$s6,32($s0)
    # Line 1233
    bal gl_g_setpup
    move	$t9,$s7
    # Line 1231
    lw	$s0,4($s0)
    bnezl	$s0,.L0f0e2034
    # Line 1233
    lh	$a2,42($s0)
    ld	$ra,64($sp)
.L0f0e2058:
    # Line 1235
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$s6,32($sp)
    ld	$s7,48($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e2078:
    # Line 1226
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,8336
    bal gl_g_setpup
    lh	$a2,22($a0)
    b	.L0f0e201c
    ld	$ra,64($sp)
.end layout_aMenu

# Function: resize_aMenu
# Declared: Line 1237 (Source lines: 1239-1241)
# Address: 0x0f0e2090 - 0x0f0e209c (Size: 12 bytes, Frame: 0)
.ent resize_aMenu
resize_aMenu:
    # Line 1240
    sh	$a2,22($a0)
    # Line 1241
    jr	$ra
    # Line 1239
    sh	$a1,20($a0)
.end resize_aMenu

# Function: findItemNo_aMenu
# Declared: Line 1243 (Source lines: 1247-1250)
# Address: 0x0f0e209c - 0x0f0e20d0 (Size: 52 bytes, Frame: 0)
.ent findItemNo_aMenu
findItemNo_aMenu:
    # Line 1247
    lw	$v0,4($a0)
    beqz	$v0,.L0f0e20c0
    nop
    lh	$at,24($v0)
.L0f0e20ac:
    beq	$at,$a1,.L0f0e20c8
    nop
    lw	$v0,4($v0)
    bnezl	$v0,.L0f0e20ac
    lh	$at,24($v0)
.L0f0e20c0:
    # Line 1250
    jr	$ra
    move	$v0,$zero
.L0f0e20c8:
    # Line 1249
    jr	$ra
    nop
.end findItemNo_aMenu

# Function: drawArrow
# Declared: Line 1255 (Source lines: 1257-1269)
# Address: 0x0f0e20d0 - 0x0f0e2188 (Size: 184 bytes, Frame: 128)
.ent drawArrow
drawArrow:
    # Line 1261
    addu	$v0,$a4,$a6
    # Line 1267
    move	$a6,$zero
    # Line 1257
    addiu	$sp,$sp,-128
    sd	$s8,32($sp)
    move	$s8,$a0
    sd	$a1,48($sp)
    # Line 1265
    sh	$a4,12($sp)
    # Line 1259
    sh	$a4,0($sp)
    sh	$a4,16($sp)
    # Line 1267
    li	$a4,4
    sd	$a3,40($sp)
    addiu	$a3,$sp,0
    sd	$ra,24($sp)
    # Line 1260
    sh	$a5,2($sp)
    sh	$a5,18($sp)
    # Line 1266
    addu	$v1,$a5,$a7
    # Line 1261
    addiu	$v0,$v0,-1
    # Line 1266
    addiu	$v1,$v1,-1
    sh	$v1,14($sp)
    # Line 1263
    sh	$v0,8($sp)
    # Line 1261
    sh	$v0,4($sp)
    # Line 1267
    la	$t9,XFillPolygon
    # Line 1262
    srl	$at,$a7,0x1f
    addu	$at,$at,$a7
    sra	$at,$at,0x1
    addu	$at,$at,$a5
    # Line 1267
    li	$a5,2
    # Line 1262
    addiu	$at,$at,-1
    sh	$at,6($sp)
    # Line 1264
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    addiu	$at,$at,1
    # Line 1267
    jalr	$t9
    # Line 1264
    sh	$at,10($sp)
    # Line 1268
    move	$a0,$s8
    ld	$a1,48($sp)
    ld	$a2,40($sp)
    la	$t9,XDrawLines
    move	$a5,$zero
    li	$a4,5
    jalr	$t9
    addiu	$a3,$sp,0
    ld	$ra,24($sp)
    # Line 1269
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end drawArrow

# Function: create_aMenuItem
# Declared: Line 1273 (Source lines: 1274-1301)
# Address: 0x0f0e2188 - 0x0f0e22d0 (Size: 328 bytes, Frame: 208)
.ent create_aMenuItem
create_aMenuItem:
    # Line 1274
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    sd	$s7,40($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s5,24($sp)
    move	$s5,$a1
    # Line 1275
    addiu	$a1,$gp,-18800
    sd	$s2,8($sp)
    la	$t9,gl_malloc
    # Line 1274
    move	$s2,$a0
    sd	$ra,0($sp)
    # Line 1275
    jalr	$t9
    li	$a0,68
    move	$s7,$v0
    move	$s1,$v0
    # Line 1277
    la	$t9,sub_0f0e0000
    move	$a1,$v0
    move	$a0,$s2
    addiu	$t9,$t9,7712
    bal gl_g_setpup
    # Line 1276
    sw	$s2,0($v0)
    # Line 1278
    sw	$zero,4($s7)
    # Line 1279
    sb	$zero,12($s7)
    # Line 1282
    sw	$zero,16($s7)
    # Line 1283
    sw	$zero,32($s7)
    # Line 1284
    sw	$zero,8($s7)
    # Line 1280
    li	$ra,1
    sw	$ra,20($s7)
    # Line 1281
    sb	$ra,13($s7)
    # Line 1285
    sh	$s5,24($s1)
    sw	$s5,28($s1)
    ld	$s5,24($sp)
    # Line 1286
    sw	$ra,60($s1)
    bnez	$s0,.L0f0e2250
    ld	$ra,0($sp)
    # Line 1298
    li	$at,3
    ld	$s7,40($sp)
    # Line 1299
    sw	$zero,20($s1)
    # Line 1297
    sh	$zero,44($s1)
    sh	$zero,40($s1)
    # Line 1296
    sw	$zero,48($s1)
    ld	$s0,16($sp)
    ld	$s2,8($sp)
    # Line 1298
    sh	$at,46($s1)
    sh	$at,42($s1)
.L0f0e2240:
    # Line 1301
    move	$v0,$s1
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e2250:
    # Line 1288
    la	$t9,_GLstrdup
    move	$a0,$s0
    ld	$s7,40($sp)
    jalr	$t9
    ld	$s5,24($sp)
    # Line 1289
    la	$t9,strlen
    move	$a0,$s0
    jalr	$t9
    # Line 1288
    sw	$v0,48($s1)
    # Line 1289
    move	$a2,$v0
    # Line 1290
    la	$t9,sub_0f0e0000
    move	$a1,$s0
    # Line 1289
    sw	$v0,52($s1)
    # Line 1290
    addiu	$t9,$t9,-676
    bal gl_mem_ntoh_wfmoutline_array
    lw	$a0,52($s2)
    sh	$v0,44($s1)
    sh	$v0,40($s1)
    # Line 1292
    lw	$at,52($s2)
    lw	$at,0($at)
    lw	$ra,72($at)
    lw	$at,76($at)
    ld	$s0,16($sp)
    ld	$s2,8($sp)
    addu	$ra,$ra,$at
    addiu	$ra,$ra,4
    dsll32	$ra,$ra,0x10
    dsra32	$ra,$ra,0x10
    sh	$ra,46($s1)
    sh	$ra,42($s1)
    b	.L0f0e2240
    ld	$ra,0($sp)
.end create_aMenuItem

# Function: destroy_aMenuItem
# Declared: Line 1304 (Source lines: 1305-1310)
# Address: 0x0f0e22d0 - 0x0f0e2344 (Size: 116 bytes, Frame: 32)
.ent destroy_aMenuItem
destroy_aMenuItem:
.L0f0e22d0:
    # Line 1305
    lw	$a2,4($a0)
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$a2,.L0f0e22fc
    move	$s0,$a0
    # Line 1306
    la	$t9,sub_0f0e0000
    sd	$ra,8($sp)
    addiu	$t9,$t9,8912
    bal .L0f0e22d0
    move	$a0,$a2
    ld	$ra,8($sp)
.L0f0e22fc:
    lw	$a0,48($s0)
    beqz	$a0,.L0f0e2314
    sd	$ra,8($sp)
    # Line 1307
    la	$t9,gl_free
    jalr	$t9
    addiu	$a1,$gp,-18800
.L0f0e2314:
    # Line 1308
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    li	$a1,68
    # Line 1309
    la	$t9,gl_free
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$gp,-18800
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 1310
    jr	$ra
    addiu	$sp,$sp,32
.end destroy_aMenuItem

# Function: setEnable_aMenuItem
# Declared: Line 1312 (Source lines: 1314-1316)
# Address: 0x0f0e2344 - 0x0f0e2354 (Size: 16 bytes, Frame: 0)
.ent setEnable_aMenuItem
setEnable_aMenuItem:
    # Line 1315
    sw	$a1,20($a0)
    # Line 1314
    sltu	$at,$zero,$a1
    # Line 1316
    jr	$ra
    # Line 1314
    sb	$at,13($a0)
.end setEnable_aMenuItem

# Function: setCheck_aMenuItem
# Declared: Line 1318 (Source lines: 1320-1323)
# Address: 0x0f0e2354 - 0x0f0e236c (Size: 24 bytes, Frame: 0)
.ent setCheck_aMenuItem
setCheck_aMenuItem:
    # Line 1321
    sw	$a1,16($a0)
    # Line 1320
    sltu	$v0,$zero,$a1
    # Line 1322
    lw	$at,0($a0)
    # Line 1320
    sb	$v0,12($a0)
    # Line 1323
    jr	$ra
    # Line 1322
    sb	$zero,16($at)
.end setCheck_aMenuItem

# Function: renderBackground_aMenuItem
# Declared: Line 1325 (Source lines: 1326-1351)
# Address: 0x0f0e236c - 0x0f0e24f4 (Size: 392 bytes, Frame: 208)
.ent renderBackground_aMenuItem
renderBackground_aMenuItem:
    # Line 1329
    li	$v0,2
    # Line 1326
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    sd	$s1,48($sp)
    # Line 1327
    lw	$s1,0($a0)
    # Line 1326
    move	$s0,$a0
    sd	$s2,8($sp)
    # Line 1327
    lw	$s2,0($s1)
    # Line 1329
    lbu	$at,13($a0)
    lw	$s1,24($s1)
    sd	$s2,0($sp)
    beq	$at,$v0,.L0f0e2488
    # Line 1328
    lw	$s2,4($s2)
.L0f0e23a0:
    # Line 1332
    lw	$at,8($s0)
    beqz	$at,.L0f0e2450
    ld	$a2,0($sp)
    # Line 1338
    lh	$at,42($s0)
    # Line 1336
    lh	$a6,40($s0)
    lh	$v1,36($s0)
    # Line 1338
    lbu	$v0,13($s0)
    addiu	$at,$at,-8
    # Line 1336
    addu	$v1,$v1,$a6
    # Line 1338
    srl	$a6,$at,0x1f
    # Line 1336
    addiu	$v1,$v1,-12
    sd	$v1,32($sp)
    # Line 1338
    lh	$v1,38($s0)
    addu	$a6,$a6,$at
    sra	$a6,$a6,0x1
    addu	$v1,$v1,$a6
    beqz	$v0,.L0f0e2470
    sd	$v1,16($sp)
    # Line 1343
    lw	$a6,16($a2)
    sd	$ra,56($sp)
    lw	$a2,36($a2)
    sd	$a6,24($sp)
.L0f0e23f8:
    # Line 1344
    move	$a0,$s2
    move	$a1,$s1
    ld	$a3,24($sp)
    ld	$a4,32($sp)
    la	$t9,sub_0f0e0000
    ld	$a5,16($sp)
    li	$a7,8
    addiu	$t9,$t9,8400
    bal gl_g_setpup
    li	$a6,8
    # Line 1346
    move	$a0,$s2
    move	$a1,$s1
    ld	$a2,24($sp)
    ld	$a5,32($sp)
    la	$t9,XDrawLine
    ld	$a4,16($sp)
    move	$a3,$a5
    addiu	$a5,$a5,7
    addiu	$a6,$a4,5
    jalr	$t9
    addiu	$a4,$a4,8
    ld	$ra,56($sp)
.L0f0e2450:
    lbu	$a6,12($s0)
    li	$at,1
    beq	$a6,$at,.L0f0e24c4
    ld	$s2,8($sp)
.L0f0e2460:
    # Line 1351
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e2470:
    ld	$a2,0($sp)
    sd	$ra,56($sp)
    # Line 1341
    lw	$a6,20($a2)
    lw	$a2,32($a2)
    b	.L0f0e23f8
    sd	$a6,24($sp)
.L0f0e2488:
    # Line 1332
    move	$a0,$s2
    move	$a1,$s1
    lh	$a7,42($s0)
    lh	$a6,40($s0)
    lh	$a5,38($s0)
    lh	$a4,36($s0)
    ld	$a2,0($sp)
    la	$t9,sub_0f0e0000
    sd	$ra,56($sp)
    lw	$a3,36($a2)
    addiu	$t9,$t9,10352
    bal gl_g_setpup
    addiu	$a2,$a2,104
    b	.L0f0e23a0
    ld	$ra,56($sp)
.L0f0e24c4:
    ld	$a0,0($sp)
    # Line 1350
    move	$a1,$s1
    lh	$a5,42($s0)
    lh	$a4,38($s0)
    la	$t9,sub_0f0e0000
    lh	$a3,36($s0)
    sd	$ra,56($sp)
    addiu	$t9,$t9,10488
    bal gl_g_setpup
    lw	$a2,16($s0)
    b	.L0f0e2460
    ld	$ra,56($sp)
.end renderBackground_aMenuItem

# Function: enter_aMenuItem
# Declared: Line 1353 (Source lines: 1354-1359)
# Address: 0x0f0e24f4 - 0x0f0e2524 (Size: 48 bytes, Frame: 32)
.ent enter_aMenuItem
enter_aMenuItem:
    # Line 1354
    lw	$at,20($a0)
    beqz	$at,.L0f0e251c
    addiu	$sp,$sp,-32
    # Line 1357
    la	$t9,sub_0f0e0000
    sd	$ra,0($sp)
    # Line 1356
    li	$v0,2
    # Line 1357
    addiu	$t9,$t9,9632
    bal gl_g_setpup
    # Line 1356
    sb	$v0,13($a0)
    ld	$ra,0($sp)
.L0f0e251c:
    # Line 1359
    jr	$ra
    addiu	$sp,$sp,32
.end enter_aMenuItem

# Function: leave_aMenuItem
# Declared: Line 1361 (Source lines: 1362-1371)
# Address: 0x0f0e2524 - 0x0f0e25a0 (Size: 124 bytes, Frame: 32)
.ent leave_aMenuItem
leave_aMenuItem:
    # Line 1362
    lw	$at,20($a0)
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$at,.L0f0e2594
    move	$s0,$a0
    # Line 1365
    move	$a6,$zero
    lh	$a5,42($s0)
    lh	$a4,40($s0)
    lh	$a3,38($s0)
    lh	$a2,36($s0)
    sd	$ra,8($sp)
    lw	$a1,0($s0)
    # Line 1364
    li	$a7,1
    sb	$a7,13($s0)
    # Line 1365
    la	$t9,XClearArea
    lw	$a0,0($a1)
    lw	$a1,24($a1)
    jalr	$t9
    lw	$a0,4($a0)
    lw	$at,0($s0)
    lbu	$at,14($at)
    beqz	$at,.L0f0e2594
    ld	$ra,8($sp)
    # Line 1369
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,9632
    bal gl_g_setpup
    move	$a0,$s0
    ld	$ra,8($sp)
.L0f0e2594:
    # Line 1371
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end leave_aMenuItem

# Function: render_aMenuItem
# Declared: Line 1373 (Source lines: 1374-1400)
# Address: 0x0f0e25a0 - 0x0f0e26f0 (Size: 336 bytes, Frame: 224)
.ent render_aMenuItem
render_aMenuItem:
    # Line 1376
    lh	$t0,38($a0)
    lh	$a3,36($a0)
    # Line 1374
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s1,40($sp)
    # Line 1375
    lw	$s1,0($a0)
    # Line 1376
    lw	$at,48($a0)
    sd	$s2,48($sp)
    lw	$s2,24($s1)
    beqz	$at,.L0f0e2680
    # Line 1375
    lw	$s1,0($s1)
    # Line 1382
    move	$a0,$s0
    # Line 1378
    addiu	$t8,$a3,4
    # Line 1382
    la	$t9,sub_0f0e0000
    # Line 1379
    addiu	$ra,$t0,2
    sd	$ra,24($sp)
    # Line 1382
    addiu	$t9,$t9,9068
    bal gl_g_setpup
    sd	$t8,16($sp)
    lbu	$at,13($s0)
    beqz	$at,.L0f0e26e8
    sd	$s4,64($sp)
    # Line 1386
    lw	$s4,16($s1)
.L0f0e2604:
    # Line 1387
    lw	$a2,0($s0)
    lw	$a2,52($a2)
    move	$a1,$s4
    la	$t9,XSetFont
    lw	$a2,0($a2)
    lw	$a0,4($s1)
    jalr	$t9
    lw	$a2,4($a2)
    # Line 1388
    lw	$a6,52($s0)
    lw	$a5,48($s0)
    move	$a2,$s4
    lw	$a4,0($s0)
    move	$a1,$s2
    ld	$a7,16($sp)
    lw	$a4,52($a4)
    lw	$a3,32($s0)
    la	$t9,XDrawString
    lw	$a4,0($a4)
    addu	$a3,$a3,$a7
    ld	$a7,24($sp)
    lw	$a4,72($a4)
    lw	$a0,4($s1)
    jalr	$t9
    addu	$a4,$a4,$a7
    ld	$s2,48($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    ld	$s4,64($sp)
    ld	$ra,56($sp)
.L0f0e2678:
    # Line 1400
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e2680:
    # Line 1394
    move	$a4,$t0
    sd	$t0,0($sp)
    # Line 1396
    move	$a6,$t0
    lw	$a2,20($s1)
    move	$a1,$s2
    # Line 1395
    lh	$a5,40($s0)
    # Line 1396
    la	$t9,XDrawLine
    lw	$a0,4($s1)
    # Line 1395
    addu	$a5,$a5,$a3
    # Line 1396
    jalr	$t9
    sd	$a5,8($sp)
    ld	$a5,8($sp)
    # Line 1398
    lh	$a3,36($s0)
    lw	$a2,36($s1)
    move	$a1,$s2
    ld	$a4,0($sp)
    la	$t9,XDrawLine
    lw	$a0,4($s1)
    addiu	$a4,$a4,1
    jalr	$t9
    move	$a6,$a4
    ld	$s2,48($sp)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    b	.L0f0e2678
    ld	$ra,56($sp)
.L0f0e26e8:
    # Line 1384
    b	.L0f0e2604
    lw	$s4,20($s1)
.end render_aMenuItem

# Function: resize_aMenuItem
# Declared: Line 1402 (Source lines: 1404-1406)
# Address: 0x0f0e26f0 - 0x0f0e26fc (Size: 12 bytes, Frame: 0)
.ent resize_aMenuItem
resize_aMenuItem:
    # Line 1405
    sh	$a2,42($a0)
    # Line 1406
    jr	$ra
    # Line 1404
    sh	$a1,40($a0)
.end resize_aMenuItem

# Function: reset_aMenuItem
# Declared: Line 1408 (Source lines: 1410-1412)
# Address: 0x0f0e26fc - 0x0f0e2710 (Size: 20 bytes, Frame: 0)
.ent reset_aMenuItem
reset_aMenuItem:
    # Line 1411
    lh	$v0,46($a0)
    # Line 1410
    lh	$at,44($a0)
    # Line 1411
    sh	$v0,42($a0)
    # Line 1412
    jr	$ra
    # Line 1410
    sh	$at,40($a0)
.end reset_aMenuItem

# Function: move_aMenuItem
# Declared: Line 1414 (Source lines: 1416-1418)
# Address: 0x0f0e2710 - 0x0f0e271c (Size: 12 bytes, Frame: 0)
.ent move_aMenuItem
move_aMenuItem:
    # Line 1417
    sh	$a2,38($a0)
    # Line 1418
    jr	$ra
    # Line 1416
    sh	$a1,36($a0)
.end move_aMenuItem

# Function: renderEdges
# Declared: Line 1420 (Source lines: 1422-1440)
# Address: 0x0f0e271c - 0x0f0e27f0 (Size: 212 bytes, Frame: 144)
.ent renderEdges
renderEdges:
    # Line 1429
    addu	$v0,$a3,$a5
    # Line 1431
    move	$a5,$zero
    # Line 1422
    addiu	$sp,$sp,-144
    sd	$s8,24($sp)
    move	$s8,$a0
    sd	$a1,72($sp)
    sd	$a4,48($sp)
    move	$at,$a4
    # Line 1431
    li	$a4,3
    sd	$a3,56($sp)
    # Line 1422
    move	$v1,$a3
    # Line 1431
    addiu	$a3,$sp,0
    sd	$a2,64($sp)
    sd	$ra,16($sp)
    la	$t9,XDrawLines
    # Line 1430
    sh	$at,10($sp)
    # Line 1428
    sh	$at,6($sp)
    # Line 1427
    sh	$v1,4($sp)
    # Line 1425
    sh	$v1,0($sp)
    # Line 1426
    addu	$a6,$at,$a6
    addiu	$a6,$a6,-1
    sd	$a6,40($sp)
    sd	$v0,32($sp)
    # Line 1429
    addiu	$v0,$v0,-2
    sh	$v0,8($sp)
    # Line 1426
    sh	$a6,2($sp)
    # Line 1431
    jalr	$t9
    lw	$a2,0($a2)
    # Line 1439
    move	$a5,$zero
    li	$a4,3
    addiu	$a3,$sp,0
    ld	$a1,72($sp)
    move	$a0,$s8
    ld	$a2,64($sp)
    la	$t9,XDrawLines
    # Line 1438
    ld	$a6,48($sp)
    # Line 1435
    ld	$a7,32($sp)
    # Line 1433
    ld	$t0,56($sp)
    # Line 1438
    sh	$a6,10($sp)
    # Line 1435
    addiu	$a7,$a7,-1
    # Line 1433
    addiu	$t0,$t0,1
    sh	$t0,0($sp)
    # Line 1434
    ld	$t0,40($sp)
    # Line 1437
    sh	$a7,8($sp)
    # Line 1435
    sh	$a7,4($sp)
    # Line 1436
    sh	$t0,6($sp)
    # Line 1434
    sh	$t0,2($sp)
    # Line 1439
    jalr	$t9
    lw	$a2,4($a2)
    ld	$ra,16($sp)
    # Line 1440
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end renderEdges

# Function: render_outline
# Declared: Line 1442 (Source lines: 1444-1447)
# Address: 0x0f0e27f0 - 0x0f0e2870 (Size: 128 bytes, Frame: 128)
.ent render_outline
render_outline:
    # Line 1444
    addiu	$sp,$sp,-128
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$a1,56($sp)
    sd	$a2,48($sp)
    sd	$a3,40($sp)
    sd	$a4,32($sp)
    la	$t9,sub_0f0e0000
    sd	$a5,24($sp)
    sd	$ra,0($sp)
    addiu	$t9,$t9,10012
    # Line 1445
    bal gl_g_setpup
    sd	$a6,16($sp)
    # Line 1446
    move	$a0,$s0
    ld	$a1,56($sp)
    ld	$a2,48($sp)
    ld	$a3,40($sp)
    ld	$a6,16($sp)
    ld	$a5,24($sp)
    ld	$a4,32($sp)
    addiu	$a6,$a6,-2
    addiu	$a5,$a5,-2
    la	$t9,sub_0f0e0000
    addiu	$a4,$a4,1
    addiu	$a3,$a3,1
    addiu	$t9,$t9,10012
    bal gl_g_setpup
    addiu	$a2,$a2,8
    ld	$ra,0($sp)
    # Line 1447
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end render_outline

# Function: render_fill
# Declared: Line 1449 (Source lines: 1452-1455)
# Address: 0x0f0e2870 - 0x0f0e28f8 (Size: 136 bytes, Frame: 128)
.ent render_fill
render_fill:
    # Line 1452
    addiu	$sp,$sp,-128
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$a1,56($sp)
    sd	$a3,48($sp)
    move	$a3,$a4
    sd	$a4,40($sp)
    move	$a4,$a5
    sd	$a5,32($sp)
    move	$a5,$a6
    sd	$a6,24($sp)
    # Line 1453
    la	$t9,sub_0f0e0000
    # Line 1452
    move	$a6,$a7
    sd	$ra,0($sp)
    # Line 1453
    addiu	$t9,$t9,10224
    bal gl_g_setpup
    sd	$a7,16($sp)
    # Line 1454
    move	$a0,$s8
    ld	$a1,56($sp)
    ld	$a2,48($sp)
    ld	$a3,40($sp)
    la	$t9,XFillRectangle
    ld	$a6,16($sp)
    ld	$a5,24($sp)
    ld	$a4,32($sp)
    addiu	$a6,$a6,-4
    addiu	$a5,$a5,-4
    addiu	$a4,$a4,2
    jalr	$t9
    addiu	$a3,$a3,2
    ld	$ra,0($sp)
    # Line 1455
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end render_fill

# Function: drawCheck
# Declared: Line 1457 (Source lines: 1458-1476)
# Address: 0x0f0e28f8 - 0x0f0e2a5c (Size: 356 bytes, Frame: 240)
.ent drawCheck
drawCheck:
    # Line 1458
    addiu	$sp,$sp,-112
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$s3,40($sp)
    move	$s3,$a1
    sd	$s2,24($sp)
    move	$s2,$a2
    sd	$s4,16($sp)
    move	$s4,$a3
    sd	$s1,32($sp)
    beqz	$a2,.L0f0e2a54
    move	$s1,$a4
    # Line 1461
    addiu	$a2,$s0,120
.L0f0e292c:
    # Line 1463
    addiu	$v0,$a5,-11
    srl	$at,$v0,0x1f
    addu	$at,$at,$v0
    sra	$at,$at,0x1
    beqz	$s2,.L0f0e2974
    addu	$s1,$at,$s1
    # Line 1465
    li	$a7,11
    li	$a6,11
    move	$a5,$s1
    addiu	$a4,$s4,4
    lw	$a3,28($s0)
    la	$t9,sub_0f0e0000
    move	$a1,$s3
    sd	$ra,56($sp)
    addiu	$t9,$t9,10352
    bal gl_g_setpup
    lw	$a0,4($s0)
    ld	$ra,56($sp)
.L0f0e2974:
    andi	$at,$s2,0x4
    beqz	$at,.L0f0e2a3c
    ld	$s2,24($sp)
    # Line 1470
    li	$a2,2
    lw	$a1,16($s0)
    la	$t9,XSetFillStyle
    lw	$a0,4($s0)
    sd	$ra,56($sp)
    jalr	$t9
    ld	$s2,24($sp)
    # Line 1471
    lw	$a1,16($s0)
    lw	$a0,4($s0)
    la	$t9,XSetTSOrigin
    addiu	$a4,$s1,2
    sd	$a4,8($sp)
    sra	$a5,$a4,0x1f
    xor	$a3,$a4,$a5
    sra	$a4,$a4,0x1f
    subu	$a3,$a3,$a5
    andi	$a3,$a3,0x7
    xor	$a3,$a3,$a4
    subu	$a3,$a3,$a4
    addiu	$a4,$s4,6
    sd	$a4,0($sp)
    sra	$a5,$a4,0x1f
    xor	$a2,$a4,$a5
    sra	$a4,$a4,0x1f
    subu	$a2,$a2,$a5
    andi	$a2,$a2,0xf
    xor	$a2,$a2,$a4
    jalr	$t9
    subu	$a2,$a2,$a4
    # Line 1472
    li	$a6,8
    li	$a5,16
    ld	$a4,8($sp)
    ld	$a3,0($sp)
    lw	$a2,16($s0)
    move	$a1,$s3
    la	$t9,XFillRectangle
    lw	$a0,4($s0)
    ld	$s1,32($sp)
    jalr	$t9
    ld	$s4,16($sp)
    # Line 1474
    move	$a2,$zero
    la	$t9,XSetFillStyle
    lw	$a1,16($s0)
    lw	$a0,4($s0)
    jalr	$t9
    ld	$s3,40($sp)
    ld	$ra,56($sp)
.L0f0e2a3c:
    # Line 1476
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s3,40($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e2a54:
    b	.L0f0e292c
    # Line 1461
    addiu	$a2,$s0,136
.end drawCheck

# Function: SetState
# Declared: Line 1478 (Source lines: 1479-1492)
# Address: 0x0f0e2a5c - 0x0f0e2b00 (Size: 164 bytes, Frame: 192)
.ent SetState
SetState:
    # Line 1479
    addiu	$sp,$sp,-64
    # Line 1483
    beqz	$a0,.L0f0e2af4
    sw	$a0,-20748($gp)
    li	$at,2
    beq	$a0,$at,.L0f0e2af4
    li	$v0,3
    beq	$a0,$v0,.L0f0e2ad4
    li	$v1,1
    beq	$a0,$v1,.L0f0e2ae4
    lw	$a1,0($sp)
    sd	$ra,32($sp)
    sd	$a1,24($sp)
.L0f0e2a8c:
    # Line 1491
    la	$t9,times
    jalr	$t9
    addiu	$a0,$sp,8
    ld	$v1,24($sp)
    li	$ra,1000
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$at,$at,0x3
    addu	$at,$at,$v1
    sll	$at,$at,0x2
    div	$zero,$at,$ra
    teq	$ra,$zero,0x7
    # Line 1492
    ld	$ra,32($sp)
    addiu	$sp,$sp,64
    # Line 1491
    mflo	$a2
    addu	$a2,$a2,$v0
    # Line 1492
    jr	$ra
    # Line 1491
    sw	$a2,-20744($gp)
.L0f0e2ad4:
    # Line 1487
    lw	$v0,-20752($gp)
    sd	$ra,32($sp)
    b	.L0f0e2a8c
    sd	$v0,24($sp)
.L0f0e2ae4:
    # Line 1488
    lw	$v1,-20756($gp)
    sd	$ra,32($sp)
    b	.L0f0e2a8c
    sd	$v1,24($sp)
.L0f0e2af4:
    # Line 1485
    sw	$zero,-20744($gp)
    jr	$ra
    addiu	$sp,$sp,64
.end SetState

# Function: TimeoutHappened
# Declared: Line 1494 (Source lines: 1495-1514)
# Address: 0x0f0e2b00 - 0x0f0e2bd0 (Size: 208 bytes, Frame: 16)
.ent TimeoutHappened
TimeoutHappened:
    # Line 1496
    lw	$a1,-20748($gp)
    li	$at,1
    beq	$a1,$at,.L0f0e2bb4
    # Line 1495
    addiu	$sp,$sp,-16
    # Line 1496
    li	$v0,3
    beq	$a1,$v0,.L0f0e2b38
    sd	$ra,0($sp)
    # Line 1511
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    move	$a0,$zero
    ld	$ra,0($sp)
.L0f0e2b30:
    # Line 1514
    jr	$ra
    addiu	$sp,$sp,16
.L0f0e2b38:
    # Line 1503
    la	$t9,sub_0f0e0000
    lw	$a0,-20740($gp)
    addiu	$t9,$t9,7332
    bal gl_g_setpup
    lw	$a0,44($a0)
    # Line 1505
    la	$t9,sub_0f0e0000
    move	$a0,$zero
    # Line 1504
    lw	$at,-20740($gp)
    # Line 1505
    addiu	$t9,$t9,10844
    bal gl_g_setpup
    # Line 1504
    sw	$zero,44($at)
    # Line 1507
    lw	$a2,-20760($gp)
    la	$t9,sub_0f0e0000
    addiu	$a2,$a2,3
    sra	$a1,$a2,0x1f
    xor	$a0,$a2,$a1
    subu	$a0,$a0,$a1
    la	$a1,sub_0f030000
    addiu	$t9,$t9,6600
    sra	$a2,$a2,0x1f
    addiu	$a1,$a1,3344
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    lw	$a1,4($a0)
    bal gl_g_setpup
    lw	$a0,0($a0)
    b	.L0f0e2b30
    ld	$ra,0($sp)
.L0f0e2bb4:
    # Line 1498
    la	$t9,sub_0f0e0000
    sd	$ra,0($sp)
    addiu	$t9,$t9,7144
    bal gl_g_setpup
    nop
    b	.L0f0e2b30
    ld	$ra,0($sp)
.end TimeoutHappened

# Function: GLMenuNextEvent
# Declared: Line 1516 (Source lines: 1517-1563)
# Address: 0x0f0e2bd0 - 0x0f0e2dd0 (Size: 512 bytes, Frame: 208)
.ent GLMenuNextEvent
GLMenuNextEvent:
    # Line 1517
    addiu	$sp,$sp,-208
    sd	$s1,184($sp)
    sd	$ra,168($sp)
    sd	$s0,152($sp)
    lw	$at,-20744($gp)
    move	$s0,$a0
    sd	$s5,160($sp)
    beqz	$at,.L0f0e2c34
    move	$s5,$a1
    # Line 1521
    la	$t9,times
    sd	$s1,184($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$a0,-20744($gp)
    move	$s1,$v0
    sltu	$v0,$a0,$v0
    bnez	$v0,.L0f0e2d98
    # Line 1524
    la	$t9,sub_0f0e0000
.L0f0e2c18:
    beqz	$a0,.L0f0e2c34
    # Line 1528
    la	$t9,XEventsQueued
    move	$a0,$s0
    jalr	$t9
    li	$a1,2
    beqz	$v0,.L0f0e2c5c
    sd	$s2,176($sp)
.L0f0e2c34:
    # Line 1562
    la	$t9,XNextEvent
    move	$a0,$s0
    move	$a1,$s5
    jalr	$t9
    ld	$s1,184($sp)
    ld	$ra,168($sp)
    # Line 1563
    ld	$s0,152($sp)
    ld	$s5,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0e2c5c:
    b	.L0f0e2c68
    # Line 1529
    lw	$s2,8($s0)
.L0f0e2c64:
    # Line 1558
    bltz	$s2,.L0f0e2d90
.L0f0e2c68:
    # Line 1535
    la	$t9,memset
    li	$a2,128
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 1538
    lw	$ra,-20744($gp)
    li	$t8,100
    subu	$ra,$ra,$s1
    divu	$zero,$ra,$t8
    mflo	$a5
    mfhi	$ra
    # Line 1539
    sll	$t9,$ra,0x4
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x5
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x6
    divu	$zero,$t9,$t8
    # Line 1540
    addiu	$a4,$sp,144
    move	$a3,$zero
    move	$a2,$zero
    addiu	$a1,$sp,16
    # Line 1539
    teq	$t8,$zero,0x7
    # Line 1540
    addiu	$a0,$s2,1
    # Line 1538
    teq	$t8,$zero,0x7
    li	$t0,1
    addiu	$t3,$sp,16
    # Line 1536
    sra	$t2,$s2,0x1f
    xor	$t1,$s2,$t2
    subu	$t1,$t1,$t2
    sra	$t2,$s2,0x1f
    andi	$t1,$t1,0x1f
    xor	$t1,$t1,$t2
    sra	$a7,$s2,0x4
    srl	$a7,$a7,0x1b
    addu	$a7,$a7,$s2
    sra	$a7,$a7,0x5
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$t3
    lw	$a6,0($a7)
    subu	$t1,$t1,$t2
    sllv	$t0,$t0,$t1
    or	$a6,$a6,$t0
    sw	$a6,0($a7)
    # Line 1540
    la	$t9,select
    # Line 1538
    sw	$a5,144($sp)
    # Line 1539
    mflo	$v1
    # Line 1540
    jalr	$t9
    # Line 1539
    sw	$v1,148($sp)
    # Line 1540
    beqz	$v0,.L0f0e2dac
    li	$at,-1
    beq	$v0,$at,.L0f0e2d7c
    # Line 1553
    la	$t9,XEventsQueued
    move	$a0,$s0
    jalr	$t9
    li	$a1,1
    bnez	$v0,.L0f0e2c64
    # Line 1555
    li	$s2,-1
    la	$a0,gl_sstatep
    # Line 1554
    lw	$a0,0($a0)
    la	$t9,_GLioerrorhandler
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f0e2c64
    # Line 1555
    li	$s2,-1
.L0f0e2d7c:
    # Line 1550
    la	$t9,times
.L0f0e2d80:
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 1558
    bgez	$s2,.L0f0e2c68
    # Line 1550
    move	$s1,$v0
.L0f0e2d90:
    b	.L0f0e2c34
    ld	$s2,176($sp)
.L0f0e2d98:
    # Line 1524
    addiu	$t9,$t9,11008
    bal gl_g_setpup
    nop
    b	.L0f0e2c18
    lw	$a0,-20744($gp)
.L0f0e2dac:
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,11008
    # Line 1542
    bal gl_g_setpup
    nop
    # Line 1543
    lw	$at,-20744($gp)
    bnez	$at,.L0f0e2d80
    # Line 1550
    la	$t9,times
    # Line 1545
    b	.L0f0e2c64
    # Line 1544
    li	$s2,-1
.end GLMenuNextEvent

# Function: ArePopupsAvailable
# Declared: Line 1565 (Source lines: 1566-1572)
# Address: 0x0f0e2dd0 - 0x0f0e2df8 (Size: 40 bytes, Frame: 0)
.ent ArePopupsAvailable
ArePopupsAvailable:
    # Line 1566
    la	$at,gl_sstatep
    lw	$at,0($at)
    lw	$at,28($at)
    lw	$at,20($at)
    beqz	$at,.L0f0e2df0
    # Line 1572
    li	$v0,1
    jr	$ra
    nop
.L0f0e2df0:
    # Line 1570
    jr	$ra
    move	$v0,$zero
.end ArePopupsAvailable

.late_rodata
jtbl_0f023818:
    .word .L0f0e13f0
    .word .L0f0e13f0
    .word .L0f0e13e0
    .word .L0f0e13e0
    .word .L0f0e13e0
    .word .L0f0e1434
    .word .L0f0e1530
    .word .L0f0e15d0
    .word .L0f0e15d0
    .word .L0f0e13f0
    .word .L0f0e13f0
    .word .L0f0e13f0
    .word .L0f0e162c

