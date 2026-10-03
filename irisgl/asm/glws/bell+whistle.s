# Source: ../igloo/glws/bell+whistle.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/bell+whistle.c -o bell+whistle.T
# Total Functions: 10

.text

# Function: _clk
# Declared: Line 4 (Source lines: 5-12)
# Address: 0x0f095410 - 0x0f095474 (Size: 100 bytes, Frame: 192)
.ent _clk
_clk:
    # Line 5
    addiu	$sp,$sp,-64
    # Line 8
    la	$t9,_GLinitgl
    sd	$s3,32($sp)
    sd	$ra,40($sp)
    jalr	$t9
    # Line 5
    move	$s3,$a0
    # Line 9
    la	$a0,gl_sstatep
    # Line 10
    addiu	$a2,$sp,0
    lw	$a0,0($a0)
    # Line 9
    sw	$s3,0($sp)
    # Line 10
    la	$t9,XChangeKeyboardControl
    lw	$a0,28($a0)
    li	$a1,1
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 11
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    ld	$s3,32($sp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,40($sp)
    # Line 12
    jr	$ra
    addiu	$sp,$sp,64
.end _clk

# Function: gl_g_clkon
# Declared: Line 13 (Source lines: 13-13)
# Address: 0x0f095474 - 0x0f0954ac (Size: 56 bytes, Frame: 16)
.globl gl_g_clkon
.ent gl_g_clkon
gl_g_clkon:
    # Line 13
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfffa
    addiu	$ra,$ra,-8748
    addu	$gp,$t9,$ra
    la	$t9,sub_0f090000
    addiu	$t9,$t9,21520
    bal gl_n_bbox2
    li	$a0,100
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_clkon

# Function: gl_g_clkoff
# Declared: Line 14 (Source lines: 14-14)
# Address: 0x0f0954ac - 0x0f0954e4 (Size: 56 bytes, Frame: 16)
.globl gl_g_clkoff
.ent gl_g_clkoff
gl_g_clkoff:
    # Line 14
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfffa
    addiu	$ra,$ra,-8804
    addu	$gp,$t9,$ra
    la	$t9,sub_0f090000
    addiu	$t9,$t9,21520
    bal gl_n_bbox2
    move	$a0,$zero
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_clkoff

# Function: _lamp
# Declared: Line 16 (Source lines: 17-29)
# Address: 0x0f0954e4 - 0x0f09563c (Size: 344 bytes, Frame: 224)
.ent _lamp
_lamp:
    # Line 17
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    sd	$s4,56($sp)
    sd	$s5,72($sp)
    sd	$s1,48($sp)
    move	$s1,$a0
    # Line 21
    la	$t9,_GLinitgl
    sd	$s3,40($sp)
    sd	$ra,32($sp)
    jalr	$t9
    # Line 17
    move	$s3,$a1
    # Line 22
    la	$s5,gl_sstatep
    li	$s0,1
    move	$s4,$zero
    li	$at,1
    sllv	$at,$at,$s4
    and	$at,$at,$s1
    beqz	$at,.L0f095550
    # Line 26
    addiu	$a2,$sp,0
    # Line 25
    sw	$s3,20($sp)
    # Line 26
    lw	$a0,0($s5)
    # Line 24
    sw	$s0,16($sp)
    # Line 26
    la	$t9,XChangeKeyboardControl
    lw	$a0,28($a0)
    li	$a1,48
    jalr	$t9
    lw	$a0,4($a0)
.L0f095550:
    # Line 22
    addiu	$s4,$s4,1
    li	$a2,1
    sllv	$a2,$a2,$s4
    and	$a2,$a2,$s1
    beqz	$a2,.L0f09558c
    addiu	$s0,$s0,1
    # Line 26
    addiu	$a2,$sp,0
    # Line 25
    sw	$s3,20($sp)
    # Line 26
    lw	$a0,0($s5)
    # Line 24
    sw	$s0,16($sp)
    # Line 26
    la	$t9,XChangeKeyboardControl
    lw	$a0,28($a0)
    li	$a1,48
    jalr	$t9
    lw	$a0,4($a0)
.L0f09558c:
    # Line 22
    addiu	$s4,$s4,1
    li	$a2,1
    sllv	$a2,$a2,$s4
    and	$a2,$a2,$s1
    beqz	$a2,.L0f0955c8
    addiu	$s0,$s0,1
    # Line 26
    addiu	$a2,$sp,0
    # Line 25
    sw	$s3,20($sp)
    # Line 26
    lw	$a0,0($s5)
    # Line 24
    sw	$s0,16($sp)
    # Line 26
    la	$t9,XChangeKeyboardControl
    lw	$a0,28($a0)
    li	$a1,48
    jalr	$t9
    lw	$a0,4($a0)
.L0f0955c8:
    # Line 22
    addiu	$s4,$s4,1
    addiu	$s0,$s0,1
    li	$a2,1
    sllv	$a2,$a2,$s4
    and	$a2,$a2,$s1
    beqz	$a2,.L0f09560c
    ld	$s1,48($sp)
    # Line 26
    addiu	$a2,$sp,0
    li	$a1,48
    # Line 25
    sw	$s3,20($sp)
    # Line 26
    lw	$a0,0($s5)
    # Line 24
    sw	$s0,16($sp)
    # Line 26
    la	$t9,XChangeKeyboardControl
    lw	$a0,28($a0)
    ld	$s1,48($sp)
    jalr	$t9
    lw	$a0,4($a0)
.L0f09560c:
    ld	$s3,40($sp)
    # Line 28
    lw	$a0,0($s5)
    ld	$s0,64($sp)
    la	$t9,XFlush
    lw	$a0,28($a0)
    ld	$s4,56($sp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,32($sp)
    # Line 29
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end _lamp

# Function: gl_g_lampon
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f09563c - 0x0f095674 (Size: 56 bytes, Frame: 32)
.globl gl_g_lampon
.ent gl_g_lampon
gl_g_lampon:
    # Line 31
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfffa
    addiu	$ra,$ra,-9204
    addu	$gp,$t9,$ra
    la	$t9,sub_0f090000
    addiu	$t9,$t9,21732
    bal gl_g_clkoff
    li	$a1,1
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_lampon

# Function: gl_g_lampoff
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f095674 - 0x0f0956ac (Size: 56 bytes, Frame: 32)
.globl gl_g_lampoff
.ent gl_g_lampoff
gl_g_lampoff:
    # Line 32
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfffa
    addiu	$ra,$ra,-9260
    addu	$gp,$t9,$ra
    la	$t9,sub_0f090000
    addiu	$t9,$t9,21732
    bal gl_g_clkoff
    move	$a1,$zero
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_lampoff

# Function: gl_g_ringbell
# Declared: Line 34 (Source lines: 35-39)
# Address: 0x0f0956ac - 0x0f095714 (Size: 104 bytes, Frame: 16)
.globl gl_g_ringbell
.ent gl_g_ringbell
gl_g_ringbell:
    # Line 35
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-9316 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 36
    la	$t9,_GLinitgl
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 37
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,XBell
    lw	$a0,28($a0)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 38
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 39
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_ringbell

# Function: gl_g_setbell
# Declared: Line 41 (Source lines: 42-55)
# Address: 0x0f095714 - 0x0f0957c0 (Size: 172 bytes, Frame: 208)
.globl gl_g_setbell
.ent gl_g_setbell
gl_g_setbell:
    # Line 42
    addiu	$sp,$sp,-80
    sd	$gp,48($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-9420 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 45
    la	$t9,_GLinitgl
    sd	$s3,32($sp)
    sd	$ra,40($sp)
    jalr	$t9
    # Line 42
    move	$s3,$a0
    # Line 47
    li	$a0,100
    # Line 45
    beqz	$s3,.L0f0957b0
    slti	$v0,$s3,2
    # Line 48
    li	$v1,100
    # Line 45
    bnez	$v0,.L0f09575c
    ld	$s3,32($sp)
    # Line 47
    b	.L0f095760
    li	$a0,1000
.L0f09575c:
    ld	$s3,32($sp)
.L0f095760:
    sw	$a0,12($sp)
    # Line 48
    sw	$v1,4($sp)
.L0f095768:
    # Line 51
    la	$a0,gl_sstatep
    # Line 53
    lw	$a0,0($a0)
    addiu	$a2,$sp,0
    la	$t9,XChangeKeyboardControl
    lw	$a0,28($a0)
    li	$a1,10
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 54
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 55
    ld	$ra,40($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0957b0:
    # Line 51
    sw	$zero,12($sp)
    # Line 50
    sw	$zero,4($sp)
    b	.L0f095768
    ld	$s3,32($sp)
.end gl_g_setbell

# Function: gl_g_blanktime
# Declared: Line 57 (Source lines: 58-80)
# Address: 0x0f0957c0 - 0x0f0958d4 (Size: 276 bytes, Frame: 208)
.globl gl_g_blanktime
.ent gl_g_blanktime
gl_g_blanktime:
    # Line 58
    addiu	$sp,$sp,-80
    sd	$s8,48($sp)
    sd	$s7,24($sp)
    sd	$gp,32($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-9592 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 60
    la	$t9,__GLgetgdesc
    # Line 58
    move	$s7,$a0
    sd	$ra,16($sp)
    # Line 60
    jalr	$t9
    li	$a0,66
    # Line 62
    la	$t9,_GLinitgl
    sd	$s0,40($sp)
    jalr	$t9
    # Line 60
    move	$s8,$v0
    # Line 63
    la	$s0,gl_sstatep
    lw	$s0,0($s0)
    # Line 64
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    # Line 63
    lw	$s0,28($s0)
    # Line 64
    addiu	$a2,$sp,4
    la	$t9,XGetScreenSaver
    # Line 63
    lw	$s0,4($s0)
    # Line 64
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s0
    # Line 65
    addu	$at,$s8,$s7
    addiu	$at,$at,-1
    div	$zero,$at,$s8
    lw	$a3,8($sp)
    lw	$a4,12($sp)
    ld	$s7,24($sp)
    teq	$s8,$zero,0x7
    ld	$s8,48($sp)
    mflo	$a1
    blez	$a1,.L0f095894
    sw	$a1,0($sp)
    bnez	$a3,.L0f095868
    # Line 78
    la	$t9,XSetScreenSaver
    # Line 65
    beqz	$a4,.L0f0958b0
.L0f095864:
    # Line 78
    la	$t9,XSetScreenSaver
.L0f095868:
    move	$a0,$s0
    jalr	$t9
    lw	$a2,4($sp)
    # Line 79
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s0
    # Line 80
    ld	$ra,16($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f095894:
    ld	$s8,48($sp)
    # Line 74
    beqz	$a1,.L0f0958bc
    ld	$s7,24($sp)
    # Line 76
    lw	$a1,0($sp)
.L0f0958a4:
    lw	$a3,8($sp)
    b	.L0f095864
    lw	$a4,12($sp)
.L0f0958b0:
    # Line 74
    li	$a4,1
    b	.L0f095864
    sw	$a4,12($sp)
.L0f0958bc:
    # Line 76
    la	$t9,XForceScreenSaver
    move	$a0,$s0
    jalr	$t9
    move	$a1,$zero
    b	.L0f0958a4
    lw	$a1,0($sp)
.end gl_g_blanktime

# Function: gl_g_blankscreen
# Declared: Line 82 (Source lines: 83-96)
# Address: 0x0f0958d4 - 0x0f0959a0 (Size: 204 bytes, Frame: 192)
.globl gl_g_blankscreen
.ent gl_g_blankscreen
gl_g_blankscreen:
    # Line 83
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    sd	$gp,32($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-9868 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 87
    la	$t9,_GLinitgl
    sd	$s1,16($sp)
    sd	$ra,24($sp)
    jalr	$t9
    # Line 83
    move	$s1,$a0
    # Line 88
    la	$s0,gl_sstatep
    lw	$s0,0($s0)
    # Line 89
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    # Line 88
    lw	$s0,28($s0)
    # Line 89
    addiu	$a2,$sp,4
    la	$t9,XGetScreenSaver
    # Line 88
    lw	$s0,4($s0)
    # Line 89
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s0
    beqz	$s1,.L0f095944
    # Line 90
    lw	$at,12($sp)
    # Line 89
    lw	$a3,8($sp)
    bnez	$a3,.L0f095948
    # Line 94
    la	$t9,XForceScreenSaver
    # Line 90
    beqz	$at,.L0f095978
.L0f095944:
    # Line 94
    la	$t9,XForceScreenSaver
.L0f095948:
    move	$a0,$s0
    jalr	$t9
    sltu	$a1,$zero,$s1
    # Line 95
    la	$t9,XFlush
    move	$a0,$s0
    jalr	$t9
    ld	$s1,16($sp)
    # Line 96
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f095978:
    # Line 92
    li	$a4,1
    lw	$a2,4($sp)
    lw	$a1,0($sp)
    la	$t9,XSetScreenSaver
    move	$a0,$s0
    # Line 91
    li	$v0,1
    # Line 92
    jalr	$t9
    # Line 91
    sw	$v0,12($sp)
    b	.L0f095948
    # Line 94
    la	$t9,XForceScreenSaver
.end gl_g_blankscreen

