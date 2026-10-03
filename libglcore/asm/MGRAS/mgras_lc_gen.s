# Source: mgras_lc_gen.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c mgras_lc_gen.c
# Total Functions: 132

.text

# Function: __glMgrlc_Color3b
# Declared: Line 7 (Source lines: 7-14)
# Address: 0x0dbd35b8 - 0x0dbd3654 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Color3b
.ent __glMgrlc_Color3b
__glMgrlc_Color3b:
    # Line 7
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 8
    lw	$v0,4128($zero)
    # Line 7
    lui	$v1,0x3
    addiu	$v1,$v1,-20256
    # Line 8
    slti	$at,$v0,2
    bnez	$at,.L0dbd362c
    # Line 7
    addu	$gp,$t9,$v1
.L0dbd35e0:
    # Line 8
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 10
    sb	$s8,4($at)
    # Line 13
    addiu	$s8,$v0,-2
    # Line 9
    lui	$v1,0x3c80
    ori	$v1,$v1,0x203
    # Line 12
    sb	$a2,6($at)
    # Line 11
    sb	$a1,5($at)
    # Line 9
    sw	$v1,0($at)
    # Line 13
    sw	$s8,4128($zero)
    # Line 14
    ld	$s8,0($sp)
    # Line 13
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 14
    addiu	$sp,$sp,80
    # Line 13
    addiu	$a3,$a3,8
    addiu	$a4,$a4,2
    sw	$a4,4140($zero)
    # Line 14
    jr	$ra
    # Line 13
    sw	$a3,4136($zero)
.L0dbd362c:
    sd	$a1,24($sp)
    # Line 8
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd35e0
    ld	$ra,32($sp)
.end __glMgrlc_Color3b

# Function: __glMgrlc_Color3bv
# Declared: Line 15 (Source lines: 15-22)
# Address: 0x0dbd3654 - 0x0dbd36ec (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Color3bv
.ent __glMgrlc_Color3bv
__glMgrlc_Color3bv:
    # Line 15
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 16
    lw	$v0,4128($zero)
    # Line 15
    lui	$v1,0x3
    addiu	$v1,$v1,-20412
    # Line 16
    slti	$at,$v0,2
    bnez	$at,.L0dbd36d4
    # Line 15
    addu	$gp,$t9,$v1
.L0dbd367c:
    # Line 16
    lw	$v1,4136($zero)
    # Line 17
    lui	$at,0x3c80
    ori	$at,$at,0x203
    sw	$at,0($v1)
    # Line 18
    lb	$a2,0($s8)
    sb	$a2,4($v1)
    # Line 19
    lb	$a1,1($s8)
    sb	$a1,5($v1)
    # Line 20
    lb	$at,2($s8)
    ld	$gp,8($sp)
    # Line 21
    addiu	$s8,$v0,-2
    # Line 20
    sb	$at,6($v1)
    # Line 21
    sw	$s8,4128($zero)
    # Line 22
    ld	$s8,0($sp)
    # Line 21
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 22
    addiu	$sp,$sp,48
    # Line 21
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 22
    jr	$ra
    # Line 21
    sw	$a1,4136($zero)
.L0dbd36d4:
    # Line 16
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd367c
    ld	$ra,16($sp)
.end __glMgrlc_Color3bv

# Function: __glMgrlc_Color3d
# Declared: Line 23 (Source lines: 23-30)
# Address: 0x0dbd36ec - 0x0dbd379c (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_Color3d
.ent __glMgrlc_Color3d
__glMgrlc_Color3d:
    # Line 23
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 24
    lw	$v0,4128($zero)
    # Line 23
    lui	$v1,0x3
    addiu	$v1,$v1,-20564
    # Line 24
    slti	$at,$v0,4
    bnez	$at,.L0dbd3774
    # Line 23
    addu	$gp,$t9,$v1
.L0dbd371c:
    ld	$gp,8($sp)
    # Line 26
    cvt.s.d	$f2,$f30
    # Line 30
    ldc1	$f30,0($sp)
    # Line 29
    addiu	$at,$v0,-4
    # Line 28
    cvt.s.d	$f0,$f5
    # Line 25
    lui	$a0,0x2000
    # Line 24
    lw	$v1,4136($zero)
    # Line 27
    cvt.s.d	$f1,$f4
    # Line 25
    ori	$a0,$a0,0x20c
    sw	$a0,0($v1)
    # Line 28
    swc1	$f0,12($v1)
    # Line 27
    swc1	$f1,8($v1)
    # Line 26
    swc1	$f2,4($v1)
    # Line 29
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 30
    addiu	$sp,$sp,80
    # Line 29
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 30
    jr	$ra
    # Line 29
    sw	$a0,4136($zero)
.L0dbd3774:
    sdc1	$f4,24($sp)
    # Line 24
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd371c
    ld	$ra,32($sp)
.end __glMgrlc_Color3d

# Function: __glMgrlc_Color3dv
# Declared: Line 31 (Source lines: 31-38)
# Address: 0x0dbd379c - 0x0dbd3840 (Size: 164 bytes, Frame: 48)
.globl __glMgrlc_Color3dv
.ent __glMgrlc_Color3dv
__glMgrlc_Color3dv:
    # Line 31
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 32
    lw	$v0,4128($zero)
    # Line 31
    lui	$v1,0x3
    addiu	$v1,$v1,-20740
    # Line 32
    slti	$at,$v0,4
    bnez	$at,.L0dbd3828
    # Line 31
    addu	$gp,$t9,$v1
.L0dbd37c4:
    # Line 32
    lw	$at,4136($zero)
    # Line 33
    lui	$v1,0x2000
    ori	$v1,$v1,0x20c
    sw	$v1,0($at)
    # Line 34
    ldc1	$f2,0($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($at)
    # Line 35
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($at)
    # Line 36
    ldc1	$f0,16($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 37
    addiu	$s8,$v0,-4
    # Line 36
    swc1	$f0,12($at)
    # Line 37
    sw	$s8,4128($zero)
    # Line 38
    ld	$s8,0($sp)
    # Line 37
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 38
    addiu	$sp,$sp,48
    # Line 37
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 38
    jr	$ra
    # Line 37
    sw	$a1,4136($zero)
.L0dbd3828:
    # Line 32
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd37c4
    ld	$ra,16($sp)
.end __glMgrlc_Color3dv

# Function: __glMgrlc_Color3f
# Declared: Line 39 (Source lines: 39-46)
# Address: 0x0dbd3840 - 0x0dbd38e4 (Size: 164 bytes, Frame: 208)
.globl __glMgrlc_Color3f
.ent __glMgrlc_Color3f
__glMgrlc_Color3f:
    # Line 39
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 40
    lw	$v0,4128($zero)
    # Line 39
    lui	$v1,0x3
    addiu	$v1,$v1,-20904
    # Line 40
    slti	$at,$v0,4
    bnez	$at,.L0dbd38bc
    # Line 39
    addu	$gp,$t9,$v1
.L0dbd3870:
    # Line 40
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 45
    addiu	$at,$v0,-4
    # Line 42
    swc1	$f30,4($v1)
    # Line 46
    ldc1	$f30,0($sp)
    # Line 41
    lui	$a0,0x2000
    ori	$a0,$a0,0x20c
    # Line 44
    swc1	$f5,12($v1)
    # Line 43
    swc1	$f4,8($v1)
    # Line 41
    sw	$a0,0($v1)
    # Line 45
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 46
    addiu	$sp,$sp,80
    # Line 45
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 46
    jr	$ra
    # Line 45
    sw	$a0,4136($zero)
.L0dbd38bc:
    sdc1	$f4,24($sp)
    # Line 40
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd3870
    ld	$ra,32($sp)
.end __glMgrlc_Color3f

# Function: __glMgrlc_Color3fv
# Declared: Line 47 (Source lines: 47-54)
# Address: 0x0dbd38e4 - 0x0dbd397c (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Color3fv
.ent __glMgrlc_Color3fv
__glMgrlc_Color3fv:
    # Line 47
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 48
    lw	$v0,4128($zero)
    # Line 47
    lui	$v1,0x3
    addiu	$v1,$v1,-21068
    # Line 48
    slti	$at,$v0,4
    bnez	$at,.L0dbd3964
    # Line 47
    addu	$gp,$t9,$v1
.L0dbd390c:
    # Line 48
    lw	$at,4136($zero)
    # Line 49
    lui	$v1,0x2000
    ori	$v1,$v1,0x20c
    sw	$v1,0($at)
    # Line 50
    lwc1	$f2,0($s8)
    swc1	$f2,4($at)
    # Line 51
    lwc1	$f1,4($s8)
    swc1	$f1,8($at)
    # Line 52
    lwc1	$f0,8($s8)
    ld	$gp,8($sp)
    # Line 53
    addiu	$s8,$v0,-4
    # Line 52
    swc1	$f0,12($at)
    # Line 53
    sw	$s8,4128($zero)
    # Line 54
    ld	$s8,0($sp)
    # Line 53
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 54
    addiu	$sp,$sp,48
    # Line 53
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 54
    jr	$ra
    # Line 53
    sw	$a1,4136($zero)
.L0dbd3964:
    # Line 48
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd390c
    ld	$ra,16($sp)
.end __glMgrlc_Color3fv

# Function: __glMgrlc_Color3i
# Declared: Line 55 (Source lines: 55-62)
# Address: 0x0dbd397c - 0x0dbd3a18 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Color3i
.ent __glMgrlc_Color3i
__glMgrlc_Color3i:
    # Line 55
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 56
    lw	$v0,4128($zero)
    # Line 55
    lui	$v1,0x3
    addiu	$v1,$v1,-21220
    # Line 56
    slti	$at,$v0,4
    bnez	$at,.L0dbd39f0
    # Line 55
    addu	$gp,$t9,$v1
.L0dbd39a4:
    # Line 56
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 58
    sw	$s8,4($at)
    # Line 61
    addiu	$s8,$v0,-4
    # Line 57
    lui	$v1,0x3c00
    ori	$v1,$v1,0x20c
    # Line 60
    sw	$a2,12($at)
    # Line 59
    sw	$a1,8($at)
    # Line 57
    sw	$v1,0($at)
    # Line 61
    sw	$s8,4128($zero)
    # Line 62
    ld	$s8,0($sp)
    # Line 61
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 62
    addiu	$sp,$sp,80
    # Line 61
    addiu	$a3,$a3,16
    addiu	$a4,$a4,4
    sw	$a4,4140($zero)
    # Line 62
    jr	$ra
    # Line 61
    sw	$a3,4136($zero)
.L0dbd39f0:
    sd	$a1,24($sp)
    # Line 56
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd39a4
    ld	$ra,32($sp)
.end __glMgrlc_Color3i

# Function: __glMgrlc_Color3iv
# Declared: Line 63 (Source lines: 63-70)
# Address: 0x0dbd3a18 - 0x0dbd3ab0 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Color3iv
.ent __glMgrlc_Color3iv
__glMgrlc_Color3iv:
    # Line 63
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 64
    lw	$v0,4128($zero)
    # Line 63
    lui	$v1,0x3
    addiu	$v1,$v1,-21376
    # Line 64
    slti	$at,$v0,4
    bnez	$at,.L0dbd3a98
    # Line 63
    addu	$gp,$t9,$v1
.L0dbd3a40:
    # Line 64
    lw	$v1,4136($zero)
    # Line 65
    lui	$at,0x3c00
    ori	$at,$at,0x20c
    sw	$at,0($v1)
    # Line 66
    lw	$a2,0($s8)
    sw	$a2,4($v1)
    # Line 67
    lw	$a1,4($s8)
    sw	$a1,8($v1)
    # Line 68
    lw	$at,8($s8)
    ld	$gp,8($sp)
    # Line 69
    addiu	$s8,$v0,-4
    # Line 68
    sw	$at,12($v1)
    # Line 69
    sw	$s8,4128($zero)
    # Line 70
    ld	$s8,0($sp)
    # Line 69
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 70
    addiu	$sp,$sp,48
    # Line 69
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 70
    jr	$ra
    # Line 69
    sw	$a1,4136($zero)
.L0dbd3a98:
    # Line 64
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd3a40
    ld	$ra,16($sp)
.end __glMgrlc_Color3iv

# Function: __glMgrlc_Color3s
# Declared: Line 71 (Source lines: 71-78)
# Address: 0x0dbd3ab0 - 0x0dbd3b4c (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Color3s
.ent __glMgrlc_Color3s
__glMgrlc_Color3s:
    # Line 71
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 72
    lw	$v0,4128($zero)
    # Line 71
    lui	$v1,0x3
    addiu	$v1,$v1,-21528
    # Line 72
    slti	$at,$v0,3
    bnez	$at,.L0dbd3b24
    # Line 71
    addu	$gp,$t9,$v1
.L0dbd3ad8:
    # Line 72
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 74
    sh	$s8,4($at)
    # Line 77
    addiu	$s8,$v0,-3
    # Line 73
    lui	$v1,0x3d00
    ori	$v1,$v1,0x206
    # Line 76
    sh	$a2,8($at)
    # Line 75
    sh	$a1,6($at)
    # Line 73
    sw	$v1,0($at)
    # Line 77
    sw	$s8,4128($zero)
    # Line 78
    ld	$s8,0($sp)
    # Line 77
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 78
    addiu	$sp,$sp,80
    # Line 77
    addiu	$a3,$a3,12
    addiu	$a4,$a4,3
    sw	$a4,4140($zero)
    # Line 78
    jr	$ra
    # Line 77
    sw	$a3,4136($zero)
.L0dbd3b24:
    sd	$a1,24($sp)
    # Line 72
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd3ad8
    ld	$ra,32($sp)
.end __glMgrlc_Color3s

# Function: __glMgrlc_Color3sv
# Declared: Line 79 (Source lines: 79-86)
# Address: 0x0dbd3b4c - 0x0dbd3be4 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Color3sv
.ent __glMgrlc_Color3sv
__glMgrlc_Color3sv:
    # Line 79
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 80
    lw	$v0,4128($zero)
    # Line 79
    lui	$v1,0x3
    addiu	$v1,$v1,-21684
    # Line 80
    slti	$at,$v0,3
    bnez	$at,.L0dbd3bcc
    # Line 79
    addu	$gp,$t9,$v1
.L0dbd3b74:
    # Line 80
    lw	$v1,4136($zero)
    # Line 81
    lui	$at,0x3d00
    ori	$at,$at,0x206
    sw	$at,0($v1)
    # Line 82
    lh	$a2,0($s8)
    sh	$a2,4($v1)
    # Line 83
    lh	$a1,2($s8)
    sh	$a1,6($v1)
    # Line 84
    lh	$at,4($s8)
    ld	$gp,8($sp)
    # Line 85
    addiu	$s8,$v0,-3
    # Line 84
    sh	$at,8($v1)
    # Line 85
    sw	$s8,4128($zero)
    # Line 86
    ld	$s8,0($sp)
    # Line 85
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 86
    addiu	$sp,$sp,48
    # Line 85
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 86
    jr	$ra
    # Line 85
    sw	$a1,4136($zero)
.L0dbd3bcc:
    # Line 80
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd3b74
    ld	$ra,16($sp)
.end __glMgrlc_Color3sv

# Function: __glMgrlc_Color3ub
# Declared: Line 87 (Source lines: 87-94)
# Address: 0x0dbd3be4 - 0x0dbd3c80 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Color3ub
.ent __glMgrlc_Color3ub
__glMgrlc_Color3ub:
    # Line 87
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 88
    lw	$v0,4128($zero)
    # Line 87
    lui	$v1,0x3
    addiu	$v1,$v1,-21836
    # Line 88
    slti	$at,$v0,2
    bnez	$at,.L0dbd3c58
    # Line 87
    addu	$gp,$t9,$v1
.L0dbd3c0c:
    # Line 88
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 90
    sb	$s8,4($at)
    # Line 93
    addiu	$s8,$v0,-2
    # Line 89
    lui	$v1,0x3480
    ori	$v1,$v1,0x203
    # Line 92
    sb	$a2,6($at)
    # Line 91
    sb	$a1,5($at)
    # Line 89
    sw	$v1,0($at)
    # Line 93
    sw	$s8,4128($zero)
    # Line 94
    ld	$s8,0($sp)
    # Line 93
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 94
    addiu	$sp,$sp,80
    # Line 93
    addiu	$a3,$a3,8
    addiu	$a4,$a4,2
    sw	$a4,4140($zero)
    # Line 94
    jr	$ra
    # Line 93
    sw	$a3,4136($zero)
.L0dbd3c58:
    sd	$a1,24($sp)
    # Line 88
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd3c0c
    ld	$ra,32($sp)
.end __glMgrlc_Color3ub

# Function: __glMgrlc_Color3ubv
# Declared: Line 95 (Source lines: 95-102)
# Address: 0x0dbd3c80 - 0x0dbd3d18 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Color3ubv
.ent __glMgrlc_Color3ubv
__glMgrlc_Color3ubv:
    # Line 95
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 96
    lw	$v0,4128($zero)
    # Line 95
    lui	$v1,0x3
    addiu	$v1,$v1,-21992
    # Line 96
    slti	$at,$v0,2
    bnez	$at,.L0dbd3d00
    # Line 95
    addu	$gp,$t9,$v1
.L0dbd3ca8:
    # Line 96
    lw	$v1,4136($zero)
    # Line 97
    lui	$at,0x3480
    ori	$at,$at,0x203
    sw	$at,0($v1)
    # Line 98
    lbu	$a2,0($s8)
    sb	$a2,4($v1)
    # Line 99
    lbu	$a1,1($s8)
    sb	$a1,5($v1)
    # Line 100
    lbu	$at,2($s8)
    ld	$gp,8($sp)
    # Line 101
    addiu	$s8,$v0,-2
    # Line 100
    sb	$at,6($v1)
    # Line 101
    sw	$s8,4128($zero)
    # Line 102
    ld	$s8,0($sp)
    # Line 101
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 102
    addiu	$sp,$sp,48
    # Line 101
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 102
    jr	$ra
    # Line 101
    sw	$a1,4136($zero)
.L0dbd3d00:
    # Line 96
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd3ca8
    ld	$ra,16($sp)
.end __glMgrlc_Color3ubv

# Function: __glMgrlc_Color3ui
# Declared: Line 103 (Source lines: 103-110)
# Address: 0x0dbd3d18 - 0x0dbd3db4 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Color3ui
.ent __glMgrlc_Color3ui
__glMgrlc_Color3ui:
    # Line 103
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 104
    lw	$v0,4128($zero)
    # Line 103
    lui	$v1,0x3
    addiu	$v1,$v1,-22144
    # Line 104
    slti	$at,$v0,4
    bnez	$at,.L0dbd3d8c
    # Line 103
    addu	$gp,$t9,$v1
.L0dbd3d40:
    # Line 104
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 106
    sw	$s8,4($at)
    # Line 109
    addiu	$s8,$v0,-4
    # Line 105
    lui	$v1,0x3400
    ori	$v1,$v1,0x20c
    # Line 108
    sw	$a2,12($at)
    # Line 107
    sw	$a1,8($at)
    # Line 105
    sw	$v1,0($at)
    # Line 109
    sw	$s8,4128($zero)
    # Line 110
    ld	$s8,0($sp)
    # Line 109
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 110
    addiu	$sp,$sp,80
    # Line 109
    addiu	$a3,$a3,16
    addiu	$a4,$a4,4
    sw	$a4,4140($zero)
    # Line 110
    jr	$ra
    # Line 109
    sw	$a3,4136($zero)
.L0dbd3d8c:
    sd	$a1,24($sp)
    # Line 104
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd3d40
    ld	$ra,32($sp)
.end __glMgrlc_Color3ui

# Function: __glMgrlc_Color3uiv
# Declared: Line 111 (Source lines: 111-118)
# Address: 0x0dbd3db4 - 0x0dbd3e4c (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Color3uiv
.ent __glMgrlc_Color3uiv
__glMgrlc_Color3uiv:
    # Line 111
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 112
    lw	$v0,4128($zero)
    # Line 111
    lui	$v1,0x3
    addiu	$v1,$v1,-22300
    # Line 112
    slti	$at,$v0,4
    bnez	$at,.L0dbd3e34
    # Line 111
    addu	$gp,$t9,$v1
.L0dbd3ddc:
    # Line 112
    lw	$v1,4136($zero)
    # Line 113
    lui	$at,0x3400
    ori	$at,$at,0x20c
    sw	$at,0($v1)
    # Line 114
    lw	$a2,0($s8)
    sw	$a2,4($v1)
    # Line 115
    lw	$a1,4($s8)
    sw	$a1,8($v1)
    # Line 116
    lw	$at,8($s8)
    ld	$gp,8($sp)
    # Line 117
    addiu	$s8,$v0,-4
    # Line 116
    sw	$at,12($v1)
    # Line 117
    sw	$s8,4128($zero)
    # Line 118
    ld	$s8,0($sp)
    # Line 117
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 118
    addiu	$sp,$sp,48
    # Line 117
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 118
    jr	$ra
    # Line 117
    sw	$a1,4136($zero)
.L0dbd3e34:
    # Line 112
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd3ddc
    ld	$ra,16($sp)
.end __glMgrlc_Color3uiv

# Function: __glMgrlc_Color3us
# Declared: Line 119 (Source lines: 119-126)
# Address: 0x0dbd3e4c - 0x0dbd3ee8 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Color3us
.ent __glMgrlc_Color3us
__glMgrlc_Color3us:
    # Line 119
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 120
    lw	$v0,4128($zero)
    # Line 119
    lui	$v1,0x3
    addiu	$v1,$v1,-22452
    # Line 120
    slti	$at,$v0,3
    bnez	$at,.L0dbd3ec0
    # Line 119
    addu	$gp,$t9,$v1
.L0dbd3e74:
    # Line 120
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 122
    sh	$s8,4($at)
    # Line 125
    addiu	$s8,$v0,-3
    # Line 121
    lui	$v1,0x3500
    ori	$v1,$v1,0x206
    # Line 124
    sh	$a2,8($at)
    # Line 123
    sh	$a1,6($at)
    # Line 121
    sw	$v1,0($at)
    # Line 125
    sw	$s8,4128($zero)
    # Line 126
    ld	$s8,0($sp)
    # Line 125
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 126
    addiu	$sp,$sp,80
    # Line 125
    addiu	$a3,$a3,12
    addiu	$a4,$a4,3
    sw	$a4,4140($zero)
    # Line 126
    jr	$ra
    # Line 125
    sw	$a3,4136($zero)
.L0dbd3ec0:
    sd	$a1,24($sp)
    # Line 120
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd3e74
    ld	$ra,32($sp)
.end __glMgrlc_Color3us

# Function: __glMgrlc_Color3usv
# Declared: Line 127 (Source lines: 127-134)
# Address: 0x0dbd3ee8 - 0x0dbd3f80 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Color3usv
.ent __glMgrlc_Color3usv
__glMgrlc_Color3usv:
    # Line 127
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 128
    lw	$v0,4128($zero)
    # Line 127
    lui	$v1,0x3
    addiu	$v1,$v1,-22608
    # Line 128
    slti	$at,$v0,3
    bnez	$at,.L0dbd3f68
    # Line 127
    addu	$gp,$t9,$v1
.L0dbd3f10:
    # Line 128
    lw	$v1,4136($zero)
    # Line 129
    lui	$at,0x3500
    ori	$at,$at,0x206
    sw	$at,0($v1)
    # Line 130
    lhu	$a2,0($s8)
    sh	$a2,4($v1)
    # Line 131
    lhu	$a1,2($s8)
    sh	$a1,6($v1)
    # Line 132
    lhu	$at,4($s8)
    ld	$gp,8($sp)
    # Line 133
    addiu	$s8,$v0,-3
    # Line 132
    sh	$at,8($v1)
    # Line 133
    sw	$s8,4128($zero)
    # Line 134
    ld	$s8,0($sp)
    # Line 133
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 134
    addiu	$sp,$sp,48
    # Line 133
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 134
    jr	$ra
    # Line 133
    sw	$a1,4136($zero)
.L0dbd3f68:
    # Line 128
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd3f10
    ld	$ra,16($sp)
.end __glMgrlc_Color3usv

# Function: __glMgrlc_Color4b
# Declared: Line 135 (Source lines: 135-143)
# Address: 0x0dbd3f80 - 0x0dbd4028 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Color4b
.ent __glMgrlc_Color4b
__glMgrlc_Color4b:
    # Line 135
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 136
    lw	$v0,4128($zero)
    # Line 135
    lui	$v1,0x3
    addiu	$v1,$v1,-22760
    # Line 136
    slti	$at,$v0,2
    bnez	$at,.L0dbd3ff8
    # Line 135
    addu	$gp,$t9,$v1
.L0dbd3fa8:
    # Line 136
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 138
    sb	$s8,4($at)
    # Line 142
    addiu	$s8,$v0,-2
    # Line 137
    lui	$v1,0x1c80
    ori	$v1,$v1,0x204
    # Line 141
    sb	$a3,7($at)
    # Line 140
    sb	$a2,6($at)
    # Line 139
    sb	$a1,5($at)
    # Line 137
    sw	$v1,0($at)
    # Line 142
    sw	$s8,4128($zero)
    # Line 143
    ld	$s8,0($sp)
    # Line 142
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 143
    addiu	$sp,$sp,80
    # Line 142
    addiu	$a4,$a4,8
    addiu	$a5,$a5,2
    sw	$a5,4140($zero)
    # Line 143
    jr	$ra
    # Line 142
    sw	$a4,4136($zero)
.L0dbd3ff8:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 136
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd3fa8
    ld	$ra,40($sp)
.end __glMgrlc_Color4b

# Function: __glMgrlc_Color4bv
# Declared: Line 144 (Source lines: 144-152)
# Address: 0x0dbd4028 - 0x0dbd40c8 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Color4bv
.ent __glMgrlc_Color4bv
__glMgrlc_Color4bv:
    # Line 144
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 145
    lw	$v0,4128($zero)
    # Line 144
    lui	$v1,0x3
    addiu	$v1,$v1,-22928
    # Line 145
    slti	$at,$v0,2
    bnez	$at,.L0dbd40b0
    # Line 144
    addu	$gp,$t9,$v1
.L0dbd4050:
    # Line 145
    lw	$v1,4136($zero)
    # Line 146
    lui	$a1,0x1c80
    ori	$a1,$a1,0x204
    sw	$a1,0($v1)
    # Line 147
    lb	$at,0($s8)
    sb	$at,4($v1)
    # Line 148
    lb	$a2,1($s8)
    sb	$a2,5($v1)
    # Line 149
    lb	$a1,2($s8)
    sb	$a1,6($v1)
    # Line 150
    lb	$at,3($s8)
    ld	$gp,8($sp)
    # Line 151
    addiu	$s8,$v0,-2
    # Line 150
    sb	$at,7($v1)
    # Line 151
    sw	$s8,4128($zero)
    # Line 152
    ld	$s8,0($sp)
    # Line 151
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 152
    addiu	$sp,$sp,48
    # Line 151
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 152
    jr	$ra
    # Line 151
    sw	$a1,4136($zero)
.L0dbd40b0:
    # Line 145
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4050
    ld	$ra,16($sp)
.end __glMgrlc_Color4bv

# Function: __glMgrlc_Color4d
# Declared: Line 153 (Source lines: 153-161)
# Address: 0x0dbd40c8 - 0x0dbd4188 (Size: 192 bytes, Frame: 208)
.globl __glMgrlc_Color4d
.ent __glMgrlc_Color4d
__glMgrlc_Color4d:
    # Line 153
    mov.d	$f6,$f15
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 154
    lw	$v0,4128($zero)
    # Line 153
    lui	$v1,0x3
    addiu	$v1,$v1,-23088
    # Line 154
    slti	$at,$v0,5
    bnez	$at,.L0dbd4158
    # Line 153
    addu	$gp,$t9,$v1
.L0dbd40fc:
    # Line 158
    cvt.s.d	$f1,$f5
    ld	$gp,8($sp)
    # Line 156
    cvt.s.d	$f3,$f30
    # Line 161
    ldc1	$f30,0($sp)
    # Line 160
    addiu	$at,$v0,-5
    # Line 159
    cvt.s.d	$f0,$f6
    # Line 154
    lw	$v1,4136($zero)
    # Line 155
    li	$a0,528
    # Line 157
    cvt.s.d	$f2,$f4
    # Line 155
    sw	$a0,0($v1)
    # Line 159
    swc1	$f0,16($v1)
    # Line 158
    swc1	$f1,12($v1)
    # Line 157
    swc1	$f2,8($v1)
    # Line 156
    swc1	$f3,4($v1)
    # Line 160
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 161
    addiu	$sp,$sp,80
    # Line 160
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 161
    jr	$ra
    # Line 160
    sw	$a0,4136($zero)
.L0dbd4158:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 154
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd40fc
    ld	$ra,40($sp)
.end __glMgrlc_Color4d

# Function: __glMgrlc_Color4dv
# Declared: Line 162 (Source lines: 162-170)
# Address: 0x0dbd4188 - 0x0dbd4234 (Size: 172 bytes, Frame: 48)
.globl __glMgrlc_Color4dv
.ent __glMgrlc_Color4dv
__glMgrlc_Color4dv:
    # Line 162
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 163
    lw	$v0,4128($zero)
    # Line 162
    lui	$v1,0x3
    addiu	$v1,$v1,-23280
    # Line 163
    slti	$at,$v0,5
    bnez	$at,.L0dbd421c
    # Line 162
    addu	$gp,$t9,$v1
.L0dbd41b0:
    # Line 163
    lw	$at,4136($zero)
    # Line 164
    li	$v1,528
    sw	$v1,0($at)
    # Line 165
    ldc1	$f3,0($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($at)
    # Line 166
    ldc1	$f2,8($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($at)
    # Line 167
    ldc1	$f1,16($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($at)
    # Line 168
    ldc1	$f0,24($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 169
    addiu	$s8,$v0,-5
    # Line 168
    swc1	$f0,16($at)
    # Line 169
    sw	$s8,4128($zero)
    # Line 170
    ld	$s8,0($sp)
    # Line 169
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 170
    addiu	$sp,$sp,48
    # Line 169
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 170
    jr	$ra
    # Line 169
    sw	$a1,4136($zero)
.L0dbd421c:
    # Line 163
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd41b0
    ld	$ra,16($sp)
.end __glMgrlc_Color4dv

# Function: __glMgrlc_Color4f
# Declared: Line 171 (Source lines: 171-179)
# Address: 0x0dbd4234 - 0x0dbd42e4 (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_Color4f
.ent __glMgrlc_Color4f
__glMgrlc_Color4f:
    # Line 171
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 172
    lw	$v0,4128($zero)
    # Line 171
    lui	$v1,0x3
    addiu	$v1,$v1,-23452
    # Line 172
    slti	$at,$v0,5
    bnez	$at,.L0dbd42b4
    # Line 171
    addu	$gp,$t9,$v1
.L0dbd4268:
    # Line 172
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 178
    addiu	$at,$v0,-5
    # Line 174
    swc1	$f30,4($v1)
    # Line 179
    ldc1	$f30,0($sp)
    # Line 173
    li	$a0,528
    # Line 177
    swc1	$f6,16($v1)
    # Line 176
    swc1	$f5,12($v1)
    # Line 175
    swc1	$f4,8($v1)
    # Line 173
    sw	$a0,0($v1)
    # Line 178
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 179
    addiu	$sp,$sp,80
    # Line 178
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 179
    jr	$ra
    # Line 178
    sw	$a0,4136($zero)
.L0dbd42b4:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 172
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd4268
    ld	$ra,40($sp)
.end __glMgrlc_Color4f

# Function: __glMgrlc_Color4fv
# Declared: Line 180 (Source lines: 180-188)
# Address: 0x0dbd42e4 - 0x0dbd4380 (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_Color4fv
.ent __glMgrlc_Color4fv
__glMgrlc_Color4fv:
    # Line 180
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 181
    lw	$v0,4128($zero)
    # Line 180
    lui	$v1,0x3
    addiu	$v1,$v1,-23628
    # Line 181
    slti	$at,$v0,5
    bnez	$at,.L0dbd4368
    # Line 180
    addu	$gp,$t9,$v1
.L0dbd430c:
    # Line 181
    lw	$at,4136($zero)
    # Line 182
    li	$v1,528
    sw	$v1,0($at)
    # Line 183
    lwc1	$f3,0($s8)
    swc1	$f3,4($at)
    # Line 184
    lwc1	$f2,4($s8)
    swc1	$f2,8($at)
    # Line 185
    lwc1	$f1,8($s8)
    swc1	$f1,12($at)
    # Line 186
    lwc1	$f0,12($s8)
    ld	$gp,8($sp)
    # Line 187
    addiu	$s8,$v0,-5
    # Line 186
    swc1	$f0,16($at)
    # Line 187
    sw	$s8,4128($zero)
    # Line 188
    ld	$s8,0($sp)
    # Line 187
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 188
    addiu	$sp,$sp,48
    # Line 187
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 188
    jr	$ra
    # Line 187
    sw	$a1,4136($zero)
.L0dbd4368:
    # Line 181
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd430c
    ld	$ra,16($sp)
.end __glMgrlc_Color4fv

# Function: __glMgrlc_Color4i
# Declared: Line 189 (Source lines: 189-197)
# Address: 0x0dbd4380 - 0x0dbd4428 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Color4i
.ent __glMgrlc_Color4i
__glMgrlc_Color4i:
    # Line 189
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 190
    lw	$v0,4128($zero)
    # Line 189
    lui	$v1,0x3
    addiu	$v1,$v1,-23784
    # Line 190
    slti	$at,$v0,5
    bnez	$at,.L0dbd43f8
    # Line 189
    addu	$gp,$t9,$v1
.L0dbd43a8:
    # Line 190
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 192
    sw	$s8,4($at)
    # Line 196
    addiu	$s8,$v0,-5
    # Line 191
    lui	$v1,0x1c00
    ori	$v1,$v1,0x210
    # Line 195
    sw	$a3,16($at)
    # Line 194
    sw	$a2,12($at)
    # Line 193
    sw	$a1,8($at)
    # Line 191
    sw	$v1,0($at)
    # Line 196
    sw	$s8,4128($zero)
    # Line 197
    ld	$s8,0($sp)
    # Line 196
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 197
    addiu	$sp,$sp,80
    # Line 196
    addiu	$a4,$a4,20
    addiu	$a5,$a5,5
    sw	$a5,4140($zero)
    # Line 197
    jr	$ra
    # Line 196
    sw	$a4,4136($zero)
.L0dbd43f8:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 190
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd43a8
    ld	$ra,40($sp)
.end __glMgrlc_Color4i

# Function: __glMgrlc_Color4iv
# Declared: Line 198 (Source lines: 198-206)
# Address: 0x0dbd4428 - 0x0dbd44c8 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Color4iv
.ent __glMgrlc_Color4iv
__glMgrlc_Color4iv:
    # Line 198
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 199
    lw	$v0,4128($zero)
    # Line 198
    lui	$v1,0x3
    addiu	$v1,$v1,-23952
    # Line 199
    slti	$at,$v0,5
    bnez	$at,.L0dbd44b0
    # Line 198
    addu	$gp,$t9,$v1
.L0dbd4450:
    # Line 199
    lw	$v1,4136($zero)
    # Line 200
    lui	$a1,0x1c00
    ori	$a1,$a1,0x210
    sw	$a1,0($v1)
    # Line 201
    lw	$at,0($s8)
    sw	$at,4($v1)
    # Line 202
    lw	$a2,4($s8)
    sw	$a2,8($v1)
    # Line 203
    lw	$a1,8($s8)
    sw	$a1,12($v1)
    # Line 204
    lw	$at,12($s8)
    ld	$gp,8($sp)
    # Line 205
    addiu	$s8,$v0,-5
    # Line 204
    sw	$at,16($v1)
    # Line 205
    sw	$s8,4128($zero)
    # Line 206
    ld	$s8,0($sp)
    # Line 205
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 206
    addiu	$sp,$sp,48
    # Line 205
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 206
    jr	$ra
    # Line 205
    sw	$a1,4136($zero)
.L0dbd44b0:
    # Line 199
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4450
    ld	$ra,16($sp)
.end __glMgrlc_Color4iv

# Function: __glMgrlc_Color4s
# Declared: Line 207 (Source lines: 207-215)
# Address: 0x0dbd44c8 - 0x0dbd4570 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Color4s
.ent __glMgrlc_Color4s
__glMgrlc_Color4s:
    # Line 207
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 208
    lw	$v0,4128($zero)
    # Line 207
    lui	$v1,0x3
    addiu	$v1,$v1,-24112
    # Line 208
    slti	$at,$v0,3
    bnez	$at,.L0dbd4540
    # Line 207
    addu	$gp,$t9,$v1
.L0dbd44f0:
    # Line 208
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 210
    sh	$s8,4($at)
    # Line 214
    addiu	$s8,$v0,-3
    # Line 209
    lui	$v1,0x1d00
    ori	$v1,$v1,0x208
    # Line 213
    sh	$a3,10($at)
    # Line 212
    sh	$a2,8($at)
    # Line 211
    sh	$a1,6($at)
    # Line 209
    sw	$v1,0($at)
    # Line 214
    sw	$s8,4128($zero)
    # Line 215
    ld	$s8,0($sp)
    # Line 214
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 215
    addiu	$sp,$sp,80
    # Line 214
    addiu	$a4,$a4,12
    addiu	$a5,$a5,3
    sw	$a5,4140($zero)
    # Line 215
    jr	$ra
    # Line 214
    sw	$a4,4136($zero)
.L0dbd4540:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 208
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd44f0
    ld	$ra,40($sp)
.end __glMgrlc_Color4s

# Function: __glMgrlc_Color4sv
# Declared: Line 216 (Source lines: 216-224)
# Address: 0x0dbd4570 - 0x0dbd4610 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Color4sv
.ent __glMgrlc_Color4sv
__glMgrlc_Color4sv:
    # Line 216
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 217
    lw	$v0,4128($zero)
    # Line 216
    lui	$v1,0x3
    addiu	$v1,$v1,-24280
    # Line 217
    slti	$at,$v0,3
    bnez	$at,.L0dbd45f8
    # Line 216
    addu	$gp,$t9,$v1
.L0dbd4598:
    # Line 217
    lw	$v1,4136($zero)
    # Line 218
    lui	$a1,0x1d00
    ori	$a1,$a1,0x208
    sw	$a1,0($v1)
    # Line 219
    lh	$at,0($s8)
    sh	$at,4($v1)
    # Line 220
    lh	$a2,2($s8)
    sh	$a2,6($v1)
    # Line 221
    lh	$a1,4($s8)
    sh	$a1,8($v1)
    # Line 222
    lh	$at,6($s8)
    ld	$gp,8($sp)
    # Line 223
    addiu	$s8,$v0,-3
    # Line 222
    sh	$at,10($v1)
    # Line 223
    sw	$s8,4128($zero)
    # Line 224
    ld	$s8,0($sp)
    # Line 223
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 224
    addiu	$sp,$sp,48
    # Line 223
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 224
    jr	$ra
    # Line 223
    sw	$a1,4136($zero)
.L0dbd45f8:
    # Line 217
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4598
    ld	$ra,16($sp)
.end __glMgrlc_Color4sv

# Function: __glMgrlc_Color4ub
# Declared: Line 225 (Source lines: 225-233)
# Address: 0x0dbd4610 - 0x0dbd46b8 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Color4ub
.ent __glMgrlc_Color4ub
__glMgrlc_Color4ub:
    # Line 225
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 226
    lw	$v0,4128($zero)
    # Line 225
    lui	$v1,0x3
    addiu	$v1,$v1,-24440
    # Line 226
    slti	$at,$v0,2
    bnez	$at,.L0dbd4688
    # Line 225
    addu	$gp,$t9,$v1
.L0dbd4638:
    # Line 226
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 228
    sb	$s8,4($at)
    # Line 232
    addiu	$s8,$v0,-2
    # Line 227
    lui	$v1,0x1480
    ori	$v1,$v1,0x204
    # Line 231
    sb	$a3,7($at)
    # Line 230
    sb	$a2,6($at)
    # Line 229
    sb	$a1,5($at)
    # Line 227
    sw	$v1,0($at)
    # Line 232
    sw	$s8,4128($zero)
    # Line 233
    ld	$s8,0($sp)
    # Line 232
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 233
    addiu	$sp,$sp,80
    # Line 232
    addiu	$a4,$a4,8
    addiu	$a5,$a5,2
    sw	$a5,4140($zero)
    # Line 233
    jr	$ra
    # Line 232
    sw	$a4,4136($zero)
.L0dbd4688:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 226
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd4638
    ld	$ra,40($sp)
.end __glMgrlc_Color4ub

# Function: __glMgrlc_Color4ubv
# Declared: Line 234 (Source lines: 234-242)
# Address: 0x0dbd46b8 - 0x0dbd4758 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Color4ubv
.ent __glMgrlc_Color4ubv
__glMgrlc_Color4ubv:
    # Line 234
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 235
    lw	$v0,4128($zero)
    # Line 234
    lui	$v1,0x3
    addiu	$v1,$v1,-24608
    # Line 235
    slti	$at,$v0,2
    bnez	$at,.L0dbd4740
    # Line 234
    addu	$gp,$t9,$v1
.L0dbd46e0:
    # Line 235
    lw	$v1,4136($zero)
    # Line 236
    lui	$a1,0x1480
    ori	$a1,$a1,0x204
    sw	$a1,0($v1)
    # Line 237
    lbu	$at,0($s8)
    sb	$at,4($v1)
    # Line 238
    lbu	$a2,1($s8)
    sb	$a2,5($v1)
    # Line 239
    lbu	$a1,2($s8)
    sb	$a1,6($v1)
    # Line 240
    lbu	$at,3($s8)
    ld	$gp,8($sp)
    # Line 241
    addiu	$s8,$v0,-2
    # Line 240
    sb	$at,7($v1)
    # Line 241
    sw	$s8,4128($zero)
    # Line 242
    ld	$s8,0($sp)
    # Line 241
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 242
    addiu	$sp,$sp,48
    # Line 241
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 242
    jr	$ra
    # Line 241
    sw	$a1,4136($zero)
.L0dbd4740:
    # Line 235
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd46e0
    ld	$ra,16($sp)
.end __glMgrlc_Color4ubv

# Function: __glMgrlc_Color4ui
# Declared: Line 243 (Source lines: 243-251)
# Address: 0x0dbd4758 - 0x0dbd4800 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Color4ui
.ent __glMgrlc_Color4ui
__glMgrlc_Color4ui:
    # Line 243
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 244
    lw	$v0,4128($zero)
    # Line 243
    lui	$v1,0x3
    addiu	$v1,$v1,-24768
    # Line 244
    slti	$at,$v0,5
    bnez	$at,.L0dbd47d0
    # Line 243
    addu	$gp,$t9,$v1
.L0dbd4780:
    # Line 244
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 246
    sw	$s8,4($at)
    # Line 250
    addiu	$s8,$v0,-5
    # Line 245
    lui	$v1,0x1400
    ori	$v1,$v1,0x210
    # Line 249
    sw	$a3,16($at)
    # Line 248
    sw	$a2,12($at)
    # Line 247
    sw	$a1,8($at)
    # Line 245
    sw	$v1,0($at)
    # Line 250
    sw	$s8,4128($zero)
    # Line 251
    ld	$s8,0($sp)
    # Line 250
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 251
    addiu	$sp,$sp,80
    # Line 250
    addiu	$a4,$a4,20
    addiu	$a5,$a5,5
    sw	$a5,4140($zero)
    # Line 251
    jr	$ra
    # Line 250
    sw	$a4,4136($zero)
.L0dbd47d0:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 244
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd4780
    ld	$ra,40($sp)
.end __glMgrlc_Color4ui

# Function: __glMgrlc_Color4uiv
# Declared: Line 252 (Source lines: 252-260)
# Address: 0x0dbd4800 - 0x0dbd48a0 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Color4uiv
.ent __glMgrlc_Color4uiv
__glMgrlc_Color4uiv:
    # Line 252
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 253
    lw	$v0,4128($zero)
    # Line 252
    lui	$v1,0x3
    addiu	$v1,$v1,-24936
    # Line 253
    slti	$at,$v0,5
    bnez	$at,.L0dbd4888
    # Line 252
    addu	$gp,$t9,$v1
.L0dbd4828:
    # Line 253
    lw	$v1,4136($zero)
    # Line 254
    lui	$a1,0x1400
    ori	$a1,$a1,0x210
    sw	$a1,0($v1)
    # Line 255
    lw	$at,0($s8)
    sw	$at,4($v1)
    # Line 256
    lw	$a2,4($s8)
    sw	$a2,8($v1)
    # Line 257
    lw	$a1,8($s8)
    sw	$a1,12($v1)
    # Line 258
    lw	$at,12($s8)
    ld	$gp,8($sp)
    # Line 259
    addiu	$s8,$v0,-5
    # Line 258
    sw	$at,16($v1)
    # Line 259
    sw	$s8,4128($zero)
    # Line 260
    ld	$s8,0($sp)
    # Line 259
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 260
    addiu	$sp,$sp,48
    # Line 259
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 260
    jr	$ra
    # Line 259
    sw	$a1,4136($zero)
.L0dbd4888:
    # Line 253
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4828
    ld	$ra,16($sp)
.end __glMgrlc_Color4uiv

# Function: __glMgrlc_Color4us
# Declared: Line 261 (Source lines: 261-269)
# Address: 0x0dbd48a0 - 0x0dbd4948 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Color4us
.ent __glMgrlc_Color4us
__glMgrlc_Color4us:
    # Line 261
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 262
    lw	$v0,4128($zero)
    # Line 261
    lui	$v1,0x3
    addiu	$v1,$v1,-25096
    # Line 262
    slti	$at,$v0,3
    bnez	$at,.L0dbd4918
    # Line 261
    addu	$gp,$t9,$v1
.L0dbd48c8:
    # Line 262
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 264
    sh	$s8,4($at)
    # Line 268
    addiu	$s8,$v0,-3
    # Line 263
    lui	$v1,0x1500
    ori	$v1,$v1,0x208
    # Line 267
    sh	$a3,10($at)
    # Line 266
    sh	$a2,8($at)
    # Line 265
    sh	$a1,6($at)
    # Line 263
    sw	$v1,0($at)
    # Line 268
    sw	$s8,4128($zero)
    # Line 269
    ld	$s8,0($sp)
    # Line 268
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 269
    addiu	$sp,$sp,80
    # Line 268
    addiu	$a4,$a4,12
    addiu	$a5,$a5,3
    sw	$a5,4140($zero)
    # Line 269
    jr	$ra
    # Line 268
    sw	$a4,4136($zero)
.L0dbd4918:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 262
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd48c8
    ld	$ra,40($sp)
.end __glMgrlc_Color4us

# Function: __glMgrlc_Color4usv
# Declared: Line 270 (Source lines: 270-278)
# Address: 0x0dbd4948 - 0x0dbd49e8 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Color4usv
.ent __glMgrlc_Color4usv
__glMgrlc_Color4usv:
    # Line 270
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 271
    lw	$v0,4128($zero)
    # Line 270
    lui	$v1,0x3
    addiu	$v1,$v1,-25264
    # Line 271
    slti	$at,$v0,3
    bnez	$at,.L0dbd49d0
    # Line 270
    addu	$gp,$t9,$v1
.L0dbd4970:
    # Line 271
    lw	$v1,4136($zero)
    # Line 272
    lui	$a1,0x1500
    ori	$a1,$a1,0x208
    sw	$a1,0($v1)
    # Line 273
    lhu	$at,0($s8)
    sh	$at,4($v1)
    # Line 274
    lhu	$a2,2($s8)
    sh	$a2,6($v1)
    # Line 275
    lhu	$a1,4($s8)
    sh	$a1,8($v1)
    # Line 276
    lhu	$at,6($s8)
    ld	$gp,8($sp)
    # Line 277
    addiu	$s8,$v0,-3
    # Line 276
    sh	$at,10($v1)
    # Line 277
    sw	$s8,4128($zero)
    # Line 278
    ld	$s8,0($sp)
    # Line 277
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 278
    addiu	$sp,$sp,48
    # Line 277
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 278
    jr	$ra
    # Line 277
    sw	$a1,4136($zero)
.L0dbd49d0:
    # Line 271
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4970
    ld	$ra,16($sp)
.end __glMgrlc_Color4usv

# Function: __glMgrlc_Indexd
# Declared: Line 279 (Source lines: 279-284)
# Address: 0x0dbd49e8 - 0x0dbd4a6c (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_Indexd
.ent __glMgrlc_Indexd
__glMgrlc_Indexd:
    # Line 279
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 280
    lw	$v0,4128($zero)
    # Line 279
    lui	$v1,0x3
    addiu	$v1,$v1,-25424
    # Line 280
    slti	$at,$v0,2
    bnez	$at,.L0dbd4a54
    # Line 279
    addu	$gp,$t9,$v1
.L0dbd4a10:
    ld	$gp,8($sp)
    # Line 282
    cvt.s.d	$f0,$f30
    # Line 284
    ldc1	$f30,0($sp)
    # Line 280
    lw	$v1,4136($zero)
    # Line 283
    addiu	$at,$v0,-2
    # Line 281
    li	$a0,516
    sw	$a0,0($v1)
    # Line 282
    swc1	$f0,4($v1)
    # Line 283
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 284
    addiu	$sp,$sp,48
    # Line 283
    addiu	$a0,$a0,8
    addiu	$a1,$a1,2
    sw	$a1,4140($zero)
    # Line 284
    jr	$ra
    # Line 283
    sw	$a0,4136($zero)
.L0dbd4a54:
    # Line 280
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4a10
    ld	$ra,16($sp)
.end __glMgrlc_Indexd

# Function: __glMgrlc_Indexdv
# Declared: Line 285 (Source lines: 285-290)
# Address: 0x0dbd4a6c - 0x0dbd4af4 (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_Indexdv
.ent __glMgrlc_Indexdv
__glMgrlc_Indexdv:
    # Line 285
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 286
    lw	$v0,4128($zero)
    # Line 285
    lui	$v1,0x3
    addiu	$v1,$v1,-25556
    # Line 286
    slti	$at,$v0,2
    bnez	$at,.L0dbd4adc
    # Line 285
    addu	$gp,$t9,$v1
.L0dbd4a94:
    # Line 286
    lw	$at,4136($zero)
    # Line 287
    li	$v1,516
    sw	$v1,0($at)
    # Line 288
    ldc1	$f0,0($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 289
    addiu	$s8,$v0,-2
    # Line 288
    swc1	$f0,4($at)
    # Line 289
    sw	$s8,4128($zero)
    # Line 290
    ld	$s8,0($sp)
    # Line 289
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 290
    addiu	$sp,$sp,48
    # Line 289
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 290
    jr	$ra
    # Line 289
    sw	$a1,4136($zero)
.L0dbd4adc:
    # Line 286
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4a94
    ld	$ra,16($sp)
.end __glMgrlc_Indexdv

# Function: __glMgrlc_Indexf
# Declared: Line 291 (Source lines: 291-296)
# Address: 0x0dbd4af4 - 0x0dbd4b74 (Size: 128 bytes, Frame: 48)
.globl __glMgrlc_Indexf
.ent __glMgrlc_Indexf
__glMgrlc_Indexf:
    # Line 291
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 292
    lw	$v0,4128($zero)
    # Line 291
    lui	$v1,0x3
    addiu	$v1,$v1,-25692
    # Line 292
    slti	$at,$v0,2
    bnez	$at,.L0dbd4b5c
    # Line 291
    addu	$gp,$t9,$v1
.L0dbd4b1c:
    # Line 292
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 295
    addiu	$at,$v0,-2
    # Line 294
    swc1	$f30,4($v1)
    # Line 296
    ldc1	$f30,0($sp)
    # Line 293
    li	$a0,516
    sw	$a0,0($v1)
    # Line 295
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 296
    addiu	$sp,$sp,48
    # Line 295
    addiu	$a0,$a0,8
    addiu	$a1,$a1,2
    sw	$a1,4140($zero)
    # Line 296
    jr	$ra
    # Line 295
    sw	$a0,4136($zero)
.L0dbd4b5c:
    # Line 292
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4b1c
    ld	$ra,16($sp)
.end __glMgrlc_Indexf

# Function: __glMgrlc_Indexfv
# Declared: Line 297 (Source lines: 297-302)
# Address: 0x0dbd4b74 - 0x0dbd4bf8 (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_Indexfv
.ent __glMgrlc_Indexfv
__glMgrlc_Indexfv:
    # Line 297
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 298
    lw	$v0,4128($zero)
    # Line 297
    lui	$v1,0x3
    addiu	$v1,$v1,-25820
    # Line 298
    slti	$at,$v0,2
    bnez	$at,.L0dbd4be0
    # Line 297
    addu	$gp,$t9,$v1
.L0dbd4b9c:
    # Line 298
    lw	$at,4136($zero)
    # Line 299
    li	$v1,516
    sw	$v1,0($at)
    # Line 300
    lwc1	$f0,0($s8)
    ld	$gp,8($sp)
    # Line 301
    addiu	$s8,$v0,-2
    # Line 300
    swc1	$f0,4($at)
    # Line 301
    sw	$s8,4128($zero)
    # Line 302
    ld	$s8,0($sp)
    # Line 301
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 302
    addiu	$sp,$sp,48
    # Line 301
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 302
    jr	$ra
    # Line 301
    sw	$a1,4136($zero)
.L0dbd4be0:
    # Line 298
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4b9c
    ld	$ra,16($sp)
.end __glMgrlc_Indexfv

# Function: __glMgrlc_Indexi
# Declared: Line 303 (Source lines: 303-308)
# Address: 0x0dbd4bf8 - 0x0dbd4c7c (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_Indexi
.ent __glMgrlc_Indexi
__glMgrlc_Indexi:
    # Line 303
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 304
    lw	$v0,4128($zero)
    # Line 303
    lui	$v1,0x3
    addiu	$v1,$v1,-25952
    # Line 304
    slti	$at,$v0,2
    bnez	$at,.L0dbd4c64
    # Line 303
    addu	$gp,$t9,$v1
.L0dbd4c20:
    # Line 304
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 306
    sw	$s8,4($at)
    # Line 307
    addiu	$s8,$v0,-2
    # Line 305
    lui	$v1,0x1800
    ori	$v1,$v1,0x204
    sw	$v1,0($at)
    # Line 307
    sw	$s8,4128($zero)
    # Line 308
    ld	$s8,0($sp)
    # Line 307
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 308
    addiu	$sp,$sp,48
    # Line 307
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 308
    jr	$ra
    # Line 307
    sw	$a1,4136($zero)
.L0dbd4c64:
    # Line 304
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4c20
    ld	$ra,16($sp)
.end __glMgrlc_Indexi

# Function: __glMgrlc_Indexiv
# Declared: Line 309 (Source lines: 309-314)
# Address: 0x0dbd4c7c - 0x0dbd4d04 (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_Indexiv
.ent __glMgrlc_Indexiv
__glMgrlc_Indexiv:
    # Line 309
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 310
    lw	$v0,4128($zero)
    # Line 309
    lui	$v1,0x3
    addiu	$v1,$v1,-26084
    # Line 310
    slti	$at,$v0,2
    bnez	$at,.L0dbd4cec
    # Line 309
    addu	$gp,$t9,$v1
.L0dbd4ca4:
    # Line 310
    lw	$v1,4136($zero)
    # Line 311
    lui	$a1,0x1800
    ori	$a1,$a1,0x204
    sw	$a1,0($v1)
    # Line 312
    lw	$at,0($s8)
    ld	$gp,8($sp)
    # Line 313
    addiu	$s8,$v0,-2
    # Line 312
    sw	$at,4($v1)
    # Line 313
    sw	$s8,4128($zero)
    # Line 314
    ld	$s8,0($sp)
    # Line 313
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 314
    addiu	$sp,$sp,48
    # Line 313
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 314
    jr	$ra
    # Line 313
    sw	$a1,4136($zero)
.L0dbd4cec:
    # Line 310
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4ca4
    ld	$ra,16($sp)
.end __glMgrlc_Indexiv

# Function: __glMgrlc_Indexs
# Declared: Line 315 (Source lines: 315-320)
# Address: 0x0dbd4d04 - 0x0dbd4d88 (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_Indexs
.ent __glMgrlc_Indexs
__glMgrlc_Indexs:
    # Line 315
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 316
    lw	$v0,4128($zero)
    # Line 315
    lui	$v1,0x3
    addiu	$v1,$v1,-26220
    # Line 316
    slti	$at,$v0,2
    bnez	$at,.L0dbd4d70
    # Line 315
    addu	$gp,$t9,$v1
.L0dbd4d2c:
    # Line 316
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 318
    sh	$s8,4($at)
    # Line 319
    addiu	$s8,$v0,-2
    # Line 317
    lui	$v1,0x1900
    ori	$v1,$v1,0x202
    sw	$v1,0($at)
    # Line 319
    sw	$s8,4128($zero)
    # Line 320
    ld	$s8,0($sp)
    # Line 319
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 320
    addiu	$sp,$sp,48
    # Line 319
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 320
    jr	$ra
    # Line 319
    sw	$a1,4136($zero)
.L0dbd4d70:
    # Line 316
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4d2c
    ld	$ra,16($sp)
.end __glMgrlc_Indexs

# Function: __glMgrlc_Indexsv
# Declared: Line 321 (Source lines: 321-326)
# Address: 0x0dbd4d88 - 0x0dbd4e10 (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_Indexsv
.ent __glMgrlc_Indexsv
__glMgrlc_Indexsv:
    # Line 321
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 322
    lw	$v0,4128($zero)
    # Line 321
    lui	$v1,0x3
    addiu	$v1,$v1,-26352
    # Line 322
    slti	$at,$v0,2
    bnez	$at,.L0dbd4df8
    # Line 321
    addu	$gp,$t9,$v1
.L0dbd4db0:
    # Line 322
    lw	$v1,4136($zero)
    # Line 323
    lui	$a1,0x1900
    ori	$a1,$a1,0x202
    sw	$a1,0($v1)
    # Line 324
    lh	$at,0($s8)
    ld	$gp,8($sp)
    # Line 325
    addiu	$s8,$v0,-2
    # Line 324
    sh	$at,4($v1)
    # Line 325
    sw	$s8,4128($zero)
    # Line 326
    ld	$s8,0($sp)
    # Line 325
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 326
    addiu	$sp,$sp,48
    # Line 325
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 326
    jr	$ra
    # Line 325
    sw	$a1,4136($zero)
.L0dbd4df8:
    # Line 322
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4db0
    ld	$ra,16($sp)
.end __glMgrlc_Indexsv

# Function: __glMgrlc_Normal3b
# Declared: Line 327 (Source lines: 327-334)
# Address: 0x0dbd4e10 - 0x0dbd4eac (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Normal3b
.ent __glMgrlc_Normal3b
__glMgrlc_Normal3b:
    # Line 327
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 328
    lw	$v0,4128($zero)
    # Line 327
    lui	$v1,0x3
    addiu	$v1,$v1,-26488
    # Line 328
    slti	$at,$v0,2
    bnez	$at,.L0dbd4e84
    # Line 327
    addu	$gp,$t9,$v1
.L0dbd4e38:
    # Line 328
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 330
    sb	$s8,4($at)
    # Line 333
    addiu	$s8,$v0,-2
    # Line 329
    lui	$v1,0x1c80
    ori	$v1,$v1,0x703
    # Line 332
    sb	$a2,6($at)
    # Line 331
    sb	$a1,5($at)
    # Line 329
    sw	$v1,0($at)
    # Line 333
    sw	$s8,4128($zero)
    # Line 334
    ld	$s8,0($sp)
    # Line 333
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 334
    addiu	$sp,$sp,80
    # Line 333
    addiu	$a3,$a3,8
    addiu	$a4,$a4,2
    sw	$a4,4140($zero)
    # Line 334
    jr	$ra
    # Line 333
    sw	$a3,4136($zero)
.L0dbd4e84:
    sd	$a1,24($sp)
    # Line 328
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd4e38
    ld	$ra,32($sp)
.end __glMgrlc_Normal3b

# Function: __glMgrlc_Normal3bv
# Declared: Line 335 (Source lines: 335-342)
# Address: 0x0dbd4eac - 0x0dbd4f44 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Normal3bv
.ent __glMgrlc_Normal3bv
__glMgrlc_Normal3bv:
    # Line 335
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 336
    lw	$v0,4128($zero)
    # Line 335
    lui	$v1,0x3
    addiu	$v1,$v1,-26644
    # Line 336
    slti	$at,$v0,2
    bnez	$at,.L0dbd4f2c
    # Line 335
    addu	$gp,$t9,$v1
.L0dbd4ed4:
    # Line 336
    lw	$v1,4136($zero)
    # Line 337
    lui	$at,0x1c80
    ori	$at,$at,0x703
    sw	$at,0($v1)
    # Line 338
    lb	$a2,0($s8)
    sb	$a2,4($v1)
    # Line 339
    lb	$a1,1($s8)
    sb	$a1,5($v1)
    # Line 340
    lb	$at,2($s8)
    ld	$gp,8($sp)
    # Line 341
    addiu	$s8,$v0,-2
    # Line 340
    sb	$at,6($v1)
    # Line 341
    sw	$s8,4128($zero)
    # Line 342
    ld	$s8,0($sp)
    # Line 341
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 342
    addiu	$sp,$sp,48
    # Line 341
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 342
    jr	$ra
    # Line 341
    sw	$a1,4136($zero)
.L0dbd4f2c:
    # Line 336
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd4ed4
    ld	$ra,16($sp)
.end __glMgrlc_Normal3bv

# Function: __glMgrlc_Normal3d
# Declared: Line 343 (Source lines: 343-350)
# Address: 0x0dbd4f44 - 0x0dbd4ff0 (Size: 172 bytes, Frame: 208)
.globl __glMgrlc_Normal3d
.ent __glMgrlc_Normal3d
__glMgrlc_Normal3d:
    # Line 343
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 344
    lw	$v0,4128($zero)
    # Line 343
    lui	$v1,0x3
    addiu	$v1,$v1,-26796
    # Line 344
    slti	$at,$v0,4
    bnez	$at,.L0dbd4fc8
    # Line 343
    addu	$gp,$t9,$v1
.L0dbd4f74:
    # Line 346
    cvt.s.d	$f2,$f30
    ld	$gp,8($sp)
    # Line 350
    ldc1	$f30,0($sp)
    # Line 348
    cvt.s.d	$f0,$f5
    # Line 349
    addiu	$at,$v0,-4
    # Line 344
    lw	$v1,4136($zero)
    # Line 347
    cvt.s.d	$f1,$f4
    # Line 345
    li	$a0,1804
    sw	$a0,0($v1)
    # Line 348
    swc1	$f0,12($v1)
    # Line 347
    swc1	$f1,8($v1)
    # Line 346
    swc1	$f2,4($v1)
    # Line 349
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 350
    addiu	$sp,$sp,80
    # Line 349
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 350
    jr	$ra
    # Line 349
    sw	$a0,4136($zero)
.L0dbd4fc8:
    sdc1	$f4,24($sp)
    # Line 344
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd4f74
    ld	$ra,32($sp)
.end __glMgrlc_Normal3d

# Function: __glMgrlc_Normal3dv
# Declared: Line 351 (Source lines: 351-358)
# Address: 0x0dbd4ff0 - 0x0dbd5090 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Normal3dv
.ent __glMgrlc_Normal3dv
__glMgrlc_Normal3dv:
    # Line 351
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 352
    lw	$v0,4128($zero)
    # Line 351
    lui	$v1,0x3
    addiu	$v1,$v1,-26968
    # Line 352
    slti	$at,$v0,4
    bnez	$at,.L0dbd5078
    # Line 351
    addu	$gp,$t9,$v1
.L0dbd5018:
    # Line 352
    lw	$at,4136($zero)
    # Line 353
    li	$v1,1804
    sw	$v1,0($at)
    # Line 354
    ldc1	$f2,0($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($at)
    # Line 355
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($at)
    # Line 356
    ldc1	$f0,16($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 357
    addiu	$s8,$v0,-4
    # Line 356
    swc1	$f0,12($at)
    # Line 357
    sw	$s8,4128($zero)
    # Line 358
    ld	$s8,0($sp)
    # Line 357
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 358
    addiu	$sp,$sp,48
    # Line 357
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 358
    jr	$ra
    # Line 357
    sw	$a1,4136($zero)
.L0dbd5078:
    # Line 352
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd5018
    ld	$ra,16($sp)
.end __glMgrlc_Normal3dv

# Function: __glMgrlc_Normal3f
# Declared: Line 359 (Source lines: 359-366)
# Address: 0x0dbd5090 - 0x0dbd5130 (Size: 160 bytes, Frame: 208)
.globl __glMgrlc_Normal3f
.ent __glMgrlc_Normal3f
__glMgrlc_Normal3f:
    # Line 359
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 360
    lw	$v0,4128($zero)
    # Line 359
    lui	$v1,0x3
    addiu	$v1,$v1,-27128
    # Line 360
    slti	$at,$v0,4
    bnez	$at,.L0dbd5108
    # Line 359
    addu	$gp,$t9,$v1
.L0dbd50c0:
    # Line 360
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 365
    addiu	$at,$v0,-4
    # Line 362
    swc1	$f30,4($v1)
    # Line 366
    ldc1	$f30,0($sp)
    # Line 361
    li	$a0,1804
    # Line 364
    swc1	$f5,12($v1)
    # Line 363
    swc1	$f4,8($v1)
    # Line 361
    sw	$a0,0($v1)
    # Line 365
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 366
    addiu	$sp,$sp,80
    # Line 365
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 366
    jr	$ra
    # Line 365
    sw	$a0,4136($zero)
.L0dbd5108:
    sdc1	$f4,24($sp)
    # Line 360
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd50c0
    ld	$ra,32($sp)
.end __glMgrlc_Normal3f

# Function: __glMgrlc_Normal3fv
# Declared: Line 367 (Source lines: 367-374)
# Address: 0x0dbd5130 - 0x0dbd51c4 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_Normal3fv
.ent __glMgrlc_Normal3fv
__glMgrlc_Normal3fv:
    # Line 367
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 368
    lw	$v0,4128($zero)
    # Line 367
    lui	$v1,0x3
    addiu	$v1,$v1,-27288
    # Line 368
    slti	$at,$v0,4
    bnez	$at,.L0dbd51ac
    # Line 367
    addu	$gp,$t9,$v1
.L0dbd5158:
    # Line 368
    lw	$at,4136($zero)
    # Line 369
    li	$v1,1804
    sw	$v1,0($at)
    # Line 370
    lwc1	$f2,0($s8)
    swc1	$f2,4($at)
    # Line 371
    lwc1	$f1,4($s8)
    swc1	$f1,8($at)
    # Line 372
    lwc1	$f0,8($s8)
    ld	$gp,8($sp)
    # Line 373
    addiu	$s8,$v0,-4
    # Line 372
    swc1	$f0,12($at)
    # Line 373
    sw	$s8,4128($zero)
    # Line 374
    ld	$s8,0($sp)
    # Line 373
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 374
    addiu	$sp,$sp,48
    # Line 373
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 374
    jr	$ra
    # Line 373
    sw	$a1,4136($zero)
.L0dbd51ac:
    # Line 368
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd5158
    ld	$ra,16($sp)
.end __glMgrlc_Normal3fv

# Function: __glMgrlc_Normal3i
# Declared: Line 375 (Source lines: 375-382)
# Address: 0x0dbd51c4 - 0x0dbd5260 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Normal3i
.ent __glMgrlc_Normal3i
__glMgrlc_Normal3i:
    # Line 375
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 376
    lw	$v0,4128($zero)
    # Line 375
    lui	$v1,0x3
    addiu	$v1,$v1,-27436
    # Line 376
    slti	$at,$v0,4
    bnez	$at,.L0dbd5238
    # Line 375
    addu	$gp,$t9,$v1
.L0dbd51ec:
    # Line 376
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 378
    sw	$s8,4($at)
    # Line 381
    addiu	$s8,$v0,-4
    # Line 377
    lui	$v1,0x1c00
    ori	$v1,$v1,0x70c
    # Line 380
    sw	$a2,12($at)
    # Line 379
    sw	$a1,8($at)
    # Line 377
    sw	$v1,0($at)
    # Line 381
    sw	$s8,4128($zero)
    # Line 382
    ld	$s8,0($sp)
    # Line 381
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 382
    addiu	$sp,$sp,80
    # Line 381
    addiu	$a3,$a3,16
    addiu	$a4,$a4,4
    sw	$a4,4140($zero)
    # Line 382
    jr	$ra
    # Line 381
    sw	$a3,4136($zero)
.L0dbd5238:
    sd	$a1,24($sp)
    # Line 376
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd51ec
    ld	$ra,32($sp)
.end __glMgrlc_Normal3i

# Function: __glMgrlc_Normal3iv
# Declared: Line 383 (Source lines: 383-390)
# Address: 0x0dbd5260 - 0x0dbd52f8 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Normal3iv
.ent __glMgrlc_Normal3iv
__glMgrlc_Normal3iv:
    # Line 383
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 384
    lw	$v0,4128($zero)
    # Line 383
    lui	$v1,0x3
    addiu	$v1,$v1,-27592
    # Line 384
    slti	$at,$v0,4
    bnez	$at,.L0dbd52e0
    # Line 383
    addu	$gp,$t9,$v1
.L0dbd5288:
    # Line 384
    lw	$v1,4136($zero)
    # Line 385
    lui	$at,0x1c00
    ori	$at,$at,0x70c
    sw	$at,0($v1)
    # Line 386
    lw	$a2,0($s8)
    sw	$a2,4($v1)
    # Line 387
    lw	$a1,4($s8)
    sw	$a1,8($v1)
    # Line 388
    lw	$at,8($s8)
    ld	$gp,8($sp)
    # Line 389
    addiu	$s8,$v0,-4
    # Line 388
    sw	$at,12($v1)
    # Line 389
    sw	$s8,4128($zero)
    # Line 390
    ld	$s8,0($sp)
    # Line 389
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 390
    addiu	$sp,$sp,48
    # Line 389
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 390
    jr	$ra
    # Line 389
    sw	$a1,4136($zero)
.L0dbd52e0:
    # Line 384
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd5288
    ld	$ra,16($sp)
.end __glMgrlc_Normal3iv

# Function: __glMgrlc_Normal3s
# Declared: Line 391 (Source lines: 391-398)
# Address: 0x0dbd52f8 - 0x0dbd5394 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Normal3s
.ent __glMgrlc_Normal3s
__glMgrlc_Normal3s:
    # Line 391
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 392
    lw	$v0,4128($zero)
    # Line 391
    lui	$v1,0x3
    addiu	$v1,$v1,-27744
    # Line 392
    slti	$at,$v0,3
    bnez	$at,.L0dbd536c
    # Line 391
    addu	$gp,$t9,$v1
.L0dbd5320:
    # Line 392
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 394
    sh	$s8,4($at)
    # Line 397
    addiu	$s8,$v0,-3
    # Line 393
    lui	$v1,0x1d00
    ori	$v1,$v1,0x706
    # Line 396
    sh	$a2,8($at)
    # Line 395
    sh	$a1,6($at)
    # Line 393
    sw	$v1,0($at)
    # Line 397
    sw	$s8,4128($zero)
    # Line 398
    ld	$s8,0($sp)
    # Line 397
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 398
    addiu	$sp,$sp,80
    # Line 397
    addiu	$a3,$a3,12
    addiu	$a4,$a4,3
    sw	$a4,4140($zero)
    # Line 398
    jr	$ra
    # Line 397
    sw	$a3,4136($zero)
.L0dbd536c:
    sd	$a1,24($sp)
    # Line 392
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd5320
    ld	$ra,32($sp)
.end __glMgrlc_Normal3s

# Function: __glMgrlc_Normal3sv
# Declared: Line 399 (Source lines: 399-406)
# Address: 0x0dbd5394 - 0x0dbd542c (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Normal3sv
.ent __glMgrlc_Normal3sv
__glMgrlc_Normal3sv:
    # Line 399
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 400
    lw	$v0,4128($zero)
    # Line 399
    lui	$v1,0x3
    addiu	$v1,$v1,-27900
    # Line 400
    slti	$at,$v0,3
    bnez	$at,.L0dbd5414
    # Line 399
    addu	$gp,$t9,$v1
.L0dbd53bc:
    # Line 400
    lw	$v1,4136($zero)
    # Line 401
    lui	$at,0x1d00
    ori	$at,$at,0x706
    sw	$at,0($v1)
    # Line 402
    lh	$a2,0($s8)
    sh	$a2,4($v1)
    # Line 403
    lh	$a1,2($s8)
    sh	$a1,6($v1)
    # Line 404
    lh	$at,4($s8)
    ld	$gp,8($sp)
    # Line 405
    addiu	$s8,$v0,-3
    # Line 404
    sh	$at,8($v1)
    # Line 405
    sw	$s8,4128($zero)
    # Line 406
    ld	$s8,0($sp)
    # Line 405
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 406
    addiu	$sp,$sp,48
    # Line 405
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 406
    jr	$ra
    # Line 405
    sw	$a1,4136($zero)
.L0dbd5414:
    # Line 400
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd53bc
    ld	$ra,16($sp)
.end __glMgrlc_Normal3sv

# Function: __glMgrlc_RasterPos2d
# Declared: Line 407 (Source lines: 407-413)
# Address: 0x0dbd542c - 0x0dbd54c8 (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2d
.ent __glMgrlc_RasterPos2d
__glMgrlc_RasterPos2d:
    # Line 407
    mov.d	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 408
    lw	$v0,4128($zero)
    # Line 407
    lui	$v1,0x3
    addiu	$v1,$v1,-28052
    # Line 408
    slti	$at,$v0,3
    bnez	$at,.L0dbd54a8
    # Line 407
    addu	$gp,$t9,$v1
.L0dbd5458:
    ld	$gp,8($sp)
    # Line 410
    cvt.s.d	$f1,$f30
    # Line 413
    ldc1	$f30,0($sp)
    # Line 412
    addiu	$at,$v0,-3
    # Line 408
    lw	$v1,4136($zero)
    # Line 411
    cvt.s.d	$f0,$f4
    # Line 409
    lui	$a0,0x4000
    ori	$a0,$a0,0x3808
    sw	$a0,0($v1)
    # Line 411
    swc1	$f0,8($v1)
    # Line 410
    swc1	$f1,4($v1)
    # Line 412
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 413
    addiu	$sp,$sp,48
    # Line 412
    addiu	$a0,$a0,12
    addiu	$a1,$a1,3
    sw	$a1,4140($zero)
    # Line 413
    jr	$ra
    # Line 412
    sw	$a0,4136($zero)
.L0dbd54a8:
    # Line 408
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0dbd5458
    ld	$ra,24($sp)
.end __glMgrlc_RasterPos2d

# Function: __glMgrlc_RasterPos2dv
# Declared: Line 414 (Source lines: 414-420)
# Address: 0x0dbd54c8 - 0x0dbd5560 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2dv
.ent __glMgrlc_RasterPos2dv
__glMgrlc_RasterPos2dv:
    # Line 414
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 415
    lw	$v0,4128($zero)
    # Line 414
    lui	$v1,0x3
    addiu	$v1,$v1,-28208
    # Line 415
    slti	$at,$v0,3
    bnez	$at,.L0dbd5548
    # Line 414
    addu	$gp,$t9,$v1
.L0dbd54f0:
    # Line 415
    lw	$at,4136($zero)
    # Line 416
    lui	$v1,0x4000
    ori	$v1,$v1,0x3808
    sw	$v1,0($at)
    # Line 417
    ldc1	$f1,0($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($at)
    # Line 418
    ldc1	$f0,8($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 419
    addiu	$s8,$v0,-3
    # Line 418
    swc1	$f0,8($at)
    # Line 419
    sw	$s8,4128($zero)
    # Line 420
    ld	$s8,0($sp)
    # Line 419
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 420
    addiu	$sp,$sp,48
    # Line 419
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 420
    jr	$ra
    # Line 419
    sw	$a1,4136($zero)
.L0dbd5548:
    # Line 415
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd54f0
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos2dv

# Function: __glMgrlc_RasterPos2f
# Declared: Line 421 (Source lines: 421-427)
# Address: 0x0dbd5560 - 0x0dbd55f4 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2f
.ent __glMgrlc_RasterPos2f
__glMgrlc_RasterPos2f:
    # Line 421
    mov.s	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 422
    lw	$v0,4128($zero)
    # Line 421
    lui	$v1,0x3
    addiu	$v1,$v1,-28360
    # Line 422
    slti	$at,$v0,3
    bnez	$at,.L0dbd55d4
    # Line 421
    addu	$gp,$t9,$v1
.L0dbd558c:
    # Line 422
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 426
    addiu	$at,$v0,-3
    # Line 424
    swc1	$f30,4($v1)
    # Line 427
    ldc1	$f30,0($sp)
    # Line 423
    lui	$a0,0x4000
    ori	$a0,$a0,0x3808
    # Line 425
    swc1	$f4,8($v1)
    # Line 423
    sw	$a0,0($v1)
    # Line 426
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 427
    addiu	$sp,$sp,48
    # Line 426
    addiu	$a0,$a0,12
    addiu	$a1,$a1,3
    sw	$a1,4140($zero)
    # Line 427
    jr	$ra
    # Line 426
    sw	$a0,4136($zero)
.L0dbd55d4:
    # Line 422
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0dbd558c
    ld	$ra,24($sp)
.end __glMgrlc_RasterPos2f

# Function: __glMgrlc_RasterPos2fv
# Declared: Line 428 (Source lines: 428-434)
# Address: 0x0dbd55f4 - 0x0dbd5684 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2fv
.ent __glMgrlc_RasterPos2fv
__glMgrlc_RasterPos2fv:
    # Line 428
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 429
    lw	$v0,4128($zero)
    # Line 428
    lui	$v1,0x3
    addiu	$v1,$v1,-28508
    # Line 429
    slti	$at,$v0,3
    bnez	$at,.L0dbd566c
    # Line 428
    addu	$gp,$t9,$v1
.L0dbd561c:
    # Line 429
    lw	$at,4136($zero)
    # Line 430
    lui	$v1,0x4000
    ori	$v1,$v1,0x3808
    sw	$v1,0($at)
    # Line 431
    lwc1	$f1,0($s8)
    swc1	$f1,4($at)
    # Line 432
    lwc1	$f0,4($s8)
    ld	$gp,8($sp)
    # Line 433
    addiu	$s8,$v0,-3
    # Line 432
    swc1	$f0,8($at)
    # Line 433
    sw	$s8,4128($zero)
    # Line 434
    ld	$s8,0($sp)
    # Line 433
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 434
    addiu	$sp,$sp,48
    # Line 433
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 434
    jr	$ra
    # Line 433
    sw	$a1,4136($zero)
.L0dbd566c:
    # Line 429
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd561c
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos2fv

# Function: __glMgrlc_RasterPos2i
# Declared: Line 435 (Source lines: 435-441)
# Address: 0x0dbd5684 - 0x0dbd5714 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2i
.ent __glMgrlc_RasterPos2i
__glMgrlc_RasterPos2i:
    # Line 435
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 436
    lw	$v0,4128($zero)
    # Line 435
    lui	$v1,0x3
    addiu	$v1,$v1,-28652
    # Line 436
    slti	$at,$v0,3
    bnez	$at,.L0dbd56f4
    # Line 435
    addu	$gp,$t9,$v1
.L0dbd56ac:
    # Line 436
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 438
    sw	$s8,4($at)
    # Line 440
    addiu	$s8,$v0,-3
    # Line 437
    lui	$v1,0x5800
    ori	$v1,$v1,0x3808
    # Line 439
    sw	$a1,8($at)
    # Line 437
    sw	$v1,0($at)
    # Line 440
    sw	$s8,4128($zero)
    # Line 441
    ld	$s8,0($sp)
    # Line 440
    lw	$a2,4136($zero)
    lw	$a3,4140($zero)
    # Line 441
    addiu	$sp,$sp,48
    # Line 440
    addiu	$a2,$a2,12
    addiu	$a3,$a3,3
    sw	$a3,4140($zero)
    # Line 441
    jr	$ra
    # Line 440
    sw	$a2,4136($zero)
.L0dbd56f4:
    # Line 436
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    b	.L0dbd56ac
    ld	$ra,24($sp)
.end __glMgrlc_RasterPos2i

# Function: __glMgrlc_RasterPos2iv
# Declared: Line 442 (Source lines: 442-448)
# Address: 0x0dbd5714 - 0x0dbd57a4 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2iv
.ent __glMgrlc_RasterPos2iv
__glMgrlc_RasterPos2iv:
    # Line 442
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 443
    lw	$v0,4128($zero)
    # Line 442
    lui	$v1,0x3
    addiu	$v1,$v1,-28796
    # Line 443
    slti	$at,$v0,3
    bnez	$at,.L0dbd578c
    # Line 442
    addu	$gp,$t9,$v1
.L0dbd573c:
    # Line 443
    lw	$v1,4136($zero)
    # Line 444
    lui	$a2,0x5800
    ori	$a2,$a2,0x3808
    sw	$a2,0($v1)
    # Line 445
    lw	$a1,0($s8)
    sw	$a1,4($v1)
    # Line 446
    lw	$at,4($s8)
    ld	$gp,8($sp)
    # Line 447
    addiu	$s8,$v0,-3
    # Line 446
    sw	$at,8($v1)
    # Line 447
    sw	$s8,4128($zero)
    # Line 448
    ld	$s8,0($sp)
    # Line 447
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 448
    addiu	$sp,$sp,48
    # Line 447
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 448
    jr	$ra
    # Line 447
    sw	$a1,4136($zero)
.L0dbd578c:
    # Line 443
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd573c
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos2iv

# Function: __glMgrlc_RasterPos2s
# Declared: Line 449 (Source lines: 449-455)
# Address: 0x0dbd57a4 - 0x0dbd5834 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2s
.ent __glMgrlc_RasterPos2s
__glMgrlc_RasterPos2s:
    # Line 449
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 450
    lw	$v0,4128($zero)
    # Line 449
    lui	$v1,0x3
    addiu	$v1,$v1,-28940
    # Line 450
    slti	$at,$v0,2
    bnez	$at,.L0dbd5814
    # Line 449
    addu	$gp,$t9,$v1
.L0dbd57cc:
    # Line 450
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 452
    sh	$s8,4($at)
    # Line 454
    addiu	$s8,$v0,-2
    # Line 451
    lui	$v1,0x5900
    ori	$v1,$v1,0x3804
    # Line 453
    sh	$a1,6($at)
    # Line 451
    sw	$v1,0($at)
    # Line 454
    sw	$s8,4128($zero)
    # Line 455
    ld	$s8,0($sp)
    # Line 454
    lw	$a2,4136($zero)
    lw	$a3,4140($zero)
    # Line 455
    addiu	$sp,$sp,48
    # Line 454
    addiu	$a2,$a2,8
    addiu	$a3,$a3,2
    sw	$a3,4140($zero)
    # Line 455
    jr	$ra
    # Line 454
    sw	$a2,4136($zero)
.L0dbd5814:
    # Line 450
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    b	.L0dbd57cc
    ld	$ra,24($sp)
.end __glMgrlc_RasterPos2s

# Function: __glMgrlc_RasterPos2sv
# Declared: Line 456 (Source lines: 456-462)
# Address: 0x0dbd5834 - 0x0dbd58c4 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_RasterPos2sv
.ent __glMgrlc_RasterPos2sv
__glMgrlc_RasterPos2sv:
    # Line 456
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 457
    lw	$v0,4128($zero)
    # Line 456
    lui	$v1,0x3
    addiu	$v1,$v1,-29084
    # Line 457
    slti	$at,$v0,2
    bnez	$at,.L0dbd58ac
    # Line 456
    addu	$gp,$t9,$v1
.L0dbd585c:
    # Line 457
    lw	$v1,4136($zero)
    # Line 458
    lui	$a2,0x5900
    ori	$a2,$a2,0x3804
    sw	$a2,0($v1)
    # Line 459
    lh	$a1,0($s8)
    sh	$a1,4($v1)
    # Line 460
    lh	$at,2($s8)
    ld	$gp,8($sp)
    # Line 461
    addiu	$s8,$v0,-2
    # Line 460
    sh	$at,6($v1)
    # Line 461
    sw	$s8,4128($zero)
    # Line 462
    ld	$s8,0($sp)
    # Line 461
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 462
    addiu	$sp,$sp,48
    # Line 461
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 462
    jr	$ra
    # Line 461
    sw	$a1,4136($zero)
.L0dbd58ac:
    # Line 457
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd585c
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos2sv

# Function: __glMgrlc_RasterPos3d
# Declared: Line 463 (Source lines: 463-470)
# Address: 0x0dbd58c4 - 0x0dbd5974 (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_RasterPos3d
.ent __glMgrlc_RasterPos3d
__glMgrlc_RasterPos3d:
    # Line 463
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 464
    lw	$v0,4128($zero)
    # Line 463
    lui	$v1,0x3
    addiu	$v1,$v1,-29228
    # Line 464
    slti	$at,$v0,4
    bnez	$at,.L0dbd594c
    # Line 463
    addu	$gp,$t9,$v1
.L0dbd58f4:
    ld	$gp,8($sp)
    # Line 466
    cvt.s.d	$f2,$f30
    # Line 470
    ldc1	$f30,0($sp)
    # Line 469
    addiu	$at,$v0,-4
    # Line 468
    cvt.s.d	$f0,$f5
    # Line 465
    lui	$a0,0x2000
    # Line 464
    lw	$v1,4136($zero)
    # Line 467
    cvt.s.d	$f1,$f4
    # Line 465
    ori	$a0,$a0,0x380c
    sw	$a0,0($v1)
    # Line 468
    swc1	$f0,12($v1)
    # Line 467
    swc1	$f1,8($v1)
    # Line 466
    swc1	$f2,4($v1)
    # Line 469
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 470
    addiu	$sp,$sp,80
    # Line 469
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 470
    jr	$ra
    # Line 469
    sw	$a0,4136($zero)
.L0dbd594c:
    sdc1	$f4,24($sp)
    # Line 464
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd58f4
    ld	$ra,32($sp)
.end __glMgrlc_RasterPos3d

# Function: __glMgrlc_RasterPos3dv
# Declared: Line 471 (Source lines: 471-478)
# Address: 0x0dbd5974 - 0x0dbd5a18 (Size: 164 bytes, Frame: 48)
.globl __glMgrlc_RasterPos3dv
.ent __glMgrlc_RasterPos3dv
__glMgrlc_RasterPos3dv:
    # Line 471
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 472
    lw	$v0,4128($zero)
    # Line 471
    lui	$v1,0x3
    addiu	$v1,$v1,-29404
    # Line 472
    slti	$at,$v0,4
    bnez	$at,.L0dbd5a00
    # Line 471
    addu	$gp,$t9,$v1
.L0dbd599c:
    # Line 472
    lw	$at,4136($zero)
    # Line 473
    lui	$v1,0x2000
    ori	$v1,$v1,0x380c
    sw	$v1,0($at)
    # Line 474
    ldc1	$f2,0($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($at)
    # Line 475
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($at)
    # Line 476
    ldc1	$f0,16($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 477
    addiu	$s8,$v0,-4
    # Line 476
    swc1	$f0,12($at)
    # Line 477
    sw	$s8,4128($zero)
    # Line 478
    ld	$s8,0($sp)
    # Line 477
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 478
    addiu	$sp,$sp,48
    # Line 477
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 478
    jr	$ra
    # Line 477
    sw	$a1,4136($zero)
.L0dbd5a00:
    # Line 472
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd599c
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos3dv

# Function: __glMgrlc_RasterPos3f
# Declared: Line 479 (Source lines: 479-486)
# Address: 0x0dbd5a18 - 0x0dbd5abc (Size: 164 bytes, Frame: 208)
.globl __glMgrlc_RasterPos3f
.ent __glMgrlc_RasterPos3f
__glMgrlc_RasterPos3f:
    # Line 479
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 480
    lw	$v0,4128($zero)
    # Line 479
    lui	$v1,0x3
    addiu	$v1,$v1,-29568
    # Line 480
    slti	$at,$v0,4
    bnez	$at,.L0dbd5a94
    # Line 479
    addu	$gp,$t9,$v1
.L0dbd5a48:
    # Line 480
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 485
    addiu	$at,$v0,-4
    # Line 482
    swc1	$f30,4($v1)
    # Line 486
    ldc1	$f30,0($sp)
    # Line 481
    lui	$a0,0x2000
    ori	$a0,$a0,0x380c
    # Line 484
    swc1	$f5,12($v1)
    # Line 483
    swc1	$f4,8($v1)
    # Line 481
    sw	$a0,0($v1)
    # Line 485
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 486
    addiu	$sp,$sp,80
    # Line 485
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 486
    jr	$ra
    # Line 485
    sw	$a0,4136($zero)
.L0dbd5a94:
    sdc1	$f4,24($sp)
    # Line 480
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd5a48
    ld	$ra,32($sp)
.end __glMgrlc_RasterPos3f

# Function: __glMgrlc_RasterPos3fv
# Declared: Line 487 (Source lines: 487-494)
# Address: 0x0dbd5abc - 0x0dbd5b54 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_RasterPos3fv
.ent __glMgrlc_RasterPos3fv
__glMgrlc_RasterPos3fv:
    # Line 487
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 488
    lw	$v0,4128($zero)
    # Line 487
    lui	$v1,0x3
    addiu	$v1,$v1,-29732
    # Line 488
    slti	$at,$v0,4
    bnez	$at,.L0dbd5b3c
    # Line 487
    addu	$gp,$t9,$v1
.L0dbd5ae4:
    # Line 488
    lw	$at,4136($zero)
    # Line 489
    lui	$v1,0x2000
    ori	$v1,$v1,0x380c
    sw	$v1,0($at)
    # Line 490
    lwc1	$f2,0($s8)
    swc1	$f2,4($at)
    # Line 491
    lwc1	$f1,4($s8)
    swc1	$f1,8($at)
    # Line 492
    lwc1	$f0,8($s8)
    ld	$gp,8($sp)
    # Line 493
    addiu	$s8,$v0,-4
    # Line 492
    swc1	$f0,12($at)
    # Line 493
    sw	$s8,4128($zero)
    # Line 494
    ld	$s8,0($sp)
    # Line 493
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 494
    addiu	$sp,$sp,48
    # Line 493
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 494
    jr	$ra
    # Line 493
    sw	$a1,4136($zero)
.L0dbd5b3c:
    # Line 488
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd5ae4
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos3fv

# Function: __glMgrlc_RasterPos3i
# Declared: Line 495 (Source lines: 495-502)
# Address: 0x0dbd5b54 - 0x0dbd5bf0 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_RasterPos3i
.ent __glMgrlc_RasterPos3i
__glMgrlc_RasterPos3i:
    # Line 495
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 496
    lw	$v0,4128($zero)
    # Line 495
    lui	$v1,0x3
    addiu	$v1,$v1,-29884
    # Line 496
    slti	$at,$v0,4
    bnez	$at,.L0dbd5bc8
    # Line 495
    addu	$gp,$t9,$v1
.L0dbd5b7c:
    # Line 496
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 498
    sw	$s8,4($at)
    # Line 501
    addiu	$s8,$v0,-4
    # Line 497
    lui	$v1,0x3800
    ori	$v1,$v1,0x380c
    # Line 500
    sw	$a2,12($at)
    # Line 499
    sw	$a1,8($at)
    # Line 497
    sw	$v1,0($at)
    # Line 501
    sw	$s8,4128($zero)
    # Line 502
    ld	$s8,0($sp)
    # Line 501
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 502
    addiu	$sp,$sp,80
    # Line 501
    addiu	$a3,$a3,16
    addiu	$a4,$a4,4
    sw	$a4,4140($zero)
    # Line 502
    jr	$ra
    # Line 501
    sw	$a3,4136($zero)
.L0dbd5bc8:
    sd	$a1,24($sp)
    # Line 496
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd5b7c
    ld	$ra,32($sp)
.end __glMgrlc_RasterPos3i

# Function: __glMgrlc_RasterPos3iv
# Declared: Line 503 (Source lines: 503-510)
# Address: 0x0dbd5bf0 - 0x0dbd5c88 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_RasterPos3iv
.ent __glMgrlc_RasterPos3iv
__glMgrlc_RasterPos3iv:
    # Line 503
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 504
    lw	$v0,4128($zero)
    # Line 503
    lui	$v1,0x3
    addiu	$v1,$v1,-30040
    # Line 504
    slti	$at,$v0,4
    bnez	$at,.L0dbd5c70
    # Line 503
    addu	$gp,$t9,$v1
.L0dbd5c18:
    # Line 504
    lw	$v1,4136($zero)
    # Line 505
    lui	$at,0x3800
    ori	$at,$at,0x380c
    sw	$at,0($v1)
    # Line 506
    lw	$a2,0($s8)
    sw	$a2,4($v1)
    # Line 507
    lw	$a1,4($s8)
    sw	$a1,8($v1)
    # Line 508
    lw	$at,8($s8)
    ld	$gp,8($sp)
    # Line 509
    addiu	$s8,$v0,-4
    # Line 508
    sw	$at,12($v1)
    # Line 509
    sw	$s8,4128($zero)
    # Line 510
    ld	$s8,0($sp)
    # Line 509
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 510
    addiu	$sp,$sp,48
    # Line 509
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 510
    jr	$ra
    # Line 509
    sw	$a1,4136($zero)
.L0dbd5c70:
    # Line 504
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd5c18
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos3iv

# Function: __glMgrlc_RasterPos3s
# Declared: Line 511 (Source lines: 511-518)
# Address: 0x0dbd5c88 - 0x0dbd5d24 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_RasterPos3s
.ent __glMgrlc_RasterPos3s
__glMgrlc_RasterPos3s:
    # Line 511
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 512
    lw	$v0,4128($zero)
    # Line 511
    lui	$v1,0x3
    addiu	$v1,$v1,-30192
    # Line 512
    slti	$at,$v0,3
    bnez	$at,.L0dbd5cfc
    # Line 511
    addu	$gp,$t9,$v1
.L0dbd5cb0:
    # Line 512
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 514
    sh	$s8,4($at)
    # Line 517
    addiu	$s8,$v0,-3
    # Line 513
    lui	$v1,0x3900
    ori	$v1,$v1,0x3806
    # Line 516
    sh	$a2,8($at)
    # Line 515
    sh	$a1,6($at)
    # Line 513
    sw	$v1,0($at)
    # Line 517
    sw	$s8,4128($zero)
    # Line 518
    ld	$s8,0($sp)
    # Line 517
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 518
    addiu	$sp,$sp,80
    # Line 517
    addiu	$a3,$a3,12
    addiu	$a4,$a4,3
    sw	$a4,4140($zero)
    # Line 518
    jr	$ra
    # Line 517
    sw	$a3,4136($zero)
.L0dbd5cfc:
    sd	$a1,24($sp)
    # Line 512
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd5cb0
    ld	$ra,32($sp)
.end __glMgrlc_RasterPos3s

# Function: __glMgrlc_RasterPos3sv
# Declared: Line 519 (Source lines: 519-526)
# Address: 0x0dbd5d24 - 0x0dbd5dbc (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_RasterPos3sv
.ent __glMgrlc_RasterPos3sv
__glMgrlc_RasterPos3sv:
    # Line 519
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 520
    lw	$v0,4128($zero)
    # Line 519
    lui	$v1,0x3
    addiu	$v1,$v1,-30348
    # Line 520
    slti	$at,$v0,3
    bnez	$at,.L0dbd5da4
    # Line 519
    addu	$gp,$t9,$v1
.L0dbd5d4c:
    # Line 520
    lw	$v1,4136($zero)
    # Line 521
    lui	$at,0x3900
    ori	$at,$at,0x3806
    sw	$at,0($v1)
    # Line 522
    lh	$a2,0($s8)
    sh	$a2,4($v1)
    # Line 523
    lh	$a1,2($s8)
    sh	$a1,6($v1)
    # Line 524
    lh	$at,4($s8)
    ld	$gp,8($sp)
    # Line 525
    addiu	$s8,$v0,-3
    # Line 524
    sh	$at,8($v1)
    # Line 525
    sw	$s8,4128($zero)
    # Line 526
    ld	$s8,0($sp)
    # Line 525
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 526
    addiu	$sp,$sp,48
    # Line 525
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 526
    jr	$ra
    # Line 525
    sw	$a1,4136($zero)
.L0dbd5da4:
    # Line 520
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd5d4c
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos3sv

# Function: __glMgrlc_RasterPos4d
# Declared: Line 527 (Source lines: 527-535)
# Address: 0x0dbd5dbc - 0x0dbd5e7c (Size: 192 bytes, Frame: 208)
.globl __glMgrlc_RasterPos4d
.ent __glMgrlc_RasterPos4d
__glMgrlc_RasterPos4d:
    # Line 527
    mov.d	$f6,$f15
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 528
    lw	$v0,4128($zero)
    # Line 527
    lui	$v1,0x3
    addiu	$v1,$v1,-30500
    # Line 528
    slti	$at,$v0,5
    bnez	$at,.L0dbd5e4c
    # Line 527
    addu	$gp,$t9,$v1
.L0dbd5df0:
    # Line 532
    cvt.s.d	$f1,$f5
    ld	$gp,8($sp)
    # Line 530
    cvt.s.d	$f3,$f30
    # Line 535
    ldc1	$f30,0($sp)
    # Line 534
    addiu	$at,$v0,-5
    # Line 533
    cvt.s.d	$f0,$f6
    # Line 528
    lw	$v1,4136($zero)
    # Line 529
    li	$a0,14352
    # Line 531
    cvt.s.d	$f2,$f4
    # Line 529
    sw	$a0,0($v1)
    # Line 533
    swc1	$f0,16($v1)
    # Line 532
    swc1	$f1,12($v1)
    # Line 531
    swc1	$f2,8($v1)
    # Line 530
    swc1	$f3,4($v1)
    # Line 534
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 535
    addiu	$sp,$sp,80
    # Line 534
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 535
    jr	$ra
    # Line 534
    sw	$a0,4136($zero)
.L0dbd5e4c:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 528
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd5df0
    ld	$ra,40($sp)
.end __glMgrlc_RasterPos4d

# Function: __glMgrlc_RasterPos4dv
# Declared: Line 536 (Source lines: 536-544)
# Address: 0x0dbd5e7c - 0x0dbd5f28 (Size: 172 bytes, Frame: 48)
.globl __glMgrlc_RasterPos4dv
.ent __glMgrlc_RasterPos4dv
__glMgrlc_RasterPos4dv:
    # Line 536
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 537
    lw	$v0,4128($zero)
    # Line 536
    lui	$v1,0x3
    addiu	$v1,$v1,-30692
    # Line 537
    slti	$at,$v0,5
    bnez	$at,.L0dbd5f10
    # Line 536
    addu	$gp,$t9,$v1
.L0dbd5ea4:
    # Line 537
    lw	$at,4136($zero)
    # Line 538
    li	$v1,14352
    sw	$v1,0($at)
    # Line 539
    ldc1	$f3,0($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($at)
    # Line 540
    ldc1	$f2,8($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($at)
    # Line 541
    ldc1	$f1,16($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($at)
    # Line 542
    ldc1	$f0,24($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 543
    addiu	$s8,$v0,-5
    # Line 542
    swc1	$f0,16($at)
    # Line 543
    sw	$s8,4128($zero)
    # Line 544
    ld	$s8,0($sp)
    # Line 543
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 544
    addiu	$sp,$sp,48
    # Line 543
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 544
    jr	$ra
    # Line 543
    sw	$a1,4136($zero)
.L0dbd5f10:
    # Line 537
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd5ea4
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos4dv

# Function: __glMgrlc_RasterPos4f
# Declared: Line 545 (Source lines: 545-553)
# Address: 0x0dbd5f28 - 0x0dbd5fd8 (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_RasterPos4f
.ent __glMgrlc_RasterPos4f
__glMgrlc_RasterPos4f:
    # Line 545
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 546
    lw	$v0,4128($zero)
    # Line 545
    lui	$v1,0x3
    addiu	$v1,$v1,-30864
    # Line 546
    slti	$at,$v0,5
    bnez	$at,.L0dbd5fa8
    # Line 545
    addu	$gp,$t9,$v1
.L0dbd5f5c:
    # Line 546
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 552
    addiu	$at,$v0,-5
    # Line 548
    swc1	$f30,4($v1)
    # Line 553
    ldc1	$f30,0($sp)
    # Line 547
    li	$a0,14352
    # Line 551
    swc1	$f6,16($v1)
    # Line 550
    swc1	$f5,12($v1)
    # Line 549
    swc1	$f4,8($v1)
    # Line 547
    sw	$a0,0($v1)
    # Line 552
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 553
    addiu	$sp,$sp,80
    # Line 552
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 553
    jr	$ra
    # Line 552
    sw	$a0,4136($zero)
.L0dbd5fa8:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 546
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd5f5c
    ld	$ra,40($sp)
.end __glMgrlc_RasterPos4f

# Function: __glMgrlc_RasterPos4fv
# Declared: Line 554 (Source lines: 554-562)
# Address: 0x0dbd5fd8 - 0x0dbd6074 (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_RasterPos4fv
.ent __glMgrlc_RasterPos4fv
__glMgrlc_RasterPos4fv:
    # Line 554
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 555
    lw	$v0,4128($zero)
    # Line 554
    lui	$v1,0x3
    addiu	$v1,$v1,-31040
    # Line 555
    slti	$at,$v0,5
    bnez	$at,.L0dbd605c
    # Line 554
    addu	$gp,$t9,$v1
.L0dbd6000:
    # Line 555
    lw	$at,4136($zero)
    # Line 556
    li	$v1,14352
    sw	$v1,0($at)
    # Line 557
    lwc1	$f3,0($s8)
    swc1	$f3,4($at)
    # Line 558
    lwc1	$f2,4($s8)
    swc1	$f2,8($at)
    # Line 559
    lwc1	$f1,8($s8)
    swc1	$f1,12($at)
    # Line 560
    lwc1	$f0,12($s8)
    ld	$gp,8($sp)
    # Line 561
    addiu	$s8,$v0,-5
    # Line 560
    swc1	$f0,16($at)
    # Line 561
    sw	$s8,4128($zero)
    # Line 562
    ld	$s8,0($sp)
    # Line 561
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 562
    addiu	$sp,$sp,48
    # Line 561
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 562
    jr	$ra
    # Line 561
    sw	$a1,4136($zero)
.L0dbd605c:
    # Line 555
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6000
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos4fv

# Function: __glMgrlc_RasterPos4i
# Declared: Line 563 (Source lines: 563-571)
# Address: 0x0dbd6074 - 0x0dbd611c (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_RasterPos4i
.ent __glMgrlc_RasterPos4i
__glMgrlc_RasterPos4i:
    # Line 563
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 564
    lw	$v0,4128($zero)
    # Line 563
    lui	$v1,0x3
    addiu	$v1,$v1,-31196
    # Line 564
    slti	$at,$v0,5
    bnez	$at,.L0dbd60ec
    # Line 563
    addu	$gp,$t9,$v1
.L0dbd609c:
    # Line 564
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 566
    sw	$s8,4($at)
    # Line 570
    addiu	$s8,$v0,-5
    # Line 565
    lui	$v1,0x1800
    ori	$v1,$v1,0x3810
    # Line 569
    sw	$a3,16($at)
    # Line 568
    sw	$a2,12($at)
    # Line 567
    sw	$a1,8($at)
    # Line 565
    sw	$v1,0($at)
    # Line 570
    sw	$s8,4128($zero)
    # Line 571
    ld	$s8,0($sp)
    # Line 570
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 571
    addiu	$sp,$sp,80
    # Line 570
    addiu	$a4,$a4,20
    addiu	$a5,$a5,5
    sw	$a5,4140($zero)
    # Line 571
    jr	$ra
    # Line 570
    sw	$a4,4136($zero)
.L0dbd60ec:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 564
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd609c
    ld	$ra,40($sp)
.end __glMgrlc_RasterPos4i

# Function: __glMgrlc_RasterPos4iv
# Declared: Line 572 (Source lines: 572-580)
# Address: 0x0dbd611c - 0x0dbd61bc (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_RasterPos4iv
.ent __glMgrlc_RasterPos4iv
__glMgrlc_RasterPos4iv:
    # Line 572
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 573
    lw	$v0,4128($zero)
    # Line 572
    lui	$v1,0x3
    addiu	$v1,$v1,-31364
    # Line 573
    slti	$at,$v0,5
    bnez	$at,.L0dbd61a4
    # Line 572
    addu	$gp,$t9,$v1
.L0dbd6144:
    # Line 573
    lw	$v1,4136($zero)
    # Line 574
    lui	$a1,0x1800
    ori	$a1,$a1,0x3810
    sw	$a1,0($v1)
    # Line 575
    lw	$at,0($s8)
    sw	$at,4($v1)
    # Line 576
    lw	$a2,4($s8)
    sw	$a2,8($v1)
    # Line 577
    lw	$a1,8($s8)
    sw	$a1,12($v1)
    # Line 578
    lw	$at,12($s8)
    ld	$gp,8($sp)
    # Line 579
    addiu	$s8,$v0,-5
    # Line 578
    sw	$at,16($v1)
    # Line 579
    sw	$s8,4128($zero)
    # Line 580
    ld	$s8,0($sp)
    # Line 579
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 580
    addiu	$sp,$sp,48
    # Line 579
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 580
    jr	$ra
    # Line 579
    sw	$a1,4136($zero)
.L0dbd61a4:
    # Line 573
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6144
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos4iv

# Function: __glMgrlc_RasterPos4s
# Declared: Line 581 (Source lines: 581-589)
# Address: 0x0dbd61bc - 0x0dbd6264 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_RasterPos4s
.ent __glMgrlc_RasterPos4s
__glMgrlc_RasterPos4s:
    # Line 581
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 582
    lw	$v0,4128($zero)
    # Line 581
    lui	$v1,0x3
    addiu	$v1,$v1,-31524
    # Line 582
    slti	$at,$v0,3
    bnez	$at,.L0dbd6234
    # Line 581
    addu	$gp,$t9,$v1
.L0dbd61e4:
    # Line 582
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 584
    sh	$s8,4($at)
    # Line 588
    addiu	$s8,$v0,-3
    # Line 583
    lui	$v1,0x1900
    ori	$v1,$v1,0x3808
    # Line 587
    sh	$a3,10($at)
    # Line 586
    sh	$a2,8($at)
    # Line 585
    sh	$a1,6($at)
    # Line 583
    sw	$v1,0($at)
    # Line 588
    sw	$s8,4128($zero)
    # Line 589
    ld	$s8,0($sp)
    # Line 588
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 589
    addiu	$sp,$sp,80
    # Line 588
    addiu	$a4,$a4,12
    addiu	$a5,$a5,3
    sw	$a5,4140($zero)
    # Line 589
    jr	$ra
    # Line 588
    sw	$a4,4136($zero)
.L0dbd6234:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 582
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd61e4
    ld	$ra,40($sp)
.end __glMgrlc_RasterPos4s

# Function: __glMgrlc_RasterPos4sv
# Declared: Line 590 (Source lines: 590-598)
# Address: 0x0dbd6264 - 0x0dbd6304 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_RasterPos4sv
.ent __glMgrlc_RasterPos4sv
__glMgrlc_RasterPos4sv:
    # Line 590
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 591
    lw	$v0,4128($zero)
    # Line 590
    lui	$v1,0x3
    addiu	$v1,$v1,-31692
    # Line 591
    slti	$at,$v0,3
    bnez	$at,.L0dbd62ec
    # Line 590
    addu	$gp,$t9,$v1
.L0dbd628c:
    # Line 591
    lw	$v1,4136($zero)
    # Line 592
    lui	$a1,0x1900
    ori	$a1,$a1,0x3808
    sw	$a1,0($v1)
    # Line 593
    lh	$at,0($s8)
    sh	$at,4($v1)
    # Line 594
    lh	$a2,2($s8)
    sh	$a2,6($v1)
    # Line 595
    lh	$a1,4($s8)
    sh	$a1,8($v1)
    # Line 596
    lh	$at,6($s8)
    ld	$gp,8($sp)
    # Line 597
    addiu	$s8,$v0,-3
    # Line 596
    sh	$at,10($v1)
    # Line 597
    sw	$s8,4128($zero)
    # Line 598
    ld	$s8,0($sp)
    # Line 597
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 598
    addiu	$sp,$sp,48
    # Line 597
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 598
    jr	$ra
    # Line 597
    sw	$a1,4136($zero)
.L0dbd62ec:
    # Line 591
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd628c
    ld	$ra,16($sp)
.end __glMgrlc_RasterPos4sv

# Function: __glMgrlc_TexCoord1d
# Declared: Line 599 (Source lines: 599-604)
# Address: 0x0dbd6304 - 0x0dbd638c (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1d
.ent __glMgrlc_TexCoord1d
__glMgrlc_TexCoord1d:
    # Line 599
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 600
    lw	$v0,4128($zero)
    # Line 599
    lui	$v1,0x3
    addiu	$v1,$v1,-31852
    # Line 600
    slti	$at,$v0,2
    bnez	$at,.L0dbd6374
    # Line 599
    addu	$gp,$t9,$v1
.L0dbd632c:
    ld	$gp,8($sp)
    # Line 602
    cvt.s.d	$f0,$f30
    # Line 604
    ldc1	$f30,0($sp)
    # Line 603
    addiu	$at,$v0,-2
    # Line 600
    lw	$v1,4136($zero)
    # Line 601
    lui	$a0,0x6000
    ori	$a0,$a0,0x804
    sw	$a0,0($v1)
    # Line 602
    swc1	$f0,4($v1)
    # Line 603
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 604
    addiu	$sp,$sp,48
    # Line 603
    addiu	$a0,$a0,8
    addiu	$a1,$a1,2
    sw	$a1,4140($zero)
    # Line 604
    jr	$ra
    # Line 603
    sw	$a0,4136($zero)
.L0dbd6374:
    # Line 600
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd632c
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1d

# Function: __glMgrlc_TexCoord1dv
# Declared: Line 605 (Source lines: 605-610)
# Address: 0x0dbd638c - 0x0dbd6418 (Size: 140 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1dv
.ent __glMgrlc_TexCoord1dv
__glMgrlc_TexCoord1dv:
    # Line 605
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 606
    lw	$v0,4128($zero)
    # Line 605
    lui	$v1,0x3
    addiu	$v1,$v1,-31988
    # Line 606
    slti	$at,$v0,2
    bnez	$at,.L0dbd6400
    # Line 605
    addu	$gp,$t9,$v1
.L0dbd63b4:
    # Line 606
    lw	$at,4136($zero)
    # Line 607
    lui	$v1,0x6000
    ori	$v1,$v1,0x804
    sw	$v1,0($at)
    # Line 608
    ldc1	$f0,0($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 609
    addiu	$s8,$v0,-2
    # Line 608
    swc1	$f0,4($at)
    # Line 609
    sw	$s8,4128($zero)
    # Line 610
    ld	$s8,0($sp)
    # Line 609
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 610
    addiu	$sp,$sp,48
    # Line 609
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 610
    jr	$ra
    # Line 609
    sw	$a1,4136($zero)
.L0dbd6400:
    # Line 606
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd63b4
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1dv

# Function: __glMgrlc_TexCoord1f
# Declared: Line 611 (Source lines: 611-616)
# Address: 0x0dbd6418 - 0x0dbd649c (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1f
.ent __glMgrlc_TexCoord1f
__glMgrlc_TexCoord1f:
    # Line 611
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 612
    lw	$v0,4128($zero)
    # Line 611
    lui	$v1,0x3
    addiu	$v1,$v1,-32128
    # Line 612
    slti	$at,$v0,2
    bnez	$at,.L0dbd6484
    # Line 611
    addu	$gp,$t9,$v1
.L0dbd6440:
    # Line 612
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 615
    addiu	$at,$v0,-2
    # Line 614
    swc1	$f30,4($v1)
    # Line 616
    ldc1	$f30,0($sp)
    # Line 613
    lui	$a0,0x6000
    ori	$a0,$a0,0x804
    sw	$a0,0($v1)
    # Line 615
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 616
    addiu	$sp,$sp,48
    # Line 615
    addiu	$a0,$a0,8
    addiu	$a1,$a1,2
    sw	$a1,4140($zero)
    # Line 616
    jr	$ra
    # Line 615
    sw	$a0,4136($zero)
.L0dbd6484:
    # Line 612
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6440
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1f

# Function: __glMgrlc_TexCoord1fv
# Declared: Line 617 (Source lines: 617-622)
# Address: 0x0dbd649c - 0x0dbd6524 (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1fv
.ent __glMgrlc_TexCoord1fv
__glMgrlc_TexCoord1fv:
    # Line 617
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 618
    lw	$v0,4128($zero)
    # Line 617
    lui	$v1,0x3
    addiu	$v1,$v1,-32260
    # Line 618
    slti	$at,$v0,2
    bnez	$at,.L0dbd650c
    # Line 617
    addu	$gp,$t9,$v1
.L0dbd64c4:
    # Line 618
    lw	$at,4136($zero)
    # Line 619
    lui	$v1,0x6000
    ori	$v1,$v1,0x804
    sw	$v1,0($at)
    # Line 620
    lwc1	$f0,0($s8)
    ld	$gp,8($sp)
    # Line 621
    addiu	$s8,$v0,-2
    # Line 620
    swc1	$f0,4($at)
    # Line 621
    sw	$s8,4128($zero)
    # Line 622
    ld	$s8,0($sp)
    # Line 621
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 622
    addiu	$sp,$sp,48
    # Line 621
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 622
    jr	$ra
    # Line 621
    sw	$a1,4136($zero)
.L0dbd650c:
    # Line 618
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd64c4
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1fv

# Function: __glMgrlc_TexCoord1i
# Declared: Line 623 (Source lines: 623-628)
# Address: 0x0dbd6524 - 0x0dbd65a8 (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1i
.ent __glMgrlc_TexCoord1i
__glMgrlc_TexCoord1i:
    # Line 623
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 624
    lw	$v0,4128($zero)
    # Line 623
    lui	$v1,0x3
    addiu	$v1,$v1,-32396
    # Line 624
    slti	$at,$v0,2
    bnez	$at,.L0dbd6590
    # Line 623
    addu	$gp,$t9,$v1
.L0dbd654c:
    # Line 624
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 626
    sw	$s8,4($at)
    # Line 627
    addiu	$s8,$v0,-2
    # Line 625
    lui	$v1,0x7800
    ori	$v1,$v1,0x804
    sw	$v1,0($at)
    # Line 627
    sw	$s8,4128($zero)
    # Line 628
    ld	$s8,0($sp)
    # Line 627
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 628
    addiu	$sp,$sp,48
    # Line 627
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 628
    jr	$ra
    # Line 627
    sw	$a1,4136($zero)
.L0dbd6590:
    # Line 624
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd654c
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1i

# Function: __glMgrlc_TexCoord1iv
# Declared: Line 629 (Source lines: 629-634)
# Address: 0x0dbd65a8 - 0x0dbd6630 (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1iv
.ent __glMgrlc_TexCoord1iv
__glMgrlc_TexCoord1iv:
    # Line 629
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 630
    lw	$v0,4128($zero)
    # Line 629
    lui	$v1,0x3
    addiu	$v1,$v1,-32528
    # Line 630
    slti	$at,$v0,2
    bnez	$at,.L0dbd6618
    # Line 629
    addu	$gp,$t9,$v1
.L0dbd65d0:
    # Line 630
    lw	$v1,4136($zero)
    # Line 631
    lui	$a1,0x7800
    ori	$a1,$a1,0x804
    sw	$a1,0($v1)
    # Line 632
    lw	$at,0($s8)
    ld	$gp,8($sp)
    # Line 633
    addiu	$s8,$v0,-2
    # Line 632
    sw	$at,4($v1)
    # Line 633
    sw	$s8,4128($zero)
    # Line 634
    ld	$s8,0($sp)
    # Line 633
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 634
    addiu	$sp,$sp,48
    # Line 633
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 634
    jr	$ra
    # Line 633
    sw	$a1,4136($zero)
.L0dbd6618:
    # Line 630
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd65d0
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1iv

# Function: __glMgrlc_TexCoord1s
# Declared: Line 635 (Source lines: 635-640)
# Address: 0x0dbd6630 - 0x0dbd66b4 (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1s
.ent __glMgrlc_TexCoord1s
__glMgrlc_TexCoord1s:
    # Line 635
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 636
    lw	$v0,4128($zero)
    # Line 635
    lui	$v1,0x3
    addiu	$v1,$v1,-32664
    # Line 636
    slti	$at,$v0,2
    bnez	$at,.L0dbd669c
    # Line 635
    addu	$gp,$t9,$v1
.L0dbd6658:
    # Line 636
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 638
    sh	$s8,4($at)
    # Line 639
    addiu	$s8,$v0,-2
    # Line 637
    lui	$v1,0x7900
    ori	$v1,$v1,0x802
    sw	$v1,0($at)
    # Line 639
    sw	$s8,4128($zero)
    # Line 640
    ld	$s8,0($sp)
    # Line 639
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 640
    addiu	$sp,$sp,48
    # Line 639
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 640
    jr	$ra
    # Line 639
    sw	$a1,4136($zero)
.L0dbd669c:
    # Line 636
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6658
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1s

# Function: __glMgrlc_TexCoord1sv
# Declared: Line 641 (Source lines: 641-646)
# Address: 0x0dbd66b4 - 0x0dbd673c (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_TexCoord1sv
.ent __glMgrlc_TexCoord1sv
__glMgrlc_TexCoord1sv:
    # Line 641
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 642
    lw	$v0,4128($zero)
    # Line 641
    lui	$v1,0x2
    addiu	$v1,$v1,32740
    # Line 642
    slti	$at,$v0,2
    bnez	$at,.L0dbd6724
    # Line 641
    addu	$gp,$t9,$v1
.L0dbd66dc:
    # Line 642
    lw	$v1,4136($zero)
    # Line 643
    lui	$a1,0x7900
    ori	$a1,$a1,0x802
    sw	$a1,0($v1)
    # Line 644
    lh	$at,0($s8)
    ld	$gp,8($sp)
    # Line 645
    addiu	$s8,$v0,-2
    # Line 644
    sh	$at,4($v1)
    # Line 645
    sw	$s8,4128($zero)
    # Line 646
    ld	$s8,0($sp)
    # Line 645
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 646
    addiu	$sp,$sp,48
    # Line 645
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 646
    jr	$ra
    # Line 645
    sw	$a1,4136($zero)
.L0dbd6724:
    # Line 642
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd66dc
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord1sv

# Function: __glMgrlc_TexCoord2d
# Declared: Line 647 (Source lines: 647-653)
# Address: 0x0dbd673c - 0x0dbd67d8 (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2d
.ent __glMgrlc_TexCoord2d
__glMgrlc_TexCoord2d:
    # Line 647
    mov.d	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 648
    lw	$v0,4128($zero)
    # Line 647
    lui	$v1,0x2
    addiu	$v1,$v1,32604
    # Line 648
    slti	$at,$v0,3
    bnez	$at,.L0dbd67b8
    # Line 647
    addu	$gp,$t9,$v1
.L0dbd6768:
    ld	$gp,8($sp)
    # Line 650
    cvt.s.d	$f1,$f30
    # Line 653
    ldc1	$f30,0($sp)
    # Line 652
    addiu	$at,$v0,-3
    # Line 648
    lw	$v1,4136($zero)
    # Line 651
    cvt.s.d	$f0,$f4
    # Line 649
    lui	$a0,0x4000
    ori	$a0,$a0,0x808
    sw	$a0,0($v1)
    # Line 651
    swc1	$f0,8($v1)
    # Line 650
    swc1	$f1,4($v1)
    # Line 652
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 653
    addiu	$sp,$sp,48
    # Line 652
    addiu	$a0,$a0,12
    addiu	$a1,$a1,3
    sw	$a1,4140($zero)
    # Line 653
    jr	$ra
    # Line 652
    sw	$a0,4136($zero)
.L0dbd67b8:
    # Line 648
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0dbd6768
    ld	$ra,24($sp)
.end __glMgrlc_TexCoord2d

# Function: __glMgrlc_TexCoord2dv
# Declared: Line 654 (Source lines: 654-660)
# Address: 0x0dbd67d8 - 0x0dbd6870 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2dv
.ent __glMgrlc_TexCoord2dv
__glMgrlc_TexCoord2dv:
    # Line 654
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 655
    lw	$v0,4128($zero)
    # Line 654
    lui	$v1,0x2
    addiu	$v1,$v1,32448
    # Line 655
    slti	$at,$v0,3
    bnez	$at,.L0dbd6858
    # Line 654
    addu	$gp,$t9,$v1
.L0dbd6800:
    # Line 655
    lw	$at,4136($zero)
    # Line 656
    lui	$v1,0x4000
    ori	$v1,$v1,0x808
    sw	$v1,0($at)
    # Line 657
    ldc1	$f1,0($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($at)
    # Line 658
    ldc1	$f0,8($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 659
    addiu	$s8,$v0,-3
    # Line 658
    swc1	$f0,8($at)
    # Line 659
    sw	$s8,4128($zero)
    # Line 660
    ld	$s8,0($sp)
    # Line 659
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 660
    addiu	$sp,$sp,48
    # Line 659
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 660
    jr	$ra
    # Line 659
    sw	$a1,4136($zero)
.L0dbd6858:
    # Line 655
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6800
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord2dv

# Function: __glMgrlc_TexCoord2f
# Declared: Line 661 (Source lines: 661-667)
# Address: 0x0dbd6870 - 0x0dbd6904 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2f
.ent __glMgrlc_TexCoord2f
__glMgrlc_TexCoord2f:
    # Line 661
    mov.s	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 662
    lw	$v0,4128($zero)
    # Line 661
    lui	$v1,0x2
    addiu	$v1,$v1,32296
    # Line 662
    slti	$at,$v0,3
    bnez	$at,.L0dbd68e4
    # Line 661
    addu	$gp,$t9,$v1
.L0dbd689c:
    # Line 662
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 666
    addiu	$at,$v0,-3
    # Line 664
    swc1	$f30,4($v1)
    # Line 667
    ldc1	$f30,0($sp)
    # Line 663
    lui	$a0,0x4000
    ori	$a0,$a0,0x808
    # Line 665
    swc1	$f4,8($v1)
    # Line 663
    sw	$a0,0($v1)
    # Line 666
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 667
    addiu	$sp,$sp,48
    # Line 666
    addiu	$a0,$a0,12
    addiu	$a1,$a1,3
    sw	$a1,4140($zero)
    # Line 667
    jr	$ra
    # Line 666
    sw	$a0,4136($zero)
.L0dbd68e4:
    # Line 662
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0dbd689c
    ld	$ra,24($sp)
.end __glMgrlc_TexCoord2f

# Function: __glMgrlc_TexCoord2fv
# Declared: Line 668 (Source lines: 668-674)
# Address: 0x0dbd6904 - 0x0dbd6994 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2fv
.ent __glMgrlc_TexCoord2fv
__glMgrlc_TexCoord2fv:
    # Line 668
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 669
    lw	$v0,4128($zero)
    # Line 668
    lui	$v1,0x2
    addiu	$v1,$v1,32148
    # Line 669
    slti	$at,$v0,3
    bnez	$at,.L0dbd697c
    # Line 668
    addu	$gp,$t9,$v1
.L0dbd692c:
    # Line 669
    lw	$at,4136($zero)
    # Line 670
    lui	$v1,0x4000
    ori	$v1,$v1,0x808
    sw	$v1,0($at)
    # Line 671
    lwc1	$f1,0($s8)
    swc1	$f1,4($at)
    # Line 672
    lwc1	$f0,4($s8)
    ld	$gp,8($sp)
    # Line 673
    addiu	$s8,$v0,-3
    # Line 672
    swc1	$f0,8($at)
    # Line 673
    sw	$s8,4128($zero)
    # Line 674
    ld	$s8,0($sp)
    # Line 673
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 674
    addiu	$sp,$sp,48
    # Line 673
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 674
    jr	$ra
    # Line 673
    sw	$a1,4136($zero)
.L0dbd697c:
    # Line 669
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd692c
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord2fv

# Function: __glMgrlc_TexCoord2i
# Declared: Line 675 (Source lines: 675-681)
# Address: 0x0dbd6994 - 0x0dbd6a24 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2i
.ent __glMgrlc_TexCoord2i
__glMgrlc_TexCoord2i:
    # Line 675
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 676
    lw	$v0,4128($zero)
    # Line 675
    lui	$v1,0x2
    addiu	$v1,$v1,32004
    # Line 676
    slti	$at,$v0,3
    bnez	$at,.L0dbd6a04
    # Line 675
    addu	$gp,$t9,$v1
.L0dbd69bc:
    # Line 676
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 678
    sw	$s8,4($at)
    # Line 680
    addiu	$s8,$v0,-3
    # Line 677
    lui	$v1,0x5800
    ori	$v1,$v1,0x808
    # Line 679
    sw	$a1,8($at)
    # Line 677
    sw	$v1,0($at)
    # Line 680
    sw	$s8,4128($zero)
    # Line 681
    ld	$s8,0($sp)
    # Line 680
    lw	$a2,4136($zero)
    lw	$a3,4140($zero)
    # Line 681
    addiu	$sp,$sp,48
    # Line 680
    addiu	$a2,$a2,12
    addiu	$a3,$a3,3
    sw	$a3,4140($zero)
    # Line 681
    jr	$ra
    # Line 680
    sw	$a2,4136($zero)
.L0dbd6a04:
    # Line 676
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    b	.L0dbd69bc
    ld	$ra,24($sp)
.end __glMgrlc_TexCoord2i

# Function: __glMgrlc_TexCoord2iv
# Declared: Line 682 (Source lines: 682-688)
# Address: 0x0dbd6a24 - 0x0dbd6ab4 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2iv
.ent __glMgrlc_TexCoord2iv
__glMgrlc_TexCoord2iv:
    # Line 682
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 683
    lw	$v0,4128($zero)
    # Line 682
    lui	$v1,0x2
    addiu	$v1,$v1,31860
    # Line 683
    slti	$at,$v0,3
    bnez	$at,.L0dbd6a9c
    # Line 682
    addu	$gp,$t9,$v1
.L0dbd6a4c:
    # Line 683
    lw	$v1,4136($zero)
    # Line 684
    lui	$a2,0x5800
    ori	$a2,$a2,0x808
    sw	$a2,0($v1)
    # Line 685
    lw	$a1,0($s8)
    sw	$a1,4($v1)
    # Line 686
    lw	$at,4($s8)
    ld	$gp,8($sp)
    # Line 687
    addiu	$s8,$v0,-3
    # Line 686
    sw	$at,8($v1)
    # Line 687
    sw	$s8,4128($zero)
    # Line 688
    ld	$s8,0($sp)
    # Line 687
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 688
    addiu	$sp,$sp,48
    # Line 687
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 688
    jr	$ra
    # Line 687
    sw	$a1,4136($zero)
.L0dbd6a9c:
    # Line 683
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6a4c
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord2iv

# Function: __glMgrlc_TexCoord2s
# Declared: Line 689 (Source lines: 689-695)
# Address: 0x0dbd6ab4 - 0x0dbd6b44 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2s
.ent __glMgrlc_TexCoord2s
__glMgrlc_TexCoord2s:
    # Line 689
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 690
    lw	$v0,4128($zero)
    # Line 689
    lui	$v1,0x2
    addiu	$v1,$v1,31716
    # Line 690
    slti	$at,$v0,2
    bnez	$at,.L0dbd6b24
    # Line 689
    addu	$gp,$t9,$v1
.L0dbd6adc:
    # Line 690
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 692
    sh	$s8,4($at)
    # Line 694
    addiu	$s8,$v0,-2
    # Line 691
    lui	$v1,0x5900
    ori	$v1,$v1,0x804
    # Line 693
    sh	$a1,6($at)
    # Line 691
    sw	$v1,0($at)
    # Line 694
    sw	$s8,4128($zero)
    # Line 695
    ld	$s8,0($sp)
    # Line 694
    lw	$a2,4136($zero)
    lw	$a3,4140($zero)
    # Line 695
    addiu	$sp,$sp,48
    # Line 694
    addiu	$a2,$a2,8
    addiu	$a3,$a3,2
    sw	$a3,4140($zero)
    # Line 695
    jr	$ra
    # Line 694
    sw	$a2,4136($zero)
.L0dbd6b24:
    # Line 690
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    b	.L0dbd6adc
    ld	$ra,24($sp)
.end __glMgrlc_TexCoord2s

# Function: __glMgrlc_TexCoord2sv
# Declared: Line 696 (Source lines: 696-702)
# Address: 0x0dbd6b44 - 0x0dbd6bd4 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_TexCoord2sv
.ent __glMgrlc_TexCoord2sv
__glMgrlc_TexCoord2sv:
    # Line 696
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 697
    lw	$v0,4128($zero)
    # Line 696
    lui	$v1,0x2
    addiu	$v1,$v1,31572
    # Line 697
    slti	$at,$v0,2
    bnez	$at,.L0dbd6bbc
    # Line 696
    addu	$gp,$t9,$v1
.L0dbd6b6c:
    # Line 697
    lw	$v1,4136($zero)
    # Line 698
    lui	$a2,0x5900
    ori	$a2,$a2,0x804
    sw	$a2,0($v1)
    # Line 699
    lh	$a1,0($s8)
    sh	$a1,4($v1)
    # Line 700
    lh	$at,2($s8)
    ld	$gp,8($sp)
    # Line 701
    addiu	$s8,$v0,-2
    # Line 700
    sh	$at,6($v1)
    # Line 701
    sw	$s8,4128($zero)
    # Line 702
    ld	$s8,0($sp)
    # Line 701
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 702
    addiu	$sp,$sp,48
    # Line 701
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 702
    jr	$ra
    # Line 701
    sw	$a1,4136($zero)
.L0dbd6bbc:
    # Line 697
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6b6c
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord2sv

# Function: __glMgrlc_TexCoord3d
# Declared: Line 703 (Source lines: 703-710)
# Address: 0x0dbd6bd4 - 0x0dbd6c84 (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_TexCoord3d
.ent __glMgrlc_TexCoord3d
__glMgrlc_TexCoord3d:
    # Line 703
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 704
    lw	$v0,4128($zero)
    # Line 703
    lui	$v1,0x2
    addiu	$v1,$v1,31428
    # Line 704
    slti	$at,$v0,4
    bnez	$at,.L0dbd6c5c
    # Line 703
    addu	$gp,$t9,$v1
.L0dbd6c04:
    ld	$gp,8($sp)
    # Line 706
    cvt.s.d	$f2,$f30
    # Line 710
    ldc1	$f30,0($sp)
    # Line 709
    addiu	$at,$v0,-4
    # Line 708
    cvt.s.d	$f0,$f5
    # Line 705
    lui	$a0,0x2000
    # Line 704
    lw	$v1,4136($zero)
    # Line 707
    cvt.s.d	$f1,$f4
    # Line 705
    ori	$a0,$a0,0x80c
    sw	$a0,0($v1)
    # Line 708
    swc1	$f0,12($v1)
    # Line 707
    swc1	$f1,8($v1)
    # Line 706
    swc1	$f2,4($v1)
    # Line 709
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 710
    addiu	$sp,$sp,80
    # Line 709
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 710
    jr	$ra
    # Line 709
    sw	$a0,4136($zero)
.L0dbd6c5c:
    sdc1	$f4,24($sp)
    # Line 704
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd6c04
    ld	$ra,32($sp)
.end __glMgrlc_TexCoord3d

# Function: __glMgrlc_TexCoord3dv
# Declared: Line 711 (Source lines: 711-718)
# Address: 0x0dbd6c84 - 0x0dbd6d28 (Size: 164 bytes, Frame: 48)
.globl __glMgrlc_TexCoord3dv
.ent __glMgrlc_TexCoord3dv
__glMgrlc_TexCoord3dv:
    # Line 711
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 712
    lw	$v0,4128($zero)
    # Line 711
    lui	$v1,0x2
    addiu	$v1,$v1,31252
    # Line 712
    slti	$at,$v0,4
    bnez	$at,.L0dbd6d10
    # Line 711
    addu	$gp,$t9,$v1
.L0dbd6cac:
    # Line 712
    lw	$at,4136($zero)
    # Line 713
    lui	$v1,0x2000
    ori	$v1,$v1,0x80c
    sw	$v1,0($at)
    # Line 714
    ldc1	$f2,0($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($at)
    # Line 715
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($at)
    # Line 716
    ldc1	$f0,16($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 717
    addiu	$s8,$v0,-4
    # Line 716
    swc1	$f0,12($at)
    # Line 717
    sw	$s8,4128($zero)
    # Line 718
    ld	$s8,0($sp)
    # Line 717
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 718
    addiu	$sp,$sp,48
    # Line 717
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 718
    jr	$ra
    # Line 717
    sw	$a1,4136($zero)
.L0dbd6d10:
    # Line 712
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6cac
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord3dv

# Function: __glMgrlc_TexCoord3f
# Declared: Line 719 (Source lines: 719-726)
# Address: 0x0dbd6d28 - 0x0dbd6dcc (Size: 164 bytes, Frame: 208)
.globl __glMgrlc_TexCoord3f
.ent __glMgrlc_TexCoord3f
__glMgrlc_TexCoord3f:
    # Line 719
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 720
    lw	$v0,4128($zero)
    # Line 719
    lui	$v1,0x2
    addiu	$v1,$v1,31088
    # Line 720
    slti	$at,$v0,4
    bnez	$at,.L0dbd6da4
    # Line 719
    addu	$gp,$t9,$v1
.L0dbd6d58:
    # Line 720
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 725
    addiu	$at,$v0,-4
    # Line 722
    swc1	$f30,4($v1)
    # Line 726
    ldc1	$f30,0($sp)
    # Line 721
    lui	$a0,0x2000
    ori	$a0,$a0,0x80c
    # Line 724
    swc1	$f5,12($v1)
    # Line 723
    swc1	$f4,8($v1)
    # Line 721
    sw	$a0,0($v1)
    # Line 725
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 726
    addiu	$sp,$sp,80
    # Line 725
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 726
    jr	$ra
    # Line 725
    sw	$a0,4136($zero)
.L0dbd6da4:
    sdc1	$f4,24($sp)
    # Line 720
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd6d58
    ld	$ra,32($sp)
.end __glMgrlc_TexCoord3f

# Function: __glMgrlc_TexCoord3fv
# Declared: Line 727 (Source lines: 727-734)
# Address: 0x0dbd6dcc - 0x0dbd6e64 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_TexCoord3fv
.ent __glMgrlc_TexCoord3fv
__glMgrlc_TexCoord3fv:
    # Line 727
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 728
    lw	$v0,4128($zero)
    # Line 727
    lui	$v1,0x2
    addiu	$v1,$v1,30924
    # Line 728
    slti	$at,$v0,4
    bnez	$at,.L0dbd6e4c
    # Line 727
    addu	$gp,$t9,$v1
.L0dbd6df4:
    # Line 728
    lw	$at,4136($zero)
    # Line 729
    lui	$v1,0x2000
    ori	$v1,$v1,0x80c
    sw	$v1,0($at)
    # Line 730
    lwc1	$f2,0($s8)
    swc1	$f2,4($at)
    # Line 731
    lwc1	$f1,4($s8)
    swc1	$f1,8($at)
    # Line 732
    lwc1	$f0,8($s8)
    ld	$gp,8($sp)
    # Line 733
    addiu	$s8,$v0,-4
    # Line 732
    swc1	$f0,12($at)
    # Line 733
    sw	$s8,4128($zero)
    # Line 734
    ld	$s8,0($sp)
    # Line 733
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 734
    addiu	$sp,$sp,48
    # Line 733
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 734
    jr	$ra
    # Line 733
    sw	$a1,4136($zero)
.L0dbd6e4c:
    # Line 728
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6df4
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord3fv

# Function: __glMgrlc_TexCoord3i
# Declared: Line 735 (Source lines: 735-742)
# Address: 0x0dbd6e64 - 0x0dbd6f00 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_TexCoord3i
.ent __glMgrlc_TexCoord3i
__glMgrlc_TexCoord3i:
    # Line 735
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 736
    lw	$v0,4128($zero)
    # Line 735
    lui	$v1,0x2
    addiu	$v1,$v1,30772
    # Line 736
    slti	$at,$v0,4
    bnez	$at,.L0dbd6ed8
    # Line 735
    addu	$gp,$t9,$v1
.L0dbd6e8c:
    # Line 736
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 738
    sw	$s8,4($at)
    # Line 741
    addiu	$s8,$v0,-4
    # Line 737
    lui	$v1,0x3800
    ori	$v1,$v1,0x80c
    # Line 740
    sw	$a2,12($at)
    # Line 739
    sw	$a1,8($at)
    # Line 737
    sw	$v1,0($at)
    # Line 741
    sw	$s8,4128($zero)
    # Line 742
    ld	$s8,0($sp)
    # Line 741
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 742
    addiu	$sp,$sp,80
    # Line 741
    addiu	$a3,$a3,16
    addiu	$a4,$a4,4
    sw	$a4,4140($zero)
    # Line 742
    jr	$ra
    # Line 741
    sw	$a3,4136($zero)
.L0dbd6ed8:
    sd	$a1,24($sp)
    # Line 736
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd6e8c
    ld	$ra,32($sp)
.end __glMgrlc_TexCoord3i

# Function: __glMgrlc_TexCoord3iv
# Declared: Line 743 (Source lines: 743-750)
# Address: 0x0dbd6f00 - 0x0dbd6f98 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_TexCoord3iv
.ent __glMgrlc_TexCoord3iv
__glMgrlc_TexCoord3iv:
    # Line 743
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 744
    lw	$v0,4128($zero)
    # Line 743
    lui	$v1,0x2
    addiu	$v1,$v1,30616
    # Line 744
    slti	$at,$v0,4
    bnez	$at,.L0dbd6f80
    # Line 743
    addu	$gp,$t9,$v1
.L0dbd6f28:
    # Line 744
    lw	$v1,4136($zero)
    # Line 745
    lui	$at,0x3800
    ori	$at,$at,0x80c
    sw	$at,0($v1)
    # Line 746
    lw	$a2,0($s8)
    sw	$a2,4($v1)
    # Line 747
    lw	$a1,4($s8)
    sw	$a1,8($v1)
    # Line 748
    lw	$at,8($s8)
    ld	$gp,8($sp)
    # Line 749
    addiu	$s8,$v0,-4
    # Line 748
    sw	$at,12($v1)
    # Line 749
    sw	$s8,4128($zero)
    # Line 750
    ld	$s8,0($sp)
    # Line 749
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 750
    addiu	$sp,$sp,48
    # Line 749
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 750
    jr	$ra
    # Line 749
    sw	$a1,4136($zero)
.L0dbd6f80:
    # Line 744
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd6f28
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord3iv

# Function: __glMgrlc_TexCoord3s
# Declared: Line 751 (Source lines: 751-758)
# Address: 0x0dbd6f98 - 0x0dbd7034 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_TexCoord3s
.ent __glMgrlc_TexCoord3s
__glMgrlc_TexCoord3s:
    # Line 751
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 752
    lw	$v0,4128($zero)
    # Line 751
    lui	$v1,0x2
    addiu	$v1,$v1,30464
    # Line 752
    slti	$at,$v0,3
    bnez	$at,.L0dbd700c
    # Line 751
    addu	$gp,$t9,$v1
.L0dbd6fc0:
    # Line 752
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 754
    sh	$s8,4($at)
    # Line 757
    addiu	$s8,$v0,-3
    # Line 753
    lui	$v1,0x3900
    ori	$v1,$v1,0x806
    # Line 756
    sh	$a2,8($at)
    # Line 755
    sh	$a1,6($at)
    # Line 753
    sw	$v1,0($at)
    # Line 757
    sw	$s8,4128($zero)
    # Line 758
    ld	$s8,0($sp)
    # Line 757
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 758
    addiu	$sp,$sp,80
    # Line 757
    addiu	$a3,$a3,12
    addiu	$a4,$a4,3
    sw	$a4,4140($zero)
    # Line 758
    jr	$ra
    # Line 757
    sw	$a3,4136($zero)
.L0dbd700c:
    sd	$a1,24($sp)
    # Line 752
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd6fc0
    ld	$ra,32($sp)
.end __glMgrlc_TexCoord3s

# Function: __glMgrlc_TexCoord3sv
# Declared: Line 759 (Source lines: 759-766)
# Address: 0x0dbd7034 - 0x0dbd70cc (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_TexCoord3sv
.ent __glMgrlc_TexCoord3sv
__glMgrlc_TexCoord3sv:
    # Line 759
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 760
    lw	$v0,4128($zero)
    # Line 759
    lui	$v1,0x2
    addiu	$v1,$v1,30308
    # Line 760
    slti	$at,$v0,3
    bnez	$at,.L0dbd70b4
    # Line 759
    addu	$gp,$t9,$v1
.L0dbd705c:
    # Line 760
    lw	$v1,4136($zero)
    # Line 761
    lui	$at,0x3900
    ori	$at,$at,0x806
    sw	$at,0($v1)
    # Line 762
    lh	$a2,0($s8)
    sh	$a2,4($v1)
    # Line 763
    lh	$a1,2($s8)
    sh	$a1,6($v1)
    # Line 764
    lh	$at,4($s8)
    ld	$gp,8($sp)
    # Line 765
    addiu	$s8,$v0,-3
    # Line 764
    sh	$at,8($v1)
    # Line 765
    sw	$s8,4128($zero)
    # Line 766
    ld	$s8,0($sp)
    # Line 765
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 766
    addiu	$sp,$sp,48
    # Line 765
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 766
    jr	$ra
    # Line 765
    sw	$a1,4136($zero)
.L0dbd70b4:
    # Line 760
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd705c
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord3sv

# Function: __glMgrlc_TexCoord4d
# Declared: Line 767 (Source lines: 767-775)
# Address: 0x0dbd70cc - 0x0dbd718c (Size: 192 bytes, Frame: 208)
.globl __glMgrlc_TexCoord4d
.ent __glMgrlc_TexCoord4d
__glMgrlc_TexCoord4d:
    # Line 767
    mov.d	$f6,$f15
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 768
    lw	$v0,4128($zero)
    # Line 767
    lui	$v1,0x2
    addiu	$v1,$v1,30156
    # Line 768
    slti	$at,$v0,5
    bnez	$at,.L0dbd715c
    # Line 767
    addu	$gp,$t9,$v1
.L0dbd7100:
    # Line 772
    cvt.s.d	$f1,$f5
    ld	$gp,8($sp)
    # Line 770
    cvt.s.d	$f3,$f30
    # Line 775
    ldc1	$f30,0($sp)
    # Line 774
    addiu	$at,$v0,-5
    # Line 773
    cvt.s.d	$f0,$f6
    # Line 768
    lw	$v1,4136($zero)
    # Line 769
    li	$a0,2064
    # Line 771
    cvt.s.d	$f2,$f4
    # Line 769
    sw	$a0,0($v1)
    # Line 773
    swc1	$f0,16($v1)
    # Line 772
    swc1	$f1,12($v1)
    # Line 771
    swc1	$f2,8($v1)
    # Line 770
    swc1	$f3,4($v1)
    # Line 774
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 775
    addiu	$sp,$sp,80
    # Line 774
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 775
    jr	$ra
    # Line 774
    sw	$a0,4136($zero)
.L0dbd715c:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 768
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd7100
    ld	$ra,40($sp)
.end __glMgrlc_TexCoord4d

# Function: __glMgrlc_TexCoord4dv
# Declared: Line 776 (Source lines: 776-784)
# Address: 0x0dbd718c - 0x0dbd7238 (Size: 172 bytes, Frame: 48)
.globl __glMgrlc_TexCoord4dv
.ent __glMgrlc_TexCoord4dv
__glMgrlc_TexCoord4dv:
    # Line 776
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 777
    lw	$v0,4128($zero)
    # Line 776
    lui	$v1,0x2
    addiu	$v1,$v1,29964
    # Line 777
    slti	$at,$v0,5
    bnez	$at,.L0dbd7220
    # Line 776
    addu	$gp,$t9,$v1
.L0dbd71b4:
    # Line 777
    lw	$at,4136($zero)
    # Line 778
    li	$v1,2064
    sw	$v1,0($at)
    # Line 779
    ldc1	$f3,0($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($at)
    # Line 780
    ldc1	$f2,8($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($at)
    # Line 781
    ldc1	$f1,16($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($at)
    # Line 782
    ldc1	$f0,24($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 783
    addiu	$s8,$v0,-5
    # Line 782
    swc1	$f0,16($at)
    # Line 783
    sw	$s8,4128($zero)
    # Line 784
    ld	$s8,0($sp)
    # Line 783
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 784
    addiu	$sp,$sp,48
    # Line 783
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 784
    jr	$ra
    # Line 783
    sw	$a1,4136($zero)
.L0dbd7220:
    # Line 777
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd71b4
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord4dv

# Function: __glMgrlc_TexCoord4f
# Declared: Line 785 (Source lines: 785-793)
# Address: 0x0dbd7238 - 0x0dbd72e8 (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_TexCoord4f
.ent __glMgrlc_TexCoord4f
__glMgrlc_TexCoord4f:
    # Line 785
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 786
    lw	$v0,4128($zero)
    # Line 785
    lui	$v1,0x2
    addiu	$v1,$v1,29792
    # Line 786
    slti	$at,$v0,5
    bnez	$at,.L0dbd72b8
    # Line 785
    addu	$gp,$t9,$v1
.L0dbd726c:
    # Line 786
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 792
    addiu	$at,$v0,-5
    # Line 788
    swc1	$f30,4($v1)
    # Line 793
    ldc1	$f30,0($sp)
    # Line 787
    li	$a0,2064
    # Line 791
    swc1	$f6,16($v1)
    # Line 790
    swc1	$f5,12($v1)
    # Line 789
    swc1	$f4,8($v1)
    # Line 787
    sw	$a0,0($v1)
    # Line 792
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 793
    addiu	$sp,$sp,80
    # Line 792
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 793
    jr	$ra
    # Line 792
    sw	$a0,4136($zero)
.L0dbd72b8:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 786
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd726c
    ld	$ra,40($sp)
.end __glMgrlc_TexCoord4f

# Function: __glMgrlc_TexCoord4fv
# Declared: Line 794 (Source lines: 794-802)
# Address: 0x0dbd72e8 - 0x0dbd7384 (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_TexCoord4fv
.ent __glMgrlc_TexCoord4fv
__glMgrlc_TexCoord4fv:
    # Line 794
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 795
    lw	$v0,4128($zero)
    # Line 794
    lui	$v1,0x2
    addiu	$v1,$v1,29616
    # Line 795
    slti	$at,$v0,5
    bnez	$at,.L0dbd736c
    # Line 794
    addu	$gp,$t9,$v1
.L0dbd7310:
    # Line 795
    lw	$at,4136($zero)
    # Line 796
    li	$v1,2064
    sw	$v1,0($at)
    # Line 797
    lwc1	$f3,0($s8)
    swc1	$f3,4($at)
    # Line 798
    lwc1	$f2,4($s8)
    swc1	$f2,8($at)
    # Line 799
    lwc1	$f1,8($s8)
    swc1	$f1,12($at)
    # Line 800
    lwc1	$f0,12($s8)
    ld	$gp,8($sp)
    # Line 801
    addiu	$s8,$v0,-5
    # Line 800
    swc1	$f0,16($at)
    # Line 801
    sw	$s8,4128($zero)
    # Line 802
    ld	$s8,0($sp)
    # Line 801
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 802
    addiu	$sp,$sp,48
    # Line 801
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 802
    jr	$ra
    # Line 801
    sw	$a1,4136($zero)
.L0dbd736c:
    # Line 795
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7310
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord4fv

# Function: __glMgrlc_TexCoord4i
# Declared: Line 803 (Source lines: 803-811)
# Address: 0x0dbd7384 - 0x0dbd742c (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_TexCoord4i
.ent __glMgrlc_TexCoord4i
__glMgrlc_TexCoord4i:
    # Line 803
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 804
    lw	$v0,4128($zero)
    # Line 803
    lui	$v1,0x2
    addiu	$v1,$v1,29460
    # Line 804
    slti	$at,$v0,5
    bnez	$at,.L0dbd73fc
    # Line 803
    addu	$gp,$t9,$v1
.L0dbd73ac:
    # Line 804
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 806
    sw	$s8,4($at)
    # Line 810
    addiu	$s8,$v0,-5
    # Line 805
    lui	$v1,0x1800
    ori	$v1,$v1,0x810
    # Line 809
    sw	$a3,16($at)
    # Line 808
    sw	$a2,12($at)
    # Line 807
    sw	$a1,8($at)
    # Line 805
    sw	$v1,0($at)
    # Line 810
    sw	$s8,4128($zero)
    # Line 811
    ld	$s8,0($sp)
    # Line 810
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 811
    addiu	$sp,$sp,80
    # Line 810
    addiu	$a4,$a4,20
    addiu	$a5,$a5,5
    sw	$a5,4140($zero)
    # Line 811
    jr	$ra
    # Line 810
    sw	$a4,4136($zero)
.L0dbd73fc:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 804
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd73ac
    ld	$ra,40($sp)
.end __glMgrlc_TexCoord4i

# Function: __glMgrlc_TexCoord4iv
# Declared: Line 812 (Source lines: 812-820)
# Address: 0x0dbd742c - 0x0dbd74cc (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_TexCoord4iv
.ent __glMgrlc_TexCoord4iv
__glMgrlc_TexCoord4iv:
    # Line 812
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 813
    lw	$v0,4128($zero)
    # Line 812
    lui	$v1,0x2
    addiu	$v1,$v1,29292
    # Line 813
    slti	$at,$v0,5
    bnez	$at,.L0dbd74b4
    # Line 812
    addu	$gp,$t9,$v1
.L0dbd7454:
    # Line 813
    lw	$v1,4136($zero)
    # Line 814
    lui	$a1,0x1800
    ori	$a1,$a1,0x810
    sw	$a1,0($v1)
    # Line 815
    lw	$at,0($s8)
    sw	$at,4($v1)
    # Line 816
    lw	$a2,4($s8)
    sw	$a2,8($v1)
    # Line 817
    lw	$a1,8($s8)
    sw	$a1,12($v1)
    # Line 818
    lw	$at,12($s8)
    ld	$gp,8($sp)
    # Line 819
    addiu	$s8,$v0,-5
    # Line 818
    sw	$at,16($v1)
    # Line 819
    sw	$s8,4128($zero)
    # Line 820
    ld	$s8,0($sp)
    # Line 819
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 820
    addiu	$sp,$sp,48
    # Line 819
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 820
    jr	$ra
    # Line 819
    sw	$a1,4136($zero)
.L0dbd74b4:
    # Line 813
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7454
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord4iv

# Function: __glMgrlc_TexCoord4s
# Declared: Line 821 (Source lines: 821-829)
# Address: 0x0dbd74cc - 0x0dbd7574 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_TexCoord4s
.ent __glMgrlc_TexCoord4s
__glMgrlc_TexCoord4s:
    # Line 821
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 822
    lw	$v0,4128($zero)
    # Line 821
    lui	$v1,0x2
    addiu	$v1,$v1,29132
    # Line 822
    slti	$at,$v0,3
    bnez	$at,.L0dbd7544
    # Line 821
    addu	$gp,$t9,$v1
.L0dbd74f4:
    # Line 822
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 824
    sh	$s8,4($at)
    # Line 828
    addiu	$s8,$v0,-3
    # Line 823
    lui	$v1,0x1900
    ori	$v1,$v1,0x808
    # Line 827
    sh	$a3,10($at)
    # Line 826
    sh	$a2,8($at)
    # Line 825
    sh	$a1,6($at)
    # Line 823
    sw	$v1,0($at)
    # Line 828
    sw	$s8,4128($zero)
    # Line 829
    ld	$s8,0($sp)
    # Line 828
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 829
    addiu	$sp,$sp,80
    # Line 828
    addiu	$a4,$a4,12
    addiu	$a5,$a5,3
    sw	$a5,4140($zero)
    # Line 829
    jr	$ra
    # Line 828
    sw	$a4,4136($zero)
.L0dbd7544:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 822
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd74f4
    ld	$ra,40($sp)
.end __glMgrlc_TexCoord4s

# Function: __glMgrlc_TexCoord4sv
# Declared: Line 830 (Source lines: 830-838)
# Address: 0x0dbd7574 - 0x0dbd7614 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_TexCoord4sv
.ent __glMgrlc_TexCoord4sv
__glMgrlc_TexCoord4sv:
    # Line 830
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 831
    lw	$v0,4128($zero)
    # Line 830
    lui	$v1,0x2
    addiu	$v1,$v1,28964
    # Line 831
    slti	$at,$v0,3
    bnez	$at,.L0dbd75fc
    # Line 830
    addu	$gp,$t9,$v1
.L0dbd759c:
    # Line 831
    lw	$v1,4136($zero)
    # Line 832
    lui	$a1,0x1900
    ori	$a1,$a1,0x808
    sw	$a1,0($v1)
    # Line 833
    lh	$at,0($s8)
    sh	$at,4($v1)
    # Line 834
    lh	$a2,2($s8)
    sh	$a2,6($v1)
    # Line 835
    lh	$a1,4($s8)
    sh	$a1,8($v1)
    # Line 836
    lh	$at,6($s8)
    ld	$gp,8($sp)
    # Line 837
    addiu	$s8,$v0,-3
    # Line 836
    sh	$at,10($v1)
    # Line 837
    sw	$s8,4128($zero)
    # Line 838
    ld	$s8,0($sp)
    # Line 837
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 838
    addiu	$sp,$sp,48
    # Line 837
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 838
    jr	$ra
    # Line 837
    sw	$a1,4136($zero)
.L0dbd75fc:
    # Line 831
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd759c
    ld	$ra,16($sp)
.end __glMgrlc_TexCoord4sv

# Function: __glMgrlc_Vertex2d
# Declared: Line 839 (Source lines: 839-845)
# Address: 0x0dbd7614 - 0x0dbd76b0 (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_Vertex2d
.ent __glMgrlc_Vertex2d
__glMgrlc_Vertex2d:
    # Line 839
    mov.d	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 840
    lw	$v0,4128($zero)
    # Line 839
    lui	$v1,0x2
    addiu	$v1,$v1,28804
    # Line 840
    slti	$at,$v0,3
    bnez	$at,.L0dbd7690
    # Line 839
    addu	$gp,$t9,$v1
.L0dbd7640:
    ld	$gp,8($sp)
    # Line 842
    cvt.s.d	$f1,$f30
    # Line 845
    ldc1	$f30,0($sp)
    # Line 844
    addiu	$at,$v0,-3
    # Line 840
    lw	$v1,4136($zero)
    # Line 843
    cvt.s.d	$f0,$f4
    # Line 841
    lui	$a0,0x4000
    ori	$a0,$a0,0x8
    sw	$a0,0($v1)
    # Line 843
    swc1	$f0,8($v1)
    # Line 842
    swc1	$f1,4($v1)
    # Line 844
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 845
    addiu	$sp,$sp,48
    # Line 844
    addiu	$a0,$a0,12
    addiu	$a1,$a1,3
    sw	$a1,4140($zero)
    # Line 845
    jr	$ra
    # Line 844
    sw	$a0,4136($zero)
.L0dbd7690:
    # Line 840
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0dbd7640
    ld	$ra,24($sp)
.end __glMgrlc_Vertex2d

# Function: __glMgrlc_Vertex2dv
# Declared: Line 846 (Source lines: 846-852)
# Address: 0x0dbd76b0 - 0x0dbd7748 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Vertex2dv
.ent __glMgrlc_Vertex2dv
__glMgrlc_Vertex2dv:
    # Line 846
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 847
    lw	$v0,4128($zero)
    # Line 846
    lui	$v1,0x2
    addiu	$v1,$v1,28648
    # Line 847
    slti	$at,$v0,3
    bnez	$at,.L0dbd7730
    # Line 846
    addu	$gp,$t9,$v1
.L0dbd76d8:
    # Line 847
    lw	$at,4136($zero)
    # Line 848
    lui	$v1,0x4000
    ori	$v1,$v1,0x8
    sw	$v1,0($at)
    # Line 849
    ldc1	$f1,0($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($at)
    # Line 850
    ldc1	$f0,8($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 851
    addiu	$s8,$v0,-3
    # Line 850
    swc1	$f0,8($at)
    # Line 851
    sw	$s8,4128($zero)
    # Line 852
    ld	$s8,0($sp)
    # Line 851
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 852
    addiu	$sp,$sp,48
    # Line 851
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 852
    jr	$ra
    # Line 851
    sw	$a1,4136($zero)
.L0dbd7730:
    # Line 847
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd76d8
    ld	$ra,16($sp)
.end __glMgrlc_Vertex2dv

# Function: __glMgrlc_Vertex2f
# Declared: Line 853 (Source lines: 853-859)
# Address: 0x0dbd7748 - 0x0dbd77dc (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_Vertex2f
.ent __glMgrlc_Vertex2f
__glMgrlc_Vertex2f:
    # Line 853
    mov.s	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 854
    lw	$v0,4128($zero)
    # Line 853
    lui	$v1,0x2
    addiu	$v1,$v1,28496
    # Line 854
    slti	$at,$v0,3
    bnez	$at,.L0dbd77bc
    # Line 853
    addu	$gp,$t9,$v1
.L0dbd7774:
    # Line 854
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 858
    addiu	$at,$v0,-3
    # Line 856
    swc1	$f30,4($v1)
    # Line 859
    ldc1	$f30,0($sp)
    # Line 855
    lui	$a0,0x4000
    ori	$a0,$a0,0x8
    # Line 857
    swc1	$f4,8($v1)
    # Line 855
    sw	$a0,0($v1)
    # Line 858
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 859
    addiu	$sp,$sp,48
    # Line 858
    addiu	$a0,$a0,12
    addiu	$a1,$a1,3
    sw	$a1,4140($zero)
    # Line 859
    jr	$ra
    # Line 858
    sw	$a0,4136($zero)
.L0dbd77bc:
    # Line 854
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0dbd7774
    ld	$ra,24($sp)
.end __glMgrlc_Vertex2f

# Function: __glMgrlc_Vertex2fv
# Declared: Line 860 (Source lines: 860-866)
# Address: 0x0dbd77dc - 0x0dbd786c (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_Vertex2fv
.ent __glMgrlc_Vertex2fv
__glMgrlc_Vertex2fv:
    # Line 860
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 861
    lw	$v0,4128($zero)
    # Line 860
    lui	$v1,0x2
    addiu	$v1,$v1,28348
    # Line 861
    slti	$at,$v0,3
    bnez	$at,.L0dbd7854
    # Line 860
    addu	$gp,$t9,$v1
.L0dbd7804:
    # Line 861
    lw	$at,4136($zero)
    # Line 862
    lui	$v1,0x4000
    ori	$v1,$v1,0x8
    sw	$v1,0($at)
    # Line 863
    lwc1	$f1,0($s8)
    swc1	$f1,4($at)
    # Line 864
    lwc1	$f0,4($s8)
    ld	$gp,8($sp)
    # Line 865
    addiu	$s8,$v0,-3
    # Line 864
    swc1	$f0,8($at)
    # Line 865
    sw	$s8,4128($zero)
    # Line 866
    ld	$s8,0($sp)
    # Line 865
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 866
    addiu	$sp,$sp,48
    # Line 865
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 866
    jr	$ra
    # Line 865
    sw	$a1,4136($zero)
.L0dbd7854:
    # Line 861
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7804
    ld	$ra,16($sp)
.end __glMgrlc_Vertex2fv

# Function: __glMgrlc_Vertex2i
# Declared: Line 867 (Source lines: 867-873)
# Address: 0x0dbd786c - 0x0dbd78fc (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_Vertex2i
.ent __glMgrlc_Vertex2i
__glMgrlc_Vertex2i:
    # Line 867
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 868
    lw	$v0,4128($zero)
    # Line 867
    lui	$v1,0x2
    addiu	$v1,$v1,28204
    # Line 868
    slti	$at,$v0,3
    bnez	$at,.L0dbd78dc
    # Line 867
    addu	$gp,$t9,$v1
.L0dbd7894:
    # Line 868
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 870
    sw	$s8,4($at)
    # Line 872
    addiu	$s8,$v0,-3
    # Line 869
    lui	$v1,0x5800
    ori	$v1,$v1,0x8
    # Line 871
    sw	$a1,8($at)
    # Line 869
    sw	$v1,0($at)
    # Line 872
    sw	$s8,4128($zero)
    # Line 873
    ld	$s8,0($sp)
    # Line 872
    lw	$a2,4136($zero)
    lw	$a3,4140($zero)
    # Line 873
    addiu	$sp,$sp,48
    # Line 872
    addiu	$a2,$a2,12
    addiu	$a3,$a3,3
    sw	$a3,4140($zero)
    # Line 873
    jr	$ra
    # Line 872
    sw	$a2,4136($zero)
.L0dbd78dc:
    # Line 868
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    b	.L0dbd7894
    ld	$ra,24($sp)
.end __glMgrlc_Vertex2i

# Function: __glMgrlc_Vertex2iv
# Declared: Line 874 (Source lines: 874-880)
# Address: 0x0dbd78fc - 0x0dbd798c (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_Vertex2iv
.ent __glMgrlc_Vertex2iv
__glMgrlc_Vertex2iv:
    # Line 874
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 875
    lw	$v0,4128($zero)
    # Line 874
    lui	$v1,0x2
    addiu	$v1,$v1,28060
    # Line 875
    slti	$at,$v0,3
    bnez	$at,.L0dbd7974
    # Line 874
    addu	$gp,$t9,$v1
.L0dbd7924:
    # Line 875
    lw	$v1,4136($zero)
    # Line 876
    lui	$a2,0x5800
    ori	$a2,$a2,0x8
    sw	$a2,0($v1)
    # Line 877
    lw	$a1,0($s8)
    sw	$a1,4($v1)
    # Line 878
    lw	$at,4($s8)
    ld	$gp,8($sp)
    # Line 879
    addiu	$s8,$v0,-3
    # Line 878
    sw	$at,8($v1)
    # Line 879
    sw	$s8,4128($zero)
    # Line 880
    ld	$s8,0($sp)
    # Line 879
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 880
    addiu	$sp,$sp,48
    # Line 879
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 880
    jr	$ra
    # Line 879
    sw	$a1,4136($zero)
.L0dbd7974:
    # Line 875
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7924
    ld	$ra,16($sp)
.end __glMgrlc_Vertex2iv

# Function: __glMgrlc_Vertex2s
# Declared: Line 881 (Source lines: 881-887)
# Address: 0x0dbd798c - 0x0dbd7a1c (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_Vertex2s
.ent __glMgrlc_Vertex2s
__glMgrlc_Vertex2s:
    # Line 881
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 882
    lw	$v0,4128($zero)
    # Line 881
    lui	$v1,0x2
    addiu	$v1,$v1,27916
    # Line 882
    slti	$at,$v0,2
    bnez	$at,.L0dbd79fc
    # Line 881
    addu	$gp,$t9,$v1
.L0dbd79b4:
    # Line 882
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 884
    sh	$s8,4($at)
    # Line 886
    addiu	$s8,$v0,-2
    # Line 883
    lui	$v1,0x5900
    ori	$v1,$v1,0x4
    # Line 885
    sh	$a1,6($at)
    # Line 883
    sw	$v1,0($at)
    # Line 886
    sw	$s8,4128($zero)
    # Line 887
    ld	$s8,0($sp)
    # Line 886
    lw	$a2,4136($zero)
    lw	$a3,4140($zero)
    # Line 887
    addiu	$sp,$sp,48
    # Line 886
    addiu	$a2,$a2,8
    addiu	$a3,$a3,2
    sw	$a3,4140($zero)
    # Line 887
    jr	$ra
    # Line 886
    sw	$a2,4136($zero)
.L0dbd79fc:
    # Line 882
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    b	.L0dbd79b4
    ld	$ra,24($sp)
.end __glMgrlc_Vertex2s

# Function: __glMgrlc_Vertex2sv
# Declared: Line 888 (Source lines: 888-894)
# Address: 0x0dbd7a1c - 0x0dbd7aac (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_Vertex2sv
.ent __glMgrlc_Vertex2sv
__glMgrlc_Vertex2sv:
    # Line 888
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 889
    lw	$v0,4128($zero)
    # Line 888
    lui	$v1,0x2
    addiu	$v1,$v1,27772
    # Line 889
    slti	$at,$v0,2
    bnez	$at,.L0dbd7a94
    # Line 888
    addu	$gp,$t9,$v1
.L0dbd7a44:
    # Line 889
    lw	$v1,4136($zero)
    # Line 890
    lui	$a2,0x5900
    ori	$a2,$a2,0x4
    sw	$a2,0($v1)
    # Line 891
    lh	$a1,0($s8)
    sh	$a1,4($v1)
    # Line 892
    lh	$at,2($s8)
    ld	$gp,8($sp)
    # Line 893
    addiu	$s8,$v0,-2
    # Line 892
    sh	$at,6($v1)
    # Line 893
    sw	$s8,4128($zero)
    # Line 894
    ld	$s8,0($sp)
    # Line 893
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 894
    addiu	$sp,$sp,48
    # Line 893
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 894
    jr	$ra
    # Line 893
    sw	$a1,4136($zero)
.L0dbd7a94:
    # Line 889
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7a44
    ld	$ra,16($sp)
.end __glMgrlc_Vertex2sv

# Function: __glMgrlc_Vertex3d
# Declared: Line 895 (Source lines: 895-902)
# Address: 0x0dbd7aac - 0x0dbd7b5c (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_Vertex3d
.ent __glMgrlc_Vertex3d
__glMgrlc_Vertex3d:
    # Line 895
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 896
    lw	$v0,4128($zero)
    # Line 895
    lui	$v1,0x2
    addiu	$v1,$v1,27628
    # Line 896
    slti	$at,$v0,4
    bnez	$at,.L0dbd7b34
    # Line 895
    addu	$gp,$t9,$v1
.L0dbd7adc:
    ld	$gp,8($sp)
    # Line 898
    cvt.s.d	$f2,$f30
    # Line 902
    ldc1	$f30,0($sp)
    # Line 901
    addiu	$at,$v0,-4
    # Line 900
    cvt.s.d	$f0,$f5
    # Line 897
    lui	$a0,0x2000
    # Line 896
    lw	$v1,4136($zero)
    # Line 899
    cvt.s.d	$f1,$f4
    # Line 897
    ori	$a0,$a0,0xc
    sw	$a0,0($v1)
    # Line 900
    swc1	$f0,12($v1)
    # Line 899
    swc1	$f1,8($v1)
    # Line 898
    swc1	$f2,4($v1)
    # Line 901
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 902
    addiu	$sp,$sp,80
    # Line 901
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 902
    jr	$ra
    # Line 901
    sw	$a0,4136($zero)
.L0dbd7b34:
    sdc1	$f4,24($sp)
    # Line 896
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd7adc
    ld	$ra,32($sp)
.end __glMgrlc_Vertex3d

# Function: __glMgrlc_Vertex3dv
# Declared: Line 903 (Source lines: 903-910)
# Address: 0x0dbd7b5c - 0x0dbd7c00 (Size: 164 bytes, Frame: 48)
.globl __glMgrlc_Vertex3dv
.ent __glMgrlc_Vertex3dv
__glMgrlc_Vertex3dv:
    # Line 903
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 904
    lw	$v0,4128($zero)
    # Line 903
    lui	$v1,0x2
    addiu	$v1,$v1,27452
    # Line 904
    slti	$at,$v0,4
    bnez	$at,.L0dbd7be8
    # Line 903
    addu	$gp,$t9,$v1
.L0dbd7b84:
    # Line 904
    lw	$at,4136($zero)
    # Line 905
    lui	$v1,0x2000
    ori	$v1,$v1,0xc
    sw	$v1,0($at)
    # Line 906
    ldc1	$f2,0($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($at)
    # Line 907
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($at)
    # Line 908
    ldc1	$f0,16($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 909
    addiu	$s8,$v0,-4
    # Line 908
    swc1	$f0,12($at)
    # Line 909
    sw	$s8,4128($zero)
    # Line 910
    ld	$s8,0($sp)
    # Line 909
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 910
    addiu	$sp,$sp,48
    # Line 909
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 910
    jr	$ra
    # Line 909
    sw	$a1,4136($zero)
.L0dbd7be8:
    # Line 904
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7b84
    ld	$ra,16($sp)
.end __glMgrlc_Vertex3dv

# Function: __glMgrlc_Vertex3f
# Declared: Line 911 (Source lines: 911-918)
# Address: 0x0dbd7c00 - 0x0dbd7ca4 (Size: 164 bytes, Frame: 208)
.globl __glMgrlc_Vertex3f
.ent __glMgrlc_Vertex3f
__glMgrlc_Vertex3f:
    # Line 911
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 912
    lw	$v0,4128($zero)
    # Line 911
    lui	$v1,0x2
    addiu	$v1,$v1,27288
    # Line 912
    slti	$at,$v0,4
    bnez	$at,.L0dbd7c7c
    # Line 911
    addu	$gp,$t9,$v1
.L0dbd7c30:
    # Line 912
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 917
    addiu	$at,$v0,-4
    # Line 914
    swc1	$f30,4($v1)
    # Line 918
    ldc1	$f30,0($sp)
    # Line 913
    lui	$a0,0x2000
    ori	$a0,$a0,0xc
    # Line 916
    swc1	$f5,12($v1)
    # Line 915
    swc1	$f4,8($v1)
    # Line 913
    sw	$a0,0($v1)
    # Line 917
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 918
    addiu	$sp,$sp,80
    # Line 917
    addiu	$a0,$a0,16
    addiu	$a1,$a1,4
    sw	$a1,4140($zero)
    # Line 918
    jr	$ra
    # Line 917
    sw	$a0,4136($zero)
.L0dbd7c7c:
    sdc1	$f4,24($sp)
    # Line 912
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0dbd7c30
    ld	$ra,32($sp)
.end __glMgrlc_Vertex3f

# Function: __glMgrlc_Vertex3fv
# Declared: Line 919 (Source lines: 919-926)
# Address: 0x0dbd7ca4 - 0x0dbd7d3c (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Vertex3fv
.ent __glMgrlc_Vertex3fv
__glMgrlc_Vertex3fv:
    # Line 919
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 920
    lw	$v0,4128($zero)
    # Line 919
    lui	$v1,0x2
    addiu	$v1,$v1,27124
    # Line 920
    slti	$at,$v0,4
    bnez	$at,.L0dbd7d24
    # Line 919
    addu	$gp,$t9,$v1
.L0dbd7ccc:
    # Line 920
    lw	$at,4136($zero)
    # Line 921
    lui	$v1,0x2000
    ori	$v1,$v1,0xc
    sw	$v1,0($at)
    # Line 922
    lwc1	$f2,0($s8)
    swc1	$f2,4($at)
    # Line 923
    lwc1	$f1,4($s8)
    swc1	$f1,8($at)
    # Line 924
    lwc1	$f0,8($s8)
    ld	$gp,8($sp)
    # Line 925
    addiu	$s8,$v0,-4
    # Line 924
    swc1	$f0,12($at)
    # Line 925
    sw	$s8,4128($zero)
    # Line 926
    ld	$s8,0($sp)
    # Line 925
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 926
    addiu	$sp,$sp,48
    # Line 925
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 926
    jr	$ra
    # Line 925
    sw	$a1,4136($zero)
.L0dbd7d24:
    # Line 920
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7ccc
    ld	$ra,16($sp)
.end __glMgrlc_Vertex3fv

# Function: __glMgrlc_Vertex3i
# Declared: Line 927 (Source lines: 927-934)
# Address: 0x0dbd7d3c - 0x0dbd7dd8 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Vertex3i
.ent __glMgrlc_Vertex3i
__glMgrlc_Vertex3i:
    # Line 927
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 928
    lw	$v0,4128($zero)
    # Line 927
    lui	$v1,0x2
    addiu	$v1,$v1,26972
    # Line 928
    slti	$at,$v0,4
    bnez	$at,.L0dbd7db0
    # Line 927
    addu	$gp,$t9,$v1
.L0dbd7d64:
    # Line 928
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 930
    sw	$s8,4($at)
    # Line 933
    addiu	$s8,$v0,-4
    # Line 929
    lui	$v1,0x3800
    ori	$v1,$v1,0xc
    # Line 932
    sw	$a2,12($at)
    # Line 931
    sw	$a1,8($at)
    # Line 929
    sw	$v1,0($at)
    # Line 933
    sw	$s8,4128($zero)
    # Line 934
    ld	$s8,0($sp)
    # Line 933
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 934
    addiu	$sp,$sp,80
    # Line 933
    addiu	$a3,$a3,16
    addiu	$a4,$a4,4
    sw	$a4,4140($zero)
    # Line 934
    jr	$ra
    # Line 933
    sw	$a3,4136($zero)
.L0dbd7db0:
    sd	$a1,24($sp)
    # Line 928
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd7d64
    ld	$ra,32($sp)
.end __glMgrlc_Vertex3i

# Function: __glMgrlc_Vertex3iv
# Declared: Line 935 (Source lines: 935-942)
# Address: 0x0dbd7dd8 - 0x0dbd7e70 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Vertex3iv
.ent __glMgrlc_Vertex3iv
__glMgrlc_Vertex3iv:
    # Line 935
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 936
    lw	$v0,4128($zero)
    # Line 935
    lui	$v1,0x2
    addiu	$v1,$v1,26816
    # Line 936
    slti	$at,$v0,4
    bnez	$at,.L0dbd7e58
    # Line 935
    addu	$gp,$t9,$v1
.L0dbd7e00:
    # Line 936
    lw	$v1,4136($zero)
    # Line 937
    lui	$at,0x3800
    ori	$at,$at,0xc
    sw	$at,0($v1)
    # Line 938
    lw	$a2,0($s8)
    sw	$a2,4($v1)
    # Line 939
    lw	$a1,4($s8)
    sw	$a1,8($v1)
    # Line 940
    lw	$at,8($s8)
    ld	$gp,8($sp)
    # Line 941
    addiu	$s8,$v0,-4
    # Line 940
    sw	$at,12($v1)
    # Line 941
    sw	$s8,4128($zero)
    # Line 942
    ld	$s8,0($sp)
    # Line 941
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 942
    addiu	$sp,$sp,48
    # Line 941
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    sw	$a2,4140($zero)
    # Line 942
    jr	$ra
    # Line 941
    sw	$a1,4136($zero)
.L0dbd7e58:
    # Line 936
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7e00
    ld	$ra,16($sp)
.end __glMgrlc_Vertex3iv

# Function: __glMgrlc_Vertex3s
# Declared: Line 943 (Source lines: 943-950)
# Address: 0x0dbd7e70 - 0x0dbd7f0c (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Vertex3s
.ent __glMgrlc_Vertex3s
__glMgrlc_Vertex3s:
    # Line 943
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 944
    lw	$v0,4128($zero)
    # Line 943
    lui	$v1,0x2
    addiu	$v1,$v1,26664
    # Line 944
    slti	$at,$v0,3
    bnez	$at,.L0dbd7ee4
    # Line 943
    addu	$gp,$t9,$v1
.L0dbd7e98:
    # Line 944
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 946
    sh	$s8,4($at)
    # Line 949
    addiu	$s8,$v0,-3
    # Line 945
    lui	$v1,0x3900
    ori	$v1,$v1,0x6
    # Line 948
    sh	$a2,8($at)
    # Line 947
    sh	$a1,6($at)
    # Line 945
    sw	$v1,0($at)
    # Line 949
    sw	$s8,4128($zero)
    # Line 950
    ld	$s8,0($sp)
    # Line 949
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 950
    addiu	$sp,$sp,80
    # Line 949
    addiu	$a3,$a3,12
    addiu	$a4,$a4,3
    sw	$a4,4140($zero)
    # Line 950
    jr	$ra
    # Line 949
    sw	$a3,4136($zero)
.L0dbd7ee4:
    sd	$a1,24($sp)
    # Line 944
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0dbd7e98
    ld	$ra,32($sp)
.end __glMgrlc_Vertex3s

# Function: __glMgrlc_Vertex3sv
# Declared: Line 951 (Source lines: 951-958)
# Address: 0x0dbd7f0c - 0x0dbd7fa4 (Size: 152 bytes, Frame: 48)
.globl __glMgrlc_Vertex3sv
.ent __glMgrlc_Vertex3sv
__glMgrlc_Vertex3sv:
    # Line 951
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 952
    lw	$v0,4128($zero)
    # Line 951
    lui	$v1,0x2
    addiu	$v1,$v1,26508
    # Line 952
    slti	$at,$v0,3
    bnez	$at,.L0dbd7f8c
    # Line 951
    addu	$gp,$t9,$v1
.L0dbd7f34:
    # Line 952
    lw	$v1,4136($zero)
    # Line 953
    lui	$at,0x3900
    ori	$at,$at,0x6
    sw	$at,0($v1)
    # Line 954
    lh	$a2,0($s8)
    sh	$a2,4($v1)
    # Line 955
    lh	$a1,2($s8)
    sh	$a1,6($v1)
    # Line 956
    lh	$at,4($s8)
    ld	$gp,8($sp)
    # Line 957
    addiu	$s8,$v0,-3
    # Line 956
    sh	$at,8($v1)
    # Line 957
    sw	$s8,4128($zero)
    # Line 958
    ld	$s8,0($sp)
    # Line 957
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 958
    addiu	$sp,$sp,48
    # Line 957
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 958
    jr	$ra
    # Line 957
    sw	$a1,4136($zero)
.L0dbd7f8c:
    # Line 952
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd7f34
    ld	$ra,16($sp)
.end __glMgrlc_Vertex3sv

# Function: __glMgrlc_Vertex4d
# Declared: Line 959 (Source lines: 959-967)
# Address: 0x0dbd7fa4 - 0x0dbd8064 (Size: 192 bytes, Frame: 208)
.globl __glMgrlc_Vertex4d
.ent __glMgrlc_Vertex4d
__glMgrlc_Vertex4d:
    # Line 959
    mov.d	$f6,$f15
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 960
    lw	$v0,4128($zero)
    # Line 959
    lui	$v1,0x2
    addiu	$v1,$v1,26356
    # Line 960
    slti	$at,$v0,5
    bnez	$at,.L0dbd8034
    # Line 959
    addu	$gp,$t9,$v1
.L0dbd7fd8:
    # Line 964
    cvt.s.d	$f1,$f5
    ld	$gp,8($sp)
    # Line 962
    cvt.s.d	$f3,$f30
    # Line 967
    ldc1	$f30,0($sp)
    # Line 966
    addiu	$at,$v0,-5
    # Line 965
    cvt.s.d	$f0,$f6
    # Line 960
    lw	$v1,4136($zero)
    # Line 961
    li	$a0,16
    # Line 963
    cvt.s.d	$f2,$f4
    # Line 961
    sw	$a0,0($v1)
    # Line 965
    swc1	$f0,16($v1)
    # Line 964
    swc1	$f1,12($v1)
    # Line 963
    swc1	$f2,8($v1)
    # Line 962
    swc1	$f3,4($v1)
    # Line 966
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 967
    addiu	$sp,$sp,80
    # Line 966
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 967
    jr	$ra
    # Line 966
    sw	$a0,4136($zero)
.L0dbd8034:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 960
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd7fd8
    ld	$ra,40($sp)
.end __glMgrlc_Vertex4d

# Function: __glMgrlc_Vertex4dv
# Declared: Line 968 (Source lines: 968-976)
# Address: 0x0dbd8064 - 0x0dbd8110 (Size: 172 bytes, Frame: 48)
.globl __glMgrlc_Vertex4dv
.ent __glMgrlc_Vertex4dv
__glMgrlc_Vertex4dv:
    # Line 968
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 969
    lw	$v0,4128($zero)
    # Line 968
    lui	$v1,0x2
    addiu	$v1,$v1,26164
    # Line 969
    slti	$at,$v0,5
    bnez	$at,.L0dbd80f8
    # Line 968
    addu	$gp,$t9,$v1
.L0dbd808c:
    # Line 969
    lw	$at,4136($zero)
    # Line 970
    li	$v1,16
    sw	$v1,0($at)
    # Line 971
    ldc1	$f3,0($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($at)
    # Line 972
    ldc1	$f2,8($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($at)
    # Line 973
    ldc1	$f1,16($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,12($at)
    # Line 974
    ldc1	$f0,24($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 975
    addiu	$s8,$v0,-5
    # Line 974
    swc1	$f0,16($at)
    # Line 975
    sw	$s8,4128($zero)
    # Line 976
    ld	$s8,0($sp)
    # Line 975
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 976
    addiu	$sp,$sp,48
    # Line 975
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 976
    jr	$ra
    # Line 975
    sw	$a1,4136($zero)
.L0dbd80f8:
    # Line 969
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd808c
    ld	$ra,16($sp)
.end __glMgrlc_Vertex4dv

# Function: __glMgrlc_Vertex4f
# Declared: Line 977 (Source lines: 977-985)
# Address: 0x0dbd8110 - 0x0dbd81c0 (Size: 176 bytes, Frame: 208)
.globl __glMgrlc_Vertex4f
.ent __glMgrlc_Vertex4f
__glMgrlc_Vertex4f:
    # Line 977
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 978
    lw	$v0,4128($zero)
    # Line 977
    lui	$v1,0x2
    addiu	$v1,$v1,25992
    # Line 978
    slti	$at,$v0,5
    bnez	$at,.L0dbd8190
    # Line 977
    addu	$gp,$t9,$v1
.L0dbd8144:
    # Line 978
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 984
    addiu	$at,$v0,-5
    # Line 980
    swc1	$f30,4($v1)
    # Line 985
    ldc1	$f30,0($sp)
    # Line 979
    li	$a0,16
    # Line 983
    swc1	$f6,16($v1)
    # Line 982
    swc1	$f5,12($v1)
    # Line 981
    swc1	$f4,8($v1)
    # Line 979
    sw	$a0,0($v1)
    # Line 984
    sw	$at,4128($zero)
    lw	$a0,4136($zero)
    lw	$a1,4140($zero)
    # Line 985
    addiu	$sp,$sp,80
    # Line 984
    addiu	$a0,$a0,20
    addiu	$a1,$a1,5
    sw	$a1,4140($zero)
    # Line 985
    jr	$ra
    # Line 984
    sw	$a0,4136($zero)
.L0dbd8190:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 978
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0dbd8144
    ld	$ra,40($sp)
.end __glMgrlc_Vertex4f

# Function: __glMgrlc_Vertex4fv
# Declared: Line 986 (Source lines: 986-994)
# Address: 0x0dbd81c0 - 0x0dbd825c (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_Vertex4fv
.ent __glMgrlc_Vertex4fv
__glMgrlc_Vertex4fv:
    # Line 986
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 987
    lw	$v0,4128($zero)
    # Line 986
    lui	$v1,0x2
    addiu	$v1,$v1,25816
    # Line 987
    slti	$at,$v0,5
    bnez	$at,.L0dbd8244
    # Line 986
    addu	$gp,$t9,$v1
.L0dbd81e8:
    # Line 987
    lw	$at,4136($zero)
    # Line 988
    li	$v1,16
    sw	$v1,0($at)
    # Line 989
    lwc1	$f3,0($s8)
    swc1	$f3,4($at)
    # Line 990
    lwc1	$f2,4($s8)
    swc1	$f2,8($at)
    # Line 991
    lwc1	$f1,8($s8)
    swc1	$f1,12($at)
    # Line 992
    lwc1	$f0,12($s8)
    ld	$gp,8($sp)
    # Line 993
    addiu	$s8,$v0,-5
    # Line 992
    swc1	$f0,16($at)
    # Line 993
    sw	$s8,4128($zero)
    # Line 994
    ld	$s8,0($sp)
    # Line 993
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 994
    addiu	$sp,$sp,48
    # Line 993
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 994
    jr	$ra
    # Line 993
    sw	$a1,4136($zero)
.L0dbd8244:
    # Line 987
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd81e8
    ld	$ra,16($sp)
.end __glMgrlc_Vertex4fv

# Function: __glMgrlc_Vertex4i
# Declared: Line 995 (Source lines: 995-1003)
# Address: 0x0dbd825c - 0x0dbd8304 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Vertex4i
.ent __glMgrlc_Vertex4i
__glMgrlc_Vertex4i:
    # Line 995
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 996
    lw	$v0,4128($zero)
    # Line 995
    lui	$v1,0x2
    addiu	$v1,$v1,25660
    # Line 996
    slti	$at,$v0,5
    bnez	$at,.L0dbd82d4
    # Line 995
    addu	$gp,$t9,$v1
.L0dbd8284:
    # Line 996
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 998
    sw	$s8,4($at)
    # Line 1002
    addiu	$s8,$v0,-5
    # Line 997
    lui	$v1,0x1800
    ori	$v1,$v1,0x10
    # Line 1001
    sw	$a3,16($at)
    # Line 1000
    sw	$a2,12($at)
    # Line 999
    sw	$a1,8($at)
    # Line 997
    sw	$v1,0($at)
    # Line 1002
    sw	$s8,4128($zero)
    # Line 1003
    ld	$s8,0($sp)
    # Line 1002
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 1003
    addiu	$sp,$sp,80
    # Line 1002
    addiu	$a4,$a4,20
    addiu	$a5,$a5,5
    sw	$a5,4140($zero)
    # Line 1003
    jr	$ra
    # Line 1002
    sw	$a4,4136($zero)
.L0dbd82d4:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 996
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd8284
    ld	$ra,40($sp)
.end __glMgrlc_Vertex4i

# Function: __glMgrlc_Vertex4iv
# Declared: Line 1004 (Source lines: 1004-1012)
# Address: 0x0dbd8304 - 0x0dbd83a4 (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Vertex4iv
.ent __glMgrlc_Vertex4iv
__glMgrlc_Vertex4iv:
    # Line 1004
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1005
    lw	$v0,4128($zero)
    # Line 1004
    lui	$v1,0x2
    addiu	$v1,$v1,25492
    # Line 1005
    slti	$at,$v0,5
    bnez	$at,.L0dbd838c
    # Line 1004
    addu	$gp,$t9,$v1
.L0dbd832c:
    # Line 1005
    lw	$v1,4136($zero)
    # Line 1006
    lui	$a1,0x1800
    ori	$a1,$a1,0x10
    sw	$a1,0($v1)
    # Line 1007
    lw	$at,0($s8)
    sw	$at,4($v1)
    # Line 1008
    lw	$a2,4($s8)
    sw	$a2,8($v1)
    # Line 1009
    lw	$a1,8($s8)
    sw	$a1,12($v1)
    # Line 1010
    lw	$at,12($s8)
    ld	$gp,8($sp)
    # Line 1011
    addiu	$s8,$v0,-5
    # Line 1010
    sw	$at,16($v1)
    # Line 1011
    sw	$s8,4128($zero)
    # Line 1012
    ld	$s8,0($sp)
    # Line 1011
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 1012
    addiu	$sp,$sp,48
    # Line 1011
    addiu	$a1,$a1,20
    addiu	$a2,$a2,5
    sw	$a2,4140($zero)
    # Line 1012
    jr	$ra
    # Line 1011
    sw	$a1,4136($zero)
.L0dbd838c:
    # Line 1005
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd832c
    ld	$ra,16($sp)
.end __glMgrlc_Vertex4iv

# Function: __glMgrlc_Vertex4s
# Declared: Line 1013 (Source lines: 1013-1021)
# Address: 0x0dbd83a4 - 0x0dbd844c (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Vertex4s
.ent __glMgrlc_Vertex4s
__glMgrlc_Vertex4s:
    # Line 1013
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1014
    lw	$v0,4128($zero)
    # Line 1013
    lui	$v1,0x2
    addiu	$v1,$v1,25332
    # Line 1014
    slti	$at,$v0,3
    bnez	$at,.L0dbd841c
    # Line 1013
    addu	$gp,$t9,$v1
.L0dbd83cc:
    # Line 1014
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 1016
    sh	$s8,4($at)
    # Line 1020
    addiu	$s8,$v0,-3
    # Line 1015
    lui	$v1,0x1900
    ori	$v1,$v1,0x8
    # Line 1019
    sh	$a3,10($at)
    # Line 1018
    sh	$a2,8($at)
    # Line 1017
    sh	$a1,6($at)
    # Line 1015
    sw	$v1,0($at)
    # Line 1020
    sw	$s8,4128($zero)
    # Line 1021
    ld	$s8,0($sp)
    # Line 1020
    lw	$a4,4136($zero)
    lw	$a5,4140($zero)
    # Line 1021
    addiu	$sp,$sp,80
    # Line 1020
    addiu	$a4,$a4,12
    addiu	$a5,$a5,3
    sw	$a5,4140($zero)
    # Line 1021
    jr	$ra
    # Line 1020
    sw	$a4,4136($zero)
.L0dbd841c:
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    # Line 1014
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    b	.L0dbd83cc
    ld	$ra,40($sp)
.end __glMgrlc_Vertex4s

# Function: __glMgrlc_Vertex4sv
# Declared: Line 1022 (Source lines: 1022-1030)
# Address: 0x0dbd844c - 0x0dbd84ec (Size: 160 bytes, Frame: 48)
.globl __glMgrlc_Vertex4sv
.ent __glMgrlc_Vertex4sv
__glMgrlc_Vertex4sv:
    # Line 1022
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1023
    lw	$v0,4128($zero)
    # Line 1022
    lui	$v1,0x2
    addiu	$v1,$v1,25164
    # Line 1023
    slti	$at,$v0,3
    bnez	$at,.L0dbd84d4
    # Line 1022
    addu	$gp,$t9,$v1
.L0dbd8474:
    # Line 1023
    lw	$v1,4136($zero)
    # Line 1024
    lui	$a1,0x1900
    ori	$a1,$a1,0x8
    sw	$a1,0($v1)
    # Line 1025
    lh	$at,0($s8)
    sh	$at,4($v1)
    # Line 1026
    lh	$a2,2($s8)
    sh	$a2,6($v1)
    # Line 1027
    lh	$a1,4($s8)
    sh	$a1,8($v1)
    # Line 1028
    lh	$at,6($s8)
    ld	$gp,8($sp)
    # Line 1029
    addiu	$s8,$v0,-3
    # Line 1028
    sh	$at,10($v1)
    # Line 1029
    sw	$s8,4128($zero)
    # Line 1030
    ld	$s8,0($sp)
    # Line 1029
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 1030
    addiu	$sp,$sp,48
    # Line 1029
    addiu	$a1,$a1,12
    addiu	$a2,$a2,3
    sw	$a2,4140($zero)
    # Line 1030
    jr	$ra
    # Line 1029
    sw	$a1,4136($zero)
.L0dbd84d4:
    # Line 1023
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd8474
    ld	$ra,16($sp)
.end __glMgrlc_Vertex4sv

# Function: __glMgrlc_Indexub
# Declared: Line 1031 (Source lines: 1031-1036)
# Address: 0x0dbd84ec - 0x0dbd8570 (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_Indexub
.ent __glMgrlc_Indexub
__glMgrlc_Indexub:
    # Line 1031
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1032
    lw	$v0,4128($zero)
    # Line 1031
    lui	$v1,0x2
    addiu	$v1,$v1,25004
    # Line 1032
    slti	$at,$v0,2
    bnez	$at,.L0dbd8558
    # Line 1031
    addu	$gp,$t9,$v1
.L0dbd8514:
    # Line 1032
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 1034
    sb	$s8,4($at)
    # Line 1035
    addiu	$s8,$v0,-2
    # Line 1033
    lui	$v1,0x1080
    ori	$v1,$v1,0x201
    sw	$v1,0($at)
    # Line 1035
    sw	$s8,4128($zero)
    # Line 1036
    ld	$s8,0($sp)
    # Line 1035
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 1036
    addiu	$sp,$sp,48
    # Line 1035
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 1036
    jr	$ra
    # Line 1035
    sw	$a1,4136($zero)
.L0dbd8558:
    # Line 1032
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd8514
    ld	$ra,16($sp)
.end __glMgrlc_Indexub

# Function: __glMgrlc_Indexubv
# Declared: Line 1037 (Source lines: 1037-1042)
# Address: 0x0dbd8570 - 0x0dbd85f8 (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_Indexubv
.ent __glMgrlc_Indexubv
__glMgrlc_Indexubv:
    # Line 1037
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1038
    lw	$v0,4128($zero)
    # Line 1037
    lui	$v1,0x2
    addiu	$v1,$v1,24872
    # Line 1038
    slti	$at,$v0,2
    bnez	$at,.L0dbd85e0
    # Line 1037
    addu	$gp,$t9,$v1
.L0dbd8598:
    # Line 1038
    lw	$v1,4136($zero)
    # Line 1039
    lui	$a1,0x1080
    ori	$a1,$a1,0x201
    sw	$a1,0($v1)
    # Line 1040
    lbu	$at,0($s8)
    ld	$gp,8($sp)
    # Line 1041
    addiu	$s8,$v0,-2
    # Line 1040
    sb	$at,4($v1)
    # Line 1041
    sw	$s8,4128($zero)
    # Line 1042
    ld	$s8,0($sp)
    # Line 1041
    lw	$a1,4136($zero)
    lw	$a2,4140($zero)
    # Line 1042
    addiu	$sp,$sp,48
    # Line 1041
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    sw	$a2,4140($zero)
    # Line 1042
    jr	$ra
    # Line 1041
    sw	$a1,4136($zero)
.L0dbd85e0:
    # Line 1038
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0dbd8598
    ld	$ra,16($sp)
.end __glMgrlc_Indexubv

