# Source: ../igloo/glws/mex_window.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/mex_window.c -o mex_window.T
# Total Functions: 42

.text

# Function: _GLsetTabletScaling
# Declared: Line 112 (Source lines: 113-121)
# Address: 0x0f0eb87c - 0x0f0eb8b4 (Size: 56 bytes, Frame: 0)
.ent _GLsetTabletScaling
_GLsetTabletScaling:
    # Line 113
    la	$a2,sub_0f030000
    # Line 117
    la	$v1,_GLtabletScale
    # Line 113
    addiu	$a2,$a2,-26824
    addiu	$a3,$a2,24
    lw	$at,200($a2)
.L0f0eb890:
    bnel	$at,$a0,.L0f0eb8a4
    # Line 115
    addiu	$a2,$a2,8
    # Line 117
    lw	$v0,204($a2)
    # Line 121
    jr	$ra
    # Line 117
    sw	$v0,0($v1)
.L0f0eb8a4:
    # Line 115
    bnel	$a2,$a3,.L0f0eb890
    # Line 113
    lw	$at,200($a2)
    # Line 121
    jr	$ra
    nop
.end _GLsetTabletScaling

# Function: gl_ws_compat
# Declared: Line 127 (Source lines: 128-176)
# Address: 0x0f0eb8b4 - 0x0f0eb9a0 (Size: 236 bytes, Frame: 32)
.globl gl_ws_compat
.ent gl_ws_compat
gl_ws_compat:
    # Line 128
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,31124 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # la	t9,sub_0f020000
    sll	$a3,$a0,0x2
    sltiu	$at,$a0,16
    la	$t9,jtbl_0f024318
    beqz	$at,.L0f0eb904
    addu	$a3,$a3,$t9
    lw	$v0,0($a3)
    jr	$v0
    # Line 158
    la	$at,_GLnoDestAlpha
.L0f0eb8ec:
    # Line 155
    la	$t9,sub_0f0f0000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-18308
    bal gl_g_winattach
    move	$a0,$a1
    ld	$ra,8($sp)
.L0f0eb904:
    ld	$gp,0($sp)
    # Line 176
    jr	$ra
    addiu	$sp,$sp,32
.L0f0eb910:
    # Line 131
    la	$at,_GLsoftAttach
    # Line 132
    b	.L0f0eb904
    # Line 131
    sw	$a1,0($at)
.L0f0eb91c:
    # Line 134
    sltiu	$v0,$a1,1
    # Line 135
    b	.L0f0eb904
    # Line 134
    sw	$v0,-14680($gp)
.L0f0eb928:
    # Line 137
    la	$v1,_GLsyncmapcolors
    # Line 138
    b	.L0f0eb904
    # Line 137
    sw	$a1,0($v1)
.L0f0eb934:
    # Line 140
    la	$a2,_GLinputChangeBug
    # Line 141
    b	.L0f0eb904
    # Line 140
    sw	$a1,0($a2)
.L0f0eb940:
    # Line 144
    b	.L0f0eb904
    # Line 143
    sw	$a1,-20640($gp)
.L0f0eb948:
    # Line 146
    beqz	$a1,.L0f0eb994
    # Line 147
    la	$v0,_GLmotionThresh
    li	$v1,1000
    div	$zero,$v1,$a1
    teq	$a1,$zero,0x7
    mflo	$at
    b	.L0f0eb904
    sw	$at,0($v0)
.L0f0eb968:
    # Line 152
    la	$a2,_GLuseCIvisual
    # Line 153
    b	.L0f0eb904
    # Line 152
    sw	$a1,0($a2)
.L0f0eb974:
    # Line 159
    b	.L0f0eb904
    # Line 158
    sw	$a1,0($at)
.L0f0eb97c:
    # Line 161
    la	$v0,__iglooNoReleaseContext
    # Line 163
    b	.L0f0eb904
    # Line 161
    sw	$a1,0($v0)
.L0f0eb988:
    # Line 165
    la	$v1,__iglooFlushMode
    b	.L0f0eb904
    sw	$a1,0($v1)
.L0f0eb994:
    # Line 149
    la	$a2,_GLmotionThresh
    b	.L0f0eb904
    sw	$zero,0($a2)
.end gl_ws_compat

# Function: gl_g_foreground
# Declared: Line 184 (Source lines: 185-188)
# Address: 0x0f0eb9a0 - 0x0f0eb9dc (Size: 60 bytes, Frame: 16)
.globl gl_g_foreground
.ent gl_g_foreground
gl_g_foreground:
    # Line 185
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,30888 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 186
    la	$t9,_GLhintinit
    sd	$ra,0($sp)
    bal _GLhintinit
    move	$a0,$zero
    # Line 188
    ld	$ra,0($sp)
    # Line 187
    la	$v0,gl_putinbackground
    ld	$gp,8($sp)
    # Line 188
    addiu	$sp,$sp,16
    jr	$ra
    # Line 187
    sw	$zero,0($v0)
.end gl_g_foreground

# Function: _GLbecomeIconic
# Declared: Line 197 (Source lines: 198-225)
# Address: 0x0f0eb9dc - 0x0f0ebad4 (Size: 248 bytes, Frame: 192)
.globl _GLbecomeIconic
.ent _GLbecomeIconic
_GLbecomeIconic:
    # Line 198
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,30828 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 201
    la	$at,_GLblockWhenStowed
    sd	$a0,0($sp)
    sd	$s2,8($sp)
    lw	$at,0($at)
    lw	$s2,120($a0)
    sd	$s5,24($sp)
    beqz	$at,.L0f0ebab0
    # Line 199
    lbu	$s5,45($a0)
.L0f0eba10:
    # Line 207
    sll	$a1,$s5,0x2
    la	$at,sub_0f030000
    subu	$a1,$a1,$s5
    sll	$a1,$a1,0x2
    addiu	$at,$at,31352
    addu	$a1,$a1,$at
    lw	$v1,8($a1)
    # Line 209
    ld	$s5,24($sp)
    # Line 207
    ori	$v1,$v1,0x1
    bnez	$s2,.L0f0eba4c
    sw	$v1,8($a1)
    ld	$gp,16($sp)
    # Line 209
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0eba4c:
    # Line 211
    ld	$s5,0($sp)
    # Line 212
    move	$a0,$s2
    la	$t9,_GLbindcontext
    # Line 211
    lw	$a1,124($s5)
    sd	$ra,32($sp)
    # Line 212
    jalr	$t9
    # Line 211
    sw	$a1,124($s2)
    # Line 212
    la	$at,gl_wstatep
    lw	$a0,124($s5)
    lw	$at,0($at)
    beq	$at,$a0,.L0f0eba90
    ld	$ra,32($sp)
.L0f0eba7c:
    ld	$gp,16($sp)
    # Line 225
    ld	$s2,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0eba90:
    # Line 222
    la	$t9,_GLsetcontext
    jalr	$t9
    nop
    # Line 223
    la	$t9,gconfig
    jalr	$t9
    nop
    b	.L0f0eba7c
    ld	$ra,32($sp)
.L0f0ebab0:
    # Line 204
    move	$a2,$zero
    li	$a0,539
    la	$t9,_GLpostEvent
    sd	$ra,32($sp)
    dsll32	$a1,$s5,0x10
    bal _GLpostEvent
    dsra32	$a1,$a1,0x10
    b	.L0f0eba10
    ld	$ra,32($sp)
.end _GLbecomeIconic

# Function: _GLbecomeNormal
# Declared: Line 227 (Source lines: 228-253)
# Address: 0x0f0ebad4 - 0x0f0ebbd4 (Size: 256 bytes, Frame: 192)
.globl _GLbecomeNormal
.ent _GLbecomeNormal
_GLbecomeNormal:
    # Line 228
    addiu	$sp,$sp,-64
    sd	$s5,24($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,30580 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 231
    la	$at,_GLblockWhenStowed
    # Line 228
    move	$s5,$a0
    sd	$s8,0($sp)
    # Line 231
    lw	$at,0($at)
    lw	$s8,120($a0)
    sd	$s7,8($sp)
    beqz	$at,.L0f0ebbb0
    # Line 229
    lbu	$s7,45($a0)
.L0f0ebb0c:
    # Line 236
    sll	$a1,$s7,0x2
    la	$at,sub_0f030000
    subu	$a1,$a1,$s7
    sll	$a1,$a1,0x2
    addiu	$at,$at,31352
    addu	$a1,$a1,$at
    lw	$v1,8($a1)
    # Line 238
    ld	$s7,8($sp)
    # Line 236
    li	$at,-2
    and	$v1,$v1,$at
    bnez	$s8,.L0f0ebb50
    sw	$v1,8($a1)
    ld	$gp,16($sp)
    # Line 238
    ld	$s5,24($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ebb50:
    # Line 240
    la	$t9,_GLbindcontext
    move	$a0,$s5
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a1,124($s5)
    la	$at,gl_wstatep
    lw	$a0,124($s5)
    lw	$at,0($at)
    beq	$at,$a0,.L0f0ebb90
    ld	$ra,32($sp)
.L0f0ebb78:
    ld	$gp,16($sp)
    # Line 253
    ld	$s5,24($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ebb90:
    # Line 250
    la	$t9,_GLsetcontext
    jalr	$t9
    nop
    # Line 251
    la	$t9,gconfig
    jalr	$t9
    nop
    b	.L0f0ebb78
    ld	$ra,32($sp)
.L0f0ebbb0:
    # Line 234
    move	$a2,$zero
    li	$a0,540
    la	$t9,_GLpostEvent
    sd	$ra,32($sp)
    dsll32	$a1,$s7,0x10
    bal _GLpostEvent
    dsra32	$a1,$a1,0x10
    b	.L0f0ebb0c
    ld	$ra,32($sp)
.end _GLbecomeNormal

# Function: _mex_findslot
# Declared: Line 255 (Source lines: 256-264)
# Address: 0x0f0ebbd4 - 0x0f0ebc48 (Size: 116 bytes, Frame: 0)
.globl _mex_findslot
.ent _mex_findslot
_mex_findslot:
    # Line 258
    li	$a5,256
    # Line 256
    lui	$v1,0xfff4
    addiu	$v1,$v1,30324
    addu	$at,$t9,$v1
    # Line 258
    lw	$a4,-32676($at)
    li	$v0,1
    b	.L0f0ebc0c
    addiu	$a4,$a4,31364
    # Line 260
    lw	$a1,4($a4)
.L0f0ebbf8:
    beqz	$a1,.L0f0ebc40
    nop
    # Line 258
    addiu	$v0,$v0,1
.L0f0ebc04:
    beq	$v0,$a5,.L0f0ebc30
    addiu	$a4,$a4,12
.L0f0ebc0c:
    beqzl	$a0,.L0f0ebbf8
    # Line 260
    lw	$a1,4($a4)
    # Line 258
    lw	$a2,4($a4)
    bnez	$a2,.L0f0ebc38
    nop
    # Line 260
    bnezl	$a0,.L0f0ebc04
    # Line 258
    addiu	$v0,$v0,1
    b	.L0f0ebbf8
    # Line 260
    lw	$a1,4($a4)
.L0f0ebc30:
    # Line 264
    jr	$ra
    li	$v0,-1
.L0f0ebc38:
    # Line 260
    jr	$ra
    nop
.L0f0ebc40:
    # Line 262
    jr	$ra
    nop
.end _mex_findslot

# Function: _GLmakeSizeHints
# Declared: Line 268 (Source lines: 269-275)
# Address: 0x0f0ebc48 - 0x0f0ebcb4 (Size: 108 bytes, Frame: 48)
.ent _GLmakeSizeHints
_GLmakeSizeHints:
    # Line 269
    lw	$at,0($a1)
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    andi	$at,$at,0x3
    beqz	$at,.L0f0ebc70
    move	$s0,$a0
    lw	$v0,32($s0)
    andi	$v0,$v0,0x2
    beqz	$v0,.L0f0ebc7c
    sd	$a1,0($sp)
.L0f0ebc70:
    # Line 275
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ebc7c:
    # Line 271
    la	$t9,_GLallocSizeHints
    move	$a0,$s0
    sd	$ra,16($sp)
    jalr	$t9
    li	$a1,1
    ld	$v1,0($sp)
    # Line 272
    lw	$ra,96($s0)
    lw	$a2,4($v1)
    sw	$a2,4($ra)
    # Line 273
    lw	$a2,96($s0)
    lw	$v1,8($v1)
    ld	$ra,16($sp)
    b	.L0f0ebc70
    sw	$v1,8($a2)
.end _GLmakeSizeHints

# Function: _GLclearConfigure
# Declared: Line 278 (Source lines: 281-282)
# Address: 0x0f0ebcb4 - 0x0f0ebcbc (Size: 8 bytes, Frame: 0)
.ent _GLclearConfigure
_GLclearConfigure:
    # Line 282
    jr	$ra
    # Line 281
    sw	$zero,0($a1)
.end _GLclearConfigure

# Function: _GLsendConfigure
# Declared: Line 289 (Source lines: 290-308)
# Address: 0x0f0ebcbc - 0x0f0ebdb0 (Size: 244 bytes, Frame: 208)
.ent _GLsendConfigure
_GLsendConfigure:
    # Line 290
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s0,24($sp)
    sd	$s4,8($sp)
    # Line 291
    lw	$s4,0($a1)
    # Line 290
    move	$s0,$a1
    sd	$s3,32($sp)
    # Line 292
    beqz	$s4,.L0f0ebd50
    move	$s3,$zero
    # Line 296
    lw	$at,12($s0)
    sd	$s2,40($sp)
    beqz	$at,.L0f0ebd94
    lw	$s2,4($s1)
.L0f0ebcf4:
    # Line 297
    lw	$v1,16($s0)
    beqz	$v1,.L0f0ebda0
.L0f0ebcfc:
    # Line 299
    move	$a2,$s4
    lw	$a1,64($s1)
    move	$a0,$s2
    la	$t9,XConfigureWindow
    sd	$ra,48($sp)
    addiu	$a3,$s0,4
    jalr	$t9
    sd	$a3,0($sp)
    # Line 300
    lw	$a5,64($s1)
    lw	$a4,8($s1)
    bne	$a4,$a5,.L0f0ebd6c
    li	$s3,1
    # Line 305
    move	$a0,$s2
.L0f0ebd30:
    la	$t9,XSync
    move	$a1,$zero
    ld	$s1,16($sp)
    jalr	$t9
    ld	$s4,8($sp)
    # Line 306
    sw	$zero,0($s0)
    ld	$s2,40($sp)
    ld	$ra,48($sp)
.L0f0ebd50:
    # Line 308
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    move	$v0,$s3
    ld	$s3,32($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ebd6c:
    ld	$a3,0($sp)
    # Line 303
    ori	$a2,$s4,0x3
    move	$a0,$s2
    la	$t9,XConfigureWindow
    # Line 302
    sw	$zero,4($s0)
    sw	$zero,8($s0)
    # Line 303
    jalr	$t9
    lw	$a1,8($s1)
    b	.L0f0ebd30
    # Line 305
    move	$a0,$s2
.L0f0ebd94:
    # Line 297
    li	$at,1
    b	.L0f0ebcf4
    sw	$at,12($s0)
.L0f0ebda0:
    sd	$ra,48($sp)
    # Line 298
    li	$v1,1
    b	.L0f0ebcfc
    sw	$v1,16($s0)
.end _GLsendConfigure

# Function: HideBorder
# Declared: Line 311 (Source lines: 312-321)
# Address: 0x0f0ebdb0 - 0x0f0ebe0c (Size: 92 bytes, Frame: 32)
.ent HideBorder
HideBorder:
    # Line 312
    addiu	$sp,$sp,-32
    beqz	$a1,.L0f0ebde8
    lw	$a3,32($a0)
    # Line 314
    ori	$a3,$a3,0x200
    sw	$a3,32($a0)
.L0f0ebdc4:
    # Line 316
    andi	$at,$a3,0x600
    beqz	$at,.L0f0ebdf8
    sd	$ra,0($sp)
    # Line 318
    la	$t9,_GLsetwmdecor
    jalr	$t9
    move	$a1,$zero
    ld	$ra,0($sp)
.L0f0ebde0:
    # Line 321
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ebde8:
    # Line 316
    li	$v0,-513
    and	$a3,$a3,$v0
    b	.L0f0ebdc4
    sw	$a3,32($a0)
.L0f0ebdf8:
    # Line 320
    la	$t9,_GLsetwmdecor
    jalr	$t9
    li	$a1,1
    b	.L0f0ebde0
    ld	$ra,0($sp)
.end HideBorder

# Function: gl_winconstraints
# Declared: Line 327 (Source lines: 328-407)
# Address: 0x0f0ebe0c - 0x0f0ec1d0 (Size: 964 bytes, Frame: 208)
.ent gl_winconstraints
gl_winconstraints:
    # Line 328
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s4,16($sp)
    move	$s4,$a1
    sd	$s3,24($sp)
    # Line 332
    lw	$at,-20640($gp)
    move	$s3,$zero
    sd	$s2,32($sp)
    beqz	$at,.L0f0ec134
    move	$s2,$zero
    # Line 334
    li	$v0,128
.L0f0ebe3c:
    lw	$v1,32($s0)
    nor	$a4,$v0,$zero
    and	$v1,$v1,$a4
    andi	$a4,$v1,0x2
    beqz	$a4,.L0f0ebe80
    sw	$v1,32($s0)
    sd	$s1,48($sp)
    # Line 340
    li	$s3,1
    li	$s2,1
    # Line 336
    lw	$a5,48($s0)
    # Line 339
    lw	$a4,60($s0)
    # Line 338
    lw	$v1,56($s0)
    # Line 337
    lw	$at,52($s0)
    # Line 339
    sh	$a4,6($sp)
    # Line 338
    sh	$v1,4($sp)
    # Line 337
    sh	$at,2($sp)
    # Line 336
    sh	$a5,0($sp)
.L0f0ebe80:
    sd	$s1,48($sp)
    # Line 340
    la	$s1,initportreq
    lh	$a5,14($s1)
    beqz	$a5,.L0f0ebf48
    # Line 363
    lh	$at,20($s1)
    # Line 344
    lh	$s2,16($s1)
    sw	$s2,12($s4)
    sw	$s2,112($s0)
    sw	$s2,56($s0)
    # Line 345
    lh	$a5,18($s1)
    sw	$a5,16($s4)
    sw	$a5,116($s0)
    sw	$a5,60($s0)
    # Line 346
    lw	$a4,0($s4)
    ori	$a4,$a4,0xc
    sw	$a4,0($s4)
    # Line 351
    li	$s2,1
    # Line 350
    lw	$v0,60($s0)
    # Line 349
    lw	$v1,56($s0)
    # Line 347
    lw	$at,32($s0)
    # Line 350
    sh	$v0,6($sp)
    # Line 349
    sh	$v1,4($sp)
    # Line 347
    ori	$at,$at,0x80
    # Line 351
    andi	$v1,$at,0x2
    beqz	$v1,.L0f0ebf44
    # Line 347
    sw	$at,32($s0)
    # Line 351
    lbu	$at,44($s0)
    li	$v1,4
    bne	$at,$v1,.L0f0ebf10
    lw	$a2,52($s0)
    # Line 359
    lw	$a4,68($s0)
    lw	$a4,60($a4)
    subu	$a4,$a4,$a2
    subu	$a4,$a4,$v0
    b	.L0f0ebf30
    sw	$a4,8($s4)
.L0f0ebf10:
    # Line 361
    move	$a0,$s0
    la	$t9,_GLinvertY
    sd	$ra,40($sp)
    addu	$a1,$a2,$v0
    jalr	$t9
    addiu	$a1,$a1,-1
    sw	$v0,8($s4)
    ld	$ra,40($sp)
.L0f0ebf30:
    # Line 362
    lw	$a5,48($s0)
    # Line 363
    lw	$a4,0($s4)
    # Line 362
    sw	$a5,4($s4)
    # Line 363
    ori	$a4,$a4,0x3
    sw	$a4,0($s4)
.L0f0ebf44:
    lh	$at,20($s1)
.L0f0ebf48:
    beqz	$at,.L0f0ebf98
    # Line 367
    lh	$a3,22($s1)
    sw	$a3,4($s4)
    # Line 368
    move	$a0,$s0
    lw	$a2,60($s0)
    lh	$a1,24($s1)
    la	$t9,_GLinvertY
    sd	$ra,40($sp)
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,-1
    # Line 369
    lw	$a5,0($s4)
    # Line 368
    sw	$v0,8($s4)
    # Line 369
    ori	$a5,$a5,0x3
    sw	$a5,0($s4)
    # Line 371
    lh	$a4,22($s1)
    # Line 373
    li	$s3,1
    ld	$ra,40($sp)
    # Line 372
    sh	$a4,2($sp)
    # Line 371
    sh	$a4,0($sp)
.L0f0ebf98:
    # Line 373
    lh	$a1,0($s1)
    beqz	$a1,.L0f0ebfb8
    # Line 376
    la	$t9,_GLminwinsize
    move	$a0,$s0
    sd	$ra,40($sp)
    jalr	$t9
    lh	$a2,2($s1)
    ld	$ra,40($sp)
.L0f0ebfb8:
    lh	$a1,4($s1)
    beqz	$a1,.L0f0ebfd8
    # Line 378
    la	$t9,_GLmaxwinsize
    move	$a0,$s0
    sd	$ra,40($sp)
    jalr	$t9
    lh	$a2,6($s1)
    ld	$ra,40($sp)
.L0f0ebfd8:
    lh	$at,8($s1)
    beqz	$at,.L0f0ebffc
    # Line 380
    move	$a0,$s0
    la	$t9,_GLwinaspect
    lh	$a2,12($s1)
    sd	$ra,40($sp)
    jalr	$t9
    lh	$a1,10($s1)
    ld	$ra,40($sp)
.L0f0ebffc:
    lh	$v1,52($s1)
    beqzl	$v1,.L0f0ec018
    # Line 382
    lbu	$a5,44($s0)
    lw	$a4,32($s0)
    ori	$a4,$a4,0x400
    sw	$a4,32($s0)
    lbu	$a5,44($s0)
.L0f0ec018:
    li	$at,2
    beq	$a5,$at,.L0f0ec13c
    sd	$ra,40($sp)
    # Line 391
    la	$t9,_GLwinstep
.L0f0ec028:
    move	$a0,$s0
    lh	$a2,28($s1)
    jalr	$t9
    lh	$a1,26($s1)
    # Line 392
    la	$t9,_GLwinmargin
    move	$a0,$s0
    lh	$a2,32($s1)
    jalr	$t9
    lh	$a1,30($s1)
    lh	$v1,54($s1)
    beqz	$v1,.L0f0ec108
    la	$s3,sub_0f030000
    lbu	$a5,45($s0)
    addiu	$s3,$s3,31352
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s3
    lw	$a4,0($a4)
    bnez	$a4,.L0f0ec10c
    # Line 406
    la	$t9,_GLhintinit
    # Line 394
    la	$t9,_GLnewwindow
    lw	$a0,12($s0)
    jalr	$t9
    lw	$a0,112($a0)
    # Line 395
    la	$t9,__GLqdevice
    # Line 394
    move	$s2,$v0
    # Line 395
    jalr	$t9
    li	$a0,541
    # Line 396
    lbu	$a4,45($s0)
    # Line 398
    move	$a1,$s2
    move	$a0,$s0
    # Line 396
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s3
    sw	$s2,0($a3)
    # Line 398
    la	$t9,_GLiconwindow
    # Line 397
    lbu	$a2,45($s0)
    # Line 396
    sw	$s2,120($s0)
    # Line 398
    jalr	$t9
    # Line 397
    sb	$a2,45($s2)
    # Line 398
    lh	$a2,56($s1)
    beqz	$a2,.L0f0ec1c4
.L0f0ec0d8:
    # Line 400
    lh	$a3,58($s1)
    beqz	$a3,.L0f0ec1b8
.L0f0ec0e0:
    # Line 403
    la	$t9,XResizeWindow
    lw	$a1,64($s2)
    jalr	$t9
    lw	$a0,4($s2)
    # Line 404
    lh	$a3,58($s1)
    la	$t9,XResizeWindow
    lh	$a2,56($s1)
    lw	$a1,8($s2)
    jalr	$t9
    lw	$a0,4($s2)
.L0f0ec108:
    # Line 406
    la	$t9,_GLhintinit
.L0f0ec10c:
    li	$a0,1
    jalr	$t9
    ld	$s1,48($sp)
    ld	$ra,40($sp)
    # Line 407
    ld	$s0,8($sp)
    ld	$s2,32($sp)
    ld	$s3,24($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ec134:
    b	.L0f0ebe3c
    # Line 334
    li	$v0,1152
.L0f0ec13c:
    # Line 382
    beqz	$s3,.L0f0ec198
    lh	$a5,0($sp)
    blez	$a5,.L0f0ec188
    # Line 385
    lh	$at,2($sp)
    b	.L0f0ec19c
    sd	$ra,40($sp)
.L0f0ec154:
    # Line 386
    lw	$v0,12($s0)
    lhu	$at,4($sp)
    lw	$v1,116($v0)
    slt	$at,$at,$v1
    bnez	$at,.L0f0ec198
    lhu	$a4,6($sp)
    lw	$a5,120($v0)
    slt	$a4,$a4,$a5
    bnezl	$a4,.L0f0ec19c
    sd	$ra,40($sp)
    sd	$ra,40($sp)
    b	.L0f0ec1a0
    li	$a1,1
.L0f0ec188:
    # Line 385
    bgtzl	$at,.L0f0ec19c
    sd	$ra,40($sp)
    bnez	$s2,.L0f0ec154
    li	$v0,1
.L0f0ec198:
    sd	$ra,40($sp)
.L0f0ec19c:
    # Line 386
    move	$a1,$zero
.L0f0ec1a0:
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-16976
    bal _mex_findslot
    move	$a0,$s0
    b	.L0f0ec028
    # Line 391
    la	$t9,_GLwinstep
.L0f0ec1b8:
    # Line 402
    li	$a3,1
    b	.L0f0ec0e0
    sh	$a3,58($s1)
.L0f0ec1c4:
    # Line 400
    li	$a2,1
    b	.L0f0ec0d8
    sh	$a2,56($s1)
.end gl_winconstraints

# Function: ParseGLDefaults
# Declared: Line 428 (Source lines: 429-469)
# Address: 0x0f0ec1d0 - 0x0f0ec61c (Size: 1100 bytes, Frame: 224)
.ent ParseGLDefaults
ParseGLDefaults:
    # Line 429
    addiu	$sp,$sp,-96
    sd	$s2,56($sp)
    sd	$s3,48($sp)
    sd	$s6,40($sp)
    sd	$s5,0($sp)
    move	$s5,$a2
    sd	$s4,24($sp)
    # Line 431
    move	$s4,$zero
    sd	$s1,8($sp)
    # Line 432
    move	$s1,$zero
    sd	$s0,16($sp)
    # Line 429
    move	$s0,$a0
    # Line 434
    la	$t9,strtok
    # Line 429
    move	$a0,$a1
    sd	$ra,32($sp)
    # Line 434
    jalr	$t9
    addiu	$a1,$gp,-17400
    beqz	$v0,.L0f0ec4d4
    move	$s2,$v0
    move	$s6,$zero
    b	.L0f0ec258
    la	$s3,__libc_attr
.L0f0ec228:
    # Line 451
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-17376
    beqz	$v0,.L0f0ec500
    subu	$a4,$s4,$s1
    # Line 465
    move	$s1,$s4
.L0f0ec240:
    # Line 468
    la	$t9,strtok
.L0f0ec244:
    move	$a0,$zero
    jalr	$t9
    addiu	$a1,$gp,-17400
    beqz	$v0,.L0f0ec4d4
    move	$s2,$v0
.L0f0ec258:
    # Line 434
    lbu	$a2,0($s2)
    lw	$at,0($s3)
    sll	$v1,$a2,0x2
    addu	$at,$at,$v1
    lw	$at,4($at)
    andi	$at,$at,0x4003
    beqz	$at,.L0f0ec568
    move	$a0,$a2
    # Line 438
    move	$v0,$s2
    beqz	$a0,.L0f0ec2cc
    # Line 445
    la	$t9,strcmp
    b	.L0f0ec2a4
    # Line 438
    move	$a0,$a2
.L0f0ec28c:
    # Line 440
    addu	$a1,$a1,$a2
    lh	$a1,1030($a1)
    sb	$a1,0($v0)
    # Line 438
    lbu	$a0,1($v0)
.L0f0ec29c:
    beqz	$a0,.L0f0ec2c8
    addiu	$v0,$v0,1
.L0f0ec2a4:
    lw	$a2,0($s3)
    sll	$a3,$a0,0x2
    addu	$a3,$a3,$a2
    lw	$a3,4($a3)
    andi	$a3,$a3,0x1
    beqzl	$a3,.L0f0ec29c
    lbu	$a0,1($v0)
    b	.L0f0ec28c
    # Line 440
    addu	$a1,$a0,$a0
.L0f0ec2c8:
    # Line 445
    la	$t9,strcmp
.L0f0ec2cc:
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-17392
    bnez	$v0,.L0f0ec3d0
    # Line 448
    la	$t9,strcmp
    # Line 445
    subu	$a4,$s4,$s1
    slt	$at,$s1,$s4
    beqz	$at,.L0f0ec240
    sll	$v0,$s1,0x2
    addu	$a0,$s6,$s5
    andi	$a2,$a4,0x3
    beqz	$a2,.L0f0ec32c
    addu	$v0,$v0,$s5
.L0f0ec300:
    # Line 447
    lw	$v1,12($s0)
    lw	$v1,124($v1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f1
    # Line 446
    addiu	$v0,$v0,4
    addi	$a2,$a2,-1
    bnez	$a2,.L0f0ec300
    # Line 447
    swc1	$f0,-4($v0)
.L0f0ec32c:
    sra	$a1,$a4,0x2
    beqz	$a1,.L0f0ec3c4
    move	$a2,$v0
    move	$v0,$a2
.L0f0ec33c:
    lw	$a1,12($s0)
    lw	$a1,124($a1)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($v0)
    lw	$v1,12($s0)
    lw	$v1,124($v1)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,4($v0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($v0)
    lw	$at,12($s0)
    lw	$at,124($at)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,8($v0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($v0)
    lw	$a3,12($s0)
    lw	$a3,124($a3)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,12($v0)
    mul.s	$f2,$f2,$f3
    # Line 446
    addiu	$v0,$v0,16
    bne	$v0,$a0,.L0f0ec33c
    # Line 447
    swc1	$f2,-4($v0)
.L0f0ec3c4:
    # Line 446
    move	$s1,$s4
    b	.L0f0ec244
    # Line 468
    la	$t9,strtok
.L0f0ec3d0:
    # Line 448
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-17384
    bnez	$v0,.L0f0ec228
    # Line 451
    la	$t9,strcmp
    # Line 448
    subu	$a4,$s4,$s1
    slt	$a3,$s1,$s4
    beqz	$a3,.L0f0ec240
    sll	$v0,$s1,0x2
    addu	$a0,$s6,$s5
    andi	$a2,$a4,0x3
    beqz	$a2,.L0f0ec430
    addu	$v0,$v0,$s5
.L0f0ec404:
    # Line 450
    lw	$v1,12($s0)
    lw	$v1,128($v1)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,0($v0)
    mul.s	$f2,$f2,$f3
    # Line 449
    addiu	$v0,$v0,4
    addi	$a2,$a2,-1
    bnez	$a2,.L0f0ec404
    # Line 450
    swc1	$f2,-4($v0)
.L0f0ec430:
    sra	$a1,$a4,0x2
    beqz	$a1,.L0f0ec4c8
    move	$a2,$v0
    move	$v0,$a2
.L0f0ec440:
    lw	$a1,12($s0)
    lw	$a1,128($a1)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,0($v0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($v0)
    lw	$v1,12($s0)
    lw	$v1,128($v1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,4($v0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($v0)
    lw	$at,12($s0)
    lw	$at,128($at)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,8($v0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($v0)
    lw	$a3,12($s0)
    lw	$a3,128($a3)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,12($v0)
    mul.s	$f0,$f0,$f1
    # Line 449
    addiu	$v0,$v0,16
    bne	$v0,$a0,.L0f0ec440
    # Line 450
    swc1	$f0,-4($v0)
.L0f0ec4c8:
    # Line 449
    move	$s1,$s4
    b	.L0f0ec244
    # Line 468
    la	$t9,strtok
.L0f0ec4d4:
    # Line 469
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    move	$v0,$s4
    ld	$s4,24($sp)
    ld	$ra,32($sp)
    ld	$s5,0($sp)
    ld	$s6,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ec500:
    # Line 451
    slt	$a3,$s1,$s4
    beqz	$a3,.L0f0ec240
    sll	$v0,$s1,0x2
    andi	$at,$a4,0x1
    beqz	$at,.L0f0ec558
    sra	$a3,$a4,0x1
    lw	$a0,96($s0)
    beqz	$a0,.L0f0ec54c
    andi	$v1,$s1,0x1
    beqz	$v1,.L0f0ec614
    nop
    # Line 459
    lw	$a2,40($a0)
.L0f0ec530:
    addu	$a1,$v0,$s5
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a1)
.L0f0ec54c:
    # Line 452
    addiu	$v0,$v0,4
    addiu	$s1,$s1,1
    sra	$a3,$a4,0x1
.L0f0ec558:
    bnezl	$a3,.L0f0ec5f4
    # Line 451
    lw	$a0,96($s0)
.L0f0ec560:
    # Line 452
    b	.L0f0ec240
    move	$s1,$s4
.L0f0ec568:
    # Line 467
    la	$t9,atof
    move	$a0,$s2
    addiu	$s6,$s6,4
    jalr	$t9
    addiu	$s4,$s4,1
    cvt.s.d	$f2,$f0
    addu	$at,$s6,$s5
    b	.L0f0ec240
    swc1	$f2,-4($at)
.L0f0ec58c:
    # Line 459
    addu	$v1,$v0,$s5
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,0($v1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($v1)
.L0f0ec5a8:
    # Line 451
    lw	$a0,96($s0)
    # Line 452
    addiu	$v0,$v0,4
    # Line 451
    beqz	$a0,.L0f0ec5e4
    # Line 452
    addiu	$s1,$s1,1
    # Line 451
    andi	$a1,$s1,0x1
    beqz	$a1,.L0f0ec60c
    nop
    # Line 459
    lw	$a2,40($a0)
.L0f0ec5c8:
    addu	$a3,$v0,$s5
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
.L0f0ec5e4:
    # Line 452
    addiu	$s1,$s1,1
    beq	$s4,$s1,.L0f0ec560
    addiu	$v0,$v0,4
    # Line 451
    lw	$a0,96($s0)
.L0f0ec5f4:
    beqz	$a0,.L0f0ec5a8
    andi	$at,$s1,0x1
    beqzl	$at,.L0f0ec58c
    # Line 459
    lw	$a2,36($a0)
    b	.L0f0ec58c
    lw	$a2,40($a0)
.L0f0ec60c:
    b	.L0f0ec5c8
    lw	$a2,36($a0)
.L0f0ec614:
    b	.L0f0ec530
    lw	$a2,36($a0)
.end ParseGLDefaults

# Function: CheckPreferences
# Declared: Line 475 (Source lines: 476-609)
# Address: 0x0f0ec61c - 0x0f0ecc14 (Size: 1528 bytes, Frame: 160)
.ent CheckPreferences
CheckPreferences:
    # Line 476
    addiu	$sp,$sp,-288
    sd	$s1,192($sp)
    lw	$v0,84($a0)
    move	$s1,$a0
    sd	$s4,200($sp)
    beqz	$v0,.L0f0ec6d8
    move	$s4,$a1
    sd	$s0,224($sp)
    # Line 491
    move	$a0,$s1
    addiu	$a1,$gp,-17368
    la	$t9,_GLgetwinresource
    la	$a2,sub_0f020000
    sd	$ra,232($sp)
    jalr	$t9
    addiu	$a2,$a2,17240
    move	$s0,$v0
    beqz	$v0,.L0f0ec6d0
    ld	$ra,232($sp)
    sd	$s5,256($sp)
    sd	$s3,240($sp)
    # Line 494
    la	$s3,sub_0f030000
    move	$s5,$zero
    sd	$s7,248($sp)
    addiu	$s3,$s3,-26824
    addiu	$s7,$s3,308
.L0f0ec680:
    # Line 495
    la	$t9,strcmp
    move	$a0,$s0
    jalr	$t9
    lw	$a1,232($s3)
    beqz	$v0,.L0f0ec94c
    # Line 494
    addiu	$s3,$s3,4
    bne	$s3,$s7,.L0f0ec680
    addiu	$s5,$s5,1
    # Line 502
    la	$a1,sub_0f020000
.L0f0ec6a4:
    la	$t9,gl_free
    move	$a0,$s0
    addiu	$a1,$a1,15960
    jalr	$t9
    addiu	$a1,$a1,1200
    ld	$s7,248($sp)
    ld	$s0,224($sp)
    ld	$s5,256($sp)
    ld	$s3,240($sp)
    b	.L0f0ec6d4
    ld	$ra,232($sp)
.L0f0ec6d0:
    ld	$s0,224($sp)
.L0f0ec6d4:
    lw	$v0,84($s1)
.L0f0ec6d8:
    sd	$s2,208($sp)
    # Line 491
    beqz	$v0,.L0f0ec70c
    sd	$ra,232($sp)
    sd	$s2,208($sp)
    # Line 505
    move	$a0,$s1
    la	$a2,sub_0f020000
    la	$t9,_GLgetwinresource
    la	$a1,sub_0f020000
    addiu	$a2,$a2,17272
    jalr	$t9
    addiu	$a1,$a1,17256
    bnez	$v0,.L0f0ec890
    move	$s2,$v0
.L0f0ec70c:
    sd	$s0,224($sp)
    # Line 546
    move	$a0,$s1
    sd	$s3,240($sp)
    # Line 545
    lw	$s3,32($s1)
    # Line 546
    la	$a2,sub_0f020000
    la	$a1,sub_0f020000
    la	$t9,_GLgetwinresource
    addiu	$a2,$a2,17344
    addiu	$a1,$a1,17328
    jalr	$t9
    # Line 545
    andi	$s3,$s3,0x80
    # Line 546
    move	$s2,$v0
    bnez	$v0,.L0f0ec7d8
    move	$s0,$v0
    # Line 563
    lw	$a0,0($s4)
.L0f0ec748:
    beqz	$a0,.L0f0eca18
    # Line 569
    move	$a0,$s1
    move	$a4,$s3
.L0f0ec754:
    beqz	$a4,.L0f0eca48
    ld	$s3,240($sp)
.L0f0ec75c:
    # Line 599
    la	$t9,_GLgetwinresource
.L0f0ec760:
    move	$a0,$s1
    addiu	$a2,$gp,-17336
    jalr	$t9
    addiu	$a1,$gp,-17344
    move	$s2,$v0
    move	$s0,$v0
    beqz	$v0,.L0f0ec7c0
    ld	$ra,232($sp)
    la	$t9,sub_0f0f0000
    # Line 602
    move	$a0,$s1
    move	$a1,$s2
    addiu	$t9,$t9,-15920
    bal _mex_findslot
    addiu	$a2,$sp,152
    li	$at,2
    beq	$v0,$at,.L0f0ec988
    ld	$s2,208($sp)
.L0f0ec7a4:
    la	$a1,sub_0f020000
    # Line 607
    la	$t9,gl_free
    move	$a0,$s0
    addiu	$a1,$a1,15960
    jalr	$t9
    addiu	$a1,$a1,1200
    ld	$ra,232($sp)
.L0f0ec7c0:
    # Line 609
    ld	$s0,224($sp)
    ld	$s1,192($sp)
    ld	$s2,208($sp)
    ld	$s4,200($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0f0ec7d8:
    # Line 549
    move	$a0,$s2
    addiu	$a4,$sp,116
    la	$t9,XParseGeometry
    addiu	$a3,$sp,112
    addiu	$a2,$sp,108
    jalr	$t9
    addiu	$a1,$sp,104
    move	$s2,$v0
    move	$a2,$v0
    sd	$v0,216($sp)
    la	$a1,sub_0f020000
    # Line 550
    la	$t9,gl_free
    move	$a0,$s0
    addiu	$a1,$a1,15960
    jalr	$t9
    addiu	$a1,$a1,1200
    beqz	$s3,.L0f0ecaac
    ld	$v0,216($sp)
.L0f0ec820:
    # Line 558
    lw	$a1,56($s1)
.L0f0ec824:
    sw	$a1,112($sp)
    # Line 559
    lw	$at,60($s1)
    li	$a5,3
    andi	$a4,$v0,0x3
    sw	$at,116($sp)
    bne	$a4,$a5,.L0f0ec748
    lw	$a0,0($s4)
    andi	$v1,$v0,0x10
    beqz	$v1,.L0f0ecb38
    lw	$a2,104($sp)
    # Line 561
    lw	$a3,12($s1)
    lw	$a3,116($a3)
    addu	$a3,$a3,$a2
    subu	$a3,$a3,$a1
.L0f0ec85c:
    andi	$a4,$v0,0x20
    sw	$a3,4($s4)
    beqz	$a4,.L0f0ecb40
    lw	$a1,108($sp)
    # Line 562
    lw	$v0,12($s1)
    lw	$v0,120($v0)
    lw	$v1,116($sp)
    addu	$v0,$v0,$a1
    subu	$v0,$v0,$v1
.L0f0ec880:
    sw	$v0,8($s4)
    # Line 563
    ori	$a0,$a0,0x3
    b	.L0f0ec748
    sw	$a0,0($s4)
.L0f0ec890:
    # Line 510
    la	$t9,_GLgetCurrentCursorColors
    jalr	$t9
    addiu	$a0,$sp,64
    # Line 523
    addiu	$a3,$sp,64
    # Line 522
    lw	$a1,20($s1)
    # Line 523
    move	$a2,$s2
    la	$t9,XParseColor
    # Line 522
    lw	$a1,4($a1)
    # Line 523
    lw	$a0,4($s1)
    jalr	$t9
    sd	$a1,176($sp)
    la	$a1,sub_0f020000
    # Line 524
    move	$a0,$s2
    la	$t9,gl_free
    addiu	$a1,$a1,15960
    addiu	$a1,$a1,1200
    jalr	$t9
    sd	$a1,184($sp)
    # Line 525
    la	$t9,_GLsetCurrentCursorColor
    addiu	$a1,$sp,64
    jalr	$t9
    li	$a0,1
    # Line 527
    move	$a0,$s1
    la	$a2,sub_0f020000
    la	$t9,_GLgetwinresource
    la	$a1,sub_0f020000
    addiu	$a2,$a2,17304
    jalr	$t9
    addiu	$a1,$a1,17288
    move	$s2,$v0
    addiu	$a3,$sp,64
    bnez	$v0,.L0f0ec9d4
    addiu	$a3,$a3,12
.L0f0ec914:
    # Line 537
    addiu	$a2,$sp,64
    la	$t9,XRecolorCursor
    lw	$a1,84($s1)
    lw	$a0,4($s1)
    jalr	$t9
    ld	$s2,208($sp)
    # Line 538
    lw	$a1,84($s1)
    la	$t9,XSGIMiscSetThirdCursorColor
    lw	$a0,4($s1)
    addiu	$a2,$sp,64
    jalr	$t9
    addiu	$a2,$a2,24
    b	.L0f0ec70c
    sd	$s3,240($sp)
.L0f0ec94c:
    # Line 497
    la	$t9,XCreateFontCursor
    addu	$a1,$s5,$s5
    jalr	$t9
    lw	$a0,4($s1)
    # Line 499
    addiu	$a3,$sp,0
    li	$a2,16384
    # Line 497
    sw	$v0,56($sp)
    # Line 498
    sw	$v0,84($s1)
    # Line 499
    la	$t9,XChangeWindowAttributes
    # Line 498
    sw	$v0,92($s1)
    # Line 499
    lw	$a1,8($s1)
    jalr	$t9
    lw	$a0,4($s1)
    b	.L0f0ec6a4
    # Line 502
    la	$a1,sub_0f020000
.L0f0ec988:
    # Line 603
    lwc1	$f1,152($sp)
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    nop
    sw	$a3,4($s4)
    # Line 604
    lwc1	$f0,156($sp)
    trunc.w.s	$f0,$f0
    lw	$a1,60($s1)
    mfc1	$a2,$f0
    la	$t9,_GLinvertY
    move	$a0,$s1
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,-1
    # Line 605
    lw	$a4,0($s4)
    # Line 604
    sw	$v0,8($s4)
    # Line 605
    ori	$a4,$a4,0x3
    b	.L0f0ec7a4
    sw	$a4,0($s4)
.L0f0ec9d4:
    sd	$a3,168($sp)
    # Line 529
    la	$t9,XParseColor
    move	$a2,$s2
    ld	$a1,176($sp)
    jalr	$t9
    lw	$a0,4($s1)
    # Line 530
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    ld	$a1,184($sp)
    # Line 531
    la	$t9,_GLsetCurrentCursorColor
    ld	$a1,168($sp)
    li	$a0,2
    jalr	$t9
    ld	$s2,208($sp)
    b	.L0f0ec914
    ld	$a3,168($sp)
.L0f0eca18:
    # Line 569
    la	$a2,sub_0f020000
    la	$t9,_GLgetwinresource
    la	$a1,sub_0f020000
    addiu	$a2,$a2,17376
    jalr	$t9
    addiu	$a1,$a1,17360
    move	$s2,$v0
    bnez	$v0,.L0f0ecaf8
    move	$s0,$v0
    move	$a4,$s3
    bnez	$a4,.L0f0ec75c
    ld	$s3,240($sp)
.L0f0eca48:
    # Line 587
    move	$a0,$s1
    la	$t9,_GLgetwinresource
    addiu	$a2,$gp,-17352
    addiu	$a1,$gp,-17360
    jalr	$t9
    ld	$s3,240($sp)
    move	$s2,$v0
    beqz	$v0,.L0f0ec75c
    move	$s0,$v0
    la	$t9,sub_0f0f0000
    # Line 590
    move	$a0,$s1
    move	$a1,$s2
    addiu	$t9,$t9,-15920
    bal _mex_findslot
    addiu	$a2,$sp,136
    li	$at,2
    beq	$v0,$at,.L0f0ecb48
.L0f0eca8c:
    la	$a1,sub_0f020000
    # Line 596
    la	$t9,gl_free
    move	$a0,$s0
    addiu	$a1,$a1,15960
    jalr	$t9
    addiu	$a1,$a1,1200
    b	.L0f0ec760
    # Line 599
    la	$t9,_GLgetwinresource
.L0f0ecaac:
    # Line 550
    andi	$a4,$s2,0xc
    li	$a5,12
    bnel	$a4,$a5,.L0f0ec824
    # Line 558
    lw	$a1,56($s1)
    # Line 553
    lw	$a5,112($sp)
    sw	$a5,12($s4)
    sw	$a5,56($s1)
    sw	$a5,112($s1)
    # Line 554
    lw	$a4,116($sp)
    sw	$a4,16($s4)
    sw	$a4,60($s1)
    sw	$a4,116($s1)
    # Line 555
    lw	$v1,0($s4)
    ori	$v1,$v1,0xc
    sw	$v1,0($s4)
    # Line 556
    lw	$at,32($s1)
    ori	$at,$at,0x80
    b	.L0f0ec820
    sw	$at,32($s1)
.L0f0ecaf8:
    # Line 573
    la	$t9,sub_0f0f0000
    addiu	$a2,$sp,120
    move	$a1,$s2
    addiu	$t9,$t9,-15920
    bal _mex_findslot
    move	$a0,$s1
    li	$at,4
    beq	$v0,$at,.L0f0ecb9c
.L0f0ecb18:
    la	$a1,sub_0f020000
    # Line 580
    la	$t9,gl_free
    move	$a0,$s0
    addiu	$a1,$a1,15960
    jalr	$t9
    addiu	$a1,$a1,1200
    b	.L0f0ec754
    move	$a4,$s3
.L0f0ecb38:
    b	.L0f0ec85c
    # Line 561
    move	$a3,$a2
.L0f0ecb40:
    b	.L0f0ec880
    # Line 562
    move	$v0,$a1
.L0f0ecb48:
    # Line 591
    lwc1	$f3,136($sp)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    sw	$v1,12($s4)
    sw	$v1,56($s1)
    sw	$v1,112($s1)
    # Line 592
    lwc1	$f2,140($sp)
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,16($s4)
    sw	$at,60($s1)
    sw	$at,116($s1)
    # Line 593
    lw	$a5,0($s4)
    ori	$a5,$a5,0xc
    sw	$a5,0($s4)
    # Line 594
    lw	$a4,32($s1)
    ori	$a4,$a4,0x80
    b	.L0f0eca8c
    sw	$a4,32($s1)
.L0f0ecb9c:
    # Line 574
    lwc1	$f7,128($sp)
    trunc.w.s	$f7,$f7
    mfc1	$a5,$f7
    nop
    sw	$a5,12($s4)
    sw	$a5,56($s1)
    # Line 575
    lwc1	$f6,132($sp)
    trunc.w.s	$f6,$f6
    mfc1	$a4,$f6
    nop
    sw	$a4,16($s4)
    sw	$a4,60($s1)
    # Line 576
    lwc1	$f5,120($sp)
    trunc.w.s	$f5,$f5
    mfc1	$a3,$f5
    nop
    sw	$a3,4($s4)
    # Line 577
    lwc1	$f4,124($sp)
    trunc.w.s	$f4,$f4
    lw	$a1,60($s1)
    mfc1	$a2,$f4
    la	$t9,_GLinvertY
    move	$a0,$s1
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,-1
    sw	$v0,8($s4)
    # Line 578
    li	$at,15
    b	.L0f0ecb18
    sw	$at,0($s4)
.end CheckPreferences

# Function: _GLmex_countwins
# Declared: Line 616 (Source lines: 617-624)
# Address: 0x0f0ecc14 - 0x0f0eccec (Size: 216 bytes, Frame: 0)
.globl _GLmex_countwins
.ent _GLmex_countwins
_GLmex_countwins:
    # Line 617
    lui	$v0,0xfff4
    addiu	$v0,$v0,26164
    addu	$at,$t9,$v0
    lw	$a5,-32676($at)
    addiu	$a5,$a5,31352
    # Line 618
    addiu	$a3,$a5,12
    lw	$a4,4($a3)
    move	$v0,$zero
    beqz	$a4,.L0f0ecc50
    addiu	$a5,$a5,3072
    # Line 620
    lw	$v1,32($a4)
    andi	$v1,$v1,0x2
    beqzl	$v1,.L0f0eccd8
    lw	$a0,8($a3)
    # Line 623
    addiu	$v0,$v0,1
.L0f0ecc50:
    b	.L0f0ecc88
    # Line 619
    addiu	$a3,$a3,12
    # Line 623
    addiu	$v0,$v0,1
.L0f0ecc5c:
    # Line 618
    lw	$a4,16($a3)
.L0f0ecc60:
    beqzl	$a4,.L0f0ecc80
    # Line 619
    addiu	$a3,$a3,24
    # Line 620
    lw	$a0,32($a4)
    andi	$a0,$a0,0x2
    beqzl	$a0,.L0f0eccbc
    lw	$v1,20($a3)
    # Line 623
    addiu	$v0,$v0,1
.L0f0ecc7c:
    # Line 619
    addiu	$a3,$a3,24
.L0f0ecc80:
    beq	$a3,$a5,.L0f0eccd0
    nop
.L0f0ecc88:
    # Line 618
    lw	$a4,4($a3)
    beqzl	$a4,.L0f0ecc60
    lw	$a4,16($a3)
    # Line 620
    lw	$a1,32($a4)
    andi	$a1,$a1,0x2
    bnezl	$a1,.L0f0ecc5c
    # Line 623
    addiu	$v0,$v0,1
    # Line 620
    lw	$a2,8($a3)
    andi	$a2,$a2,0x1
    beqzl	$a2,.L0f0ecc60
    # Line 618
    lw	$a4,16($a3)
    b	.L0f0ecc5c
    # Line 623
    addiu	$v0,$v0,1
.L0f0eccbc:
    # Line 620
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0f0ecc80
    # Line 619
    addiu	$a3,$a3,24
    b	.L0f0ecc7c
    # Line 623
    addiu	$v0,$v0,1
.L0f0eccd0:
    # Line 624
    jr	$ra
    nop
.L0f0eccd8:
    # Line 620
    andi	$a0,$a0,0x1
    beqz	$a0,.L0f0ecc50
    nop
    b	.L0f0ecc50
    # Line 623
    addiu	$v0,$v0,1
.end _GLmex_countwins

# Function: gl_strcasecmp
# Declared: Line 631 (Source lines: 632-637)
# Address: 0x0f0eccec - 0x0f0ecdd4 (Size: 232 bytes, Frame: 32)
.globl gl_strcasecmp
.ent gl_strcasecmp
gl_strcasecmp:
    # Line 635
    move	$a3,$a0
    # Line 632
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 635
    lbu	$a5,0($a0)
    # Line 632
    lui	$at,0xfff4
    addiu	$at,$at,25948
    # Line 635
    beqz	$a5,.L0f0ecdcc
    # Line 632
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 635
    move	$a4,$a5
    b	.L0f0ecd30
    la	$a6,__libc_attr
.L0f0ecd18:
    addu	$v0,$v0,$a5
    lh	$v0,1030($v0)
    sb	$v0,0($a3)
    lbu	$a4,1($a3)
.L0f0ecd28:
    beqz	$a4,.L0f0ecd54
    addiu	$a3,$a3,1
.L0f0ecd30:
    lw	$a5,0($a6)
    sll	$v1,$a4,0x2
    addu	$v1,$v1,$a5
    lw	$v1,4($v1)
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0f0ecd28
    lbu	$a4,1($a3)
    b	.L0f0ecd18
    addu	$v0,$a4,$a4
.L0f0ecd54:
    # Line 636
    lbu	$a5,0($a1)
    beqz	$a5,.L0f0ecdac
    move	$a3,$a1
    move	$a4,$a5
    b	.L0f0ecd88
    lw	$a5,0($a6)
.L0f0ecd6c:
    addu	$a2,$a2,$a5
    lh	$a2,1030($a2)
    sb	$a2,0($a3)
    lbu	$a4,1($a3)
.L0f0ecd7c:
    beqz	$a4,.L0f0ecda8
    addiu	$a3,$a3,1
    lw	$a5,0($a6)
.L0f0ecd88:
    sll	$at,$a4,0x2
    addu	$at,$at,$a5
    lw	$at,4($at)
    andi	$at,$at,0x1
    beqzl	$at,.L0f0ecd7c
    lbu	$a4,1($a3)
    b	.L0f0ecd6c
    addu	$a2,$a4,$a4
.L0f0ecda8:
    sd	$ra,8($sp)
.L0f0ecdac:
    # Line 637
    la	$t9,strcmp
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ecdcc:
    b	.L0f0ecd54
    # Line 635
    la	$a6,__libc_attr
.end gl_strcasecmp

# Function: _GLisTrue
# Declared: Line 640 (Source lines: 641-642)
# Address: 0x0f0ecdd4 - 0x0f0ece5c (Size: 136 bytes, Frame: 32)
.ent _GLisTrue
_GLisTrue:
    # Line 642
    addiu	$a1,$gp,-17328
    # Line 641
    addiu	$sp,$sp,-32
    # Line 642
    la	$t9,gl_strcasecmp
    sd	$s0,8($sp)
    sd	$ra,0($sp)
    bal gl_strcasecmp
    # Line 641
    move	$s0,$a0
    # Line 642
    beqz	$v0,.L0f0ece50
    ld	$ra,0($sp)
    la	$t9,gl_strcasecmp
    move	$a0,$s0
    bal gl_strcasecmp
    addiu	$a1,$gp,-17320
    beqz	$v0,.L0f0ece50
    ld	$ra,0($sp)
    la	$t9,gl_strcasecmp
    move	$a0,$s0
    bal gl_strcasecmp
    addiu	$a1,$gp,-17312
    beqz	$v0,.L0f0ece50
    ld	$ra,0($sp)
    la	$t9,gl_strcasecmp
    move	$a0,$s0
    bal gl_strcasecmp
    addiu	$a1,$gp,-17304
    ld	$ra,0($sp)
    beqz	$v0,.L0f0ece50
    ld	$s0,8($sp)
    move	$v0,$zero
.L0f0ece48:
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ece50:
    li	$v0,1
    b	.L0f0ece48
    ld	$s0,8($sp)
.end _GLisTrue

# Function: _GLisNumeric
# Declared: Line 648 (Source lines: 649-654)
# Address: 0x0f0ece5c - 0x0f0ece98 (Size: 60 bytes, Frame: 0)
.ent _GLisNumeric
_GLisNumeric:
    # Line 649
    la	$a2,__libc_attr
    lbu	$a3,0($a0)
    beqz	$a3,.L0f0ece90
    lw	$a2,0($a2)
.L0f0ece6c:
    # Line 651
    sll	$at,$a3,0x2
    addu	$at,$at,$a2
    lw	$at,4($at)
    andi	$at,$at,0x4
    beqz	$at,.L0f0ece90
    nop
    # Line 650
    lbu	$a3,1($a0)
    bnez	$a3,.L0f0ece6c
    addiu	$a0,$a0,1
.L0f0ece90:
    # Line 654
    jr	$ra
    sltiu	$v0,$a3,1
.end _GLisNumeric

# Function: _GLisginit
# Declared: Line 661 (Source lines: 662-665)
# Address: 0x0f0ece98 - 0x0f0eceb8 (Size: 32 bytes, Frame: 0)
.globl _GLisginit
.ent _GLisginit
_GLisginit:
    # Line 664
    li	$v1,1
    # Line 662
    lui	$a0,0xfff4
    addiu	$a0,$a0,25520
    addu	$at,$t9,$a0
    # Line 663
    lw	$v0,-32572($at)
    # Line 664
    sw	$v1,-20636($at)
    # Line 665
    jr	$ra
    # Line 663
    sw	$zero,0($v0)
.end _GLisginit

# Function: gl_g_winopen
# Declared: Line 668 (Source lines: 669-975)
# Address: 0x0f0eceb8 - 0x0f0ed85c (Size: 2468 bytes, Frame: 144)
.globl gl_g_winopen
.ent gl_g_winopen
gl_g_winopen:
    # Line 669
    addiu	$sp,$sp,-144
    sd	$s1,72($sp)
    move	$s1,$a0
    sd	$s5,80($sp)
    # Line 671
    move	$s5,$zero
    sd	$gp,88($sp)
    # Line 669
    lui	$at,0xfff4
    addiu	$at,$at,25488
    # Line 671
    bnez	$a0,.L0f0ecee4
    # Line 669
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 678
    addiu	$s1,$gp,-17296
.L0f0ecee4:
    lbu	$v1,0($s1)
    beqz	$v1,.L0f0ed25c
    sd	$s4,96($sp)
    # Line 682
    move	$s4,$s1
.L0f0ecef4:
    # Line 684
    lw	$a4,-20632($gp)
    sd	$ra,112($sp)
    li	$a5,1
    addiu	$a4,$a4,1
    beq	$a4,$a5,.L0f0ed264
    sw	$a4,-20632($gp)
    # Line 815
    la	$t9,_GLinitgl
    jalr	$t9
    sd	$s3,104($sp)
    la	$s3,initportreq
.L0f0ecf1c:
    # Line 816
    la	$t9,_GLhintinit
.L0f0ecf20:
    jalr	$t9
    move	$a0,$zero
    # Line 817
    la	$t9,_mex_findslot
    sd	$s2,48($sp)
    bal _mex_findslot
    move	$a0,$zero
    li	$a5,-1
    beq	$v0,$a5,.L0f0ed7b8
    move	$s2,$v0
    # Line 819
    lh	$at,34($s3)
    beqz	$at,.L0f0ecf80
    # Line 823
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,XGrabServer
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 824
    la	$t9,_GLkillmakebgclient
    lw	$a0,0($a0)
    jalr	$t9
    lw	$a0,28($a0)
    b	.L0f0ecf84
    # Line 826
    la	$t9,gl_devdepattach
.L0f0ecf80:
    la	$t9,gl_devdepattach
.L0f0ecf84:
    # Line 824
    la	$a0,gl_selected_scrn
    # Line 826
    bal gl_devdepattach
    lw	$a0,0($a0)
    la	$a2,gl_selected_scrn
    # Line 827
    la	$a0,gl_scrntab
    lw	$a2,0($a2)
    la	$t9,_GLnewwindow
    lw	$a0,0($a0)
    sll	$a1,$a2,0x2
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x3
    addu	$a0,$a0,$a1
    lw	$a0,28($a0)
    sd	$s0,120($sp)
    jalr	$t9
    lw	$a0,112($a0)
    lh	$a2,60($s3)
    beqz	$a2,.L0f0ecfe0
    move	$s0,$v0
    # Line 829
    lw	$a4,32($v0)
    ori	$a4,$a4,0x20
    sw	$a4,32($v0)
    lh	$a2,60($s3)
.L0f0ecfe0:
    # Line 830
    la	$t9,_GLnewcontext
    sltiu	$a1,$a2,1
    jalr	$t9
    lw	$a0,12($v0)
    sw	$v0,124($s0)
    # Line 831
    lw	$a5,-20636($gp)
    sll	$a2,$s2,0x2
    # Line 830
    la	$a0,sub_0f030000
    # Line 831
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    # Line 830
    addiu	$a0,$a0,31352
    # Line 831
    addu	$a2,$a2,$a0
    beqz	$a5,.L0f0ed024
    sw	$s0,4($a2)
    # Line 833
    lw	$a4,32($s0)
    ori	$a4,$a4,0x10
    sw	$a4,32($s0)
.L0f0ed024:
    lh	$a5,34($s3)
    beqz	$a5,.L0f0ed050
    ld	$s3,104($sp)
    # Line 835
    lw	$v0,32($s0)
    lw	$at,-14680($gp)
    ld	$s3,104($sp)
    ori	$v0,$v0,0x4
    beqz	$at,.L0f0ed050
    sw	$v0,32($s0)
    # Line 837
    ori	$v1,$v0,0x8
    sw	$v1,32($s0)
.L0f0ed050:
    # Line 843
    move	$a1,$s4
    # Line 839
    sb	$s2,45($s0)
    # Line 843
    move	$a0,$s0
    # Line 841
    lw	$a3,8($a2)
    # Line 843
    la	$t9,_GLwinname
    # Line 840
    sw	$zero,-20636($gp)
    # Line 841
    ori	$a3,$a3,0x2
    # Line 843
    jalr	$t9
    # Line 841
    sw	$a3,8($a2)
    # Line 844
    lw	$a2,104($s0)
    la	$t9,XSetIconName
    lw	$a1,64($s0)
    lw	$a0,4($s0)
    jalr	$t9
    ld	$s4,96($sp)
    # Line 845
    la	$t9,XStoreName
    move	$a2,$s1
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 850
    la	$t9,_GLmex_countwins
    bal _GLmex_countwins
    nop
    beqz	$v0,.L0f0ed528
    # Line 853
    la	$t9,_GLclearHints
.L0f0ed0b4:
    jalr	$t9
    move	$a0,$s0
    # Line 854
    la	$t9,sub_0f0f0000
    move	$a0,$s0
    addiu	$t9,$t9,-17228
    bal _mex_findslot
    addiu	$a1,$sp,0
    lw	$v0,32($s0)
    andi	$at,$v0,0x4
    beqz	$at,.L0f0ed104
    # Line 857
    la	$t9,_GLsetmakebgprop
    jalr	$t9
    move	$a0,$s0
    la	$a0,gl_sstatep
    # Line 858
    lw	$a0,0($a0)
    la	$t9,XUngrabServer
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    lw	$v0,32($s0)
.L0f0ed104:
    andi	$a4,$v0,0x8
    beqz	$a4,.L0f0ed2a4
    # Line 869
    la	$t9,sub_0f0f0000
.L0f0ed110:
    move	$a0,$s0
    addiu	$t9,$t9,-14820
    bal _mex_findslot
    addiu	$a1,$sp,0
    # Line 870
    la	$t9,sub_0f0f0000
    move	$a0,$s0
    addiu	$t9,$t9,-17336
    bal _mex_findslot
    addiu	$a1,$sp,0
    # Line 871
    la	$t9,_GLsendHints
    jalr	$t9
    move	$a0,$s0
    # Line 872
    la	$t9,sub_0f0f0000
    move	$a0,$s0
    addiu	$t9,$t9,-17220
    bal _mex_findslot
    addiu	$a1,$sp,0
    # Line 873
    la	$t9,_GLfunctions
    bal _GLfunctions
    move	$a0,$s0
    la	$t9,_GLsetwmfunction
    move	$a1,$v0
    jalr	$t9
    move	$a0,$s0
    lw	$v0,32($s0)
    andi	$at,$v0,0x20
    beqz	$at,.L0f0ed18c
    # Line 881
    andi	$a2,$v0,0x34
    # Line 873
    lw	$v1,112($s0)
    beqz	$v1,.L0f0ed4cc
    li	$a4,1
.L0f0ed18c:
    # Line 881
    beqz	$a2,.L0f0ed53c
    lui	$a2,0x2
.L0f0ed194:
    # Line 899
    la	$t9,XSelectInput
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    lw	$a4,32($s0)
    andi	$a4,$a4,0x20
    beqz	$a4,.L0f0ed554
.L0f0ed1b0:
    # Line 918
    la	$t9,__GLqdevice
.L0f0ed1b4:
    jalr	$t9
    li	$a0,528
    # Line 919
    la	$t9,_GLSelectInput
    bal _GLSelectInput
    move	$a0,$s0
    lw	$a5,32($s0)
    li	$at,16
    andi	$a5,$a5,0x30
    beq	$a5,$at,.L0f0ed5a8
    la	$a0,gl_sstatep
.L0f0ed1dc:
    # Line 926
    beqz	$s5,.L0f0ed30c
    lw	$a1,124($s0)
    # Line 933
    la	$t9,_GLbindcontext
    jalr	$t9
    lw	$a0,120($s0)
.L0f0ed1f0:
    # Line 937
    lw	$at,32($s0)
    andi	$at,$at,0x20
    bnez	$at,.L0f0ed20c
    la	$v1,_GLblockWhenStowed
    lw	$v1,0($v1)
    bnez	$v1,.L0f0ed220
    # Line 940
    la	$t9,_GLupdateQueue
.L0f0ed20c:
    # Line 938
    la	$t9,_GLunblock
    li	$a1,1
    jalr	$t9
    lw	$a0,124($s0)
    # Line 940
    la	$t9,_GLupdateQueue
.L0f0ed220:
    move	$a0,$zero
    move	$a1,$zero
    jalr	$t9
    ld	$s0,120($sp)
    # Line 941
    la	$t9,__GLwinset
    jalr	$t9
    move	$a0,$s2
    ld	$ra,112($sp)
    ld	$gp,88($sp)
    # Line 975
    ld	$s1,72($sp)
    move	$v0,$s2
    ld	$s2,48($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0ed25c:
    # Line 680
    b	.L0f0ecef4
    lw	$s4,-14676($gp)
.L0f0ed264:
    # Line 697
    la	$t9,_GLinitgl
    jalr	$t9
    nop
    # Line 698
    la	$t9,_GLappname
    jalr	$t9
    move	$a0,$s4
    la	$v0,sub_0f030000
    addiu	$v0,$v0,-26824
    lw	$a0,0($v0)
    beqz	$a0,.L0f0ed3a8
    nop
    sd	$s2,48($sp)
    sd	$s0,120($sp)
    move	$s0,$v0
    b	.L0f0ed354
    move	$a3,$a0
.L0f0ed2a4:
    # Line 858
    andi	$v1,$v0,0x4
    beqz	$v1,.L0f0ed79c
    # Line 862
    move	$a3,$zero
    move	$a2,$zero
    lw	$a1,64($s0)
    lw	$a4,12($s0)
    la	$t9,XMoveResizeWindow
    lw	$a0,4($s0)
    lw	$a5,120($a4)
    jalr	$t9
    lw	$a4,116($a4)
    # Line 863
    move	$a3,$zero
    move	$a2,$zero
    lw	$a1,8($s0)
    lw	$a4,12($s0)
    la	$t9,XMoveResizeWindow
    lw	$a0,4($s0)
    lw	$a5,120($a4)
    jalr	$t9
    lw	$a4,116($a4)
    # Line 864
    la	$t9,_GLsetwmdecor
    move	$a0,$s0
    jalr	$t9
    move	$a1,$zero
    b	.L0f0ed110
    # Line 869
    la	$t9,sub_0f0f0000
.L0f0ed30c:
    # Line 935
    la	$t9,_GLbindcontext
    jalr	$t9
    move	$a0,$s0
    b	.L0f0ed1f0
    nop
.L0f0ed320:
    # Line 709
    jalr	$t9
    move	$a0,$v0
    move	$a1,$v0
.L0f0ed32c:
    # Line 710
    la	$t9,__GLglcompat
    jalr	$t9
    lw	$a0,8($s0)
    # Line 711
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-17672
.L0f0ed348:
    # Line 700
    lw	$a3,16($s0)
    beqz	$a3,.L0f0ed3a0
    addiu	$s0,$s0,16
.L0f0ed354:
    # Line 701
    move	$a4,$zero
    lw	$a2,4($s0)
    la	$a1,sub_0f020000
    la	$t9,_GLgetresource
    la	$a0,sub_0f020000
    addiu	$a1,$a1,17408
    jalr	$t9
    addiu	$a0,$a0,17392
    beqz	$v0,.L0f0ed348
    move	$s2,$v0
    lw	$a4,12($s0)
    bnez	$a4,.L0f0ed320
    # Line 709
    la	$t9,atoi
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-12844
    # Line 707
    bal gl_strcasecmp
    move	$a0,$v0
    b	.L0f0ed32c
    move	$a1,$v0
.L0f0ed3a0:
    ld	$s0,120($sp)
    ld	$s2,48($sp)
.L0f0ed3a8:
    sd	$s2,48($sp)
    # Line 714
    move	$a4,$zero
    la	$a0,sub_0f020000
    la	$t9,_GLgetresource
    la	$a3,sub_0f020000
    la	$a2,sub_0f020000
    la	$a1,sub_0f020000
    addiu	$a3,$a3,17448
    addiu	$a2,$a2,17424
    addiu	$a1,$a1,17408
    jalr	$t9
    addiu	$a0,$a0,17392
    bnez	$v0,.L0f0ed5f0
    move	$s2,$v0
.L0f0ed3e0:
    # Line 734
    move	$a4,$zero
    la	$a3,sub_0f020000
    la	$t9,_GLgetresource
    la	$a2,sub_0f020000
    addiu	$a3,$a3,17504
    la	$a1,sub_0f020000
    addiu	$a2,$a2,17488
    la	$a0,sub_0f020000
    addiu	$a1,$a1,17408
    jalr	$t9
    addiu	$a0,$a0,17392
    bnez	$v0,.L0f0ed64c
    move	$s2,$v0
    # Line 750
    move	$a2,$zero
.L0f0ed418:
    la	$a1,sub_0f020000
    la	$t9,_GLgetresource
    la	$a0,sub_0f020000
    addiu	$a1,$a1,17544
    jalr	$t9
    addiu	$a0,$a0,17520
    bnez	$v0,.L0f0ed688
    move	$s2,$v0
.L0f0ed438:
    sd	$s3,104($sp)
    # Line 753
    la	$s3,initportreq
    lh	$a4,34($s3)
    beqz	$a4,.L0f0ed454
    # Line 760
    la	$a5,gl_thedisplay
    lw	$a5,0($a5)
    sw	$zero,28($a5)
.L0f0ed454:
    # Line 765
    move	$a2,$zero
    la	$a1,sub_0f020000
    la	$t9,_GLgetresource
    la	$a0,sub_0f020000
    addiu	$a1,$a1,17584
    jalr	$t9
    addiu	$a0,$a0,17568
    bnez	$v0,.L0f0ed6b8
    move	$s2,$v0
    # Line 767
    la	$v0,gl_putinbackground
    ld	$s2,48($sp)
.L0f0ed480:
    lw	$a4,0($v0)
    beqz	$a4,.L0f0ecf1c
    la	$a5,fflush
    lui	$at,0xff00
    and	$a5,$a5,$at
    lui	$at,0xc00
    beq	$a5,$at,.L0f0ed754
.L0f0ed49c:
    # Line 779
    la	$t9,fork
    jalr	$t9
    # Line 778
    sw	$zero,0($v0)
    li	$v1,-1
    # Line 779
    beq	$v0,$v1,.L0f0ed81c
    # Line 781
    la	$t9,perror
    # Line 779
    beqz	$v0,.L0f0ed4d8
    # Line 802
    la	$t9,exit
    jalr	$t9
    move	$a0,$zero
    b	.L0f0ecf20
    # Line 816
    la	$t9,_GLhintinit
.L0f0ed4cc:
    # Line 878
    sw	$a4,56($s0)
    b	.L0f0ed18c
    sw	$a4,60($s0)
.L0f0ed4d8:
    # Line 785
    la	$t9,signal
    li	$a1,1
    jalr	$t9
    li	$a0,2
    # Line 786
    la	$t9,signal
    li	$a1,1
    jalr	$t9
    li	$a0,3
    # Line 787
    la	$t9,signal
    move	$a1,$zero
    jalr	$t9
    li	$a0,15
    lw	$v0,4108($zero)
    beqz	$v0,.L0f0ecf1c
    # Line 796
    la	$t9,__iglooTlsInit
    jalr	$t9
    sd	$v0,32($sp)
    ld	$a5,32($sp)
    # Line 798
    b	.L0f0ecf1c
    sw	$a5,4108($zero)
.L0f0ed528:
    # Line 851
    la	$t9,_GLsetWM_COMMAND
    jalr	$t9
    move	$a0,$s0
    b	.L0f0ed0b4
    # Line 853
    la	$t9,_GLclearHints
.L0f0ed53c:
    # Line 887
    la	$t9,__GLqdevice
    jalr	$t9
    li	$a0,534
    # Line 892
    lui	$a2,0x22
    b	.L0f0ed194
    ori	$a2,$a2,0x30
.L0f0ed554:
    # Line 911
    la	$t9,_GLmapwindow
    jalr	$t9
    move	$a0,$s0
    lw	$v0,120($s0)
    beqz	$v0,.L0f0ed1b4
    # Line 918
    la	$t9,__GLqdevice
    # Line 911
    lw	$a4,32($v0)
    andi	$a4,$a4,0x2
    beqz	$a4,.L0f0ed1b0
    la	$v1,sub_0f030000
    # Line 914
    lbu	$a4,45($s0)
    addiu	$v1,$v1,31352
    sll	$at,$a4,0x2
    subu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    lw	$a5,8($at)
    # Line 913
    li	$s5,1
    # Line 914
    ori	$a5,$a5,0x1
    b	.L0f0ed1b0
    sw	$a5,8($at)
.L0f0ed5a8:
    # Line 925
    lw	$a0,0($a0)
    lw	$a1,20($s0)
    la	$t9,XInstallColormap
    lw	$a0,28($a0)
    lw	$a1,4($a1)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 926
    move	$a3,$zero
    lw	$a0,0($a0)
    li	$a2,1
    la	$t9,XSetInputFocus
    lw	$a0,28($a0)
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f0ed1dc
    nop
.L0f0ed5f0:
    # Line 718
    addiu	$a1,$gp,-17288
    la	$t9,gl_strcasecmp
    move	$a0,$v0
    # Line 717
    li	$a2,2000
    # Line 718
    bal gl_strcasecmp
    sd	$a2,64($sp)
    bnez	$v0,.L0f0ed768
    # Line 720
    la	$t9,gl_strcasecmp
    # Line 719
    li	$a4,15
    sd	$a4,64($sp)
.L0f0ed618:
    # Line 727
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-17672
    ld	$v0,64($sp)
    blez	$v0,.L0f0ed80c
    # Line 730
    li	$v1,1000
    div	$zero,$v1,$v0
    teq	$v0,$zero,0x7
    la	$at,_GLmotionThresh
    mflo	$a5
    b	.L0f0ed3e0
    sw	$a5,0($at)
.L0f0ed64c:
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-12708
    # Line 737
    bal gl_strcasecmp
    move	$a0,$v0
    beqz	$v0,.L0f0ed6ec
    la	$at,sub_0f030000
    # Line 738
    la	$t9,atoi
    jalr	$t9
    move	$a0,$s2
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-18308
    bal gl_g_winattach
    move	$a0,$v0
    b	.L0f0ed740
    # Line 748
    la	$t9,gl_free
.L0f0ed688:
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-12844
    # Line 752
    bal gl_strcasecmp
    move	$a0,$v0
    # Line 753
    addiu	$a1,$gp,-17672
    la	$t9,gl_free
    # Line 752
    la	$at,_GLsetvalDoesConstrain
    # Line 753
    move	$a0,$s2
    jalr	$t9
    # Line 752
    sw	$v0,0($at)
    b	.L0f0ed438
    sd	$s3,104($sp)
.L0f0ed6b8:
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-12844
    # Line 766
    bal gl_strcasecmp
    move	$a0,$v0
    la	$ra,gl_putinbackground
    # Line 767
    la	$t9,gl_free
    addiu	$a1,$gp,-17672
    # Line 766
    sw	$v0,0($ra)
    # Line 767
    jalr	$t9
    move	$a0,$s2
    la	$v0,gl_putinbackground
    b	.L0f0ed480
    ld	$s2,48($sp)
.L0f0ed6ec:
    addiu	$at,$at,-26824
    # Line 738
    move	$v1,$at
    sd	$at,56($sp)
    addiu	$at,$at,24
    sd	$at,40($sp)
.L0f0ed700:
    # Line 742
    la	$t9,gl_strcasecmp
    ld	$a1,56($sp)
    move	$a0,$s2
    bal gl_strcasecmp
    lw	$a1,204($a1)
    bnez	$v0,.L0f0ed72c
    ld	$a0,56($sp)
    # Line 743
    lw	$a4,204($a0)
    la	$a5,_GLtabletScale
    # Line 744
    b	.L0f0ed73c
    # Line 743
    sw	$a4,0($a5)
.L0f0ed72c:
    # Line 741
    ld	$at,40($sp)
    addiu	$a0,$a0,8
    bne	$a0,$at,.L0f0ed700
    sd	$a0,56($sp)
.L0f0ed73c:
    # Line 748
    la	$t9,gl_free
.L0f0ed740:
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-17672
    b	.L0f0ed418
    # Line 750
    move	$a2,$zero
.L0f0ed754:
    # Line 772
    la	$t9,fflush
    jalr	$t9
    move	$a0,$zero
    b	.L0f0ed49c
    la	$v0,gl_putinbackground
.L0f0ed768:
    # Line 720
    move	$a0,$s2
    bal gl_strcasecmp
    addiu	$a1,$gp,-17280
    beqz	$v0,.L0f0ed794
    la	$t9,gl_strcasecmp
    la	$a1,sub_0f020000
    move	$a0,$s2
    bal gl_strcasecmp
    addiu	$a1,$a1,17472
    bnez	$v0,.L0f0ed7ec
    # Line 723
    la	$t9,gl_strcasecmp
.L0f0ed794:
    # Line 720
    b	.L0f0ed618
    sd	$zero,64($sp)
.L0f0ed79c:
    # Line 866
    la	$t9,sub_0f0f0000
    move	$a0,$s0
    addiu	$t9,$t9,-16884
    bal _mex_findslot
    addiu	$a1,$sp,0
    b	.L0f0ed110
    # Line 869
    la	$t9,sub_0f0f0000
.L0f0ed7b8:
    # Line 818
    la	$t9,_GLhintinit
    li	$a0,1
    ld	$s4,96($sp)
    jalr	$t9
    ld	$s3,104($sp)
    # Line 819
    li	$v0,-1
    ld	$gp,88($sp)
    ld	$s1,72($sp)
    ld	$ra,112($sp)
    ld	$s2,48($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0ed7ec:
    # Line 723
    move	$a0,$s2
    bal gl_strcasecmp
    addiu	$a1,$gp,-17272
    bnez	$v0,.L0f0ed838
    # Line 724
    la	$t9,sub_0f0f0000
    li	$at,2000
    b	.L0f0ed618
    sd	$at,64($sp)
.L0f0ed80c:
    # Line 732
    la	$a4,_GLmotionThresh
    li	$v1,2000
    b	.L0f0ed3e0
    sw	$v1,0($a4)
.L0f0ed81c:
    # Line 781
    jalr	$t9
    addiu	$a0,$gp,-17672
    # Line 782
    la	$t9,exit
    jalr	$t9
    li	$a0,1
    b	.L0f0ecf20
    # Line 816
    la	$t9,_GLhintinit
.L0f0ed838:
    # Line 724
    addiu	$t9,$t9,-12708
    # Line 725
    bal gl_strcasecmp
    move	$a0,$s2
    beqz	$v0,.L0f0ed618
    # Line 726
    la	$t9,atoi
    jalr	$t9
    move	$a0,$s2
    b	.L0f0ed618
    sd	$v0,64($sp)
.end gl_g_winopen

# Function: gl_g_winope
# Declared: Line 979 (Source lines: 980-986)
# Address: 0x0f0ed85c - 0x0f0ed8d0 (Size: 116 bytes, Frame: 192)
.globl gl_g_winope
.ent gl_g_winope
gl_g_winope:
    # Line 980
    move	$a4,$a0
    slti	$at,$a1,15
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$gp,24($sp)
    lui	$v0,0xfff4
    addiu	$v0,$v0,23020
    bnez	$at,.L0f0ed88c
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    sd	$ra,32($sp)
    # Line 983
    li	$s0,14
.L0f0ed88c:
    # Line 984
    move	$a2,$s0
    la	$t9,strncpy
    move	$a1,$a4
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 986
    addiu	$a0,$sp,0
    la	$t9,gl_g_winopen
    # Line 985
    addiu	$v1,$sp,0
    addu	$v1,$s0,$v1
    # Line 986
    bal gl_g_winopen
    # Line 985
    sb	$zero,0($v1)
    # Line 986
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_winope

# Function: gl_g_getpor
# Declared: Line 989 (Source lines: 990-992)
# Address: 0x0f0ed8d0 - 0x0f0ed904 (Size: 52 bytes, Frame: 32)
.globl gl_g_getpor
.ent gl_g_getpor
gl_g_getpor:
    # Line 990
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,22904 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 991
    la	$t9,gl_g_winope
    sd	$ra,0($sp)
    bal gl_g_winope
    nop
    # Line 992
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_getpor

# Function: gl_g_getport
# Declared: Line 994 (Source lines: 995-997)
# Address: 0x0f0ed904 - 0x0f0ed938 (Size: 52 bytes, Frame: 32)
.globl gl_g_getport
.ent gl_g_getport
gl_g_getport:
    # Line 995
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,22852 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 996
    la	$t9,gl_g_winopen
    sd	$ra,0($sp)
    bal gl_g_winopen
    nop
    # Line 997
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_getport

# Function: gl_g_winget
# Declared: Line 999 (Source lines: 1000-1001)
# Address: 0x0f0ed938 - 0x0f0ed964 (Size: 44 bytes, Frame: 0)
.globl gl_g_winget
.ent gl_g_winget
gl_g_winget:
    # Line 1000
    lui	$v0,0xfff4
    addiu	$v0,$v0,22800
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    beqz	$a3,.L0f0ed95c
    # Line 1001
    li	$v0,-1
    lw	$v0,224($a3)
    lbu	$v0,45($v0)
.L0f0ed95c:
    jr	$ra
    nop
.end gl_g_winget

# Function: gl_g_winset
# Declared: Line 1009 (Source lines: 1010-1048)
# Address: 0x0f0ed964 - 0x0f0eda88 (Size: 292 bytes, Frame: 48)
.globl gl_g_winset
.ent gl_g_winset
gl_g_winset:
    # Line 1010
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,22756 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 1020
    la	$at,gl_sstatep
    lw	$at,0($at)
    lw	$at,28($at)
    sd	$s0,24($sp)
    # Line 1010
    move	$s0,$a0
    # Line 1020
    lw	$at,4($at)
    # Line 1024
    la	$t9,__iglooCheckCurrentContextInfo
    sd	$ra,16($sp)
    sd	$at,0($sp)
    jalr	$t9
    move	$a0,$at
    beqz	$s0,.L0f0eda50
    # Line 1039
    sll	$v0,$s0,0x2
    # Line 1036
    blez	$s0,.L0f0eda18
    slti	$v1,$s0,256
    beqz	$v1,.L0f0eda18
    # Line 1039
    la	$v1,sub_0f030000
    subu	$v0,$v0,$s0
    sll	$v0,$v0,0x2
    addiu	$v1,$v1,31352
    addu	$v0,$v0,$v1
    lw	$a1,8($v0)
    andi	$a1,$a1,0x2
    beqz	$a1,.L0f0eda04
    # Line 1041
    la	$t9,_GLsetcontext
    lw	$a0,4($v0)
    jalr	$t9
    lw	$a0,124($a0)
    beqz	$v0,.L0f0eda04
    # Line 1042
    li	$a1,1
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,4
    jalr	$t9
    addiu	$a2,$a2,17600
.L0f0eda04:
    # Line 1048
    ld	$ra,16($sp)
.L0f0eda08:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0eda18:
    # Line 1044
    la	$t9,gl_dgl_wid_to_gl
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$gp,-17264
    bltz	$v0,.L0f0eda04
    move	$s0,$v0
    # Line 1045
    la	$t9,gl_load_dgl_table
    jalr	$t9
    li	$a0,2
    # Line 1046
    la	$t9,gl_dgl_winset
    jalr	$t9
    move	$a0,$s0
    b	.L0f0eda08
    # Line 1048
    ld	$ra,16($sp)
.L0f0eda50:
    # Line 1024
    la	$at,__iglooNoReleaseContext
    lw	$at,0($at)
    beqz	$at,.L0f0eda70
    # Line 1036
    ld	$ra,16($sp)
.L0f0eda60:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0eda70:
    # Line 1034
    la	$t9,__iglooMakeNoCurrent
    ld	$a0,0($sp)
    jalr	$t9
    li	$a1,1
    b	.L0f0eda60
    # Line 1036
    ld	$ra,16($sp)
.end gl_g_winset

# Function: gl_g_winclose
# Declared: Line 1050 (Source lines: 1051-1109)
# Address: 0x0f0eda88 - 0x0f0edbd8 (Size: 336 bytes, Frame: 192)
.globl gl_g_winclose
.ent gl_g_winclose
gl_g_winclose:
    # Line 1051
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    sd	$s2,16($sp)
    sd	$gp,8($sp)
    lui	$at,0xfff4
    addiu	$at,$at,22464
    blez	$a0,.L0f0edbc4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$s0,40($sp)
    slti	$v1,$a0,256
    beqz	$v1,.L0f0edbc4
    sd	$s2,16($sp)
    # Line 1062
    sll	$s0,$a0,0x2
    la	$s2,sub_0f030000
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    addiu	$s2,$s2,31352
    addu	$s0,$s0,$s2
    lw	$a1,8($s0)
    andi	$a1,$a1,0x2
    beqzl	$a1,.L0f0edbc8
    ld	$gp,8($sp)
    # Line 1066
    lw	$v0,4($s0)
    sd	$s1,24($sp)
    # Line 1070
    lw	$s1,72($v0)
    sd	$ra,32($sp)
    beqz	$s1,.L0f0edb44
    sd	$v0,0($sp)
    sd	$ra,32($sp)
    sd	$v0,0($sp)
    # Line 1072
    la	$t9,_GLdestroycontext
.L0f0edb04:
    jalr	$t9
    lw	$a0,124($s1)
    # Line 1073
    la	$t9,_GLdestroywindow
    jalr	$t9
    move	$a0,$s1
    # Line 1074
    lbu	$a2,45($s1)
    li	$a1,12
    la	$t9,bzero
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$s2
    # Line 1070
    lw	$s1,76($s1)
    bnez	$s1,.L0f0edb04
    # Line 1072
    la	$t9,_GLdestroycontext
.L0f0edb44:
    ld	$s2,16($sp)
    # Line 1085
    la	$t9,_GLdestroycontext
    ld	$a0,0($sp)
    ld	$s1,24($sp)
    jalr	$t9
    lw	$a0,124($a0)
    lw	$a0,0($s0)
    beqz	$a0,.L0f0edb70
    # Line 1087
    la	$t9,_GLdestroywindow
    jalr	$t9
    nop
.L0f0edb70:
    # Line 1088
    la	$t9,_GLdestroywindow
    jalr	$t9
    ld	$a0,0($sp)
    # Line 1089
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    li	$a1,12
    ld	$s0,40($sp)
    # Line 1090
    la	$t9,_mex_findslot
    bal _mex_findslot
    li	$a0,1
    li	$a1,-1
    beq	$v0,$a1,.L0f0edbb0
    # Line 1092
    la	$t9,__GLwinset
    jalr	$t9
    move	$a0,$v0
.L0f0edbb0:
    # Line 1094
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    ld	$ra,32($sp)
.L0f0edbc4:
    ld	$gp,8($sp)
.L0f0edbc8:
    # Line 1109
    ld	$s0,40($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_winclose

# Function: gl_g_winconstraints
# Declared: Line 1112 (Source lines: 1113-1154)
# Address: 0x0f0edbd8 - 0x0f0edd98 (Size: 448 bytes, Frame: 224)
.globl gl_g_winconstraints
.ent gl_g_winconstraints
gl_g_winconstraints:
    # Line 1113
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    sd	$gp,72($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,22128 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1114
    la	$s0,gl_wstatep
    lw	$s0,0($s0)
    lw	$s0,224($s0)
    lbu	$at,44($s0)
    li	$v1,4
    lw	$v0,52($s0)
    beq	$at,$v1,.L0f0edd50
    lw	$a0,48($s0)
    sd	$ra,88($sp)
    # Line 1129
    move	$a1,$a0
    sd	$a0,48($sp)
    # Line 1130
    move	$v1,$v0
    sd	$v0,56($sp)
.L0f0edc24:
    # Line 1135
    move	$a0,$s0
    # Line 1133
    lw	$a3,60($s0)
    # Line 1135
    la	$t9,_GLclearHints
    # Line 1132
    lw	$a2,56($s0)
    sd	$a3,32($sp)
    # Line 1135
    jalr	$t9
    sd	$a2,40($sp)
    # Line 1136
    la	$t9,sub_0f0f0000
    move	$a0,$s0
    addiu	$t9,$t9,-17228
    bal _mex_findslot
    addiu	$a1,$sp,0
    # Line 1137
    la	$t9,sub_0f0f0000
    move	$a0,$s0
    addiu	$t9,$t9,-16884
    bal _mex_findslot
    addiu	$a1,$sp,0
    # Line 1138
    la	$t9,sub_0f0f0000
    move	$a0,$s0
    addiu	$t9,$t9,-17336
    bal _mex_findslot
    addiu	$a1,$sp,0
    # Line 1139
    la	$t9,_GLsendHints
    jalr	$t9
    move	$a0,$s0
    # Line 1140
    la	$t9,sub_0f0f0000
    sd	$s2,80($sp)
    move	$a0,$s0
    addiu	$t9,$t9,-17220
    bal _mex_findslot
    addiu	$a1,$sp,0
    lbu	$at,44($s0)
    move	$s2,$v0
    li	$v0,2
    beq	$at,$v0,.L0f0edd74
    move	$v1,$s2
.L0f0edcb4:
    # Line 1142
    beqz	$v1,.L0f0edd10
    ld	$s2,80($sp)
    # Line 1146
    ld	$a2,48($sp)
    lw	$a1,48($s0)
    ld	$v1,56($sp)
    bne	$a1,$a2,.L0f0edcf0
    ld	$s2,80($sp)
    lw	$at,52($s0)
    bne	$at,$v1,.L0f0edcf0
    ld	$a2,40($sp)
    lw	$a1,56($s0)
    bne	$a1,$a2,.L0f0edcf0
    ld	$v1,32($sp)
    lw	$at,60($s0)
    beq	$at,$v1,.L0f0edd10
.L0f0edcf0:
    # Line 1148
    la	$t9,_GLWaitForEventType
    move	$a0,$s0
    lw	$a2,64($s0)
    jalr	$t9
    li	$a1,22
    ld	$ra,88($sp)
    b	.L0f0edd44
    ld	$s0,64($sp)
.L0f0edd10:
    # Line 1151
    move	$a1,$zero
    # Line 1150
    lw	$a2,32($s0)
    # Line 1151
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    # Line 1150
    ori	$a2,$a2,0x800
    # Line 1151
    jalr	$t9
    # Line 1150
    sw	$a2,32($s0)
    # Line 1152
    lw	$ra,32($s0)
    li	$at,-2049
    and	$ra,$ra,$at
    sw	$ra,32($s0)
    ld	$s0,64($sp)
    ld	$ra,88($sp)
.L0f0edd44:
    ld	$gp,72($sp)
    # Line 1154
    jr	$ra
    addiu	$sp,$sp,96
.L0f0edd50:
    # Line 1126
    lw	$v1,68($s0)
    # Line 1127
    lw	$a1,52($v1)
    # Line 1126
    lw	$v1,48($v1)
    sd	$ra,88($sp)
    subu	$v1,$a0,$v1
    # Line 1127
    subu	$a1,$v0,$a1
    sd	$a1,56($sp)
    b	.L0f0edc24
    sd	$v1,48($sp)
.L0f0edd74:
    # Line 1142
    la	$t9,_GLfunctions
    bal _GLfunctions
    move	$a0,$s0
    la	$t9,_GLsetwmfunction
    move	$a1,$v0
    jalr	$t9
    move	$a0,$s0
    b	.L0f0edcb4
    move	$v1,$s2
.end gl_g_winconstraints

# Function: gl_g_wintit
# Declared: Line 1156 (Source lines: 1157-1165)
# Address: 0x0f0edd98 - 0x0f0ede0c (Size: 116 bytes, Frame: 144)
.globl gl_g_wintit
.ent gl_g_wintit
gl_g_wintit:
    # Line 1157
    move	$a4,$a0
    sltiu	$at,$a1,100
    addiu	$sp,$sp,-144
    sd	$s0,104($sp)
    move	$s0,$a1
    sd	$gp,112($sp)
    lui	$v0,0xfff4
    addiu	$v0,$v0,21680
    bnez	$at,.L0f0eddc8
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    sd	$ra,120($sp)
    # Line 1161
    li	$s0,99
.L0f0eddc8:
    # Line 1162
    move	$a2,$s0
    la	$t9,strncpy
    move	$a1,$a4
    sd	$ra,120($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 1164
    addiu	$a0,$sp,0
    la	$t9,gl_g_wintitle
    # Line 1163
    addiu	$v1,$sp,0
    addu	$v1,$s0,$v1
    # Line 1164
    bal gl_g_wintitle
    # Line 1163
    sb	$zero,0($v1)
    # Line 1165
    ld	$ra,120($sp)
    ld	$gp,112($sp)
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_g_wintit

# Function: gl_g_wintitle
# Declared: Line 1168 (Source lines: 1169-1172)
# Address: 0x0f0ede0c - 0x0f0ede78 (Size: 108 bytes, Frame: 32)
.globl gl_g_wintitle
.ent gl_g_wintitle
gl_g_wintitle:
    # Line 1169
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff4
    addiu	$a2,$a2,21564
    addu	$gp,$t9,$a2
    # Line 1170
    la	$a1,gl_wstatep
    sd	$ra,0($sp)
    # Line 1169
    la	$at,gl_sstatep
    # Line 1170
    lw	$a1,0($a1)
    # Line 1169
    move	$a2,$a0
    # Line 1170
    lw	$at,0($at)
    lw	$a1,224($a1)
    la	$t9,XStoreName
    lw	$at,28($at)
    lw	$a1,64($a1)
    jalr	$t9
    lw	$a0,4($at)
    la	$a0,gl_sstatep
    # Line 1171
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 1172
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_wintitle

# Function: gl_g_iconti
# Declared: Line 1174 (Source lines: 1175-1183)
# Address: 0x0f0ede78 - 0x0f0edeec (Size: 116 bytes, Frame: 144)
.globl gl_g_iconti
.ent gl_g_iconti
gl_g_iconti:
    # Line 1175
    move	$a4,$a0
    sltiu	$at,$a1,100
    addiu	$sp,$sp,-144
    sd	$s0,104($sp)
    move	$s0,$a1
    sd	$gp,112($sp)
    lui	$v0,0xfff4
    addiu	$v0,$v0,21456
    bnez	$at,.L0f0edea8
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    sd	$ra,120($sp)
    # Line 1179
    li	$s0,99
.L0f0edea8:
    # Line 1180
    move	$a2,$s0
    la	$t9,strncpy
    move	$a1,$a4
    sd	$ra,120($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 1182
    addiu	$a0,$sp,0
    la	$t9,icontitle
    # Line 1181
    addiu	$v1,$sp,0
    addu	$v1,$s0,$v1
    # Line 1182
    jalr	$t9
    # Line 1181
    sb	$zero,0($v1)
    # Line 1183
    ld	$ra,120($sp)
    ld	$gp,112($sp)
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_g_iconti

# Function: gl_g_icontitle
# Declared: Line 1185 (Source lines: 1186-1190)
# Address: 0x0f0edeec - 0x0f0edf68 (Size: 124 bytes, Frame: 48)
.globl gl_g_icontitle
.ent gl_g_icontitle
gl_g_icontitle:
    # Line 1186
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,21340
    addu	$gp,$t9,$ra
    # Line 1187
    la	$s8,gl_wstatep
    lw	$s8,0($s8)
    lw	$s8,224($s8)
    # Line 1186
    move	$a2,$a0
    # Line 1188
    la	$a3,sub_0f030000
    lbu	$a4,45($s8)
    la	$t9,XSetIconName
    addiu	$a3,$a3,31352
    sll	$a1,$a4,0x2
    subu	$a1,$a1,$a4
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    lw	$a1,4($a1)
    lw	$a0,4($s8)
    jalr	$t9
    lw	$a1,64($a1)
    # Line 1189
    la	$t9,XFlush
    jalr	$t9
    lw	$a0,4($s8)
    # Line 1190
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_icontitle

# Function: gl_g_getsize
# Declared: Line 1192 (Source lines: 1193-1229)
# Address: 0x0f0edf68 - 0x0f0ee0dc (Size: 372 bytes, Frame: 224)
.globl gl_g_getsize
.ent gl_g_getsize
gl_g_getsize:
    # Line 1193
    addiu	$sp,$sp,-96
    sd	$gp,56($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,21216 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a3,gl_wstatep
    # Line 1204
    li	$a2,1
    # Line 1195
    sw	$zero,20($sp)
    lw	$a4,0($a3)
    sw	$zero,16($sp)
    sd	$a1,40($sp)
    beqz	$a4,.L0f0ee088
    sd	$a0,48($sp)
    # Line 1199
    lw	$t1,224($a4)
    lw	$v0,32($t1)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0f0edfe0
    # Line 1201
    ld	$at,48($sp)
    lw	$a2,12($t1)
    lw	$a2,116($a2)
    sw	$a2,0($at)
    # Line 1202
    lw	$v1,0($a3)
    lw	$v1,224($v1)
    lw	$v1,12($v1)
    ld	$a2,40($sp)
    lw	$v1,120($v1)
    sw	$v1,0($a2)
.L0f0edfd4:
    ld	$gp,56($sp)
.L0f0edfd8:
    # Line 1229
    jr	$ra
    addiu	$sp,$sp,96
.L0f0edfe0:
    # Line 1204
    lbu	$a0,44($t1)
    li	$at,2
    beq	$a0,$at,.L0f0ee094
    li	$v0,3
    beq	$a0,$v0,.L0f0ee094
    li	$at,5
    li	$v1,4
    beq	$a0,$v1,.L0f0ee098
    # Line 1208
    la	$t9,gl_fast_qcheck
    # Line 1204
    beq	$a0,$a2,.L0f0ee018
    # Line 1214
    addiu	$a7,$sp,16
    # Line 1204
    bnel	$a0,$at,.L0f0edfd8
    ld	$gp,56($sp)
    # Line 1214
    addiu	$a7,$sp,16
.L0f0ee018:
    ld	$a6,40($sp)
    ld	$a5,48($sp)
    addiu	$a4,$sp,32
    la	$a0,gl_sstatep
    addiu	$a3,$sp,28
    addiu	$a2,$sp,24
    lw	$a0,0($a0)
    lw	$a1,8($t1)
    sd	$ra,64($sp)
    lw	$a0,28($a0)
    la	$t9,XGetGeometry
    addiu	$v0,$sp,20
    lw	$a0,4($a0)
    jalr	$t9
    sw	$v0,4($sp)
    la	$ra,gl_wstatep
    # Line 1224
    ld	$at,48($sp)
    lw	$v0,0($ra)
    lw	$at,0($at)
    lw	$v0,224($v0)
    sw	$at,56($v0)
    # Line 1225
    ld	$a2,40($sp)
    lw	$ra,0($ra)
    lw	$a2,0($a2)
    lw	$ra,224($ra)
    sw	$a2,60($ra)
    b	.L0f0edfd4
    ld	$ra,64($sp)
.L0f0ee088:
    ld	$gp,56($sp)
    # Line 1199
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ee094:
    # Line 1208
    la	$t9,gl_fast_qcheck
.L0f0ee098:
    move	$a0,$zero
    sd	$ra,64($sp)
    jalr	$t9
    li	$a1,1
    la	$v0,gl_wstatep
    # Line 1209
    lw	$v1,0($v0)
    lw	$v1,224($v1)
    ld	$a2,48($sp)
    lw	$v1,56($v1)
    sw	$v1,0($a2)
    # Line 1210
    lw	$v0,0($v0)
    lw	$v0,224($v0)
    ld	$v1,40($sp)
    lw	$v0,60($v0)
    ld	$ra,64($sp)
    # Line 1211
    b	.L0f0edfd4
    # Line 1210
    sw	$v0,0($v1)
.end gl_g_getsize

# Function: gl_g_getorigin
# Declared: Line 1231 (Source lines: 1232-1261)
# Address: 0x0f0ee0dc - 0x0f0ee274 (Size: 408 bytes, Frame: 192)
.globl gl_g_getorigin
.ent gl_g_getorigin
gl_g_getorigin:
    # Line 1232
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,20844 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a3,gl_wstatep
    # Line 1242
    li	$v1,4
    # Line 1232
    lw	$a4,0($a3)
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    beqz	$a4,.L0f0ee220
    # Line 1242
    li	$at,2
    # Line 1238
    lw	$a1,224($a4)
    lw	$v0,32($a1)
    andi	$v0,$v0,0x1
    beqzl	$v0,.L0f0ee13c
    # Line 1242
    lbu	$a0,44($a1)
    # Line 1240
    ld	$v1,24($sp)
    ld	$a2,16($sp)
    sw	$zero,0($a2)
    sw	$zero,0($v1)
.L0f0ee130:
    ld	$gp,32($sp)
.L0f0ee134:
    # Line 1261
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ee13c:
    # Line 1242
    beq	$a0,$at,.L0f0ee22c
    li	$v0,3
    beq	$a0,$v0,.L0f0ee22c
    li	$at,5
    beq	$a0,$v1,.L0f0ee22c
    li	$a2,1
    beq	$a0,$a2,.L0f0ee168
    # Line 1252
    la	$t9,getsize
    # Line 1242
    bnel	$a0,$at,.L0f0ee134
    ld	$gp,32($sp)
    # Line 1252
    la	$t9,getsize
.L0f0ee168:
    addiu	$a1,$sp,4
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 1253
    addiu	$a7,$sp,8
    ld	$a6,16($sp)
    la	$a1,gl_wstatep
    ld	$a5,24($sp)
    move	$a4,$zero
    lw	$a1,0($a1)
    la	$a0,gl_sstatep
    move	$a3,$zero
    lw	$a1,224($a1)
    lw	$a0,0($a0)
    la	$t9,XTranslateCoordinates
    lw	$a2,12($a1)
    lw	$a0,28($a0)
    lw	$a1,8($a1)
    lw	$a2,112($a2)
    lw	$a0,4($a0)
    jalr	$t9
    lw	$a2,64($a2)
    la	$a0,gl_wstatep
    # Line 1256
    ld	$a1,16($sp)
    lw	$a2,4($sp)
    lw	$a0,0($a0)
    lw	$a1,0($a1)
    la	$t9,_GLinvertY
    lw	$a0,224($a0)
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,-1
    ld	$a2,16($sp)
    la	$a3,gl_wstatep
    sw	$v0,0($a2)
    # Line 1257
    ld	$ra,24($sp)
    lw	$at,0($a3)
    lw	$ra,0($ra)
    lw	$at,224($at)
    sw	$ra,48($at)
    # Line 1258
    lw	$a3,0($a3)
    lw	$a2,0($a2)
    lw	$a3,224($a3)
    ld	$ra,40($sp)
    b	.L0f0ee130
    sw	$a2,52($a3)
.L0f0ee220:
    ld	$gp,32($sp)
    # Line 1238
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ee22c:
    # Line 1246
    la	$t9,gl_fast_qcheck
    move	$a0,$zero
    sd	$ra,40($sp)
    jalr	$t9
    li	$a1,1
    la	$at,gl_wstatep
    # Line 1247
    lw	$v0,0($at)
    lw	$v0,224($v0)
    ld	$v1,24($sp)
    lw	$v0,48($v0)
    sw	$v0,0($v1)
    # Line 1248
    lw	$at,0($at)
    lw	$at,224($at)
    ld	$v0,16($sp)
    lw	$at,52($at)
    ld	$ra,40($sp)
    # Line 1249
    b	.L0f0ee130
    # Line 1248
    sw	$at,0($v0)
.end gl_g_getorigin

# Function: gl_g_winposition
# Declared: Line 1317 (Source lines: 1318-1378)
# Address: 0x0f0ee274 - 0x0f0ee4bc (Size: 584 bytes, Frame: 224)
.globl gl_g_winposition
.ent gl_g_winposition
gl_g_winposition:
    # Line 1318
    slt	$at,$a1,$a0
    addiu	$sp,$sp,-96
    sd	$s2,24($sp)
    move	$s2,$a0
    sd	$gp,0($sp)
    lui	$v0,0xfff4
    addiu	$v0,$v0,20436
    sd	$s3,16($sp)
    move	$s3,$a2
    sd	$s1,8($sp)
    move	$s1,$a3
    # Line 1331
    slt	$a6,$s1,$s3
    # Line 1318
    beqz	$at,.L0f0ee2b8
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 1331
    move	$v1,$s2
    move	$s2,$a1
    move	$a1,$v1
.L0f0ee2b8:
    beqz	$a6,.L0f0ee2d4
    # Line 1336
    subu	$at,$a1,$s2
    # Line 1334
    move	$a7,$s3
    sd	$s4,40($sp)
    sd	$s5,32($sp)
    move	$s3,$s1
    move	$s1,$a7
.L0f0ee2d4:
    sd	$s5,32($sp)
    # Line 1336
    addiu	$s5,$at,1
    sd	$s4,40($sp)
    # Line 1337
    subu	$v0,$s1,$s3
    li	$a0,-1
    beq	$at,$a0,.L0f0ee478
    addiu	$s4,$v0,1
.L0f0ee2f0:
    # Line 1339
    beql	$v0,$a0,.L0f0ee480
    sd	$ra,56($sp)
.L0f0ee2f8:
    sd	$s0,48($sp)
    # Line 1343
    la	$t9,gl_fast_qcheck
    move	$a0,$zero
    sd	$ra,56($sp)
    jalr	$t9
    li	$a1,1
    # Line 1344
    la	$s0,gl_wstatep
    lw	$s0,0($s0)
    # Line 1345
    move	$a1,$zero
    # Line 1344
    beqz	$s2,.L0f0ee488
    lw	$s0,224($s0)
.L0f0ee324:
    # Line 1345
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-16976
    bal _mex_findslot
    move	$a0,$s0
    lbu	$at,44($s0)
    li	$v1,4
    bne	$at,$v1,.L0f0ee3b4
    ld	$ra,56($sp)
    # Line 1350
    lw	$at,68($s0)
    # Line 1352
    lw	$a0,52($s0)
    lw	$a6,52($at)
    # Line 1351
    lw	$v0,48($s0)
    lw	$v1,48($at)
    # Line 1350
    lw	$at,60($at)
    # Line 1352
    subu	$a0,$a0,$a6
    # Line 1351
    subu	$v0,$v0,$v1
    # Line 1350
    subu	$s1,$at,$s1
    # Line 1356
    bne	$s2,$v0,.L0f0ee3d8
    # Line 1350
    addiu	$s1,$s1,-1
.L0f0ee370:
    # Line 1356
    bnel	$s3,$a0,.L0f0ee3dc
    # Line 1359
    lw	$at,32($s0)
    # Line 1358
    lw	$v1,60($s0)
    bnel	$v1,$s4,.L0f0ee3dc
    # Line 1359
    lw	$at,32($s0)
    # Line 1358
    lw	$a6,56($s0)
    bnel	$a6,$s5,.L0f0ee3dc
    # Line 1359
    lw	$at,32($s0)
    ld	$gp,0($sp)
    ld	$s0,48($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    ld	$s3,16($sp)
    ld	$s4,40($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ee3b4:
    # Line 1354
    la	$t9,_GLinvertY
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 1355
    lw	$a7,48($s0)
    # Line 1354
    move	$s1,$v0
    # Line 1356
    lw	$a0,52($s0)
    beq	$s2,$a7,.L0f0ee370
    ld	$ra,56($sp)
.L0f0ee3d8:
    # Line 1359
    lw	$at,32($s0)
.L0f0ee3dc:
    andi	$at,$at,0x80
    beqz	$at,.L0f0ee3f8
    # Line 1367
    la	$t9,_GLsendHints
    move	$a0,$s0
    # Line 1366
    sw	$s4,116($s0)
    # Line 1367
    jalr	$t9
    # Line 1365
    sw	$s5,112($s0)
.L0f0ee3f8:
    # Line 1370
    move	$a5,$s4
    move	$a4,$s5
    move	$a3,$s1
    move	$a2,$s2
    la	$t9,XMoveResizeWindow
    # Line 1369
    lw	$s3,4($s0)
    # Line 1370
    lw	$a1,64($s0)
    jalr	$t9
    move	$a0,$s3
    # Line 1371
    la	$t9,_GLresizeOvWindows
    move	$a0,$s0
    move	$a1,$s5
    jalr	$t9
    move	$a2,$s4
    ld	$s4,40($sp)
    ld	$s5,32($sp)
    # Line 1372
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s3
    # Line 1377
    la	$t9,_GLWaitForEventType
    move	$a0,$s0
    lw	$a2,64($s0)
    jalr	$t9
    li	$a1,22
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    # Line 1378
    ld	$s1,8($sp)
    ld	$s3,16($sp)
    ld	$s2,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ee478:
    b	.L0f0ee2f0
    # Line 1339
    li	$s5,1
.L0f0ee480:
    b	.L0f0ee2f8
    # Line 1341
    li	$s4,1
.L0f0ee488:
    # Line 1344
    bnez	$s3,.L0f0ee324
    nop
    # Line 1345
    lw	$v0,12($s0)
    lw	$v1,116($v0)
    slt	$v1,$s5,$v1
    bnez	$v1,.L0f0ee324
    nop
    lw	$a6,120($v0)
    slt	$a6,$s4,$a6
    bnez	$a6,.L0f0ee324
    nop
    b	.L0f0ee324
    li	$a1,1
.end gl_g_winposition

# Function: gl_g_winpush
# Declared: Line 1381 (Source lines: 1382-1386)
# Address: 0x0f0ee4bc - 0x0f0ee534 (Size: 120 bytes, Frame: 16)
.globl gl_g_winpush
.ent gl_g_winpush
gl_g_winpush:
    # Line 1382
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff4
    addiu	$a2,$a2,19852
    addu	$gp,$t9,$a2
    # Line 1383
    la	$a1,gl_wstatep
    # Line 1382
    la	$a0,gl_sstatep
    # Line 1383
    lw	$a1,0($a1)
    sd	$ra,0($sp)
    lw	$a0,0($a0)
    lw	$a1,224($a1)
    la	$t9,XLowerWindow
    lw	$a0,28($a0)
    lw	$a1,64($a1)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 1384
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 1385
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    # Line 1386
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_winpush

# Function: gl_g_winpop
# Declared: Line 1388 (Source lines: 1389-1393)
# Address: 0x0f0ee534 - 0x0f0ee5ac (Size: 120 bytes, Frame: 16)
.globl gl_g_winpop
.ent gl_g_winpop
gl_g_winpop:
    # Line 1389
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff4
    addiu	$a2,$a2,19732
    addu	$gp,$t9,$a2
    # Line 1390
    la	$a1,gl_wstatep
    # Line 1389
    la	$a0,gl_sstatep
    # Line 1390
    lw	$a1,0($a1)
    sd	$ra,0($sp)
    lw	$a0,0($a0)
    lw	$a1,224($a1)
    la	$t9,XRaiseWindow
    lw	$a0,28($a0)
    lw	$a1,64($a1)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 1391
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 1392
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    # Line 1393
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_winpop

# Function: gl_g_winmove
# Declared: Line 1395 (Source lines: 1396-1415)
# Address: 0x0f0ee5ac - 0x0f0ee6c8 (Size: 284 bytes, Frame: 48)
.globl gl_g_winmove
.ent gl_g_winmove
gl_g_winmove:
    # Line 1396
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    sd	$gp,0($sp)
    sd	$s1,8($sp)
    lui	$s1,0xfff4
    addiu	$s1,$s1,19612
    addu	$gp,$t9,$s1
    # Line 1397
    la	$s0,gl_wstatep
    lw	$s0,0($s0)
    lw	$s0,224($s0)
    # Line 1400
    li	$v1,4
    lw	$v0,60($s0)
    lbu	$at,44($s0)
    # Line 1396
    move	$s1,$a0
    # Line 1400
    addu	$v0,$v0,$a1
    bne	$at,$v1,.L0f0ee688
    addiu	$v0,$v0,-1
    # Line 1402
    lw	$v1,68($s0)
    # Line 1404
    lw	$a0,52($s0)
    lw	$a5,52($v1)
    # Line 1403
    lw	$a4,48($v1)
    # Line 1402
    lw	$v1,60($v1)
    # Line 1403
    lw	$a1,48($s0)
    # Line 1404
    subu	$a0,$a0,$a5
    # Line 1402
    subu	$v0,$v1,$v0
    # Line 1403
    subu	$a1,$a1,$a4
    # Line 1408
    beq	$s1,$a1,.L0f0ee6ac
    # Line 1402
    addiu	$v0,$v0,-1
.L0f0ee61c:
    # Line 1411
    la	$a0,gl_sstatep
.L0f0ee620:
    # Line 1412
    move	$a3,$v0
    move	$a2,$s1
    lw	$a0,0($a0)
    lw	$a1,64($s0)
    la	$t9,XMoveWindow
    lw	$a0,28($a0)
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 1413
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 1414
    la	$t9,_GLWaitForEventType
    move	$a0,$s0
    lw	$a2,64($s0)
    jalr	$t9
    li	$a1,22
    ld	$gp,0($sp)
    # Line 1415
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ee688:
    # Line 1406
    la	$t9,_GLinvertY
    move	$a0,$s0
    sd	$ra,24($sp)
    jalr	$t9
    move	$a1,$v0
    # Line 1407
    lw	$a4,48($s0)
    # Line 1408
    lw	$a0,52($s0)
    bne	$s1,$a4,.L0f0ee61c
    ld	$ra,24($sp)
.L0f0ee6ac:
    bne	$v0,$a0,.L0f0ee620
    # Line 1411
    la	$a0,gl_sstatep
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_winmove

# Function: gl_g_swinopen
# Declared: Line 1419 (Source lines: 1420-1465)
# Address: 0x0f0ee6c8 - 0x0f0ee8b4 (Size: 492 bytes, Frame: 192)
.globl gl_g_swinopen
.ent gl_g_swinopen
gl_g_swinopen:
    # Line 1420
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 1424
    sll	$s0,$a0,0x2
    sd	$gp,16($sp)
    # Line 1420
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,19328 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v0,sub_0f030000
    # Line 1424
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    # Line 1420
    addiu	$v0,$v0,31352
    # Line 1424
    addu	$s0,$s0,$v0
    lw	$s0,4($s0)
    # Line 1425
    lbu	$a1,44($s0)
    li	$v1,4
    li	$at,2
    beq	$a1,$at,.L0f0ee720
    # Line 1428
    li	$v0,-1
    # Line 1425
    bnel	$a1,$v1,.L0f0ee894
    ld	$gp,16($sp)
    sd	$ra,24($sp)
    # Line 1427
    lw	$s0,68($s0)
.L0f0ee720:
    # Line 1430
    la	$t9,_mex_findslot
    sd	$ra,24($sp)
    bal _mex_findslot
    move	$a0,$zero
    sd	$v0,0($sp)
    li	$a3,-1
    beq	$v0,$a3,.L0f0ee8a0
    ld	$ra,24($sp)
    # Line 1438
    la	$t9,_GLnewwindow
    sd	$s1,32($sp)
    jalr	$t9
    move	$a0,$s0
    move	$s1,$v0
    la	$a7,sub_0f030000
    ld	$a4,0($sp)
    # Line 1441
    li	$a1,1
    addiu	$a7,$a7,31352
    # Line 1438
    sll	$a6,$a4,0x2
    subu	$a6,$a6,$a4
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a7
    # Line 1439
    lw	$a5,8($a6)
    # Line 1441
    la	$t9,_GLnewcontext
    # Line 1438
    sw	$v0,4($a6)
    # Line 1439
    ori	$a5,$a5,0x2
    sw	$a5,8($a6)
    # Line 1440
    sb	$a4,45($v0)
    # Line 1441
    jalr	$t9
    lw	$a0,12($v0)
    # Line 1442
    la	$t9,_GLbindcontext
    # Line 1441
    move	$a1,$v0
    # Line 1442
    move	$a0,$s1
    jalr	$t9
    # Line 1441
    sw	$v0,124($s1)
    # Line 1443
    li	$a5,1
    la	$a0,gl_sstatep
    li	$a4,1
    move	$a3,$zero
    lw	$a0,0($a0)
    move	$a2,$zero
    la	$t9,XMoveResizeWindow
    lw	$a0,28($a0)
    lw	$a1,64($s1)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 1444
    li	$a5,1
    la	$a0,gl_sstatep
    li	$a4,1
    move	$a3,$zero
    lw	$a0,0($a0)
    move	$a2,$zero
    la	$t9,XMoveResizeWindow
    lw	$a0,28($a0)
    lw	$a1,8($s1)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 1446
    la	$t9,_GLisInterested
    li	$a0,534
    # Line 1445
    lui	$a1,0x2
    # Line 1446
    bal _GLisInterested
    sd	$a1,40($sp)
    beqz	$v0,.L0f0ee824
    ld	$a2,40($sp)
    # Line 1447
    lui	$a2,0x22
    ori	$a2,$a2,0x30
.L0f0ee824:
    # Line 1448
    la	$t9,XSelectInput
    lw	$a1,64($s1)
    jalr	$t9
    lw	$a0,4($s1)
    # Line 1449
    la	$t9,_GLmapwindow
    jalr	$t9
    move	$a0,$s1
    # Line 1450
    la	$t9,_GLSelectInput
    bal _GLSelectInput
    move	$a0,$s1
    # Line 1451
    la	$t9,_GLcreateOvWindows
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 1452
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    move	$a1,$zero
    jalr	$t9
    ld	$s1,32($sp)
    # Line 1453
    la	$t9,__GLwinset
    jalr	$t9
    ld	$a0,0($sp)
    ld	$v0,0($sp)
    # Line 1465
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ee894:
    # Line 1428
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ee8a0:
    # Line 1431
    li	$v0,-1
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_swinopen

# Function: gl_g_windepth
# Declared: Line 1469 (Source lines: 1470-1506)
# Address: 0x0f0ee8b4 - 0x0f0eea4c (Size: 408 bytes, Frame: 208)
.globl gl_g_windepth
.ent gl_g_windepth
gl_g_windepth:
    # Line 1480
    slti	$at,$a0,257
    # Line 1470
    addiu	$sp,$sp,-80
    sd	$gp,48($sp)
    lui	$v0,0xfff4
    addiu	$v0,$v0,18836
    # Line 1480
    beqz	$at,.L0f0ee984
    # Line 1470
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 1480
    blez	$a0,.L0f0ee984
    move	$a1,$zero
    la	$at,sub_0f030000
.L0f0ee8dc:
    bnez	$a1,.L0f0ee974
    sll	$a3,$a0,0x2
    addiu	$at,$at,31352
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$at
    lw	$a3,4($a3)
    beqz	$a3,.L0f0ee978
    # Line 1483
    move	$v0,$zero
    # Line 1486
    lw	$at,12($a3)
    sd	$ra,16($sp)
    lw	$at,112($at)
    sd	$s2,40($sp)
    la	$s2,gl_sstatep
    lw	$at,64($at)
    sd	$s1,32($sp)
    # Line 1485
    lw	$s1,64($a3)
    sd	$at,24($sp)
.L0f0ee924:
    # Line 1491
    addiu	$a5,$sp,12
    addiu	$a4,$sp,8
    addiu	$a3,$sp,4
    lw	$a0,0($s2)
    addiu	$a2,$sp,0
    la	$t9,XQueryTree
    lw	$a0,28($a0)
    move	$a1,$s1
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$v0,.L0f0eea14
    # Line 1493
    la	$t9,XFree
    jalr	$t9
    lw	$a0,8($sp)
    # Line 1494
    lw	$a0,4($sp)
    lw	$a2,0($sp)
    beq	$a2,$a0,.L0f0ee990
    # Line 1499
    addiu	$a5,$sp,12
    # Line 1496
    b	.L0f0ee924
    move	$s1,$a0
.L0f0ee974:
    # Line 1483
    move	$v0,$zero
.L0f0ee978:
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ee984:
    # Line 1480
    li	$a1,1
    b	.L0f0ee8dc
    la	$at,sub_0f030000
.L0f0ee990:
    # Line 1499
    addiu	$a4,$sp,8
    addiu	$a3,$sp,4
    lw	$a0,0($s2)
    addiu	$a2,$sp,0
    la	$t9,XQueryTree
    lw	$a0,28($a0)
    ld	$a1,24($sp)
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$v0,.L0f0eea30
    # Line 1501
    lw	$a3,12($sp)
    lw	$a0,8($sp)
    beqz	$a3,.L0f0ee9e8
    move	$s2,$a3
    sll	$a1,$s2,0x2
    addu	$a1,$a1,$a0
    # Line 1503
    lw	$a2,-4($a1)
.L0f0ee9d4:
    addiu	$a1,$a1,-4
    beq	$a2,$s1,.L0f0ee9e8
    addiu	$s2,$s2,-1
    bnel	$a1,$a0,.L0f0ee9d4
    lw	$a2,-4($a1)
.L0f0ee9e8:
    # Line 1505
    la	$t9,XFree
    jalr	$t9
    nop
    ld	$gp,48($sp)
    # Line 1506
    lw	$v0,12($sp)
    ld	$s1,32($sp)
    ld	$ra,16($sp)
    subu	$v0,$v0,$s2
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0eea14:
    # Line 1492
    move	$v0,$zero
    ld	$gp,48($sp)
    ld	$ra,16($sp)
    ld	$s1,32($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0eea30:
    # Line 1500
    move	$v0,$zero
    ld	$gp,48($sp)
    ld	$ra,16($sp)
    ld	$s1,32($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_windepth

# Function: gl_findwin
# Declared: Line 1510 (Source lines: 1511-1512)
# Address: 0x0f0eea4c - 0x0f0eea94 (Size: 72 bytes, Frame: 0)
.globl gl_findwin
.ent gl_findwin
gl_findwin:
    # Line 1512
    slti	$v0,$a0,257
    # Line 1511
    lui	$v1,0xfff4
    addiu	$v1,$v1,18428
    # Line 1512
    beqz	$v0,.L0f0eea8c
    # Line 1511
    addu	$at,$t9,$v1
    # Line 1512
    lw	$v1,-32676($at)
    blez	$a0,.L0f0eea8c
    addiu	$v1,$v1,31352
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    lw	$v0,4($v0)
    lw	$v0,124($v0)
    jr	$ra
    nop
.L0f0eea8c:
    jr	$ra
    move	$v0,$zero
.end gl_findwin

# Function: gl_g_getwscrn
# Declared: Line 1517 (Source lines: 1518-1522)
# Address: 0x0f0eea94 - 0x0f0eeac8 (Size: 52 bytes, Frame: 0)
.globl gl_g_getwscrn
.ent gl_g_getwscrn
gl_g_getwscrn:
    # Line 1518
    lui	$v0,0xfff4
    addiu	$v0,$v0,18356
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    beqz	$a3,.L0f0eeac0
    # Line 1522
    li	$v0,-1
    # Line 1520
    lw	$v0,224($a3)
    lw	$v0,12($v0)
    jr	$ra
    lw	$v0,8($v0)
.L0f0eeac0:
    # Line 1522
    jr	$ra
    nop
.end gl_g_getwscrn

# Function: _GLclearSlots
# Declared: Line 1525 (Source lines: 1526-1528)
# Address: 0x0f0eeac8 - 0x0f0eeb04 (Size: 60 bytes, Frame: 16)
.globl _GLclearSlots
.ent _GLclearSlots
_GLclearSlots:
    # Line 1526
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a1,0xfff4
    addiu	$a1,$a1,18304
    addu	$gp,$t9,$a1
    # Line 1527
    la	$t9,bzero
    la	$a0,sub_0f030000
    li	$a1,3072
    jalr	$t9
    addiu	$a0,$a0,31352
    # Line 1528
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end _GLclearSlots

# Function: gl_wmgexit
# Declared: Line 1533 (Source lines: 1534-1559)
# Address: 0x0f0eeb04 - 0x0f0eec30 (Size: 300 bytes, Frame: 32)
.globl gl_wmgexit
.ent gl_wmgexit
gl_wmgexit:
    # Line 1534
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,18244 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 1536
    la	$at,_GLdirtycmaps
    sd	$s7,8($sp)
    sd	$s5,0($sp)
    lw	$at,0($at)
    la	$s5,sub_0f030000
    # Line 1535
    move	$s7,$zero
    # Line 1536
    beqz	$at,.L0f0eeb4c
    addiu	$s5,$s5,31364
    # Line 1538
    la	$t9,_GLflushcmaps
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f0eeb4c:
    # Line 1539
    li	$a4,256
    lw	$a1,4($s5)
    li	$a3,16
    addiu	$s5,$s5,12
    beqz	$a1,.L0f0eeb74
    li	$a2,1
    lw	$v1,32($a1)
    andi	$v1,$v1,0x30
    beq	$v1,$a3,.L0f0eec28
    nop
.L0f0eeb74:
    b	.L0f0eeba0
    addiu	$a2,$a2,1
.L0f0eeb7c:
    lw	$a1,16($s5)
.L0f0eeb80:
    beqz	$a1,.L0f0eeb98
    addiu	$s5,$s5,24
    lw	$a0,32($a1)
    andi	$a0,$a0,0x30
    beq	$a0,$a3,.L0f0eebc4
    nop
.L0f0eeb98:
    beq	$a2,$a4,.L0f0eebcc
    move	$v0,$s7
.L0f0eeba0:
    lw	$a1,4($s5)
    beqz	$a1,.L0f0eeb7c
    addiu	$a2,$a2,2
    lw	$at,32($a1)
    andi	$at,$at,0x30
    bnel	$at,$a3,.L0f0eeb80
    lw	$a1,16($s5)
    b	.L0f0eeb7c
    # Line 1542
    li	$s7,1
.L0f0eebc4:
    b	.L0f0eeb98
    li	$s7,1
.L0f0eebcc:
    ld	$s7,8($sp)
    # Line 1539
    beqz	$v0,.L0f0eec1c
    ld	$s5,0($sp)
    # Line 1546
    la	$a3,gl_sstatep
    lw	$a3,0($a3)
    ld	$s7,8($sp)
    lw	$a3,28($a3)
    ld	$s5,0($sp)
    sd	$ra,24($sp)
    # Line 1547
    lw	$a0,4($a3)
    # Line 1557
    lw	$a3,8($a3)
    la	$t9,XInstallColormap
    lw	$a1,140($a0)
    sll	$a2,$a3,0x2
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x4
    addu	$a1,$a1,$a2
    jalr	$t9
    lw	$a1,48($a1)
    ld	$ra,24($sp)
.L0f0eec1c:
    ld	$gp,16($sp)
    # Line 1559
    jr	$ra
    addiu	$sp,$sp,32
.L0f0eec28:
    b	.L0f0eeb74
    # Line 1542
    li	$s7,1
.end gl_wmgexit

.late_rodata
jtbl_0f024318:
    .word .L0f0eb904
    .word .L0f0eb904
    .word .L0f0eb948
    .word .L0f0eb910
    .word .L0f0eb91c
    .word .L0f0eb928
    .word .L0f0eb934
    .word .L0f0eb940
    .word .L0f0eb904
    .word .L0f0eb904
    .word .L0f0eb904
    .word .L0f0eb968
    .word .L0f0eb8ec
    .word .L0f0eb974
    .word .L0f0eb97c
    .word .L0f0eb988

