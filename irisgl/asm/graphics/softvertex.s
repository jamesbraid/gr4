# Source: ../igloo/graphics/softvertex.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/softvertex.c -o softvertex.T
# Total Functions: 17

.text

# Function: outOfMemory
# Declared: Line 21 (Source lines: 22-24)
# Address: 0x0f113270 - 0x0f11329c (Size: 44 bytes, Frame: 16)
.ent outOfMemory
outOfMemory:
    # Line 23
    li	$a1,5
    li	$a0,2
    # Line 22
    addiu	$sp,$sp,-16
    # Line 23
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a2,$a2,21104
    ld	$ra,0($sp)
    # Line 24
    jr	$ra
    addiu	$sp,$sp,16
.end outOfMemory

# Function: putData
# Declared: Line 50 (Source lines: 51-92)
# Address: 0x0f11329c - 0x0f113388 (Size: 236 bytes, Frame: 208)
.globl putData
.ent putData
putData:
    # Line 51
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    lui	$a5,0xfff2
    addiu	$a5,$a5,-84
    addu	$gp,$t9,$a5
    # Line 53
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    # Line 51
    move	$a6,$a1
    sd	$s0,0($sp)
    # Line 53
    lw	$at,11396($a4)
    lw	$v0,11400($a4)
    # Line 51
    move	$a5,$a0
    # Line 53
    addu	$at,$at,$a0
    sltu	$at,$v0,$at
    bnez	$at,.L0f113324
    addiu	$s0,$a4,11392
    sd	$ra,32($sp)
    # Line 87
    lw	$a7,0($s0)
.L0f1132e4:
    # Line 91
    sll	$a2,$a5,0x2
    # Line 89
    lw	$t0,4($s0)
    # Line 91
    move	$a0,$a6
    la	$t9,bcopy
    sd	$t0,16($sp)
    # Line 90
    addu	$a6,$a5,$t0
    # Line 91
    sll	$a1,$t0,0x2
    addu	$a1,$a1,$a7
    jalr	$t9
    # Line 90
    sw	$a6,4($s0)
    ld	$v0,16($sp)
    # Line 92
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f113324:
    sd	$a5,48($sp)
    # Line 61
    lw	$a2,11404($a4)
    sd	$a6,40($sp)
    sd	$ra,32($sp)
    addu	$a2,$a2,$v0
    sw	$a2,11400($a4)
    # Line 78
    la	$t9,__iglooRealloc
    lw	$a1,8($s0)
    lw	$a0,0($s0)
    jalr	$t9
    sll	$a1,$a1,0x2
    ld	$a6,40($sp)
    beqz	$v0,.L0f113368
    ld	$a5,48($sp)
.L0f11335c:
    # Line 87
    move	$a7,$v0
    b	.L0f1132e4
    sw	$v0,0($s0)
.L0f113368:
    # Line 82
    la	$t9,sub_0f110000
    addiu	$t9,$t9,12912
    bal gl_socket_queue_init
    sd	$v0,24($sp)
    ld	$v0,24($sp)
    ld	$a6,40($sp)
    b	.L0f11335c
    ld	$a5,48($sp)
.end putData

# Function: getVDataPtrs
# Declared: Line 95 (Source lines: 96-134)
# Address: 0x0f113388 - 0x0f113470 (Size: 232 bytes, Frame: 48)
.globl getVDataPtrs
.ent getVDataPtrs
getVDataPtrs:
    # Line 96
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    sd	$s0,16($sp)
    lui	$s0,0xfff2
    addiu	$s0,$s0,-320
    addu	$gp,$t9,$s0
    # Line 99
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    # Line 100
    lw	$v0,11384($a4)
    lw	$at,11380($a4)
    addiu	$s0,$a4,11376
    sltu	$at,$at,$v0
    beqz	$at,.L0f113410
    # Line 99
    addiu	$a0,$a4,11408
    sd	$ra,32($sp)
    # Line 128
    lw	$a5,0($s0)
.L0f1133c8:
    # Line 130
    lw	$a3,4($s0)
    # Line 131
    li	$a2,68
    la	$t9,bcopy
    # Line 130
    sll	$a1,$a3,0x4
    addu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a5
    # Line 131
    jalr	$t9
    sd	$a1,8($sp)
    # Line 132
    lw	$ra,4($s0)
    # Line 134
    ld	$v0,8($sp)
    # Line 132
    addiu	$ra,$ra,1
    sw	$ra,4($s0)
    # Line 134
    ld	$ra,32($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f113410:
    # Line 107
    lw	$a3,11388($a4)
    sd	$ra,32($sp)
    addu	$a3,$a3,$v0
    sw	$a3,11384($a4)
    sd	$a0,40($sp)
    # Line 122
    lw	$a2,8($s0)
    la	$t9,__iglooRealloc
    lw	$a0,0($s0)
    sll	$a1,$a2,0x4
    addu	$a1,$a1,$a2
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0f113454
    ld	$a0,40($sp)
.L0f113448:
    # Line 128
    move	$a5,$v0
    b	.L0f1133c8
    sw	$v0,0($s0)
.L0f113454:
    # Line 125
    la	$t9,sub_0f110000
    addiu	$t9,$t9,12912
    bal gl_socket_queue_init
    sd	$v0,24($sp)
    ld	$v0,24($sp)
    b	.L0f113448
    ld	$a0,40($sp)
.end getVDataPtrs

# Function: setVData
# Declared: Line 147 (Source lines: 148-246)
# Address: 0x0f113470 - 0x0f113950 (Size: 1248 bytes, Frame: 192)
.globl setVData
.ent setVData
setVData:
    # Line 153
    li	$a5,1
    # Line 148
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    sd	$s2,0($sp)
    sd	$s1,16($sp)
    # Line 153
    lw	$at,4100($zero)
    sd	$gp,24($sp)
    # Line 148
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-552 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 153
    lw	$v0,0($a0)
    lw	$at,20($at)
    # Line 149
    la	$a4,gl_wstatep
    # Line 153
    sll	$t9,$v0,0x4
    lw	$at,16($at)
    # Line 149
    lw	$a4,0($a4)
    # Line 153
    addu	$t9,$t9,$v0
    sll	$t9,$t9,0x2
    # Line 151
    lw	$s2,11392($a4)
    # Line 153
    lw	$s1,11376($a4)
    lw	$a2,11476($a4)
    # Line 149
    move	$s0,$a4
    # Line 153
    addu	$s1,$s1,$t9
    beqz	$at,.L0f113764
    lw	$a3,0($s1)
    beq	$a3,$a5,.L0f113894
    # Line 174
    andi	$v1,$a2,0x1000
    beqz	$v1,.L0f113500
    # Line 182
    move	$a0,$a4
    lw	$a1,4($s1)
    lw	$t9,112($a4)
    sd	$ra,32($sp)
    sll	$a1,$a1,0x2
    jalr	$t9
    addu	$a1,$a1,$s2
    ld	$ra,32($sp)
.L0f113500:
    lw	$a0,11476($s0)
    andi	$at,$a0,0x4000
    beqz	$at,.L0f113538
    # Line 187
    andi	$at,$a0,0x8000
    move	$a0,$s0
    lw	$a1,12($s1)
    lw	$t9,192($s0)
    sd	$ra,32($sp)
    sll	$a1,$a1,0x2
    jalr	$t9
    addu	$a1,$a1,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f113534:
    andi	$at,$a0,0x8000
.L0f113538:
    beqzl	$at,.L0f113560
    # Line 193
    lw	$a1,3076($s0)
    lw	$a0,16($s1)
    la	$t9,glTexCoord4fv
    sd	$ra,32($sp)
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$s2
    ld	$ra,32($sp)
    lw	$a1,3076($s0)
.L0f113560:
    beqzl	$a1,.L0f113750
    ld	$gp,24($sp)
    lw	$a0,11476($s0)
    andi	$at,$a0,0x1
    beqz	$at,.L0f11359c
    # Line 198
    li	$a1,5632
    li	$a0,1028
    lw	$a2,20($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f11359c:
    andi	$at,$a0,0x2
    beqz	$at,.L0f1135cc
    # Line 199
    li	$a1,4608
    li	$a0,1028
    lw	$a2,24($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f1135cc:
    andi	$at,$a0,0x4
    beqz	$at,.L0f1135fc
    # Line 200
    li	$a1,4609
    li	$a0,1028
    lw	$a2,28($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f1135fc:
    andi	$at,$a0,0x8
    beqz	$at,.L0f11362c
    # Line 201
    li	$a1,4610
    li	$a0,1028
    lw	$a2,32($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f11362c:
    andi	$at,$a0,0x10
    beqz	$at,.L0f11365c
    # Line 202
    li	$a1,5633
    li	$a0,1028
    lw	$a2,36($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f11365c:
    andi	$at,$a0,0x40
    beqz	$at,.L0f11368c
    # Line 204
    li	$a1,5632
    li	$a0,1029
    lw	$a2,44($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f11368c:
    andi	$at,$a0,0x80
    beqz	$at,.L0f1136bc
    # Line 205
    li	$a1,4608
    li	$a0,1029
    lw	$a2,48($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f1136bc:
    andi	$at,$a0,0x100
    beqz	$at,.L0f1136ec
    # Line 206
    li	$a1,4609
    li	$a0,1029
    lw	$a2,52($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f1136ec:
    andi	$at,$a0,0x200
    beqz	$at,.L0f11371c
    # Line 207
    li	$a1,4610
    li	$a0,1029
    lw	$a2,56($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f11371c:
    andi	$at,$a0,0x400
    beqz	$at,.L0f11374c
    ld	$s0,8($sp)
    # Line 208
    li	$a1,5633
    li	$a0,1029
    lw	$a2,60($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    ld	$ra,32($sp)
.L0f11374c:
    ld	$gp,24($sp)
.L0f113750:
    # Line 246
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f113764:
    # Line 208
    beq	$a3,$a5,.L0f1138f4
    # Line 223
    andi	$at,$a2,0x2000
    beqz	$at,.L0f113794
    # Line 231
    move	$a0,$a4
    lw	$v0,8($s1)
    sd	$ra,32($sp)
    lw	$t9,136($a4)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s2
    jalr	$t9
    lwc1	$f13,0($v0)
    ld	$ra,32($sp)
.L0f113794:
    lw	$v1,11476($s0)
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0f1137c0
    # Line 235
    move	$a0,$s0
    lw	$a1,12($s1)
    lw	$t9,192($s0)
    sd	$ra,32($sp)
    sll	$a1,$a1,0x2
    jalr	$t9
    addu	$a1,$a1,$s2
    ld	$ra,32($sp)
.L0f1137c0:
    lw	$at,3076($s0)
    beqzl	$at,.L0f113750
    ld	$gp,24($sp)
    lw	$a0,11476($s0)
    andi	$v0,$a0,0x20
    beqz	$v0,.L0f113800
    # Line 240
    li	$a1,5635
    li	$a0,1028
    lw	$a2,40($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f113800:
    andi	$at,$a0,0x800
    beqz	$at,.L0f113830
    # Line 241
    li	$a1,5635
    li	$a0,1029
    lw	$a2,64($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f113830:
    andi	$at,$a0,0x10
    beqz	$at,.L0f113860
    # Line 242
    li	$a1,5633
    li	$a0,1028
    lw	$a2,36($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    lw	$a0,11476($s0)
    ld	$ra,32($sp)
.L0f113860:
    andi	$at,$a0,0x400
    beqz	$at,.L0f11374c
    ld	$s0,8($sp)
    # Line 243
    li	$a1,5633
    li	$a0,1029
    lw	$a2,60($s1)
    la	$t9,glMaterialfv
    sd	$ra,32($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$s2
    b	.L0f11374c
    ld	$ra,32($sp)
.L0f113894:
    # Line 153
    andi	$at,$a2,0x4000
    beqz	$at,.L0f1138bc
    # Line 170
    move	$a0,$a4
    lw	$a1,12($s1)
    lw	$t9,192($a4)
    sd	$ra,32($sp)
    sll	$a1,$a1,0x2
    jalr	$t9
    addu	$a1,$a1,$s2
    ld	$ra,32($sp)
.L0f1138bc:
    lw	$a0,11476($s0)
    andi	$at,$a0,0x1000
    beqz	$at,.L0f113538
    # Line 187
    andi	$at,$a0,0x8000
    # Line 174
    move	$a0,$s0
    lw	$a1,4($s1)
    lw	$t9,112($s0)
    sd	$ra,32($sp)
    sll	$a1,$a1,0x2
    jalr	$t9
    addu	$a1,$a1,$s2
    lw	$a0,11476($s0)
    b	.L0f113534
    ld	$ra,32($sp)
.L0f1138f4:
    # Line 208
    andi	$at,$a2,0x4000
    beqz	$at,.L0f11391c
    # Line 219
    move	$a0,$a4
    lw	$a1,12($s1)
    lw	$t9,192($a4)
    sd	$ra,32($sp)
    sll	$a1,$a1,0x2
    jalr	$t9
    addu	$a1,$a1,$s2
    ld	$ra,32($sp)
.L0f11391c:
    lw	$at,11476($s0)
    andi	$at,$at,0x2000
    beqz	$at,.L0f1137c0
    # Line 223
    move	$a0,$s0
    lw	$v0,8($s1)
    sd	$ra,32($sp)
    lw	$t9,136($s0)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s2
    jalr	$t9
    lwc1	$f13,0($v0)
    b	.L0f1137c0
    ld	$ra,32($sp)
.end setVData

# Function: vertexCallbackFunc
# Declared: Line 249 (Source lines: 250-256)
# Address: 0x0f113950 - 0x0f113998 (Size: 72 bytes, Frame: 48)
.globl vertexCallbackFunc
.ent vertexCallbackFunc
vertexCallbackFunc:
    # Line 250
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-1800 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 253
    la	$t9,setVData
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal setVData
    # Line 250
    move	$s8,$a0
    # Line 254
    la	$t9,glVertex3dv
    jalr	$t9
    addiu	$a0,$s8,8
    # Line 256
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end vertexCallbackFunc

# Function: gl_free_concave_data
# Declared: Line 258 (Source lines: 259-277)
# Address: 0x0f113998 - 0x0f113a28 (Size: 144 bytes, Frame: 48)
.globl gl_free_concave_data
.ent gl_free_concave_data
gl_free_concave_data:
    # Line 259
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$at,0xfff2
    addiu	$at,$at,-1872
    beqz	$a0,.L0f113a18
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    lw	$a0,3180($s0)
    beqz	$a0,.L0f1139d8
    # Line 263
    la	$t9,gluDeleteTess
    sd	$ra,16($sp)
    jalr	$t9
    nop
    # Line 264
    sw	$zero,3180($s0)
    ld	$ra,16($sp)
.L0f1139d8:
    lw	$a0,11392($s0)
    beqz	$a0,.L0f1139f8
    # Line 268
    la	$t9,__iglooFree
    sd	$ra,16($sp)
    jalr	$t9
    nop
    # Line 269
    sw	$zero,11392($s0)
    ld	$ra,16($sp)
.L0f1139f8:
    lw	$a0,11376($s0)
    beqz	$a0,.L0f113a18
    # Line 273
    la	$t9,__iglooFree
    sd	$ra,16($sp)
    jalr	$t9
    nop
    # Line 274
    sw	$zero,11376($s0)
    ld	$ra,16($sp)
.L0f113a18:
    ld	$gp,8($sp)
    # Line 277
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_concave_data

# Function: __iglooSetColorProcsHeavy
# Declared: Line 286 (Source lines: 287-301)
# Address: 0x0f113a28 - 0x0f113a88 (Size: 96 bytes, Frame: 0)
.globl __iglooSetColorProcsHeavy
.ent __iglooSetColorProcsHeavy
__iglooSetColorProcsHeavy:
    # Line 287
    lui	$v0,0xfff2
    addiu	$v0,$v0,-2016
    addu	$at,$t9,$v0
    # Line 297
    lw	$a1,-25052($at)
    # Line 300
    lw	$t9,-25048($at)
    # Line 295
    lw	$v0,-25072($at)
    # Line 299
    lw	$a2,-25044($at)
    # Line 296
    lw	$v1,-25056($at)
    # Line 295
    sw	$v0,140($a0)
    # Line 290
    lw	$v0,-25064($at)
    # Line 296
    sw	$v1,168($a0)
    # Line 291
    lw	$v1,-25068($at)
    # Line 299
    sw	$a2,172($a0)
    # Line 293
    lw	$a2,-25076($at)
    # Line 300
    sw	$t9,176($a0)
    # Line 294
    lw	$t9,-25080($at)
    # Line 297
    sw	$a1,164($a0)
    # Line 292
    lw	$a1,-25060($at)
    # Line 294
    sw	$t9,144($a0)
    # Line 293
    sw	$a2,148($a0)
    # Line 292
    sw	$a1,152($a0)
    # Line 291
    sw	$v1,156($a0)
    # Line 301
    jr	$ra
    # Line 290
    sw	$v0,160($a0)
.end __iglooSetColorProcsHeavy

# Function: __iglooSetColorProcsLight
# Declared: Line 303 (Source lines: 308-320)
# Address: 0x0f113a88 - 0x0f113adc (Size: 84 bytes, Frame: 0)
.globl __iglooSetColorProcsLight
.ent __iglooSetColorProcsLight
__iglooSetColorProcsLight:
    # Line 315
    lw	$a1,124($a0)
    # Line 314
    lw	$v1,128($a0)
    # Line 315
    sw	$a1,164($a0)
    # Line 311
    lw	$a1,108($a0)
    # Line 314
    sw	$v1,168($a0)
    # Line 310
    lw	$v1,112($a0)
    # Line 311
    sw	$a1,148($a0)
    # Line 318
    lw	$v0,136($a0)
    # Line 310
    sw	$v1,152($a0)
    # Line 317
    lw	$at,132($a0)
    # Line 318
    sw	$v0,176($a0)
    # Line 313
    lw	$v0,100($a0)
    # Line 317
    sw	$at,172($a0)
    # Line 312
    lw	$at,104($a0)
    # Line 313
    sw	$v0,140($a0)
    # Line 309
    lw	$v0,116($a0)
    # Line 312
    sw	$at,144($a0)
    # Line 308
    lw	$at,120($a0)
    # Line 309
    sw	$v0,156($a0)
    # Line 320
    jr	$ra
    # Line 308
    sw	$at,160($a0)
.end __iglooSetColorProcsLight

# Function: __iglooInitLightColorProcs
# Declared: Line 322 (Source lines: 323-337)
# Address: 0x0f113adc - 0x0f113b3c (Size: 96 bytes, Frame: 0)
.globl __iglooInitLightColorProcs
.ent __iglooInitLightColorProcs
__iglooInitLightColorProcs:
    # Line 323
    lui	$v0,0xfff2
    addiu	$v0,$v0,-2196
    addu	$at,$t9,$v0
    # Line 333
    lw	$a1,-31340($at)
    # Line 336
    lw	$t9,-31332($at)
    # Line 331
    lw	$v0,-31368($at)
    # Line 335
    lw	$a2,-31336($at)
    # Line 332
    lw	$v1,-31344($at)
    # Line 331
    sw	$v0,100($a0)
    # Line 326
    lw	$v0,-31352($at)
    # Line 332
    sw	$v1,128($a0)
    # Line 327
    lw	$v1,-31348($at)
    # Line 335
    sw	$a2,132($a0)
    # Line 329
    lw	$a2,-31364($at)
    # Line 336
    sw	$t9,136($a0)
    # Line 330
    lw	$t9,-31360($at)
    # Line 333
    sw	$a1,124($a0)
    # Line 328
    lw	$a1,-31356($at)
    # Line 330
    sw	$t9,104($a0)
    # Line 329
    sw	$a2,108($a0)
    # Line 328
    sw	$a1,112($a0)
    # Line 327
    sw	$v1,116($a0)
    # Line 337
    jr	$ra
    # Line 326
    sw	$v0,120($a0)
.end __iglooInitLightColorProcs

# Function: setSoftProcs
# Declared: Line 339 (Source lines: 340-380)
# Address: 0x0f113b3c - 0x0f113c3c (Size: 256 bytes, Frame: 16)
.ent setSoftProcs
setSoftProcs:
    # Line 340
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 345
    la	$at,slowBegin
    # Line 364
    la	$t9,__iglooSetColorProcsHeavy
    # Line 349
    la	$v0,__igl_concave_vertex2sv
    # Line 350
    la	$v1,__igl_concave_vertex2iv
    # Line 351
    la	$a1,__igl_concave_vertex2fv
    # Line 352
    la	$a2,__igl_concave_vertex2f
    # Line 354
    la	$a3,__igl_concave_vertex3sv
    # Line 355
    la	$a4,__igl_concave_vertex3iv
    # Line 356
    la	$a5,__igl_concave_vertex3fv
    # Line 357
    la	$a6,__igl_concave_vertex3f
    sd	$s8,8($sp)
    # Line 341
    la	$s8,gl_wstatep
    # Line 359
    la	$a7,__igl_concave_vertex4sv
    # Line 360
    la	$t0,__igl_concave_vertex4iv
    # Line 341
    lw	$s8,0($s8)
    # Line 362
    la	$t2,__igl_concave_vertex4f
    # Line 361
    la	$t1,__igl_concave_vertex4fv
    # Line 364
    move	$a0,$s8
    # Line 362
    sw	$t2,36($s8)
    # Line 361
    sw	$t1,40($s8)
    # Line 360
    sw	$t0,44($s8)
    # Line 359
    sw	$a7,48($s8)
    # Line 357
    sw	$a6,20($s8)
    # Line 356
    sw	$a5,24($s8)
    # Line 355
    sw	$a4,28($s8)
    # Line 354
    sw	$a3,32($s8)
    # Line 352
    sw	$a2,4($s8)
    # Line 351
    sw	$a1,8($s8)
    # Line 350
    sw	$v1,12($s8)
    # Line 349
    sw	$v0,16($s8)
    # Line 364
    bal __iglooSetColorProcsHeavy
    # Line 345
    sw	$at,216($s8)
    # Line 377
    la	$a1,__igl_concave_TexCoord4f
    # Line 376
    la	$a0,__igl_concave_TexCoord4iv
    # Line 373
    la	$at,__igl_concave_TexCoord3f
    # Line 375
    la	$v1,__igl_concave_TexCoord4sv
    # Line 374
    la	$v0,__igl_concave_TexCoord4fv
    # Line 373
    sw	$at,68($s8)
    # Line 367
    la	$at,__igl_concave_TexCoord2sv
    # Line 374
    sw	$v0,88($s8)
    # Line 368
    la	$v0,__igl_concave_TexCoord2iv
    # Line 375
    sw	$v1,96($s8)
    # Line 369
    la	$v1,__igl_concave_TexCoord2f
    # Line 376
    sw	$a0,92($s8)
    # Line 370
    la	$a0,__igl_concave_TexCoord3fv
    # Line 379
    la	$ra,__igl_concave_Normal3fv
    # Line 377
    sw	$a1,84($s8)
    # Line 371
    la	$a1,__igl_concave_TexCoord3sv
    # Line 379
    sw	$ra,212($s8)
    # Line 372
    la	$ra,__igl_concave_TexCoord3iv
    # Line 371
    sw	$a1,80($s8)
    # Line 370
    sw	$a0,72($s8)
    # Line 372
    sw	$ra,76($s8)
    # Line 366
    la	$ra,__igl_concave_TexCoord2fv
    # Line 369
    sw	$v1,52($s8)
    # Line 368
    sw	$v0,60($s8)
    # Line 366
    sw	$ra,56($s8)
    # Line 380
    ld	$ra,0($sp)
    # Line 367
    sw	$at,64($s8)
    # Line 380
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end setSoftProcs

# Function: initDataPool
# Declared: Line 389 (Source lines: 390-424)
# Address: 0x0f113c3c - 0x0f113efc (Size: 704 bytes, Frame: 48)
.globl initDataPool
.ent initDataPool
initDataPool:
    # Line 390
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    sd	$gp,8($sp)
    sd	$s7,16($sp)
    lui	$s7,0xfff2
    addiu	$s7,$s7,-2548
    addu	$gp,$t9,$s7
    # Line 393
    la	$s5,gl_wstatep
    # Line 402
    li	$a0,2816
    sd	$ra,0($sp)
    # Line 393
    lw	$s5,0($s5)
    sd	$s1,32($sp)
    # Line 402
    la	$t9,__iglooGetFloatv
    # Line 394
    addiu	$s1,$s5,11392
    # Line 400
    lw	$s7,11392($s5)
    # Line 393
    addiu	$s5,$s5,11408
    # Line 402
    bal __iglooGetFloatv
    move	$a1,$s7
    # Line 404
    addiu	$a1,$s7,20
    # Line 403
    lw	$t8,0($s1)
    # Line 404
    li	$a0,2818
    la	$t9,__iglooGetFloatv
    # Line 403
    subu	$t8,$s7,$t8
    sra	$t8,$t8,0x2
    # Line 404
    bal __iglooGetFloatv
    # Line 403
    sw	$t8,4($s5)
    # Line 406
    addiu	$a1,$s7,16
    # Line 405
    lw	$at,0($s1)
    # Line 406
    li	$a0,2817
    la	$t9,__iglooGetFloatv
    # Line 405
    subu	$at,$s7,$at
    addiu	$at,$at,20
    sra	$at,$at,0x2
    # Line 406
    bal __iglooGetFloatv
    # Line 405
    sw	$at,12($s5)
    # Line 408
    addiu	$a1,$s7,32
    # Line 407
    lw	$v0,0($s1)
    # Line 408
    li	$a0,2819
    la	$t9,__iglooGetFloatv
    # Line 407
    subu	$v0,$s7,$v0
    addiu	$v0,$v0,16
    sra	$v0,$v0,0x2
    # Line 408
    bal __iglooGetFloatv
    # Line 407
    sw	$v0,8($s5)
    # Line 411
    addiu	$a2,$s7,48
    li	$a1,5632
    # Line 409
    lw	$v1,0($s1)
    # Line 411
    li	$a0,1028
    la	$t9,glGetMaterialfv
    # Line 409
    subu	$v1,$s7,$v1
    addiu	$v1,$v1,32
    sra	$v1,$v1,0x2
    # Line 411
    jalr	$t9
    # Line 409
    sw	$v1,16($s5)
    # Line 412
    addiu	$a2,$s7,64
    li	$a1,4608
    # Line 411
    lw	$a3,0($s1)
    # Line 412
    li	$a0,1028
    la	$t9,glGetMaterialfv
    # Line 411
    subu	$a3,$s7,$a3
    addiu	$a3,$a3,48
    sra	$a3,$a3,0x2
    # Line 412
    jalr	$t9
    # Line 411
    sw	$a3,20($s5)
    # Line 413
    addiu	$a2,$s7,80
    li	$a1,4609
    # Line 412
    lw	$a4,0($s1)
    # Line 413
    li	$a0,1028
    la	$t9,glGetMaterialfv
    # Line 412
    subu	$a4,$s7,$a4
    addiu	$a4,$a4,64
    sra	$a4,$a4,0x2
    # Line 413
    jalr	$t9
    # Line 412
    sw	$a4,24($s5)
    # Line 414
    addiu	$a2,$s7,96
    li	$a1,4610
    # Line 413
    lw	$a5,0($s1)
    # Line 414
    li	$a0,1028
    la	$t9,glGetMaterialfv
    # Line 413
    subu	$a5,$s7,$a5
    addiu	$a5,$a5,80
    sra	$a5,$a5,0x2
    # Line 414
    jalr	$t9
    # Line 413
    sw	$a5,28($s5)
    # Line 415
    addiu	$a2,$s7,112
    li	$a1,5633
    # Line 414
    lw	$a6,0($s1)
    # Line 415
    li	$a0,1028
    la	$t9,glGetMaterialfv
    # Line 414
    subu	$a6,$s7,$a6
    addiu	$a6,$a6,96
    sra	$a6,$a6,0x2
    # Line 415
    jalr	$t9
    # Line 414
    sw	$a6,32($s5)
    # Line 416
    addiu	$a2,$s7,116
    li	$a1,5635
    # Line 415
    lw	$a7,0($s1)
    # Line 416
    li	$a0,1028
    la	$t9,glGetMaterialfv
    # Line 415
    subu	$a7,$s7,$a7
    addiu	$a7,$a7,112
    sra	$a7,$a7,0x2
    # Line 416
    jalr	$t9
    # Line 415
    sw	$a7,36($s5)
    # Line 418
    addiu	$a2,$s7,128
    li	$a1,5632
    # Line 416
    lw	$t0,0($s1)
    # Line 418
    li	$a0,1029
    la	$t9,glGetMaterialfv
    # Line 416
    subu	$t0,$s7,$t0
    addiu	$t0,$t0,116
    sra	$t0,$t0,0x2
    # Line 418
    jalr	$t9
    # Line 416
    sw	$t0,40($s5)
    # Line 419
    addiu	$a2,$s7,144
    li	$a1,4608
    # Line 418
    lw	$t1,0($s1)
    # Line 419
    li	$a0,1029
    la	$t9,glGetMaterialfv
    # Line 418
    subu	$t1,$s7,$t1
    addiu	$t1,$t1,128
    sra	$t1,$t1,0x2
    # Line 419
    jalr	$t9
    # Line 418
    sw	$t1,44($s5)
    # Line 420
    addiu	$a2,$s7,160
    li	$a1,4609
    # Line 419
    lw	$t2,0($s1)
    # Line 420
    li	$a0,1029
    la	$t9,glGetMaterialfv
    # Line 419
    subu	$t2,$s7,$t2
    addiu	$t2,$t2,144
    sra	$t2,$t2,0x2
    # Line 420
    jalr	$t9
    # Line 419
    sw	$t2,48($s5)
    # Line 421
    addiu	$a2,$s7,176
    li	$a1,4610
    # Line 420
    lw	$t3,0($s1)
    # Line 421
    li	$a0,1029
    la	$t9,glGetMaterialfv
    # Line 420
    subu	$t3,$s7,$t3
    addiu	$t3,$t3,160
    sra	$t3,$t3,0x2
    # Line 421
    jalr	$t9
    # Line 420
    sw	$t3,52($s5)
    # Line 422
    addiu	$a2,$s7,192
    li	$a1,5633
    # Line 421
    lw	$t8,0($s1)
    # Line 422
    li	$a0,1029
    la	$t9,glGetMaterialfv
    # Line 421
    subu	$t8,$s7,$t8
    addiu	$t8,$t8,176
    sra	$t8,$t8,0x2
    # Line 422
    jalr	$t9
    # Line 421
    sw	$t8,56($s5)
    # Line 423
    addiu	$a2,$s7,196
    li	$a1,5635
    # Line 422
    lw	$at,0($s1)
    # Line 423
    li	$a0,1029
    la	$t9,glGetMaterialfv
    # Line 422
    subu	$at,$s7,$at
    addiu	$at,$at,192
    sra	$at,$at,0x2
    # Line 423
    jalr	$t9
    # Line 422
    sw	$at,60($s5)
    ld	$gp,8($sp)
    # Line 423
    lw	$v0,0($s1)
    # Line 424
    ld	$s1,32($sp)
    ld	$ra,0($sp)
    # Line 423
    subu	$v0,$s7,$v0
    # Line 424
    ld	$s7,16($sp)
    # Line 423
    addiu	$v0,$v0,196
    sra	$v0,$v0,0x2
    sw	$v0,64($s5)
    # Line 424
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end initDataPool

# Function: checkInitDataPools
# Declared: Line 426 (Source lines: 427-455)
# Address: 0x0f113efc - 0x0f113fa4 (Size: 168 bytes, Frame: 32)
.ent checkInitDataPools
checkInitDataPools:
    # Line 434
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    # Line 427
    addiu	$sp,$sp,-32
    sd	$s7,8($sp)
    # Line 435
    lw	$at,11400($a1)
    sd	$s5,0($sp)
    addiu	$s5,$a1,11376
    beqz	$at,.L0f113f50
    # Line 434
    addiu	$s7,$a1,11392
.L0f113f20:
    # Line 438
    lw	$at,0($s7)
    beqz	$at,.L0f113f68
    # Line 441
    la	$t9,__iglooMalloc
.L0f113f2c:
    lw	$a2,8($s5)
    beqz	$a2,.L0f113f5c
    ld	$s7,8($sp)
.L0f113f38:
    # Line 447
    lw	$v0,0($s5)
    beqzl	$v0,.L0f113f84
    sd	$ra,16($sp)
.L0f113f44:
    # Line 455
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f113f50:
    # Line 438
    lw	$v1,11404($a1)
    b	.L0f113f20
    sw	$v1,11400($a1)
.L0f113f5c:
    # Line 447
    lw	$a2,12($s5)
    b	.L0f113f38
    sw	$a2,8($s5)
.L0f113f68:
    # Line 441
    lw	$a0,8($s7)
    sd	$ra,16($sp)
    jalr	$t9
    sll	$a0,$a0,0x2
    sw	$v0,0($s7)
    b	.L0f113f2c
    ld	$ra,16($sp)
.L0f113f84:
    # Line 450
    la	$t9,__iglooMalloc
    sll	$a0,$a2,0x4
    addu	$a0,$a0,$a2
    jalr	$t9
    sll	$a0,$a0,0x2
    sw	$v0,0($s5)
    b	.L0f113f44
    ld	$ra,16($sp)
.end checkInitDataPools

# Function: __iglooSyncConcavePmode
# Declared: Line 457 (Source lines: 458-481)
# Address: 0x0f113fa4 - 0x0f114060 (Size: 188 bytes, Frame: 32)
.globl __iglooSyncConcavePmode
.ent __iglooSyncConcavePmode
__iglooSyncConcavePmode:
    # Line 458
    addiu	$sp,$sp,-32
    sd	$s7,0($sp)
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-3420 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 459
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$at,3180($s7)
    beqz	$at,.L0f114024
    # Line 468
    la	$t9,gluNewTess
    lw	$a0,3180($s7)
.L0f113fd4:
    lw	$v1,276($s7)
    lw	$v1,24($v1)
    li	$a1,3
    bne	$v1,$a1,.L0f113ffc
    # Line 479
    move	$a2,$zero
    # Line 468
    lw	$a1,3160($s7)
    li	$a2,1
    beq	$a1,$a2,.L0f114040
    sd	$ra,16($sp)
    # Line 479
    move	$a2,$zero
.L0f113ffc:
    ld	$s7,0($sp)
    la	$t9,gluTessCallback
    sd	$ra,16($sp)
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8708
    ld	$ra,16($sp)
.L0f114018:
    ld	$gp,8($sp)
    # Line 481
    jr	$ra
    addiu	$sp,$sp,32
.L0f114024:
    sd	$ra,16($sp)
    # Line 468
    jalr	$t9
    nop
    move	$a0,$v0
    sw	$v0,3180($s7)
    b	.L0f113fd4
    ld	$ra,16($sp)
.L0f114040:
    # Line 474
    la	$a2,glEdgeFlag
    la	$t9,gluTessCallback
    ld	$s7,0($sp)
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8708
    b	.L0f114018
    ld	$ra,16($sp)
.end __iglooSyncConcavePmode

# Function: __gl_concave
# Declared: Line 485 (Source lines: 486-554)
# Address: 0x0f114060 - 0x0f11421c (Size: 444 bytes, Frame: 48)
.globl __gl_concave
.ent __gl_concave
__gl_concave:
    # Line 486
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$a2,0xfff2
    addiu	$a2,$a2,-3608
    addu	$gp,$t9,$a2
    # Line 487
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    sd	$s0,8($sp)
    # Line 488
    li	$a2,1
    addiu	$v0,$a1,11392
    bne	$a0,$a2,.L0f11418c
    # Line 487
    move	$s0,$a1
    # Line 495
    sw	$a2,3160($a1)
    sd	$ra,24($sp)
    # Line 497
    lw	$a3,3180($s0)
    sd	$v0,0($sp)
    sw	$zero,3164($s0)
    beqz	$a3,.L0f1141f0
    # Line 496
    sw	$zero,11476($s0)
.L0f1140ac:
    # Line 505
    la	$t9,sub_0f110000
    addiu	$t9,$t9,16124
    bal initDataPool
    nop
    # Line 508
    lw	$a0,3180($s0)
    la	$t9,gluTessCallback
    la	$a2,simpleBegin
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8704
    # Line 509
    lw	$a0,3180($s0)
    la	$t9,gluTessCallback
    la	$a2,vertexCallbackFunc
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8705
    # Line 510
    lw	$a0,3180($s0)
    la	$t9,gluTessCallback
    la	$a2,simpleEnd
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8706
    # Line 512
    la	$t9,initDataPool
    bal initDataPool
    nop
    # Line 516
    ld	$at,0($sp)
    # Line 519
    la	$t9,sub_0f110000
    # Line 516
    li	$ra,52
    sw	$ra,4($at)
    # Line 519
    addiu	$t9,$t9,15164
    bal __iglooInitLightColorProcs
    # Line 517
    sw	$zero,11380($s0)
    # Line 519
    lw	$a0,3180($s0)
    beqz	$a0,.L0f114204
.L0f114134:
    # Line 531
    la	$t9,gluTessCallback
    la	$a2,simpleBegin
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8704
    la	$a2,vertexCallbackFunc
    # Line 532
    la	$t9,gluTessCallback
    lw	$a0,3180($s0)
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8705
    la	$a2,simpleEnd
    # Line 533
    la	$t9,gluTessCallback
    lw	$a0,3180($s0)
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x8706
    # Line 535
    la	$t9,__iglooSyncConcavePmode
    bal __iglooSyncConcavePmode
    ld	$s0,8($sp)
    b	.L0f1141d4
    ld	$ra,24($sp)
.L0f11418c:
    # Line 542
    la	$t9,__iglooSyncConcavePmode
    sd	$ra,24($sp)
    bal __iglooSyncConcavePmode
    # Line 539
    sw	$zero,3160($a1)
    # Line 544
    la	$t9,__iglooSetColorProcsLight
    bal __iglooSetColorProcsLight
    move	$a0,$s0
    # Line 546
    la	$t9,__iglooPickDefaultVertexProcs
    jalr	$t9
    move	$a0,$s0
    # Line 547
    la	$t9,__iglooPickDefaultTexCoordProcs
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    # Line 548
    lw	$a3,2908($s0)
    lw	$a4,192($s0)
    beqz	$a3,.L0f1141e4
    sw	$a4,212($s0)
.L0f1141d4:
    ld	$gp,16($sp)
    # Line 554
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1141e4:
    # Line 551
    la	$at,simpleBegin
    b	.L0f1141d4
    sw	$at,216($s0)
.L0f1141f0:
    # Line 500
    la	$t9,gluNewTess
    jalr	$t9
    nop
    b	.L0f1140ac
    sw	$v0,3180($s0)
.L0f114204:
    # Line 525
    la	$t9,gluNewTess
    jalr	$t9
    nop
    move	$a0,$v0
    b	.L0f114134
    sw	$v0,3180($s0)
.end __gl_concave

# Function: gl_i_concave
# Declared: Line 557 (Source lines: 557-557)
# Address: 0x0f11421c - 0x0f11426c (Size: 80 bytes, Frame: 48)
.globl gl_i_concave
.ent gl_i_concave
gl_i_concave:
    # Line 557
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-4052 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f114250
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f114250:
    la	$t9,__gl_concave
    bal __gl_concave
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_concave

# Function: gl_c_concave
# Declared: Line 557 (Source lines: 557-557)
# Address: 0x0f11426c - 0x0f1142e0 (Size: 116 bytes, Frame: 192)
.globl gl_c_concave
.ent gl_c_concave
gl_c_concave:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-4132 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19980($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1142c4
    move	$s8,$a0
.L0f114294:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_concave
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1142c4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-22328
    li	$a1,1
    b	.L0f114294
    sw	$a1,-19980($gp)
.end gl_c_concave

# Function: gl_n_concave
# Declared: Line 557 (Source lines: 557-557)
# Address: 0x0f1142e0 - 0x0f11433c (Size: 92 bytes, Frame: 48)
.globl gl_n_concave
.ent gl_n_concave
gl_n_concave:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-4248 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f114318
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f114318:
    la	$t9,__gl_concave
    bal __gl_concave
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_concave

