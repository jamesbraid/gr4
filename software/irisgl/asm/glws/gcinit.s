# Source: ../igloo/glws/gcinit.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/gcinit.c -o gcinit.T
# Total Functions: 1

.text

# Function: gl_init_wstate
# Declared: Line 161 (Source lines: 162-392)
# Address: 0x0f0bf0d0 - 0x0f0bf42c (Size: 860 bytes, Frame: 192)
.globl gl_init_wstate
.ent gl_init_wstate
gl_init_wstate:
    # Line 162
    addiu	$sp,$sp,-3392
    sd	$gp,3360($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,16760 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 169
    la	$t9,__iglooGetGraphicsType
    sd	$s0,3344($sp)
    sd	$ra,3352($sp)
    jalr	$t9
    # Line 162
    move	$s0,$a0
    # Line 169
    li	$v1,2
    beq	$v1,$v0,.L0f0bf3e4
    sd	$s1,3368($sp)
    # Line 178
    li	$a1,8
    beq	$v0,$a1,.L0f0bf3d8
    li	$s1,1
    # Line 186
    la	$a2,gl_iglooGouraudCIDepthCue
    sw	$s1,0($a2)
.L0f0bf118:
    la	$a0,gl_iglooUseTexObj
    # Line 191
    li	$at,3
    beq	$at,$v0,.L0f0bf3f4
    # Line 189
    sw	$s1,0($a0)
    # Line 191
    li	$v1,4
    beq	$v0,$v1,.L0f0bf3f4
.L0f0bf130:
    # Line 211
    la	$t9,getenv
.L0f0bf134:
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,11968
    beqz	$v0,.L0f0bf14c
    la	$a1,gl_iglooUseTexObj
    # Line 212
    sw	$s1,0($a1)
.L0f0bf14c:
    # Line 214
    la	$t9,getenv
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,11992
    beqz	$v0,.L0f0bf168
    la	$a1,gl_iglooUseTexObj
    # Line 215
    sw	$zero,0($a1)
.L0f0bf168:
    # Line 227
    la	$t9,getenv
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,12016
    beqz	$v0,.L0f0bf188
    # Line 229
    la	$a1,gl_DisplayListCharStr
    b	.L0f0bf190
    sw	$zero,0($a1)
.L0f0bf188:
    # Line 233
    la	$a2,gl_DisplayListCharStr
    sw	$s1,0($a2)
.L0f0bf190:
    # Line 240
    la	$t9,getenv
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,12048
    beqz	$v0,.L0f0bf1ac
    # Line 242
    la	$a1,__iglooNoReleaseContext
    sw	$s1,0($a1)
.L0f0bf1ac:
    # Line 295
    move	$a0,$s0
    # Line 293
    sw	$zero,11392($s0)
    # Line 292
    sw	$zero,11376($s0)
    # Line 291
    sw	$zero,11384($s0)
    # Line 290
    sw	$zero,11400($s0)
    # Line 286
    sw	$s1,3116($s0)
    # Line 281
    sw	$zero,2812($s0)
    # Line 280
    sw	$s1,2808($s0)
    # Line 278
    sw	$zero,2800($s0)
    # Line 277
    sw	$zero,2796($s0)
    # Line 269
    sw	$zero,11524($s0)
    # Line 268
    sw	$zero,11520($s0)
    # Line 267
    sw	$zero,11516($s0)
    # Line 266
    sw	$zero,11512($s0)
    # Line 265
    sw	$zero,11508($s0)
    # Line 264
    sw	$zero,11504($s0)
    # Line 261
    sw	$zero,11500($s0)
    # Line 254
    addiu	$a2,$s0,280
    # Line 255
    addiu	$a3,$s0,348
    # Line 259
    addiu	$a4,$s0,11892
    # Line 275
    li	$a6,7
    # Line 279
    li	$a7,0x8006
    # Line 283
    li	$t0,5379
    # Line 285
    li	$t1,1028
    # Line 288
    li	$t2,104
    # Line 272
    li	$a5,10
    li	$t3,3
    # Line 282
    sw	$t3,2816($s0)
    # Line 289
    sw	$a5,11388($s0)
    # Line 288
    sw	$t2,11404($s0)
    # Line 285
    sw	$t1,3148($s0)
    # Line 283
    sw	$t0,2820($s0)
    # Line 279
    sw	$a7,2804($s0)
    # Line 275
    sw	$a6,2788($s0)
    # Line 273
    sh	$a5,11704($s0)
    # Line 272
    sh	$a5,11702($s0)
    # Line 295
    la	$t9,__iglooInitProcs
    # Line 259
    sw	$a4,11888($s0)
    # Line 255
    sw	$a3,340($s0)
    # Line 295
    jalr	$t9
    # Line 254
    sw	$a2,276($s0)
    # Line 311
    move	$a0,$s0
    # Line 309
    sb	$s1,2844($s0)
    # Line 307
    sb	$zero,2836($s0)
    # Line 299
    li	$t8,9729
    # Line 300
    lwc1	$f0,_lit_3f800000
    li	$t9,3
    # Line 308
    sw	$t9,2840($s0)
    # Line 311
    la	$t9,__iglooSaveDepthBufferScaleFactor
    # Line 299
    sw	$t8,3084($s0)
    # Line 301
    swc1	$f0,3104($s0)
    # Line 311
    jalr	$t9
    # Line 300
    swc1	$f0,3112($s0)
    # Line 367
    sw	$s1,3012($s0)
    # Line 366
    sw	$zero,3008($s0)
    # Line 364
    sw	$zero,12140($s0)
    # Line 362
    sw	$zero,12132($s0)
    # Line 361
    sw	$zero,12128($s0)
    # Line 359
    sw	$zero,12120($s0)
    # Line 355
    sw	$zero,12112($s0)
    # Line 347
    sw	$zero,11836($s0)
    # Line 345
    sw	$zero,11828($s0)
    # Line 344
    sw	$zero,11824($s0)
    # Line 342
    sw	$zero,11816($s0)
    # Line 341
    sw	$zero,11812($s0)
    # Line 340
    sw	$zero,11808($s0)
    # Line 339
    sw	$zero,11804($s0)
    # Line 338
    sw	$zero,11800($s0)
    # Line 331
    sw	$zero,11484($s0)
    # Line 329
    sh	$zero,2946($s0)
    # Line 316
    sw	$zero,2908($s0)
    # Line 313
    sw	$zero,2904($s0)
    # Line 328
    li	$a1,255
    # Line 343
    li	$a2,32
    # Line 349
    li	$a3,0x8000
    # Line 350
    li	$a4,5121
    # Line 356
    li	$a5,-1
    li	$a6,2
    # Line 360
    sw	$a6,12124($s0)
    # Line 348
    sw	$a6,11832($s0)
    # Line 356
    sw	$a5,12116($s0)
    # Line 352
    sw	$a4,11856($s0)
    # Line 351
    sw	$a3,11860($s0)
    # Line 350
    sw	$a4,11840($s0)
    # Line 349
    sw	$a3,11844($s0)
    # Line 343
    sw	$a2,11820($s0)
    # Line 328
    sh	$a1,2944($s0)
    # Line 314
    dmtc1	$zero,$f1
    # Line 369
    la	$t9,getenv
    # Line 315
    ldc1	$f2,_lit8_3ff0000000000000
    lwc1	$f4,_lit_3f800000
    # Line 323
    mtc1	$zero,$f3
    # Line 369
    la	$a0,sub_0f020000
    # Line 363
    swc1	$f4,12136($s0)
    # Line 336
    swc1	$f4,11796($s0)
    # Line 335
    swc1	$f4,11792($s0)
    # Line 333
    swc1	$f4,11744($s0)
    # Line 326
    swc1	$f4,2940($s0)
    # Line 321
    swc1	$f4,2924($s0)
    # Line 320
    swc1	$f4,2920($s0)
    # Line 319
    swc1	$f4,2916($s0)
    # Line 318
    swc1	$f4,2912($s0)
    # Line 369
    addiu	$a0,$a0,12072
    # Line 325
    swc1	$f3,2936($s0)
    # Line 324
    swc1	$f3,2932($s0)
    # Line 323
    swc1	$f3,2928($s0)
    # Line 315
    sdc1	$f2,2960($s0)
    # Line 369
    jalr	$t9
    # Line 314
    sdc1	$f1,2952($s0)
    # Line 379
    move	$a0,$s0
    la	$t9,gl_init_texturing
    ld	$s1,3368($sp)
    # Line 369
    sltiu	$a7,$v0,1
    # Line 379
    jalr	$t9
    # Line 369
    sw	$a7,12108($s0)
    # Line 380
    la	$t9,gl_init_curves
    jalr	$t9
    move	$a0,$s0
    # Line 387
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,12
    lw	$t0,276($s0)
    # Line 388
    la	$t9,__GLgetgdesc
    # Line 387
    lw	$t0,60($t0)
    # Line 388
    li	$a0,16
    jalr	$t9
    # Line 387
    sw	$v0,16($t0)
    # Line 388
    lw	$a1,276($s0)
    lw	$a1,60($a1)
    sw	$v0,20($a1)
    # Line 391
    la	$t9,_fb_initmodes
    lw	$a0,276($s0)
    jalr	$t9
    lw	$a0,60($a0)
    # Line 392
    ld	$ra,3352($sp)
    ld	$gp,3360($sp)
    ld	$s0,3344($sp)
    jr	$ra
    addiu	$sp,$sp,3392
.L0f0bf3d8:
    # Line 182
    la	$a2,gl_iglooGouraudCIDepthCue
    b	.L0f0bf118
    sw	$zero,0($a2)
.L0f0bf3e4:
    # Line 178
    la	$at,gl_iglooGouraudCIDepthCue
    li	$s1,1
    b	.L0f0bf118
    sw	$zero,0($at)
.L0f0bf3f4:
    # Line 200
    la	$t9,uname
    jalr	$t9
    addiu	$a0,$sp,0
    lbu	$v1,514($sp)
    li	$a1,53
    bne	$v1,$a1,.L0f0bf134
    # Line 211
    la	$t9,getenv
    # Line 200
    lbu	$a2,516($sp)
    li	$at,51
    bne	$a2,$at,.L0f0bf134
    # Line 211
    la	$t9,getenv
    la	$v1,gl_iglooUseTexObj
    b	.L0f0bf130
    # Line 204
    sw	$zero,0($v1)
.end gl_init_wstate

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

