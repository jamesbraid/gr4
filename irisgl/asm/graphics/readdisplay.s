# Source: ../igloo/graphics/readdisplay.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/readdisplay.c -o readdisplay.T
# Total Functions: 2

.text

# Function: gl_g_readdisplay
# Declared: Line 19 (Source lines: 25-71)
# Address: 0x0f1045ac - 0x0f104808 (Size: 604 bytes, Frame: 208)
.globl gl_g_readdisplay
.ent gl_g_readdisplay
gl_g_readdisplay:
    # Line 25
    move	$t2,$a2
    move	$t3,$a1
    addiu	$sp,$sp,-208
    sd	$s0,40($sp)
    # Line 31
    move	$s0,$zero
    sd	$a4,0($sp)
    sd	$s3,56($sp)
    # Line 25
    move	$s3,$a3
    sd	$s2,24($sp)
    move	$s2,$a0
    sd	$gp,88($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,-4964 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_sstatep
    sd	$s1,80($sp)
    move	$s1,$a5
    # Line 40
    lw	$v0,0($v0)
    sd	$s8,64($sp)
    sd	$s5,72($sp)
    lw	$v0,28($v0)
    andi	$s5,$a5,0x1
    beqz	$s5,.L0f10464c
    lw	$s8,4($v0)
    sd	$t2,112($sp)
    # Line 44
    la	$t9,XGrabServer
    sd	$t3,104($sp)
    sd	$ra,96($sp)
    jalr	$t9
    move	$a0,$s8
    # Line 45
    la	$t9,XSync
    move	$a0,$s8
    jalr	$t9
    move	$a1,$zero
    la	$v0,gl_sstatep
    ld	$ra,96($sp)
    lw	$v0,0($v0)
    ld	$t3,104($sp)
    ld	$t2,112($sp)
    lw	$v0,28($v0)
.L0f10464c:
    andi	$v1,$s1,0x10
    beqz	$v1,.L0f104660
    # Line 54
    andi	$a7,$s1,0x8
    lui	$s0,0x400
    andi	$a7,$s1,0x8
.L0f104660:
    beqz	$a7,.L0f10466c
    # Line 55
    lui	$t0,0x200
    or	$s0,$s0,$t0
.L0f10466c:
    andi	$at,$s1,0x4
    beqz	$at,.L0f104684
    # Line 56
    lui	$v1,0xfe
    sd	$ra,96($sp)
    ori	$v1,$v1,0x8000
    or	$s0,$s0,$v1
.L0f104684:
    # Line 58
    move	$a7,$zero
    move	$a6,$s0
    move	$a2,$s2
    move	$a0,$s8
    sd	$ra,96($sp)
    subu	$s1,$s3,$t3
    subu	$a4,$t2,$s2
    sd	$a4,48($sp)
    addiu	$a4,$a4,1
    sd	$s1,32($sp)
    addiu	$s1,$s1,1
    move	$a5,$s1
    sd	$a4,8($sp)
    lw	$t1,8($v0)
    la	$a1,gl_wstatep
    lw	$a3,140($s8)
    sll	$t0,$t1,0x2
    lw	$a1,0($a1)
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x4
    lw	$a1,224($a1)
    addu	$a3,$a3,$t0
    lw	$a3,16($a3)
    lw	$a1,12($a1)
    la	$t9,XReadDisplay
    subu	$a3,$a3,$s3
    lw	$a1,112($a1)
    addiu	$a3,$a3,-1
    jalr	$t9
    lw	$a1,64($a1)
    sd	$s5,120($sp)
    move	$s3,$v0
    ld	$s0,40($sp)
    beqz	$s1,.L0f1047a4
    ld	$s2,24($sp)
    sd	$s4,136($sp)
    ld	$s4,32($sp)
    sd	$s6,128($sp)
    ld	$s6,8($sp)
    multu	$s6,$s4
    sd	$s1,16($sp)
    move	$s2,$s4
    sd	$s7,144($sp)
    move	$s7,$s1
    ld	$s7,48($sp)
    subu	$s4,$s4,$s1
    ld	$s1,0($sp)
    sll	$s7,$s7,0x2
    sll	$s5,$s6,0x2
    negu	$s6,$s6
    sll	$s6,$s6,0x2
    addiu	$s7,$s7,4
    mflo	$s0
    nop
    sll	$s0,$s0,0x2
.L0f104760:
    # Line 62
    move	$a2,$s7
    # Line 60
    addiu	$s2,$s2,-1
    # Line 62
    move	$a1,$s1
    la	$t9,bcopy
    lw	$a0,16($s3)
    # Line 60
    addu	$s1,$s5,$s1
    # Line 62
    jalr	$t9
    addu	$a0,$a0,$s0
    # Line 60
    bne	$s2,$s4,.L0f104760
    addu	$s0,$s0,$s6
    ld	$s0,40($sp)
    ld	$s7,144($sp)
    ld	$s5,120($sp)
    ld	$s4,136($sp)
    ld	$s6,128($sp)
    ld	$s2,24($sp)
    ld	$s1,16($sp)
.L0f1047a4:
    # Line 64
    lw	$t9,68($s3)
    jalr	$t9
    move	$a0,$s3
    move	$a7,$s5
    ld	$s5,72($sp)
    ld	$ra,96($sp)
    beqz	$a7,.L0f1047e8
    ld	$s3,56($sp)
    # Line 68
    la	$t9,XUngrabServer
    move	$a0,$s8
    jalr	$t9
    ld	$s5,72($sp)
    # Line 69
    la	$t9,XSync
    move	$a0,$s8
    jalr	$t9
    move	$a1,$zero
    ld	$ra,96($sp)
.L0f1047e8:
    ld	$t0,8($sp)
    # Line 71
    multu	$t0,$s1
    ld	$gp,88($sp)
    ld	$s8,64($sp)
    ld	$s1,80($sp)
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,208
.end gl_g_readdisplay

# Function: gl_g_gl_readscreen
# Declared: Line 77 (Source lines: 78-108)
# Address: 0x0f104808 - 0x0f104a00 (Size: 504 bytes, Frame: 224)
.globl gl_g_gl_readscreen
.ent gl_g_gl_readscreen
gl_g_gl_readscreen:
    # Line 78
    addiu	$sp,$sp,-8288
    sd	$gp,8232($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-5568 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 84
    la	$t9,gl_sstatep
    lw	$t9,0($t9)
    lw	$t9,28($t9)
    lw	$a7,4($t9)
    lw	$t9,8($t9)
    sd	$s2,8224($sp)
    lw	$a7,140($a7)
    sll	$s2,$t9,0x2
    addu	$s2,$s2,$t9
    sll	$s2,$s2,0x4
    addu	$a7,$a7,$s2
    lw	$a7,12($a7)
    # Line 78
    move	$v0,$a3
    move	$a6,$a1
    # Line 84
    sltu	$at,$a0,$a7
    beqz	$at,.L0f10486c
    sd	$s3,8248($sp)
    sd	$ra,8240($sp)
    # Line 95
    b	.L0f104874
    move	$s3,$a0
.L0f10486c:
    sd	$ra,8240($sp)
    move	$s3,$a7
.L0f104874:
    sd	$v0,8200($sp)
    sd	$a2,8208($sp)
    # Line 96
    la	$t9,__GLgetcpos
    sd	$a6,8216($sp)
    addiu	$a1,$sp,2
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 97
    move	$a5,$zero
    lh	$a1,2($sp)
    addiu	$a4,$sp,8
    la	$t9,__GLreaddisplay
    move	$a3,$a1
    lh	$a0,0($sp)
    dsll32	$s2,$s3,0x10
    dsra32	$s2,$s2,0x10
    addu	$a2,$s2,$a0
    addiu	$a2,$a2,-1
    dsll32	$a2,$a2,0x10
    jalr	$t9
    dsra32	$a2,$a2,0x10
    ld	$s3,8248($sp)
    ld	$v0,8200($sp)
    ld	$a7,8216($sp)
    addiu	$at,$sp,8
    andi	$t1,$s2,0x3
    blez	$s2,.L0f1049ec
    ld	$ra,8240($sp)
    move	$t2,$s2
    ld	$a0,8208($sp)
    addiu	$t0,$sp,8
    sll	$a6,$s2,0x2
    beqz	$t1,.L0f104930
    addu	$a6,$a6,$at
.L0f1048f8:
    # Line 104
    lw	$a5,0($t0)
    sb	$a5,0($a7)
    # Line 105
    lw	$a4,0($t0)
    # Line 103
    addiu	$t0,$t0,4
    addiu	$a7,$a7,1
    # Line 105
    srl	$a4,$a4,0x8
    sb	$a4,0($a0)
    # Line 103
    addiu	$a0,$a0,1
    # Line 106
    lw	$v1,-4($t0)
    # Line 103
    addiu	$v0,$v0,1
    addi	$t1,$t1,-1
    # Line 106
    srl	$v1,$v1,0x10
    bnez	$t1,.L0f1048f8
    sb	$v1,-1($v0)
.L0f104930:
    move	$t1,$v0
    sra	$at,$t2,0x2
    move	$a3,$a0
    move	$t8,$t0
    move	$t3,$a7
    move	$a1,$t3
    beqz	$at,.L0f1049ec
    move	$v0,$a3
    move	$a0,$t8
    move	$a2,$t1
.L0f104958:
    # Line 104
    lw	$at,0($a0)
    sb	$at,0($a1)
    # Line 105
    lw	$a5,0($a0)
    srl	$a5,$a5,0x8
    sb	$a5,0($v0)
    # Line 106
    lw	$a4,0($a0)
    srl	$a4,$a4,0x10
    sb	$a4,0($a2)
    # Line 104
    lw	$v1,4($a0)
    sb	$v1,1($a1)
    # Line 105
    lw	$at,4($a0)
    srl	$at,$at,0x8
    sb	$at,1($v0)
    # Line 106
    lw	$a5,4($a0)
    srl	$a5,$a5,0x10
    sb	$a5,1($a2)
    # Line 104
    lw	$a4,8($a0)
    sb	$a4,2($a1)
    # Line 105
    lw	$v1,8($a0)
    srl	$v1,$v1,0x8
    sb	$v1,2($v0)
    # Line 106
    lw	$at,8($a0)
    srl	$at,$at,0x10
    sb	$at,2($a2)
    # Line 104
    lw	$a5,12($a0)
    sb	$a5,3($a1)
    # Line 105
    lw	$a4,12($a0)
    # Line 103
    addiu	$a1,$a1,4
    # Line 105
    srl	$a4,$a4,0x8
    sb	$a4,3($v0)
    # Line 103
    addiu	$v0,$v0,4
    # Line 106
    lw	$v1,12($a0)
    # Line 103
    addiu	$a2,$a2,4
    addiu	$a0,$a0,16
    # Line 106
    srl	$v1,$v1,0x10
    # Line 103
    bne	$a0,$a6,.L0f104958
    # Line 106
    sb	$v1,-1($a2)
.L0f1049ec:
    ld	$gp,8232($sp)
    # Line 108
    move	$v0,$s2
    ld	$s2,8224($sp)
    jr	$ra
    addiu	$sp,$sp,8288
.end gl_g_gl_readscreen

