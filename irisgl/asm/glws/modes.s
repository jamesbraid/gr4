# Source: ../igloo/glws/modes.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/modes.c -o modes.T
# Total Functions: 28

.text

# Function: gl_g_getcmmode
# Declared: Line 44 (Source lines: 46-46)
# Address: 0x0f0ef75c - 0x0f0ef764 (Size: 8 bytes, Frame: 0)
.globl gl_g_getcmmode
.ent gl_g_getcmmode
gl_g_getcmmode:
    # Line 46
    jr	$ra
    li	$v0,1
.end gl_g_getcmmode

# Function: gl_g_getdisplaymode
# Declared: Line 49 (Source lines: 50-74)
# Address: 0x0f0ef764 - 0x0f0ef7d8 (Size: 116 bytes, Frame: 0)
.globl gl_g_getdisplaymode
.ent gl_g_getdisplaymode
gl_g_getdisplaymode:
    # Line 50
    lui	$v0,0xfff4
    addiu	$v0,$v0,15076
    addu	$at,$t9,$v0
    # Line 55
    lw	$a4,-23296($at)
    lw	$a4,0($a4)
    lw	$a4,276($a4)
    lw	$a4,60($a4)
    # Line 59
    lw	$a3,0($a4)
    li	$v1,1
    beq	$a3,$v1,.L0f0ef7b4
    # Line 52
    move	$v0,$zero
    # Line 59
    li	$v1,2
    beql	$a3,$v1,.L0f0ef7a4
    # Line 68
    lw	$a0,4($a4)
.L0f0ef79c:
    # Line 74
    jr	$ra
    nop
.L0f0ef7a4:
    # Line 68
    beqz	$a0,.L0f0ef7c8
    # Line 71
    li	$v0,2
    b	.L0f0ef79c
    nop
.L0f0ef7b4:
    # Line 61
    lw	$a1,4($a4)
    beqz	$a1,.L0f0ef7d0
    # Line 64
    li	$v0,1
    b	.L0f0ef79c
    nop
.L0f0ef7c8:
    # Line 74
    jr	$ra
    # Line 69
    li	$v0,5
.L0f0ef7d0:
    # Line 74
    jr	$ra
    # Line 62
    move	$v0,$zero
.end gl_g_getdisplaymode

# Function: _fb_initmodes
# Declared: Line 83 (Source lines: 86-96)
# Address: 0x0f0ef7d8 - 0x0f0ef824 (Size: 76 bytes, Frame: 0)
.globl _fb_initmodes
.ent _fb_initmodes
_fb_initmodes:
    # Line 95
    sw	$zero,48($a0)
    # Line 86
    li	$a1,1
    # Line 92
    sw	$a1,24($a0)
    # Line 86
    sw	$a1,0($a0)
    # Line 92
    lw	$at,16($a0)
    # Line 87
    sw	$a1,4($a0)
    # Line 92
    sw	$a1,28($a0)
    sw	$at,40($a0)
    move	$at,$a1
    # Line 94
    li	$v1,2
    sh	$v1,52($a0)
    # Line 92
    lw	$v0,20($a0)
    lw	$v1,12($a0)
    # Line 88
    sw	$zero,8($a0)
    # Line 92
    sw	$v0,44($a0)
    lw	$v0,8($a0)
    sw	$v1,36($a0)
    # Line 96
    jr	$ra
    # Line 92
    sw	$v0,32($a0)
.end _fb_initmodes

# Function: _fb_initcolors
# Declared: Line 100 (Source lines: 101-111)
# Address: 0x0f0ef824 - 0x0f0ef864 (Size: 64 bytes, Frame: 0)
.globl _fb_initcolors
.ent _fb_initcolors
_fb_initcolors:
    # Line 106
    li	$v0,-1
    # Line 107
    li	$a1,1
    # Line 110
    sb	$a1,75($a0)
    # Line 109
    sb	$a1,74($a0)
    # Line 108
    sb	$a1,73($a0)
    # Line 101
    lui	$v1,0xfff4
    addiu	$v1,$v1,14884
    addu	$at,$t9,$v1
    # Line 102
    lwc1	$f0,-19664($at)
    # Line 107
    sb	$a1,72($a0)
    # Line 106
    sw	$v0,76($a0)
    # Line 105
    swc1	$f0,68($a0)
    # Line 104
    swc1	$f0,64($a0)
    # Line 103
    swc1	$f0,60($a0)
    # Line 111
    jr	$ra
    # Line 102
    swc1	$f0,56($a0)
.end _fb_initcolors

# Function: gl_g_getdrawmode
# Declared: Line 113 (Source lines: 114-116)
# Address: 0x0f0ef864 - 0x0f0ef884 (Size: 32 bytes, Frame: 0)
.globl gl_g_getdrawmode
.ent gl_g_getdrawmode
gl_g_getdrawmode:
    # Line 114
    lui	$v1,0xfff4
    addiu	$v1,$v1,14820
    addu	$at,$t9,$v1
    # Line 116
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    jr	$ra
    lw	$v0,56($v0)
.end gl_g_getdrawmode

# Function: gl_g_getplanes
# Declared: Line 119 (Source lines: 120-163)
# Address: 0x0f0ef884 - 0x0f0ef93c (Size: 184 bytes, Frame: 32)
.globl gl_g_getplanes
.ent gl_g_getplanes
gl_g_getplanes:
    # Line 120
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,14788 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    lw	$at,0($at)
    lw	$at,276($at)
    lw	$at,56($at)
    li	$v0,256
    beq	$at,$v0,.L0f0ef900
    # Line 141
    la	$t9,__iglooGetVisualInfo
    sd	$ra,16($sp)
    jalr	$t9
    nop
    move	$a2,$v0
    beqz	$v0,.L0f0ef934
    ld	$ra,16($sp)
    lw	$v1,16($a2)
    beqzl	$v1,.L0f0ef908
    # Line 154
    lw	$at,12($a2)
    # Line 149
    lw	$a1,36($a2)
    lw	$a0,44($a2)
    lw	$v1,40($a2)
    lw	$v0,32($a2)
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$a1
    addu	$v0,$v0,$v1
.L0f0ef8f4:
    ld	$gp,8($sp)
.L0f0ef8f8:
    # Line 163
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ef900:
    # Line 135
    b	.L0f0ef8f4
    move	$v0,$zero
.L0f0ef908:
    # Line 154
    la	$v1,__iglooMixedModel
    blez	$at,.L0f0ef8f4
    lw	$v0,8($a2)
    lw	$v1,0($v1)
    bnez	$v1,.L0f0ef8f4
    # Line 156
    la	$a2,__iglooSoftPupShift
    lw	$a2,0($a2)
    beqz	$a2,.L0f0ef8f8
    ld	$gp,8($sp)
    # Line 158
    b	.L0f0ef8f4
    move	$v0,$a2
.L0f0ef934:
    b	.L0f0ef8f4
    lw	$v0,0($sp)
.end gl_g_getplanes

# Function: gl_g_singlebuffer
# Declared: Line 169 (Source lines: 170-173)
# Address: 0x0f0ef93c - 0x0f0ef964 (Size: 40 bytes, Frame: 0)
.globl gl_g_singlebuffer
.ent gl_g_singlebuffer
gl_g_singlebuffer:
    # Line 170
    lui	$a0,0xfff4
    addiu	$a0,$a0,14604
    addu	$at,$t9,$a0
    # Line 172
    lw	$v1,-23296($at)
    lw	$v1,0($v1)
    lw	$v1,276($v1)
    lw	$v1,60($v1)
    li	$v0,1
    # Line 173
    jr	$ra
    # Line 172
    sw	$v0,24($v1)
.end gl_g_singlebuffer

# Function: gl_g_doublebuffer
# Declared: Line 175 (Source lines: 176-179)
# Address: 0x0f0ef964 - 0x0f0ef98c (Size: 40 bytes, Frame: 0)
.globl gl_g_doublebuffer
.ent gl_g_doublebuffer
gl_g_doublebuffer:
    # Line 176
    lui	$a0,0xfff4
    addiu	$a0,$a0,14564
    addu	$at,$t9,$a0
    # Line 178
    lw	$v1,-23296($at)
    lw	$v1,0($v1)
    lw	$v1,276($v1)
    lw	$v1,60($v1)
    li	$v0,2
    # Line 179
    jr	$ra
    # Line 178
    sw	$v0,24($v1)
.end gl_g_doublebuffer

# Function: gl_g_cmode
# Declared: Line 181 (Source lines: 182-185)
# Address: 0x0f0ef98c - 0x0f0ef9b4 (Size: 40 bytes, Frame: 0)
.globl gl_g_cmode
.ent gl_g_cmode
gl_g_cmode:
    # Line 182
    lui	$a0,0xfff4
    addiu	$a0,$a0,14524
    addu	$at,$t9,$a0
    # Line 184
    lw	$v1,-23296($at)
    lw	$v1,0($v1)
    lw	$v1,276($v1)
    lw	$v1,60($v1)
    li	$v0,1
    # Line 185
    jr	$ra
    # Line 184
    sw	$v0,28($v1)
.end gl_g_cmode

# Function: gl_g_RGBmode
# Declared: Line 187 (Source lines: 188-191)
# Address: 0x0f0ef9b4 - 0x0f0ef9d8 (Size: 36 bytes, Frame: 0)
.globl gl_g_RGBmode
.ent gl_g_RGBmode
gl_g_RGBmode:
    # Line 188
    lui	$v1,0xfff4
    addiu	$v1,$v1,14484
    addu	$at,$t9,$v1
    # Line 190
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    lw	$v0,60($v0)
    # Line 191
    jr	$ra
    # Line 190
    sw	$zero,28($v0)
.end gl_g_RGBmode

# Function: gl_g_onemap
# Declared: Line 193 (Source lines: 199-199)
# Address: 0x0f0ef9d8 - 0x0f0ef9e0 (Size: 8 bytes, Frame: 0)
.globl gl_g_onemap
.ent gl_g_onemap
gl_g_onemap:
    # Line 199
    jr	$ra
    nop
.end gl_g_onemap

# Function: gl_g_multimap
# Declared: Line 201 (Source lines: 204-204)
# Address: 0x0f0ef9e0 - 0x0f0ef9e8 (Size: 8 bytes, Frame: 0)
.globl gl_g_multimap
.ent gl_g_multimap
gl_g_multimap:
    # Line 204
    jr	$ra
    nop
.end gl_g_multimap

# Function: gl_g_monobuffer
# Declared: Line 206 (Source lines: 207-210)
# Address: 0x0f0ef9e8 - 0x0f0efa0c (Size: 36 bytes, Frame: 0)
.globl gl_g_monobuffer
.ent gl_g_monobuffer
gl_g_monobuffer:
    # Line 207
    lui	$v1,0xfff4
    addiu	$v1,$v1,14432
    addu	$at,$t9,$v1
    # Line 209
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    lw	$v0,60($v0)
    # Line 210
    jr	$ra
    # Line 209
    sw	$zero,32($v0)
.end gl_g_monobuffer

# Function: gl_g_stereobuffer
# Declared: Line 212 (Source lines: 213-216)
# Address: 0x0f0efa0c - 0x0f0efa34 (Size: 40 bytes, Frame: 0)
.globl gl_g_stereobuffer
.ent gl_g_stereobuffer
gl_g_stereobuffer:
    # Line 213
    lui	$a0,0xfff4
    addiu	$a0,$a0,14396
    addu	$at,$t9,$a0
    # Line 215
    lw	$v1,-23296($at)
    lw	$v1,0($v1)
    lw	$v1,276($v1)
    lw	$v1,60($v1)
    li	$v0,1
    # Line 216
    jr	$ra
    # Line 215
    sw	$v0,32($v1)
.end gl_g_stereobuffer

# Function: gl_g_mssize
# Declared: Line 218 (Source lines: 219-224)
# Address: 0x0f0efa34 - 0x0f0efa64 (Size: 48 bytes, Frame: 0)
.globl gl_g_mssize
.ent gl_g_mssize
gl_g_mssize:
    # Line 219
    lui	$v1,0xfff4
    addiu	$v1,$v1,14356
    addu	$at,$t9,$v1
    # Line 220
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    # Line 221
    lw	$a3,276($v0)
    sw	$a0,44($a3)
    # Line 222
    lw	$v1,276($v0)
    sw	$a1,48($v1)
    # Line 223
    lw	$v0,276($v0)
    # Line 224
    jr	$ra
    # Line 223
    sw	$a2,52($v0)
.end gl_g_mssize

# Function: gl_set_displaymode
# Declared: Line 227 (Source lines: 228-256)
# Address: 0x0f0efa64 - 0x0f0efb00 (Size: 156 bytes, Frame: 16)
.globl gl_set_displaymode
.ent gl_set_displaymode
gl_set_displaymode:
    # Line 228
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff4
    addiu	$a1,$a1,14308
    addu	$gp,$t9,$a1
    # Line 229
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    # Line 236
    lw	$a2,256($a0)
    li	$t9,-5
    # Line 233
    lw	$a3,276($a0)
    # Line 236
    and	$a2,$a2,$t9
    sw	$a2,256($a0)
    # Line 233
    addiu	$a3,$a3,68
    # Line 236
    lw	$at,0($a3)
    li	$v0,1
    beq	$at,$v0,.L0f0efae8
    # Line 240
    li	$v1,-3
    # Line 244
    ori	$a2,$a2,0x2
    sw	$a2,256($a0)
.L0f0efab0:
    lw	$at,4($a3)
    # Line 249
    ori	$a1,$a2,0x1
    # Line 253
    li	$v0,-2
    # Line 244
    beqz	$at,.L0f0efaf4
    # Line 253
    and	$v0,$a2,$v0
    sd	$ra,8($sp)
    sw	$v0,256($a0)
.L0f0efacc:
    # Line 255
    la	$t9,gl_ws_displaymode
    jalr	$t9
    nop
    # Line 256
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0efae8:
    # Line 240
    and	$a2,$a2,$v1
    b	.L0f0efab0
    sw	$a2,256($a0)
.L0f0efaf4:
    sd	$ra,8($sp)
    # Line 249
    b	.L0f0efacc
    sw	$a1,256($a0)
.end gl_set_displaymode

# Function: gl_gconfig
# Declared: Line 261 (Source lines: 262-354)
# Address: 0x0f0efb00 - 0x0f0efd00 (Size: 512 bytes, Frame: 208)
.globl gl_gconfig
.ent gl_gconfig
gl_gconfig:
    # Line 262
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    sd	$gp,56($sp)
    sd	$s3,32($sp)
    lui	$s3,0xfff4
    addiu	$s3,$s3,14152
    addu	$gp,$t9,$s3
    # Line 265
    la	$s0,gl_wstatep
    lw	$s0,0($s0)
    sd	$s2,64($sp)
    # Line 273
    lw	$s3,276($s0)
    # Line 274
    la	$t9,_fb_initmodes
    sd	$ra,48($sp)
    addiu	$a0,$s3,148
    bal _fb_initmodes
    sd	$a0,24($sp)
    # Line 275
    la	$s2,sub_0f040000
    la	$t9,_fb_initmodes
    addiu	$s2,$s2,-30840
    bal _fb_initmodes
    move	$a0,$s2
    # Line 276
    la	$t9,_fb_initmodes
    addiu	$a0,$s2,80
    bal _fb_initmodes
    sd	$a0,8($sp)
    # Line 277
    la	$t9,_fb_initmodes
    addiu	$a0,$s2,160
    bal _fb_initmodes
    sd	$a0,16($sp)
    # Line 279
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,384
    bal gl_set_drawmode
    nop
    # Line 294
    li	$v0,-5
    # Line 296
    la	$t9,gl_set_displaymode
    # Line 291
    lw	$v1,92($s3)
    lw	$a0,96($s3)
    lw	$a1,100($s3)
    lw	$a4,112($s3)
    lw	$a3,108($s3)
    lw	$a2,104($s3)
    sw	$a4,88($s3)
    sw	$a3,84($s3)
    sw	$a2,80($s3)
    sw	$a1,76($s3)
    # Line 294
    lhu	$at,120($s3)
    # Line 291
    sw	$a0,72($s3)
    sw	$v1,68($s3)
    # Line 294
    and	$at,$at,$v0
    # Line 296
    bal gl_set_displaymode
    # Line 294
    sh	$at,120($s3)
    # Line 298
    la	$t9,gl_set_drawmode
    bal gl_set_drawmode
    li	$a0,16
    lw	$at,68($s3)
    li	$v0,1
    beq	$at,$v0,.L0f0efcc4
    # Line 306
    la	$t9,gl_frontbuffer
    jalr	$t9
    move	$a0,$zero
    # Line 307
    la	$t9,gl_backbuffer
    jalr	$t9
    li	$a0,1
    # Line 311
    la	$t9,_fb_initcolors
.L0f0efc00:
    bal _fb_initcolors
    addiu	$a0,$s3,68
    ld	$s3,32($sp)
    # Line 312
    la	$t9,_fb_initcolors
    bal _fb_initcolors
    ld	$a0,24($sp)
    # Line 313
    la	$t9,_fb_initcolors
    bal _fb_initcolors
    move	$a0,$s2
    ld	$a0,8($sp)
    ld	$s2,64($sp)
    # Line 314
    la	$t9,_fb_initcolors
    bal _fb_initcolors
    nop
    # Line 315
    la	$t9,_fb_initcolors
    bal _fb_initcolors
    ld	$a0,16($sp)
    # Line 324
    li	$a3,1
    li	$a2,1
    li	$a1,1
    la	$t9,__iglooColorMask
    # Line 322
    lw	$v1,4100($zero)
    # Line 324
    li	$a0,1
    jalr	$t9
    sd	$v1,0($sp)
    lw	$a1,4100($zero)
    lw	$a1,20($a1)
    lw	$a1,16($a1)
    beqz	$a1,.L0f0efcd8
    # Line 328
    la	$t9,__iglooIndexMask
    jalr	$t9
    li	$a0,-1
    # Line 336
    la	$t9,__GLreadsource
.L0f0efc84:
    jalr	$t9
    move	$a0,$zero
    # Line 338
    lw	$t9,200($s0)
    jalr	$t9
    li	$a0,1
    # Line 350
    la	$t9,__GLzfunction
    jalr	$t9
    lw	$a0,2840($s0)
    # Line 351
    la	$t9,__iglooSaveDepthBufferScaleFactor
    jalr	$t9
    move	$a0,$s0
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$gp,56($sp)
    # Line 354
    jr	$ra
    addiu	$sp,$sp,80
.L0f0efcc4:
    # Line 302
    la	$t9,gl_frontbuffer
    jalr	$t9
    li	$a0,1
    b	.L0f0efc00
    # Line 311
    la	$t9,_fb_initcolors
.L0f0efcd8:
    ld	$a1,0($sp)
    # Line 332
    lw	$a1,20($a1)
    lw	$a1,8($a1)
    la	$t9,__iglooIndexMask
    li	$a0,-1
    sllv	$a0,$a0,$a1
    jalr	$t9
    nor	$a0,$a0,$zero
    b	.L0f0efc84
    # Line 336
    la	$t9,__GLreadsource
.end gl_gconfig

# Function: gl_g_drawmode
# Declared: Line 371 (Source lines: 372-381)
# Address: 0x0f0efd00 - 0x0f0efd7c (Size: 124 bytes, Frame: 48)
.globl gl_g_drawmode
.ent gl_g_drawmode
gl_g_drawmode:
    # Line 372
    addiu	$sp,$sp,-48
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    lui	$t8,0xfff4
    addiu	$t8,$t8,13640
    addu	$gp,$t9,$t8
    # Line 375
    la	$t9,__iglooGetCurrentContextInfo
    # Line 373
    la	$s0,gl_wstatep
    sd	$ra,8($sp)
    # Line 375
    jalr	$t9
    # Line 373
    lw	$s0,0($s0)
    # Line 375
    bnez	$v0,.L0f0efd68
    # Line 379
    la	$t9,gl_set_drawmode
.L0f0efd3c:
    bal gl_set_drawmode
    move	$a0,$s8
    # Line 380
    la	$t9,gl_dm_load
    move	$a0,$s0
    bal gl_dm_load
    ld	$s8,16($sp)
    # Line 381
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0efd68:
    # Line 377
    la	$t9,gl_dm_save
    bal gl_dm_save
    move	$a0,$s0
    b	.L0f0efd3c
    # Line 379
    la	$t9,gl_set_drawmode
.end gl_g_drawmode

# Function: gl_set_drawfb
# Declared: Line 385 (Source lines: 386-404)
# Address: 0x0f0efd7c - 0x0f0efe04 (Size: 136 bytes, Frame: 0)
.globl gl_set_drawfb
.ent gl_set_drawfb
gl_set_drawfb:
    # Line 387
    li	$v0,16
    lw	$a3,56($a0)
    # Line 386
    lui	$v1,0xfff4
    addiu	$v1,$v1,13516
    # Line 387
    beq	$a3,$v0,.L0f0efdcc
    # Line 386
    addu	$at,$t9,$v1
    # Line 387
    li	$a1,64
    beq	$a3,$a1,.L0f0efdd8
    li	$a2,256
    beq	$a3,$a2,.L0f0efde8
    li	$v0,32
    beq	$a3,$v0,.L0f0efdf8
    li	$v1,128
    beq	$a3,$v1,.L0f0efdc0
    # Line 401
    lw	$a1,-32672($at)
    # Line 404
    jr	$ra
    nop
.L0f0efdc0:
    # Line 401
    addiu	$a1,$a1,-30760
    # Line 404
    jr	$ra
    # Line 401
    sw	$a1,60($a0)
.L0f0efdcc:
    # Line 389
    addiu	$a2,$a0,68
    # Line 404
    jr	$ra
    # Line 389
    sw	$a2,60($a0)
.L0f0efdd8:
    # Line 392
    lw	$v0,-32672($at)
    addiu	$v0,$v0,-30680
    # Line 404
    jr	$ra
    # Line 392
    sw	$v0,60($a0)
.L0f0efde8:
    # Line 395
    lw	$v1,-32672($at)
    addiu	$v1,$v1,-30840
    # Line 404
    jr	$ra
    # Line 395
    sw	$v1,60($a0)
.L0f0efdf8:
    # Line 398
    addiu	$a1,$a0,148
    # Line 404
    jr	$ra
    # Line 398
    sw	$a1,60($a0)
.end gl_set_drawfb

# Function: reloadAttribs
# Declared: Line 412 (Source lines: 413-422)
# Address: 0x0f0efe04 - 0x0f0efeec (Size: 232 bytes, Frame: 48)
.ent reloadAttribs
reloadAttribs:
    # Line 413
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # Line 416
    la	$t9,gl_setlinestyle
    # Line 413
    move	$s7,$a0
    sd	$ra,8($sp)
    # Line 416
    jalr	$t9
    lh	$a0,6($a0)
    # Line 417
    la	$at,gl_wstatep
    lw	$at,0($at)
    lwc1	$f1,16($s7)
    lw	$at,276($at)
    swc1	$f1,16($at)
    mtc1	$zero,$f0
    lwc1	$f4,16($s7)
    c.eq.s	$f4,$f0
    nop
    bc1f	.L0f0efe50
    mov.s	$f12,$f4
    lwc1	$f12,_lit_3f800000
.L0f0efe50:
    la	$t9,__iglooLineWidth
    jalr	$t9
    nop
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$v1,7169
    beq	$v0,$v1,.L0f0efeb0
    # Line 418
    la	$t9,gl_lsrepeat
.L0f0efe74:
    jalr	$t9
    lw	$a0,8($s7)
    # Line 419
    la	$t9,gl_setpattern
    bal gl_setpattern
    lh	$a0,14($s7)
    # Line 420
    la	$t9,gl_findfont
    jalr	$t9
    lw	$a0,0($s7)
    # Line 421
    la	$t9,gl_shademodel
    jalr	$t9
    lw	$a0,20($s7)
    ld	$ra,8($sp)
    # Line 422
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0efeb0:
    # Line 417
    lwc1	$f3,_lit_43000000
    lwc1	$f2,16($s7)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    la	$t9,glPassThrough
    li	$a2,63
    li	$a1,5
    mfc1	$a0,$f2
    sb	$a1,1($sp)
    sb	$a2,0($sp)
    sh	$a0,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f0efe74
    # Line 418
    la	$t9,gl_lsrepeat
.end reloadAttribs

# Function: gl_set_drawmode
# Declared: Line 433 (Source lines: 434-508)
# Address: 0x0f0efeec - 0x0f0f00cc (Size: 480 bytes, Frame: 208)
.globl gl_set_drawmode
.ent gl_set_drawmode
gl_set_drawmode:
    # Line 434
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    sd	$s0,32($sp)
    lui	$s0,0xfff4
    addiu	$s0,$s0,13148
    addu	$gp,$t9,$s0
    # Line 435
    la	$a3,gl_wstatep
    sltiu	$at,$a0,5
    lw	$a3,0($a3)
    # Line 434
    move	$s0,$a0
    # Line 435
    beqz	$at,.L0f0eff3c
    move	$a1,$a3
    sd	$ra,48($sp)
    sd	$s2,40($sp)
    # Line 447
    la	$at,sub_0f030000
    sd	$a1,16($sp)
    sll	$s0,$s0,0x2
    addiu	$at,$at,-25760
    addu	$s0,$s0,$at
    lw	$s0,0($s0)
.L0f0eff3c:
    sd	$a1,16($sp)
    sd	$ra,48($sp)
    # Line 458
    la	$t9,gl_set_drawfb
    sd	$s2,40($sp)
    # Line 450
    la	$v1,gl_sstatep
    # Line 451
    lw	$s2,276($a3)
    # Line 454
    lw	$v0,224($a3)
    # Line 450
    lw	$v1,0($v1)
    # Line 458
    move	$a0,$s2
    sd	$v0,8($sp)
    # Line 450
    lw	$v1,28($v1)
    # Line 456
    sw	$s0,56($s2)
    # Line 458
    bal gl_set_drawfb
    sd	$v1,0($sp)
    # Line 460
    lw	$a1,56($s2)
    li	$v0,32
    li	$a2,16
    beq	$a1,$a2,.L0f0effc0
    li	$at,64
    beq	$a1,$at,.L0f0f0020
    li	$a2,256
    beq	$a1,$v0,.L0f0f0064
    ld	$at,0($sp)
    li	$v1,128
    beq	$a1,$v1,.L0f0f0098
    ld	$at,0($sp)
    beq	$a1,$a2,.L0f0effc0
    # Line 491
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,98
    jalr	$t9
    addiu	$a2,$a2,17632
.L0f0effc0:
    # Line 495
    la	$t9,gl_wmdrawmode
.L0f0effc4:
    bal gl_wmdrawmode
    move	$a0,$s0
    ld	$a0,8($sp)
    # Line 499
    lw	$a0,32($a0)
    la	$t9,gl_wmfullscrn
    andi	$a0,$a0,0x1
    jalr	$t9
    sltu	$a0,$zero,$a0
    # Line 501
    la	$t9,sub_0f0f0000
    ld	$a0,16($sp)
    addiu	$t9,$t9,720
    bal gl_dm_save
    move	$a1,$s0
    # Line 507
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-508
    bal gl_set_drawfb
    move	$a0,$s2
    ld	$ra,48($sp)
    ld	$s2,40($sp)
    # Line 508
    ld	$s0,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f0020:
    # Line 465
    la	$at,__iglooSoftPupPlanes
    lw	$at,0($at)
    bnez	$at,.L0f0effc0
    ld	$v0,0($sp)
    lw	$v0,60($v0)
    bnez	$v0,.L0f0effc4
    # Line 495
    la	$t9,gl_wmdrawmode
    # Line 470
    la	$t9,sub_0f0f0000
    li	$a0,64
    addiu	$t9,$t9,204
    bal gl_set_drawmode
    ld	$s2,40($sp)
    # Line 471
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f0064:
    # Line 475
    lw	$at,20($at)
    bnez	$at,.L0f0effc4
    # Line 495
    la	$t9,gl_wmdrawmode
    # Line 477
    la	$t9,sub_0f0f0000
    li	$a0,32
    addiu	$t9,$t9,204
    bal gl_set_drawmode
    ld	$s2,40($sp)
    # Line 478
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f0098:
    # Line 482
    lw	$at,84($at)
    bnez	$at,.L0f0effc4
    # Line 495
    la	$t9,gl_wmdrawmode
    # Line 484
    la	$t9,sub_0f0f0000
    li	$a0,128
    addiu	$t9,$t9,204
    bal gl_set_drawmode
    ld	$s2,40($sp)
    # Line 485
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_set_drawmode

# Function: invalidDrawmode
# Declared: Line 510 (Source lines: 511-533)
# Address: 0x0f0f00cc - 0x0f0f0150 (Size: 132 bytes, Frame: 160)
.ent invalidDrawmode
invalidDrawmode:
    # Line 516
    li	$at,64
    beq	$a0,$at,.L0f0f0124
    # Line 511
    addiu	$sp,$sp,-288
    # Line 516
    li	$v0,32
    beq	$a0,$v0,.L0f0f0134
    li	$v1,128
    beq	$a0,$v1,.L0f0f0140
    # Line 528
    addiu	$a2,$gp,-17248
    sd	$ra,256($sp)
.L0f0f00f0:
    # Line 531
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,17688
    # Line 532
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    jalr	$t9
    li	$a0,98
    ld	$ra,256($sp)
    # Line 533
    jr	$ra
    addiu	$sp,$sp,288
.L0f0f0124:
    # Line 519
    la	$a2,sub_0f020000
    sd	$ra,256($sp)
    # Line 520
    b	.L0f0f00f0
    # Line 519
    addiu	$a2,$a2,17656
.L0f0f0134:
    # Line 522
    addiu	$a2,$gp,-17256
    # Line 523
    b	.L0f0f00f0
    sd	$ra,256($sp)
.L0f0f0140:
    # Line 525
    la	$a2,sub_0f020000
    sd	$ra,256($sp)
    # Line 526
    b	.L0f0f00f0
    # Line 525
    addiu	$a2,$a2,17672
.end invalidDrawmode

# Function: gl_matchaux
# Declared: Line 535 (Source lines: 536-562)
# Address: 0x0f0f0150 - 0x0f0f0180 (Size: 48 bytes, Frame: 0)
.ent gl_matchaux
gl_matchaux:
    # Line 536
    la	$at,gl_sstatep
    lw	$at,0($at)
    lw	$at,28($at)
    sll	$v0,$a1,0x3
    addu	$at,$at,$v0
    lw	$at,20($at)
    beqz	$at,.L0f0f0178
    # Line 562
    move	$v0,$a1
    jr	$ra
    nop
.L0f0f0178:
    jr	$ra
    move	$v0,$zero
.end gl_matchaux

# Function: gl_auxconfig
# Declared: Line 566 (Source lines: 567-596)
# Address: 0x0f0f0180 - 0x0f0f0240 (Size: 192 bytes, Frame: 32)
.ent gl_auxconfig
gl_auxconfig:
    # Line 567
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    la	$s0,gl_wstatep
    # Line 573
    lw	$a0,0($s0)
    # Line 575
    li	$a1,5
    # Line 567
    la	$t9,sub_0f0f0000
    # Line 573
    lw	$a0,276($a0)
    sd	$ra,0($sp)
    # Line 567
    addiu	$t9,$t9,336
    sd	$a0,16($sp)
    # Line 575
    bal gl_set_drawmode
    lw	$a0,28($a0)
    ld	$a4,16($sp)
    # Line 577
    lw	$a6,0($s0)
    la	$a5,sub_0f0f0000
    li	$a7,5
    lw	$a2,244($a6)
    addiu	$a5,$a5,336
    beq	$v0,$a7,.L0f0f0208
    andi	$a2,$a2,0xff
    beql	$v0,$a2,.L0f0f0208
    # Line 586
    lw	$a6,0($s0)
    # Line 579
    lw	$a3,224($a6)
    lbu	$at,44($a3)
    beq	$at,$a7,.L0f0f0208
    # Line 586
    lw	$a6,0($s0)
    # Line 579
    beqz	$a2,.L0f0f0208
    # Line 586
    lw	$a6,0($s0)
    # Line 583
    beq	$a2,$a7,.L0f0f0208
    # Line 586
    lw	$a6,0($s0)
    lw	$v1,32($a3)
    ori	$v1,$v1,0x1000
    sw	$v1,32($a3)
    lw	$a6,0($s0)
.L0f0f0208:
    # Line 593
    li	$a1,8
    move	$t9,$a5
    # Line 589
    sw	$v0,244($a6)
    # Line 593
    bal gl_set_drawmode
    lw	$a0,32($a4)
    # Line 595
    lw	$a1,0($s0)
    lw	$a0,244($a1)
    sll	$s0,$v0,0x8
    # Line 596
    ld	$ra,0($sp)
    # Line 595
    or	$a0,$a0,$s0
    # Line 596
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 595
    sw	$a0,244($a1)
.end gl_auxconfig

# Function: gl_dm_save
# Declared: Line 603 (Source lines: 604-629)
# Address: 0x0f0f0240 - 0x0f0f02d0 (Size: 144 bytes, Frame: 48)
.globl gl_dm_save
.ent gl_dm_save
gl_dm_save:
    # Line 604
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    # Line 608
    lw	$s7,276($a0)
    lw	$s7,60($s7)
    sd	$ra,16($sp)
    sd	$gp,0($sp)
    lw	$at,4($s7)
    # Line 604
    lui	$v0,0xfff4
    addiu	$v0,$v0,12296
    # Line 608
    beqz	$at,.L0f0f02b8
    # Line 604
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 614
    la	$t9,__GLgetcolor
    jalr	$t9
    nop
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,56($s7)
    # Line 620
    la	$t9,__iglooGetColorMask
.L0f0f028c:
    jalr	$t9
    addiu	$a0,$s7,72
    # Line 623
    la	$t9,__GLgetwritemask
    jalr	$t9
    nop
    ld	$gp,0($sp)
    # Line 629
    ld	$ra,16($sp)
    # Line 623
    sw	$v0,76($s7)
    # Line 629
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f02b8:
    # Line 611
    la	$t9,__iglooGetFloatv
    addiu	$a1,$s7,56
    jalr	$t9
    li	$a0,2816
    b	.L0f0f028c
    # Line 620
    la	$t9,__iglooGetColorMask
.end gl_dm_save

# Function: __iglooRebindCtx
# Declared: Line 636 (Source lines: 637-660)
# Address: 0x0f0f02d0 - 0x0f0f0388 (Size: 184 bytes, Frame: 32)
.ent __iglooRebindCtx
__iglooRebindCtx:
    # Line 637
    li	$at,16
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    beq	$a1,$at,.L0f0f0310
    move	$s0,$a0
.L0f0f02e8:
    # Line 658
    la	$t9,gl_linesmooth
.L0f0f02ec:
    jalr	$t9
    lw	$a0,3008($s0)
    # Line 659
    la	$t9,gl_dither
    jalr	$t9
    lw	$a0,3012($s0)
    ld	$ra,8($sp)
    # Line 660
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f0310:
    # Line 645
    la	$t9,__GLzbuffer
    jalr	$t9
    lbu	$a0,2836($s0)
    # Line 646
    la	$t9,gl_depthcue
    li	$a1,1
    jalr	$t9
    lw	$a0,2904($s0)
    # Line 647
    la	$t9,__iglooRebindLightdata
    jalr	$t9
    move	$a0,$s0
    # Line 648
    la	$t9,__iglooRebindBlendLogicopData
    jalr	$t9
    move	$a0,$s0
    lw	$v0,4100($zero)
    lw	$v0,20($v0)
    lw	$v0,16($v0)
    beqz	$v0,.L0f0f02e8
    # Line 653
    move	$a0,$zero
    la	$t9,gl_texbind
    lw	$a1,11708($s0)
    li	$a2,1
    jalr	$t9
    lw	$a1,4($a1)
    # Line 654
    la	$t9,gl_tevbind
    lw	$a1,11708($s0)
    move	$a0,$zero
    jalr	$t9
    lw	$a1,20($a1)
    b	.L0f0f02ec
    # Line 658
    la	$t9,gl_linesmooth
.end __iglooRebindCtx

# Function: gl_dm_load
# Declared: Line 667 (Source lines: 668-729)
# Address: 0x0f0f0388 - 0x0f0f04ec (Size: 356 bytes, Frame: 192)
.globl gl_dm_load
.ent gl_dm_load
gl_dm_load:
    # Line 668
    addiu	$sp,$sp,-64
    sd	$s3,16($sp)
    move	$s3,$a0
    sd	$gp,24($sp)
    sd	$s1,8($sp)
    # Line 673
    lw	$s1,276($a0)
    # Line 668
    lui	$at,0xfff4
    addiu	$at,$at,11968
    # Line 675
    lw	$a2,56($s1)
    # Line 668
    # addu	gp,t9,at (gp setup)
    # Line 675
    li	$at,32
    beq	$a2,$at,.L0f0f048c
    # Line 674
    lw	$s1,60($s1)
    # Line 683
    la	$a0,__iglooSoftPupPlanes
    lw	$v0,0($a0)
    beqz	$v0,.L0f0f03d0
    li	$v1,64
    beq	$a2,$v1,.L0f0f04a8
.L0f0f03d0:
    # Line 689
    li	$a1,-1
    # Line 688
    sw	$zero,12112($s3)
    # Line 689
    sw	$a1,12116($s3)
.L0f0f03dc:
    lw	$at,4($s1)
    sd	$a2,0($sp)
    beqz	$at,.L0f0f0474
    sd	$ra,32($sp)
    # Line 699
    lwc1	$f0,56($s1)
    trunc.w.s	$f0,$f0
    la	$t9,__GLcolor
    mfc1	$a0,$f0
    jalr	$t9
    andi	$a0,$a0,0xffff
    # Line 702
    lbu	$a3,75($s1)
.L0f0f0408:
    la	$t9,__iglooColorMask
    lbu	$a2,74($s1)
    lbu	$a1,73($s1)
    jalr	$t9
    lbu	$a0,72($s1)
    # Line 704
    la	$t9,__GLwritemask
    jalr	$t9
    lhu	$a0,78($s1)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$a1,0($sp)
    li	$at,16
    bnel	$a1,$at,.L0f0f0468
    ld	$gp,24($sp)
    lbu	$v0,2836($s3)
    li	$v1,1
    beq	$v0,$v1,.L0f0f04c4
    # Line 719
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    li	$a0,2929
    jalr	$t9
    ld	$s3,16($sp)
    ld	$ra,32($sp)
.L0f0f0464:
    ld	$gp,24($sp)
.L0f0f0468:
    # Line 729
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f0474:
    # Line 695
    lw	$t9,152($s3)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$s1,56
    b	.L0f0f0408
    # Line 702
    lbu	$a3,75($s1)
.L0f0f048c:
    # Line 683
    la	$a1,__iglooSoftPupMask
    # Line 682
    la	$at,__iglooSoftPupShift
    lw	$at,0($at)
    sw	$at,12112($s3)
    # Line 683
    lw	$a1,0($a1)
    b	.L0f0f03dc
    sw	$a1,12116($s3)
.L0f0f04a8:
    # Line 686
    li	$v0,1
    # Line 685
    sw	$zero,12112($s3)
    # Line 686
    lw	$v1,0($a0)
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    b	.L0f0f03dc
    sw	$v0,12116($s3)
.L0f0f04c4:
    # Line 714
    la	$t9,__GLzfunction
    jalr	$t9
    lw	$a0,2840($s3)
    # Line 715
    la	$t9,__iglooSetEnable
    li	$a1,1
    li	$a0,2929
    jalr	$t9
    ld	$s3,16($sp)
    b	.L0f0f0464
    ld	$ra,32($sp)
.end gl_dm_load

# Function: gl_hwd_getconfig
# Declared: Line 732 (Source lines: 732-805)
# Address: 0x0f0f04ec - 0x0f0f0904 (Size: 1048 bytes, Frame: 192)
.globl gl_hwd_getconfig
.ent gl_hwd_getconfig
gl_hwd_getconfig:
    # Line 733
    move	$t8,$zero
    move	$t3,$zero
    move	$t2,$zero
    # Line 737
    li	$t0,4096
    # Line 732
    addiu	$sp,$sp,-64
    sd	$zero,16($sp)
    lui	$a7,0xfff4
    addiu	$a7,$a7,11612
    addu	$at,$t9,$a7
    # Line 734
    lw	$a6,-32368($at)
    move	$t9,$zero
    # Line 737
    addiu	$a7,$a0,-3
    # Line 734
    lw	$a6,0($a6)
    # Line 737
    addiu	$a0,$a7,3
    bltz	$a7,.L0f0f0588
    # Line 734
    lw	$a6,28($a6)
    # Line 737
    li	$v1,3
    div	$zero,$a0,$v1
    li	$t1,8192
    sd	$a6,24($sp)
    li	$a6,4
    ld	$t9,16($sp)
    mflo	$a5
    andi	$v0,$a5,0x1
    beqz	$v0,.L0f0f0578
    teq	$v1,$zero,0x7
    sd	$a5,8($sp)
    lw	$a5,4($a1)
    beq	$a6,$a5,.L0f0f0860
    addiu	$a7,$a7,-3
    li	$a4,2
    # Line 753
    beql	$a4,$a5,.L0f0f08a4
    lw	$v0,0($a1)
.L0f0f0570:
    # Line 737
    addiu	$a1,$a1,12
.L0f0f0574:
    ld	$a5,8($sp)
.L0f0f0578:
    sra	$v0,$a5,0x1
    bnezl	$v0,.L0f0f077c
    lw	$a5,4($a1)
.L0f0f0584:
    ld	$a6,24($sp)
.L0f0f0588:
    beqz	$t8,.L0f0f05ac
    nop
    lw	$v1,20($a6)
    beqz	$v1,.L0f0f0848
    nop
    # Line 764
    lw	$a1,24($a6)
    lw	$a1,0($a1)
    lw	$a1,12($a1)
.L0f0f05a8:
    move	$t8,$a1
.L0f0f05ac:
    beqz	$t2,.L0f0f05d0
    nop
    lw	$a4,60($a6)
    beqz	$a4,.L0f0f0850
    nop
    # Line 769
    lw	$a1,64($a6)
    lw	$a1,0($a1)
    lw	$a1,12($a1)
.L0f0f05cc:
    move	$t2,$a1
.L0f0f05d0:
    beqz	$t3,.L0f0f05f8
    # Line 777
    li	$a7,12288
    # Line 769
    lw	$a4,84($a6)
    beqz	$a4,.L0f0f0858
    nop
    # Line 774
    lw	$a1,88($a6)
    lw	$a1,0($a1)
    lw	$a1,12($a1)
.L0f0f05f0:
    move	$t3,$a1
    # Line 777
    li	$a7,12288
.L0f0f05f8:
    li	$t1,8192
    li	$a6,4
    addiu	$a2,$a2,-3
    bltz	$a2,.L0f0f0668
    addiu	$v1,$a2,3
    li	$v0,3
    div	$zero,$v1,$v0
    li	$t0,4096
    li	$a1,16384
    mflo	$a5
    andi	$a4,$a5,0x1
    beqz	$a4,.L0f0f065c
    teq	$v0,$zero,0x7
    sd	$a5,0($sp)
    # Line 779
    lw	$a5,0($a3)
    beq	$t0,$a5,.L0f0f0654
    # Line 777
    addiu	$a2,$a2,-3
    # Line 779
    beql	$t1,$a5,.L0f0f088c
    # Line 784
    lw	$a5,4($a3)
    # Line 779
    beql	$a1,$a5,.L0f0f08b4
    # Line 792
    lw	$v1,4($a3)
    # Line 779
    beql	$a7,$a5,.L0f0f08c4
    # Line 798
    lw	$a0,4($a3)
.L0f0f0654:
    # Line 777
    addiu	$a3,$a3,12
    ld	$a5,0($sp)
.L0f0f065c:
    sra	$a0,$a5,0x1
    bnezl	$a0,.L0f0f0690
    # Line 779
    lw	$a5,0($a3)
.L0f0f0668:
    # Line 805
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f0670:
    # Line 784
    beq	$a6,$a5,.L0f0f0808
    nop
    # Line 785
    beq	$a4,$a5,.L0f0f07f8
    nop
    # Line 789
    sw	$zero,20($a3)
.L0f0f0684:
    # Line 777
    bltz	$a2,.L0f0f0668
    addiu	$a3,$a3,24
    # Line 779
    lw	$a5,0($a3)
.L0f0f0690:
    li	$v1,2
    beq	$t0,$a5,.L0f0f06b4
    # Line 777
    addiu	$a2,$a2,-6
    # Line 779
    beql	$t1,$a5,.L0f0f06ec
    # Line 784
    lw	$a5,4($a3)
    # Line 779
    beql	$a1,$a5,.L0f0f0704
    # Line 792
    lw	$a0,4($a3)
    # Line 779
    beql	$a7,$a5,.L0f0f0724
    # Line 798
    lw	$v0,4($a3)
.L0f0f06b4:
    # Line 779
    lw	$a5,12($a3)
    beq	$t0,$a5,.L0f0f0684
    li	$a4,2
    beql	$t1,$a5,.L0f0f0670
    # Line 784
    lw	$a5,16($a3)
    # Line 779
    beql	$a1,$a5,.L0f0f0714
    # Line 792
    lw	$a4,16($a3)
    # Line 779
    bne	$a7,$a5,.L0f0f0684
    nop
    # Line 798
    lw	$v0,16($a3)
    beq	$v0,$a6,.L0f0f0838
    nop
    b	.L0f0f0684
    # Line 801
    sw	$zero,20($a3)
.L0f0f06ec:
    # Line 784
    beq	$a6,$a5,.L0f0f0800
    nop
    # Line 785
    beq	$v1,$a5,.L0f0f07f0
    nop
    b	.L0f0f06b4
    # Line 789
    sw	$zero,8($a3)
.L0f0f0704:
    # Line 792
    beq	$a0,$a6,.L0f0f0810
    nop
    b	.L0f0f06b4
    # Line 795
    sw	$zero,8($a3)
.L0f0f0714:
    # Line 792
    beq	$a4,$a6,.L0f0f0818
    nop
    b	.L0f0f0684
    # Line 795
    sw	$zero,20($a3)
.L0f0f0724:
    # Line 798
    beq	$v0,$a6,.L0f0f0830
    nop
    b	.L0f0f06b4
    # Line 801
    sw	$zero,8($a3)
.L0f0f0734:
    # Line 741
    lw	$a5,0($a1)
    beql	$t0,$a5,.L0f0f075c
    # Line 737
    lw	$a5,16($a1)
    # Line 741
    beq	$t1,$a5,.L0f0f07e0
    li	$v1,16384
    beq	$v1,$a5,.L0f0f0820
    li	$a0,12288
    beq	$a0,$a5,.L0f0f0840
    nop
.L0f0f0758:
    # Line 737
    lw	$a5,16($a1)
.L0f0f075c:
    li	$a0,16384
    beq	$a6,$a5,.L0f0f07a4
    li	$a4,2
    # Line 753
    beql	$a4,$a5,.L0f0f07d0
    lw	$v0,12($a1)
.L0f0f0770:
    # Line 737
    bltz	$a7,.L0f0f0584
    addiu	$a1,$a1,24
    lw	$a5,4($a1)
.L0f0f077c:
    li	$v0,2
    beq	$a6,$a5,.L0f0f0734
    addiu	$a7,$a7,-6
    # Line 753
    bnel	$v0,$a5,.L0f0f075c
    # Line 737
    lw	$a5,16($a1)
    # Line 753
    lw	$v1,0($a1)
    bnel	$v1,$t1,.L0f0f075c
    # Line 737
    lw	$a5,16($a1)
    b	.L0f0f0758
    # Line 757
    lw	$t9,8($a1)
.L0f0f07a4:
    # Line 741
    lw	$a5,12($a1)
    beq	$t0,$a5,.L0f0f0770
    li	$a4,12288
    beq	$t1,$a5,.L0f0f07e8
    nop
    beq	$a0,$a5,.L0f0f0828
    nop
    bne	$a4,$a5,.L0f0f0770
    nop
    # Line 752
    b	.L0f0f0770
    # Line 751
    lw	$t8,20($a1)
.L0f0f07d0:
    # Line 753
    bne	$v0,$t1,.L0f0f0770
    nop
    b	.L0f0f0770
    # Line 757
    lw	$t9,20($a1)
.L0f0f07e0:
    # Line 746
    b	.L0f0f0758
    # Line 745
    lw	$t2,8($a1)
.L0f0f07e8:
    # Line 746
    b	.L0f0f0770
    # Line 745
    lw	$t2,20($a1)
.L0f0f07f0:
    # Line 787
    b	.L0f0f06b4
    sw	$t9,8($a3)
.L0f0f07f8:
    b	.L0f0f0684
    sw	$t9,20($a3)
.L0f0f0800:
    # Line 785
    b	.L0f0f06b4
    sw	$t2,8($a3)
.L0f0f0808:
    b	.L0f0f0684
    sw	$t2,20($a3)
.L0f0f0810:
    # Line 793
    b	.L0f0f06b4
    sw	$t3,8($a3)
.L0f0f0818:
    b	.L0f0f0684
    sw	$t3,20($a3)
.L0f0f0820:
    # Line 749
    b	.L0f0f0758
    # Line 748
    lw	$t3,8($a1)
.L0f0f0828:
    # Line 749
    b	.L0f0f0770
    # Line 748
    lw	$t3,20($a1)
.L0f0f0830:
    # Line 799
    b	.L0f0f06b4
    sw	$t8,8($a3)
.L0f0f0838:
    b	.L0f0f0684
    sw	$t8,20($a3)
.L0f0f0840:
    # Line 752
    b	.L0f0f0758
    # Line 751
    lw	$t8,8($a1)
.L0f0f0848:
    b	.L0f0f05a8
    # Line 764
    move	$a1,$zero
.L0f0f0850:
    b	.L0f0f05cc
    # Line 769
    move	$a1,$zero
.L0f0f0858:
    b	.L0f0f05f0
    # Line 774
    move	$a1,$zero
.L0f0f0860:
    # Line 741
    lw	$a5,0($a1)
    beql	$t0,$a5,.L0f0f0574
    # Line 737
    addiu	$a1,$a1,12
    # Line 741
    beq	$t1,$a5,.L0f0f08d4
    li	$v1,16384
    beq	$v1,$a5,.L0f0f08f4
    li	$a0,12288
    bnel	$a0,$a5,.L0f0f0574
    # Line 737
    addiu	$a1,$a1,12
    # Line 752
    b	.L0f0f0570
    # Line 751
    lw	$t8,8($a1)
.L0f0f088c:
    # Line 784
    beq	$a6,$a5,.L0f0f08e4
    li	$a4,2
    # Line 785
    beq	$a4,$a5,.L0f0f08dc
    nop
    b	.L0f0f0654
    # Line 789
    sw	$zero,8($a3)
.L0f0f08a4:
    # Line 753
    bne	$v0,$t1,.L0f0f0570
    ld	$a5,8($sp)
    b	.L0f0f0570
    # Line 757
    lw	$t9,8($a1)
.L0f0f08b4:
    # Line 792
    beq	$v1,$a6,.L0f0f08ec
    ld	$a5,0($sp)
    b	.L0f0f0654
    # Line 795
    sw	$zero,8($a3)
.L0f0f08c4:
    # Line 798
    beq	$a0,$a6,.L0f0f08fc
    ld	$a5,0($sp)
    b	.L0f0f0654
    # Line 801
    sw	$zero,8($a3)
.L0f0f08d4:
    # Line 746
    b	.L0f0f0570
    # Line 745
    lw	$t2,8($a1)
.L0f0f08dc:
    # Line 787
    b	.L0f0f0654
    sw	$t9,8($a3)
.L0f0f08e4:
    # Line 785
    b	.L0f0f0654
    sw	$t2,8($a3)
.L0f0f08ec:
    # Line 793
    b	.L0f0f0654
    sw	$t3,8($a3)
.L0f0f08f4:
    # Line 749
    b	.L0f0f0570
    # Line 748
    lw	$t3,8($a1)
.L0f0f08fc:
    # Line 799
    b	.L0f0f0654
    sw	$t8,8($a3)
.end gl_hwd_getconfig

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_43000000:
    .word 0x43000000

