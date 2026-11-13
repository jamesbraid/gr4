# Source: ../igloo/glws/vismgr.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/vismgr.c -o vismgr.T
# Total Functions: 10

.text

# Function: __iglooGetVisualInfo
# Declared: Line 30 (Source lines: 31-42)
# Address: 0x0f12647c - 0x0f1264d0 (Size: 84 bytes, Frame: 16)
.globl __iglooGetVisualInfo
.ent __iglooGetVisualInfo
__iglooGetVisualInfo:
    # Line 31
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-12852 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 34
    la	$t9,__iglooGetCurrentContextInfo
    sd	$ra,8($sp)
    jalr	$t9
    nop
    bnez	$v0,.L0f1264bc
    move	$a2,$v0
    ld	$gp,0($sp)
    # Line 39
    ld	$ra,8($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16
.L0f1264bc:
    ld	$gp,0($sp)
    # Line 42
    ld	$ra,8($sp)
    lw	$v0,20($a2)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooGetVisualInfo

# Function: __iglooIsGlUseGlx
# Declared: Line 46 (Source lines: 47-62)
# Address: 0x0f1264d0 - 0x0f126518 (Size: 72 bytes, Frame: 48)
.ent __iglooIsGlUseGlx
__iglooIsGlUseGlx:
    # Line 47
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 49
    beqz	$a0,.L0f126508
    move	$s0,$zero
    beqz	$a1,.L0f126508
    # Line 55
    la	$t9,glXGetConfig
    addiu	$a3,$sp,0
    sd	$ra,16($sp)
    jalr	$t9
    li	$a2,1
    li	$at,3
    beq	$v0,$at,.L0f126508
    ld	$ra,16($sp)
    # Line 57
    lw	$s0,0($sp)
.L0f126508:
    # Line 62
    move	$v0,$s0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooIsGlUseGlx

# Function: __iglooGetFullVisualInfo
# Declared: Line 66 (Source lines: 67-218)
# Address: 0x0f126518 - 0x0f126a04 (Size: 1260 bytes, Frame: 0)
.globl __iglooGetFullVisualInfo
.ent __iglooGetFullVisualInfo
__iglooGetFullVisualInfo:
    # Line 84
    li	$a1,108
    # Line 67
    move	$v0,$s8
    addiu	$sp,$sp,-256
    addiu	$s8,$sp,256
    sd	$v0,-200($s8)
    sd	$zero,-208($s8)
    sd	$s1,-168($s8)
    move	$s1,$a0
    # Line 84
    addiu	$a0,$a0,144
    sd	$ra,-88($s8)
    sd	$s5,-176($s8)
    sd	$s0,-184($s8)
    # Line 67
    lui	$at,0xfff1
    addiu	$at,$at,-13008
    sd	$gp,-192($s8)
    # addu	gp,t9,at (gp setup)
    # Line 84
    la	$t9,bzero
    # Line 69
    lw	$s0,8($s1)
    # Line 68
    lw	$s5,4($s1)
    # Line 84
    jalr	$t9
    # Line 82
    sw	$s0,-56($s8)
    # Line 85
    la	$t9,bzero
    li	$a1,88
    jalr	$t9
    addiu	$a0,$s1,20
    # Line 90
    addiu	$a3,$s1,148
    addiu	$a2,$s8,-64
    li	$a1,2
    la	$t9,XGetVisualInfo
    # Line 89
    lw	$v1,8($s1)
    # Line 90
    move	$a0,$s5
    jalr	$t9
    # Line 89
    sw	$v1,144($s1)
    # Line 90
    sw	$v0,152($s1)
    # Line 93
    sll	$a5,$s0,0x2
    lw	$v1,140($s5)
    addu	$a5,$a5,$s0
    sll	$a5,$a5,0x4
    addu	$v1,$v1,$a5
    lw	$v1,12($v1)
    sw	$v1,164($s1)
    # Line 94
    lw	$at,140($s5)
    addu	$at,$at,$a5
    lw	$at,16($at)
    sw	$at,168($s1)
    # Line 95
    lw	$ra,140($s5)
    addu	$ra,$ra,$a5
    lw	$ra,20($ra)
    sw	$ra,172($s1)
    # Line 96
    lw	$a4,140($s5)
    addu	$a4,$a4,$a5
    lw	$a4,24($a4)
    ld	$ra,-88($s8)
    beqz	$v0,.L0f1267a4
    sw	$a4,176($s1)
    sd	$s2,-248($s8)
    # Line 108
    li	$a1,255
    sd	$zero,-144($s8)
    sd	$zero,-136($s8)
    sd	$zero,-128($s8)
    sd	$zero,-120($s8)
    sd	$zero,-152($s8)
    sd	$zero,-96($s8)
    # Line 96
    lw	$a2,148($s1)
    # Line 108
    la	$t9,memset
    # Line 96
    li	$t0,-16
    sll	$a2,$a2,0x2
    addiu	$a7,$a2,15
    and	$a7,$a7,$t0
    subu	$sp,$sp,$a7
    # Line 103
    move	$a6,$sp
    # Line 108
    move	$a0,$sp
    jalr	$t9
    sd	$sp,-112($s8)
    sd	$s4,-232($s8)
    sd	$s6,-224($s8)
    sd	$s7,-216($s8)
    # Line 111
    lw	$a1,148($s1)
    sd	$zero,-104($s8)
    move	$s0,$zero
    blez	$a1,.L0f1266bc
    lw	$s2,152($s1)
    sd	$s3,-240($s8)
    move	$s4,$zero
    li	$s7,3
    b	.L0f126690
    li	$s6,4
.L0f126674:
    # Line 114
    beqz	$a2,.L0f126844
    la	$t9,sub_0f120000
.L0f12667c:
    # Line 111
    addiu	$s0,$s0,1
    addiu	$s2,$s2,40
    slt	$a4,$s0,$a1
    beqz	$a4,.L0f1266ac
    addiu	$s4,$s4,4
.L0f126690:
    lw	$a2,16($s2)
    beq	$a2,$s6,.L0f1266a4
    move	$s3,$zero
    bne	$a2,$s7,.L0f126674
    # Line 114
    li	$a2,1
.L0f1266a4:
    b	.L0f126674
    move	$a2,$zero
.L0f1266ac:
    ld	$s7,-216($s8)
    ld	$s6,-224($s8)
    ld	$s4,-232($s8)
    ld	$s3,-240($s8)
.L0f1266bc:
    # Line 111
    la	$s0,sub_0f120000
    # Line 187
    ld	$a0,-96($s8)
    ld	$s2,-248($s8)
    # Line 111
    addiu	$s0,$s0,27140
    # Line 187
    bal __iglooGetFullVisualInfo
    move	$t9,$s0
    sw	$v0,24($s1)
    # Line 188
    ld	$a0,-152($s8)
    bal __iglooGetFullVisualInfo
    move	$t9,$s0
    sw	$v0,64($s1)
    # Line 189
    ld	$a0,-120($s8)
    bal __iglooGetFullVisualInfo
    move	$t9,$s0
    sw	$v0,32($s1)
    # Line 190
    ld	$a0,-128($s8)
    bal __iglooGetFullVisualInfo
    move	$t9,$s0
    sw	$v0,48($s1)
    # Line 191
    ld	$a0,-136($s8)
    bal __iglooGetFullVisualInfo
    move	$t9,$s0
    sw	$v0,40($s1)
    # Line 192
    ld	$a0,-144($s8)
    bal __iglooGetFullVisualInfo
    move	$t9,$s0
    sd	$s3,-240($s8)
    # Line 197
    lw	$a1,148($s1)
    move	$s0,$zero
    # Line 192
    sw	$v0,56($s1)
    # Line 197
    blez	$a1,.L0f126788
    ld	$ra,-88($s8)
    li	$v0,-1
    sd	$s4,-232($s8)
    ld	$s3,-112($s8)
    move	$s2,$zero
    sd	$s6,-224($s8)
    la	$s6,sub_0f120000
    sd	$s7,-216($s8)
    addiu	$s7,$s1,164
    sd	$s7,-160($s8)
    la	$s7,sub_0f120000
    addiu	$s6,$s6,27800
    b	.L0f1267d4
    addiu	$s7,$s7,27312
.L0f126770:
    ld	$s7,-216($s8)
    ld	$ra,-88($s8)
    ld	$s6,-224($s8)
    ld	$s4,-232($s8)
    ld	$s3,-240($s8)
    ld	$s2,-248($s8)
.L0f126788:
    ld	$s0,-184($s8)
    ld	$at,-104($s8)
    ld	$s5,-176($s8)
    beqz	$at,.L0f1267a4
    ld	$s1,-168($s8)
    # Line 216
    li	$v1,1
    sd	$v1,-208($s8)
.L0f1267a4:
    ld	$v0,-208($s8)
    ld	$gp,-192($s8)
    # Line 218
    ld	$s0,-184($s8)
    ld	$s1,-168($s8)
    ld	$s5,-176($s8)
    ld	$a4,-200($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L0f1267c8:
    # Line 197
    slt	$a5,$s0,$a1
    beqz	$a5,.L0f126770
    addiu	$s2,$s2,40
.L0f1267d4:
    # Line 198
    lw	$a3,0($s3)
    # Line 197
    addiu	$s0,$s0,1
    # Line 198
    beq	$a3,$v0,.L0f1267c8
    # Line 197
    addiu	$s3,$s3,4
    # Line 201
    sll	$ra,$a3,0x3
    addu	$ra,$ra,$s1
    lw	$t9,20($ra)
    # Line 202
    move	$a0,$s5
    # Line 201
    lw	$s4,24($ra)
    addiu	$t9,$t9,1
    sw	$t9,20($ra)
    sll	$t8,$t9,0x2
    addu	$t8,$t8,$t9
    # Line 202
    move	$t9,$s6
    lw	$a1,152($s1)
    # Line 201
    sll	$t8,$t8,0x4
    addu	$s4,$s4,$t8
    addiu	$s4,$s4,-80
    # Line 202
    addu	$a1,$a1,$s2
    bal __iglooFreeFullVisualInfoData
    move	$a2,$s4
    ld	$a0,-160($s8)
    # Line 203
    move	$a1,$s4
    bal __iglooFreeFullVisualInfoData
    move	$t9,$s7
    li	$v0,-1
    b	.L0f1267c8
    lw	$a1,148($s1)
.L0f126844:
    # Line 118
    move	$a0,$s5
    addiu	$t9,$t9,25808
    bal __iglooGetVisualInfo
    move	$a1,$s2
    beqz	$v0,.L0f1268c0
    addiu	$a3,$s8,-68
    # Line 122
    la	$t9,glXGetConfig
    move	$a0,$s5
    move	$a1,$s2
    jalr	$t9
    li	$a2,3
    lw	$at,-68($s8)
    bltz	$at,.L0f1268c0
    addiu	$a3,$s8,-80
    # Line 128
    la	$t9,glXGetConfig
    move	$a0,$s5
    move	$a1,$s2
    jalr	$t9
    li	$a2,35
    li	$v1,2
    beq	$v0,$v1,.L0f1268b8
    # Line 134
    lw	$at,-68($s8)
    lw	$s3,-80($s8)
    slt	$at,$zero,$at
    li	$v1,0x8000
    xor	$s3,$s3,$v1
    sltu	$s3,$zero,$s3
    xor	$s3,$s3,$at
    sltu	$s3,$zero,$s3
.L0f1268b8:
    beqz	$s3,.L0f1268c8
    addiu	$a3,$s8,-72
.L0f1268c0:
    b	.L0f12667c
    # Line 179
    lw	$a1,148($s1)
.L0f1268c8:
    # Line 139
    la	$t9,glXGetConfig
    move	$a0,$s5
    move	$a1,$s2
    jalr	$t9
    li	$a2,4
    lw	$a4,-72($s8)
    beqz	$a4,.L0f126964
    lw	$a5,-68($s8)
    beqz	$a5,.L0f126964
    # Line 140
    li	$a1,1
.L0f1268f0:
    bnez	$a1,.L0f1268c0
    addiu	$a3,$s8,-76
    # Line 144
    la	$t9,glXGetConfig
    move	$a0,$s5
    move	$a1,$s2
    jalr	$t9
    li	$a2,5
    lw	$a2,-76($s8)
    beqz	$a2,.L0f12696c
    lw	$at,-68($s8)
    beqz	$at,.L0f12696c
    # Line 145
    li	$a1,1
.L0f126920:
    bnez	$a1,.L0f1268c0
    # Line 148
    ld	$v1,-104($s8)
    # Line 151
    lw	$a1,-68($s8)
    # Line 148
    addiu	$v1,$v1,1
    # Line 151
    beqz	$a1,.L0f126974
    sd	$v1,-104($s8)
    li	$a4,1
    beq	$a1,$a4,.L0f12699c
    li	$a5,2
    bne	$a1,$a5,.L0f1268c0
    # Line 176
    ld	$at,-112($s8)
    ld	$v1,-96($s8)
    addu	$at,$s4,$at
    # Line 177
    addiu	$v1,$v1,1
    sd	$v1,-96($s8)
    b	.L0f1268c0
    # Line 176
    sw	$zero,0($at)
.L0f126964:
    b	.L0f1268f0
    # Line 140
    move	$a1,$zero
.L0f12696c:
    b	.L0f126920
    # Line 145
    move	$a1,$zero
.L0f126974:
    # Line 153
    lw	$a4,-72($s8)
    ld	$s3,-112($s8)
    beqz	$a4,.L0f1269bc
    addu	$s3,$s4,$s3
    beqz	$a2,.L0f1269d4
    ld	$at,-144($s8)
    # Line 155
    sw	$s6,0($s3)
    # Line 156
    addiu	$at,$at,1
    b	.L0f1268c0
    sd	$at,-144($s8)
.L0f12699c:
    # Line 172
    ld	$a4,-112($s8)
    # Line 173
    ld	$a5,-152($s8)
    li	$v1,5
    # Line 172
    addu	$a4,$s4,$a4
    # Line 173
    addiu	$a5,$a5,1
    sd	$a5,-152($s8)
    # Line 174
    b	.L0f1268c0
    # Line 172
    sw	$v1,0($a4)
.L0f1269bc:
    # Line 159
    beqz	$a2,.L0f1269ec
    ld	$at,-128($s8)
    # Line 163
    sw	$s7,0($s3)
    # Line 164
    addiu	$at,$at,1
    b	.L0f1268c0
    sd	$at,-128($s8)
.L0f1269d4:
    # Line 159
    ld	$a4,-136($s8)
    li	$v1,2
    # Line 158
    sw	$v1,0($s3)
    # Line 159
    addiu	$a4,$a4,1
    b	.L0f1268c0
    sd	$a4,-136($s8)
.L0f1269ec:
    # Line 167
    ld	$at,-120($s8)
    li	$a5,1
    # Line 166
    sw	$a5,0($s3)
    # Line 167
    addiu	$at,$at,1
    b	.L0f1268c0
    sd	$at,-120($s8)
.end __iglooGetFullVisualInfo

# Function: MakeArrayOfVisualInfo
# Declared: Line 221 (Source lines: 222-239)
# Address: 0x0f126a04 - 0x0f126a70 (Size: 108 bytes, Frame: 48)
.ent MakeArrayOfVisualInfo
MakeArrayOfVisualInfo:
    # Line 222
    addiu	$sp,$sp,-48
    beqz	$a0,.L0f126a64
    move	$v0,$a0
    sd	$ra,16($sp)
    # Line 233
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    sll	$a0,$v0,0x2
    addu	$a0,$a0,$v0
    sll	$a0,$a0,0x4
    addiu	$a1,$a1,22736
    jalr	$t9
    sd	$a0,8($sp)
    bnez	$v0,.L0f126a44
    ld	$ra,16($sp)
.L0f126a3c:
    # Line 239
    jr	$ra
    addiu	$sp,$sp,48
.L0f126a44:
    # Line 237
    la	$t9,bzero
    sd	$v0,0($sp)
    move	$a0,$v0
    jalr	$t9
    ld	$a1,8($sp)
    ld	$v0,0($sp)
    b	.L0f126a3c
    ld	$ra,16($sp)
.L0f126a64:
    # Line 227
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.end MakeArrayOfVisualInfo

# Function: __iglooFreeFullVisualInfoData
# Declared: Line 242 (Source lines: 243-265)
# Address: 0x0f126a70 - 0x0f126ab0 (Size: 64 bytes, Frame: 32)
.globl __iglooFreeFullVisualInfoData
.ent __iglooFreeFullVisualInfoData
__iglooFreeFullVisualInfoData:
    # Line 243
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff1
    addiu	$at,$at,-14376
    beqz	$a0,.L0f126aa4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    lw	$a2,8($a0)
    beqz	$a2,.L0f126aa4
    # Line 252
    la	$t9,XFree
    sd	$ra,8($sp)
    jalr	$t9
    move	$a0,$a2
    ld	$ra,8($sp)
.L0f126aa4:
    ld	$gp,0($sp)
    # Line 265
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooFreeFullVisualInfoData

# Function: SaveGDescValues
# Declared: Line 267 (Source lines: 268-367)
# Address: 0x0f126ab0 - 0x0f126c98 (Size: 488 bytes, Frame: 0)
.ent SaveGDescValues
SaveGDescValues:
    # Line 268
    lw	$a3,12($a1)
    # Line 348
    li	$v1,2
    # Line 268
    beqz	$a3,.L0f126b00
    # Line 338
    li	$v0,1
    blez	$a3,.L0f126bdc
    nop
    lw	$at,20($a1)
    bnez	$at,.L0f126bdc
    nop
    beql	$a3,$v0,.L0f126be4
    lw	$a2,68($a0)
    # Line 348
    bne	$a3,$v1,.L0f126bdc
    nop
    lw	$a3,8($a1)
    lw	$a2,72($a0)
    slt	$a2,$a2,$a3
    beqz	$a2,.L0f126bdc
    nop
    # Line 367
    jr	$ra
    # Line 351
    sw	$a3,72($a0)
.L0f126b00:
    # Line 268
    lw	$a3,20($a1)
    beqz	$a3,.L0f126bfc
    lw	$a3,16($a1)
    beqzl	$a3,.L0f126c68
    # Line 288
    lw	$at,52($a0)
    # Line 268
    lw	$a3,32($a1)
    lw	$at,36($a0)
    slt	$at,$at,$a3
    beqzl	$at,.L0f126b30
    # Line 279
    lw	$a3,36($a1)
    sw	$a3,36($a0)
    lw	$a3,36($a1)
.L0f126b30:
    lw	$v0,40($a0)
    slt	$v0,$v0,$a3
    beqzl	$v0,.L0f126b48
    # Line 282
    lw	$a3,40($a1)
    sw	$a3,40($a0)
    lw	$a3,40($a1)
.L0f126b48:
    lw	$v1,44($a0)
    slt	$v1,$v1,$a3
    beqzl	$v1,.L0f126b60
    # Line 285
    lw	$a3,44($a1)
    sw	$a3,44($a0)
    lw	$a3,44($a1)
.L0f126b60:
    lw	$a2,48($a0)
    slt	$a2,$a2,$a3
    beqzl	$a2,.L0f126b78
    # Line 315
    lw	$a3,48($a1)
    # Line 288
    sw	$a3,48($a0)
.L0f126b74:
    # Line 315
    lw	$a3,48($a1)
.L0f126b78:
    lw	$at,56($a0)
    slt	$at,$at,$a3
    beqzl	$at,.L0f126b90
    # Line 320
    lw	$a3,56($a1)
    sw	$a3,56($a0)
    lw	$a3,56($a1)
.L0f126b90:
    lw	$v0,60($a0)
    slt	$v0,$v0,$a3
    beqzl	$v0,.L0f126ba8
    # Line 329
    lw	$a3,52($a1)
    sw	$a3,60($a0)
    lw	$a3,52($a1)
.L0f126ba8:
    lw	$v1,64($a0)
    slt	$v1,$v1,$a3
    beqzl	$v1,.L0f126bc0
    # Line 332
    lw	$a2,76($a1)
    sw	$a3,64($a0)
    lw	$a2,76($a1)
.L0f126bc0:
    beqz	$a2,.L0f126bcc
    # Line 335
    li	$at,1
    sw	$at,80($a0)
.L0f126bcc:
    lw	$v0,24($a1)
    beqz	$v0,.L0f126bdc
    # Line 338
    li	$v1,1
    sw	$v1,84($a0)
.L0f126bdc:
    # Line 367
    jr	$ra
    nop
.L0f126be4:
    # Line 338
    lw	$a3,8($a1)
    slt	$a2,$a2,$a3
    beqz	$a2,.L0f126bdc
    nop
    # Line 367
    jr	$ra
    # Line 348
    sw	$a3,68($a0)
.L0f126bfc:
    # Line 293
    beqzl	$a3,.L0f126c80
    # Line 310
    lw	$v0,32($a0)
    # Line 293
    lw	$at,16($a0)
    lw	$a3,32($a1)
    slt	$at,$at,$a3
    beqzl	$at,.L0f126c20
    # Line 301
    lw	$v0,20($a0)
    sw	$a3,16($a0)
    lw	$v0,20($a0)
.L0f126c20:
    lw	$a3,36($a1)
    slt	$v0,$v0,$a3
    beqzl	$v0,.L0f126c38
    # Line 304
    lw	$v1,24($a0)
    sw	$a3,20($a0)
    lw	$v1,24($a0)
.L0f126c38:
    lw	$a3,40($a1)
    slt	$v1,$v1,$a3
    beqzl	$v1,.L0f126c50
    # Line 307
    lw	$a2,28($a0)
    sw	$a3,24($a0)
    lw	$a2,28($a0)
.L0f126c50:
    lw	$a3,44($a1)
    slt	$a2,$a2,$a3
    beqzl	$a2,.L0f126b78
    # Line 315
    lw	$a3,48($a1)
    # Line 310
    b	.L0f126b74
    sw	$a3,28($a0)
.L0f126c68:
    # Line 288
    lw	$a3,8($a1)
    slt	$at,$at,$a3
    beqzl	$at,.L0f126b78
    # Line 315
    lw	$a3,48($a1)
    # Line 293
    b	.L0f126b74
    sw	$a3,52($a0)
.L0f126c80:
    # Line 310
    lw	$a3,8($a1)
    slt	$v0,$v0,$a3
    beqzl	$v0,.L0f126b78
    # Line 315
    lw	$a3,48($a1)
    b	.L0f126b74
    sw	$a3,32($a0)
.end SaveGDescValues

# Function: GetVisualInfo
# Declared: Line 369 (Source lines: 371-419)
# Address: 0x0f126c98 - 0x0f126ea0 (Size: 520 bytes, Frame: 192)
.ent GetVisualInfo
GetVisualInfo:
    # Line 371
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$s2,0($sp)
    move	$s2,$a0
    # Line 376
    move	$a0,$a2
    sd	$s1,24($sp)
    la	$t9,bzero
    # Line 371
    move	$s1,$a1
    sd	$ra,16($sp)
    # Line 376
    jalr	$t9
    li	$a1,80
    # Line 380
    addiu	$a3,$s0,16
    li	$a2,4
    la	$t9,glXGetConfig
    move	$a1,$s1
    move	$a0,$s2
    jalr	$t9
    # Line 378
    sw	$s1,0($s0)
    # Line 381
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,12
    jalr	$t9
    li	$a2,3
    # Line 382
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,20
    jalr	$t9
    li	$a2,5
    # Line 383
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,24
    jalr	$t9
    li	$a2,6
    # Line 384
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,48
    jalr	$t9
    li	$a2,12
    # Line 385
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,52
    jalr	$t9
    li	$a2,13
    lw	$at,16($s0)
    beqz	$at,.L0f126e74
    # Line 391
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,32
    jalr	$t9
    li	$a2,8
    # Line 392
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,36
    jalr	$t9
    li	$a2,9
    # Line 393
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,40
    jalr	$t9
    li	$a2,10
    # Line 394
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,44
    jalr	$t9
    li	$a2,11
    # Line 395
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,56
    jalr	$t9
    li	$a2,14
    # Line 396
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,60
    jalr	$t9
    li	$a2,15
    # Line 397
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,64
    jalr	$t9
    li	$a2,16
    # Line 398
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,68
    jalr	$t9
    li	$a2,17
    # Line 399
    move	$a0,$s2
    move	$a1,$s1
    la	$t9,glXGetConfig
    addiu	$a3,$s0,76
    lui	$a2,0x1
    jalr	$t9
    ori	$a2,$a2,0x86a0
    # Line 400
    move	$a0,$s2
    move	$a1,$s1
    la	$t9,glXGetConfig
    addiu	$a3,$s0,72
    lui	$a2,0x1
    jalr	$t9
    ori	$a2,$a2,0x86a1
    ld	$s1,24($sp)
    ld	$ra,16($sp)
    ld	$s0,8($sp)
    ld	$s2,0($sp)
.L0f126e6c:
    # Line 419
    jr	$ra
    addiu	$sp,$sp,64
.L0f126e74:
    # Line 402
    move	$a0,$s2
    la	$t9,glXGetConfig
    move	$a1,$s1
    addiu	$a3,$s0,8
    jalr	$t9
    li	$a2,2
    ld	$s1,24($sp)
    ld	$ra,16($sp)
    ld	$s0,8($sp)
    b	.L0f126e6c
    ld	$s2,0($sp)
.end GetVisualInfo

# Function: searchIVI
# Declared: Line 422 (Source lines: 424-431)
# Address: 0x0f126ea0 - 0x0f126ee0 (Size: 64 bytes, Frame: 0)
.ent searchIVI
searchIVI:
    # Line 424
    blez	$a1,.L0f126ed0
    sll	$a5,$a1,0x2
    move	$v0,$a0
    addu	$a5,$a5,$a1
    sll	$a5,$a5,0x4
    lw	$at,0($v0)
.L0f126eb8:
    lw	$at,4($at)
    beq	$at,$a2,.L0f126ed8
    # Line 427
    addu	$v1,$a5,$a0
    addiu	$v0,$v0,80
    bnel	$v1,$v0,.L0f126eb8
    # Line 424
    lw	$at,0($v0)
.L0f126ed0:
    # Line 431
    jr	$ra
    move	$v0,$zero
.L0f126ed8:
    # Line 429
    jr	$ra
    nop
.end searchIVI

# Function: __iglooGetVisualInfoFromVisualID
# Declared: Line 439 (Source lines: 441-466)
# Address: 0x0f126ee0 - 0x0f127030 (Size: 336 bytes, Frame: 48)
.globl __iglooGetVisualInfoFromVisualID
.ent __iglooGetVisualInfoFromVisualID
__iglooGetVisualInfoFromVisualID:
    # Line 441
    move	$a2,$a1
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    sd	$ra,24($sp)
    lui	$ra,0xfff1
    addiu	$ra,$ra,-15512
    addu	$gp,$t9,$ra
    la	$t9,sub_0f120000
    sd	$a1,0($sp)
    # Line 452
    lw	$a1,20($a0)
    # Line 441
    addiu	$t9,$t9,28320
    # Line 452
    bal __iglooFreeFullVisualInfoData
    lw	$a0,24($a0)
    beqz	$v0,.L0f126f2c
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f126f2c:
    # Line 453
    ld	$a0,8($sp)
    la	$t9,sub_0f120000
    ld	$a2,0($sp)
    lw	$a1,60($a0)
    addiu	$t9,$t9,28320
    bal __iglooFreeFullVisualInfoData
    lw	$a0,64($a0)
    beqz	$v0,.L0f126f5c
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f126f5c:
    # Line 454
    ld	$a0,8($sp)
    la	$t9,sub_0f120000
    ld	$a2,0($sp)
    lw	$a1,28($a0)
    addiu	$t9,$t9,28320
    bal __iglooFreeFullVisualInfoData
    lw	$a0,32($a0)
    beqz	$v0,.L0f126f8c
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f126f8c:
    # Line 455
    ld	$a0,8($sp)
    la	$t9,sub_0f120000
    ld	$a2,0($sp)
    lw	$a1,44($a0)
    addiu	$t9,$t9,28320
    bal __iglooFreeFullVisualInfoData
    lw	$a0,48($a0)
    beqz	$v0,.L0f126fbc
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f126fbc:
    # Line 456
    ld	$a0,8($sp)
    la	$t9,sub_0f120000
    ld	$a2,0($sp)
    lw	$a1,36($a0)
    addiu	$t9,$t9,28320
    bal __iglooFreeFullVisualInfoData
    lw	$a0,40($a0)
    beqz	$v0,.L0f126fec
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f126fec:
    # Line 457
    ld	$a0,8($sp)
    la	$t9,sub_0f120000
    ld	$a2,0($sp)
    lw	$a1,52($a0)
    addiu	$t9,$t9,28320
    bal __iglooFreeFullVisualInfoData
    lw	$a0,56($a0)
    beqz	$v0,.L0f12701c
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12701c:
    # Line 466
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooGetVisualInfoFromVisualID

# Function: __iglooChooseVisual
# Declared: Line 542 (Source lines: 543-728)
# Address: 0x0f127030 - 0x0f127678 (Size: 1608 bytes, Frame: 176)
.globl __iglooChooseVisual
.ent __iglooChooseVisual
__iglooChooseVisual:
    # Line 550
    move	$t3,$zero
    move	$t2,$zero
    move	$t8,$zero
    move	$a6,$zero
    move	$a4,$zero
    move	$a5,$zero
    move	$a7,$zero
    # Line 543
    addiu	$sp,$sp,-176
    sd	$s1,104($sp)
    # Line 550
    move	$s1,$zero
    lw	$t0,0($a1)
    # Line 543
    lui	$v0,0xfff1
    addiu	$v0,$v0,-15848
    # Line 550
    beqz	$t0,.L0f1270b8
    # Line 543
    addu	$at,$t9,$v0
    # Line 550
    li	$t1,4096
    b	.L0f127088
    nop
    # Line 557
    lw	$s1,8($a1)
.L0f12707c:
    # Line 582
    lw	$t0,12($a1)
.L0f127080:
    beqz	$t0,.L0f1270b8
    addiu	$a1,$a1,12
.L0f127088:
    # Line 550
    bnel	$t1,$t0,.L0f127080
    # Line 582
    lw	$t0,12($a1)
    # Line 550
    lw	$v0,-32680($at)
    lw	$t0,4($a1)
    addiu	$v0,$v0,22760
    sltiu	$v1,$t0,15
    sll	$t0,$t0,0x2
    beqz	$v1,.L0f12707c
    addu	$t0,$t0,$v0
    lw	$v0,0($t0)
    jr	$v0
    nop
.L0f1270b8:
    # Line 588
    lw	$t0,4($a0)
    lw	$v1,16($t0)
    beqz	$v1,.L0f1272ec
    move	$a1,$t0
    beqz	$a7,.L0f1272f8
    # Line 591
    lw	$a3,-32368($at)
    # Line 631
    lw	$a1,-32420($at)
    lw	$t9,0($a0)
.L0f1270d8:
    # Line 634
    sll	$a2,$a7,0x2
.L0f1270dc:
    subu	$a7,$a2,$a7
.L0f1270e0:
    beqz	$t8,.L0f127104
    slt	$a3,$a6,$a5
    beqz	$a3,.L0f1270f8
    # Line 642
    slt	$v0,$t2,$a4
    move	$a6,$a5
    slt	$v0,$t2,$a4
.L0f1270f8:
    beqzl	$v0,.L0f127108
    sd	$gp,144($sp)
    # Line 644
    move	$t2,$a4
.L0f127104:
    sd	$gp,144($sp)
.L0f127108:
    sd	$s6,136($sp)
    sd	$s2,128($sp)
    sd	$s8,120($sp)
    sd	$zero,80($sp)
    # Line 653
    move	$a5,$zero
    sll	$v0,$a6,0x1
    # Line 652
    lui	$t1,0xfffe
    # Line 653
    blez	$t9,.L0f1272cc
    # Line 652
    ori	$t1,$t1,0x7960
    # Line 653
    move	$a4,$t0
    sd	$t0,152($sp)
    lw	$s2,0($a1)
    sll	$s8,$t3,0x1
    sll	$gp,$t2,0x1
    sll	$s6,$t8,0x3
    b	.L0f1271d8
    sd	$v0,88($sp)
.L0f12714c:
    ld	$v1,88($sp)
    # Line 681
    addu	$a0,$v1,$a0
.L0f127154:
    # Line 683
    beqz	$t8,.L0f127260
    lw	$t0,76($a1)
    beqz	$t0,.L0f127278
    nop
    # Line 688
    addu	$a0,$s6,$a0
.L0f127168:
    # Line 692
    beqz	$t2,.L0f127248
    nop
    lw	$a2,52($a1)
    beqz	$a2,.L0f127280
    nop
    # Line 697
    addu	$a0,$gp,$a0
.L0f127180:
    # Line 701
    beqz	$t3,.L0f127250
    nop
.L0f127188:
    lw	$a2,60($a1)
    lw	$v1,68($a1)
    lw	$v0,64($a1)
    lw	$a3,56($a1)
    addu	$v0,$v0,$v1
    addu	$a3,$a3,$a2
    addu	$a3,$a3,$v0
    beqz	$a3,.L0f127288
    nop
    # Line 709
    addu	$a0,$s8,$a0
.L0f1271b0:
    # Line 653
    addiu	$a4,$a4,80
    # Line 713
    slt	$a3,$t1,$a0
    beqz	$a3,.L0f1271c8
    # Line 718
    move	$v0,$a5
    # Line 717
    move	$t1,$a0
    sd	$a5,80($sp)
.L0f1271c8:
    # Line 653
    addiu	$a5,$a5,1
    slt	$v1,$a5,$t9
    beqzl	$v1,.L0f1272bc
    ld	$s8,120($sp)
.L0f1271d8:
    # Line 654
    lw	$a2,16($a4)
    beqz	$a2,.L0f127268
    move	$a1,$a4
    # Line 657
    lw	$a3,36($a1)
    lw	$a2,32($a1)
    lw	$a0,40($a1)
    addu	$a2,$a2,$a3
    addu	$a0,$a0,$a2
    sd	$a0,112($sp)
    subu	$a0,$a0,$a7
    bltz	$a0,.L0f127290
    # Line 658
    move	$t0,$a0
.L0f127208:
    subu	$a0,$a7,$t0
    beqz	$s2,.L0f12729c
    sd	$a0,96($sp)
.L0f127214:
    # Line 662
    beqz	$s1,.L0f127270
    sll	$t0,$a0,0x2
    lw	$v0,24($a1)
    beqz	$v0,.L0f1272b4
    # Line 670
    addiu	$a0,$t0,64
.L0f127228:
    # Line 674
    beqz	$a6,.L0f127258
    lw	$t0,48($a1)
    slt	$v1,$t0,$a6
    beqz	$v1,.L0f12714c
    # Line 679
    subu	$a2,$a6,$t0
    sll	$a2,$a2,0x1
    b	.L0f127154
    subu	$a0,$a0,$a2
.L0f127248:
    # Line 701
    bnez	$t3,.L0f127188
    addiu	$a0,$a0,-1
.L0f127250:
    b	.L0f1271b0
    # Line 713
    addiu	$a0,$a0,-1
.L0f127258:
    b	.L0f127154
    # Line 683
    subu	$a0,$a0,$t0
.L0f127260:
    b	.L0f127168
    # Line 692
    subu	$a0,$a0,$t0
.L0f127268:
    b	.L0f127214
    # Line 662
    lw	$a0,8($a1)
.L0f127270:
    b	.L0f127228
    # Line 674
    addiu	$a0,$t0,-2
.L0f127278:
    b	.L0f127168
    # Line 690
    subu	$a0,$a0,$s6
.L0f127280:
    b	.L0f127180
    # Line 699
    subu	$a0,$a0,$t2
.L0f127288:
    b	.L0f1271b0
    # Line 711
    subu	$a0,$a0,$t3
.L0f127290:
    ld	$t0,112($sp)
    b	.L0f127208
    # Line 658
    subu	$t0,$a7,$t0
.L0f12729c:
    lw	$v0,44($a1)
    beqz	$v0,.L0f127214
    nop
    ld	$a0,96($sp)
    # Line 660
    b	.L0f127214
    addiu	$a0,$a0,2
.L0f1272b4:
    b	.L0f127228
    # Line 672
    addiu	$a0,$t0,-64
.L0f1272bc:
    ld	$s2,128($sp)
    ld	$s6,136($sp)
    ld	$gp,144($sp)
    ld	$t0,152($sp)
.L0f1272cc:
    ld	$v1,80($sp)
    # Line 728
    ld	$s1,104($sp)
    addiu	$sp,$sp,176
    sll	$v0,$v1,0x2
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x4
    jr	$ra
    addu	$v0,$v0,$t0
.L0f1272ec:
    # Line 634
    lw	$a1,-32420($at)
    b	.L0f1270e0
    lw	$t9,0($a0)
.L0f1272f8:
    # Line 591
    lw	$t1,-32420($at)
    sd	$s2,128($sp)
    lw	$a3,0($a3)
    lw	$s2,0($t1)
    lw	$a2,20($a1)
    lw	$a3,28($a3)
    move	$v1,$s2
    beqz	$a2,.L0f127380
    sd	$a3,32($sp)
    lw	$v0,-19772($at)
    lw	$t9,0($a0)
    beqz	$v0,.L0f1273b0
    sd	$v0,72($sp)
.L0f12732c:
    lw	$a1,-32420($at)
    # Line 599
    beqz	$v1,.L0f127474
    ld	$s2,128($sp)
.L0f127338:
    # Line 610
    bnez	$a7,.L0f1270dc
    # Line 634
    sll	$a2,$a7,0x2
    # Line 612
    b	.L0f1270d8
    ld	$a7,72($sp)
    # Line 561
    b	.L0f12707c
    # Line 560
    lw	$a6,8($a1)
    # Line 564
    b	.L0f12707c
    # Line 563
    lw	$a7,8($a1)
    # Line 567
    b	.L0f12707c
    # Line 566
    lw	$t8,8($a1)
    # Line 570
    b	.L0f12707c
    # Line 569
    lw	$a5,8($a1)
    # Line 573
    b	.L0f12707c
    # Line 572
    lw	$a4,8($a1)
    # Line 576
    b	.L0f12707c
    # Line 575
    lw	$t3,8($a1)
    b	.L0f12707c
    # Line 578
    lw	$t2,8($a1)
.L0f127380:
    # Line 612
    lw	$a2,-19776($at)
    lw	$t9,0($a0)
    beqz	$a2,.L0f127514
    sd	$a2,0($sp)
.L0f127390:
    lw	$a1,-32420($at)
    move	$a3,$s2
    # Line 618
    beqz	$a3,.L0f1275dc
    ld	$s2,128($sp)
.L0f1273a0:
    # Line 629
    bnez	$a7,.L0f1270dc
    # Line 634
    sll	$a2,$a7,0x2
    # Line 631
    b	.L0f1270d8
    ld	$a7,0($sp)
.L0f1273b0:
    # Line 591
    blez	$t9,.L0f12732c
    lw	$a0,-19772($at)
    ld	$t1,32($sp)
    li	$v0,1
    slt	$a2,$t9,$v0
    beqzl	$a2,.L0f1273cc
    move	$v0,$t9
.L0f1273cc:
    lw	$t1,220($t1)
    sd	$a0,72($sp)
    move	$a0,$a1
    lw	$v1,-19780($at)
    sd	$v0,24($sp)
    andi	$v0,$v0,0x1
    sd	$v1,48($sp)
    sll	$v1,$t9,0x2
    addu	$v1,$v1,$t9
    sll	$v1,$v1,0x4
    addu	$v1,$v1,$a1
    ld	$a1,48($sp)
    beqz	$v0,.L0f127448
    sd	$v1,40($sp)
    lw	$a3,48($a0)
    bne	$a3,$t1,.L0f127444
    ld	$a1,48($sp)
    lw	$v1,32($a0)
    ld	$v0,72($sp)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0f12742c
    sd	$v1,64($sp)
    ld	$a2,64($sp)
    sd	$a2,72($sp)
.L0f12742c:
    # Line 602
    lw	$a3,44($a0)
    sd	$a3,56($sp)
    slt	$a3,$a1,$a3
    beqzl	$a3,.L0f127448
    # Line 599
    addiu	$a0,$a0,80
    ld	$a1,56($sp)
.L0f127444:
    addiu	$a0,$a0,80
.L0f127448:
    ld	$v0,24($sp)
    sra	$v0,$v0,0x1
    bnezl	$v0,.L0f1274d8
    # Line 591
    lw	$v1,48($a0)
    # Line 599
    sw	$a1,-19780($at)
.L0f12745c:
    lw	$a1,-32420($at)
    move	$v1,$s2
    ld	$a2,72($sp)
    ld	$s2,128($sp)
    bnez	$v1,.L0f127338
    sw	$a2,-19772($at)
.L0f127474:
    # Line 610
    lw	$a7,-19780($at)
    b	.L0f127338
    ld	$s2,128($sp)
.L0f127480:
    # Line 591
    lw	$a3,128($a0)
.L0f127484:
    ld	$v0,72($sp)
    bne	$a3,$t1,.L0f1274c0
    # Line 599
    addiu	$a0,$a0,80
    # Line 591
    lw	$v1,32($a0)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0f1274a8
    sd	$v1,64($sp)
    ld	$a2,64($sp)
    sd	$a2,72($sp)
.L0f1274a8:
    # Line 602
    lw	$a3,44($a0)
    sd	$a3,56($sp)
    slt	$a3,$a1,$a3
    beqz	$a3,.L0f1274c4
    # Line 599
    ld	$v0,40($sp)
    ld	$a1,56($sp)
.L0f1274c0:
    ld	$v0,40($sp)
.L0f1274c4:
    addiu	$a0,$a0,80
    sltu	$v0,$a0,$v0
    beqzl	$v0,.L0f12745c
    sw	$a1,-19780($at)
    # Line 591
    lw	$v1,48($a0)
.L0f1274d8:
    bne	$v1,$t1,.L0f127480
    ld	$a2,72($sp)
    lw	$a3,32($a0)
    slt	$a2,$a2,$a3
    beqz	$a2,.L0f1274f8
    sd	$a3,64($sp)
    ld	$v0,64($sp)
    sd	$v0,72($sp)
.L0f1274f8:
    # Line 602
    lw	$v1,44($a0)
    sd	$v1,56($sp)
    slt	$v1,$a1,$v1
    beqzl	$v1,.L0f127484
    # Line 591
    lw	$a3,128($a0)
    b	.L0f127480
    ld	$a1,56($sp)
.L0f127514:
    # Line 612
    blez	$t9,.L0f127390
    li	$a2,1
    slt	$a3,$t9,$a2
    beqzl	$a3,.L0f127528
    move	$a2,$t9
.L0f127528:
    ld	$t1,32($sp)
    lw	$v1,-19780($at)
    lw	$v0,-19784($at)
    lw	$a0,-19776($at)
    sd	$v1,48($sp)
    sd	$v0,8($sp)
    sd	$a0,0($sp)
    move	$a0,$a1
    lw	$t1,220($t1)
    sd	$a2,16($sp)
    andi	$a2,$a2,0x1
    sll	$a3,$t9,0x2
    addu	$a3,$a3,$t9
    sll	$a3,$a3,0x4
    addu	$a3,$a3,$a1
    beqz	$a2,.L0f1275ac
    sd	$a3,40($sp)
    lw	$v0,48($a0)
    bnel	$v0,$t1,.L0f1275ac
    # Line 618
    addiu	$a0,$a0,80
    # Line 612
    lw	$a1,32($a0)
    ld	$v1,0($sp)
    slt	$v1,$v1,$a1
    beqz	$v1,.L0f127590
    # Line 621
    move	$a2,$a1
    sd	$a1,0($sp)
.L0f127590:
    lw	$a1,44($a0)
    ld	$a3,48($sp)
    slt	$a3,$a3,$a1
    beqz	$a3,.L0f1275a8
    # Line 623
    move	$v0,$a1
    sd	$a1,8($sp)
.L0f1275a8:
    # Line 618
    addiu	$a0,$a0,80
.L0f1275ac:
    ld	$v1,16($sp)
    sra	$v1,$v1,0x1
    bnezl	$v1,.L0f12763c
    # Line 612
    lw	$a3,48($a0)
    lw	$a1,-32420($at)
.L0f1275c0:
    move	$a2,$s2
    ld	$v0,0($sp)
    ld	$s2,128($sp)
    # Line 618
    ld	$a3,8($sp)
    sw	$v0,-19776($at)
    bnez	$a2,.L0f1273a0
    sw	$a3,-19784($at)
.L0f1275dc:
    # Line 629
    lw	$a7,-19784($at)
    b	.L0f1273a0
    ld	$s2,128($sp)
.L0f1275e8:
    # Line 612
    lw	$v1,128($a0)
.L0f1275ec:
    ld	$a2,0($sp)
    # Line 621
    ld	$v0,48($sp)
    # Line 612
    bne	$v1,$t1,.L0f127624
    # Line 618
    addiu	$a0,$a0,80
    # Line 612
    lw	$a1,32($a0)
    slt	$a2,$a2,$a1
    beqz	$a2,.L0f127610
    # Line 621
    move	$a3,$a1
    sd	$a1,0($sp)
.L0f127610:
    lw	$a1,44($a0)
    slt	$v0,$v0,$a1
    beqz	$v0,.L0f127624
    # Line 623
    move	$v1,$a1
    sd	$a1,8($sp)
.L0f127624:
    # Line 618
    ld	$a2,40($sp)
    addiu	$a0,$a0,80
    sltu	$a2,$a0,$a2
    beqz	$a2,.L0f1275c0
    lw	$a1,-32420($at)
    # Line 612
    lw	$a3,48($a0)
.L0f12763c:
    bnel	$a3,$t1,.L0f1275ec
    lw	$v1,128($a0)
    lw	$a1,32($a0)
    ld	$v0,0($sp)
    # Line 621
    ld	$a2,48($sp)
    # Line 612
    slt	$v0,$v0,$a1
    beqz	$v0,.L0f127660
    # Line 621
    move	$v1,$a1
    sd	$a1,0($sp)
.L0f127660:
    lw	$a1,44($a0)
    slt	$a2,$a2,$a1
    beqz	$a2,.L0f1275e8
    # Line 623
    move	$a3,$a1
    b	.L0f1275e8
    sd	$a1,8($sp)
.end __iglooChooseVisual

