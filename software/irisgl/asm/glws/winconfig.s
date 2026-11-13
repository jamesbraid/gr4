# Source: ../igloo/glws/winconfig.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/winconfig.c -o winconfig.T
# Total Functions: 16

.text

# Function: _GLinvertY
# Declared: Line 14 (Source lines: 16-16)
# Address: 0x0f127678 - 0x0f12768c (Size: 20 bytes, Frame: 0)
.globl _GLinvertY
.ent _GLinvertY
_GLinvertY:
    # Line 16
    lw	$v0,12($a0)
    lw	$v0,120($v0)
    subu	$v0,$v0,$a1
    jr	$ra
    addiu	$v0,$v0,-1
.end _GLinvertY

# Function: _GLallocSizeHints
# Declared: Line 19 (Source lines: 20-26)
# Address: 0x0f12768c - 0x0f1276f0 (Size: 100 bytes, Frame: 48)
.globl _GLallocSizeHints
.ent _GLallocSizeHints
_GLallocSizeHints:
    # Line 20
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a4,96($a0)
    lui	$at,0xfff1
    addiu	$at,$at,-17476
    beqz	$a4,.L0f1276c4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f1276ac:
    # Line 25
    lw	$v0,0($a4)
    ld	$gp,8($sp)
    # Line 26
    addiu	$sp,$sp,48
    # Line 25
    or	$v0,$v0,$a1
    # Line 26
    jr	$ra
    # Line 25
    sw	$v0,0($a4)
.L0f1276c4:
    # Line 22
    la	$t9,XAllocSizeHints
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a1,16($sp)
    ld	$a4,0($sp)
    ld	$a1,16($sp)
    ld	$ra,24($sp)
    sw	$v0,96($a4)
    # Line 23
    sw	$zero,0($v0)
    b	.L0f1276ac
    lw	$a4,96($a4)
.end _GLallocSizeHints

# Function: _GLallocWMHints
# Declared: Line 28 (Source lines: 29-35)
# Address: 0x0f1276f0 - 0x0f127754 (Size: 100 bytes, Frame: 48)
.globl _GLallocWMHints
.ent _GLallocWMHints
_GLallocWMHints:
    # Line 29
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a4,100($a0)
    lui	$at,0xfff1
    addiu	$at,$at,-17576
    beqz	$a4,.L0f127728
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f127710:
    # Line 34
    lw	$v0,0($a4)
    ld	$gp,8($sp)
    # Line 35
    addiu	$sp,$sp,48
    # Line 34
    or	$v0,$v0,$a1
    # Line 35
    jr	$ra
    # Line 34
    sw	$v0,0($a4)
.L0f127728:
    # Line 31
    la	$t9,XAllocWMHints
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a1,16($sp)
    ld	$a4,0($sp)
    ld	$a1,16($sp)
    ld	$ra,24($sp)
    sw	$v0,100($a4)
    # Line 32
    sw	$zero,0($v0)
    b	.L0f127710
    lw	$a4,100($a4)
.end _GLallocWMHints

# Function: _GLminwinsize
# Declared: Line 37 (Source lines: 38-46)
# Address: 0x0f127754 - 0x0f1277d4 (Size: 128 bytes, Frame: 208)
.globl _GLminwinsize
.ent _GLminwinsize
_GLminwinsize:
    # Line 38
    li	$v0,2
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-17676
    beq	$at,$v0,.L0f127790
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 41
    li	$v0,-5
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f127790:
    # Line 43
    la	$t9,_GLallocSizeHints
    ld	$a0,16($sp)
    sd	$ra,32($sp)
    bal _GLallocSizeHints
    li	$a1,16
    ld	$a3,16($sp)
    # Line 46
    move	$v0,$zero
    # Line 44
    ld	$a4,0($sp)
    lw	$ra,96($a3)
    ld	$gp,24($sp)
    # Line 45
    ld	$a0,8($sp)
    # Line 44
    sw	$a4,20($ra)
    # Line 46
    ld	$ra,32($sp)
    # Line 45
    lw	$a3,96($a3)
    # Line 46
    addiu	$sp,$sp,80
    jr	$ra
    # Line 45
    sw	$a0,24($a3)
.end _GLminwinsize

# Function: _GLmaxwinsize
# Declared: Line 49 (Source lines: 50-57)
# Address: 0x0f1277d4 - 0x0f127854 (Size: 128 bytes, Frame: 208)
.globl _GLmaxwinsize
.ent _GLmaxwinsize
_GLmaxwinsize:
    # Line 50
    li	$v0,2
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-17804
    beq	$at,$v0,.L0f127810
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 52
    li	$v0,-5
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f127810:
    # Line 54
    la	$t9,_GLallocSizeHints
    ld	$a0,16($sp)
    sd	$ra,32($sp)
    bal _GLallocSizeHints
    li	$a1,32
    ld	$a3,16($sp)
    # Line 57
    move	$v0,$zero
    # Line 55
    ld	$a4,0($sp)
    lw	$ra,96($a3)
    ld	$gp,24($sp)
    # Line 56
    ld	$a0,8($sp)
    # Line 55
    sw	$a4,28($ra)
    # Line 57
    ld	$ra,32($sp)
    # Line 56
    lw	$a3,96($a3)
    # Line 57
    addiu	$sp,$sp,80
    jr	$ra
    # Line 56
    sw	$a0,32($a3)
.end _GLmaxwinsize

# Function: _GLwinstep
# Declared: Line 60 (Source lines: 61-68)
# Address: 0x0f127854 - 0x0f1278d4 (Size: 128 bytes, Frame: 208)
.globl _GLwinstep
.ent _GLwinstep
_GLwinstep:
    # Line 61
    li	$v0,2
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-17932
    beq	$at,$v0,.L0f127890
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 63
    li	$v0,-5
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f127890:
    # Line 65
    la	$t9,_GLallocSizeHints
    ld	$a0,16($sp)
    sd	$ra,32($sp)
    bal _GLallocSizeHints
    li	$a1,64
    ld	$a3,16($sp)
    # Line 68
    move	$v0,$zero
    # Line 66
    ld	$a4,0($sp)
    lw	$ra,96($a3)
    ld	$gp,24($sp)
    # Line 67
    ld	$a0,8($sp)
    # Line 66
    sw	$a4,36($ra)
    # Line 68
    ld	$ra,32($sp)
    # Line 67
    lw	$a3,96($a3)
    # Line 68
    addiu	$sp,$sp,80
    jr	$ra
    # Line 67
    sw	$a0,40($a3)
.end _GLwinstep

# Function: _GLwinmargin
# Declared: Line 71 (Source lines: 72-79)
# Address: 0x0f1278d4 - 0x0f127954 (Size: 128 bytes, Frame: 208)
.globl _GLwinmargin
.ent _GLwinmargin
_GLwinmargin:
    # Line 72
    li	$v0,2
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-18060
    beq	$at,$v0,.L0f127910
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 74
    li	$v0,-5
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f127910:
    # Line 76
    la	$t9,_GLallocSizeHints
    ld	$a0,16($sp)
    sd	$ra,32($sp)
    bal _GLallocSizeHints
    li	$a1,256
    ld	$a3,16($sp)
    # Line 79
    move	$v0,$zero
    # Line 77
    ld	$a4,0($sp)
    lw	$ra,96($a3)
    ld	$gp,24($sp)
    # Line 78
    ld	$a0,8($sp)
    # Line 77
    sw	$a4,60($ra)
    # Line 79
    ld	$ra,32($sp)
    # Line 78
    lw	$a3,96($a3)
    # Line 79
    addiu	$sp,$sp,80
    jr	$ra
    # Line 78
    sw	$a0,64($a3)
.end _GLwinmargin

# Function: _GLwinaspect
# Declared: Line 82 (Source lines: 83-89)
# Address: 0x0f127954 - 0x0f1279e4 (Size: 144 bytes, Frame: 208)
.globl _GLwinaspect
.ent _GLwinaspect
_GLwinaspect:
    # Line 83
    li	$v0,2
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-18188
    beq	$at,$v0,.L0f127990
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 85
    li	$v0,-5
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f127990:
    # Line 86
    la	$t9,_GLallocSizeHints
    ld	$a0,16($sp)
    sd	$ra,32($sp)
    bal _GLallocSizeHints
    li	$a1,128
    ld	$a3,16($sp)
    # Line 87
    ld	$ra,0($sp)
    lw	$v0,96($a3)
    sw	$ra,52($v0)
    lw	$at,96($a3)
    sw	$ra,44($at)
    # Line 88
    ld	$a0,8($sp)
    lw	$a4,96($a3)
    ld	$gp,24($sp)
    # Line 89
    move	$v0,$zero
    # Line 88
    sw	$a0,56($a4)
    # Line 89
    ld	$ra,32($sp)
    # Line 88
    lw	$a3,96($a3)
    # Line 89
    addiu	$sp,$sp,80
    jr	$ra
    # Line 88
    sw	$a0,48($a3)
.end _GLwinaspect

# Function: _GLstrdup
# Declared: Line 92 (Source lines: 93-96)
# Address: 0x0f1279e4 - 0x0f127a4c (Size: 104 bytes, Frame: 48)
.globl _GLstrdup
.ent _GLstrdup
_GLstrdup:
    # Line 93
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-18332 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 94
    la	$t9,strlen
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 93
    move	$s8,$a0
    # Line 94
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    addiu	$a0,$v0,1
    jalr	$t9
    addiu	$a1,$a1,22824
    # Line 95
    la	$t9,strcpy
    # Line 94
    move	$a0,$v0
    sd	$v0,24($sp)
    # Line 95
    jalr	$t9
    move	$a1,$s8
    ld	$v0,24($sp)
    # Line 96
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLstrdup

# Function: MakeInstance
# Declared: Line 99 (Source lines: 100-119)
# Address: 0x0f127a4c - 0x0f127b6c (Size: 288 bytes, Frame: 192)
.ent MakeInstance
MakeInstance:
    # Line 100
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    la	$s1,__libc_attr
    lbu	$a3,0($a0)
    lw	$at,0($s1)
    sll	$v0,$a3,0x2
    addu	$at,$at,$v0
    lw	$at,4($at)
    sd	$s2,16($sp)
    sd	$s0,0($sp)
    andi	$at,$at,0x1
    beqz	$at,.L0f127a9c
    move	$s0,$a0
    # Line 105
    la	$t9,tolower
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$a3
    ld	$ra,32($sp)
    andi	$a3,$v0,0xff
    sb	$a3,0($s0)
.L0f127a9c:
    sd	$s4,24($sp)
    # Line 106
    move	$s2,$s0
    beqz	$a3,.L0f127b34
    move	$a0,$zero
    sd	$ra,32($sp)
    b	.L0f127ad8
    li	$s4,32
.L0f127ab8:
    # Line 108
    move	$a0,$a3
    jalr	$t9
    addiu	$s2,$s2,1
    sb	$v0,-1($s2)
.L0f127ac8:
    # Line 116
    move	$a0,$zero
.L0f127acc:
    # Line 106
    lbu	$a3,1($s0)
.L0f127ad0:
    beqz	$a3,.L0f127b2c
    addiu	$s0,$s0,1
.L0f127ad8:
    beqz	$a0,.L0f127afc
    # Line 113
    sll	$v0,$a3,0x2
    # Line 106
    lw	$v1,0($s1)
    sll	$a1,$a3,0x2
    addu	$v1,$v1,$a1
    lw	$v1,4($v1)
    andi	$v1,$v1,0x2
    bnez	$v1,.L0f127ab8
    # Line 108
    la	$t9,toupper
.L0f127afc:
    li	$v1,45
    # Line 110
    beq	$s4,$a3,.L0f127b4c
    # Line 111
    li	$a0,1
    # Line 113
    lw	$at,0($s1)
    addu	$at,$at,$v0
    lw	$at,4($at)
    andi	$at,$at,0x4007
    beqz	$at,.L0f127b54
    nop
.L0f127b20:
    # Line 114
    sb	$a3,0($s2)
.L0f127b24:
    b	.L0f127ac8
    addiu	$s2,$s2,1
.L0f127b2c:
    ld	$s4,24($sp)
    ld	$ra,32($sp)
.L0f127b34:
    # Line 119
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 118
    sb	$zero,0($s2)
    # Line 119
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f127b4c:
    # Line 112
    b	.L0f127ad0
    # Line 106
    lbu	$a3,1($s0)
.L0f127b54:
    # Line 113
    beq	$v1,$a3,.L0f127b20
    li	$a1,95
    bne	$a1,$a3,.L0f127acc
    # Line 116
    move	$a0,$zero
    b	.L0f127b24
    # Line 114
    sb	$a3,0($s2)
.end MakeInstance

# Function: _GLappname
# Declared: Line 121 (Source lines: 122-133)
# Address: 0x0f127b6c - 0x0f127c08 (Size: 156 bytes, Frame: 48)
.globl _GLappname
.ent _GLappname
_GLappname:
    # Line 122
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-18724 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 125
    la	$t9,_GLstrdup
    sd	$ra,0($sp)
    bal _GLstrdup
    sd	$s0,16($sp)
    # Line 127
    la	$t9,sub_0f120000
    # Line 125
    move	$a0,$v0
    la	$s0,_GLappinstance
    # Line 127
    addiu	$t9,$t9,31308
    bal _GLstrdup
    # Line 125
    sw	$v0,0($s0)
    # Line 129
    la	$t9,_GLstrdup
    bal _GLstrdup
    lw	$a0,0($s0)
    la	$at,__libc_attr
    lbu	$a0,0($v0)
    lw	$at,0($at)
    move	$s0,$v0
    sll	$v0,$a0,0x2
    addu	$at,$at,$v0
    lw	$at,4($at)
    andi	$at,$at,0x2
    beqz	$at,.L0f127bf0
    ld	$ra,0($sp)
    # Line 131
    la	$t9,toupper
    jalr	$t9
    nop
    sb	$v0,0($s0)
    ld	$ra,0($sp)
.L0f127bf0:
    # Line 132
    la	$v0,_GLappclass
    ld	$gp,8($sp)
    sw	$s0,0($v0)
    # Line 133
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLappname

# Function: _GLwinname
# Declared: Line 135 (Source lines: 136-144)
# Address: 0x0f127c08 - 0x0f127cc4 (Size: 188 bytes, Frame: 192)
.globl _GLwinname
.ent _GLwinname
_GLwinname:
    # Line 136
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$s5,16($sp)
    move	$s5,$a1
    sd	$gp,24($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-18880 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 137
    la	$t9,XAllocClassHint
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 136
    move	$s0,$a0
    # Line 138
    la	$t9,_GLstrdup
    # Line 137
    move	$s1,$v0
    # Line 138
    bal _GLstrdup
    move	$a0,$s5
    la	$t9,sub_0f120000
    move	$a0,$v0
    sw	$v0,104($s0)
    addiu	$t9,$t9,31308
    bal _GLstrdup
    ld	$s5,16($sp)
    # Line 139
    la	$t9,XStoreName
    lw	$a2,104($s0)
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 140
    la	$at,_GLappclass
    lw	$at,0($at)
    sw	$at,4($s1)
    # Line 141
    lw	$ra,104($s0)
    # Line 142
    la	$t9,XSetClassHint
    # Line 141
    sw	$ra,0($s1)
    # Line 142
    move	$a2,$s1
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 143
    la	$t9,XFree
    move	$a0,$s1
    jalr	$t9
    ld	$s0,0($sp)
    # Line 144
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end _GLwinname

# Function: _GLiconwindow
# Declared: Line 146 (Source lines: 147-153)
# Address: 0x0f127cc4 - 0x0f127d44 (Size: 128 bytes, Frame: 48)
.globl _GLiconwindow
.ent _GLiconwindow
_GLiconwindow:
    # Line 147
    li	$v0,2
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    sd	$gp,16($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-19068
    beq	$at,$v0,.L0f127cfc
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 149
    li	$v0,-5
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f127cfc:
    # Line 151
    li	$a1,8
    ld	$a0,0($sp)
    sd	$ra,24($sp)
    la	$t9,_GLallocWMHints
    # Line 150
    ld	$a3,8($sp)
    li	$a2,3
    # Line 151
    bal _GLallocWMHints
    # Line 150
    sb	$a2,44($a3)
    # Line 152
    ld	$at,0($sp)
    ld	$ra,8($sp)
    lw	$at,100($at)
    lw	$ra,64($ra)
    sw	$ra,16($at)
    # Line 153
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLiconwindow

# Function: GetMwmHints
# Declared: Line 172 (Source lines: 173-198)
# Address: 0x0f127d44 - 0x0f127e10 (Size: 204 bytes, Frame: 224)
.ent GetMwmHints
GetMwmHints:
    # Line 180
    move	$a5,$zero
    li	$a4,4
    move	$a3,$zero
    # Line 173
    move	$t0,$a0
    addiu	$sp,$sp,-96
    # Line 180
    addiu	$a7,$sp,36
    sd	$ra,56($sp)
    sd	$s8,64($sp)
    # Line 173
    move	$s8,$a1
    # Line 174
    sw	$zero,32($sp)
    # Line 180
    addiu	$a6,$sp,32
    # Line 178
    lw	$a2,12($a0)
    # Line 180
    addiu	$at,$sp,40
    addiu	$v0,$sp,44
    # Line 178
    lw	$a2,0($a2)
    # Line 180
    addiu	$v1,$sp,48
    la	$t9,XGetWindowProperty
    # Line 178
    lw	$a2,24($a2)
    # Line 180
    lw	$a1,64($t0)
    lw	$a0,4($a0)
    # Line 178
    lw	$a2,20($a2)
    # Line 180
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    sw	$at,4($sp)
    sw	$a6,28($sp)
    jalr	$t9
    move	$a6,$a2
    lw	$a1,32($sp)
    beqz	$a1,.L0f127df8
    # Line 197
    la	$t9,bzero
    # Line 194
    lw	$a6,0($a1)
    sw	$a6,0($s8)
    lw	$a5,4($a1)
    sw	$a5,4($s8)
    lw	$a4,8($a1)
    sw	$a4,8($s8)
    lw	$a3,12($a1)
    # Line 195
    la	$t9,XFree
    # Line 194
    sw	$a3,12($s8)
    # Line 195
    jalr	$t9
    lw	$a0,32($sp)
    ld	$s8,64($sp)
    ld	$ra,56($sp)
.L0f127df0:
    # Line 198
    jr	$ra
    addiu	$sp,$sp,96
.L0f127df8:
    # Line 197
    move	$a0,$s8
    jalr	$t9
    li	$a1,16
    ld	$s8,64($sp)
    b	.L0f127df0
    ld	$ra,56($sp)
.end GetMwmHints

# Function: _GLsetwmfunction
# Declared: Line 200 (Source lines: 201-214)
# Address: 0x0f127e10 - 0x0f127ed8 (Size: 200 bytes, Frame: 208)
.globl _GLsetwmfunction
.ent _GLsetwmfunction
_GLsetwmfunction:
    # Line 201
    addiu	$sp,$sp,-80
    # Line 203
    lw	$v0,12($a0)
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    lw	$v0,0($v0)
    sd	$gp,40($sp)
    # Line 201
    lui	$v1,0xfff1
    # Line 203
    lw	$v0,24($v0)
    # Line 201
    addiu	$v1,$v1,-19400
    # Line 203
    lw	$at,108($a0)
    lw	$v0,20($v0)
    # Line 201
    # addu	gp,t9,v1 (gp setup)
    # Line 203
    bne	$at,$a1,.L0f127e54
    sd	$v0,16($sp)
    ld	$gp,40($sp)
    # Line 206
    jr	$ra
    addiu	$sp,$sp,80
.L0f127e54:
    # Line 208
    addiu	$a1,$sp,0
    sd	$ra,48($sp)
    ld	$a3,32($sp)
    la	$t9,sub_0f120000
    # Line 207
    ld	$a2,24($sp)
    # Line 208
    move	$a0,$a3
    addiu	$t9,$t9,32068
    bal _GLiconwindow
    # Line 207
    sw	$a2,108($a3)
    # Line 211
    li	$a7,4
    addiu	$a6,$sp,0
    move	$a5,$zero
    li	$a4,32
    la	$t9,XChangeProperty
    ld	$a0,32($sp)
    # Line 209
    ld	$t0,24($sp)
    # Line 210
    lw	$a1,0($sp)
    # Line 211
    ld	$a2,16($sp)
    # Line 209
    sw	$t0,4($sp)
    # Line 210
    ori	$a1,$a1,0x1
    sw	$a1,0($sp)
    # Line 211
    move	$a3,$a2
    lw	$a1,64($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 213
    la	$t9,XFlush
    ld	$a0,32($sp)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 214
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end _GLsetwmfunction

# Function: _GLsetwmdecor
# Declared: Line 216 (Source lines: 217-227)
# Address: 0x0f127ed8 - 0x0f127f80 (Size: 168 bytes, Frame: 208)
.globl _GLsetwmdecor
.ent _GLsetwmdecor
_GLsetwmdecor:
    # Line 217
    addiu	$sp,$sp,-80
    sd	$s8,32($sp)
    move	$s8,$a1
    # Line 221
    addiu	$a1,$sp,0
    sd	$s0,16($sp)
    # Line 217
    move	$s0,$a0
    # Line 219
    lw	$at,12($a0)
    sd	$gp,40($sp)
    # Line 217
    lui	$v0,0xfff1
    # Line 219
    lw	$at,0($at)
    # Line 217
    addiu	$v0,$v0,-19600
    # addu	gp,t9,v0 (gp setup)
    # Line 219
    lw	$at,24($at)
    # Line 221
    la	$t9,sub_0f120000
    sd	$ra,24($sp)
    # Line 219
    lw	$at,20($at)
    # Line 221
    addiu	$t9,$t9,32068
    bal _GLiconwindow
    sd	$at,48($sp)
    # Line 224
    li	$a7,4
    addiu	$a6,$sp,0
    move	$a5,$zero
    li	$a4,32
    # Line 222
    sw	$s8,8($sp)
    # Line 223
    lw	$v1,0($sp)
    # Line 224
    la	$t9,XChangeProperty
    ld	$a2,48($sp)
    # Line 223
    ori	$v1,$v1,0x2
    sw	$v1,0($sp)
    # Line 224
    move	$a3,$a2
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 226
    la	$t9,XFlush
    lw	$a0,4($s0)
    jalr	$t9
    ld	$s8,32($sp)
    # Line 227
    ld	$ra,24($sp)
    ld	$gp,40($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end _GLsetwmdecor

