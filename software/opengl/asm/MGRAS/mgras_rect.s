# Source: ../MGRAS/mgras_rect.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_rect.c
# Total Functions: 8

.text

# Function: __glMgrim_Rectd
# Declared: Line 26 (Source lines: 27-36)
# Address: 0x0daa6fd0 - 0x0daa70b8 (Size: 232 bytes, Frame: 208)
.globl __glMgrim_Rectd
.ent __glMgrim_Rectd
__glMgrim_Rectd:
    # Line 27
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sdc1	$f24,0($sp)
    mov.d	$f24,$f15
    sdc1	$f26,16($sp)
    mov.d	$f26,$f14
    sdc1	$f20,24($sp)
    mov.d	$f20,$f13
    sdc1	$f22,8($sp)
    mov.d	$f22,$f12
    sd	$gp,32($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,30408
    beq	$at,$v0,.L0daa708c
    addu	$gp,$t9,$v1
    # Line 30
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 31
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    mov.d	$f12,$f22
    jal	__glMgrim_Vertex2d
    mov.d	$f13,$f20
    # Line 32
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    mov.d	$f12,$f26
    jal	__glMgrim_Vertex2d
    mov.d	$f13,$f20
    # Line 33
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    mov.d	$f12,$f26
    jal	__glMgrim_Vertex2d
    mov.d	$f13,$f24
    # Line 34
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    mov.d	$f12,$f22
    jal	__glMgrim_Vertex2d
    mov.d	$f13,$f24
    # Line 35
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,32($sp)
    # Line 36
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ld	$ra,40($sp)
    ldc1	$f24,0($sp)
    ldc1	$f26,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa708c:
    # Line 28
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ld	$ra,40($sp)
    ldc1	$f24,0($sp)
    ldc1	$f26,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_Rectd

# Function: __glMgrim_Rectdv
# Declared: Line 38 (Source lines: 39-48)
# Address: 0x0daa70b8 - 0x0daa7180 (Size: 200 bytes, Frame: 48)
.globl __glMgrim_Rectdv
.ent __glMgrim_Rectdv
__glMgrim_Rectdv:
    # Line 39
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s5,0($sp)
    move	$s5,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,30176
    beq	$at,$v0,.L0daa715c
    addu	$gp,$t9,$v1
    # Line 42
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 43
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    ldc1	$f13,8($s1)
    jal	__glMgrim_Vertex2d
    ldc1	$f12,0($s1)
    # Line 44
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    ldc1	$f13,8($s1)
    jal	__glMgrim_Vertex2d
    ldc1	$f12,0($s5)
    # Line 45
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    ldc1	$f13,8($s5)
    jal	__glMgrim_Vertex2d
    ldc1	$f12,0($s5)
    # Line 46
    # lw $t9, -18240($gp) # &__glMgrim_Vertex2d
    ldc1	$f13,8($s5)
    jal	__glMgrim_Vertex2d
    ldc1	$f12,0($s1)
    # Line 47
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,8($sp)
    # Line 48
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa715c:
    # Line 40
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Rectdv

# Function: __glMgrim_Rectf
# Declared: Line 50 (Source lines: 51-60)
# Address: 0x0daa7180 - 0x0daa7268 (Size: 232 bytes, Frame: 208)
.globl __glMgrim_Rectf
.ent __glMgrim_Rectf
__glMgrim_Rectf:
    # Line 51
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sdc1	$f24,0($sp)
    mov.s	$f24,$f15
    sdc1	$f26,16($sp)
    mov.s	$f26,$f14
    sdc1	$f20,24($sp)
    mov.s	$f20,$f13
    sdc1	$f22,8($sp)
    mov.s	$f22,$f12
    sd	$gp,32($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,29976
    beq	$at,$v0,.L0daa723c
    addu	$gp,$t9,$v1
    # Line 54
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 55
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    mov.s	$f12,$f22
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f20
    # Line 56
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    mov.s	$f12,$f26
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f20
    # Line 57
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    mov.s	$f12,$f26
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f24
    # Line 58
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    mov.s	$f12,$f22
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f24
    # Line 59
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,32($sp)
    # Line 60
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ld	$ra,40($sp)
    ldc1	$f24,0($sp)
    ldc1	$f26,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa723c:
    # Line 52
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ld	$ra,40($sp)
    ldc1	$f24,0($sp)
    ldc1	$f26,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_Rectf

# Function: __glMgrim_Rectfv
# Declared: Line 62 (Source lines: 63-72)
# Address: 0x0daa7268 - 0x0daa7330 (Size: 200 bytes, Frame: 48)
.globl __glMgrim_Rectfv
.ent __glMgrim_Rectfv
__glMgrim_Rectfv:
    # Line 63
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s5,0($sp)
    move	$s5,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,29744
    beq	$at,$v0,.L0daa730c
    addu	$gp,$t9,$v1
    # Line 66
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 67
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    lwc1	$f13,4($s1)
    jal	__glMgrim_Vertex2f
    lwc1	$f12,0($s1)
    # Line 68
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    lwc1	$f13,4($s1)
    jal	__glMgrim_Vertex2f
    lwc1	$f12,0($s5)
    # Line 69
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    lwc1	$f13,4($s5)
    jal	__glMgrim_Vertex2f
    lwc1	$f12,0($s5)
    # Line 70
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    lwc1	$f13,4($s5)
    jal	__glMgrim_Vertex2f
    lwc1	$f12,0($s1)
    # Line 71
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,8($sp)
    # Line 72
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa730c:
    # Line 64
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Rectfv

# Function: __glMgrim_Recti
# Declared: Line 74 (Source lines: 75-84)
# Address: 0x0daa7330 - 0x0daa7418 (Size: 232 bytes, Frame: 208)
.globl __glMgrim_Recti
.ent __glMgrim_Recti
__glMgrim_Recti:
    # Line 75
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s1,0($sp)
    move	$s1,$a3
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$s2,24($sp)
    move	$s2,$a1
    sd	$s3,32($sp)
    move	$s3,$a0
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,29544
    beq	$at,$v0,.L0daa73ec
    addu	$gp,$t9,$v1
    # Line 78
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 79
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    move	$a0,$s3
    jal	__glMgrim_Vertex2i
    move	$a1,$s2
    # Line 80
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    move	$a0,$s0
    jal	__glMgrim_Vertex2i
    move	$a1,$s2
    # Line 81
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    move	$a0,$s0
    jal	__glMgrim_Vertex2i
    move	$a1,$s1
    # Line 82
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    move	$a0,$s3
    jal	__glMgrim_Vertex2i
    move	$a1,$s1
    # Line 83
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,16($sp)
    # Line 84
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa73ec:
    # Line 76
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_Recti

# Function: __glMgrim_Rectiv
# Declared: Line 86 (Source lines: 87-96)
# Address: 0x0daa7418 - 0x0daa74e0 (Size: 200 bytes, Frame: 48)
.globl __glMgrim_Rectiv
.ent __glMgrim_Rectiv
__glMgrim_Rectiv:
    # Line 87
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s5,0($sp)
    move	$s5,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,29312
    beq	$at,$v0,.L0daa74bc
    addu	$gp,$t9,$v1
    # Line 90
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 91
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    lw	$a1,4($s1)
    jal	__glMgrim_Vertex2i
    lw	$a0,0($s1)
    # Line 92
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    lw	$a1,4($s1)
    jal	__glMgrim_Vertex2i
    lw	$a0,0($s5)
    # Line 93
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    lw	$a1,4($s5)
    jal	__glMgrim_Vertex2i
    lw	$a0,0($s5)
    # Line 94
    # lw $t9, -18224($gp) # &__glMgrim_Vertex2i
    lw	$a1,4($s5)
    jal	__glMgrim_Vertex2i
    lw	$a0,0($s1)
    # Line 95
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,8($sp)
    # Line 96
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa74bc:
    # Line 88
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Rectiv

# Function: __glMgrim_Rects
# Declared: Line 98 (Source lines: 99-108)
# Address: 0x0daa74e0 - 0x0daa75c8 (Size: 232 bytes, Frame: 208)
.globl __glMgrim_Rects
.ent __glMgrim_Rects
__glMgrim_Rects:
    # Line 99
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s1,0($sp)
    move	$s1,$a3
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$s2,24($sp)
    move	$s2,$a1
    sd	$s3,32($sp)
    move	$s3,$a0
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,29112
    beq	$at,$v0,.L0daa759c
    addu	$gp,$t9,$v1
    # Line 102
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 103
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    move	$a0,$s3
    jal	__glMgrim_Vertex2s
    move	$a1,$s2
    # Line 104
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    move	$a0,$s0
    jal	__glMgrim_Vertex2s
    move	$a1,$s2
    # Line 105
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    move	$a0,$s0
    jal	__glMgrim_Vertex2s
    move	$a1,$s1
    # Line 106
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    move	$a0,$s3
    jal	__glMgrim_Vertex2s
    move	$a1,$s1
    # Line 107
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,16($sp)
    # Line 108
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa759c:
    # Line 100
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_Rects

# Function: __glMgrim_Rectsv
# Declared: Line 110 (Source lines: 111-120)
# Address: 0x0daa75c8 - 0x0daa7690 (Size: 200 bytes, Frame: 48)
.globl __glMgrim_Rectsv
.ent __glMgrim_Rectsv
__glMgrim_Rectsv:
    # Line 111
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s5,0($sp)
    move	$s5,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,28880
    beq	$at,$v0,.L0daa766c
    addu	$gp,$t9,$v1
    # Line 114
    # lw $t9, -31468($gp) # &__glMgrim_Begin
    jal	__glMgrim_Begin
    li	$a0,9
    # Line 115
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    lh	$a1,2($s1)
    jal	__glMgrim_Vertex2s
    lh	$a0,0($s1)
    # Line 116
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    lh	$a1,2($s1)
    jal	__glMgrim_Vertex2s
    lh	$a0,0($s5)
    # Line 117
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    lh	$a1,2($s5)
    jal	__glMgrim_Vertex2s
    lh	$a0,0($s5)
    # Line 118
    # lw $t9, -18216($gp) # &__glMgrim_Vertex2s
    lh	$a1,2($s5)
    jal	__glMgrim_Vertex2s
    lh	$a0,0($s1)
    # Line 119
    # lw $t9, -31464($gp) # &__glMgrim_End
    jal	__glMgrim_End
    nop
    ld	$gp,8($sp)
    # Line 120
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa766c:
    # Line 112
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Rectsv

