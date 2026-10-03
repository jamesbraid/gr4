# Source: ../igloo/sgl.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/sgl.c -o sgl.T
# Total Functions: 178

.text

# Function: funcNameString
# Declared: Line 94 (Source lines: 95-100)
# Address: 0x0f10bb48 - 0x0f10bbb4 (Size: 108 bytes, Frame: 192)
.globl funcNameString
.ent funcNameString
funcNameString:
    # Line 95
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$gp,16($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,30464 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 97
    la	$t9,strcpy
    # Line 95
    move	$a1,$a0
    sd	$ra,0($sp)
    # Line 97
    jalr	$t9
    addiu	$a0,$gp,-20184
    # Line 98
    la	$t9,strcat
    move	$a1,$s8
    jalr	$t9
    addiu	$a0,$gp,-20184
    # Line 99
    la	$t9,strcat
    ld	$a1,24($sp)
    addiu	$a0,$gp,-20184
    jalr	$t9
    ld	$s8,8($sp)
    # Line 100
    ld	$ra,0($sp)
    addiu	$v0,$gp,-20184
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end funcNameString

# Function: __igl_concave_vertex2sv
# Declared: Line 151 (Source lines: 151-151)
# Address: 0x0f10bbb4 - 0x0f10bd14 (Size: 352 bytes, Frame: 192)
.globl __igl_concave_vertex2sv
.ent __igl_concave_vertex2sv
__igl_concave_vertex2sv:
    # Line 151
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s2,0($sp)
    lui	$s2,0xfff2
    addiu	$s2,$s2,30356
    addu	$gp,$t9,$s2
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$at,3164($a3)
    beqz	$at,.L0f10bcfc
    move	$s2,$a3
    lw	$at,3168($a3)
    sd	$s5,16($sp)
    lw	$s5,3172($a3)
    sw	$at,11408($a3)
    lw	$a2,3172($s2)
    sll	$s5,$s5,0x5
    addu	$s5,$s5,$a3
    slti	$at,$a2,256
    beqz	$at,.L0f10bc80
    addiu	$s5,$s5,3184
    lw	$v0,11480($s2)
    li	$v1,1
    beq	$v0,$v1,.L0f10bcc8
    la	$t9,getVDataPtrs
    beqz	$a2,.L0f10bcc4
    sll	$a1,$a2,0x5
    addu	$a1,$a1,$s2
    lw	$a1,3152($a1)
    sw	$a1,0($s5)
.L0f10bc2c:
    lh	$v0,0($a0)
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,8($s5)
    lh	$at,2($a0)
    mtc1	$at,$f1
    nop
    cvt.d.w	$f1,$f1
    dmtc1	$zero,$f0
    sdc1	$f0,24($s5)
    sdc1	$f1,16($s5)
    lw	$s5,3172($s2)
    sw	$zero,11480($s2)
    addiu	$s5,$s5,1
    sw	$s5,3172($s2)
    ld	$s5,16($sp)
.L0f10bc70:
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10bc80:
    addiu	$a2,$gp,-16136
    addiu	$a1,$gp,-16144
    la	$t9,funcNameString
    addiu	$a0,$gp,-16152
    sd	$ra,24($sp)
    bal funcNameString
    ld	$s5,16($sp)
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10bcc4:
    la	$t9,getVDataPtrs
.L0f10bcc8:
    sd	$ra,24($sp)
    bal getVDataPtrs
    sd	$a0,32($sp)
    lw	$a1,11376($s2)
    li	$a0,68
    subu	$a1,$v0,$a1
    div	$zero,$a1,$a0
    ld	$ra,24($sp)
    teq	$a0,$zero,0x7
    ld	$a0,32($sp)
    mflo	$v1
    b	.L0f10bc2c
    sw	$v1,0($s5)
.L0f10bcfc:
    la	$t9,glVertex2sv
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f10bc70
    ld	$ra,24($sp)
.end __igl_concave_vertex2sv

# Function: __igl_concave_vertex2iv
# Declared: Line 152 (Source lines: 152-152)
# Address: 0x0f10bd14 - 0x0f10be78 (Size: 356 bytes, Frame: 192)
.globl __igl_concave_vertex2iv
.ent __igl_concave_vertex2iv
__igl_concave_vertex2iv:
    # Line 152
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s2,0($sp)
    lui	$s2,0xfff2
    addiu	$s2,$s2,30004
    addu	$gp,$t9,$s2
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$at,3164($a3)
    beqz	$at,.L0f10be60
    move	$s2,$a3
    lw	$at,3168($a3)
    sd	$s5,16($sp)
    lw	$s5,3172($a3)
    sw	$at,11408($a3)
    lw	$a2,3172($s2)
    sll	$s5,$s5,0x5
    addu	$s5,$s5,$a3
    slti	$at,$a2,256
    beqz	$at,.L0f10bde0
    addiu	$s5,$s5,3184
    lw	$v0,11480($s2)
    li	$v1,1
    beq	$v0,$v1,.L0f10be2c
    la	$t9,getVDataPtrs
    beqz	$a2,.L0f10be28
    sll	$a1,$a2,0x5
    addu	$a1,$a1,$s2
    lw	$a1,3152($a1)
    sw	$a1,0($s5)
.L0f10bd8c:
    lw	$v0,0($a0)
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,8($s5)
    lw	$at,4($a0)
    mtc1	$at,$f1
    nop
    cvt.d.w	$f1,$f1
    dmtc1	$zero,$f0
    sdc1	$f0,24($s5)
    sdc1	$f1,16($s5)
    lw	$s5,3172($s2)
    sw	$zero,11480($s2)
    addiu	$s5,$s5,1
    sw	$s5,3172($s2)
    ld	$s5,16($sp)
.L0f10bdd0:
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10bde0:
    addiu	$a2,$gp,-16128
    ld	$s5,16($sp)
    sd	$ra,24($sp)
    la	$t9,funcNameString
    addiu	$a0,$gp,-16424
    addiu	$a1,$a0,280
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10be28:
    la	$t9,getVDataPtrs
.L0f10be2c:
    sd	$ra,24($sp)
    bal getVDataPtrs
    sd	$a0,32($sp)
    lw	$ra,11376($s2)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    ld	$a0,32($sp)
    teq	$a2,$zero,0x7
    ld	$ra,24($sp)
    mflo	$a1
    b	.L0f10bd8c
    sw	$a1,0($s5)
.L0f10be60:
    la	$t9,glVertex2iv
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f10bdd0
    ld	$ra,24($sp)
.end __igl_concave_vertex2iv

# Function: __igl_concave_vertex2fv
# Declared: Line 153 (Source lines: 153-153)
# Address: 0x0f10be78 - 0x0f10bfcc (Size: 340 bytes, Frame: 192)
.globl __igl_concave_vertex2fv
.ent __igl_concave_vertex2fv
__igl_concave_vertex2fv:
    # Line 153
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s2,0($sp)
    lui	$s2,0xfff2
    addiu	$s2,$s2,29648
    addu	$gp,$t9,$s2
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$at,3164($a3)
    beqz	$at,.L0f10bfb4
    move	$s2,$a3
    lw	$at,3168($a3)
    sd	$s5,16($sp)
    lw	$s5,3172($a3)
    sw	$at,11408($a3)
    lw	$a2,3172($s2)
    sll	$s5,$s5,0x5
    addu	$s5,$s5,$a3
    slti	$at,$a2,256
    beqz	$at,.L0f10bf34
    addiu	$s5,$s5,3184
    lw	$v0,11480($s2)
    li	$v1,1
    beq	$v0,$v1,.L0f10bf80
    la	$t9,getVDataPtrs
    beqz	$a2,.L0f10bf7c
    sll	$a1,$a2,0x5
    addu	$a1,$a1,$s2
    lw	$a1,3152($a1)
    sw	$a1,0($s5)
.L0f10bef0:
    lwc1	$f2,0($a0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($s5)
    lwc1	$f1,4($a0)
    dmtc1	$zero,$f0
    cvt.d.s	$f1,$f1
    sdc1	$f0,24($s5)
    sdc1	$f1,16($s5)
    lw	$s5,3172($s2)
    sw	$zero,11480($s2)
    addiu	$s5,$s5,1
    sw	$s5,3172($s2)
    ld	$s5,16($sp)
.L0f10bf24:
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10bf34:
    addiu	$a2,$gp,-16120
    ld	$s5,16($sp)
    sd	$ra,24($sp)
    la	$t9,funcNameString
    addiu	$a0,$gp,-16424
    addiu	$a1,$a0,280
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10bf7c:
    la	$t9,getVDataPtrs
.L0f10bf80:
    sd	$ra,24($sp)
    bal getVDataPtrs
    sd	$a0,32($sp)
    lw	$ra,11376($s2)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    ld	$a0,32($sp)
    teq	$a2,$zero,0x7
    ld	$ra,24($sp)
    mflo	$a1
    b	.L0f10bef0
    sw	$a1,0($s5)
.L0f10bfb4:
    la	$t9,glVertex2fv
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f10bf24
    ld	$ra,24($sp)
.end __igl_concave_vertex2fv

# Function: __igl_concave_vertex2f
# Declared: Line 155 (Source lines: 156-161)
# Address: 0x0f10bfcc - 0x0f10c008 (Size: 60 bytes, Frame: 48)
.globl __igl_concave_vertex2f
.ent __igl_concave_vertex2f
__igl_concave_vertex2f:
    # Line 156
    addiu	$sp,$sp,-48
    # Line 160
    addiu	$a0,$sp,0
    sd	$gp,16($sp)
    # Line 156
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,29308 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 160
    la	$t9,__igl_concave_vertex2fv
    # Line 159
    swc1	$f13,4($sp)
    sd	$ra,8($sp)
    # Line 160
    bal __igl_concave_vertex2fv
    # Line 159
    swc1	$f12,0($sp)
    # Line 161
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __igl_concave_vertex2f

# Function: __igl_concave_vertex3sv
# Declared: Line 163 (Source lines: 163-163)
# Address: 0x0f10c008 - 0x0f10c178 (Size: 368 bytes, Frame: 192)
.globl __igl_concave_vertex3sv
.ent __igl_concave_vertex3sv
__igl_concave_vertex3sv:
    # Line 163
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s2,0($sp)
    lui	$s2,0xfff2
    addiu	$s2,$s2,29248
    addu	$gp,$t9,$s2
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$at,3164($a3)
    beqz	$at,.L0f10c160
    move	$s2,$a3
    lw	$at,3168($a3)
    sd	$s5,16($sp)
    lw	$s5,3172($a3)
    sw	$at,11408($a3)
    lw	$a2,3172($s2)
    sll	$s5,$s5,0x5
    addu	$s5,$s5,$a3
    slti	$at,$a2,256
    beqz	$at,.L0f10c0e0
    addiu	$s5,$s5,3184
    lw	$v0,11480($s2)
    li	$v1,1
    beq	$v0,$v1,.L0f10c12c
    la	$t9,getVDataPtrs
    beqz	$a2,.L0f10c128
    sll	$a1,$a2,0x5
    addu	$a1,$a1,$s2
    lw	$a1,3152($a1)
    sw	$a1,0($s5)
.L0f10c080:
    lh	$v1,0($a0)
    mtc1	$v1,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,8($s5)
    lh	$v0,2($a0)
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    sdc1	$f1,16($s5)
    lh	$at,4($a0)
    mtc1	$at,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,24($s5)
    lw	$s5,3172($s2)
    sw	$zero,11480($s2)
    addiu	$s5,$s5,1
    sw	$s5,3172($s2)
    ld	$s5,16($sp)
.L0f10c0d0:
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c0e0:
    addiu	$a1,$gp,-16112
    ld	$s5,16($sp)
    sd	$ra,24($sp)
    la	$t9,funcNameString
    addiu	$a0,$gp,-16424
    addiu	$a2,$a0,288
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c128:
    la	$t9,getVDataPtrs
.L0f10c12c:
    sd	$ra,24($sp)
    bal getVDataPtrs
    sd	$a0,32($sp)
    lw	$ra,11376($s2)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    ld	$a0,32($sp)
    teq	$a2,$zero,0x7
    ld	$ra,24($sp)
    mflo	$a1
    b	.L0f10c080
    sw	$a1,0($s5)
.L0f10c160:
    la	$t9,glVertex3sv
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f10c0d0
    ld	$ra,24($sp)
.end __igl_concave_vertex3sv

# Function: __igl_concave_vertex3iv
# Declared: Line 164 (Source lines: 164-164)
# Address: 0x0f10c178 - 0x0f10c2e8 (Size: 368 bytes, Frame: 192)
.globl __igl_concave_vertex3iv
.ent __igl_concave_vertex3iv
__igl_concave_vertex3iv:
    # Line 164
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s2,0($sp)
    lui	$s2,0xfff2
    addiu	$s2,$s2,28880
    addu	$gp,$t9,$s2
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$at,3164($a3)
    beqz	$at,.L0f10c2d0
    move	$s2,$a3
    lw	$at,3168($a3)
    sd	$s5,16($sp)
    lw	$s5,3172($a3)
    sw	$at,11408($a3)
    lw	$a2,3172($s2)
    sll	$s5,$s5,0x5
    addu	$s5,$s5,$a3
    slti	$at,$a2,256
    beqz	$at,.L0f10c250
    addiu	$s5,$s5,3184
    lw	$v0,11480($s2)
    li	$v1,1
    beq	$v0,$v1,.L0f10c29c
    la	$t9,getVDataPtrs
    beqz	$a2,.L0f10c298
    sll	$a1,$a2,0x5
    addu	$a1,$a1,$s2
    lw	$a1,3152($a1)
    sw	$a1,0($s5)
.L0f10c1f0:
    lw	$v1,0($a0)
    mtc1	$v1,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,8($s5)
    lw	$v0,4($a0)
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    sdc1	$f1,16($s5)
    lw	$at,8($a0)
    mtc1	$at,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,24($s5)
    lw	$s5,3172($s2)
    sw	$zero,11480($s2)
    addiu	$s5,$s5,1
    sw	$s5,3172($s2)
    ld	$s5,16($sp)
.L0f10c240:
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c250:
    ld	$s5,16($sp)
    sd	$ra,24($sp)
    addiu	$a0,$gp,-16424
    la	$t9,funcNameString
    addiu	$a2,$a0,296
    addiu	$a1,$a0,312
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c298:
    la	$t9,getVDataPtrs
.L0f10c29c:
    sd	$ra,24($sp)
    bal getVDataPtrs
    sd	$a0,32($sp)
    lw	$ra,11376($s2)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    ld	$a0,32($sp)
    teq	$a2,$zero,0x7
    ld	$ra,24($sp)
    mflo	$a1
    b	.L0f10c1f0
    sw	$a1,0($s5)
.L0f10c2d0:
    la	$t9,glVertex3iv
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f10c240
    ld	$ra,24($sp)
.end __igl_concave_vertex3iv

# Function: __igl_concave_vertex3fv
# Declared: Line 165 (Source lines: 165-165)
# Address: 0x0f10c2e8 - 0x0f10c440 (Size: 344 bytes, Frame: 192)
.globl __igl_concave_vertex3fv
.ent __igl_concave_vertex3fv
__igl_concave_vertex3fv:
    # Line 165
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s2,0($sp)
    lui	$s2,0xfff2
    addiu	$s2,$s2,28512
    addu	$gp,$t9,$s2
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$at,3164($a3)
    beqz	$at,.L0f10c428
    move	$s2,$a3
    lw	$at,3168($a3)
    sd	$s5,16($sp)
    lw	$s5,3172($a3)
    sw	$at,11408($a3)
    lw	$a2,3172($s2)
    sll	$s5,$s5,0x5
    addu	$s5,$s5,$a3
    slti	$at,$a2,256
    beqz	$at,.L0f10c3a8
    addiu	$s5,$s5,3184
    lw	$v0,11480($s2)
    li	$v1,1
    beq	$v0,$v1,.L0f10c3f4
    la	$t9,getVDataPtrs
    beqz	$a2,.L0f10c3f0
    sll	$a1,$a2,0x5
    addu	$a1,$a1,$s2
    lw	$a1,3152($a1)
    sw	$a1,0($s5)
.L0f10c360:
    lwc1	$f2,0($a0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($s5)
    lwc1	$f1,4($a0)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($s5)
    lwc1	$f0,8($a0)
    cvt.d.s	$f0,$f0
    sdc1	$f0,24($s5)
    lw	$s5,3172($s2)
    sw	$zero,11480($s2)
    addiu	$s5,$s5,1
    sw	$s5,3172($s2)
    ld	$s5,16($sp)
.L0f10c398:
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c3a8:
    ld	$s5,16($sp)
    sd	$ra,24($sp)
    addiu	$a0,$gp,-16424
    la	$t9,funcNameString
    addiu	$a2,$a0,304
    addiu	$a1,$a0,312
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c3f0:
    la	$t9,getVDataPtrs
.L0f10c3f4:
    sd	$ra,24($sp)
    bal getVDataPtrs
    sd	$a0,32($sp)
    lw	$ra,11376($s2)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    ld	$a0,32($sp)
    teq	$a2,$zero,0x7
    ld	$ra,24($sp)
    mflo	$a1
    b	.L0f10c360
    sw	$a1,0($s5)
.L0f10c428:
    la	$t9,glVertex3fv
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f10c398
    ld	$ra,24($sp)
.end __igl_concave_vertex3fv

# Function: __igl_concave_vertex3f
# Declared: Line 167 (Source lines: 168-173)
# Address: 0x0f10c440 - 0x0f10c480 (Size: 64 bytes, Frame: 192)
.globl __igl_concave_vertex3f
.ent __igl_concave_vertex3f
__igl_concave_vertex3f:
    # Line 168
    addiu	$sp,$sp,-64
    # Line 172
    addiu	$a0,$sp,0
    # Line 171
    swc1	$f14,8($sp)
    sd	$gp,24($sp)
    # Line 168
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,28168 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 172
    la	$t9,__igl_concave_vertex3fv
    # Line 171
    swc1	$f13,4($sp)
    sd	$ra,16($sp)
    # Line 172
    bal __igl_concave_vertex3fv
    # Line 171
    swc1	$f12,0($sp)
    # Line 173
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __igl_concave_vertex3f

# Function: __igl_concave_vertex4sv
# Declared: Line 175 (Source lines: 175-175)
# Address: 0x0f10c480 - 0x0f10c62c (Size: 428 bytes, Frame: 192)
.globl __igl_concave_vertex4sv
.ent __igl_concave_vertex4sv
__igl_concave_vertex4sv:
    # Line 175
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s1,16($sp)
    lui	$s1,0xfff2
    addiu	$s1,$s1,28104
    addu	$gp,$t9,$s1
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$at,3164($a2)
    sd	$s5,0($sp)
    move	$s1,$a0
    beqz	$at,.L0f10c614
    move	$s5,$a2
    lw	$at,3168($a2)
    sd	$s7,24($sp)
    lw	$s7,3172($a2)
    sw	$at,11408($a2)
    lw	$a0,3172($s5)
    sll	$s7,$s7,0x5
    addu	$s7,$s7,$a2
    slti	$at,$a0,256
    beqz	$at,.L0f10c594
    addiu	$s7,$s7,3184
    lw	$v0,11480($s5)
    li	$v1,1
    beq	$v0,$v1,.L0f10c5e4
    la	$t9,getVDataPtrs
    beqz	$a0,.L0f10c5e0
    sll	$a1,$a0,0x5
    addu	$a1,$a1,$s5
    lw	$a1,3152($a1)
    sw	$a1,0($s7)
.L0f10c500:
    lh	$a0,6($s1)
    beqz	$a0,.L0f10c58c
    ldc1	$f5,_lit8_3ff0000000000000
    mtc1	$a0,$f4
    nop
    cvt.d.w	$f4,$f4
    div.d	$f4,$f5,$f4
.L0f10c51c:
    lh	$v1,0($s1)
    mtc1	$v1,$f2
    nop
    cvt.d.w	$f2,$f2
    mul.d	$f2,$f2,$f4
    sdc1	$f2,8($s7)
    lh	$v0,2($s1)
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    mul.d	$f1,$f1,$f4
    sdc1	$f1,16($s7)
    lh	$at,4($s1)
    mtc1	$at,$f0
    nop
    cvt.d.w	$f0,$f0
    mul.d	$f0,$f0,$f4
    sdc1	$f0,24($s7)
    lw	$s7,3172($s5)
    sw	$zero,11480($s5)
    addiu	$s7,$s7,1
    sw	$s7,3172($s5)
    ld	$s7,24($sp)
.L0f10c578:
    ld	$gp,8($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c58c:
    b	.L0f10c51c
    mov.d	$f4,$f5
.L0f10c594:
    addiu	$a1,$gp,-16104
    ld	$s7,24($sp)
    sd	$ra,32($sp)
    la	$t9,funcNameString
    addiu	$a0,$gp,-16424
    addiu	$a2,$a0,288
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c5e0:
    la	$t9,getVDataPtrs
.L0f10c5e4:
    sd	$ra,32($sp)
    bal getVDataPtrs
    nop
    lw	$ra,11376($s5)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    teq	$a2,$zero,0x7
    ld	$ra,32($sp)
    mflo	$a1
    b	.L0f10c500
    sw	$a1,0($s7)
.L0f10c614:
    la	$t9,glVertex4sv
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    b	.L0f10c578
    ld	$ra,32($sp)
.end __igl_concave_vertex4sv

# Function: __igl_concave_vertex4iv
# Declared: Line 176 (Source lines: 176-176)
# Address: 0x0f10c62c - 0x0f10c7d8 (Size: 428 bytes, Frame: 192)
.globl __igl_concave_vertex4iv
.ent __igl_concave_vertex4iv
__igl_concave_vertex4iv:
    # Line 176
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s1,16($sp)
    lui	$s1,0xfff2
    addiu	$s1,$s1,27676
    addu	$gp,$t9,$s1
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$at,3164($a2)
    sd	$s5,0($sp)
    move	$s1,$a0
    beqz	$at,.L0f10c7c0
    move	$s5,$a2
    lw	$at,3168($a2)
    sd	$s7,24($sp)
    lw	$s7,3172($a2)
    sw	$at,11408($a2)
    lw	$a0,3172($s5)
    sll	$s7,$s7,0x5
    addu	$s7,$s7,$a2
    slti	$at,$a0,256
    beqz	$at,.L0f10c740
    addiu	$s7,$s7,3184
    lw	$v0,11480($s5)
    li	$v1,1
    beq	$v0,$v1,.L0f10c790
    la	$t9,getVDataPtrs
    beqz	$a0,.L0f10c78c
    sll	$a1,$a0,0x5
    addu	$a1,$a1,$s5
    lw	$a1,3152($a1)
    sw	$a1,0($s7)
.L0f10c6ac:
    lw	$a0,12($s1)
    beqz	$a0,.L0f10c738
    ldc1	$f5,_lit8_3ff0000000000000
    mtc1	$a0,$f4
    nop
    cvt.d.w	$f4,$f4
    div.d	$f4,$f5,$f4
.L0f10c6c8:
    lw	$v1,0($s1)
    mtc1	$v1,$f2
    nop
    cvt.d.w	$f2,$f2
    mul.d	$f2,$f2,$f4
    sdc1	$f2,8($s7)
    lw	$v0,4($s1)
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    mul.d	$f1,$f1,$f4
    sdc1	$f1,16($s7)
    lw	$at,8($s1)
    mtc1	$at,$f0
    nop
    cvt.d.w	$f0,$f0
    mul.d	$f0,$f0,$f4
    sdc1	$f0,24($s7)
    lw	$s7,3172($s5)
    sw	$zero,11480($s5)
    addiu	$s7,$s7,1
    sw	$s7,3172($s5)
    ld	$s7,24($sp)
.L0f10c724:
    ld	$gp,8($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c738:
    b	.L0f10c6c8
    mov.d	$f4,$f5
.L0f10c740:
    ld	$s7,24($sp)
    sd	$ra,32($sp)
    addiu	$a0,$gp,-16424
    la	$t9,funcNameString
    addiu	$a2,$a0,296
    addiu	$a1,$a0,320
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c78c:
    la	$t9,getVDataPtrs
.L0f10c790:
    sd	$ra,32($sp)
    bal getVDataPtrs
    nop
    lw	$ra,11376($s5)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    teq	$a2,$zero,0x7
    ld	$ra,32($sp)
    mflo	$a1
    b	.L0f10c6ac
    sw	$a1,0($s7)
.L0f10c7c0:
    la	$t9,glVertex4iv
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    b	.L0f10c724
    ld	$ra,32($sp)
.end __igl_concave_vertex4iv

# Function: __igl_concave_vertex4fv
# Declared: Line 177 (Source lines: 177-177)
# Address: 0x0f10c7d8 - 0x0f10c970 (Size: 408 bytes, Frame: 192)
.globl __igl_concave_vertex4fv
.ent __igl_concave_vertex4fv
__igl_concave_vertex4fv:
    # Line 177
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$s1,16($sp)
    lui	$s1,0xfff2
    addiu	$s1,$s1,27248
    addu	$gp,$t9,$s1
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$at,3164($a2)
    sd	$s5,0($sp)
    move	$s1,$a0
    beqz	$at,.L0f10c958
    move	$s5,$a2
    lw	$at,3168($a2)
    sd	$s7,24($sp)
    lw	$s7,3172($a2)
    sw	$at,11408($a2)
    lw	$a0,3172($s5)
    sll	$s7,$s7,0x5
    addu	$s7,$s7,$a2
    slti	$at,$a0,256
    beqz	$at,.L0f10c8d8
    addiu	$s7,$s7,3184
    lw	$v0,11480($s5)
    li	$v1,1
    beq	$v0,$v1,.L0f10c928
    la	$t9,getVDataPtrs
    beqz	$a0,.L0f10c924
    sll	$a1,$a0,0x5
    addu	$a1,$a1,$s5
    lw	$a1,3152($a1)
    sw	$a1,0($s7)
.L0f10c858:
    mtc1	$zero,$f0
    lwc1	$f5,12($s1)
    c.eq.s	$f5,$f0
    nop
    bc1f	.L0f10c878
    ldc1	$f6,_lit8_3ff0000000000000
    b	.L0f10c880
    mov.d	$f4,$f6
.L0f10c878:
    cvt.d.s	$f4,$f5
    div.d	$f4,$f6,$f4
.L0f10c880:
    lwc1	$f2,0($s1)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    sdc1	$f2,8($s7)
    lwc1	$f1,4($s1)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    sdc1	$f1,16($s7)
    lwc1	$f0,8($s1)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    sdc1	$f0,24($s7)
    lw	$s7,3172($s5)
    sw	$zero,11480($s5)
    addiu	$s7,$s7,1
    sw	$s7,3172($s5)
    ld	$s7,24($sp)
.L0f10c8c4:
    ld	$gp,8($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c8d8:
    ld	$s7,24($sp)
    sd	$ra,32($sp)
    addiu	$a0,$gp,-16424
    la	$t9,funcNameString
    addiu	$a2,$a0,304
    addiu	$a1,$a0,320
    bal funcNameString
    addiu	$a0,$a0,272
    la	$t9,gl_ErrorHandler
    move	$a2,$v0
    li	$a1,2
    jalr	$t9
    li	$a0,97
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10c924:
    la	$t9,getVDataPtrs
.L0f10c928:
    sd	$ra,32($sp)
    bal getVDataPtrs
    nop
    lw	$ra,11376($s5)
    li	$a2,68
    subu	$ra,$v0,$ra
    div	$zero,$ra,$a2
    teq	$a2,$zero,0x7
    ld	$ra,32($sp)
    mflo	$a1
    b	.L0f10c858
    sw	$a1,0($s7)
.L0f10c958:
    la	$t9,glVertex4fv
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    b	.L0f10c8c4
    ld	$ra,32($sp)
.end __igl_concave_vertex4fv

# Function: __igl_concave_vertex4f
# Declared: Line 179 (Source lines: 180-185)
# Address: 0x0f10c970 - 0x0f10c9b4 (Size: 68 bytes, Frame: 192)
.globl __igl_concave_vertex4f
.ent __igl_concave_vertex4f
__igl_concave_vertex4f:
    # Line 180
    addiu	$sp,$sp,-64
    # Line 184
    addiu	$a0,$sp,0
    # Line 183
    swc1	$f15,12($sp)
    swc1	$f14,8($sp)
    sd	$gp,24($sp)
    # Line 180
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,26840 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 184
    la	$t9,__igl_concave_vertex4fv
    # Line 183
    swc1	$f13,4($sp)
    sd	$ra,16($sp)
    # Line 184
    bal __igl_concave_vertex4fv
    # Line 183
    swc1	$f12,0($sp)
    # Line 185
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __igl_concave_vertex4f

# Function: gl_i_v2s
# Declared: Line 220 (Source lines: 220-220)
# Address: 0x0f10c9b4 - 0x0f10c9f0 (Size: 60 bytes, Frame: 32)
.globl gl_i_v2s
.ent gl_i_v2s
gl_i_v2s:
    # Line 220
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,26772
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,16($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v2s

# Function: gl_c_v2s
# Declared: Line 220 (Source lines: 220-220)
# Address: 0x0f10c9f0 - 0x0f10ca70 (Size: 128 bytes, Frame: 192)
.globl gl_c_v2s
.ent gl_c_v2s
gl_c_v2s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,26712 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20176($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10ca54
    move	$s8,$a0
.L0f10ca18:
    la	$a1,gl_n_v2s
    sw	$a1,0($sp)
    lh	$a0,0($s8)
    la	$t9,gl_compile
    sh	$a0,4($sp)
    addiu	$a1,$sp,0
    lh	$v1,2($s8)
    li	$a0,4
    bal gl_compile
    sh	$v1,6($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10ca54:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23848
    li	$a1,1
    b	.L0f10ca18
    sw	$a1,-20176($gp)
.end gl_c_v2s

# Function: gl_n_v2s
# Declared: Line 220 (Source lines: 220-220)
# Address: 0x0f10ca70 - 0x0f10cab8 (Size: 72 bytes, Frame: 48)
.globl gl_n_v2s
.ent gl_n_v2s
gl_n_v2s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,26584
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,16($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v2s

# Function: gl_i_v2i
# Declared: Line 221 (Source lines: 221-221)
# Address: 0x0f10cab8 - 0x0f10caf4 (Size: 60 bytes, Frame: 32)
.globl gl_i_v2i
.ent gl_i_v2i
gl_i_v2i:
    # Line 221
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,26512
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,12($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v2i

# Function: gl_c_v2i
# Declared: Line 221 (Source lines: 221-221)
# Address: 0x0f10caf4 - 0x0f10cb74 (Size: 128 bytes, Frame: 192)
.globl gl_c_v2i
.ent gl_c_v2i
gl_c_v2i:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,26452 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20172($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10cb58
    move	$s8,$a0
.L0f10cb1c:
    la	$a1,gl_n_v2i
    sw	$a1,0($sp)
    lw	$a0,0($s8)
    la	$t9,gl_compile
    sw	$a0,4($sp)
    addiu	$a1,$sp,0
    lw	$v1,4($s8)
    li	$a0,6
    bal gl_compile
    sw	$v1,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10cb58:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23832
    li	$a1,1
    b	.L0f10cb1c
    sw	$a1,-20172($gp)
.end gl_c_v2i

# Function: gl_n_v2i
# Declared: Line 221 (Source lines: 221-221)
# Address: 0x0f10cb74 - 0x0f10cbbc (Size: 72 bytes, Frame: 48)
.globl gl_n_v2i
.ent gl_n_v2i
gl_n_v2i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,26324
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,12($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v2i

# Function: gl_i_v2f
# Declared: Line 222 (Source lines: 222-222)
# Address: 0x0f10cbbc - 0x0f10cbf8 (Size: 60 bytes, Frame: 32)
.globl gl_i_v2f
.ent gl_i_v2f
gl_i_v2f:
    # Line 222
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,26252
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,8($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v2f

# Function: gl_c_v2f
# Declared: Line 222 (Source lines: 222-222)
# Address: 0x0f10cbf8 - 0x0f10cc78 (Size: 128 bytes, Frame: 192)
.globl gl_c_v2f
.ent gl_c_v2f
gl_c_v2f:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,26192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20168($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10cc5c
    move	$s8,$a0
.L0f10cc20:
    la	$v1,gl_n_v2f
    sw	$v1,0($sp)
    lwc1	$f1,0($s8)
    addiu	$a1,$sp,0
    swc1	$f1,4($sp)
    la	$t9,gl_compile
    lwc1	$f0,4($s8)
    li	$a0,6
    bal gl_compile
    swc1	$f0,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10cc5c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23816
    li	$a1,1
    b	.L0f10cc20
    sw	$a1,-20168($gp)
.end gl_c_v2f

# Function: gl_n_v2f
# Declared: Line 222 (Source lines: 222-222)
# Address: 0x0f10cc78 - 0x0f10ccc0 (Size: 72 bytes, Frame: 48)
.globl gl_n_v2f
.ent gl_n_v2f
gl_n_v2f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,26064
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,8($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v2f

# Function: gl_i_v2d
# Declared: Line 223 (Source lines: 223-223)
# Address: 0x0f10ccc0 - 0x0f10cd08 (Size: 72 bytes, Frame: 32)
.globl gl_i_v2d
.ent gl_i_v2d
gl_i_v2d:
    # Line 223
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,25992
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    lw	$t9,4($t9)
    cvt.s.d	$f13,$f13
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v2d

# Function: gl_c_v2d
# Declared: Line 223 (Source lines: 223-223)
# Address: 0x0f10cd08 - 0x0f10cd90 (Size: 136 bytes, Frame: 192)
.globl gl_c_v2d
.ent gl_c_v2d
gl_c_v2d:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,25920 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20164($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10cd74
    move	$s8,$a0
.L0f10cd30:
    la	$v1,gl_n_v2d
    sw	$v1,0($sp)
    ldc1	$f1,0($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($sp)
    ldc1	$f0,8($s8)
    la	$t9,gl_compile
    cvt.s.d	$f0,$f0
    addiu	$a1,$sp,0
    li	$a0,6
    bal gl_compile
    swc1	$f0,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10cd74:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23800
    li	$a1,1
    b	.L0f10cd30
    sw	$a1,-20164($gp)
.end gl_c_v2d

# Function: gl_n_v2d
# Declared: Line 223 (Source lines: 223-223)
# Address: 0x0f10cd90 - 0x0f10cde0 (Size: 80 bytes, Frame: 48)
.globl gl_n_v2d
.ent gl_n_v2d
gl_n_v2d:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,25784
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lwc1	$f13,4($a0)
    lw	$t9,4($t9)
    lwc1	$f12,0($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v2d

# Function: gl_i_v3s
# Declared: Line 225 (Source lines: 225-225)
# Address: 0x0f10cde0 - 0x0f10ce1c (Size: 60 bytes, Frame: 32)
.globl gl_i_v3s
.ent gl_i_v3s
gl_i_v3s:
    # Line 225
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,25704
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v3s

# Function: gl_c_v3s
# Declared: Line 225 (Source lines: 225-225)
# Address: 0x0f10ce1c - 0x0f10cea4 (Size: 136 bytes, Frame: 192)
.globl gl_c_v3s
.ent gl_c_v3s
gl_c_v3s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,25644 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20160($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10ce88
    move	$s8,$a0
.L0f10ce44:
    la	$a2,gl_n_v3s
    sw	$a2,0($sp)
    lh	$a1,0($s8)
    sh	$a1,4($sp)
    lh	$a0,2($s8)
    la	$t9,gl_compile
    sh	$a0,6($sp)
    addiu	$a1,$sp,0
    lh	$v1,4($s8)
    li	$a0,6
    bal gl_compile
    sh	$v1,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10ce88:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23784
    li	$a1,1
    b	.L0f10ce44
    sw	$a1,-20160($gp)
.end gl_c_v3s

# Function: gl_n_v3s
# Declared: Line 225 (Source lines: 225-225)
# Address: 0x0f10cea4 - 0x0f10ceec (Size: 72 bytes, Frame: 48)
.globl gl_n_v3s
.ent gl_n_v3s
gl_n_v3s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,25508
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,32($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v3s

# Function: gl_i_v3i
# Declared: Line 226 (Source lines: 226-226)
# Address: 0x0f10ceec - 0x0f10cf28 (Size: 60 bytes, Frame: 32)
.globl gl_i_v3i
.ent gl_i_v3i
gl_i_v3i:
    # Line 226
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,25436
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,28($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v3i

# Function: gl_c_v3i
# Declared: Line 226 (Source lines: 226-226)
# Address: 0x0f10cf28 - 0x0f10cfb0 (Size: 136 bytes, Frame: 192)
.globl gl_c_v3i
.ent gl_c_v3i
gl_c_v3i:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,25376 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20156($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10cf94
    move	$s8,$a0
.L0f10cf50:
    la	$a2,gl_n_v3i
    sw	$a2,0($sp)
    lw	$a1,0($s8)
    sw	$a1,4($sp)
    lw	$a0,4($s8)
    la	$t9,gl_compile
    sw	$a0,8($sp)
    addiu	$a1,$sp,0
    lw	$v1,8($s8)
    li	$a0,8
    bal gl_compile
    sw	$v1,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10cf94:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23768
    li	$a1,1
    b	.L0f10cf50
    sw	$a1,-20156($gp)
.end gl_c_v3i

# Function: gl_n_v3i
# Declared: Line 226 (Source lines: 226-226)
# Address: 0x0f10cfb0 - 0x0f10cff8 (Size: 72 bytes, Frame: 48)
.globl gl_n_v3i
.ent gl_n_v3i
gl_n_v3i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,25240
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,28($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v3i

# Function: gl_i_v3f
# Declared: Line 227 (Source lines: 227-227)
# Address: 0x0f10cff8 - 0x0f10d034 (Size: 60 bytes, Frame: 32)
.globl gl_i_v3f
.ent gl_i_v3f
gl_i_v3f:
    # Line 227
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,25168
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v3f

# Function: gl_c_v3f
# Declared: Line 227 (Source lines: 227-227)
# Address: 0x0f10d034 - 0x0f10d0bc (Size: 136 bytes, Frame: 192)
.globl gl_c_v3f
.ent gl_c_v3f
gl_c_v3f:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,25108 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20152($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10d0a0
    move	$s8,$a0
.L0f10d05c:
    la	$v1,gl_n_v3f
    sw	$v1,0($sp)
    lwc1	$f2,0($s8)
    swc1	$f2,4($sp)
    lwc1	$f1,4($s8)
    addiu	$a1,$sp,0
    swc1	$f1,8($sp)
    la	$t9,gl_compile
    lwc1	$f0,8($s8)
    li	$a0,8
    bal gl_compile
    swc1	$f0,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d0a0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23752
    li	$a1,1
    b	.L0f10d05c
    sw	$a1,-20152($gp)
.end gl_c_v3f

# Function: gl_n_v3f
# Declared: Line 227 (Source lines: 227-227)
# Address: 0x0f10d0bc - 0x0f10d104 (Size: 72 bytes, Frame: 48)
.globl gl_n_v3f
.ent gl_n_v3f
gl_n_v3f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,24972
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v3f

# Function: gl_i_v3d
# Declared: Line 228 (Source lines: 228-228)
# Address: 0x0f10d104 - 0x0f10d154 (Size: 80 bytes, Frame: 32)
.globl gl_i_v3d
.ent gl_i_v3d
gl_i_v3d:
    # Line 228
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,24900
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    lw	$t9,0($t9)
    cvt.s.d	$f14,$f14
    ldc1	$f12,0($a0)
    lw	$t9,20($t9)
    cvt.s.d	$f13,$f13
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v3d

# Function: gl_c_v3d
# Declared: Line 228 (Source lines: 228-228)
# Address: 0x0f10d154 - 0x0f10d1e8 (Size: 148 bytes, Frame: 192)
.globl gl_c_v3d
.ent gl_c_v3d
gl_c_v3d:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,24820 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20148($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10d1cc
    move	$s8,$a0
.L0f10d17c:
    la	$v1,gl_n_v3d
    sw	$v1,0($sp)
    ldc1	$f2,0($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    ldc1	$f0,16($s8)
    la	$t9,gl_compile
    cvt.s.d	$f0,$f0
    addiu	$a1,$sp,0
    li	$a0,8
    bal gl_compile
    swc1	$f0,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d1cc:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23736
    li	$a1,1
    b	.L0f10d17c
    sw	$a1,-20148($gp)
.end gl_c_v3d

# Function: gl_n_v3d
# Declared: Line 228 (Source lines: 228-228)
# Address: 0x0f10d1e8 - 0x0f10d23c (Size: 84 bytes, Frame: 48)
.globl gl_n_v3d
.ent gl_n_v3d
gl_n_v3d:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,24672
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lw	$t9,20($t9)
    lwc1	$f12,0($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v3d

# Function: gl_i_v4s
# Declared: Line 230 (Source lines: 230-230)
# Address: 0x0f10d23c - 0x0f10d278 (Size: 60 bytes, Frame: 32)
.globl gl_i_v4s
.ent gl_i_v4s
gl_i_v4s:
    # Line 230
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,24588
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,48($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v4s

# Function: gl_c_v4s
# Declared: Line 230 (Source lines: 230-230)
# Address: 0x0f10d278 - 0x0f10d308 (Size: 144 bytes, Frame: 192)
.globl gl_c_v4s
.ent gl_c_v4s
gl_c_v4s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,24528 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20144($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10d2ec
    move	$s8,$a0
.L0f10d2a0:
    la	$a3,gl_n_v4s
    sw	$a3,0($sp)
    lh	$a2,0($s8)
    sh	$a2,4($sp)
    lh	$a1,2($s8)
    sh	$a1,6($sp)
    lh	$a0,4($s8)
    la	$t9,gl_compile
    sh	$a0,8($sp)
    addiu	$a1,$sp,0
    lh	$v1,6($s8)
    li	$a0,6
    bal gl_compile
    sh	$v1,10($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d2ec:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23720
    li	$a1,1
    b	.L0f10d2a0
    sw	$a1,-20144($gp)
.end gl_c_v4s

# Function: gl_n_v4s
# Declared: Line 230 (Source lines: 230-230)
# Address: 0x0f10d308 - 0x0f10d350 (Size: 72 bytes, Frame: 48)
.globl gl_n_v4s
.ent gl_n_v4s
gl_n_v4s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,24384
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,48($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v4s

# Function: gl_i_v4i
# Declared: Line 231 (Source lines: 231-231)
# Address: 0x0f10d350 - 0x0f10d38c (Size: 60 bytes, Frame: 32)
.globl gl_i_v4i
.ent gl_i_v4i
gl_i_v4i:
    # Line 231
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,24312
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v4i

# Function: gl_c_v4i
# Declared: Line 231 (Source lines: 231-231)
# Address: 0x0f10d38c - 0x0f10d41c (Size: 144 bytes, Frame: 192)
.globl gl_c_v4i
.ent gl_c_v4i
gl_c_v4i:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,24252 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20140($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10d400
    move	$s8,$a0
.L0f10d3b4:
    la	$a3,gl_n_v4i
    sw	$a3,0($sp)
    lw	$a2,0($s8)
    sw	$a2,4($sp)
    lw	$a1,4($s8)
    sw	$a1,8($sp)
    lw	$a0,8($s8)
    la	$t9,gl_compile
    sw	$a0,12($sp)
    addiu	$a1,$sp,0
    lw	$v1,12($s8)
    li	$a0,10
    bal gl_compile
    sw	$v1,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d400:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23704
    li	$a1,1
    b	.L0f10d3b4
    sw	$a1,-20140($gp)
.end gl_c_v4i

# Function: gl_n_v4i
# Declared: Line 231 (Source lines: 231-231)
# Address: 0x0f10d41c - 0x0f10d464 (Size: 72 bytes, Frame: 48)
.globl gl_n_v4i
.ent gl_n_v4i
gl_n_v4i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,24108
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,44($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v4i

# Function: gl_i_v4f
# Declared: Line 232 (Source lines: 232-232)
# Address: 0x0f10d464 - 0x0f10d4a0 (Size: 60 bytes, Frame: 32)
.globl gl_i_v4f
.ent gl_i_v4f
gl_i_v4f:
    # Line 232
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,24036
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,40($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v4f

# Function: gl_c_v4f
# Declared: Line 232 (Source lines: 232-232)
# Address: 0x0f10d4a0 - 0x0f10d530 (Size: 144 bytes, Frame: 192)
.globl gl_c_v4f
.ent gl_c_v4f
gl_c_v4f:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,23976 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20136($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10d514
    move	$s8,$a0
.L0f10d4c8:
    la	$v1,gl_n_v4f
    sw	$v1,0($sp)
    lwc1	$f3,0($s8)
    swc1	$f3,4($sp)
    lwc1	$f2,4($s8)
    swc1	$f2,8($sp)
    lwc1	$f1,8($s8)
    addiu	$a1,$sp,0
    swc1	$f1,12($sp)
    la	$t9,gl_compile
    lwc1	$f0,12($s8)
    li	$a0,10
    bal gl_compile
    swc1	$f0,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d514:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23688
    li	$a1,1
    b	.L0f10d4c8
    sw	$a1,-20136($gp)
.end gl_c_v4f

# Function: gl_n_v4f
# Declared: Line 232 (Source lines: 232-232)
# Address: 0x0f10d530 - 0x0f10d578 (Size: 72 bytes, Frame: 48)
.globl gl_n_v4f
.ent gl_n_v4f
gl_n_v4f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,23832
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,40($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v4f

# Function: gl_i_v4d
# Declared: Line 233 (Source lines: 233-233)
# Address: 0x0f10d578 - 0x0f10d5d0 (Size: 88 bytes, Frame: 32)
.globl gl_i_v4d
.ent gl_i_v4d
gl_i_v4d:
    # Line 233
    ldc1	$f14,16($a0)
    ldc1	$f15,24($a0)
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,23760
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    cvt.s.d	$f15,$f15
    ldc1	$f13,8($a0)
    lw	$t9,0($t9)
    cvt.s.d	$f14,$f14
    ldc1	$f12,0($a0)
    lw	$t9,36($t9)
    cvt.s.d	$f13,$f13
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_v4d

# Function: gl_c_v4d
# Declared: Line 233 (Source lines: 233-233)
# Address: 0x0f10d5d0 - 0x0f10d670 (Size: 160 bytes, Frame: 192)
.globl gl_c_v4d
.ent gl_c_v4d
gl_c_v4d:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,23672 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20132($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10d654
    move	$s8,$a0
.L0f10d5f8:
    la	$v1,gl_n_v4d
    sw	$v1,0($sp)
    ldc1	$f3,0($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($sp)
    ldc1	$f2,8($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($sp)
    ldc1	$f1,16($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($sp)
    ldc1	$f0,24($s8)
    la	$t9,gl_compile
    cvt.s.d	$f0,$f0
    addiu	$a1,$sp,0
    li	$a0,10
    bal gl_compile
    swc1	$f0,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d654:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23672
    li	$a1,1
    b	.L0f10d5f8
    sw	$a1,-20132($gp)
.end gl_c_v4d

# Function: gl_n_v4d
# Declared: Line 233 (Source lines: 233-233)
# Address: 0x0f10d670 - 0x0f10d6c8 (Size: 88 bytes, Frame: 48)
.globl gl_n_v4d
.ent gl_n_v4d
gl_n_v4d:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,23512
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lwc1	$f15,12($a0)
    lw	$t9,0($t9)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lw	$t9,36($t9)
    lwc1	$f12,0($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_v4d

# Function: __igl_concave_TexCoord2sv
# Declared: Line 260 (Source lines: 260-260)
# Address: 0x0f10d6c8 - 0x0f10d7c8 (Size: 256 bytes, Frame: 192)
.globl __igl_concave_TexCoord2sv
.ent __igl_concave_TexCoord2sv
__igl_concave_TexCoord2sv:
    # Line 260
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,23424 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10d75c
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lh	$v1,0($a5)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,32($a2)
    lh	$v0,2($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    swc1	$f0,36($a2)
    la	$t9,glTexCoord2sv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10d750:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d75c:
    lw	$a1,11476($a4)
    ori	$a1,$a1,0x8000
    sw	$a1,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lh	$v0,0($a5)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a6)
    lh	$at,2($a5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f2,4($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    li	$a1,1
    sw	$a1,11480($v1)
    b	.L0f10d750
    sw	$v0,11424($v1)
.end __igl_concave_TexCoord2sv

# Function: __igl_concave_TexCoord2iv
# Declared: Line 261 (Source lines: 261-261)
# Address: 0x0f10d7c8 - 0x0f10d8c8 (Size: 256 bytes, Frame: 192)
.globl __igl_concave_TexCoord2iv
.ent __igl_concave_TexCoord2iv
__igl_concave_TexCoord2iv:
    # Line 261
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,23168 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10d85c
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lw	$v1,0($a5)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,32($a2)
    lw	$v0,4($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    swc1	$f0,36($a2)
    la	$t9,glTexCoord2iv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10d850:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d85c:
    lw	$a1,11476($a4)
    ori	$a1,$a1,0x8000
    sw	$a1,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lw	$v0,0($a5)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a6)
    lw	$at,4($a5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f2,4($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    li	$a1,1
    sw	$a1,11480($v1)
    b	.L0f10d850
    sw	$v0,11424($v1)
.end __igl_concave_TexCoord2iv

# Function: __igl_concave_TexCoord2fv
# Declared: Line 262 (Source lines: 262-262)
# Address: 0x0f10d8c8 - 0x0f10d998 (Size: 208 bytes, Frame: 192)
.globl __igl_concave_TexCoord2fv
.ent __igl_concave_TexCoord2fv
__igl_concave_TexCoord2fv:
    # Line 262
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,22912 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10d944
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lwc1	$f1,0($a5)
    swc1	$f1,32($a2)
    lwc1	$f0,4($a5)
    sd	$ra,32($sp)
    swc1	$f0,36($a2)
    la	$t9,glTexCoord2fv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10d938:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10d944:
    lw	$v0,11476($a4)
    ori	$v0,$v0,0x8000
    sw	$v0,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lwc1	$f3,0($a5)
    swc1	$f3,0($a6)
    lwc1	$f2,4($a5)
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f2,4($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    li	$a1,1
    sw	$a1,11480($v1)
    b	.L0f10d938
    sw	$v0,11424($v1)
.end __igl_concave_TexCoord2fv

# Function: __igl_concave_TexCoord2f
# Declared: Line 263 (Source lines: 264-270)
# Address: 0x0f10d998 - 0x0f10d9d4 (Size: 60 bytes, Frame: 48)
.globl __igl_concave_TexCoord2f
.ent __igl_concave_TexCoord2f
__igl_concave_TexCoord2f:
    # Line 264
    addiu	$sp,$sp,-48
    # Line 268
    addiu	$a0,$sp,0
    sd	$gp,16($sp)
    # Line 264
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,22704 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 268
    la	$t9,__igl_concave_TexCoord2fv
    # Line 267
    swc1	$f13,4($sp)
    sd	$ra,8($sp)
    # Line 268
    bal __igl_concave_TexCoord2fv
    # Line 266
    swc1	$f12,0($sp)
    # Line 270
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __igl_concave_TexCoord2f

# Function: __igl_concave_TexCoord3sv
# Declared: Line 273 (Source lines: 273-273)
# Address: 0x0f10d9d4 - 0x0f10dafc (Size: 296 bytes, Frame: 192)
.globl __igl_concave_TexCoord3sv
.ent __igl_concave_TexCoord3sv
__igl_concave_TexCoord3sv:
    # Line 273
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,22644 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10da7c
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lh	$a1,0($a5)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,32($a2)
    lh	$v1,2($a5)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,36($a2)
    lh	$v0,4($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    swc1	$f0,40($a2)
    la	$t9,glTexCoord3sv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10da70:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10da7c:
    lw	$at,11476($a4)
    ori	$at,$at,0x8000
    sw	$at,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lh	$a1,0($a5)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a6)
    lh	$v1,2($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a6)
    lh	$v0,4($a5)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f3,8($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$a2,16($sp)
    li	$ra,1
    sw	$v0,11424($a2)
    sw	$ra,11480($a2)
    b	.L0f10da70
    ld	$ra,32($sp)
.end __igl_concave_TexCoord3sv

# Function: __igl_concave_TexCoord3iv
# Declared: Line 274 (Source lines: 274-274)
# Address: 0x0f10dafc - 0x0f10dc24 (Size: 296 bytes, Frame: 192)
.globl __igl_concave_TexCoord3iv
.ent __igl_concave_TexCoord3iv
__igl_concave_TexCoord3iv:
    # Line 274
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,22348 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10dba4
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lw	$a1,0($a5)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,32($a2)
    lw	$v1,4($a5)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,36($a2)
    lw	$v0,8($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    swc1	$f0,40($a2)
    la	$t9,glTexCoord3iv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10db98:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10dba4:
    lw	$at,11476($a4)
    ori	$at,$at,0x8000
    sw	$at,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lw	$a1,0($a5)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a6)
    lw	$v1,4($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a6)
    lw	$v0,8($a5)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f3,8($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$a2,16($sp)
    li	$ra,1
    sw	$v0,11424($a2)
    sw	$ra,11480($a2)
    b	.L0f10db98
    ld	$ra,32($sp)
.end __igl_concave_TexCoord3iv

# Function: __igl_concave_TexCoord3fv
# Declared: Line 275 (Source lines: 275-275)
# Address: 0x0f10dc24 - 0x0f10dd04 (Size: 224 bytes, Frame: 192)
.globl __igl_concave_TexCoord3fv
.ent __igl_concave_TexCoord3fv
__igl_concave_TexCoord3fv:
    # Line 275
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,22052 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10dca8
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lwc1	$f2,0($a5)
    swc1	$f2,32($a2)
    lwc1	$f1,4($a5)
    swc1	$f1,36($a2)
    lwc1	$f0,8($a5)
    sd	$ra,32($sp)
    swc1	$f0,40($a2)
    la	$t9,glTexCoord3fv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10dc9c:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10dca8:
    lw	$v0,11476($a4)
    ori	$v0,$v0,0x8000
    sw	$v0,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lwc1	$f1,0($a5)
    swc1	$f1,0($a6)
    lwc1	$f0,4($a5)
    swc1	$f0,4($a6)
    lwc1	$f3,8($a5)
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f3,8($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    li	$a1,1
    sw	$a1,11480($v1)
    b	.L0f10dc9c
    sw	$v0,11424($v1)
.end __igl_concave_TexCoord3fv

# Function: __igl_concave_TexCoord3f
# Declared: Line 276 (Source lines: 277-283)
# Address: 0x0f10dd04 - 0x0f10dd44 (Size: 64 bytes, Frame: 192)
.globl __igl_concave_TexCoord3f
.ent __igl_concave_TexCoord3f
__igl_concave_TexCoord3f:
    # Line 277
    addiu	$sp,$sp,-64
    # Line 282
    addiu	$a0,$sp,0
    # Line 281
    swc1	$f14,8($sp)
    sd	$gp,24($sp)
    # Line 277
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,21828 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 282
    la	$t9,__igl_concave_TexCoord3fv
    # Line 280
    swc1	$f13,4($sp)
    sd	$ra,16($sp)
    # Line 282
    bal __igl_concave_TexCoord3fv
    # Line 279
    swc1	$f12,0($sp)
    # Line 283
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __igl_concave_TexCoord3f

# Function: __igl_concave_TexCoord4sv
# Declared: Line 285 (Source lines: 285-285)
# Address: 0x0f10dd44 - 0x0f10de94 (Size: 336 bytes, Frame: 192)
.globl __igl_concave_TexCoord4sv
.ent __igl_concave_TexCoord4sv
__igl_concave_TexCoord4sv:
    # Line 285
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,21764 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10de00
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lh	$at,0($a5)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,32($a2)
    lh	$a1,2($a5)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,36($a2)
    lh	$v1,4($a5)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,40($a2)
    lh	$v0,6($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    swc1	$f0,44($a2)
    la	$t9,glTexCoord4sv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10ddf4:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10de00:
    lw	$v0,11476($a4)
    ori	$v0,$v0,0x8000
    sw	$v0,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lh	$v0,0($a5)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a6)
    lh	$at,2($a5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($a6)
    lh	$a1,4($a5)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a6)
    lh	$v1,6($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f0,12($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    li	$a1,1
    sw	$a1,11480($v1)
    b	.L0f10ddf4
    sw	$v0,11424($v1)
.end __igl_concave_TexCoord4sv

# Function: __igl_concave_TexCoord4iv
# Declared: Line 286 (Source lines: 286-286)
# Address: 0x0f10de94 - 0x0f10dfe4 (Size: 336 bytes, Frame: 192)
.globl __igl_concave_TexCoord4iv
.ent __igl_concave_TexCoord4iv
__igl_concave_TexCoord4iv:
    # Line 286
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,21428 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10df50
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lw	$at,0($a5)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,32($a2)
    lw	$a1,4($a5)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,36($a2)
    lw	$v1,8($a5)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,40($a2)
    lw	$v0,12($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    swc1	$f0,44($a2)
    la	$t9,glTexCoord4iv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10df44:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10df50:
    lw	$v0,11476($a4)
    ori	$v0,$v0,0x8000
    sw	$v0,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lw	$v0,0($a5)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a6)
    lw	$at,4($a5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($a6)
    lw	$a1,8($a5)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a6)
    lw	$v1,12($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f0,12($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    li	$a1,1
    sw	$a1,11480($v1)
    b	.L0f10df44
    sw	$v0,11424($v1)
.end __igl_concave_TexCoord4iv

# Function: __igl_concave_TexCoord4fv
# Declared: Line 287 (Source lines: 287-287)
# Address: 0x0f10dfe4 - 0x0f10e0d4 (Size: 240 bytes, Frame: 192)
.globl __igl_concave_TexCoord4fv
.ent __igl_concave_TexCoord4fv
__igl_concave_TexCoord4fv:
    # Line 287
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,21092 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    move	$a5,$a0
    lw	$a4,0($a4)
    li	$a3,1
    addiu	$a6,$sp,0
    lw	$at,3164($a4)
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beq	$at,$a3,.L0f10e070
    move	$a2,$a4
    move	$a5,$a0
    lw	$a2,11392($a4)
    swc1	$f4,44($a2)
    swc1	$f5,40($a2)
    lwc1	$f3,0($a5)
    swc1	$f3,32($a2)
    lwc1	$f2,4($a5)
    swc1	$f2,36($a2)
    lwc1	$f1,8($a5)
    swc1	$f1,40($a2)
    lwc1	$f0,12($a5)
    sd	$ra,32($sp)
    swc1	$f0,44($a2)
    la	$t9,glTexCoord4fv
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f10e064:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e070:
    lw	$v0,11476($a4)
    ori	$v0,$v0,0x8000
    sw	$v0,11476($a4)
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    lwc1	$f3,0($a5)
    swc1	$f3,0($a6)
    lwc1	$f2,4($a5)
    swc1	$f2,4($a6)
    lwc1	$f1,8($a5)
    swc1	$f1,8($a6)
    lwc1	$f0,12($a5)
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    swc1	$f0,12($a6)
    la	$t9,putData
    addiu	$a1,$sp,0
    bal putData
    li	$a0,4
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    li	$a1,1
    sw	$a1,11480($v1)
    b	.L0f10e064
    sw	$v0,11424($v1)
.end __igl_concave_TexCoord4fv

# Function: __igl_concave_TexCoord4f
# Declared: Line 289 (Source lines: 290-297)
# Address: 0x0f10e0d4 - 0x0f10e118 (Size: 68 bytes, Frame: 192)
.globl __igl_concave_TexCoord4f
.ent __igl_concave_TexCoord4f
__igl_concave_TexCoord4f:
    # Line 290
    addiu	$sp,$sp,-64
    # Line 296
    addiu	$a0,$sp,0
    # Line 295
    swc1	$f15,12($sp)
    # Line 294
    swc1	$f14,8($sp)
    sd	$gp,24($sp)
    # Line 290
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,20852 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 296
    la	$t9,__igl_concave_TexCoord4fv
    # Line 293
    swc1	$f13,4($sp)
    sd	$ra,16($sp)
    # Line 296
    bal __igl_concave_TexCoord4fv
    # Line 292
    swc1	$f12,0($sp)
    # Line 297
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __igl_concave_TexCoord4f

# Function: gl_i_t2s
# Declared: Line 317 (Source lines: 317-317)
# Address: 0x0f10e118 - 0x0f10e154 (Size: 60 bytes, Frame: 32)
.globl gl_i_t2s
.ent gl_i_t2s
gl_i_t2s:
    # Line 317
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,20784
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,64($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t2s

# Function: gl_c_t2s
# Declared: Line 317 (Source lines: 317-317)
# Address: 0x0f10e154 - 0x0f10e1d4 (Size: 128 bytes, Frame: 192)
.globl gl_c_t2s
.ent gl_c_t2s
gl_c_t2s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,20724 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20128($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10e1b8
    move	$s8,$a0
.L0f10e17c:
    la	$a1,gl_n_t2s
    sw	$a1,0($sp)
    lh	$a0,0($s8)
    la	$t9,gl_compile
    sh	$a0,4($sp)
    addiu	$a1,$sp,0
    lh	$v1,2($s8)
    li	$a0,4
    bal gl_compile
    sh	$v1,6($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e1b8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23656
    li	$a1,1
    b	.L0f10e17c
    sw	$a1,-20128($gp)
.end gl_c_t2s

# Function: gl_n_t2s
# Declared: Line 317 (Source lines: 317-317)
# Address: 0x0f10e1d4 - 0x0f10e21c (Size: 72 bytes, Frame: 48)
.globl gl_n_t2s
.ent gl_n_t2s
gl_n_t2s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,20596
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,64($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t2s

# Function: gl_i_t2i
# Declared: Line 318 (Source lines: 318-318)
# Address: 0x0f10e21c - 0x0f10e258 (Size: 60 bytes, Frame: 32)
.globl gl_i_t2i
.ent gl_i_t2i
gl_i_t2i:
    # Line 318
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,20524
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,60($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t2i

# Function: gl_c_t2i
# Declared: Line 318 (Source lines: 318-318)
# Address: 0x0f10e258 - 0x0f10e2d8 (Size: 128 bytes, Frame: 192)
.globl gl_c_t2i
.ent gl_c_t2i
gl_c_t2i:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,20464 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20124($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10e2bc
    move	$s8,$a0
.L0f10e280:
    la	$a1,gl_n_t2i
    sw	$a1,0($sp)
    lw	$a0,0($s8)
    la	$t9,gl_compile
    sw	$a0,4($sp)
    addiu	$a1,$sp,0
    lw	$v1,4($s8)
    li	$a0,6
    bal gl_compile
    sw	$v1,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e2bc:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23640
    li	$a1,1
    b	.L0f10e280
    sw	$a1,-20124($gp)
.end gl_c_t2i

# Function: gl_n_t2i
# Declared: Line 318 (Source lines: 318-318)
# Address: 0x0f10e2d8 - 0x0f10e320 (Size: 72 bytes, Frame: 48)
.globl gl_n_t2i
.ent gl_n_t2i
gl_n_t2i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,20336
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,60($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t2i

# Function: gl_i_t2f
# Declared: Line 319 (Source lines: 319-319)
# Address: 0x0f10e320 - 0x0f10e35c (Size: 60 bytes, Frame: 32)
.globl gl_i_t2f
.ent gl_i_t2f
gl_i_t2f:
    # Line 319
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,20264
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,56($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t2f

# Function: gl_c_t2f
# Declared: Line 319 (Source lines: 319-319)
# Address: 0x0f10e35c - 0x0f10e3dc (Size: 128 bytes, Frame: 192)
.globl gl_c_t2f
.ent gl_c_t2f
gl_c_t2f:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,20204 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20120($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10e3c0
    move	$s8,$a0
.L0f10e384:
    la	$v1,gl_n_t2f
    sw	$v1,0($sp)
    lwc1	$f1,0($s8)
    addiu	$a1,$sp,0
    swc1	$f1,4($sp)
    la	$t9,gl_compile
    lwc1	$f0,4($s8)
    li	$a0,6
    bal gl_compile
    swc1	$f0,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e3c0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23624
    li	$a1,1
    b	.L0f10e384
    sw	$a1,-20120($gp)
.end gl_c_t2f

# Function: gl_n_t2f
# Declared: Line 319 (Source lines: 319-319)
# Address: 0x0f10e3dc - 0x0f10e424 (Size: 72 bytes, Frame: 48)
.globl gl_n_t2f
.ent gl_n_t2f
gl_n_t2f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,20076
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,56($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t2f

# Function: gl_i_t2d
# Declared: Line 320 (Source lines: 320-320)
# Address: 0x0f10e424 - 0x0f10e46c (Size: 72 bytes, Frame: 32)
.globl gl_i_t2d
.ent gl_i_t2d
gl_i_t2d:
    # Line 320
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,20004
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    lw	$t9,52($t9)
    cvt.s.d	$f13,$f13
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t2d

# Function: gl_c_t2d
# Declared: Line 320 (Source lines: 320-320)
# Address: 0x0f10e46c - 0x0f10e4f4 (Size: 136 bytes, Frame: 192)
.globl gl_c_t2d
.ent gl_c_t2d
gl_c_t2d:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,19932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20116($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10e4d8
    move	$s8,$a0
.L0f10e494:
    la	$v1,gl_n_t2d
    sw	$v1,0($sp)
    ldc1	$f1,0($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($sp)
    ldc1	$f0,8($s8)
    la	$t9,gl_compile
    cvt.s.d	$f0,$f0
    addiu	$a1,$sp,0
    li	$a0,6
    bal gl_compile
    swc1	$f0,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e4d8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23608
    li	$a1,1
    b	.L0f10e494
    sw	$a1,-20116($gp)
.end gl_c_t2d

# Function: gl_n_t2d
# Declared: Line 320 (Source lines: 320-320)
# Address: 0x0f10e4f4 - 0x0f10e544 (Size: 80 bytes, Frame: 48)
.globl gl_n_t2d
.ent gl_n_t2d
gl_n_t2d:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,19796
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lwc1	$f13,4($a0)
    lw	$t9,52($t9)
    lwc1	$f12,0($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t2d

# Function: gl_i_t3s
# Declared: Line 322 (Source lines: 322-322)
# Address: 0x0f10e544 - 0x0f10e580 (Size: 60 bytes, Frame: 32)
.globl gl_i_t3s
.ent gl_i_t3s
gl_i_t3s:
    # Line 322
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,19716
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,80($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t3s

# Function: gl_c_t3s
# Declared: Line 322 (Source lines: 322-322)
# Address: 0x0f10e580 - 0x0f10e608 (Size: 136 bytes, Frame: 192)
.globl gl_c_t3s
.ent gl_c_t3s
gl_c_t3s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,19656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20112($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10e5ec
    move	$s8,$a0
.L0f10e5a8:
    la	$a2,gl_n_t3s
    sw	$a2,0($sp)
    lh	$a1,0($s8)
    sh	$a1,4($sp)
    lh	$a0,2($s8)
    la	$t9,gl_compile
    sh	$a0,6($sp)
    addiu	$a1,$sp,0
    lh	$v1,4($s8)
    li	$a0,6
    bal gl_compile
    sh	$v1,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e5ec:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23592
    li	$a1,1
    b	.L0f10e5a8
    sw	$a1,-20112($gp)
.end gl_c_t3s

# Function: gl_n_t3s
# Declared: Line 322 (Source lines: 322-322)
# Address: 0x0f10e608 - 0x0f10e650 (Size: 72 bytes, Frame: 48)
.globl gl_n_t3s
.ent gl_n_t3s
gl_n_t3s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,19520
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,80($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t3s

# Function: gl_i_t3i
# Declared: Line 323 (Source lines: 323-323)
# Address: 0x0f10e650 - 0x0f10e68c (Size: 60 bytes, Frame: 32)
.globl gl_i_t3i
.ent gl_i_t3i
gl_i_t3i:
    # Line 323
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,19448
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,76($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t3i

# Function: gl_c_t3i
# Declared: Line 323 (Source lines: 323-323)
# Address: 0x0f10e68c - 0x0f10e714 (Size: 136 bytes, Frame: 192)
.globl gl_c_t3i
.ent gl_c_t3i
gl_c_t3i:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,19388 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20108($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10e6f8
    move	$s8,$a0
.L0f10e6b4:
    la	$a2,gl_n_t3i
    sw	$a2,0($sp)
    lw	$a1,0($s8)
    sw	$a1,4($sp)
    lw	$a0,4($s8)
    la	$t9,gl_compile
    sw	$a0,8($sp)
    addiu	$a1,$sp,0
    lw	$v1,8($s8)
    li	$a0,8
    bal gl_compile
    sw	$v1,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e6f8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23576
    li	$a1,1
    b	.L0f10e6b4
    sw	$a1,-20108($gp)
.end gl_c_t3i

# Function: gl_n_t3i
# Declared: Line 323 (Source lines: 323-323)
# Address: 0x0f10e714 - 0x0f10e75c (Size: 72 bytes, Frame: 48)
.globl gl_n_t3i
.ent gl_n_t3i
gl_n_t3i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,19252
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,76($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t3i

# Function: gl_i_t3f
# Declared: Line 324 (Source lines: 324-324)
# Address: 0x0f10e75c - 0x0f10e798 (Size: 60 bytes, Frame: 32)
.globl gl_i_t3f
.ent gl_i_t3f
gl_i_t3f:
    # Line 324
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,19180
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,72($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t3f

# Function: gl_c_t3f
# Declared: Line 324 (Source lines: 324-324)
# Address: 0x0f10e798 - 0x0f10e820 (Size: 136 bytes, Frame: 192)
.globl gl_c_t3f
.ent gl_c_t3f
gl_c_t3f:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,19120 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20104($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10e804
    move	$s8,$a0
.L0f10e7c0:
    la	$v1,gl_n_t3f
    sw	$v1,0($sp)
    lwc1	$f2,0($s8)
    swc1	$f2,4($sp)
    lwc1	$f1,4($s8)
    addiu	$a1,$sp,0
    swc1	$f1,8($sp)
    la	$t9,gl_compile
    lwc1	$f0,8($s8)
    li	$a0,8
    bal gl_compile
    swc1	$f0,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e804:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23560
    li	$a1,1
    b	.L0f10e7c0
    sw	$a1,-20104($gp)
.end gl_c_t3f

# Function: gl_n_t3f
# Declared: Line 324 (Source lines: 324-324)
# Address: 0x0f10e820 - 0x0f10e868 (Size: 72 bytes, Frame: 48)
.globl gl_n_t3f
.ent gl_n_t3f
gl_n_t3f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,18984
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,72($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t3f

# Function: gl_i_t3d
# Declared: Line 325 (Source lines: 325-325)
# Address: 0x0f10e868 - 0x0f10e8b8 (Size: 80 bytes, Frame: 32)
.globl gl_i_t3d
.ent gl_i_t3d
gl_i_t3d:
    # Line 325
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,18912
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    lw	$t9,0($t9)
    cvt.s.d	$f14,$f14
    ldc1	$f12,0($a0)
    lw	$t9,68($t9)
    cvt.s.d	$f13,$f13
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t3d

# Function: gl_c_t3d
# Declared: Line 325 (Source lines: 325-325)
# Address: 0x0f10e8b8 - 0x0f10e94c (Size: 148 bytes, Frame: 192)
.globl gl_c_t3d
.ent gl_c_t3d
gl_c_t3d:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,18832 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20100($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10e930
    move	$s8,$a0
.L0f10e8e0:
    la	$v1,gl_n_t3d
    sw	$v1,0($sp)
    ldc1	$f2,0($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    ldc1	$f0,16($s8)
    la	$t9,gl_compile
    cvt.s.d	$f0,$f0
    addiu	$a1,$sp,0
    li	$a0,8
    bal gl_compile
    swc1	$f0,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10e930:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23544
    li	$a1,1
    b	.L0f10e8e0
    sw	$a1,-20100($gp)
.end gl_c_t3d

# Function: gl_n_t3d
# Declared: Line 325 (Source lines: 325-325)
# Address: 0x0f10e94c - 0x0f10e9a0 (Size: 84 bytes, Frame: 48)
.globl gl_n_t3d
.ent gl_n_t3d
gl_n_t3d:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,18684
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lw	$t9,68($t9)
    lwc1	$f12,0($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t3d

# Function: gl_i_t4s
# Declared: Line 327 (Source lines: 327-327)
# Address: 0x0f10e9a0 - 0x0f10e9dc (Size: 60 bytes, Frame: 32)
.globl gl_i_t4s
.ent gl_i_t4s
gl_i_t4s:
    # Line 327
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,18600
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,96($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t4s

# Function: gl_c_t4s
# Declared: Line 327 (Source lines: 327-327)
# Address: 0x0f10e9dc - 0x0f10ea6c (Size: 144 bytes, Frame: 192)
.globl gl_c_t4s
.ent gl_c_t4s
gl_c_t4s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,18540 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20096($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10ea50
    move	$s8,$a0
.L0f10ea04:
    la	$a3,gl_n_t4s
    sw	$a3,0($sp)
    lh	$a2,0($s8)
    sh	$a2,4($sp)
    lh	$a1,2($s8)
    sh	$a1,6($sp)
    lh	$a0,4($s8)
    la	$t9,gl_compile
    sh	$a0,8($sp)
    addiu	$a1,$sp,0
    lh	$v1,6($s8)
    li	$a0,6
    bal gl_compile
    sh	$v1,10($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10ea50:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23528
    li	$a1,1
    b	.L0f10ea04
    sw	$a1,-20096($gp)
.end gl_c_t4s

# Function: gl_n_t4s
# Declared: Line 327 (Source lines: 327-327)
# Address: 0x0f10ea6c - 0x0f10eab4 (Size: 72 bytes, Frame: 48)
.globl gl_n_t4s
.ent gl_n_t4s
gl_n_t4s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,18396
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,96($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t4s

# Function: gl_i_t4i
# Declared: Line 328 (Source lines: 328-328)
# Address: 0x0f10eab4 - 0x0f10eaf0 (Size: 60 bytes, Frame: 32)
.globl gl_i_t4i
.ent gl_i_t4i
gl_i_t4i:
    # Line 328
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,18324
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,92($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t4i

# Function: gl_c_t4i
# Declared: Line 328 (Source lines: 328-328)
# Address: 0x0f10eaf0 - 0x0f10eb80 (Size: 144 bytes, Frame: 192)
.globl gl_c_t4i
.ent gl_c_t4i
gl_c_t4i:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,18264 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20092($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10eb64
    move	$s8,$a0
.L0f10eb18:
    la	$a3,gl_n_t4i
    sw	$a3,0($sp)
    lw	$a2,0($s8)
    sw	$a2,4($sp)
    lw	$a1,4($s8)
    sw	$a1,8($sp)
    lw	$a0,8($s8)
    la	$t9,gl_compile
    sw	$a0,12($sp)
    addiu	$a1,$sp,0
    lw	$v1,12($s8)
    li	$a0,10
    bal gl_compile
    sw	$v1,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10eb64:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23512
    li	$a1,1
    b	.L0f10eb18
    sw	$a1,-20092($gp)
.end gl_c_t4i

# Function: gl_n_t4i
# Declared: Line 328 (Source lines: 328-328)
# Address: 0x0f10eb80 - 0x0f10ebc8 (Size: 72 bytes, Frame: 48)
.globl gl_n_t4i
.ent gl_n_t4i
gl_n_t4i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,18120
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,92($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t4i

# Function: gl_i_t4f
# Declared: Line 329 (Source lines: 329-329)
# Address: 0x0f10ebc8 - 0x0f10ec04 (Size: 60 bytes, Frame: 32)
.globl gl_i_t4f
.ent gl_i_t4f
gl_i_t4f:
    # Line 329
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,18048
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,88($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t4f

# Function: gl_c_t4f
# Declared: Line 329 (Source lines: 329-329)
# Address: 0x0f10ec04 - 0x0f10ec94 (Size: 144 bytes, Frame: 192)
.globl gl_c_t4f
.ent gl_c_t4f
gl_c_t4f:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,17988 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20088($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10ec78
    move	$s8,$a0
.L0f10ec2c:
    la	$v1,gl_n_t4f
    sw	$v1,0($sp)
    lwc1	$f3,0($s8)
    swc1	$f3,4($sp)
    lwc1	$f2,4($s8)
    swc1	$f2,8($sp)
    lwc1	$f1,8($s8)
    addiu	$a1,$sp,0
    swc1	$f1,12($sp)
    la	$t9,gl_compile
    lwc1	$f0,12($s8)
    li	$a0,10
    bal gl_compile
    swc1	$f0,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10ec78:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23496
    li	$a1,1
    b	.L0f10ec2c
    sw	$a1,-20088($gp)
.end gl_c_t4f

# Function: gl_n_t4f
# Declared: Line 329 (Source lines: 329-329)
# Address: 0x0f10ec94 - 0x0f10ecdc (Size: 72 bytes, Frame: 48)
.globl gl_n_t4f
.ent gl_n_t4f
gl_n_t4f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,17844
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,88($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t4f

# Function: gl_i_t4d
# Declared: Line 330 (Source lines: 330-330)
# Address: 0x0f10ecdc - 0x0f10ed34 (Size: 88 bytes, Frame: 32)
.globl gl_i_t4d
.ent gl_i_t4d
gl_i_t4d:
    # Line 330
    ldc1	$f14,16($a0)
    ldc1	$f15,24($a0)
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,17772
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    cvt.s.d	$f15,$f15
    ldc1	$f13,8($a0)
    lw	$t9,0($t9)
    cvt.s.d	$f14,$f14
    ldc1	$f12,0($a0)
    lw	$t9,84($t9)
    cvt.s.d	$f13,$f13
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_t4d

# Function: gl_c_t4d
# Declared: Line 330 (Source lines: 330-330)
# Address: 0x0f10ed34 - 0x0f10edd4 (Size: 160 bytes, Frame: 192)
.globl gl_c_t4d
.ent gl_c_t4d
gl_c_t4d:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,17684 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20084($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10edb8
    move	$s8,$a0
.L0f10ed5c:
    la	$v1,gl_n_t4d
    sw	$v1,0($sp)
    ldc1	$f3,0($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($sp)
    ldc1	$f2,8($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($sp)
    ldc1	$f1,16($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($sp)
    ldc1	$f0,24($s8)
    la	$t9,gl_compile
    cvt.s.d	$f0,$f0
    addiu	$a1,$sp,0
    li	$a0,10
    bal gl_compile
    swc1	$f0,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10edb8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23480
    li	$a1,1
    b	.L0f10ed5c
    sw	$a1,-20084($gp)
.end gl_c_t4d

# Function: gl_n_t4d
# Declared: Line 330 (Source lines: 330-330)
# Address: 0x0f10edd4 - 0x0f10ee2c (Size: 88 bytes, Frame: 48)
.globl gl_n_t4d
.ent gl_n_t4d
gl_n_t4d:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,17524
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lwc1	$f15,12($a0)
    lw	$t9,0($t9)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lw	$t9,84($t9)
    lwc1	$f12,0($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_t4d

# Function: __igloo_concave_Color3sv
# Declared: Line 364 (Source lines: 364-364)
# Address: 0x0f10ee2c - 0x0f10efac (Size: 384 bytes, Frame: 192)
.globl __igloo_concave_Color3sv
.ent __igloo_concave_Color3sv
__igloo_concave_Color3sv:
    # Line 364
    li	$a5,1
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    lw	$at,3164($a0)
    move	$a0,$a1
    addiu	$a3,$sp,0
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,17436 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    beq	$at,$a5,.L0f10eed8
    lwc1	$f4,_lit_3f800000
    lw	$a3,11392($s0)
    lwc1	$f5,_lit_3b808081
    swc1	$f4,12($a3)
    lh	$at,0($a0)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    swc1	$f2,0($a3)
    lh	$a2,2($a0)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    swc1	$f1,4($a3)
    lh	$v1,4($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    sd	$ra,32($sp)
    swc1	$f0,8($a3)
    lw	$t9,104($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10eecc:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10eed8:
    addiu	$a4,$a1,6
    lwc1	$f5,_lit_3b808081
    lw	$v0,11476($s0)
    sw	$a5,3168($s0)
    sw	$a5,11480($s0)
    ori	$v0,$v0,0x1000
    sw	$v0,11476($s0)
    swc1	$f4,12($sp)
    move	$a0,$a1
    lh	$v1,0($a0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    c.le.s	$f4,$f3
    addiu	$a0,$a0,2
    bc1f	.L0f10ef24
    swc1	$f3,0($a3)
    swc1	$f4,0($a3)
.L0f10ef24:
    beq	$a0,$a4,.L0f10ef8c
    la	$t9,putData
    lh	$a2,0($a0)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    c.le.s	$f4,$f0
    addiu	$a0,$a0,2
    bc1f	.L0f10ef54
    swc1	$f0,4($a3)
    swc1	$f4,4($a3)
.L0f10ef54:
    beq	$a0,$a4,.L0f10ef8c
    la	$t9,putData
    lh	$at,0($a0)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    c.le.s	$f4,$f1
    nop
    bc1f	.L0f10ef88
    swc1	$f1,8($a3)
    sd	$ra,32($sp)
    swc1	$f4,8($a3)
.L0f10ef88:
    la	$t9,putData
.L0f10ef8c:
    addiu	$a1,$sp,0
    sd	$ra,32($sp)
    bal putData
    li	$a0,4
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10eecc
    ld	$ra,32($sp)
.end __igloo_concave_Color3sv

# Function: __igloo_concave_Color3iv
# Declared: Line 365 (Source lines: 365-365)
# Address: 0x0f10efac - 0x0f10f12c (Size: 384 bytes, Frame: 192)
.globl __igloo_concave_Color3iv
.ent __igloo_concave_Color3iv
__igloo_concave_Color3iv:
    # Line 365
    li	$a5,1
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    lw	$at,3164($a0)
    move	$a0,$a1
    addiu	$a3,$sp,0
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,17052 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    beq	$at,$a5,.L0f10f058
    lwc1	$f4,_lit_3f800000
    lw	$a3,11392($s0)
    lwc1	$f5,_lit_3b808081
    swc1	$f4,12($a3)
    lw	$at,0($a0)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    swc1	$f2,0($a3)
    lw	$a2,4($a0)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    swc1	$f1,4($a3)
    lw	$v1,8($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    sd	$ra,32($sp)
    swc1	$f0,8($a3)
    lw	$t9,108($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10f04c:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10f058:
    addiu	$a4,$a1,12
    lwc1	$f5,_lit_3b808081
    lw	$v0,11476($s0)
    sw	$a5,3168($s0)
    sw	$a5,11480($s0)
    ori	$v0,$v0,0x1000
    sw	$v0,11476($s0)
    swc1	$f4,12($sp)
    move	$a0,$a1
    lw	$v1,0($a0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    c.le.s	$f4,$f3
    addiu	$a0,$a0,4
    bc1f	.L0f10f0a4
    swc1	$f3,0($a3)
    swc1	$f4,0($a3)
.L0f10f0a4:
    beq	$a0,$a4,.L0f10f10c
    la	$t9,putData
    lw	$a2,0($a0)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    c.le.s	$f4,$f0
    addiu	$a0,$a0,4
    bc1f	.L0f10f0d4
    swc1	$f0,4($a3)
    swc1	$f4,4($a3)
.L0f10f0d4:
    beq	$a0,$a4,.L0f10f10c
    la	$t9,putData
    lw	$at,0($a0)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    c.le.s	$f4,$f1
    nop
    bc1f	.L0f10f108
    swc1	$f1,8($a3)
    sd	$ra,32($sp)
    swc1	$f4,8($a3)
.L0f10f108:
    la	$t9,putData
.L0f10f10c:
    addiu	$a1,$sp,0
    sd	$ra,32($sp)
    bal putData
    li	$a0,4
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10f04c
    ld	$ra,32($sp)
.end __igloo_concave_Color3iv

# Function: __igloo_concave_Color3fv
# Declared: Line 366 (Source lines: 366-366)
# Address: 0x0f10f12c - 0x0f10f248 (Size: 284 bytes, Frame: 192)
.globl __igloo_concave_Color3fv
.ent __igloo_concave_Color3fv
__igloo_concave_Color3fv:
    # Line 366
    li	$a5,1
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    lw	$at,3164($a0)
    move	$a0,$a1
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,16668 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    beq	$at,$a5,.L0f10f1a4
    lwc1	$f4,_lit_3f800000
    move	$a0,$a1
    lw	$a3,11392($s0)
    swc1	$f4,12($a3)
    lwc1	$f2,0($a0)
    swc1	$f2,0($a3)
    lwc1	$f1,4($a0)
    swc1	$f1,4($a3)
    lwc1	$f0,8($a0)
    sd	$ra,32($sp)
    swc1	$f0,8($a3)
    lw	$t9,100($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10f198:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10f1a4:
    lw	$v1,11476($s0)
    sw	$a5,3168($s0)
    sw	$a5,11480($s0)
    ori	$v1,$v1,0x1000
    sw	$v1,11476($s0)
    swc1	$f4,12($sp)
    addiu	$a4,$a1,12
    lwc1	$f3,0($a0)
    addiu	$a3,$sp,0
    addiu	$a0,$a0,4
    c.le.s	$f4,$f3
    nop
    bc1f	.L0f10f1e0
    swc1	$f3,0($a3)
    swc1	$f4,0($a3)
.L0f10f1e0:
    beq	$a0,$a4,.L0f10f228
    la	$t9,putData
    lwc1	$f0,0($a0)
    c.le.s	$f4,$f0
    addiu	$a0,$a0,4
    bc1f	.L0f10f200
    swc1	$f0,4($a3)
    swc1	$f4,4($a3)
.L0f10f200:
    beq	$a0,$a4,.L0f10f228
    la	$t9,putData
    lwc1	$f1,0($a0)
    c.le.s	$f4,$f1
    nop
    bc1f	.L0f10f224
    swc1	$f1,8($a3)
    sd	$ra,32($sp)
    swc1	$f4,8($a3)
.L0f10f224:
    la	$t9,putData
.L0f10f228:
    addiu	$a1,$sp,0
    sd	$ra,32($sp)
    bal putData
    li	$a0,4
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10f198
    ld	$ra,32($sp)
.end __igloo_concave_Color3fv

# Function: __igloo_concave_Color4sv
# Declared: Line 368 (Source lines: 368-368)
# Address: 0x0f10f248 - 0x0f10f3f4 (Size: 428 bytes, Frame: 192)
.globl __igloo_concave_Color4sv
.ent __igloo_concave_Color4sv
__igloo_concave_Color4sv:
    # Line 368
    li	$a4,1
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    lw	$at,3164($a0)
    move	$a0,$a1
    addiu	$a3,$sp,0
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,16384 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    beq	$at,$a4,.L0f10f30c
    lwc1	$f4,_lit_3f800000
    lw	$a3,11392($s0)
    lwc1	$f5,_lit_3b808081
    swc1	$f4,12($a3)
    lh	$v0,0($a0)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    swc1	$f3,0($a3)
    lh	$at,2($a0)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    swc1	$f2,4($a3)
    lh	$a2,4($a0)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($a3)
    lh	$v1,6($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    sd	$ra,32($sp)
    swc1	$f0,12($a3)
    lw	$t9,116($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10f300:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10f30c:
    lwc1	$f5,_lit_3b808081
    lw	$v1,11476($s0)
    sw	$a4,11480($s0)
    sw	$a4,3168($s0)
    ori	$v1,$v1,0x1000
    sw	$v1,11476($s0)
    swc1	$f4,12($sp)
    move	$a0,$a1
    lh	$a2,0($a0)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    c.le.s	$f4,$f0
    nop
    bc1f	.L0f10f354
    swc1	$f0,0($a3)
    swc1	$f4,0($a3)
.L0f10f354:
    lh	$at,2($a0)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    c.le.s	$f4,$f1
    nop
    bc1f	.L0f10f37c
    swc1	$f1,4($a3)
    swc1	$f4,4($a3)
.L0f10f37c:
    lh	$v0,4($a0)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    c.le.s	$f4,$f2
    nop
    bc1f	.L0f10f3a4
    swc1	$f2,8($a3)
    swc1	$f4,8($a3)
.L0f10f3a4:
    lh	$v1,6($a0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    c.le.s	$f4,$f3
    nop
    bc1f	.L0f10f3d0
    swc1	$f3,12($a3)
    sd	$ra,32($sp)
    swc1	$f4,12($a3)
.L0f10f3d0:
    la	$t9,putData
    addiu	$a1,$sp,0
    sd	$ra,32($sp)
    bal putData
    li	$a0,4
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10f300
    ld	$ra,32($sp)
.end __igloo_concave_Color4sv

# Function: __igloo_concave_Color4iv
# Declared: Line 369 (Source lines: 369-369)
# Address: 0x0f10f3f4 - 0x0f10f5a0 (Size: 428 bytes, Frame: 192)
.globl __igloo_concave_Color4iv
.ent __igloo_concave_Color4iv
__igloo_concave_Color4iv:
    # Line 369
    li	$a4,1
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    lw	$at,3164($a0)
    move	$a0,$a1
    addiu	$a3,$sp,0
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,15956 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    beq	$at,$a4,.L0f10f4b8
    lwc1	$f4,_lit_3f800000
    lw	$a3,11392($s0)
    lwc1	$f5,_lit_3b808081
    swc1	$f4,12($a3)
    lw	$v0,0($a0)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    swc1	$f3,0($a3)
    lw	$at,4($a0)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    swc1	$f2,4($a3)
    lw	$a2,8($a0)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($a3)
    lw	$v1,12($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    sd	$ra,32($sp)
    swc1	$f0,12($a3)
    lw	$t9,120($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10f4ac:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10f4b8:
    lwc1	$f5,_lit_3b808081
    lw	$v1,11476($s0)
    sw	$a4,11480($s0)
    sw	$a4,3168($s0)
    ori	$v1,$v1,0x1000
    sw	$v1,11476($s0)
    swc1	$f4,12($sp)
    move	$a0,$a1
    lw	$a2,0($a0)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    c.le.s	$f4,$f0
    nop
    bc1f	.L0f10f500
    swc1	$f0,0($a3)
    swc1	$f4,0($a3)
.L0f10f500:
    lw	$at,4($a0)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    c.le.s	$f4,$f1
    nop
    bc1f	.L0f10f528
    swc1	$f1,4($a3)
    swc1	$f4,4($a3)
.L0f10f528:
    lw	$v0,8($a0)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    c.le.s	$f4,$f2
    nop
    bc1f	.L0f10f550
    swc1	$f2,8($a3)
    swc1	$f4,8($a3)
.L0f10f550:
    lw	$v1,12($a0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    c.le.s	$f4,$f3
    nop
    bc1f	.L0f10f57c
    swc1	$f3,12($a3)
    sd	$ra,32($sp)
    swc1	$f4,12($a3)
.L0f10f57c:
    la	$t9,putData
    addiu	$a1,$sp,0
    sd	$ra,32($sp)
    bal putData
    li	$a0,4
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10f4ac
    ld	$ra,32($sp)
.end __igloo_concave_Color4iv

# Function: __igloo_concave_Color4fv
# Declared: Line 370 (Source lines: 370-370)
# Address: 0x0f10f5a0 - 0x0f10f6c4 (Size: 292 bytes, Frame: 192)
.globl __igloo_concave_Color4fv
.ent __igloo_concave_Color4fv
__igloo_concave_Color4fv:
    # Line 370
    li	$a4,1
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    addiu	$a3,$sp,0
    sd	$gp,24($sp)
    lw	$at,3164($a0)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,15528 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    beq	$at,$a4,.L0f10f620
    lwc1	$f4,_lit_3f800000
    move	$a0,$a1
    lw	$a3,11392($s0)
    swc1	$f4,12($a3)
    lwc1	$f3,0($a0)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a3)
    lwc1	$f0,12($a0)
    sd	$ra,32($sp)
    swc1	$f0,12($a3)
    lw	$t9,112($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10f614:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10f620:
    lw	$v1,11476($s0)
    sw	$a4,3168($s0)
    sw	$a4,11480($s0)
    ori	$v1,$v1,0x1000
    sw	$v1,11476($s0)
    swc1	$f4,12($sp)
    move	$a0,$a1
    lwc1	$f0,0($a0)
    c.le.s	$f4,$f0
    nop
    bc1f	.L0f10f654
    swc1	$f0,0($a3)
    swc1	$f4,0($a3)
.L0f10f654:
    lwc1	$f1,4($a0)
    c.le.s	$f4,$f1
    nop
    bc1f	.L0f10f66c
    swc1	$f1,4($a3)
    swc1	$f4,4($a3)
.L0f10f66c:
    lwc1	$f2,8($a0)
    c.le.s	$f4,$f2
    nop
    bc1f	.L0f10f684
    swc1	$f2,8($a3)
    swc1	$f4,8($a3)
.L0f10f684:
    lwc1	$f3,12($a0)
    c.le.s	$f4,$f3
    nop
    bc1f	.L0f10f6a0
    swc1	$f3,12($a3)
    sd	$ra,32($sp)
    swc1	$f4,12($a3)
.L0f10f6a0:
    la	$t9,putData
    addiu	$a1,$sp,0
    sd	$ra,32($sp)
    bal putData
    li	$a0,4
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10f614
    ld	$ra,32($sp)
.end __igloo_concave_Color4fv

# Function: __igloo_concave_cpack
# Declared: Line 372 (Source lines: 373-393)
# Address: 0x0f10f6c4 - 0x0f10f7d8 (Size: 276 bytes, Frame: 192)
.globl __igloo_concave_cpack
.ent __igloo_concave_cpack
__igloo_concave_cpack:
    # Line 373
    andi	$a2,$a1,0xff
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f7
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    cvt.s.l	$f7,$f7
    lui	$a3,0xfff2
    addiu	$a3,$a3,15236
    addu	$gp,$t9,$a3
    lwc1	$f0,_lit_3b808081
    mul.s	$f7,$f7,$f0
    srl	$v1,$a1,0x10
    andi	$v1,$v1,0xff
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    sd	$s0,16($sp)
    srl	$s0,$a1,0x18
    cvt.s.l	$f5,$f5
    dsll32	$s0,$s0,0x0
    dsrl32	$s0,$s0,0x0
    dmtc1	$s0,$f6
    srl	$v0,$a1,0x8
    andi	$v0,$v0,0xff
    cvt.s.l	$f6,$f6
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f4
    nop
    cvt.s.l	$f4,$f4
    sd	$ra,32($sp)
    mul.s	$f6,$f6,$f0
    lw	$at,3164($a0)
    li	$a3,1
    mul.s	$f5,$f5,$f0
    move	$s0,$a0
    beq	$at,$a3,.L0f10f794
    mul.s	$f4,$f4,$f0
    # Line 385
    lw	$t8,11392($s0)
    # Line 389
    swc1	$f6,12($t8)
    # Line 388
    swc1	$f5,8($t8)
    # Line 387
    swc1	$f4,4($t8)
    # Line 386
    swc1	$f7,0($t8)
    # Line 391
    lw	$t9,128($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10f788:
    ld	$gp,24($sp)
    # Line 393
    jr	$ra
    addiu	$sp,$sp,64
.L0f10f794:
    # Line 383
    addiu	$a1,$sp,0
    li	$a0,4
    # Line 378
    sw	$a3,11480($s0)
    # Line 377
    lw	$ra,11476($s0)
    # Line 376
    sw	$a3,3168($s0)
    # Line 383
    la	$t9,putData
    # Line 377
    ori	$ra,$ra,0x1000
    sw	$ra,11476($s0)
    # Line 382
    swc1	$f6,12($sp)
    # Line 381
    swc1	$f5,8($sp)
    # Line 380
    swc1	$f4,4($sp)
    # Line 383
    bal putData
    # Line 379
    swc1	$f7,0($sp)
    # Line 383
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10f788
    ld	$ra,32($sp)
.end __igloo_concave_cpack

# Function: __igloo_concave_rgbcolor
# Declared: Line 395 (Source lines: 396-417)
# Address: 0x0f10f7d8 - 0x0f10f968 (Size: 400 bytes, Frame: 208)
.globl __igloo_concave_rgbcolor
.ent __igloo_concave_rgbcolor
__igloo_concave_rgbcolor:
    # Line 396
    li	$a5,1
    addiu	$sp,$sp,-80
    li	$a7,255
    li	$a6,255
    li	$t0,255
    slt	$t0,$t0,$a3
    slt	$a6,$a6,$a2
    slt	$a7,$a7,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lw	$at,3164($a0)
    lui	$v0,0xfff2
    addiu	$v0,$v0,14960
    beq	$at,$a5,.L0f10f8b8
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 410
    lwc1	$f4,_lit_3f800000
    beqz	$a7,.L0f10f86c
    lw	$a5,11392($s0)
    # Line 411
    mov.s	$f5,$f4
.L0f10f828:
    beqz	$a6,.L0f10f884
    swc1	$f5,0($a5)
    # Line 412
    mov.s	$f5,$f4
.L0f10f834:
    beqz	$t0,.L0f10f89c
    swc1	$f5,4($a5)
    sd	$ra,32($sp)
    # Line 413
    mov.s	$f5,$f4
.L0f10f844:
    # Line 414
    swc1	$f4,12($a5)
    # Line 413
    swc1	$f5,8($a5)
    # Line 415
    lw	$t9,124($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0f10f860:
    ld	$gp,24($sp)
    # Line 417
    jr	$ra
    addiu	$sp,$sp,80
.L0f10f86c:
    # Line 411
    lwc1	$f0,_lit_437f0000
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    b	.L0f10f828
    div.s	$f5,$f5,$f0
.L0f10f884:
    # Line 412
    lwc1	$f0,_lit_437f0000
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    b	.L0f10f834
    div.s	$f5,$f5,$f0
.L0f10f89c:
    # Line 413
    lwc1	$f0,_lit_437f0000
    mtc1	$a3,$f5
    nop
    cvt.s.w	$f5,$f5
    sd	$ra,32($sp)
    b	.L0f10f844
    div.s	$f5,$f5,$f0
.L0f10f8b8:
    # Line 402
    sw	$a5,11480($s0)
    lwc1	$f4,_lit_3f800000
    # Line 401
    lw	$at,11476($s0)
    # Line 400
    sw	$a5,3168($s0)
    # Line 401
    ori	$at,$at,0x1000
    # Line 402
    beqz	$a7,.L0f10f91c
    # Line 401
    sw	$at,11476($s0)
    # Line 404
    mov.s	$f5,$f4
.L0f10f8d8:
    beqz	$a6,.L0f10f934
    swc1	$f5,0($sp)
    # Line 405
    mov.s	$f5,$f4
.L0f10f8e4:
    beqz	$t0,.L0f10f94c
    swc1	$f5,4($sp)
    sd	$ra,32($sp)
    # Line 406
    mov.s	$f5,$f4
.L0f10f8f4:
    # Line 408
    addiu	$a1,$sp,0
    la	$t9,putData
    li	$a0,4
    # Line 407
    swc1	$f4,12($sp)
    # Line 408
    bal putData
    # Line 406
    swc1	$f5,8($sp)
    # Line 408
    sw	$v0,11412($s0)
    ld	$s0,16($sp)
    b	.L0f10f860
    ld	$ra,32($sp)
.L0f10f91c:
    # Line 404
    lwc1	$f0,_lit_437f0000
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    b	.L0f10f8d8
    div.s	$f5,$f5,$f0
.L0f10f934:
    # Line 405
    lwc1	$f0,_lit_437f0000
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    b	.L0f10f8e4
    div.s	$f5,$f5,$f0
.L0f10f94c:
    # Line 406
    lwc1	$f0,_lit_437f0000
    mtc1	$a3,$f5
    nop
    cvt.s.w	$f5,$f5
    sd	$ra,32($sp)
    b	.L0f10f8f4
    div.s	$f5,$f5,$f0
.end __igloo_concave_rgbcolor

# Function: __igloo_concave_indexf
# Declared: Line 420 (Source lines: 421-432)
# Address: 0x0f10f968 - 0x0f10f9fc (Size: 148 bytes, Frame: 48)
.globl __igloo_concave_indexf
.ent __igloo_concave_indexf
__igloo_concave_indexf:
    # Line 421
    mov.s	$f4,$f13
    li	$a3,1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    swc1	$f13,40($sp)
    sd	$gp,8($sp)
    lw	$at,3164($a0)
    lui	$v0,0xfff2
    addiu	$v0,$v0,14560
    beq	$at,$a3,.L0f10f9c8
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 429
    lw	$v1,11392($s0)
    swc1	$f4,16($v1)
    # Line 430
    lw	$t9,136($s0)
    move	$a0,$s0
    jalr	$t9
    lwc1	$f13,40($sp)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
.L0f10f9bc:
    ld	$gp,8($sp)
    # Line 432
    jr	$ra
    addiu	$sp,$sp,48
.L0f10f9c8:
    # Line 426
    addiu	$a1,$sp,40
    li	$a0,1
    # Line 425
    sw	$a3,11480($s0)
    # Line 424
    lw	$a2,11476($s0)
    # Line 426
    la	$t9,putData
    # Line 423
    sw	$a3,3168($s0)
    # Line 424
    ori	$a2,$a2,0x2000
    # Line 426
    bal putData
    # Line 424
    sw	$a2,11476($s0)
    # Line 426
    sw	$v0,11416($s0)
    ld	$s0,0($sp)
    b	.L0f10f9bc
    ld	$ra,16($sp)
.end __igloo_concave_indexf

# Function: __igloo_concave_index
# Declared: Line 434 (Source lines: 435-437)
# Address: 0x0f10f9fc - 0x0f10fa34 (Size: 56 bytes, Frame: 32)
.globl __igloo_concave_index
.ent __igloo_concave_index
__igloo_concave_index:
    # Line 435
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,14412 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 436
    la	$t9,__igloo_concave_indexf
    mtc1	$a1,$f13
    sd	$ra,0($sp)
    bal __igloo_concave_indexf
    cvt.s.w	$f13,$f13
    # Line 437
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __igloo_concave_index

# Function: gl_i_c3s
# Declared: Line 448 (Source lines: 448-448)
# Address: 0x0f10fa34 - 0x0f10fa74 (Size: 64 bytes, Frame: 32)
.globl gl_i_c3s
.ent gl_i_c3s
gl_i_c3s:
    # Line 448
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,14356 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,144($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_c3s

# Function: gl_c_c3s
# Declared: Line 448 (Source lines: 448-448)
# Address: 0x0f10fa74 - 0x0f10fafc (Size: 136 bytes, Frame: 192)
.globl gl_c_c3s
.ent gl_c_c3s
gl_c_c3s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,14292 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20080($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10fae0
    move	$s8,$a0
.L0f10fa9c:
    la	$a2,gl_n_c3s
    sw	$a2,0($sp)
    lh	$a1,0($s8)
    sh	$a1,4($sp)
    lh	$a0,2($s8)
    la	$t9,gl_compile
    sh	$a0,6($sp)
    addiu	$a1,$sp,0
    lh	$v1,4($s8)
    li	$a0,6
    bal gl_compile
    sh	$v1,8($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10fae0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23464
    li	$a1,1
    b	.L0f10fa9c
    sw	$a1,-20080($gp)
.end gl_c_c3s

# Function: gl_n_c3s
# Declared: Line 448 (Source lines: 448-448)
# Address: 0x0f10fafc - 0x0f10fb48 (Size: 76 bytes, Frame: 48)
.globl gl_n_c3s
.ent gl_n_c3s
gl_n_c3s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,14156 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,144($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_c3s

# Function: gl_i_c3i
# Declared: Line 449 (Source lines: 449-449)
# Address: 0x0f10fb48 - 0x0f10fb88 (Size: 64 bytes, Frame: 32)
.globl gl_i_c3i
.ent gl_i_c3i
gl_i_c3i:
    # Line 449
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,14080 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,148($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_c3i

# Function: gl_c_c3i
# Declared: Line 449 (Source lines: 449-449)
# Address: 0x0f10fb88 - 0x0f10fc10 (Size: 136 bytes, Frame: 192)
.globl gl_c_c3i
.ent gl_c_c3i
gl_c_c3i:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,14016 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20076($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10fbf4
    move	$s8,$a0
.L0f10fbb0:
    la	$a2,gl_n_c3i
    sw	$a2,0($sp)
    lw	$a1,0($s8)
    sw	$a1,4($sp)
    lw	$a0,4($s8)
    la	$t9,gl_compile
    sw	$a0,8($sp)
    addiu	$a1,$sp,0
    lw	$v1,8($s8)
    li	$a0,8
    bal gl_compile
    sw	$v1,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10fbf4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23448
    li	$a1,1
    b	.L0f10fbb0
    sw	$a1,-20076($gp)
.end gl_c_c3i

# Function: gl_n_c3i
# Declared: Line 449 (Source lines: 449-449)
# Address: 0x0f10fc10 - 0x0f10fc5c (Size: 76 bytes, Frame: 48)
.globl gl_n_c3i
.ent gl_n_c3i
gl_n_c3i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13880 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,148($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_c3i

# Function: gl_i_c3f
# Declared: Line 450 (Source lines: 450-450)
# Address: 0x0f10fc5c - 0x0f10fc9c (Size: 64 bytes, Frame: 32)
.globl gl_i_c3f
.ent gl_i_c3f
gl_i_c3f:
    # Line 450
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13804 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,140($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_c3f

# Function: gl_c_c3f
# Declared: Line 450 (Source lines: 450-450)
# Address: 0x0f10fc9c - 0x0f10fd24 (Size: 136 bytes, Frame: 192)
.globl gl_c_c3f
.ent gl_c_c3f
gl_c_c3f:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13740 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20072($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10fd08
    move	$s8,$a0
.L0f10fcc4:
    la	$v1,gl_n_c3f
    sw	$v1,0($sp)
    lwc1	$f2,0($s8)
    swc1	$f2,4($sp)
    lwc1	$f1,4($s8)
    addiu	$a1,$sp,0
    swc1	$f1,8($sp)
    la	$t9,gl_compile
    lwc1	$f0,8($s8)
    li	$a0,8
    bal gl_compile
    swc1	$f0,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10fd08:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23432
    li	$a1,1
    b	.L0f10fcc4
    sw	$a1,-20072($gp)
.end gl_c_c3f

# Function: gl_n_c3f
# Declared: Line 450 (Source lines: 450-450)
# Address: 0x0f10fd24 - 0x0f10fd70 (Size: 76 bytes, Frame: 48)
.globl gl_n_c3f
.ent gl_n_c3f
gl_n_c3f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13604 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,140($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_c3f

# Function: gl_i_c4s
# Declared: Line 452 (Source lines: 452-452)
# Address: 0x0f10fd70 - 0x0f10fdb0 (Size: 64 bytes, Frame: 32)
.globl gl_i_c4s
.ent gl_i_c4s
gl_i_c4s:
    # Line 452
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13528 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,156($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_c4s

# Function: gl_c_c4s
# Declared: Line 452 (Source lines: 452-452)
# Address: 0x0f10fdb0 - 0x0f10fe40 (Size: 144 bytes, Frame: 192)
.globl gl_c_c4s
.ent gl_c_c4s
gl_c_c4s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13464 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20068($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10fe24
    move	$s8,$a0
.L0f10fdd8:
    la	$a3,gl_n_c4s
    sw	$a3,0($sp)
    lh	$a2,0($s8)
    sh	$a2,4($sp)
    lh	$a1,2($s8)
    sh	$a1,6($sp)
    lh	$a0,4($s8)
    la	$t9,gl_compile
    sh	$a0,8($sp)
    addiu	$a1,$sp,0
    lh	$v1,6($s8)
    li	$a0,6
    bal gl_compile
    sh	$v1,10($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10fe24:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23416
    li	$a1,1
    b	.L0f10fdd8
    sw	$a1,-20068($gp)
.end gl_c_c4s

# Function: gl_n_c4s
# Declared: Line 452 (Source lines: 452-452)
# Address: 0x0f10fe40 - 0x0f10fe8c (Size: 76 bytes, Frame: 48)
.globl gl_n_c4s
.ent gl_n_c4s
gl_n_c4s:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13320 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,156($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_c4s

# Function: gl_i_c4i
# Declared: Line 453 (Source lines: 453-453)
# Address: 0x0f10fe8c - 0x0f10fecc (Size: 64 bytes, Frame: 32)
.globl gl_i_c4i
.ent gl_i_c4i
gl_i_c4i:
    # Line 453
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13244 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,160($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_c4i

# Function: gl_c_c4i
# Declared: Line 453 (Source lines: 453-453)
# Address: 0x0f10fecc - 0x0f10ff5c (Size: 144 bytes, Frame: 192)
.globl gl_c_c4i
.ent gl_c_c4i
gl_c_c4i:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13180 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20064($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10ff40
    move	$s8,$a0
.L0f10fef4:
    la	$a3,gl_n_c4i
    sw	$a3,0($sp)
    lw	$a2,0($s8)
    sw	$a2,4($sp)
    lw	$a1,4($s8)
    sw	$a1,8($sp)
    lw	$a0,8($s8)
    la	$t9,gl_compile
    sw	$a0,12($sp)
    addiu	$a1,$sp,0
    lw	$v1,12($s8)
    li	$a0,10
    bal gl_compile
    sw	$v1,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10ff40:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23400
    li	$a1,1
    b	.L0f10fef4
    sw	$a1,-20064($gp)
.end gl_c_c4i

# Function: gl_n_c4i
# Declared: Line 453 (Source lines: 453-453)
# Address: 0x0f10ff5c - 0x0f10ffa8 (Size: 76 bytes, Frame: 48)
.globl gl_n_c4i
.ent gl_n_c4i
gl_n_c4i:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,13036 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,160($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_c4i

# Function: gl_i_c4f
# Declared: Line 454 (Source lines: 454-454)
# Address: 0x0f10ffa8 - 0x0f10ffe8 (Size: 64 bytes, Frame: 32)
.globl gl_i_c4f
.ent gl_i_c4f
gl_i_c4f:
    # Line 454
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,12960 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,152($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_c4f

# Function: gl_c_c4f
# Declared: Line 454 (Source lines: 454-454)
# Address: 0x0f10ffe8 - 0x0f110078 (Size: 144 bytes, Frame: 192)
.globl gl_c_c4f
.ent gl_c_c4f
gl_c_c4f:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,12896 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20060($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f11005c
    move	$s8,$a0
.L0f110010:
    la	$v1,gl_n_c4f
    sw	$v1,0($sp)
    lwc1	$f3,0($s8)
    swc1	$f3,4($sp)
    lwc1	$f2,4($s8)
    swc1	$f2,8($sp)
    lwc1	$f1,8($s8)
    addiu	$a1,$sp,0
    swc1	$f1,12($sp)
    la	$t9,gl_compile
    lwc1	$f0,12($s8)
    li	$a0,10
    bal gl_compile
    swc1	$f0,16($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f11005c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23384
    li	$a1,1
    b	.L0f110010
    sw	$a1,-20060($gp)
.end gl_c_c4f

# Function: gl_n_c4f
# Declared: Line 454 (Source lines: 454-454)
# Address: 0x0f110078 - 0x0f1100c4 (Size: 76 bytes, Frame: 48)
.globl gl_n_c4f
.ent gl_n_c4f
gl_n_c4f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,12752 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,152($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_c4f

# Function: beginCheckConcave
# Declared: Line 457 (Source lines: 458-488)
# Address: 0x0f1100c4 - 0x0f110158 (Size: 148 bytes, Frame: 48)
.globl beginCheckConcave
.ent beginCheckConcave
beginCheckConcave:
    # Line 458
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a3,0xfff2
    addiu	$a3,$a3,12676
    addu	$gp,$t9,$a3
    # Line 459
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$at,3160($a2)
    sd	$s8,0($sp)
    li	$a3,1
    bne	$at,$a3,.L0f11012c
    move	$s8,$a2
    li	$at,9
    bne	$a0,$at,.L0f110130
    # Line 485
    la	$t9,simpleBegin
    # Line 483
    la	$v1,concaveEnd
    # Line 462
    lw	$v0,4100($zero)
    # Line 463
    sw	$a3,3164($a2)
    # Line 464
    sw	$zero,3172($s8)
    # Line 465
    lw	$v0,64($v0)
    # Line 483
    sw	$v1,220($s8)
    # Line 471
    sw	$zero,11380($s8)
    # Line 469
    sw	$a3,11480($s8)
    # Line 467
    sw	$zero,11476($s8)
    # Line 483
    b	.L0f110148
    # Line 465
    sw	$v0,3168($s8)
.L0f11012c:
    # Line 485
    la	$t9,simpleBegin
.L0f110130:
    sd	$ra,16($sp)
    bal simpleBegin
    nop
    # Line 486
    la	$v1,simpleEnd
    ld	$ra,16($sp)
    sw	$v1,220($s8)
.L0f110148:
    ld	$gp,8($sp)
    # Line 488
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end beginCheckConcave

# Function: slowBegin
# Declared: Line 490 (Source lines: 491-512)
# Address: 0x0f110158 - 0x0f110230 (Size: 216 bytes, Frame: 48)
.globl slowBegin
.ent slowBegin
slowBegin:
    # Line 491
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,12528 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 492
    la	$at,gl_inMoveDraw
    sd	$s8,8($sp)
    sd	$s7,0($sp)
    lw	$at,0($at)
    la	$s7,gl_wstatep
    # Line 491
    move	$s8,$a0
    # Line 492
    beqz	$at,.L0f1101ac
    lw	$s7,0($s7)
    # Line 494
    la	$t9,__iglooSetMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f1101ac:
    lw	$v1,2908($s7)
    beqz	$v1,.L0f110204
    # Line 497
    la	$t9,SyncDepthCueGeom
    sd	$ra,24($sp)
    jalr	$t9
    nop
    # Line 499
    lw	$a0,3160($s7)
    sw	$zero,2908($s7)
    beqz	$a0,.L0f110224
    ld	$ra,24($sp)
.L0f1101d4:
    sd	$ra,24($sp)
    # Line 502
    li	$a1,1
    beq	$a0,$a1,.L0f11020c
    ld	$s7,0($sp)
    # Line 510
    la	$t9,simpleBegin
    bal simpleBegin
    move	$a0,$s8
    ld	$s8,8($sp)
    ld	$ra,24($sp)
.L0f1101f8:
    ld	$gp,16($sp)
    # Line 512
    jr	$ra
    addiu	$sp,$sp,48
.L0f110204:
    b	.L0f1101d4
    # Line 502
    lw	$a0,3160($s7)
.L0f11020c:
    # Line 508
    la	$t9,beginCheckConcave
    bal beginCheckConcave
    move	$a0,$s8
    ld	$s8,8($sp)
    b	.L0f1101f8
    ld	$ra,24($sp)
.L0f110224:
    # Line 502
    la	$at,simpleBegin
    b	.L0f1101d4
    sw	$at,216($s7)
.end slowBegin

# Function: simpleBegin
# Declared: Line 514 (Source lines: 515-527)
# Address: 0x0f110230 - 0x0f1102d0 (Size: 160 bytes, Frame: 48)
.globl simpleBegin
.ent simpleBegin
simpleBegin:
    # Line 516
    li	$v0,1
    # Line 515
    addiu	$sp,$sp,-48
    # Line 516
    lw	$at,4100($zero)
    sd	$a0,0($sp)
    sd	$gp,16($sp)
    sd	$at,8($sp)
    lbu	$at,61($at)
    # Line 515
    lui	$v1,0xfff2
    addiu	$v1,$v1,12312
    # Line 516
    beq	$at,$v0,.L0f1102ac
    # Line 515
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
.L0f11025c:
    # Line 521
    la	$v0,gl_inMoveDraw
    lw	$v0,0($v0)
    beqz	$v0,.L0f110284
    sd	$ra,24($sp)
    # Line 523
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    la	$t9,glEnd
    jalr	$t9
    nop
.L0f110284:
    # Line 526
    ld	$a0,0($sp)
    la	$t9,glBegin
    # Line 525
    ld	$a1,8($sp)
    li	$v1,1
    # Line 526
    jalr	$t9
    # Line 525
    sb	$v1,60($a1)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    # Line 527
    jr	$ra
    addiu	$sp,$sp,48
.L0f1102ac:
    # Line 521
    la	$a0,gl_wstatep
    li	$a1,1
    la	$t9,__igloolmcolor
    lw	$a0,0($a0)
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a0,3136($a0)
    b	.L0f11025c
    ld	$ra,24($sp)
.end simpleBegin

# Function: setStartData
# Declared: Line 591 (Source lines: 592-630)
# Address: 0x0f1102d0 - 0x0f110400 (Size: 304 bytes, Frame: 192)
.globl setStartData
.ent setStartData
setStartData:
    # Line 592
    addiu	$sp,$sp,-64
    sd	$a1,0($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 595
    addiu	$a0,$a0,3184
    sd	$gp,24($sp)
    # Line 592
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,12152 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 595
    la	$t9,setVData
    # Line 593
    lw	$at,11476($s0)
    sd	$ra,8($sp)
    # Line 595
    bal setVData
    sd	$at,32($sp)
    lw	$v1,276($s0)
    ld	$v0,32($sp)
    lw	$v1,20($v1)
    # Line 600
    ld	$a2,0($sp)
    li	$a1,1
    # Line 595
    beqz	$v1,.L0f1103a4
    ld	$ra,8($sp)
.L0f110324:
    # Line 614
    lw	$a2,3076($s0)
    ld	$gp,24($sp)
    # Line 620
    li	$v1,-16385
    # Line 614
    beqz	$a2,.L0f110340
    # Line 616
    ld	$at,0($sp)
    # Line 614
    lw	$a3,2904($s0)
    beqz	$a3,.L0f11039c
.L0f110340:
    # Line 616
    li	$a3,1
    sw	$a3,0($at)
    # Line 617
    lw	$a1,11476($s0)
    li	$a2,-4096
    lw	$a0,11708($s0)
    and	$a1,$a1,$a2
    sw	$a1,11476($s0)
    lw	$at,24($a0)
    beqz	$at,.L0f1103d0
    # Line 620
    and	$v1,$a1,$v1
.L0f110368:
    # Line 619
    lw	$v1,4($a0)
    # Line 626
    li	$at,0x8000
    # Line 619
    bnez	$v1,.L0f110390
    # Line 626
    nor	$at,$at,$zero
    # Line 619
    lw	$a2,20($a0)
    beqzl	$a2,.L0f110394
    # Line 630
    ld	$s0,16($sp)
    # Line 626
    lw	$a3,11476($s0)
    and	$a3,$a3,$at
    sw	$a3,11476($s0)
.L0f110390:
    # Line 630
    ld	$s0,16($sp)
.L0f110394:
    jr	$ra
    addiu	$sp,$sp,64
.L0f11039c:
    b	.L0f110368
    # Line 620
    lw	$a0,11708($s0)
.L0f1103a4:
    # Line 600
    sw	$a1,0($a2)
    lw	$v1,2904($s0)
    beqz	$v1,.L0f1103d8
    lw	$a1,11476($s0)
.L0f1103b4:
    # Line 604
    lw	$a3,11708($s0)
    lw	$a3,24($a3)
    beqz	$a3,.L0f1103f0
.L0f1103c0:
    # Line 610
    li	$at,-4096
    and	$at,$a1,$at
    b	.L0f110324
    sw	$at,11476($s0)
.L0f1103d0:
    # Line 620
    b	.L0f110368
    sw	$v1,11476($s0)
.L0f1103d8:
    # Line 604
    li	$a2,-8193
    # Line 603
    li	$a3,-4097
    and	$a1,$a1,$a3
    # Line 604
    and	$a1,$a1,$a2
    b	.L0f1103b4
    sw	$a1,11476($s0)
.L0f1103f0:
    # Line 608
    li	$at,-16385
    and	$a1,$a1,$at
    b	.L0f1103c0
    sw	$a1,11476($s0)
.end setStartData

# Function: setEndData
# Declared: Line 633 (Source lines: 634-640)
# Address: 0x0f110400 - 0x0f11044c (Size: 76 bytes, Frame: 48)
.globl setEndData
.ent setEndData
setEndData:
    # Line 634
    move	$a4,$a0
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0xfff2
    addiu	$at,$at,11848
    beqz	$a2,.L0f110440
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 637
    sw	$a1,11476($a4)
    # Line 638
    lw	$a0,3172($a4)
    sd	$ra,8($sp)
    la	$t9,setVData
    sll	$a0,$a0,0x5
    addu	$a0,$a0,$a4
    bal setVData
    addiu	$a0,$a0,3152
    ld	$ra,8($sp)
.L0f110440:
    ld	$gp,0($sp)
    # Line 640
    jr	$ra
    addiu	$sp,$sp,48
.end setEndData

# Function: concaveEnd
# Declared: Line 642 (Source lines: 643-919)
# Address: 0x0f11044c - 0x0f1110b4 (Size: 3176 bytes, Frame: 240)
.globl concaveEnd
.ent concaveEnd
concaveEnd:
    # Line 643
    addiu	$sp,$sp,-112
    sd	$gp,80($sp)
    lui	$a3,0xfff2
    addiu	$a3,$a3,11772
    addu	$gp,$t9,$a3
    # Line 644
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    # Line 647
    sw	$zero,0($sp)
    lw	$at,3164($a0)
    li	$v0,1
    sd	$s1,72($sp)
    bne	$at,$v0,.L0f110540
    # Line 644
    move	$s1,$a0
    sd	$s0,96($sp)
    # Line 652
    lw	$v1,3172($a0)
    # Line 651
    lw	$s0,11392($a0)
    sd	$s2,104($sp)
    # Line 652
    sll	$v1,$v1,0x5
    addu	$v1,$v1,$a0
    lw	$v1,3152($v1)
    lw	$s2,11376($a0)
    lw	$a4,11708($a0)
    sll	$at,$v1,0x4
    addu	$at,$at,$v1
    sll	$at,$at,0x2
    beqz	$a4,.L0f110c48
    addu	$s2,$s2,$at
.L0f1104b8:
    # Line 658
    lw	$a1,3172($s1)
    slti	$a3,$a1,3
    beqz	$a3,.L0f110994
    # Line 664
    la	$t9,setStartData
    # Line 875
    blez	$a1,.L0f1104e4
    sd	$ra,88($sp)
    # Line 885
    la	$t9,setVData
    sll	$a0,$a1,0x5
    addu	$a0,$a0,$s1
    bal setVData
    addiu	$a0,$a0,3152
.L0f1104e4:
    # Line 888
    la	$t9,glEdgeFlag
.L0f1104e8:
    jalr	$t9
    li	$a0,1
    ld	$ra,88($sp)
    # Line 889
    lw	$v0,11476($s1)
    lw	$a5,11392($s1)
    andi	$a3,$v0,0x1000
    beqz	$a3,.L0f1105a4
    sw	$zero,3164($s1)
    # Line 891
    li	$a2,16
    lw	$a0,4($s2)
    la	$t9,bcopy
    move	$a1,$s0
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    sra	$a3,$a3,0x2
    b	.L0f1105a8
    sw	$a3,11412($s1)
.L0f110540:
    # Line 915
    la	$t9,simpleEnd
    sd	$ra,88($sp)
    bal simpleEnd
    ld	$s1,72($sp)
    # Line 916
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    # Line 917
    li	$at,1024
    lw	$a0,4100($zero)
    li	$v1,1025
    beqz	$a0,.L0f110598
    ld	$ra,88($sp)
    lw	$v0,48($a0)
    li	$a4,1028
    beq	$v0,$a4,.L0f110d18
    la	$t9,glFlush
    beq	$v0,$at,.L0f110d18
    la	$t9,glFlush
    beq	$v0,$v1,.L0f110d14
    li	$a3,1032
    beq	$v0,$a3,.L0f110d18
    la	$t9,glFlush
.L0f110598:
    ld	$gp,80($sp)
    # Line 919
    jr	$ra
    addiu	$sp,$sp,112
.L0f1105a4:
    # Line 891
    lw	$a5,11392($s1)
.L0f1105a8:
    andi	$a4,$v0,0x4000
    beqz	$a4,.L0f1105e8
    # Line 892
    li	$a2,12
    lw	$a0,12($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,20
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,20
    sra	$a3,$a3,0x2
    sw	$a3,11420($s1)
.L0f1105e8:
    andi	$a4,$v0,0x2000
    beqz	$a4,.L0f110628
    # Line 893
    li	$a2,4
    lw	$a0,8($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,16
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,16
    sra	$a3,$a3,0x2
    sw	$a3,11416($s1)
.L0f110628:
    andi	$a4,$v0,0x8000
    beqz	$a4,.L0f110668
    # Line 894
    li	$a2,16
    lw	$a0,16($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,32
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,32
    sra	$a3,$a3,0x2
    sw	$a3,11424($s1)
.L0f110668:
    andi	$a4,$v0,0x1
    beqz	$a4,.L0f1106a8
    # Line 896
    li	$a2,16
    lw	$a0,20($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,48
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,48
    sra	$a3,$a3,0x2
    sw	$a3,11428($s1)
.L0f1106a8:
    andi	$a4,$v0,0x2
    beqz	$a4,.L0f1106e8
    # Line 897
    li	$a2,16
    lw	$a0,24($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,64
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,64
    sra	$a3,$a3,0x2
    sw	$a3,11432($s1)
.L0f1106e8:
    andi	$a4,$v0,0x4
    beqz	$a4,.L0f110728
    # Line 898
    li	$a2,16
    lw	$a0,28($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,80
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,80
    sra	$a3,$a3,0x2
    sw	$a3,11436($s1)
.L0f110728:
    andi	$a4,$v0,0x8
    beqz	$a4,.L0f110768
    # Line 899
    li	$a2,16
    lw	$a0,32($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,96
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,96
    sra	$a3,$a3,0x2
    sw	$a3,11440($s1)
.L0f110768:
    andi	$a4,$v0,0x10
    beqz	$a4,.L0f1107a8
    # Line 900
    li	$a2,4
    lw	$a0,36($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,112
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,112
    sra	$a3,$a3,0x2
    sw	$a3,11444($s1)
.L0f1107a8:
    andi	$a4,$v0,0x20
    beqz	$a4,.L0f1107e8
    # Line 901
    li	$a2,12
    lw	$a0,40($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,116
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,116
    sra	$a3,$a3,0x2
    sw	$a3,11448($s1)
.L0f1107e8:
    andi	$a4,$v0,0x40
    beqz	$a4,.L0f110828
    # Line 903
    li	$a2,16
    lw	$a0,44($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,128
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,128
    sra	$a3,$a3,0x2
    sw	$a3,11452($s1)
.L0f110828:
    andi	$a4,$v0,0x80
    beqz	$a4,.L0f110868
    # Line 904
    li	$a2,16
    lw	$a0,48($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,144
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,144
    sra	$a3,$a3,0x2
    sw	$a3,11456($s1)
.L0f110868:
    andi	$a4,$v0,0x100
    beqz	$a4,.L0f1108a8
    # Line 905
    li	$a2,16
    lw	$a0,52($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,160
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,160
    sra	$a3,$a3,0x2
    sw	$a3,11460($s1)
.L0f1108a8:
    andi	$a4,$v0,0x200
    beqz	$a4,.L0f1108e8
    # Line 906
    li	$a2,16
    lw	$a0,56($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,176
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,176
    sra	$a3,$a3,0x2
    sw	$a3,11464($s1)
.L0f1108e8:
    andi	$a4,$v0,0x400
    beqz	$a4,.L0f110928
    # Line 907
    li	$a2,4
    lw	$a0,60($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,192
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a5,11392($s1)
    lw	$v0,11476($s1)
    ld	$ra,88($sp)
    subu	$a3,$s0,$a5
    addiu	$a3,$a3,192
    sra	$a3,$a3,0x2
    sw	$a3,11468($s1)
.L0f110928:
    andi	$a4,$v0,0x800
    beqz	$a4,.L0f11096c
    # Line 908
    li	$a2,12
    lw	$a0,64($s2)
    la	$t9,bcopy
    addiu	$a1,$s0,196
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$v0,11392($s1)
    ld	$ra,88($sp)
    ld	$s2,104($sp)
    subu	$v0,$s0,$v0
    addiu	$a3,$v0,196
    sra	$a3,$a3,0x2
    b	.L0f110974
    sw	$a3,11472($s1)
.L0f11096c:
    subu	$v0,$s0,$a5
    ld	$s2,104($sp)
.L0f110974:
    ld	$s0,96($sp)
    # Line 913
    sw	$zero,11480($s1)
    # Line 912
    sw	$zero,3172($s1)
    # Line 910
    addiu	$v1,$v0,208
    sra	$v1,$v1,0x2
    sw	$v1,11396($s1)
    # Line 913
    b	.L0f110598
    ld	$s1,72($sp)
.L0f110994:
    # Line 664
    move	$a0,$s1
    sd	$ra,88($sp)
    bal setStartData
    addiu	$a1,$sp,0
    lw	$a1,3172($s1)
    slti	$a3,$a1,4
    bnez	$a3,.L0f110d28
    sd	$v0,40($sp)
    # Line 674
    li	$a4,4
    bne	$a1,$a4,.L0f110c60
    # Line 849
    la	$t9,gluTessBeginContour
    # Line 704
    ldc1	$f2,3256($s1)
    # Line 705
    ldc1	$f12,3288($s1)
    sub.d	$f13,$f12,$f2
    # Line 704
    ldc1	$f15,3264($s1)
    # Line 703
    ldc1	$f1,3232($s1)
    # Line 705
    ldc1	$f0,3296($s1)
    # Line 704
    sub.d	$f4,$f15,$f1
    # Line 705
    sub.d	$f15,$f0,$f15
    # Line 703
    ldc1	$f18,3224($s1)
    # Line 706
    mul.d	$f5,$f13,$f4
    # Line 704
    sub.d	$f2,$f2,$f18
    # Line 705
    ldc1	$f10,3304($s1)
    # Line 704
    ldc1	$f3,3272($s1)
    # Line 706
    mul.d	$f19,$f2,$f15
    # Line 705
    sub.d	$f9,$f10,$f3
    # Line 703
    ldc1	$f21,3240($s1)
    # Line 706
    mul.d	$f6,$f2,$f9
    # Line 704
    sub.d	$f3,$f3,$f21
    # Line 706
    mul.d	$f16,$f13,$f3
    mul.d	$f17,$f3,$f15
    # Line 703
    ldc1	$f7,3192($s1)
    # Line 706
    mul.d	$f23,$f4,$f9
    sub.d	$f12,$f7,$f12
    # Line 703
    ldc1	$f8,3208($s1)
    sub.d	$f21,$f21,$f8
    sub.d	$f18,$f18,$f7
    # Line 706
    mul.d	$f7,$f12,$f21
    sub.d	$f8,$f8,$f10
    # Line 703
    ldc1	$f10,3200($s1)
    # Line 706
    mul.d	$f11,$f18,$f8
    # Line 703
    sub.d	$f1,$f1,$f10
    # Line 706
    mul.d	$f14,$f1,$f8
    sub.d	$f10,$f10,$f0
    sub.d	$f6,$f6,$f16
    mul.d	$f16,$f21,$f10
    sub.d	$f7,$f7,$f11
    sub.d	$f17,$f17,$f23
    mul.d	$f6,$f7,$f6
    sub.d	$f14,$f14,$f16
    mul.d	$f17,$f14,$f17
    mul.d	$f11,$f18,$f10
    mul.d	$f0,$f12,$f1
    mul.d	$f16,$f2,$f1
    mul.d	$f23,$f18,$f4
    mul.d	$f18,$f18,$f3
    mul.d	$f2,$f2,$f21
    mul.d	$f21,$f21,$f4
    mul.d	$f1,$f1,$f3
    sub.d	$f18,$f18,$f2
    mul.d	$f18,$f18,$f7
    sub.d	$f21,$f21,$f1
    sub.d	$f11,$f11,$f0
    mul.d	$f21,$f14,$f21
    sub.d	$f16,$f16,$f23
    mul.d	$f16,$f11,$f16
    add.d	$f18,$f18,$f21
    sub.d	$f5,$f5,$f19
    add.d	$f16,$f16,$f18
    add.d	$f6,$f6,$f17
    mul.d	$f5,$f11,$f5
    cvt.s.d	$f16,$f16
    mtc1	$zero,$f4
    c.lt.s	$f4,$f16
    add.d	$f5,$f5,$f6
    li	$a0,1
    bc1fl	.L0f110acc
    move	$a0,$zero
.L0f110acc:
    beqz	$a0,.L0f110d6c
    cvt.s.d	$f5,$f5
    mul.d	$f6,$f12,$f15
    mul.d	$f17,$f13,$f8
    mul.d	$f3,$f12,$f9
    mul.d	$f0,$f9,$f10
    mul.d	$f2,$f15,$f8
    mul.d	$f1,$f13,$f10
    sub.d	$f17,$f17,$f3
    mul.d	$f17,$f7,$f17
    sub.d	$f0,$f0,$f2
    mul.d	$f0,$f14,$f0
    sub.d	$f6,$f6,$f1
    mul.d	$f6,$f11,$f6
    add.d	$f17,$f17,$f0
    c.lt.s	$f4,$f5
    add.d	$f6,$f6,$f17
    bc1f	.L0f110b28
    cvt.s.d	$f6,$f6
    # Line 718
    c.lt.s	$f4,$f6
    nop
    bc1t	.L0f110e60
    # Line 720
    la	$t9,simpleBegin
.L0f110b28:
    # Line 729
    c.le.s	$f16,$f4
    li	$a1,1
    bc1fl	.L0f110b38
    move	$a1,$zero
.L0f110b38:
    beqz	$a1,.L0f110b44
    move	$v0,$zero
    # Line 731
    li	$v0,1
.L0f110b44:
    c.le.s	$f5,$f4
    li	$a2,1
    bc1fl	.L0f110b54
    move	$a2,$zero
.L0f110b54:
    beqzl	$a2,.L0f110b64
    # Line 732
    c.le.s	$f6,$f4
    addiu	$v0,$v0,1
    c.le.s	$f6,$f4
.L0f110b64:
    li	$a5,1
    bc1fl	.L0f110b70
    move	$a5,$zero
.L0f110b70:
    beqz	$a5,.L0f110b80
    li	$at,1
    # Line 733
    addiu	$v0,$v0,1
    li	$at,1
.L0f110b80:
    # Line 735
    beq	$v0,$at,.L0f110dac
    li	$a6,3
    beq	$v0,$a6,.L0f110e0c
    # Line 737
    li	$v1,2
    bne	$v0,$v1,.L0f110cfc
    # Line 875
    la	$t9,setEndData
    # Line 737
    addiu	$at,$s1,3216
    addiu	$v1,$s1,3248
    sd	$v1,8($sp)
    lw	$a3,276($s1)
    sd	$at,24($sp)
    addiu	$a4,$s1,3280
    lw	$a3,24($a3)
    sd	$a4,32($sp)
    addiu	$a4,$s1,3184
    beq	$a3,$a6,.L0f111064
    sd	$a4,16($sp)
    # Line 792
    beqz	$a0,.L0f110f00
    # Line 798
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 799
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,16($sp)
    # Line 800
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,24($sp)
    # Line 801
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,8($sp)
    # Line 802
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    # Line 803
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 804
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,16($sp)
    # Line 805
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,8($sp)
    # Line 806
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,32($sp)
    # Line 807
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    b	.L0f110cfc
    # Line 875
    la	$t9,setEndData
.L0f110c48:
    # Line 658
    la	$t9,gl_init_texturing
    sd	$ra,88($sp)
    jalr	$t9
    nop
    b	.L0f1104b8
    ld	$ra,88($sp)
.L0f110c60:
    # Line 849
    jalr	$t9
    lw	$a0,3180($s1)
    # Line 850
    la	$t9,gluTessBeginPolygon
    move	$a1,$zero
    jalr	$t9
    lw	$a0,3180($s1)
    # Line 855
    lw	$at,3172($s1)
    blez	$at,.L0f110cd8
    sd	$zero,48($sp)
    addiu	$v1,$s1,3192
    addiu	$a3,$s1,3184
    sd	$a3,56($sp)
    sd	$v1,64($sp)
.L0f110c94:
    # Line 858
    la	$t9,gluTessVertex
    ld	$a2,56($sp)
    ld	$a1,64($sp)
    jalr	$t9
    lw	$a0,3180($s1)
    # Line 855
    ld	$a4,48($sp)
    ld	$v1,64($sp)
    lw	$at,3172($s1)
    addiu	$a4,$a4,1
    sd	$a4,48($sp)
    slt	$a4,$a4,$at
    ld	$at,56($sp)
    addiu	$v1,$v1,32
    sd	$v1,64($sp)
    addiu	$at,$at,32
    bnez	$a4,.L0f110c94
    sd	$at,56($sp)
.L0f110cd8:
    # Line 863
    la	$t9,gluTessEndContour
    jalr	$t9
    lw	$a0,3180($s1)
    # Line 864
    la	$t9,gluTessEndPolygon
    jalr	$t9
    lw	$a0,3180($s1)
    li	$a3,1
    # Line 873
    sw	$a3,0($sp)
.L0f110cf8:
    # Line 875
    la	$t9,setEndData
.L0f110cfc:
    move	$a0,$s1
    ld	$a1,40($sp)
    bal setEndData
    lw	$a2,0($sp)
    b	.L0f1104e8
    # Line 888
    la	$t9,glEdgeFlag
.L0f110d14:
    # Line 917
    la	$t9,glFlush
.L0f110d18:
    jalr	$t9
    nop
    b	.L0f110598
    ld	$ra,88($sp)
.L0f110d28:
    # Line 670
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 671
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3184
    # Line 672
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3216
    # Line 673
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3248
    # Line 674
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    b	.L0f110cfc
    # Line 875
    la	$t9,setEndData
.L0f110d6c:
    # Line 725
    mul.d	$f6,$f12,$f15
    mul.d	$f1,$f13,$f10
    mul.d	$f17,$f13,$f8
    mul.d	$f3,$f12,$f9
    mul.d	$f0,$f9,$f10
    mul.d	$f2,$f15,$f8
    sub.d	$f17,$f17,$f3
    mul.d	$f17,$f7,$f17
    sub.d	$f0,$f0,$f2
    sub.d	$f6,$f6,$f1
    mul.d	$f0,$f14,$f0
    mul.d	$f6,$f11,$f6
    add.d	$f17,$f17,$f0
    add.d	$f6,$f6,$f17
    b	.L0f110b28
    cvt.s.d	$f6,$f6
.L0f110dac:
    # Line 735
    beq	$v0,$a6,.L0f110e10
    # Line 739
    la	$t9,simpleBegin
    # Line 745
    beqz	$a1,.L0f110eac
    # Line 749
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 750
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3280
    # Line 751
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3184
    # Line 752
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3216
    # Line 753
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3248
    # Line 754
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    li	$a4,1
    # Line 755
    b	.L0f110cf8
    sw	$a4,0($sp)
.L0f110e0c:
    # Line 739
    la	$t9,simpleBegin
.L0f110e10:
    bal simpleBegin
    li	$a0,9
    # Line 740
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3248
    # Line 741
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3280
    # Line 742
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3184
    # Line 743
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3216
    # Line 744
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    li	$at,1
    # Line 745
    b	.L0f110cf8
    sw	$at,0($sp)
.L0f110e60:
    # Line 720
    bal simpleBegin
    li	$a0,9
    # Line 721
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3184
    # Line 722
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3216
    # Line 723
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3248
    # Line 724
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3280
    # Line 725
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    b	.L0f110cfc
    # Line 875
    la	$t9,setEndData
.L0f110eac:
    # Line 755
    beqz	$a2,.L0f110f8c
    # Line 759
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 760
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3184
    # Line 761
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3216
    # Line 762
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3248
    # Line 763
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3280
    # Line 764
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    b	.L0f110cfc
    # Line 875
    la	$t9,setEndData
.L0f110f00:
    # Line 807
    c.lt.s	$f4,$f6
    nop
    bc1f	.L0f110fe4
    # Line 812
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 813
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,16($sp)
    # Line 814
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,24($sp)
    # Line 815
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,32($sp)
    # Line 816
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    # Line 817
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 818
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,24($sp)
    # Line 819
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,8($sp)
    # Line 820
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,32($sp)
    # Line 821
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    b	.L0f110cfc
    # Line 875
    la	$t9,setEndData
.L0f110f8c:
    # Line 764
    beqz	$a5,.L0f110cf8
    # Line 768
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 769
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3216
    # Line 770
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3248
    # Line 771
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3280
    # Line 772
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    addiu	$a0,$s1,3184
    # Line 773
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    li	$v1,1
    # Line 774
    b	.L0f110cf8
    sw	$v1,0($sp)
.L0f110fe4:
    # Line 827
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 828
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,16($sp)
    # Line 829
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,24($sp)
    # Line 830
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,8($sp)
    # Line 831
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    # Line 832
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,9
    # Line 833
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,24($sp)
    # Line 834
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,8($sp)
    # Line 835
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,32($sp)
    # Line 836
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    b	.L0f110cfc
    # Line 875
    la	$t9,setEndData
.L0f111064:
    # Line 787
    la	$t9,simpleBegin
    bal simpleBegin
    li	$a0,2
    # Line 788
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,16($sp)
    # Line 789
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,24($sp)
    # Line 790
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,8($sp)
    # Line 791
    la	$t9,vertexCallbackFunc
    bal vertexCallbackFunc
    ld	$a0,32($sp)
    # Line 792
    la	$t9,simpleEnd
    bal simpleEnd
    nop
    b	.L0f110cfc
    # Line 875
    la	$t9,setEndData
.end concaveEnd

# Function: simpleEnd
# Declared: Line 921 (Source lines: 922-930)
# Address: 0x0f1110b4 - 0x0f11114c (Size: 152 bytes, Frame: 32)
.globl simpleEnd
.ent simpleEnd
simpleEnd:
    # Line 922
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,8596 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 924
    la	$t9,glEnd
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 923
    lw	$s8,4100($zero)
    # Line 925
    sb	$zero,60($s8)
    # Line 926
    li	$v1,1024
    lw	$a2,4100($zero)
    li	$a0,1025
    li	$at,1032
    beqz	$a2,.L0f11111c
    ld	$s8,8($sp)
    lw	$a1,48($a2)
    li	$v0,1028
    beq	$a1,$v0,.L0f111138
    ld	$s8,8($sp)
    beq	$a1,$v1,.L0f11113c
    la	$t9,glFlush
    beq	$a1,$a0,.L0f11113c
    la	$t9,glFlush
    beq	$a1,$at,.L0f111138
.L0f11111c:
    # Line 927
    la	$t9,__iglooSetMoveDraw
.L0f111120:
    jalr	$t9
    move	$a0,$zero
    # Line 930
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111138:
    # Line 926
    la	$t9,glFlush
.L0f11113c:
    jalr	$t9
    nop
    b	.L0f111120
    # Line 927
    la	$t9,__iglooSetMoveDraw
.end simpleEnd

# Function: gl_i_bgnpoint
# Declared: Line 981 (Source lines: 981-981)
# Address: 0x0f11114c - 0x0f1111a0 (Size: 84 bytes, Frame: 16)
.globl gl_i_bgnpoint
.ent gl_i_bgnpoint
gl_i_bgnpoint:
    # Line 981
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,8444 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f11117c
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f11117c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_bgnpoint

# Function: gl_c_bgnpoint
# Declared: Line 981 (Source lines: 981-981)
# Address: 0x0f1111a0 - 0x0f111204 (Size: 100 bytes, Frame: 32)
.globl gl_c_bgnpoint
.ent gl_c_bgnpoint
gl_c_bgnpoint:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,8360 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20056($gp)
    beqz	$at,.L0f1111e8
    sd	$ra,16($sp)
.L0f1111c0:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_bgnpoint
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f1111e8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23368
    li	$at,1
    b	.L0f1111c0
    sw	$at,-20056($gp)
.end gl_c_bgnpoint

# Function: gl_n_bgnpoint
# Declared: Line 981 (Source lines: 981-981)
# Address: 0x0f111204 - 0x0f111260 (Size: 92 bytes, Frame: 48)
.globl gl_n_bgnpoint
.ent gl_n_bgnpoint
gl_n_bgnpoint:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,8260 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f111238
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f111238:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_bgnpoint

# Function: gl_i_bgnline
# Declared: Line 982 (Source lines: 982-982)
# Address: 0x0f111260 - 0x0f1112b4 (Size: 84 bytes, Frame: 16)
.globl gl_i_bgnline
.ent gl_i_bgnline
gl_i_bgnline:
    # Line 982
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,8168 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f111290
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f111290:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_bgnline

# Function: gl_c_bgnline
# Declared: Line 982 (Source lines: 982-982)
# Address: 0x0f1112b4 - 0x0f111318 (Size: 100 bytes, Frame: 32)
.globl gl_c_bgnline
.ent gl_c_bgnline
gl_c_bgnline:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,8084 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20052($gp)
    beqz	$at,.L0f1112fc
    sd	$ra,16($sp)
.L0f1112d4:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_bgnline
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f1112fc:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23352
    li	$at,1
    b	.L0f1112d4
    sw	$at,-20052($gp)
.end gl_c_bgnline

# Function: gl_n_bgnline
# Declared: Line 982 (Source lines: 982-982)
# Address: 0x0f111318 - 0x0f111374 (Size: 92 bytes, Frame: 48)
.globl gl_n_bgnline
.ent gl_n_bgnline
gl_n_bgnline:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7984 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f11134c
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f11134c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_bgnline

# Function: gl_i_bgnclosedline
# Declared: Line 983 (Source lines: 983-983)
# Address: 0x0f111374 - 0x0f1113c8 (Size: 84 bytes, Frame: 16)
.globl gl_i_bgnclosedline
.ent gl_i_bgnclosedline
gl_i_bgnclosedline:
    # Line 983
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7892 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f1113a4
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1113a4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,2
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_bgnclosedline

# Function: gl_c_bgnclosedline
# Declared: Line 983 (Source lines: 983-983)
# Address: 0x0f1113c8 - 0x0f11142c (Size: 100 bytes, Frame: 32)
.globl gl_c_bgnclosedline
.ent gl_c_bgnclosedline
gl_c_bgnclosedline:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7808 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20048($gp)
    beqz	$at,.L0f111410
    sd	$ra,16($sp)
.L0f1113e8:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_bgnclosedline
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111410:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23336
    li	$at,1
    b	.L0f1113e8
    sw	$at,-20048($gp)
.end gl_c_bgnclosedline

# Function: gl_n_bgnclosedline
# Declared: Line 983 (Source lines: 983-983)
# Address: 0x0f11142c - 0x0f111488 (Size: 92 bytes, Frame: 48)
.globl gl_n_bgnclosedline
.ent gl_n_bgnclosedline
gl_n_bgnclosedline:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7708 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f111460
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f111460:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,2
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_bgnclosedline

# Function: gl_i_bgntmesh
# Declared: Line 984 (Source lines: 984-984)
# Address: 0x0f111488 - 0x0f1114f8 (Size: 112 bytes, Frame: 32)
.globl gl_i_bgntmesh
.ent gl_i_bgntmesh
gl_i_bgntmesh:
    # Line 984
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7616 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f1114b8
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1114b8:
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    li	$a0,1
    lw	$t9,180($a1)
    lw	$v1,188($a1)
    sd	$a1,0($sp)
    jalr	$t9
    sw	$v1,184($a1)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,5
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_bgntmesh

# Function: gl_c_bgntmesh
# Declared: Line 984 (Source lines: 984-984)
# Address: 0x0f1114f8 - 0x0f11155c (Size: 100 bytes, Frame: 32)
.globl gl_c_bgntmesh
.ent gl_c_bgntmesh
gl_c_bgntmesh:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7504 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20044($gp)
    beqz	$at,.L0f111540
    sd	$ra,16($sp)
.L0f111518:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_bgntmesh
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111540:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23320
    li	$at,1
    b	.L0f111518
    sw	$at,-20044($gp)
.end gl_c_bgntmesh

# Function: gl_n_bgntmesh
# Declared: Line 984 (Source lines: 984-984)
# Address: 0x0f11155c - 0x0f1115d4 (Size: 120 bytes, Frame: 48)
.globl gl_n_bgntmesh
.ent gl_n_bgntmesh
gl_n_bgntmesh:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7404 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    beqz	$at,.L0f111590
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f111590:
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    li	$a0,1
    lw	$t9,180($a1)
    lw	$v1,188($a1)
    sd	$a1,0($sp)
    jalr	$t9
    sw	$v1,184($a1)
    ld	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,5
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$v0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_bgntmesh

# Function: gl_i_bgnqstrip
# Declared: Line 985 (Source lines: 985-985)
# Address: 0x0f1115d4 - 0x0f111628 (Size: 84 bytes, Frame: 16)
.globl gl_i_bgnqstrip
.ent gl_i_bgnqstrip
gl_i_bgnqstrip:
    # Line 985
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7284 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f111604
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f111604:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,8
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_bgnqstrip

# Function: gl_c_bgnqstrip
# Declared: Line 985 (Source lines: 985-985)
# Address: 0x0f111628 - 0x0f11168c (Size: 100 bytes, Frame: 32)
.globl gl_c_bgnqstrip
.ent gl_c_bgnqstrip
gl_c_bgnqstrip:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7200 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20040($gp)
    beqz	$at,.L0f111670
    sd	$ra,16($sp)
.L0f111648:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_bgnqstrip
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111670:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23304
    li	$at,1
    b	.L0f111648
    sw	$at,-20040($gp)
.end gl_c_bgnqstrip

# Function: gl_n_bgnqstrip
# Declared: Line 985 (Source lines: 985-985)
# Address: 0x0f11168c - 0x0f1116e8 (Size: 92 bytes, Frame: 48)
.globl gl_n_bgnqstrip
.ent gl_n_bgnqstrip
gl_n_bgnqstrip:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7100 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f1116c0
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1116c0:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,8
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_bgnqstrip

# Function: gl_i_bgnpolygon
# Declared: Line 986 (Source lines: 986-986)
# Address: 0x0f1116e8 - 0x0f11173c (Size: 84 bytes, Frame: 16)
.globl gl_i_bgnpolygon
.ent gl_i_bgnpolygon
gl_i_bgnpolygon:
    # Line 986
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,7008 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f111718
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f111718:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_bgnpolygon

# Function: gl_c_bgnpolygon
# Declared: Line 986 (Source lines: 986-986)
# Address: 0x0f11173c - 0x0f1117a0 (Size: 100 bytes, Frame: 32)
.globl gl_c_bgnpolygon
.ent gl_c_bgnpolygon
gl_c_bgnpolygon:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,6924 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20036($gp)
    beqz	$at,.L0f111784
    sd	$ra,16($sp)
.L0f11175c:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_bgnpolygon
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111784:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23288
    li	$at,1
    b	.L0f11175c
    sw	$at,-20036($gp)
.end gl_c_bgnpolygon

# Function: gl_n_bgnpolygon
# Declared: Line 986 (Source lines: 986-986)
# Address: 0x0f1117a0 - 0x0f1117fc (Size: 92 bytes, Frame: 48)
.globl gl_n_bgnpolygon
.ent gl_n_bgnpolygon
gl_n_bgnpolygon:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,6824 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f1117d4
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1117d4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,9
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_bgnpolygon

# Function: gl_i_endpoint
# Declared: Line 988 (Source lines: 988-988)
# Address: 0x0f1117fc - 0x0f111838 (Size: 60 bytes, Frame: 16)
.globl gl_i_endpoint
.ent gl_i_endpoint
gl_i_endpoint:
    # Line 988
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,6732
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_endpoint

# Function: gl_c_endpoint
# Declared: Line 988 (Source lines: 988-988)
# Address: 0x0f111838 - 0x0f11189c (Size: 100 bytes, Frame: 32)
.globl gl_c_endpoint
.ent gl_c_endpoint
gl_c_endpoint:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,6672 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20032($gp)
    beqz	$at,.L0f111880
    sd	$ra,16($sp)
.L0f111858:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_endpoint
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111880:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23272
    li	$at,1
    b	.L0f111858
    sw	$at,-20032($gp)
.end gl_c_endpoint

# Function: gl_n_endpoint
# Declared: Line 988 (Source lines: 988-988)
# Address: 0x0f11189c - 0x0f1118e4 (Size: 72 bytes, Frame: 48)
.globl gl_n_endpoint
.ent gl_n_endpoint
gl_n_endpoint:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,6572
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_endpoint

# Function: gl_i_endline
# Declared: Line 989 (Source lines: 989-989)
# Address: 0x0f1118e4 - 0x0f111920 (Size: 60 bytes, Frame: 16)
.globl gl_i_endline
.ent gl_i_endline
gl_i_endline:
    # Line 989
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,6500
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_endline

# Function: gl_c_endline
# Declared: Line 989 (Source lines: 989-989)
# Address: 0x0f111920 - 0x0f111984 (Size: 100 bytes, Frame: 32)
.globl gl_c_endline
.ent gl_c_endline
gl_c_endline:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,6440 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20028($gp)
    beqz	$at,.L0f111968
    sd	$ra,16($sp)
.L0f111940:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_endline
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111968:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23256
    li	$at,1
    b	.L0f111940
    sw	$at,-20028($gp)
.end gl_c_endline

# Function: gl_n_endline
# Declared: Line 989 (Source lines: 989-989)
# Address: 0x0f111984 - 0x0f1119cc (Size: 72 bytes, Frame: 48)
.globl gl_n_endline
.ent gl_n_endline
gl_n_endline:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,6340
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_endline

# Function: gl_i_endclosedline
# Declared: Line 990 (Source lines: 990-990)
# Address: 0x0f1119cc - 0x0f111a08 (Size: 60 bytes, Frame: 16)
.globl gl_i_endclosedline
.ent gl_i_endclosedline
gl_i_endclosedline:
    # Line 990
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,6268
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_endclosedline

# Function: gl_c_endclosedline
# Declared: Line 990 (Source lines: 990-990)
# Address: 0x0f111a08 - 0x0f111a6c (Size: 100 bytes, Frame: 32)
.globl gl_c_endclosedline
.ent gl_c_endclosedline
gl_c_endclosedline:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,6208 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20024($gp)
    beqz	$at,.L0f111a50
    sd	$ra,16($sp)
.L0f111a28:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_endclosedline
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111a50:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23240
    li	$at,1
    b	.L0f111a28
    sw	$at,-20024($gp)
.end gl_c_endclosedline

# Function: gl_n_endclosedline
# Declared: Line 990 (Source lines: 990-990)
# Address: 0x0f111a6c - 0x0f111ab4 (Size: 72 bytes, Frame: 48)
.globl gl_n_endclosedline
.ent gl_n_endclosedline
gl_n_endclosedline:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,6108
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_endclosedline

# Function: gl_i_endtmesh
# Declared: Line 991 (Source lines: 991-991)
# Address: 0x0f111ab4 - 0x0f111b0c (Size: 88 bytes, Frame: 32)
.globl gl_i_endtmesh
.ent gl_i_endtmesh
gl_i_endtmesh:
    # Line 991
    addiu	$sp,$sp,-32
    sd	$s7,16($sp)
    sd	$gp,8($sp)
    lui	$t8,0xfff2
    addiu	$t8,$t8,6036
    addu	$gp,$t9,$t8
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,220($s7)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    lw	$t9,180($s7)
    jalr	$t9
    move	$a0,$zero
    la	$ra,__iglooNullSwapTMesh
    sw	$ra,184($s7)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_endtmesh

# Function: gl_c_endtmesh
# Declared: Line 991 (Source lines: 991-991)
# Address: 0x0f111b0c - 0x0f111b70 (Size: 100 bytes, Frame: 32)
.globl gl_c_endtmesh
.ent gl_c_endtmesh
gl_c_endtmesh:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,5948 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20020($gp)
    beqz	$at,.L0f111b54
    sd	$ra,16($sp)
.L0f111b2c:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_endtmesh
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111b54:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23224
    li	$at,1
    b	.L0f111b2c
    sw	$at,-20020($gp)
.end gl_c_endtmesh

# Function: gl_n_endtmesh
# Declared: Line 991 (Source lines: 991-991)
# Address: 0x0f111b70 - 0x0f111bd4 (Size: 100 bytes, Frame: 48)
.globl gl_n_endtmesh
.ent gl_n_endtmesh
gl_n_endtmesh:
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff2
    addiu	$t8,$t8,5848
    addu	$gp,$t9,$t8
    la	$s0,gl_wstatep
    lw	$s0,0($s0)
    lw	$t9,220($s0)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    lw	$t9,180($s0)
    jalr	$t9
    move	$a0,$zero
    la	$ra,__iglooNullSwapTMesh
    ld	$gp,16($sp)
    move	$v0,$s8
    sw	$ra,184($s0)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_endtmesh

# Function: gl_i_endqstrip
# Declared: Line 992 (Source lines: 992-992)
# Address: 0x0f111bd4 - 0x0f111c10 (Size: 60 bytes, Frame: 16)
.globl gl_i_endqstrip
.ent gl_i_endqstrip
gl_i_endqstrip:
    # Line 992
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,5748
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_endqstrip

# Function: gl_c_endqstrip
# Declared: Line 992 (Source lines: 992-992)
# Address: 0x0f111c10 - 0x0f111c74 (Size: 100 bytes, Frame: 32)
.globl gl_c_endqstrip
.ent gl_c_endqstrip
gl_c_endqstrip:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,5688 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20016($gp)
    beqz	$at,.L0f111c58
    sd	$ra,16($sp)
.L0f111c30:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_endqstrip
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111c58:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23208
    li	$at,1
    b	.L0f111c30
    sw	$at,-20016($gp)
.end gl_c_endqstrip

# Function: gl_n_endqstrip
# Declared: Line 992 (Source lines: 992-992)
# Address: 0x0f111c74 - 0x0f111cbc (Size: 72 bytes, Frame: 48)
.globl gl_n_endqstrip
.ent gl_n_endqstrip
gl_n_endqstrip:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,5588
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_endqstrip

# Function: gl_i_endpolygon
# Declared: Line 993 (Source lines: 993-993)
# Address: 0x0f111cbc - 0x0f111cf8 (Size: 60 bytes, Frame: 16)
.globl gl_i_endpolygon
.ent gl_i_endpolygon
gl_i_endpolygon:
    # Line 993
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,5516
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_endpolygon

# Function: gl_c_endpolygon
# Declared: Line 993 (Source lines: 993-993)
# Address: 0x0f111cf8 - 0x0f111d5c (Size: 100 bytes, Frame: 32)
.globl gl_c_endpolygon
.ent gl_c_endpolygon
gl_c_endpolygon:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,5456 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20012($gp)
    beqz	$at,.L0f111d40
    sd	$ra,16($sp)
.L0f111d18:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_endpolygon
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f111d40:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23192
    li	$at,1
    b	.L0f111d18
    sw	$at,-20012($gp)
.end gl_c_endpolygon

# Function: gl_n_endpolygon
# Declared: Line 993 (Source lines: 993-993)
# Address: 0x0f111d5c - 0x0f111da4 (Size: 72 bytes, Frame: 48)
.globl gl_n_endpolygon
.ent gl_n_endpolygon
gl_n_endpolygon:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,5356
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,220($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_endpolygon

# Function: __igl_concave_Normal3fv
# Declared: Line 995 (Source lines: 996-1013)
# Address: 0x0f111da4 - 0x0f111e3c (Size: 152 bytes, Frame: 48)
.globl __igl_concave_Normal3fv
.ent __igl_concave_Normal3fv
__igl_concave_Normal3fv:
    # Line 996
    li	$a3,1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$at,3164($a0)
    lui	$v0,0xfff2
    addiu	$v0,$v0,5284
    beq	$at,$a3,.L0f111e0c
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 1005
    lw	$v1,11392($s0)
    # Line 1007
    lwc1	$f2,0($a1)
    swc1	$f2,20($v1)
    # Line 1008
    lwc1	$f1,4($a1)
    swc1	$f1,24($v1)
    # Line 1009
    lwc1	$f0,8($a1)
    swc1	$f0,28($v1)
    # Line 1011
    lw	$t9,192($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
.L0f111e00:
    ld	$gp,8($sp)
    # Line 1013
    jr	$ra
    addiu	$sp,$sp,48
.L0f111e0c:
    # Line 1003
    li	$a0,3
    # Line 1002
    sw	$a3,11480($s0)
    # Line 1001
    lw	$a2,11476($s0)
    # Line 1003
    la	$t9,putData
    # Line 1000
    sw	$zero,3168($s0)
    # Line 1001
    ori	$a2,$a2,0x4000
    # Line 1003
    bal putData
    # Line 1001
    sw	$a2,11476($s0)
    # Line 1003
    sw	$v0,11420($s0)
    ld	$s0,0($sp)
    b	.L0f111e00
    ld	$ra,16($sp)
.end __igl_concave_Normal3fv

# Function: gl_i_n3f
# Declared: Line 1018 (Source lines: 1018-1018)
# Address: 0x0f111e3c - 0x0f111e7c (Size: 64 bytes, Frame: 32)
.globl gl_i_n3f
.ent gl_i_n3f
gl_i_n3f:
    # Line 1018
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,5132 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,212($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_n3f

# Function: gl_c_n3f
# Declared: Line 1018 (Source lines: 1018-1018)
# Address: 0x0f111e7c - 0x0f111f04 (Size: 136 bytes, Frame: 192)
.globl gl_c_n3f
.ent gl_c_n3f
gl_c_n3f:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,5068 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20008($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f111ee8
    move	$s8,$a0
.L0f111ea4:
    la	$v1,gl_n_n3f
    sw	$v1,0($sp)
    lwc1	$f2,0($s8)
    swc1	$f2,4($sp)
    lwc1	$f1,4($s8)
    addiu	$a1,$sp,0
    swc1	$f1,8($sp)
    la	$t9,gl_compile
    lwc1	$f0,8($s8)
    li	$a0,8
    bal gl_compile
    swc1	$f0,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f111ee8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23176
    li	$a1,1
    b	.L0f111ea4
    sw	$a1,-20008($gp)
.end gl_c_n3f

# Function: gl_n_n3f
# Declared: Line 1018 (Source lines: 1018-1018)
# Address: 0x0f111f04 - 0x0f111f50 (Size: 76 bytes, Frame: 48)
.globl gl_n_n3f
.ent gl_n_n3f
gl_n_n3f:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,4932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,212($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_n3f

# Function: gl_i_normal
# Declared: Line 1019 (Source lines: 1019-1019)
# Address: 0x0f111f50 - 0x0f111f90 (Size: 64 bytes, Frame: 32)
.globl gl_i_normal
.ent gl_i_normal
gl_i_normal:
    # Line 1019
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,4856 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,212($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_normal

# Function: gl_c_normal
# Declared: Line 1019 (Source lines: 1019-1019)
# Address: 0x0f111f90 - 0x0f112018 (Size: 136 bytes, Frame: 192)
.globl gl_c_normal
.ent gl_c_normal
gl_c_normal:
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,4792 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20004($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f111ffc
    move	$s8,$a0
.L0f111fb8:
    la	$v1,gl_n_normal
    sw	$v1,0($sp)
    lwc1	$f2,0($s8)
    swc1	$f2,4($sp)
    lwc1	$f1,4($s8)
    addiu	$a1,$sp,0
    swc1	$f1,8($sp)
    la	$t9,gl_compile
    lwc1	$f0,8($s8)
    li	$a0,8
    bal gl_compile
    swc1	$f0,12($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f111ffc:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23160
    li	$a1,1
    b	.L0f111fb8
    sw	$a1,-20004($gp)
.end gl_c_normal

# Function: gl_n_normal
# Declared: Line 1019 (Source lines: 1019-1019)
# Address: 0x0f112018 - 0x0f112064 (Size: 76 bytes, Frame: 48)
.globl gl_n_normal
.ent gl_n_normal
gl_n_normal:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,4656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,212($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_normal

# Function: gl_i_swaptmesh
# Declared: Line 1022 (Source lines: 1022-1022)
# Address: 0x0f112064 - 0x0f1120a0 (Size: 60 bytes, Frame: 16)
.globl gl_i_swaptmesh
.ent gl_i_swaptmesh
gl_i_swaptmesh:
    # Line 1022
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,4580
    addu	$gp,$t9,$ra
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,184($t9)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_swaptmesh

# Function: gl_c_swaptmesh
# Declared: Line 1022 (Source lines: 1022-1022)
# Address: 0x0f1120a0 - 0x0f112104 (Size: 100 bytes, Frame: 32)
.globl gl_c_swaptmesh
.ent gl_c_swaptmesh
gl_c_swaptmesh:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,4520 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20000($gp)
    beqz	$at,.L0f1120e8
    sd	$ra,16($sp)
.L0f1120c0:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_swaptmesh
    li	$a0,2
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f1120e8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23144
    li	$at,1
    b	.L0f1120c0
    sw	$at,-20000($gp)
.end gl_c_swaptmesh

# Function: gl_n_swaptmesh
# Declared: Line 1022 (Source lines: 1022-1022)
# Address: 0x0f112104 - 0x0f11214c (Size: 72 bytes, Frame: 48)
.globl gl_n_swaptmesh
.ent gl_n_swaptmesh
gl_n_swaptmesh:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,4420
    addu	$gp,$t9,$s8
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    lw	$t9,184($t9)
    sd	$ra,0($sp)
    jalr	$t9
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_swaptmesh

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3b808081:
    .word 0x3b808081
_lit_3f800000:
    .word 0x3f800000
_lit_437f0000:
    .word 0x437f0000

