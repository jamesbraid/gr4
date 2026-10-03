# Source: ../igloo/bitmap.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/bitmap.c -o bitmap.T
# Total Functions: 5

.text

# Function: __GLgl_beginstring
# Declared: Line 36 (Source lines: 37-117)
# Address: 0x0f0959a0 - 0x0f095a8c (Size: 236 bytes, Frame: 48)
.globl __GLgl_beginstring
.ent __GLgl_beginstring
__GLgl_beginstring:
    # Line 37
    addiu	$sp,$sp,-48
    sd	$s3,32($sp)
    sd	$gp,40($sp)
    lui	$t8,0xfffa
    addiu	$t8,$t8,-10072
    addu	$gp,$t9,$t8
    # Line 50
    la	$t9,__iglooCloseMoveDraw
    # Line 38
    la	$s3,gl_wstatep
    sd	$ra,24($sp)
    # Line 50
    jalr	$t9
    # Line 38
    lw	$s3,0($s3)
    # Line 54
    la	$t9,__iglooPixelStorei
    li	$a1,1
    jalr	$t9
    li	$a0,3317
    # Line 55
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3314
    # Line 57
    la	$t9,__iglooGetAndSetEnable
    addiu	$a2,$gp,-21112
    move	$a1,$zero
    jalr	$t9
    li	$a0,25
    lbu	$at,11864($s3)
    li	$v0,1
    beq	$at,$v0,.L0f095a3c
    # Line 81
    la	$t9,__iglooGetBooleanv
    addiu	$a1,$sp,0
    li	$a0,2824
    jalr	$t9
    ld	$s3,32($sp)
    lbu	$a0,0($sp)
    li	$v1,1
    beq	$v1,$a0,.L0f095a5c
    ld	$ra,24($sp)
.L0f095a30:
    ld	$gp,40($sp)
    # Line 117
    jr	$ra
    addiu	$sp,$sp,48
.L0f095a3c:
    # Line 77
    la	$t9,glRasterPos3f
    lwc1	$f14,11876($s3)
    lwc1	$f13,11872($s3)
    jalr	$t9
    lwc1	$f12,11868($s3)
    ld	$s3,32($sp)
    b	.L0f095a30
    ld	$ra,24($sp)
.L0f095a5c:
    # Line 85
    la	$t9,__iglooGetFloatv
    addiu	$a1,$sp,8
    jalr	$t9
    li	$a0,2823
    # Line 86
    lwc1	$f15,20($sp)
    la	$t9,glLoadRasterPosSGIXXX
    lwc1	$f14,16($sp)
    lwc1	$f13,12($sp)
    jalr	$t9
    lwc1	$f12,8($sp)
    b	.L0f095a30
    ld	$ra,24($sp)
.end __GLgl_beginstring

# Function: __GLgl_endstring
# Declared: Line 119 (Source lines: 120-130)
# Address: 0x0f095a8c - 0x0f095adc (Size: 80 bytes, Frame: 32)
.globl __GLgl_endstring
.ent __GLgl_endstring
__GLgl_endstring:
    # Line 123
    move	$a1,$zero
    li	$a0,25
    # Line 120
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfffa
    addiu	$ra,$ra,-10308
    addu	$gp,$t9,$ra
    # Line 123
    la	$t9,__iglooSetSavedEnable
    # Line 121
    la	$s8,gl_wstatep
    # Line 123
    lw	$a2,-21112($gp)
    jalr	$t9
    # Line 121
    lw	$s8,0($s8)
    ld	$gp,16($sp)
    # Line 130
    ld	$ra,0($sp)
    # Line 129
    sb	$zero,11864($s8)
    # Line 130
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __GLgl_endstring

# Function: __GLgl_drawbitmap
# Declared: Line 138 (Source lines: 139-143)
# Address: 0x0f095adc - 0x0f095b10 (Size: 52 bytes, Frame: 32)
.globl __GLgl_drawbitmap
.ent __GLgl_drawbitmap
__GLgl_drawbitmap:
    # Line 139
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-10388 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 142
    la	$t9,gl_outcharmap
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$zero
    # Line 143
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __GLgl_drawbitmap

# Function: __GLgl_outcharmap
# Declared: Line 147 (Source lines: 148-170)
# Address: 0x0f095b10 - 0x0f095bb4 (Size: 164 bytes, Frame: 48)
.globl __GLgl_outcharmap
.ent __GLgl_outcharmap
__GLgl_outcharmap:
    # Line 148
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-10440 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 151
    la	$t9,__iglooGetRenderMode
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,0($sp)
    li	$v1,7168
    beq	$v0,$v1,.L0f095b4c
    # Line 153
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f095b4c:
    # Line 160
    la	$t9,__iglooCloseMoveDraw
    jalr	$t9
    nop
    ld	$a2,0($sp)
    # Line 162
    lh	$a5,14($a2)
    mtc1	$a5,$f17
    lh	$a4,12($a2)
    cvt.s.w	$f17,$f17
    mtc1	$a4,$f16
    lw	$a6,0($a2)
    lh	$a3,10($a2)
    cvt.s.w	$f16,$f16
    lh	$a1,6($a2)
    mtc1	$a3,$f15
    lh	$a0,16($a2)
    lh	$a2,8($a2)
    cvt.s.w	$f15,$f15
    la	$t9,glBitmap
    mtc1	$a2,$f14
    sll	$a0,$a0,0x4
    jalr	$t9
    cvt.s.w	$f14,$f14
    # Line 170
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __GLgl_outcharmap

# Function: __igloo_outcharmaps
# Declared: Line 172 (Source lines: 173-191)
# Address: 0x0f095bb4 - 0x0f095ca8 (Size: 244 bytes, Frame: 208)
.globl __igloo_outcharmaps
.ent __igloo_outcharmaps
__igloo_outcharmaps:
    # Line 173
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$gp,24($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-10604 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 176
    la	$t9,__iglooGetRenderMode
    sd	$s1,16($sp)
    sd	$ra,32($sp)
    jalr	$t9
    # Line 173
    move	$s1,$a0
    # Line 176
    li	$v1,7168
    beq	$v0,$v1,.L0f095bfc
    # Line 178
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f095bfc:
    # Line 181
    la	$t9,__iglooCloseMoveDraw
    jalr	$t9
    nop
    # Line 183
    la	$t9,strlen
    jalr	$t9
    ld	$a0,8($sp)
    sltiu	$a3,$v0,11
    beqz	$a3,.L0f095c74
    # Line 185
    la	$t9,glListBase
    # Line 187
    beqz	$v0,.L0f095c64
    # Line 191
    ld	$ra,32($sp)
    sd	$s5,40($sp)
    ld	$s5,8($sp)
    sd	$s2,48($sp)
    # Line 187
    move	$s2,$s5
    addu	$s5,$v0,$s5
    # Line 189
    la	$t9,glCallList
.L0f095c40:
    lbu	$a0,0($s2)
    # Line 188
    addiu	$s2,$s2,1
    # Line 189
    jalr	$t9
    addu	$a0,$a0,$s1
    # Line 188
    bne	$s2,$s5,.L0f095c40
    # Line 189
    la	$t9,glCallList
    ld	$s2,48($sp)
    ld	$s5,40($sp)
    # Line 191
    ld	$ra,32($sp)
.L0f095c64:
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f095c74:
    sd	$v0,0($sp)
    # Line 185
    jalr	$t9
    move	$a0,$s1
    # Line 186
    la	$t9,glCallLists
    ld	$a0,0($sp)
    ld	$a2,8($sp)
    jalr	$t9
    li	$a1,5121
    # Line 187
    la	$t9,glListBase
    jalr	$t9
    move	$a0,$zero
    b	.L0f095c64
    # Line 191
    ld	$ra,32($sp)
.end __igloo_outcharmaps

