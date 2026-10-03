# Source: ../soft/so_polyspan.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyspan.c
# Total Functions: 37

.text

# Function: __glProcessSpan
# Declared: Line 27 (Source lines: 28-49)
# Address: 0x0db69b64 - 0x0db69c74 (Size: 272 bytes, Frame: 208)
.globl __glProcessSpan
.ent __glProcessSpan
__glProcessSpan:
    # Line 33
    sb	$zero,30528($a0)
    # Line 28
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    sd	$s5,32($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s4,8($sp)
    # Line 34
    move	$s4,$zero
    sd	$gp,24($sp)
    sd	$s6,0($sp)
    # Line 31
    lw	$s6,12300($a0)
    # Line 28
    lui	$at,0x9
    addiu	$at,$at,19252
    # Line 34
    blez	$s6,.L0db69bec
    # Line 28
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    # Line 34
    sll	$s5,$s6,0x2
    move	$s0,$s1
.L0db69bac:
    # Line 35
    lw	$t9,12176($s0)
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0db69bdc
    # Line 34
    addiu	$s0,$s0,4
    addu	$v0,$s5,$s1
    bne	$v0,$s0,.L0db69bac
    addiu	$s4,$s4,1
    ld	$s5,32($sp)
    ld	$s0,40($sp)
    b	.L0db69bec
    ld	$ra,48($sp)
.L0db69bdc:
    # Line 36
    addiu	$s4,$s4,1
    ld	$s5,32($sp)
    ld	$s0,40($sp)
    ld	$ra,48($sp)
.L0db69bec:
    # Line 41
    beq	$s6,$s4,.L0db69c5c
    # Line 49
    move	$v0,$zero
    # Line 41
    lbu	$v1,30528($s1)
    bnez	$v1,.L0db69c5c
    # Line 49
    move	$v0,$zero
    # Line 41
    slt	$a1,$s4,$s6
    beqz	$a1,.L0db69c5c
    # Line 49
    move	$v0,$zero
    sd	$ra,48($sp)
    sd	$s0,40($sp)
    # Line 41
    sll	$s0,$s4,0x2
    ld	$s4,8($sp)
    sd	$s5,32($sp)
    sll	$s5,$s6,0x2
    ld	$s6,0($sp)
    addu	$s0,$s0,$s1
    # Line 43
    lw	$t9,12236($s0)
.L0db69c30:
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0db69c4c
    # Line 42
    addu	$at,$s5,$s1
    addiu	$s0,$s0,4
    bnel	$at,$s0,.L0db69c30
    # Line 43
    lw	$t9,12236($s0)
.L0db69c4c:
    ld	$s5,32($sp)
    ld	$s0,40($sp)
    ld	$ra,48($sp)
    # Line 49
    move	$v0,$zero
.L0db69c5c:
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    ld	$s4,8($sp)
    ld	$s6,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glProcessSpan

# Function: __glProcessReplicateSpan
# Declared: Line 58 (Source lines: 59-155)
# Address: 0x0db69c74 - 0x0db6a5c8 (Size: 2388 bytes, Frame: 0)
.globl __glProcessReplicateSpan
.ent __glProcessReplicateSpan
__glProcessReplicateSpan:
    # Line 68
    sb	$zero,30528($a0)
    # Line 59
    move	$v0,$s8
    li	$at,0x8070
    subu	$sp,$sp,$at
    sd	$v0,72($sp)
    sd	$ra,24($sp)
    sd	$s6,64($sp)
    # Line 66
    lw	$s6,12300($a0)
    sd	$s2,88($sp)
    # Line 64
    lw	$s2,30300($a0)
    sd	$s5,80($sp)
    # Line 69
    move	$s5,$zero
    sd	$s3,8($sp)
    sd	$gp,56($sp)
    sd	$s1,32($sp)
    sd	$s0,48($sp)
    # Line 59
    move	$s0,$a0
    # Line 69
    move	$s1,$s0
    # Line 59
    addu	$s8,$sp,$at
    sd	$s4,40($sp)
    # Line 65
    lw	$s4,12296($a0)
    # Line 59
    lui	$at,0x9
    addiu	$at,$at,18980
    # Line 69
    blez	$s4,.L0db69d00
    # Line 59
    addu	$gp,$t9,$at
    # Line 69
    sll	$s3,$s4,0x2
    sd	$ra,24($sp)
.L0db69ce0:
    # Line 70
    lw	$t9,12176($s1)
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0db69ff4
    # Line 69
    addu	$v1,$s3,$s0
    addiu	$s1,$s1,4
    bne	$v1,$s1,.L0db69ce0
    addiu	$s5,$s5,1
.L0db69d00:
    # Line 76
    lw	$a0,30516($s0)
    # Line 89
    addiu	$v1,$s0,30716
    ld	$ra,24($sp)
    ld	$s3,8($sp)
    # Line 79
    move	$a4,$s2
    # Line 77
    lbu	$a1,3104($s0)
    # Line 69
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    # Line 77
    beqz	$a1,.L0db6a358
    # Line 69
    addiu	$a2,$a2,32752
    ld	$s1,32($sp)
    # Line 79
    blez	$s2,.L0db69e24
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db69d78
    move	$a5,$s5
.L0db69d40:
    # Line 80
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 79
    addiu	$s5,$s5,1
    # Line 80
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db69d40
    swc1	$f0,-4($a2)
    move	$a5,$s5
.L0db69d78:
    move	$a6,$a0
    move	$a7,$a2
    sra	$at,$a4,0x2
    beqz	$at,.L0db69e24
    move	$a3,$a7
    move	$a2,$a5
    move	$a0,$a6
.L0db69d94:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a3)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a3)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a3)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a3)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a3)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a3)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a3)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a3)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a3)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a3)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a3)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a3)
    lwc1	$f1,56($a0)
    addiu	$a3,$a3,64
    swc1	$f1,-8($a3)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 79
    addiu	$a2,$a2,4
    bne	$s2,$a2,.L0db69d94
    # Line 80
    swc1	$f0,-4($a3)
.L0db69e24:
    # Line 90
    move	$s5,$s4
.L0db69e28:
    # Line 89
    sw	$v1,30532($s0)
    # Line 90
    slt	$v0,$s4,$s6
    beqz	$v0,.L0db69e6c
    sd	$v0,16($sp)
    sll	$s1,$s5,0x2
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    addu	$s1,$s1,$s0
    # Line 91
    lw	$t9,12176($s1)
.L0db69e4c:
    jalr	$t9
    move	$a0,$s0
    # Line 90
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0db69e4c
    # Line 91
    lw	$t9,12176($s1)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    ld	$s3,8($sp)
.L0db69e6c:
    # Line 94
    lw	$a2,30516($s0)
    # Line 96
    move	$a4,$s2
    # Line 94
    lbu	$at,3104($s0)
    lui	$a0,0xffff
    addu	$a0,$a0,$s8
    beqz	$at,.L0db6a3ec
    addiu	$a0,$a0,32752
    # Line 96
    move	$s5,$zero
    blez	$s2,.L0db69f80
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db69ed4
    move	$a5,$s5
.L0db69e9c:
    # Line 97
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 96
    addiu	$s5,$s5,1
    # Line 97
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db69e9c
    swc1	$f0,-4($a2)
    move	$a5,$s5
.L0db69ed4:
    move	$a7,$a0
    move	$a6,$a2
    sra	$a1,$a4,0x2
    beqz	$a1,.L0db69f80
    move	$a3,$a6
    move	$a2,$a5
    move	$a0,$a7
.L0db69ef0:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a3)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a3)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a3)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a3)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a3)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a3)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a3)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a3)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a3)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a3)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a3)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a3)
    lwc1	$f1,56($a0)
    addiu	$a3,$a3,64
    swc1	$f1,-8($a3)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 96
    addiu	$a2,$a2,4
    bne	$s2,$a2,.L0db69ef0
    # Line 97
    swc1	$f0,-4($a3)
.L0db69f80:
    # Line 107
    ld	$at,16($sp)
.L0db69f84:
    move	$s5,$s4
    # Line 106
    addiu	$v0,$s0,30936
    # Line 107
    beqz	$at,.L0db69fc8
    # Line 106
    sw	$v0,30532($s0)
    # Line 107
    sll	$s1,$s5,0x2
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    addu	$s1,$s1,$s0
    # Line 108
    lw	$t9,12176($s1)
.L0db69fa8:
    jalr	$t9
    move	$a0,$s0
    # Line 107
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0db69fa8
    # Line 108
    lw	$t9,12176($s1)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    ld	$s3,8($sp)
.L0db69fc8:
    # Line 110
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    ld	$s2,88($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    ld	$at,72($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db69ff4:
    # Line 112
    lbu	$v0,30528($s0)
    # Line 113
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    # Line 112
    beqz	$v0,.L0db6a038
    # Line 71
    addiu	$s5,$s5,1
    # Line 113
    ld	$v1,72($sp)
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    ld	$s2,88($sp)
    ld	$s3,8($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0db6a038:
    slt	$a1,$s5,$s4
    beqzl	$a1,.L0db6a070
    # Line 121
    lw	$a0,30516($s0)
    # Line 113
    sll	$s1,$s5,0x2
    addu	$s1,$s1,$s0
    # Line 116
    lw	$t9,12236($s1)
.L0db6a050:
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0db6a474
    # Line 115
    addu	$at,$s3,$s0
    addiu	$s1,$s1,4
    bnel	$at,$s1,.L0db6a050
    # Line 116
    lw	$t9,12236($s1)
    # Line 121
    lw	$a0,30516($s0)
.L0db6a070:
    # Line 122
    lbu	$v0,3104($s0)
    # Line 115
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    # Line 122
    beqz	$v0,.L0db6a4ac
    # Line 115
    addiu	$a2,$a2,32752
    # Line 124
    move	$s5,$zero
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    blez	$s2,.L0db6a188
    ld	$s1,32($sp)
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db6a0d8
    move	$a4,$s2
.L0db6a0a4:
    # Line 125
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 124
    addiu	$s5,$s5,1
    # Line 125
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db6a0a4
    swc1	$f0,-4($a2)
.L0db6a0d8:
    move	$a7,$s5
    move	$a6,$a2
    sra	$at,$a4,0x2
    beqz	$at,.L0db6a188
    move	$a5,$a0
    move	$a3,$a7
    move	$a0,$a6
    move	$a2,$a5
.L0db6a0f8:
    lwc1	$f3,0($a2)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a2)
    swc1	$f0,12($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a2)
    swc1	$f2,20($a0)
    lwc1	$f1,24($a2)
    swc1	$f1,24($a0)
    lwc1	$f0,28($a2)
    swc1	$f0,28($a0)
    lwc1	$f3,32($a2)
    swc1	$f3,32($a0)
    lwc1	$f2,36($a2)
    swc1	$f2,36($a0)
    lwc1	$f1,40($a2)
    swc1	$f1,40($a0)
    lwc1	$f0,44($a2)
    swc1	$f0,44($a0)
    lwc1	$f3,48($a2)
    swc1	$f3,48($a0)
    lwc1	$f2,52($a2)
    swc1	$f2,52($a0)
    lwc1	$f1,56($a2)
    addiu	$a0,$a0,64
    swc1	$f1,-8($a0)
    addiu	$a2,$a2,64
    lwc1	$f0,-4($a2)
    # Line 124
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0db6a0f8
    # Line 125
    swc1	$f0,-4($a0)
.L0db6a188:
    # Line 135
    move	$s5,$s4
.L0db6a18c:
    # Line 134
    addiu	$v1,$s0,30716
    # Line 135
    slt	$v0,$s4,$s6
    sd	$v0,16($sp)
    beqz	$v0,.L0db6a1d4
    # Line 134
    sw	$v1,30532($s0)
    # Line 135
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    sll	$s1,$s5,0x2
    addu	$s1,$s1,$s0
    # Line 136
    lw	$t9,12236($s1)
.L0db6a1b4:
    jalr	$t9
    move	$a0,$s0
    # Line 135
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0db6a1b4
    # Line 136
    lw	$t9,12236($s1)
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
.L0db6a1d4:
    # Line 139
    lw	$a2,30516($s0)
    lbu	$at,3104($s0)
    lui	$a0,0xffff
    addu	$a0,$a0,$s8
    beqz	$at,.L0db6a540
    addiu	$a0,$a0,32752
    # Line 141
    blez	$s2,.L0db6a2e4
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db6a234
    move	$a4,$s2
.L0db6a200:
    # Line 142
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 141
    addiu	$s5,$s5,1
    # Line 142
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db6a200
    swc1	$f0,-4($a2)
.L0db6a234:
    move	$a7,$s5
    move	$a6,$a2
    sra	$a1,$a4,0x2
    beqz	$a1,.L0db6a2e4
    move	$a5,$a0
    move	$a3,$a7
    move	$a0,$a6
    move	$a2,$a5
.L0db6a254:
    lwc1	$f3,0($a2)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a2)
    swc1	$f0,12($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a2)
    swc1	$f2,20($a0)
    lwc1	$f1,24($a2)
    swc1	$f1,24($a0)
    lwc1	$f0,28($a2)
    swc1	$f0,28($a0)
    lwc1	$f3,32($a2)
    swc1	$f3,32($a0)
    lwc1	$f2,36($a2)
    swc1	$f2,36($a0)
    lwc1	$f1,40($a2)
    swc1	$f1,40($a0)
    lwc1	$f0,44($a2)
    swc1	$f0,44($a0)
    lwc1	$f3,48($a2)
    swc1	$f3,48($a0)
    lwc1	$f2,52($a2)
    swc1	$f2,52($a0)
    lwc1	$f1,56($a2)
    addiu	$a0,$a0,64
    swc1	$f1,-8($a0)
    addiu	$a2,$a2,64
    lwc1	$f0,-4($a2)
    # Line 141
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0db6a254
    # Line 142
    swc1	$f0,-4($a0)
.L0db6a2e4:
    # Line 152
    ld	$at,16($sp)
.L0db6a2e8:
    move	$s5,$s4
    # Line 151
    addiu	$v0,$s0,30936
    # Line 152
    beqz	$at,.L0db6a32c
    # Line 151
    sw	$v0,30532($s0)
    # Line 152
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    sll	$s1,$s5,0x2
    addu	$s1,$s1,$s0
    # Line 153
    lw	$t9,12236($s1)
.L0db6a30c:
    jalr	$t9
    move	$a0,$s0
    # Line 152
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0db6a30c
    # Line 153
    lw	$t9,12236($s1)
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
.L0db6a32c:
    # Line 155
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    ld	$s2,88($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    ld	$at,72($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db6a358:
    # Line 83
    move	$s5,$zero
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    blez	$s2,.L0db69e24
    ld	$s3,8($sp)
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db6a394
    move	$a4,$s2
.L0db6a378:
    addiu	$s5,$s5,1
    # Line 86
    addiu	$a2,$a2,16
    # Line 85
    addiu	$a0,$a0,16
    # Line 84
    lwc1	$f0,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db6a378
    swc1	$f0,-16($a2)
.L0db6a394:
    move	$a7,$s5
    move	$a6,$a2
    sra	$v0,$a4,0x2
    beqz	$v0,.L0db6a3e4
    move	$a5,$a0
    move	$a0,$a7
    move	$a3,$a6
    move	$a2,$a5
.L0db6a3b4:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a3)
    lwc1	$f2,32($a2)
    # Line 86
    addiu	$a3,$a3,64
    # Line 84
    swc1	$f2,-32($a3)
    # Line 85
    addiu	$a2,$a2,64
    # Line 84
    lwc1	$f1,-16($a2)
    # Line 83
    addiu	$a0,$a0,4
    bne	$s2,$a0,.L0db6a3b4
    # Line 84
    swc1	$f1,-16($a3)
.L0db6a3e4:
    b	.L0db69e28
    # Line 90
    move	$s5,$s4
.L0db6a3ec:
    # Line 100
    blez	$s2,.L0db69f80
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db6a41c
    move	$a4,$s2
.L0db6a400:
    addiu	$s5,$s5,1
    # Line 103
    addiu	$a2,$a2,16
    # Line 102
    addiu	$a0,$a0,16
    # Line 101
    lwc1	$f1,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db6a400
    swc1	$f1,-16($a2)
.L0db6a41c:
    move	$a7,$s5
    move	$a6,$a2
    sra	$v1,$a4,0x2
    beqz	$v1,.L0db6a46c
    move	$a5,$a0
    move	$a2,$a7
    move	$a3,$a6
    move	$a0,$a5
.L0db6a43c:
    lwc1	$f1,0($a0)
    swc1	$f1,0($a3)
    lwc1	$f0,16($a0)
    swc1	$f0,16($a3)
    lwc1	$f3,32($a0)
    # Line 103
    addiu	$a3,$a3,64
    # Line 101
    swc1	$f3,-32($a3)
    # Line 102
    addiu	$a0,$a0,64
    # Line 101
    lwc1	$f2,-16($a0)
    # Line 100
    addiu	$a2,$a2,4
    bne	$s2,$a2,.L0db6a43c
    # Line 101
    swc1	$f2,-16($a3)
.L0db6a46c:
    b	.L0db69f84
    # Line 107
    ld	$at,16($sp)
.L0db6a474:
    # Line 117
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,88($sp)
    ld	$s3,8($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    ld	$ra,24($sp)
    ld	$a0,72($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0db6a4ac:
    # Line 128
    move	$s5,$zero
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    blez	$s2,.L0db6a188
    ld	$s1,32($sp)
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db6a4e8
    move	$a4,$s2
.L0db6a4cc:
    addiu	$s5,$s5,1
    # Line 131
    addiu	$a2,$a2,16
    # Line 130
    addiu	$a0,$a0,16
    # Line 129
    lwc1	$f2,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db6a4cc
    swc1	$f2,-16($a2)
.L0db6a4e8:
    move	$a7,$s5
    move	$a6,$a2
    sra	$a1,$a4,0x2
    beqz	$a1,.L0db6a538
    move	$a5,$a0
    move	$a3,$a7
    move	$a0,$a6
    move	$a2,$a5
.L0db6a508:
    lwc1	$f2,0($a2)
    swc1	$f2,0($a0)
    lwc1	$f1,16($a2)
    swc1	$f1,16($a0)
    lwc1	$f0,32($a2)
    # Line 131
    addiu	$a0,$a0,64
    # Line 129
    swc1	$f0,-32($a0)
    # Line 130
    addiu	$a2,$a2,64
    # Line 129
    lwc1	$f3,-16($a2)
    # Line 128
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0db6a508
    # Line 129
    swc1	$f3,-16($a0)
.L0db6a538:
    b	.L0db6a18c
    # Line 135
    move	$s5,$s4
.L0db6a540:
    # Line 145
    blez	$s2,.L0db6a2e4
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0db6a570
    move	$a4,$s2
.L0db6a554:
    addiu	$s5,$s5,1
    # Line 148
    addiu	$a2,$a2,16
    # Line 147
    addiu	$a0,$a0,16
    # Line 146
    lwc1	$f3,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0db6a554
    swc1	$f3,-16($a2)
.L0db6a570:
    move	$a7,$s5
    move	$a6,$a2
    sra	$at,$a4,0x2
    beqz	$at,.L0db6a5c0
    move	$a5,$a0
    move	$a3,$a7
    move	$a2,$a6
    move	$a0,$a5
.L0db6a590:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,16($a0)
    swc1	$f2,16($a2)
    lwc1	$f1,32($a0)
    # Line 148
    addiu	$a2,$a2,64
    # Line 146
    swc1	$f1,-32($a2)
    # Line 147
    addiu	$a0,$a0,64
    # Line 146
    lwc1	$f0,-16($a0)
    # Line 145
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0db6a590
    # Line 146
    swc1	$f0,-16($a2)
.L0db6a5c0:
    b	.L0db6a2e8
    # Line 152
    ld	$at,16($sp)
.end __glProcessReplicateSpan

# Function: __glClipSpan
# Declared: Line 165 (Source lines: 172-254)
# Address: 0x0db6a5c8 - 0x0db6a6fc (Size: 308 bytes, Frame: 0)
.globl __glClipSpan
.ent __glClipSpan
__glClipSpan:
    # Line 177
    lw	$a3,29760($a0)
    # Line 176
    lw	$a6,29752($a0)
    # Line 174
    lw	$a5,30248($a0)
    # Line 175
    move	$v0,$zero
    # Line 172
    lw	$t3,30300($a0)
    # Line 179
    slt	$a7,$a5,$a6
    beqz	$a7,.L0db6a6e8
    addu	$a4,$t3,$a5
    # Line 183
    slt	$at,$a6,$a4
.L0db6a5ec:
    beqz	$at,.L0db6a6d8
    slt	$v1,$a5,$a3
    beqz	$v1,.L0db6a6d8
    # Line 186
    slt	$a1,$a3,$a4
    beqz	$a1,.L0db6a608
    nop
    # Line 193
    subu	$t3,$a3,$a5
.L0db6a608:
    beqz	$a7,.L0db6a6d0
    nop
    # Line 221
    lw	$t0,30524($a0)
    # Line 219
    subu	$a3,$a6,$a5
    # Line 222
    beqz	$t3,.L0db6a6cc
    move	$a7,$t3
    li	$a6,-1
    b	.L0db6a638
    lui	$t2,0x8000
.L0db6a62c:
    # Line 244
    sw	$a4,0($t0)
    beqz	$a7,.L0db6a6cc
    addiu	$t0,$t0,4
.L0db6a638:
    # Line 230
    li	$a4,-1
    # Line 224
    slti	$a2,$a7,33
    bnez	$a2,.L0db6a64c
    move	$a5,$a7
    # Line 226
    li	$a5,32
.L0db6a64c:
    # Line 228
    subu	$a7,$a7,$a5
    # Line 232
    addiu	$a5,$a5,-1
    # Line 231
    move	$v0,$t2
    # Line 232
    bltz	$a5,.L0db6a62c
    addiu	$t1,$a5,1
    andi	$at,$t1,0x1
    beqz	$at,.L0db6a688
    sra	$a1,$t1,0x1
    blez	$a3,.L0db6a67c
    # Line 235
    nor	$v1,$v0,$zero
    # Line 234
    addiu	$a3,$a3,-1
    # Line 235
    and	$a4,$v1,$a4
.L0db6a67c:
    # Line 232
    addiu	$a5,$a5,-1
    # Line 238
    srl	$v0,$v0,0x1
    sra	$a1,$t1,0x1
.L0db6a688:
    beqz	$a1,.L0db6a62c
    nop
    b	.L0db6a6bc
    nop
.L0db6a698:
    # Line 234
    addiu	$a3,$a3,-1
.L0db6a69c:
    # Line 232
    addiu	$a5,$a5,-2
    blez	$a3,.L0db6a6b4
    # Line 238
    srl	$v0,$v0,0x1
    # Line 234
    addiu	$a3,$a3,-1
    # Line 235
    nor	$at,$v0,$zero
    and	$a4,$at,$a4
.L0db6a6b4:
    # Line 232
    beq	$a5,$a6,.L0db6a62c
    # Line 238
    srl	$v0,$v0,0x1
.L0db6a6bc:
    # Line 232
    blez	$a3,.L0db6a69c
    # Line 235
    nor	$a2,$v0,$zero
    b	.L0db6a698
    and	$a4,$a2,$a4
.L0db6a6cc:
    # Line 247
    li	$v0,1
.L0db6a6d0:
    # Line 254
    jr	$ra
    # Line 252
    sw	$t3,30300($a0)
.L0db6a6d8:
    # Line 186
    li	$v0,1
    # Line 185
    li	$v1,1
    # Line 186
    jr	$ra
    # Line 185
    sb	$v1,30528($a0)
.L0db6a6e8:
    # Line 179
    slt	$a1,$a3,$a4
    beqz	$a1,.L0db6a6d0
    nop
    b	.L0db6a5ec
    # Line 183
    slt	$at,$a6,$a4
.end __glClipSpan

# Function: __glStippleSpan
# Declared: Line 260 (Source lines: 268-298)
# Address: 0x0db6a6fc - 0x0db6a7f8 (Size: 252 bytes, Frame: 0)
.globl __glStippleSpan
.ent __glStippleSpan
__glStippleSpan:
    # Line 268
    lbu	$at,4552($a0)
    lw	$a6,30300($a0)
    lw	$a2,30252($a0)
    beqz	$at,.L0db6a7d8
    move	$a5,$a6
    # Line 271
    lw	$at,3376($a0)
    lw	$a3,3416($a0)
    subu	$at,$a2,$at
    subu	$a3,$a3,$at
    addiu	$a3,$a3,-1
    andi	$a3,$a3,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,30060($a3)
.L0db6a734:
    # Line 278
    lw	$v0,30248($a0)
    # Line 291
    move	$a2,$a6
    # Line 280
    li	$at,32
    # Line 278
    andi	$v0,$v0,0x1f
    # Line 280
    subu	$at,$at,$v0
    srlv	$at,$a3,$at
    sllv	$a3,$a3,$v0
    or	$a3,$a3,$at
    beqz	$a3,.L0db6a7ec
    # Line 286
    li	$at,1
    # Line 292
    blez	$a5,.L0db6a7cc
    lw	$a4,30524($a0)
    addiu	$at,$a5,31
    sra	$a6,$at,0x4
    srl	$a6,$a6,0x1b
    addu	$a6,$a6,$at
    sra	$a6,$a6,0x5
    andi	$a0,$a6,0x3
    beqz	$a0,.L0db6a79c
    sra	$at,$a6,0x2
.L0db6a784:
    # Line 295
    addiu	$a2,$a2,-32
    # Line 294
    sw	$a3,0($a4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db6a784
    addiu	$a4,$a4,4
    sra	$at,$a6,0x2
.L0db6a79c:
    move	$a7,$a2
    beqz	$at,.L0db6a7cc
    move	$a5,$a4
    move	$a2,$a7
    move	$a0,$a5
.L0db6a7b0:
    addiu	$a0,$a0,16
    # Line 295
    addiu	$a2,$a2,-128
    # Line 294
    sw	$a3,-16($a0)
    sw	$a3,-12($a0)
    sw	$a3,-8($a0)
    # Line 295
    bgtz	$a2,.L0db6a7b0
    # Line 294
    sw	$a3,-4($a0)
.L0db6a7cc:
    # Line 298
    li	$v0,1
    jr	$ra
    nop
.L0db6a7d8:
    # Line 275
    andi	$a3,$a2,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    b	.L0db6a734
    lw	$a3,30060($a3)
.L0db6a7ec:
    # Line 287
    li	$v0,1
    jr	$ra
    # Line 286
    sb	$at,30528($a0)
.end __glStippleSpan

# Function: __glStippleStippledSpan
# Declared: Line 304 (Source lines: 312-342)
# Address: 0x0db6a7f8 - 0x0db6a918 (Size: 288 bytes, Frame: 0)
.globl __glStippleStippledSpan
.ent __glStippleStippledSpan
__glStippleStippledSpan:
    # Line 312
    lbu	$at,4552($a0)
    lw	$a6,30300($a0)
    lw	$a2,30252($a0)
    beqz	$at,.L0db6a8f8
    move	$a5,$a6
    # Line 315
    lw	$at,3376($a0)
    lw	$a3,3416($a0)
    subu	$at,$a2,$at
    subu	$a3,$a3,$at
    addiu	$a3,$a3,-1
    andi	$a3,$a3,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,30060($a3)
.L0db6a830:
    # Line 322
    lw	$v0,30248($a0)
    # Line 335
    move	$a2,$a6
    # Line 324
    li	$at,32
    # Line 322
    andi	$v0,$v0,0x1f
    # Line 324
    subu	$at,$at,$v0
    srlv	$at,$a3,$at
    sllv	$a3,$a3,$v0
    or	$a3,$a3,$at
    beqz	$a3,.L0db6a90c
    # Line 330
    li	$at,1
    # Line 336
    blez	$a5,.L0db6a8f0
    lw	$a4,30524($a0)
    addiu	$at,$a5,31
    sra	$a6,$at,0x4
    srl	$a6,$a6,0x1b
    addu	$a6,$a6,$at
    sra	$a6,$a6,0x5
    andi	$a0,$a6,0x3
    beqz	$a0,.L0db6a8a0
    sra	$v0,$a6,0x2
.L0db6a880:
    # Line 339
    addiu	$a2,$a2,-32
    # Line 338
    lw	$at,0($a4)
    addiu	$a4,$a4,4
    addi	$a0,$a0,-1
    and	$at,$at,$a3
    bnez	$a0,.L0db6a880
    sw	$at,-4($a4)
    sra	$v0,$a6,0x2
.L0db6a8a0:
    move	$a7,$a2
    beqz	$v0,.L0db6a8f0
    move	$a5,$a4
    move	$a2,$a7
    move	$a0,$a5
.L0db6a8b4:
    lw	$v0,0($a0)
    and	$v0,$v0,$a3
    lw	$at,4($a0)
    sw	$v0,0($a0)
    lw	$a1,8($a0)
    and	$at,$at,$a3
    sw	$at,4($a0)
    and	$a1,$a1,$a3
    sw	$a1,8($a0)
    lw	$v1,12($a0)
    addiu	$a0,$a0,16
    # Line 339
    addiu	$a2,$a2,-128
    # Line 338
    and	$v1,$v1,$a3
    # Line 339
    bgtz	$a2,.L0db6a8b4
    # Line 338
    sw	$v1,-4($a0)
.L0db6a8f0:
    # Line 342
    jr	$ra
    move	$v0,$zero
.L0db6a8f8:
    # Line 319
    andi	$a3,$a2,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    b	.L0db6a830
    lw	$a3,30060($a3)
.L0db6a90c:
    # Line 331
    li	$v0,1
    jr	$ra
    # Line 330
    sb	$at,30528($a0)
.end __glStippleStippledSpan

# Function: __glAlphaTestSpan
# Declared: Line 352 (Source lines: 353-406)
# Address: 0x0db6a918 - 0x0db6aaec (Size: 468 bytes, Frame: 32)
.globl __glAlphaTestSpan
.ent __glAlphaTestSpan
__glAlphaTestSpan:
    # Line 366
    lw	$t8,30524($a0)
    # Line 364
    lw	$a3,30516($a0)
    # Line 363
    lw	$a7,30800($a0)
    # Line 367
    move	$t2,$zero
    # Line 353
    addiu	$sp,$sp,-32
    # Line 361
    lw	$t3,30300($a0)
    # Line 365
    lw	$a5,3420($a0)
    sd	$a0,0($sp)
    # Line 367
    beqz	$t3,.L0db6aa98
    # Line 365
    addiu	$a5,$a5,-1
    # Line 367
    li	$t0,-1
    b	.L0db6a958
    lui	$a0,0x8000
.L0db6a94c:
    # Line 393
    sw	$t1,0($t8)
    beqz	$t3,.L0db6aa98
    addiu	$t8,$t8,4
.L0db6a958:
    # Line 375
    li	$t1,-1
    # Line 369
    slti	$at,$t3,33
    bnez	$at,.L0db6a96c
    move	$a6,$t3
    # Line 371
    li	$a6,32
.L0db6a96c:
    # Line 376
    move	$a4,$a0
    # Line 373
    subu	$t3,$t3,$a6
    # Line 377
    addiu	$a6,$a6,-1
    bltz	$a6,.L0db6a94c
    ld	$v1,0($sp)
    addiu	$t9,$a6,1
    andi	$v0,$t9,0x1
    beqz	$v0,.L0db6a9d4
    lwc1	$f4,3424($v1)
    # Line 378
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    nop
    bltz	$a2,.L0db6aab4
    # Line 377
    addiu	$a6,$a6,-1
.L0db6a9ac:
    # Line 379
    slt	$a1,$a5,$a2
    beqz	$a1,.L0db6a9c0
    # Line 380
    addu	$at,$a2,$a7
    move	$a2,$a5
    addu	$at,$a2,$a7
.L0db6a9c0:
    lbu	$at,0($at)
    # Line 386
    addiu	$a3,$a3,16
    # Line 380
    beqz	$at,.L0db6aabc
    # Line 383
    nor	$v0,$a4,$zero
.L0db6a9d0:
    # Line 388
    srl	$a4,$a4,0x1
.L0db6a9d4:
    sra	$v0,$t9,0x1
    beqz	$v0,.L0db6a94c
    nop
    b	.L0db6aa08
    # Line 378
    lwc1	$f1,12($a3)
.L0db6a9e8:
    # Line 380
    addu	$v1,$a2,$a7
.L0db6a9ec:
    lbu	$v1,0($v1)
    # Line 386
    addiu	$a3,$a3,16
    # Line 380
    beqz	$v1,.L0db6aa8c
    # Line 383
    nor	$a1,$a4,$zero
.L0db6a9fc:
    # Line 377
    beq	$a6,$t0,.L0db6a94c
    # Line 388
    srl	$a4,$a4,0x1
    # Line 378
    lwc1	$f1,12($a3)
.L0db6aa08:
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    nop
    bltz	$a2,.L0db6aa70
.L0db6aa1c:
    # Line 379
    slt	$a1,$a5,$a2
    beqz	$a1,.L0db6aa30
    # Line 380
    addu	$at,$a2,$a7
    move	$a2,$a5
    addu	$at,$a2,$a7
.L0db6aa30:
    lbu	$at,0($at)
    # Line 377
    addiu	$a6,$a6,-2
    # Line 380
    beqz	$at,.L0db6aa78
    # Line 383
    nor	$v1,$a4,$zero
.L0db6aa40:
    # Line 378
    lwc1	$f2,28($a3)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    # Line 388
    srl	$a4,$a4,0x1
    # Line 378
    bltz	$a2,.L0db6aa84
    # Line 386
    addiu	$a3,$a3,16
.L0db6aa5c:
    # Line 379
    slt	$v0,$a5,$a2
    beqz	$v0,.L0db6a9ec
    # Line 380
    addu	$v1,$a2,$a7
    b	.L0db6a9e8
    move	$a2,$a5
.L0db6aa70:
    b	.L0db6aa1c
    # Line 379
    move	$a2,$zero
.L0db6aa78:
    # Line 384
    addiu	$t2,$t2,1
    b	.L0db6aa40
    # Line 383
    and	$t1,$v1,$t1
.L0db6aa84:
    b	.L0db6aa5c
    # Line 379
    move	$a2,$zero
.L0db6aa8c:
    # Line 384
    addiu	$t2,$t2,1
    b	.L0db6a9fc
    # Line 383
    and	$t1,$a1,$t1
.L0db6aa98:
    # Line 393
    beqz	$t2,.L0db6aae0
    ld	$at,0($sp)
    # Line 398
    lw	$at,30300($at)
    beq	$at,$t2,.L0db6aac8
    # Line 402
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L0db6aab4:
    b	.L0db6a9ac
    # Line 379
    move	$a2,$zero
.L0db6aabc:
    # Line 384
    addiu	$t2,$t2,1
    b	.L0db6a9d0
    # Line 383
    and	$t1,$v0,$t1
.L0db6aac8:
    # Line 406
    li	$v0,1
    # Line 405
    ld	$a0,0($sp)
    # Line 406
    addiu	$sp,$sp,32
    # Line 405
    li	$v1,1
    # Line 406
    jr	$ra
    # Line 405
    sb	$v1,30528($a0)
.L0db6aae0:
    # Line 398
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end __glAlphaTestSpan

# Function: __glAlphaTestStippledSpan
# Declared: Line 413 (Source lines: 414-464)
# Address: 0x0db6aaec - 0x0db6acec (Size: 512 bytes, Frame: 32)
.globl __glAlphaTestStippledSpan
.ent __glAlphaTestStippledSpan
__glAlphaTestStippledSpan:
    # Line 414
    addiu	$sp,$sp,-32
    # Line 426
    lw	$a3,30516($a0)
    # Line 425
    lw	$t0,30800($a0)
    # Line 423
    lw	$t9,30524($a0)
    # Line 427
    lw	$a5,3420($a0)
    # Line 422
    lw	$a2,30300($a0)
    # Line 428
    move	$t1,$zero
    # Line 427
    addiu	$a5,$a5,-1
    # Line 428
    beqz	$a2,.L0db6acac
    # Line 422
    move	$t8,$a2
    b	.L0db6ab2c
    # Line 428
    li	$t2,-1
.L0db6ab1c:
    # Line 457
    addiu	$t9,$t9,4
    and	$at,$a7,$t3
    beqz	$t8,.L0db6aca8
    sw	$at,-4($t9)
.L0db6ab2c:
    # Line 437
    li	$t3,-1
    # Line 430
    slti	$v0,$t8,33
    bnez	$v0,.L0db6ab40
    move	$a6,$t8
    # Line 432
    li	$a6,32
.L0db6ab40:
    lui	$a4,0x8000
    # Line 434
    subu	$t8,$t8,$a6
    # Line 439
    addiu	$a6,$a6,-1
    bltz	$a6,.L0db6ab1c
    # Line 436
    lw	$a7,0($t9)
    # Line 439
    addiu	$a2,$a6,1
    andi	$v1,$a2,0x1
    beqz	$v1,.L0db6abb4
    and	$a1,$a7,$a4
    beqz	$a1,.L0db6acbc
    addiu	$a6,$a6,-1
    # Line 441
    lwc1	$f1,3424($a0)
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    sd	$a2,0($sp)
    mfc1	$a2,$f0
    nop
    bltz	$a2,.L0db6acd0
.L0db6ab8c:
    # Line 442
    slt	$at,$a5,$a2
    beqz	$at,.L0db6aba0
    # Line 443
    addu	$v0,$a2,$t0
    move	$a2,$a5
    addu	$v0,$a2,$t0
.L0db6aba0:
    lbu	$v0,0($v0)
    beqz	$v0,.L0db6acd8
    ld	$a2,0($sp)
.L0db6abac:
    # Line 452
    srl	$a4,$a4,0x1
    # Line 450
    addiu	$a3,$a3,16
.L0db6abb4:
    sra	$v1,$a2,0x1
    beqz	$v1,.L0db6ab1c
    nop
    b	.L0db6ac38
    # Line 439
    and	$a1,$a7,$a4
.L0db6abc8:
    # Line 443
    addu	$a1,$a2,$t0
.L0db6abcc:
    lbu	$a1,0($a1)
    beqz	$a1,.L0db6ac88
    # Line 446
    nor	$v0,$a4,$zero
.L0db6abd8:
    # Line 439
    addiu	$a6,$a6,-2
    # Line 452
    srl	$a4,$a4,0x1
    # Line 439
    and	$at,$a7,$a4
    beqz	$at,.L0db6ac78
    # Line 450
    addiu	$a3,$a3,16
    # Line 441
    lwc1	$f3,3424($a0)
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    nop
    bltz	$a2,.L0db6ac94
.L0db6ac08:
    # Line 442
    slt	$v0,$a5,$a2
    beqz	$v0,.L0db6ac1c
    # Line 443
    addu	$v1,$a2,$t0
    move	$a2,$a5
    addu	$v1,$a2,$t0
.L0db6ac1c:
    lbu	$v1,0($v1)
    beqzl	$v1,.L0db6ac9c
    # Line 447
    addiu	$t1,$t1,1
.L0db6ac28:
    # Line 452
    srl	$a4,$a4,0x1
    # Line 439
    beq	$a6,$t2,.L0db6ab1c
    # Line 450
    addiu	$a3,$a3,16
    # Line 439
    and	$a1,$a7,$a4
.L0db6ac38:
    beqz	$a1,.L0db6ac70
    nop
    # Line 441
    lwc1	$f1,3424($a0)
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    nop
    bltz	$a2,.L0db6ac80
.L0db6ac5c:
    # Line 442
    slt	$at,$a5,$a2
    beqz	$at,.L0db6abcc
    # Line 443
    addu	$a1,$a2,$t0
    b	.L0db6abc8
    move	$a2,$a5
.L0db6ac70:
    b	.L0db6abd8
    # Line 449
    addiu	$t1,$t1,1
.L0db6ac78:
    b	.L0db6ac28
    addiu	$t1,$t1,1
.L0db6ac80:
    b	.L0db6ac5c
    # Line 442
    move	$a2,$zero
.L0db6ac88:
    # Line 447
    addiu	$t1,$t1,1
    b	.L0db6abd8
    # Line 446
    and	$t3,$v0,$t3
.L0db6ac94:
    b	.L0db6ac08
    # Line 442
    move	$a2,$zero
.L0db6ac9c:
    # Line 446
    nor	$v1,$a4,$zero
    # Line 447
    b	.L0db6ac28
    # Line 446
    and	$t3,$v1,$t3
.L0db6aca8:
    # Line 457
    lw	$a2,30300($a0)
.L0db6acac:
    beq	$a2,$t1,.L0db6acc4
    # Line 462
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db6acbc:
    b	.L0db6abac
    # Line 449
    addiu	$t1,$t1,1
.L0db6acc4:
    # Line 464
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L0db6acd0:
    b	.L0db6ab8c
    # Line 442
    move	$a2,$zero
.L0db6acd8:
    # Line 446
    nor	$a1,$a4,$zero
    # Line 447
    addiu	$t1,$t1,1
    ld	$a2,0($sp)
    b	.L0db6abac
    # Line 446
    and	$t3,$a1,$t3
.end __glAlphaTestStippledSpan

# Function: __glStencilTestSpan
# Declared: Line 475 (Source lines: 476-526)
# Address: 0x0db6acec - 0x0db6ae60 (Size: 372 bytes, Frame: 32)
.globl __glStencilTestSpan
.ent __glStencilTestSpan
__glStencilTestSpan:
    # Line 476
    move	$a3,$a0
    # Line 487
    lw	$t8,30524($a0)
    # Line 486
    lw	$t2,31236($a0)
    # Line 485
    lw	$a6,31232($a0)
    # Line 484
    lw	$a2,30504($a0)
    # Line 482
    lw	$t3,30300($a0)
    # Line 488
    move	$t1,$zero
    # Line 476
    addiu	$sp,$sp,-32
    # Line 488
    beqz	$t3,.L0db6ae08
    sd	$a0,0($sp)
    sd	$a3,0($sp)
    li	$a7,-1
    b	.L0db6ad30
    lui	$a0,0x8000
.L0db6ad24:
    # Line 514
    sw	$t0,0($t8)
    beqz	$t3,.L0db6ae08
    addiu	$t8,$t8,4
.L0db6ad30:
    # Line 496
    li	$t0,-1
    # Line 490
    slti	$at,$t3,33
    bnez	$at,.L0db6ad44
    move	$a5,$t3
    # Line 492
    li	$a5,32
.L0db6ad44:
    # Line 497
    move	$a3,$a0
    # Line 494
    subu	$t3,$t3,$a5
    # Line 498
    addiu	$a5,$a5,-1
    bltz	$a5,.L0db6ad24
    addiu	$t9,$a5,1
    andi	$v0,$t9,0x1
    beqz	$v0,.L0db6ad88
    sra	$a1,$t9,0x1
    # Line 499
    lbu	$a4,0($a2)
    addu	$v1,$a4,$a6
    lbu	$v1,0($v1)
    # Line 498
    addiu	$a5,$a5,-1
    # Line 499
    beqz	$v1,.L0db6ae24
    # Line 504
    addu	$v0,$a4,$t2
.L0db6ad7c:
    # Line 509
    srl	$a3,$a3,0x1
    # Line 507
    addiu	$a2,$a2,1
    sra	$a1,$t9,0x1
.L0db6ad88:
    beqz	$a1,.L0db6ad24
    nop
    b	.L0db6add8
    # Line 499
    lbu	$a4,0($a2)
.L0db6ad98:
    # Line 503
    and	$t0,$v0,$t0
    # Line 504
    lbu	$at,0($at)
    # Line 505
    addiu	$t1,$t1,1
    # Line 504
    sb	$at,0($a2)
.L0db6ada8:
    # Line 499
    lbu	$a4,1($a2)
    # Line 507
    addiu	$a2,$a2,1
    # Line 499
    addu	$v0,$a4,$a6
    lbu	$v0,0($v0)
    # Line 509
    srl	$a3,$a3,0x1
    # Line 503
    nor	$at,$a3,$zero
    # Line 499
    beqz	$v0,.L0db6adf4
    # Line 504
    addu	$a1,$a4,$t2
.L0db6adc8:
    # Line 509
    srl	$a3,$a3,0x1
    # Line 498
    beq	$a5,$a7,.L0db6ad24
    # Line 507
    addiu	$a2,$a2,1
    # Line 499
    lbu	$a4,0($a2)
.L0db6add8:
    addu	$v1,$a4,$a6
    lbu	$v1,0($v1)
    bnez	$v1,.L0db6ada8
    # Line 498
    addiu	$a5,$a5,-2
    # Line 503
    nor	$v0,$a3,$zero
    b	.L0db6ad98
    # Line 504
    addu	$at,$a4,$t2
.L0db6adf4:
    # Line 505
    addiu	$t1,$t1,1
    # Line 504
    lbu	$a1,0($a1)
    # Line 503
    and	$t0,$at,$t0
    b	.L0db6adc8
    # Line 504
    sb	$a1,0($a2)
.L0db6ae08:
    # Line 514
    beqz	$t1,.L0db6ae54
    ld	$at,0($sp)
    # Line 518
    lw	$at,30300($at)
    beq	$at,$t1,.L0db6ae3c
    # Line 522
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L0db6ae24:
    # Line 505
    addiu	$t1,$t1,1
    # Line 503
    nor	$v1,$a3,$zero
    # Line 504
    lbu	$v0,0($v0)
    # Line 503
    and	$t0,$v1,$t0
    b	.L0db6ad7c
    # Line 504
    sb	$v0,0($a2)
.L0db6ae3c:
    # Line 526
    li	$v0,1
    # Line 525
    ld	$a0,0($sp)
    # Line 526
    addiu	$sp,$sp,32
    # Line 525
    li	$v1,1
    # Line 526
    jr	$ra
    # Line 525
    sb	$v1,30528($a0)
.L0db6ae54:
    # Line 518
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end __glStencilTestSpan

# Function: __glStencilTestStippledSpan
# Declared: Line 533 (Source lines: 534-583)
# Address: 0x0db6ae60 - 0x0db6b00c (Size: 428 bytes, Frame: 48)
.globl __glStencilTestStippledSpan
.ent __glStencilTestStippledSpan
__glStencilTestStippledSpan:
    # Line 534
    move	$a3,$a0
    # Line 547
    lh	$a7,1576($a0)
    # Line 546
    lw	$t8,31236($a0)
    # Line 545
    lw	$t0,31232($a0)
    # Line 544
    lw	$a2,30504($a0)
    # Line 548
    move	$t1,$zero
    # Line 542
    lw	$at,30524($a0)
    # Line 541
    lw	$a5,30300($a0)
    # Line 534
    addiu	$sp,$sp,-48
    sd	$at,16($sp)
    # Line 548
    beqz	$a5,.L0db6afcc
    # Line 541
    move	$t9,$a5
    sd	$a3,0($sp)
    # Line 548
    li	$t2,-1
    b	.L0db6aeb0
    ld	$a0,16($sp)
.L0db6aea0:
    # Line 576
    addiu	$a0,$a0,4
    and	$v0,$a5,$t3
    beqz	$t9,.L0db6afc4
    sw	$v0,-4($a0)
.L0db6aeb0:
    # Line 557
    li	$t3,-1
    # Line 550
    slti	$v1,$t9,33
    bnez	$v1,.L0db6aec4
    move	$a4,$t9
    # Line 552
    li	$a4,32
.L0db6aec4:
    lui	$a3,0x8000
    # Line 554
    subu	$t9,$t9,$a4
    # Line 559
    addiu	$a4,$a4,-1
    bltz	$a4,.L0db6aea0
    # Line 556
    lw	$a5,0($a0)
    # Line 559
    addiu	$a6,$a4,1
    andi	$a1,$a6,0x1
    beqz	$a1,.L0db6af18
    and	$at,$a5,$a3
    beqz	$at,.L0db6afdc
    addiu	$a4,$a4,-1
    sd	$a6,8($sp)
    # Line 561
    lbu	$a6,0($a2)
    and	$v0,$a6,$a7
    addu	$v0,$v0,$t0
    lbu	$v0,0($v0)
    beqz	$v0,.L0db6aff4
    # Line 565
    addu	$at,$a6,$t8
.L0db6af0c:
    # Line 571
    srl	$a3,$a3,0x1
    # Line 569
    addiu	$a2,$a2,1
    ld	$a6,8($sp)
.L0db6af18:
    sra	$v1,$a6,0x1
    beqz	$v1,.L0db6aea0
    nop
    b	.L0db6af40
    # Line 559
    and	$a1,$a5,$a3
.L0db6af2c:
    # Line 568
    addiu	$t1,$t1,1
.L0db6af30:
    # Line 571
    srl	$a3,$a3,0x1
    # Line 559
    beq	$a4,$t2,.L0db6aea0
    # Line 569
    addiu	$a2,$a2,1
    # Line 559
    and	$a1,$a5,$a3
.L0db6af40:
    beqz	$a1,.L0db6afa4
    nop
    # Line 561
    lbu	$a6,0($a2)
    and	$at,$a6,$a7
    addu	$at,$at,$t0
    lbu	$at,0($at)
    beqz	$at,.L0db6afac
    # Line 564
    nor	$v0,$a3,$zero
.L0db6af60:
    # Line 559
    addiu	$a4,$a4,-2
    # Line 571
    srl	$a3,$a3,0x1
    # Line 559
    and	$v0,$a5,$a3
    beqz	$v0,.L0db6af2c
    # Line 569
    addiu	$a2,$a2,1
    # Line 561
    lbu	$a6,0($a2)
    and	$v1,$a6,$a7
    addu	$v1,$v1,$t0
    lbu	$v1,0($v1)
    # Line 564
    nor	$at,$a3,$zero
    # Line 561
    bnez	$v1,.L0db6af30
    # Line 565
    addu	$a1,$a6,$t8
    # Line 566
    addiu	$t1,$t1,1
    # Line 565
    lbu	$a1,0($a1)
    # Line 564
    and	$t3,$at,$t3
    # Line 566
    b	.L0db6af30
    # Line 565
    sb	$a1,0($a2)
.L0db6afa4:
    b	.L0db6af60
    # Line 568
    addiu	$t1,$t1,1
.L0db6afac:
    # Line 566
    addiu	$t1,$t1,1
    # Line 565
    addu	$at,$a6,$t8
    lbu	$at,0($at)
    # Line 564
    and	$t3,$v0,$t3
    # Line 566
    b	.L0db6af60
    # Line 565
    sb	$at,0($a2)
.L0db6afc4:
    ld	$a5,0($sp)
    # Line 576
    lw	$a5,30300($a5)
.L0db6afcc:
    beq	$a5,$t1,.L0db6afe8
    # Line 581
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0db6afdc:
    sd	$a6,8($sp)
    b	.L0db6af0c
    # Line 568
    addiu	$t1,$t1,1
.L0db6afe8:
    # Line 583
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0db6aff4:
    # Line 566
    addiu	$t1,$t1,1
    # Line 564
    nor	$v0,$a3,$zero
    # Line 565
    lbu	$at,0($at)
    # Line 564
    and	$t3,$v0,$t3
    # Line 566
    b	.L0db6af0c
    # Line 565
    sb	$at,0($a2)
.end __glStencilTestStippledSpan

# Function: __glDepthTestOffsetSpan
# Declared: Line 589 (Source lines: 590-816)
# Address: 0x0db6b00c - 0x0db6b614 (Size: 1544 bytes, Frame: 144)
.globl __glDepthTestOffsetSpan
.ent __glDepthTestOffsetSpan
__glDepthTestOffsetSpan:
    # Line 634
    lwc1	$f5,30556($a0)
    # Line 632
    lwc1	$f6,30536($a0)
    # Line 590
    addiu	$sp,$sp,-272
    sd	$zero,136($sp)
    sd	$zero,176($sp)
    # Line 620
    sw	$zero,8($sp)
    # Line 619
    sw	$zero,4($sp)
    sd	$a0,144($sp)
    sd	$s0,96($sp)
    # Line 622
    lw	$s0,30492($a0)
    # Line 618
    lw	$a2,30300($a0)
    # Line 623
    lw	$a4,12096($a0)
    # Line 624
    lw	$v0,31368($a0)
    # Line 625
    lw	$v1,31360($a0)
    # Line 627
    lw	$a1,30524($a0)
    # Line 633
    lwc1	$f4,30552($a0)
    sd	$gp,80($sp)
    # Line 590
    lui	$at,0x9
    addiu	$at,$at,13964
    addu	$gp,$t9,$at
    # Line 634
    mtc1	$zero,$f0
    sd	$a1,160($sp)
    sd	$v1,128($sp)
    c.lt.s	$f0,$f4
    sd	$v0,152($sp)
    # Line 623
    sw	$a4,16($sp)
    # Line 634
    bc1f	.L0db6b134
    # Line 618
    sw	$a2,0($sp)
    # Line 634
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db6b1f4
    # Line 662
    ld	$a3,144($sp)
    # Line 643
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,144($sp)
    lw	$a1,30380($v0)
    # Line 641
    trunc.l.s	$f1,$f6
    # Line 642
    ld	$v1,152($sp)
    # Line 643
    sw	$a1,40($sp)
    # Line 642
    lw	$v0,30376($v0)
    # Line 641
    dmfc1	$at,$f1
    # Line 643
    c.lt.s	$f4,$f5
    # Line 642
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 643
    bc1f	.L0db6b160
    # Line 641
    sw	$at,24($sp)
    # Line 645
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 646
    ld	$a0,144($sp)
    li	$v1,513
    # Line 645
    mfc1	$a1,$f0
    # Line 646
    lw	$a3,30548($a0)
    lw	$a0,1536($a0)
    # Line 645
    sw	$a1,4($sp)
    # Line 646
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0db6b490
    sw	$a2,0($sp)
.L0db6b0f4:
    # Line 647
    li	$a1,516
    beq	$a0,$a1,.L0db6b480
    nop
    # Line 653
    sw	$a4,20($sp)
.L0db6b104:
    # Line 657
    sw	$zero,44($sp)
    # Line 656
    sw	$zero,36($sp)
    # Line 654
    sw	$a3,28($sp)
    # Line 655
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 657
    b	.L0db6b160
    sd	$at,136($sp)
.L0db6b134:
    ld	$a3,144($sp)
    # Line 684
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0db6b378
    lw	$a3,30548($a3)
.L0db6b148:
    # Line 688
    li	$at,516
    beq	$a0,$at,.L0db6b38c
    nop
.L0db6b154:
    # Line 695
    sw	$zero,40($sp)
.L0db6b158:
    # Line 694
    sw	$zero,32($sp)
    # Line 693
    sw	$a3,24($sp)
.L0db6b160:
    sd	$s2,248($sp)
.L0db6b164:
    sd	$s6,232($sp)
    sd	$s4,216($sp)
    sd	$s7,192($sp)
    # Line 695
    beqz	$a2,.L0db6b348
    sd	$s8,184($sp)
    move	$s4,$zero
    addiu	$s7,$sp,32
    li	$s6,-1
    lw	$s8,52($sp)
    lw	$s2,48($sp)
    addiu	$at,$sp,0
    sd	$at,112($sp)
    addiu	$v1,$sp,16
    sd	$v1,104($sp)
    addiu	$v0,$sp,24
    sd	$v0,120($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,64($sp)
    ld	$a1,136($sp)
    li	$v1,32
    sd	$v0,168($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0db6b3ac
    sd	$v1,72($sp)
    sd	$s3,240($sp)
.L0db6b1cc:
    sd	$ra,224($sp)
    ld	$v0,64($sp)
    sd	$s5,208($sp)
    ld	$at,120($sp)
    lw	$v0,0($v0)
    sd	$s1,200($sp)
    lw	$at,0($at)
    sd	$v0,88($sp)
    b	.L0db6b520
    sd	$at,56($sp)
.L0db6b1f4:
    # Line 662
    sw	$zero,40($sp)
    # Line 661
    sw	$zero,32($sp)
    # Line 662
    lw	$a0,1536($a3)
    # Line 660
    lw	$a3,30544($a3)
    # Line 662
    li	$v1,513
    beq	$a0,$v1,.L0db6b45c
    # Line 660
    sw	$a3,24($sp)
.L0db6b210:
    # Line 663
    li	$at,516
    beq	$a0,$at,.L0db6b470
    nop
.L0db6b21c:
    # Line 667
    sub.s	$f1,$f4,$f5
.L0db6b220:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqzl	$v0,.L0db6b164
    sd	$s2,248($sp)
    # Line 673
    ld	$a1,144($sp)
    # Line 671
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 673
    lw	$a5,30380($a1)
    # Line 671
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 673
    mult	$a3,$a5
    # Line 671
    sra	$at,$a0,0x1f
    # Line 673
    lw	$a1,30376($a1)
    # Line 671
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 673
    mflo	$v0
    # Line 671
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 673
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 672
    sw	$a4,20($sp)
    # Line 670
    sw	$a0,0($sp)
    # Line 673
    cvt.d.s	$f3,$f6
    # Line 684
    sw	$a5,44($sp)
    # Line 673
    add.d	$f2,$f2,$f3
    # Line 669
    subu	$at,$a2,$a0
    sd	$a3,136($sp)
    # Line 683
    ld	$a3,152($sp)
    # Line 673
    trunc.l.d	$f2,$f2
    # Line 670
    move	$a2,$a0
    # Line 669
    sw	$at,4($sp)
    # Line 683
    srav	$a1,$a1,$a3
    # Line 673
    dmfc1	$v1,$f2
    # Line 683
    sw	$a1,36($sp)
    # Line 684
    b	.L0db6b160
    # Line 673
    sw	$v1,28($sp)
.L0db6b2dc:
    ld	$s5,208($sp)
    ld	$ra,224($sp)
.L0db6b2e4:
    # Line 802
    ld	$v1,72($sp)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v0,64($sp)
    mul.d	$f0,$f0,$f1
    lw	$v0,0($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s3,56($sp)
    mfc1	$s1,$f3
    # Line 796
    ld	$at,160($sp)
    # Line 802
    addu	$s1,$s1,$s3
    ld	$s3,120($sp)
    # Line 796
    sw	$s8,-4($at)
    # Line 802
    sw	$s1,0($s3)
    ld	$s1,200($sp)
    ld	$s3,240($sp)
.L0db6b33c:
    ld	$a1,168($sp)
    bnezl	$a1,.L0db6b1cc
    sd	$s3,240($sp)
.L0db6b348:
    ld	$s8,184($sp)
    ld	$s7,192($sp)
    ld	$at,176($sp)
    ld	$s4,216($sp)
    ld	$s6,232($sp)
    bnez	$at,.L0db6b5d0
    ld	$s2,248($sp)
    # Line 808
    move	$v0,$zero
    ld	$gp,80($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0db6b378:
    # Line 688
    beqz	$a3,.L0db6b148
    # Line 692
    la	$v0,__glCDTPixel
.L0db6b380:
    lw	$v0,0($v0)
    b	.L0db6b154
    sw	$v0,16($sp)
.L0db6b38c:
    # Line 688
    bnezl	$a3,.L0db6b158
    # Line 695
    sw	$zero,40($sp)
    b	.L0db6b380
    # Line 692
    la	$v0,__glCDTPixel
.L0db6b39c:
    ld	$s1,200($sp)
    ld	$s5,208($sp)
    ld	$ra,224($sp)
    ld	$s3,240($sp)
.L0db6b3ac:
    # Line 752
    ld	$at,104($sp)
    ld	$v1,112($sp)
    addiu	$s4,$s4,4
    addiu	$at,$at,4
    addiu	$v1,$v1,4
    ld	$a1,120($sp)
    sd	$v1,112($sp)
    lw	$v1,0($v1)
    addiu	$a1,$a1,4
    sd	$a1,120($sp)
    ld	$a1,64($sp)
    sd	$at,104($sp)
    sd	$v1,168($sp)
    addiu	$a1,$a1,4
    beqz	$v1,.L0db6b348
    sd	$a1,64($sp)
    ld	$at,136($sp)
    beqz	$at,.L0db6b33c
    ld	$v1,72($sp)
    # Line 754
    ld	$v0,168($sp)
    sd	$s3,240($sp)
    slt	$v0,$v0,$v1
    bnez	$v0,.L0db6b578
    move	$s3,$v1
.L0db6b40c:
    sd	$s5,208($sp)
    # Line 759
    ld	$v1,112($sp)
    ld	$v0,168($sp)
    sd	$s1,200($sp)
    # Line 767
    ld	$s1,120($sp)
    # Line 759
    subu	$v0,$v0,$s3
    # Line 768
    addiu	$s3,$s3,-1
    # Line 767
    lw	$s1,0($s1)
    ld	$at,152($sp)
    sd	$v0,168($sp)
    sd	$s1,56($sp)
    srlv	$s1,$s1,$at
    ld	$at,128($sp)
    # Line 759
    sw	$v0,0($v1)
    # Line 768
    bltz	$s3,.L0db6b2e4
    # Line 767
    addu	$s1,$s1,$at
    ld	$s5,104($sp)
    sd	$ra,224($sp)
    b	.L0db6b598
    # Line 768
    lw	$s5,0($s5)
.L0db6b45c:
    # Line 663
    beqz	$a3,.L0db6b210
    # Line 667
    la	$at,__glCDTPixel
.L0db6b464:
    lw	$at,0($at)
    b	.L0db6b21c
    sw	$at,16($sp)
.L0db6b470:
    # Line 663
    bnezl	$a3,.L0db6b220
    # Line 667
    sub.s	$f1,$f4,$f5
    b	.L0db6b464
    la	$at,__glCDTPixel
.L0db6b480:
    # Line 647
    bnezl	$a3,.L0db6b104
    # Line 653
    sw	$a4,20($sp)
    b	.L0db6b498
    # Line 651
    la	$v0,__glCDTPixel
.L0db6b490:
    # Line 647
    beqz	$a3,.L0db6b0f4
    # Line 651
    la	$v0,__glCDTPixel
.L0db6b498:
    lw	$v0,0($v0)
    b	.L0db6b104
    sw	$v0,20($sp)
.L0db6b4a4:
    ld	$a1,176($sp)
    # Line 732
    and	$s8,$v1,$s8
    # Line 733
    addiu	$a1,$a1,1
    sd	$a1,176($sp)
.L0db6b4b4:
    # Line 739
    addiu	$s0,$s0,4
    # Line 738
    lw	$at,0($at)
    # Line 741
    srl	$s2,$s2,0x1
    # Line 718
    beq	$s3,$s6,.L0db6b4f0
    # Line 738
    addu	$s1,$at,$s1
.L0db6b4c8:
    # Line 731
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$a2,$s0
    jalr	$s5
    move	$t9,$s5
    # Line 718
    addiu	$s3,$s3,-1
    # Line 731
    bnez	$v0,.L0db6b4b4
    # Line 738
    addu	$at,$s4,$s7
    b	.L0db6b4a4
    # Line 732
    nor	$v1,$s2,$zero
.L0db6b4f0:
    # Line 750
    ld	$a1,120($sp)
    ld	$v0,160($sp)
    ld	$at,88($sp)
    ld	$v1,56($sp)
    # Line 746
    sw	$s8,0($v0)
    addiu	$v0,$v0,4
    sd	$v0,160($sp)
    # Line 750
    ld	$v0,168($sp)
    addu	$v1,$v1,$at
    sd	$v1,56($sp)
    beqz	$v0,.L0db6b39c
    sw	$v1,0($a1)
.L0db6b520:
    # Line 716
    li	$s8,-1
    # Line 710
    ld	$a1,168($sp)
    # Line 715
    ld	$at,152($sp)
    ld	$s1,56($sp)
    lui	$s2,0x8000
    ld	$v1,168($sp)
    srlv	$s1,$s1,$at
    ld	$at,128($sp)
    # Line 705
    move	$s3,$v1
    slti	$v1,$v1,33
    # Line 715
    addu	$s1,$s1,$at
    # Line 705
    bnez	$v1,.L0db6b558
    # Line 710
    ld	$at,112($sp)
    # Line 708
    li	$s3,32
.L0db6b558:
    # Line 710
    subu	$a1,$a1,$s3
    # Line 718
    addiu	$s3,$s3,-1
    sd	$a1,168($sp)
    bltz	$s3,.L0db6b4f0
    # Line 710
    sw	$a1,0($at)
    ld	$s5,104($sp)
    b	.L0db6b4c8
    # Line 718
    lw	$s5,0($s5)
.L0db6b578:
    sd	$s1,200($sp)
    b	.L0db6b40c
    ld	$s3,168($sp)
.L0db6b584:
    # Line 789
    addiu	$s0,$s0,4
    # Line 788
    lw	$at,0($at)
    # Line 791
    srl	$s2,$s2,0x1
    # Line 768
    beq	$s3,$s6,.L0db6b2dc
    # Line 788
    addu	$s1,$at,$s1
.L0db6b598:
    # Line 781
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$a2,$s0
    jalr	$s5
    move	$t9,$s5
    # Line 768
    addiu	$s3,$s3,-1
    # Line 781
    bnez	$v0,.L0db6b584
    # Line 788
    addu	$at,$s4,$s7
    ld	$v1,176($sp)
    # Line 783
    addiu	$v1,$v1,1
    # Line 782
    nor	$v0,$s2,$zero
    and	$s8,$v0,$s8
    b	.L0db6b584
    sd	$v1,176($sp)
.L0db6b5d0:
    ld	$a1,144($sp)
    # Line 808
    ld	$at,176($sp)
    lw	$a1,30300($a1)
    beq	$a1,$at,.L0db6b5f4
    # Line 812
    li	$v0,1
    ld	$gp,80($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0db6b5f4:
    # Line 816
    li	$v0,1
    # Line 815
    ld	$s0,144($sp)
    ld	$gp,80($sp)
    li	$a3,1
    sb	$a3,30528($s0)
    # Line 816
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glDepthTestOffsetSpan

# Function: __glDepthTestStippledOffsetSpan
# Declared: Line 822 (Source lines: 823-1047)
# Address: 0x0db6b614 - 0x0db6bc2c (Size: 1560 bytes, Frame: 160)
.globl __glDepthTestStippledOffsetSpan
.ent __glDepthTestStippledOffsetSpan
__glDepthTestStippledOffsetSpan:
    # Line 867
    lwc1	$f5,30556($a0)
    # Line 865
    lwc1	$f6,30536($a0)
    # Line 823
    addiu	$sp,$sp,-288
    sd	$zero,152($sp)
    sd	$s6,112($sp)
    # Line 862
    move	$s6,$zero
    # Line 853
    sw	$zero,8($sp)
    # Line 852
    sw	$zero,4($sp)
    sd	$a0,160($sp)
    sd	$s2,120($sp)
    # Line 855
    lw	$s2,30492($a0)
    # Line 851
    lw	$a5,30300($a0)
    # Line 856
    lw	$a4,12096($a0)
    # Line 860
    lw	$a1,30524($a0)
    # Line 857
    lw	$v0,31368($a0)
    # Line 858
    lw	$v1,31360($a0)
    sd	$a1,176($sp)
    # Line 866
    lwc1	$f4,30552($a0)
    sd	$gp,104($sp)
    # Line 823
    lui	$at,0x9
    addiu	$at,$at,12420
    addu	$gp,$t9,$at
    # Line 867
    mtc1	$zero,$f0
    sd	$v1,144($sp)
    sd	$v0,168($sp)
    c.lt.s	$f0,$f4
    # Line 856
    sw	$a4,16($sp)
    # Line 851
    move	$a2,$a5
    # Line 867
    bc1f	.L0db6b744
    # Line 851
    sw	$a5,0($sp)
    # Line 867
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db6b80c
    # Line 894
    ld	$a3,160($sp)
    # Line 875
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,160($sp)
    lw	$a1,30380($v0)
    # Line 873
    trunc.l.s	$f1,$f6
    # Line 874
    ld	$v1,168($sp)
    # Line 875
    sw	$a1,40($sp)
    # Line 874
    lw	$v0,30376($v0)
    # Line 873
    dmfc1	$at,$f1
    # Line 875
    c.lt.s	$f4,$f5
    # Line 874
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 875
    bc1f	.L0db6b770
    # Line 873
    sw	$at,24($sp)
    # Line 877
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 878
    ld	$a0,160($sp)
    li	$v1,513
    # Line 877
    mfc1	$a1,$f0
    # Line 878
    lw	$a3,30548($a0)
    lw	$a0,1536($a0)
    # Line 877
    sw	$a1,4($sp)
    # Line 878
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0db6baa8
    sw	$a2,0($sp)
.L0db6b704:
    # Line 879
    li	$a1,516
    beq	$a0,$a1,.L0db6ba98
    nop
    # Line 885
    sw	$a4,20($sp)
.L0db6b714:
    # Line 889
    sw	$zero,44($sp)
    # Line 888
    sw	$zero,36($sp)
    # Line 886
    sw	$a3,28($sp)
    # Line 887
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 889
    b	.L0db6b770
    sd	$at,152($sp)
.L0db6b744:
    ld	$a3,160($sp)
    # Line 916
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0db6b998
    lw	$a3,30548($a3)
.L0db6b758:
    # Line 920
    li	$at,516
    beq	$a0,$at,.L0db6b9ac
    nop
.L0db6b764:
    # Line 927
    sw	$zero,40($sp)
.L0db6b768:
    # Line 926
    sw	$zero,32($sp)
    # Line 925
    sw	$a3,24($sp)
.L0db6b770:
    # Line 927
    beqz	$a2,.L0db6b97c
    nop
    sd	$s5,224($sp)
    move	$s5,$zero
    sd	$s8,216($sp)
    addiu	$s8,$sp,32
    sd	$s7,200($sp)
    li	$s7,-1
    sd	$s4,232($sp)
    lw	$s4,56($sp)
    addiu	$at,$sp,0
    sd	$at,136($sp)
    sd	$s0,256($sp)
    lw	$s0,52($sp)
    addiu	$v1,$sp,16
    sd	$v1,64($sp)
    li	$v1,32
    sd	$s0,192($sp)
    addiu	$v0,$sp,24
    sd	$v0,128($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,80($sp)
    ld	$a1,152($sp)
    lw	$s0,48($sp)
    sd	$v0,184($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0db6b9c8
    sd	$v1,88($sp)
    sd	$s3,248($sp)
.L0db6b7e8:
    ld	$v0,80($sp)
    sd	$ra,240($sp)
    ld	$at,128($sp)
    lw	$v0,0($v0)
    sd	$s1,208($sp)
    lw	$at,0($at)
    sd	$v0,96($sp)
    b	.L0db6bb54
    sd	$at,72($sp)
.L0db6b80c:
    # Line 894
    sw	$zero,40($sp)
    # Line 893
    sw	$zero,32($sp)
    # Line 894
    lw	$a0,1536($a3)
    # Line 892
    lw	$a3,30544($a3)
    # Line 894
    li	$v1,513
    beq	$a0,$v1,.L0db6ba74
    # Line 892
    sw	$a3,24($sp)
.L0db6b828:
    # Line 895
    li	$at,516
    beq	$a0,$at,.L0db6ba88
    nop
.L0db6b834:
    # Line 899
    sub.s	$f1,$f4,$f5
.L0db6b838:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqz	$v0,.L0db6b770
    # Line 905
    ld	$a1,160($sp)
    # Line 903
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 905
    lw	$a6,30380($a1)
    # Line 903
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 905
    mult	$a3,$a6
    # Line 903
    sra	$at,$a0,0x1f
    # Line 905
    lw	$a1,30376($a1)
    # Line 903
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 905
    mflo	$v0
    # Line 903
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 905
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 904
    sw	$a4,20($sp)
    # Line 902
    sw	$a0,0($sp)
    # Line 905
    cvt.d.s	$f3,$f6
    # Line 916
    sw	$a6,44($sp)
    # Line 905
    add.d	$f2,$f2,$f3
    # Line 901
    subu	$at,$a2,$a0
    sd	$a3,152($sp)
    # Line 915
    ld	$a3,168($sp)
    # Line 905
    trunc.l.d	$f2,$f2
    # Line 902
    move	$a2,$a0
    # Line 901
    sw	$at,4($sp)
    # Line 915
    srav	$a1,$a1,$a3
    # Line 905
    dmfc1	$v1,$f2
    # Line 915
    sw	$a1,36($sp)
    # Line 916
    b	.L0db6b770
    # Line 905
    sw	$v1,28($sp)
.L0db6b8f0:
    ld	$ra,240($sp)
.L0db6b8f4:
    # Line 1038
    ld	$v1,88($sp)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v0,80($sp)
    mul.d	$f0,$f0,$f1
    lw	$v0,0($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s3,72($sp)
    mfc1	$s1,$f3
    # Line 1032
    ld	$at,192($sp)
    ld	$v0,176($sp)
    # Line 1038
    addu	$s1,$s1,$s3
    ld	$s3,128($sp)
    # Line 1032
    and	$at,$at,$s4
    sw	$at,-4($v0)
    # Line 1038
    sw	$s1,0($s3)
    ld	$s1,208($sp)
    ld	$s3,248($sp)
.L0db6b954:
    ld	$a1,184($sp)
    bnezl	$a1,.L0db6b7e8
    sd	$s3,248($sp)
.L0db6b960:
    ld	$s7,200($sp)
    ld	$s8,216($sp)
    ld	$s5,224($sp)
    ld	$a5,160($sp)
    ld	$s4,232($sp)
    ld	$s0,256($sp)
    lw	$a5,30300($a5)
.L0db6b97c:
    bne	$a5,$s6,.L0db6bc14
    # Line 1047
    li	$v0,1
    ld	$gp,104($sp)
    ld	$s2,120($sp)
    ld	$s6,112($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0db6b998:
    # Line 920
    beqz	$a3,.L0db6b758
    # Line 924
    la	$at,__glCDTPixel
.L0db6b9a0:
    lw	$at,0($at)
    b	.L0db6b764
    sw	$at,16($sp)
.L0db6b9ac:
    # Line 920
    bnezl	$a3,.L0db6b768
    # Line 927
    sw	$zero,40($sp)
    b	.L0db6b9a0
    # Line 924
    la	$at,__glCDTPixel
.L0db6b9bc:
    ld	$s1,208($sp)
    ld	$ra,240($sp)
    ld	$s3,248($sp)
.L0db6b9c8:
    # Line 985
    ld	$a1,64($sp)
    ld	$v0,136($sp)
    addiu	$s5,$s5,4
    addiu	$a1,$a1,4
    addiu	$v0,$v0,4
    ld	$v1,128($sp)
    sd	$v0,136($sp)
    lw	$v0,0($v0)
    addiu	$v1,$v1,4
    sd	$v1,128($sp)
    ld	$v1,80($sp)
    sd	$a1,64($sp)
    sd	$v0,184($sp)
    addiu	$v1,$v1,4
    beqz	$v0,.L0db6b960
    sd	$v1,80($sp)
    ld	$a1,152($sp)
    beqz	$a1,.L0db6b954
    ld	$v0,88($sp)
    # Line 987
    ld	$at,184($sp)
    sd	$s3,248($sp)
    slt	$at,$at,$v0
    beqz	$at,.L0db6ba30
    move	$s3,$v0
    sd	$s1,208($sp)
    ld	$s3,184($sp)
.L0db6ba30:
    # Line 992
    ld	$v1,136($sp)
    ld	$v0,184($sp)
    sd	$s1,208($sp)
    # Line 994
    ld	$s1,128($sp)
    # Line 992
    subu	$v0,$v0,$s3
    # Line 1002
    addiu	$s3,$s3,-1
    # Line 994
    lw	$s1,0($s1)
    ld	$at,168($sp)
    sd	$v0,184($sp)
    sd	$s1,72($sp)
    srlv	$s1,$s1,$at
    ld	$at,144($sp)
    # Line 992
    sw	$v0,0($v1)
    # Line 1002
    bltz	$s3,.L0db6b8f4
    # Line 994
    addu	$s1,$s1,$at
    b	.L0db6bbd0
    sd	$ra,240($sp)
.L0db6ba74:
    # Line 895
    beqz	$a3,.L0db6b828
    # Line 899
    la	$at,__glCDTPixel
.L0db6ba7c:
    lw	$at,0($at)
    b	.L0db6b834
    sw	$at,16($sp)
.L0db6ba88:
    # Line 895
    bnezl	$a3,.L0db6b838
    # Line 899
    sub.s	$f1,$f4,$f5
    b	.L0db6ba7c
    la	$at,__glCDTPixel
.L0db6ba98:
    # Line 879
    bnezl	$a3,.L0db6b714
    # Line 885
    sw	$a4,20($sp)
    b	.L0db6bab0
    # Line 883
    la	$v0,__glCDTPixel
.L0db6baa8:
    # Line 879
    beqz	$a3,.L0db6b704
    # Line 883
    la	$v0,__glCDTPixel
.L0db6bab0:
    lw	$v0,0($v0)
    b	.L0db6b714
    sw	$v0,20($sp)
.L0db6babc:
    # Line 967
    addiu	$s6,$s6,1
.L0db6bac0:
    # Line 974
    srl	$s0,$s0,0x1
.L0db6bac4:
    # Line 971
    addu	$v1,$s5,$s8
    lw	$v1,0($v1)
    # Line 972
    addiu	$s2,$s2,4
    # Line 949
    beq	$s3,$s7,.L0db6bb1c
    # Line 971
    addu	$s1,$v1,$s1
    # Line 949
    and	$a1,$s0,$s4
.L0db6badc:
    beqz	$a1,.L0db6babc
    addiu	$s3,$s3,-1
    # Line 963
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s1
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    bnezl	$v0,.L0db6bac4
    # Line 974
    srl	$s0,$s0,0x1
    # Line 964
    ld	$at,192($sp)
    # Line 965
    addiu	$s6,$s6,1
    # Line 964
    nor	$v0,$s0,$zero
    and	$at,$v0,$at
    # Line 965
    b	.L0db6bac0
    sd	$at,192($sp)
.L0db6bb1c:
    ld	$at,176($sp)
    # Line 979
    addiu	$at,$at,4
    # Line 980
    ld	$a1,96($sp)
    ld	$v0,72($sp)
    sd	$at,176($sp)
    ld	$v1,128($sp)
    addu	$v0,$v0,$a1
    # Line 979
    ld	$a1,192($sp)
    # Line 980
    sw	$v0,0($v1)
    ld	$v1,184($sp)
    sd	$v0,72($sp)
    # Line 979
    and	$a1,$a1,$s4
    # Line 980
    beqz	$v1,.L0db6b9bc
    # Line 979
    sw	$a1,-4($at)
.L0db6bb54:
    # Line 946
    ld	$s4,176($sp)
    # Line 940
    ld	$v0,184($sp)
    ld	$at,184($sp)
    # Line 945
    ld	$s1,72($sp)
    # Line 940
    ld	$v1,136($sp)
    # Line 936
    move	$s3,$at
    slti	$at,$at,33
    bnez	$at,.L0db6bb7c
    lui	$s0,0x8000
    # Line 938
    li	$s3,32
.L0db6bb7c:
    # Line 946
    lw	$s4,0($s4)
    # Line 940
    subu	$v0,$v0,$s3
    # Line 947
    li	$at,-1
    sd	$at,192($sp)
    # Line 945
    ld	$at,168($sp)
    # Line 949
    addiu	$s3,$s3,-1
    sd	$v0,184($sp)
    # Line 945
    srlv	$s1,$s1,$at
    ld	$at,144($sp)
    # Line 940
    sw	$v0,0($v1)
    # Line 949
    bltz	$s3,.L0db6bb1c
    # Line 945
    addu	$s1,$s1,$at
    b	.L0db6badc
    # Line 949
    and	$a1,$s0,$s4
.L0db6bbb4:
    # Line 1020
    addiu	$s6,$s6,1
.L0db6bbb8:
    # Line 1027
    srl	$s0,$s0,0x1
.L0db6bbbc:
    # Line 1024
    addu	$v0,$s5,$s8
    lw	$v0,0($v0)
    # Line 1025
    addiu	$s2,$s2,4
    # Line 1002
    beq	$s3,$s7,.L0db6b8f0
    # Line 1024
    addu	$s1,$v0,$s1
.L0db6bbd0:
    # Line 1002
    and	$v1,$s0,$s4
    beqz	$v1,.L0db6bbb4
    addiu	$s3,$s3,-1
    # Line 1016
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s1
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    bnezl	$v0,.L0db6bbbc
    # Line 1027
    srl	$s0,$s0,0x1
    # Line 1017
    ld	$at,192($sp)
    # Line 1018
    addiu	$s6,$s6,1
    # Line 1017
    nor	$v0,$s0,$zero
    and	$at,$v0,$at
    # Line 1018
    b	.L0db6bbb8
    sd	$at,192($sp)
.L0db6bc14:
    # Line 1045
    move	$v0,$zero
    ld	$gp,104($sp)
    ld	$s2,120($sp)
    ld	$s6,112($sp)
    jr	$ra
    addiu	$sp,$sp,288
.end __glDepthTestStippledOffsetSpan

# Function: __glDepthTestSpan
# Declared: Line 1059 (Source lines: 1060-1117)
# Address: 0x0db6bc2c - 0x0db6be04 (Size: 472 bytes, Frame: 160)
.globl __glDepthTestSpan
.ent __glDepthTestSpan
__glDepthTestSpan:
    # Line 1060
    addiu	$sp,$sp,-160
    sd	$s6,128($sp)
    sd	$a0,40($sp)
    sd	$gp,32($sp)
    lui	$v0,0x9
    addiu	$v0,$v0,10860
    addu	$gp,$t9,$v0
    # Line 1075
    lw	$a1,31360($a0)
    # Line 1073
    lw	$v1,30256($a0)
    # Line 1069
    lw	$at,30300($a0)
    sd	$a1,48($sp)
    sd	$v1,80($sp)
    sd	$at,88($sp)
    sd	$s4,16($sp)
    # Line 1076
    lw	$s4,30376($a0)
    sd	$s8,0($sp)
    # Line 1074
    lw	$s8,31368($a0)
    sd	$s3,24($sp)
    # Line 1078
    lw	$s3,30524($a0)
    sd	$s1,8($sp)
    # Line 1077
    lw	$s1,30380($a0)
    sd	$s3,72($sp)
    # Line 1072
    lw	$s3,12096($a0)
    sd	$s1,64($sp)
    # Line 1071
    lw	$s1,30492($a0)
    sd	$s8,56($sp)
    # Line 1076
    srav	$s4,$s4,$s8
    # Line 1079
    beqz	$at,.L0db6bd88
    move	$s8,$zero
    sd	$s2,136($sp)
    sd	$ra,120($sp)
    sd	$s0,112($sp)
    sd	$s5,104($sp)
    sd	$s7,96($sp)
    b	.L0db6bce4
    li	$s6,-1
.L0db6bcbc:
    # Line 1104
    ld	$at,88($sp)
    # Line 1103
    ld	$v0,72($sp)
    ld	$a1,64($sp)
    # Line 1104
    ld	$v1,80($sp)
    # Line 1103
    sw	$s7,0($v0)
    addiu	$v0,$v0,4
    # Line 1104
    addu	$v1,$v1,$a1
    sd	$v1,80($sp)
    beqz	$at,.L0db6bd70
    sd	$v0,72($sp)
.L0db6bce4:
    # Line 1088
    li	$s7,-1
    ld	$at,88($sp)
    # Line 1085
    ld	$v0,88($sp)
    # Line 1087
    ld	$s0,80($sp)
    # Line 1081
    move	$s5,$at
    slti	$at,$at,33
    bnez	$at,.L0db6bd08
    lui	$s2,0x8000
    # Line 1083
    li	$s5,32
.L0db6bd08:
    # Line 1087
    ld	$at,56($sp)
    # Line 1085
    subu	$v0,$v0,$s5
    # Line 1090
    addiu	$s5,$s5,-1
    # Line 1087
    srlv	$s0,$s0,$at
    ld	$at,48($sp)
    sd	$v0,88($sp)
    # Line 1090
    bltz	$s5,.L0db6bcbc
    # Line 1087
    addu	$s0,$s0,$at
    b	.L0db6bd44
    # Line 1091
    lw	$a1,0($s1)
.L0db6bd30:
    # Line 1093
    addiu	$s8,$s8,1
    # Line 1096
    addiu	$s1,$s1,4
.L0db6bd38:
    # Line 1090
    beq	$s5,$s6,.L0db6bcbc
    # Line 1098
    srl	$s2,$s2,0x1
    # Line 1091
    lw	$a1,0($s1)
.L0db6bd44:
    move	$a2,$s1
    move	$a0,$s0
    # Line 1090
    addiu	$s5,$s5,-1
    # Line 1091
    jalr	$s3
    move	$t9,$s3
    # Line 1095
    addu	$s0,$s4,$s0
    # Line 1091
    bnezl	$v0,.L0db6bd38
    # Line 1096
    addiu	$s1,$s1,4
    # Line 1092
    nor	$v1,$s2,$zero
    b	.L0db6bd30
    and	$s7,$v1,$s7
.L0db6bd70:
    ld	$s7,96($sp)
    ld	$s5,104($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s6,128($sp)
    ld	$s2,136($sp)
.L0db6bd88:
    # Line 1104
    beqz	$s8,.L0db6bde4
    ld	$a1,40($sp)
    # Line 1109
    lw	$a1,30300($a1)
    beq	$a1,$s8,.L0db6bdb8
    # Line 1113
    li	$v0,1
    ld	$gp,32($sp)
    ld	$s1,8($sp)
    ld	$s3,24($sp)
    ld	$s4,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db6bdb8:
    # Line 1117
    li	$v0,1
    ld	$gp,32($sp)
    ld	$s3,24($sp)
    ld	$s4,16($sp)
    # Line 1116
    ld	$s1,40($sp)
    # Line 1117
    ld	$s8,0($sp)
    # Line 1116
    li	$a3,1
    sb	$a3,30528($s1)
    # Line 1117
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db6bde4:
    # Line 1109
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s1,8($sp)
    ld	$s3,24($sp)
    ld	$s4,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glDepthTestSpan

# Function: __glDepthTestStippledSpan
# Declared: Line 1123 (Source lines: 1124-1178)
# Address: 0x0db6be04 - 0x0db6bfd8 (Size: 468 bytes, Frame: 176)
.globl __glDepthTestStippledSpan
.ent __glDepthTestStippledSpan
__glDepthTestStippledSpan:
    # Line 1124
    addiu	$sp,$sp,-176
    sd	$s7,104($sp)
    sd	$a0,0($sp)
    sd	$s8,24($sp)
    # Line 1137
    lw	$s8,12096($a0)
    sd	$s2,40($sp)
    # Line 1136
    lw	$s2,30492($a0)
    sd	$gp,8($sp)
    # Line 1124
    lui	$at,0x9
    addiu	$at,$at,10388
    addu	$gp,$t9,$at
    # Line 1140
    lw	$a1,31360($a0)
    # Line 1138
    lw	$v1,30256($a0)
    # Line 1133
    lw	$v0,30524($a0)
    sd	$a1,64($sp)
    sd	$v1,72($sp)
    sd	$v0,80($sp)
    sd	$s6,32($sp)
    # Line 1139
    lw	$s6,31368($a0)
    sd	$s4,16($sp)
    # Line 1142
    lw	$a2,30380($a0)
    # Line 1141
    lw	$s4,30376($a0)
    sd	$s6,48($sp)
    sd	$a2,56($sp)
    # Line 1134
    lw	$a2,30300($a0)
    # Line 1141
    srav	$s4,$s4,$s6
    # Line 1143
    move	$s6,$zero
    # Line 1134
    move	$at,$a2
    # Line 1143
    beqz	$a2,.L0db6bf94
    sd	$a2,88($sp)
    sd	$s3,144($sp)
    sd	$ra,136($sp)
    sd	$s0,128($sp)
    sd	$s1,120($sp)
    sd	$s5,112($sp)
    b	.L0db6bec8
    li	$s7,-1
.L0db6be98:
    ld	$a1,56($sp)
    # Line 1171
    ld	$v1,72($sp)
    # Line 1170
    ld	$v0,96($sp)
    # Line 1171
    addu	$v1,$v1,$a1
    sd	$v1,72($sp)
    # Line 1170
    ld	$v1,80($sp)
    # Line 1171
    ld	$at,88($sp)
    # Line 1170
    and	$v0,$s5,$v0
    addiu	$v1,$v1,4
    sd	$v1,80($sp)
    # Line 1171
    beqz	$at,.L0db6bf74
    # Line 1170
    sw	$v0,-4($v1)
.L0db6bec8:
    lui	$s0,0x8000
    ld	$at,88($sp)
    # Line 1149
    ld	$v0,88($sp)
    # Line 1151
    ld	$s1,72($sp)
    # Line 1145
    move	$s3,$at
    slti	$at,$at,33
    bnez	$at,.L0db6beec
    # Line 1152
    ld	$s5,80($sp)
    # Line 1147
    li	$s3,32
.L0db6beec:
    # Line 1152
    lw	$s5,0($s5)
    # Line 1153
    li	$at,-1
    sd	$at,96($sp)
    # Line 1151
    ld	$at,48($sp)
    # Line 1149
    subu	$v0,$v0,$s3
    # Line 1155
    addiu	$s3,$s3,-1
    # Line 1151
    srlv	$s1,$s1,$at
    ld	$at,64($sp)
    sd	$v0,88($sp)
    # Line 1155
    bltz	$s3,.L0db6be98
    # Line 1151
    addu	$s1,$s1,$at
    b	.L0db6bf38
    # Line 1155
    and	$v0,$s5,$s0
.L0db6bf20:
    # Line 1161
    addiu	$s6,$s6,1
.L0db6bf24:
    # Line 1165
    srl	$s0,$s0,0x1
.L0db6bf28:
    # Line 1163
    addiu	$s2,$s2,4
    # Line 1155
    beq	$s3,$s7,.L0db6be98
    # Line 1162
    addu	$s1,$s4,$s1
    # Line 1155
    and	$v0,$s5,$s0
.L0db6bf38:
    beqz	$v0,.L0db6bf20
    addiu	$s3,$s3,-1
    # Line 1157
    move	$a0,$s1
    lw	$a1,0($s2)
    move	$a2,$s2
    jalr	$s8
    move	$t9,$s8
    bnezl	$v0,.L0db6bf28
    # Line 1165
    srl	$s0,$s0,0x1
    # Line 1158
    nor	$a1,$s0,$zero
    ld	$v1,96($sp)
    # Line 1159
    addiu	$s6,$s6,1
    # Line 1158
    and	$v1,$a1,$v1
    # Line 1159
    b	.L0db6bf24
    sd	$v1,96($sp)
.L0db6bf74:
    ld	$s7,104($sp)
    ld	$s5,112($sp)
    ld	$s1,120($sp)
    ld	$s0,128($sp)
    ld	$a2,0($sp)
    ld	$ra,136($sp)
    ld	$s3,144($sp)
    # Line 1171
    lw	$a2,30300($a2)
.L0db6bf94:
    beq	$a2,$s6,.L0db6bfb8
    # Line 1176
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s2,40($sp)
    ld	$s4,16($sp)
    ld	$s6,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db6bfb8:
    # Line 1178
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s2,40($sp)
    ld	$s4,16($sp)
    ld	$s6,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glDepthTestStippledSpan

# Function: __glDepthTestStencilSpan
# Declared: Line 1184 (Source lines: 1185-1250)
# Address: 0x0db6bfd8 - 0x0db6c208 (Size: 560 bytes, Frame: 192)
.globl __glDepthTestStencilSpan
.ent __glDepthTestStencilSpan
__glDepthTestStencilSpan:
    # Line 1185
    addiu	$sp,$sp,-192
    sd	$s8,128($sp)
    sd	$a0,48($sp)
    sd	$s7,0($sp)
    # Line 1200
    lw	$s7,31244($a0)
    sd	$zero,112($sp)
    sd	$gp,40($sp)
    # Line 1185
    lui	$v1,0x9
    addiu	$v1,$v1,9920
    addu	$gp,$t9,$v1
    # Line 1199
    lw	$a1,31240($a0)
    # Line 1195
    lw	$at,30300($a0)
    # Line 1203
    lw	$v0,31368($a0)
    sd	$a1,104($sp)
    sd	$at,96($sp)
    sd	$v0,56($sp)
    sd	$s2,32($sp)
    # Line 1204
    lw	$s2,31360($a0)
    sd	$s6,24($sp)
    # Line 1207
    lw	$s6,30524($a0)
    sd	$s0,8($sp)
    # Line 1202
    lw	$s0,30256($a0)
    sd	$s6,80($sp)
    # Line 1201
    lw	$s6,12096($a0)
    sd	$s0,88($sp)
    sd	$s4,16($sp)
    # Line 1206
    lw	$s4,30380($a0)
    # Line 1198
    lw	$s0,30504($a0)
    sd	$s2,64($sp)
    sd	$s4,72($sp)
    # Line 1205
    lw	$s4,30376($a0)
    # Line 1197
    lw	$s2,30492($a0)
    # Line 1208
    beqz	$at,.L0db6c178
    # Line 1205
    srav	$s4,$s4,$v0
    sd	$s3,160($sp)
    sd	$ra,152($sp)
    sd	$s1,144($sp)
    sd	$s5,136($sp)
    b	.L0db6c0a4
    # Line 1208
    li	$s8,-1
.L0db6c078:
    # Line 1236
    ld	$v0,80($sp)
    ld	$v1,120($sp)
    ld	$at,72($sp)
    # Line 1237
    ld	$a1,88($sp)
    # Line 1236
    sw	$v1,0($v0)
    # Line 1237
    addu	$a1,$a1,$at
    ld	$at,96($sp)
    # Line 1236
    addiu	$v0,$v0,4
    sd	$a1,88($sp)
    # Line 1237
    beqz	$at,.L0db6c164
    sd	$v0,80($sp)
.L0db6c0a4:
    # Line 1216
    ld	$at,56($sp)
    ld	$v0,96($sp)
    ld	$s1,88($sp)
    # Line 1217
    li	$v1,-1
    # Line 1210
    move	$s5,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0db6c0c8
    lui	$s3,0x8000
    # Line 1212
    li	$s5,32
.L0db6c0c8:
    # Line 1216
    srlv	$s1,$s1,$at
    ld	$at,64($sp)
    # Line 1214
    ld	$v0,96($sp)
    sd	$v1,120($sp)
    # Line 1216
    addu	$s1,$s1,$at
    # Line 1214
    subu	$v0,$v0,$s5
    # Line 1219
    addiu	$s5,$s5,-1
    bltz	$s5,.L0db6c078
    sd	$v0,96($sp)
    b	.L0db6c110
    # Line 1220
    lw	$a1,0($s2)
.L0db6c0f4:
    # Line 1221
    addu	$a1,$a0,$s7
    lbu	$a1,0($a1)
    sb	$a1,0($s0)
.L0db6c100:
    # Line 1231
    srl	$s3,$s3,0x1
    # Line 1219
    beq	$s5,$s8,.L0db6c078
    # Line 1229
    addiu	$s0,$s0,1
    # Line 1220
    lw	$a1,0($s2)
.L0db6c110:
    move	$a2,$s2
    # Line 1219
    addiu	$s5,$s5,-1
    # Line 1220
    move	$a0,$s1
    # Line 1227
    addu	$s1,$s4,$s1
    # Line 1220
    jalr	$s6
    move	$t9,$s6
    # Line 1228
    addiu	$s2,$s2,4
    # Line 1220
    bnez	$v0,.L0db6c0f4
    lbu	$a0,0($s0)
    # Line 1224
    nor	$v1,$s3,$zero
    # Line 1223
    ld	$at,104($sp)
    ld	$v0,112($sp)
    addu	$at,$a0,$at
    lbu	$at,0($at)
    # Line 1225
    addiu	$v0,$v0,1
    sd	$v0,112($sp)
    # Line 1224
    ld	$v0,120($sp)
    # Line 1223
    sb	$at,0($s0)
    # Line 1224
    and	$v0,$v1,$v0
    b	.L0db6c100
    sd	$v0,120($sp)
.L0db6c164:
    ld	$s8,128($sp)
    ld	$s5,136($sp)
    ld	$s1,144($sp)
    ld	$ra,152($sp)
    ld	$s3,160($sp)
.L0db6c178:
    ld	$v1,112($sp)
    # Line 1237
    beqz	$v1,.L0db6c1e4
    ld	$a1,48($sp)
    # Line 1242
    ld	$at,112($sp)
    lw	$a1,30300($a1)
    beq	$a1,$at,.L0db6c1b4
    # Line 1246
    li	$v0,1
    ld	$gp,40($sp)
    ld	$s0,8($sp)
    ld	$s2,32($sp)
    ld	$s4,16($sp)
    ld	$s6,24($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db6c1b4:
    # Line 1250
    li	$v0,1
    ld	$gp,40($sp)
    ld	$s2,32($sp)
    ld	$s4,16($sp)
    ld	$s6,24($sp)
    # Line 1249
    ld	$s0,48($sp)
    # Line 1250
    ld	$s7,0($sp)
    # Line 1249
    li	$a3,1
    sb	$a3,30528($s0)
    # Line 1250
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db6c1e4:
    # Line 1242
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,8($sp)
    ld	$s2,32($sp)
    ld	$s4,16($sp)
    ld	$s6,24($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glDepthTestStencilSpan

# Function: __glDepthTestStencilStippledSpan
# Declared: Line 1253 (Source lines: 1254-1317)
# Address: 0x0db6c208 - 0x0db6c41c (Size: 532 bytes, Frame: 192)
.globl __glDepthTestStencilStippledSpan
.ent __glDepthTestStencilStippledSpan
__glDepthTestStencilStippledSpan:
    # Line 1254
    addiu	$sp,$sp,-192
    sd	$s8,128($sp)
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x9
    addiu	$at,$at,9360
    addu	$gp,$t9,$at
    # Line 1270
    lw	$a1,31244($a0)
    # Line 1269
    lw	$v1,31240($a0)
    # Line 1265
    lw	$v0,30524($a0)
    sd	$a1,120($sp)
    sd	$v1,104($sp)
    sd	$v0,80($sp)
    sd	$s7,24($sp)
    # Line 1273
    lw	$s7,31368($a0)
    sd	$s0,32($sp)
    # Line 1272
    lw	$s0,30256($a0)
    sd	$s3,48($sp)
    # Line 1274
    lw	$s3,31360($a0)
    sd	$s0,88($sp)
    # Line 1268
    lw	$s0,30504($a0)
    sd	$s3,72($sp)
    # Line 1267
    lw	$s3,30492($a0)
    sd	$s7,64($sp)
    # Line 1271
    lw	$a2,12096($a0)
    sd	$s6,40($sp)
    # Line 1276
    lw	$s6,30380($a0)
    sd	$a2,0($sp)
    # Line 1264
    lw	$a2,30300($a0)
    sd	$s6,56($sp)
    # Line 1275
    lw	$s6,30376($a0)
    # Line 1264
    move	$at,$a2
    sd	$a2,96($sp)
    # Line 1275
    srav	$s6,$s6,$s7
    # Line 1277
    beqz	$a2,.L0db6c3d8
    move	$s7,$zero
    sd	$s2,168($sp)
    sd	$ra,160($sp)
    sd	$s4,152($sp)
    sd	$s1,144($sp)
    sd	$s5,136($sp)
    b	.L0db6c2e4
    li	$s8,-1
.L0db6c2b4:
    ld	$a1,56($sp)
    # Line 1309
    ld	$v1,88($sp)
    # Line 1308
    ld	$v0,112($sp)
    # Line 1309
    addu	$v1,$v1,$a1
    sd	$v1,88($sp)
    # Line 1308
    ld	$v1,80($sp)
    # Line 1309
    ld	$at,96($sp)
    # Line 1308
    and	$v0,$s5,$v0
    addiu	$v1,$v1,4
    sd	$v1,80($sp)
    # Line 1309
    beqz	$at,.L0db6c3b8
    # Line 1308
    sw	$v0,-4($v1)
.L0db6c2e4:
    lui	$s1,0x8000
    ld	$at,96($sp)
    # Line 1283
    ld	$v0,96($sp)
    # Line 1285
    ld	$s2,88($sp)
    # Line 1279
    move	$s4,$at
    slti	$at,$at,33
    bnez	$at,.L0db6c308
    # Line 1286
    ld	$s5,80($sp)
    # Line 1281
    li	$s4,32
.L0db6c308:
    # Line 1286
    lw	$s5,0($s5)
    # Line 1287
    li	$at,-1
    sd	$at,112($sp)
    # Line 1285
    ld	$at,64($sp)
    # Line 1283
    subu	$v0,$v0,$s4
    # Line 1289
    addiu	$s4,$s4,-1
    # Line 1285
    srlv	$s2,$s2,$at
    ld	$at,72($sp)
    sd	$v0,96($sp)
    # Line 1289
    bltz	$s4,.L0db6c2b4
    # Line 1285
    addu	$s2,$s2,$at
    b	.L0db6c364
    # Line 1289
    and	$v1,$s5,$s1
.L0db6c33c:
    ld	$v0,120($sp)
    # Line 1292
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0db6c34c:
    # Line 1303
    srl	$s1,$s1,0x1
    # Line 1301
    addiu	$s0,$s0,1
    # Line 1300
    addiu	$s3,$s3,4
    # Line 1289
    beq	$s4,$s8,.L0db6c2b4
    # Line 1299
    addu	$s2,$s6,$s2
    # Line 1289
    and	$v1,$s5,$s1
.L0db6c364:
    beqz	$v1,.L0db6c3b0
    addiu	$s4,$s4,-1
    # Line 1291
    ld	$t9,0($sp)
    move	$a0,$s2
    lw	$a1,0($s3)
    jalr	$t9
    move	$a2,$s3
    # Line 1294
    ld	$a1,104($sp)
    # Line 1291
    bnez	$v0,.L0db6c33c
    lbu	$a2,0($s0)
    # Line 1296
    addiu	$s7,$s7,1
    # Line 1295
    nor	$v0,$s1,$zero
    ld	$at,112($sp)
    # Line 1294
    addu	$a1,$a2,$a1
    lbu	$a1,0($a1)
    # Line 1295
    and	$at,$v0,$at
    sd	$at,112($sp)
    b	.L0db6c34c
    # Line 1294
    sb	$a1,0($s0)
.L0db6c3b0:
    b	.L0db6c34c
    # Line 1298
    addiu	$s7,$s7,1
.L0db6c3b8:
    ld	$s8,128($sp)
    ld	$s5,136($sp)
    ld	$s1,144($sp)
    ld	$s4,152($sp)
    ld	$a2,8($sp)
    ld	$ra,160($sp)
    ld	$s2,168($sp)
    # Line 1309
    lw	$a2,30300($a2)
.L0db6c3d8:
    beq	$a2,$s7,.L0db6c3fc
    # Line 1314
    move	$v0,$zero
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db6c3fc:
    # Line 1317
    li	$v0,1
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glDepthTestStencilStippledSpan

# Function: __glDepthTestStencilOffsetSpan
# Declared: Line 1324 (Source lines: 1325-1561)
# Address: 0x0db6c41c - 0x0db6cab4 (Size: 1688 bytes, Frame: 160)
.globl __glDepthTestStencilOffsetSpan
.ent __glDepthTestStencilOffsetSpan
__glDepthTestStencilOffsetSpan:
    # Line 1372
    lwc1	$f5,30556($a0)
    # Line 1370
    lwc1	$f6,30536($a0)
    # Line 1325
    addiu	$sp,$sp,-288
    sd	$zero,152($sp)
    sd	$zero,200($sp)
    # Line 1356
    sw	$zero,8($sp)
    # Line 1355
    sw	$zero,4($sp)
    sd	$a0,160($sp)
    sd	$s7,80($sp)
    # Line 1361
    lw	$s7,31244($a0)
    sd	$s0,96($sp)
    # Line 1359
    lw	$s0,30504($a0)
    sd	$s1,88($sp)
    # Line 1358
    lw	$s1,30492($a0)
    # Line 1362
    lw	$a4,12096($a0)
    # Line 1364
    lw	$a1,31360($a0)
    # Line 1363
    lw	$v1,31368($a0)
    # Line 1360
    lw	$v0,31240($a0)
    sd	$a1,144($sp)
    sd	$v1,168($sp)
    # Line 1371
    lwc1	$f4,30552($a0)
    # Line 1366
    lw	$a2,30524($a0)
    sd	$gp,112($sp)
    # Line 1325
    lui	$at,0x9
    addiu	$at,$at,8828
    addu	$gp,$t9,$at
    # Line 1372
    mtc1	$zero,$f0
    sd	$v0,192($sp)
    sd	$a2,176($sp)
    c.lt.s	$f0,$f4
    # Line 1354
    lw	$a2,30300($a0)
    # Line 1362
    sw	$a4,16($sp)
    # Line 1372
    bc1f	.L0db6c55c
    # Line 1354
    sw	$a2,0($sp)
    # Line 1372
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db6c618
    # Line 1399
    ld	$a3,160($sp)
    # Line 1380
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,160($sp)
    lw	$a1,30380($v0)
    # Line 1378
    trunc.l.s	$f1,$f6
    # Line 1379
    ld	$v1,168($sp)
    # Line 1380
    sw	$a1,40($sp)
    # Line 1379
    lw	$v0,30376($v0)
    # Line 1378
    dmfc1	$at,$f1
    # Line 1380
    c.lt.s	$f4,$f5
    # Line 1379
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 1380
    bc1f	.L0db6c588
    # Line 1378
    sw	$at,24($sp)
    # Line 1382
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 1383
    ld	$a0,160($sp)
    li	$v1,513
    # Line 1382
    mfc1	$a1,$f0
    # Line 1383
    lw	$a3,30548($a0)
    lw	$a0,1536($a0)
    # Line 1382
    sw	$a1,4($sp)
    # Line 1383
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0db6c8d8
    sw	$a2,0($sp)
.L0db6c51c:
    # Line 1384
    li	$a1,516
    beq	$a0,$a1,.L0db6c8c8
    nop
    # Line 1390
    sw	$a4,20($sp)
.L0db6c52c:
    # Line 1394
    sw	$zero,44($sp)
    # Line 1393
    sw	$zero,36($sp)
    # Line 1391
    sw	$a3,28($sp)
    # Line 1392
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 1394
    b	.L0db6c588
    sd	$at,152($sp)
.L0db6c55c:
    ld	$a3,160($sp)
    # Line 1421
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0db6c7c0
    lw	$a3,30548($a3)
.L0db6c570:
    # Line 1425
    li	$at,516
    beq	$a0,$at,.L0db6c7d4
    nop
.L0db6c57c:
    # Line 1432
    sw	$zero,40($sp)
.L0db6c580:
    # Line 1431
    sw	$zero,32($sp)
    # Line 1430
    sw	$a3,24($sp)
.L0db6c588:
    sd	$s3,256($sp)
.L0db6c58c:
    sd	$s8,224($sp)
    # Line 1432
    beqz	$a2,.L0db6c770
    sd	$s5,216($sp)
    move	$s5,$zero
    addiu	$s8,$sp,32
    li	$a0,-1
    addiu	$at,$sp,0
    sd	$at,136($sp)
    lw	$s3,52($sp)
    addiu	$v1,$sp,16
    sd	$v1,120($sp)
    li	$v1,32
    sd	$s3,208($sp)
    addiu	$v0,$sp,24
    sd	$v0,128($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,64($sp)
    ld	$a1,152($sp)
    lw	$s3,48($sp)
    sd	$v0,184($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0db6c7f4
    sd	$v1,72($sp)
    sd	$s2,264($sp)
.L0db6c5f0:
    sd	$s6,248($sp)
    ld	$v0,64($sp)
    sd	$ra,240($sp)
    ld	$at,128($sp)
    lw	$v0,0($v0)
    sd	$s4,232($sp)
    lw	$at,0($at)
    sd	$v0,104($sp)
    b	.L0db6c99c
    sd	$at,56($sp)
.L0db6c618:
    # Line 1399
    sw	$zero,40($sp)
    # Line 1398
    sw	$zero,32($sp)
    # Line 1399
    lw	$a0,1536($a3)
    # Line 1397
    lw	$a3,30544($a3)
    # Line 1399
    li	$v1,513
    beq	$a0,$v1,.L0db6c8a4
    # Line 1397
    sw	$a3,24($sp)
.L0db6c634:
    # Line 1400
    li	$at,516
    beq	$a0,$at,.L0db6c8b8
    nop
.L0db6c640:
    # Line 1404
    sub.s	$f1,$f4,$f5
.L0db6c644:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqzl	$v0,.L0db6c58c
    sd	$s3,256($sp)
    # Line 1410
    ld	$a1,160($sp)
    # Line 1408
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 1410
    lw	$a5,30380($a1)
    # Line 1408
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 1410
    mult	$a3,$a5
    # Line 1408
    sra	$at,$a0,0x1f
    # Line 1410
    lw	$a1,30376($a1)
    # Line 1408
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 1410
    mflo	$v0
    # Line 1408
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 1410
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1409
    sw	$a4,20($sp)
    # Line 1407
    sw	$a0,0($sp)
    # Line 1410
    cvt.d.s	$f3,$f6
    # Line 1421
    sw	$a5,44($sp)
    # Line 1410
    add.d	$f2,$f2,$f3
    # Line 1406
    subu	$at,$a2,$a0
    sd	$a3,152($sp)
    # Line 1420
    ld	$a3,168($sp)
    # Line 1410
    trunc.l.d	$f2,$f2
    # Line 1407
    move	$a2,$a0
    # Line 1406
    sw	$at,4($sp)
    # Line 1420
    srav	$a1,$a1,$a3
    # Line 1410
    dmfc1	$v1,$f2
    # Line 1420
    sw	$a1,36($sp)
    # Line 1421
    b	.L0db6c588
    # Line 1410
    sw	$v1,28($sp)
.L0db6c700:
    ld	$ra,240($sp)
    ld	$s6,248($sp)
.L0db6c708:
    # Line 1546
    ld	$a1,72($sp)
    mtc1	$a1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v1,64($sp)
    mul.d	$f0,$f0,$f1
    lw	$v1,0($v1)
    mtc1	$v1,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s4,56($sp)
    mfc1	$s2,$f3
    # Line 1540
    ld	$v0,176($sp)
    ld	$at,208($sp)
    # Line 1546
    addu	$s2,$s2,$s4
    ld	$s4,128($sp)
    # Line 1540
    sw	$at,-4($v0)
    # Line 1546
    sw	$s2,0($s4)
    ld	$s4,232($sp)
    ld	$s2,264($sp)
.L0db6c764:
    ld	$at,184($sp)
    bnezl	$at,.L0db6c5f0
    sd	$s2,264($sp)
.L0db6c770:
    ld	$v0,200($sp)
    ld	$s5,216($sp)
    ld	$s8,224($sp)
    beqz	$v0,.L0db6ca80
    ld	$s3,256($sp)
    ld	$v1,160($sp)
    # Line 1552
    ld	$a1,200($sp)
    lw	$v1,30300($v1)
    bne	$v1,$a1,.L0db6ca9c
    # Line 1556
    li	$v0,1
    # Line 1561
    li	$v0,1
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s7,80($sp)
    # Line 1560
    ld	$a1,160($sp)
    # Line 1561
    addiu	$sp,$sp,288
    # Line 1560
    li	$a0,1
    # Line 1561
    jr	$ra
    # Line 1560
    sb	$a0,30528($a1)
.L0db6c7c0:
    # Line 1425
    beqz	$a3,.L0db6c570
    # Line 1429
    la	$at,__glCDTPixel
.L0db6c7c8:
    lw	$at,0($at)
    b	.L0db6c57c
    sw	$at,16($sp)
.L0db6c7d4:
    # Line 1425
    bnezl	$a3,.L0db6c580
    # Line 1432
    sw	$zero,40($sp)
    b	.L0db6c7c8
    # Line 1429
    la	$at,__glCDTPixel
.L0db6c7e4:
    ld	$s4,232($sp)
    ld	$ra,240($sp)
    ld	$s6,248($sp)
    ld	$s2,264($sp)
.L0db6c7f4:
    # Line 1491
    ld	$a1,120($sp)
    ld	$v0,136($sp)
    addiu	$s5,$s5,4
    addiu	$a1,$a1,4
    addiu	$v0,$v0,4
    ld	$v1,128($sp)
    sd	$v0,136($sp)
    lw	$v0,0($v0)
    addiu	$v1,$v1,4
    sd	$v1,128($sp)
    ld	$v1,64($sp)
    sd	$a1,120($sp)
    sd	$v0,184($sp)
    addiu	$v1,$v1,4
    beqz	$v0,.L0db6c770
    sd	$v1,64($sp)
    ld	$a1,152($sp)
    beqz	$a1,.L0db6c764
    ld	$v0,72($sp)
    # Line 1493
    ld	$at,184($sp)
    sd	$s4,232($sp)
    slt	$at,$at,$v0
    bnez	$at,.L0db6c9f8
    move	$s4,$v0
.L0db6c854:
    sd	$s6,248($sp)
    # Line 1498
    ld	$v1,136($sp)
    ld	$v0,184($sp)
    sd	$s2,264($sp)
    # Line 1506
    ld	$s2,128($sp)
    # Line 1498
    subu	$v0,$v0,$s4
    # Line 1508
    addiu	$s4,$s4,-1
    # Line 1506
    lw	$s2,0($s2)
    ld	$at,168($sp)
    sd	$v0,184($sp)
    sd	$s2,56($sp)
    srlv	$s2,$s2,$at
    ld	$at,144($sp)
    # Line 1498
    sw	$v0,0($v1)
    # Line 1508
    bltz	$s4,.L0db6c708
    # Line 1506
    addu	$s2,$s2,$at
    ld	$s6,120($sp)
    sd	$ra,240($sp)
    b	.L0db6ca4c
    # Line 1508
    lw	$s6,0($s6)
.L0db6c8a4:
    # Line 1400
    beqz	$a3,.L0db6c634
    # Line 1404
    la	$at,__glCDTPixel
.L0db6c8ac:
    lw	$at,0($at)
    b	.L0db6c640
    sw	$at,16($sp)
.L0db6c8b8:
    # Line 1400
    bnezl	$a3,.L0db6c644
    # Line 1404
    sub.s	$f1,$f4,$f5
    b	.L0db6c8ac
    la	$at,__glCDTPixel
.L0db6c8c8:
    # Line 1384
    bnezl	$a3,.L0db6c52c
    # Line 1390
    sw	$a4,20($sp)
    b	.L0db6c8e0
    # Line 1388
    la	$v0,__glCDTPixel
.L0db6c8d8:
    # Line 1384
    beqz	$a3,.L0db6c51c
    # Line 1388
    la	$v0,__glCDTPixel
.L0db6c8e0:
    lw	$v0,0($v0)
    b	.L0db6c52c
    sw	$v0,20($sp)
.L0db6c8ec:
    # Line 1470
    nor	$at,$s3,$zero
    # Line 1469
    ld	$v1,192($sp)
    sd	$a1,200($sp)
    # Line 1470
    ld	$a1,208($sp)
    # Line 1469
    addu	$v1,$a2,$v1
    lbu	$v1,0($v1)
    # Line 1470
    and	$a1,$at,$a1
    sd	$a1,208($sp)
    # Line 1469
    sb	$v1,0($s0)
.L0db6c910:
    # Line 1477
    addiu	$s1,$s1,4
    # Line 1480
    srl	$s3,$s3,0x1
    # Line 1476
    addu	$at,$s5,$s8
    lw	$at,0($at)
    # Line 1478
    addiu	$s0,$s0,1
    # Line 1453
    beq	$s4,$a0,.L0db6c968
    # Line 1476
    addu	$s2,$at,$s2
.L0db6c92c:
    # Line 1466
    move	$a0,$s2
    lw	$a1,0($s1)
    move	$a2,$s1
    jalr	$s6
    move	$t9,$s6
    # Line 1453
    addiu	$s4,$s4,-1
    li	$a0,-1
    ld	$a1,200($sp)
    # Line 1466
    lbu	$a2,0($s0)
    beqz	$v0,.L0db6c8ec
    # Line 1471
    addiu	$a1,$a1,1
    # Line 1467
    addu	$v0,$a2,$s7
    lbu	$v0,0($v0)
    b	.L0db6c910
    sb	$v0,0($s0)
.L0db6c968:
    ld	$v1,176($sp)
    # Line 1485
    ld	$a1,208($sp)
    # Line 1489
    ld	$at,128($sp)
    ld	$v0,104($sp)
    # Line 1485
    sw	$a1,0($v1)
    # Line 1489
    ld	$a1,56($sp)
    # Line 1485
    addiu	$v1,$v1,4
    sd	$v1,176($sp)
    # Line 1489
    ld	$v1,184($sp)
    addu	$a1,$a1,$v0
    sd	$a1,56($sp)
    beqz	$v1,.L0db6c7e4
    sw	$a1,0($at)
.L0db6c99c:
    ld	$at,184($sp)
    lui	$s3,0x8000
    # Line 1450
    ld	$s2,56($sp)
    # Line 1441
    move	$s4,$at
    slti	$at,$at,33
    bnez	$at,.L0db6c9bc
    # Line 1451
    li	$v0,-1
    # Line 1443
    li	$s4,32
.L0db6c9bc:
    sd	$v0,208($sp)
    # Line 1445
    ld	$v0,184($sp)
    ld	$s6,120($sp)
    ld	$v1,136($sp)
    subu	$v0,$v0,$s4
    # Line 1450
    ld	$at,168($sp)
    # Line 1453
    addiu	$s4,$s4,-1
    sd	$v0,184($sp)
    # Line 1450
    srlv	$s2,$s2,$at
    ld	$at,144($sp)
    # Line 1445
    sw	$v0,0($v1)
    # Line 1453
    bltz	$s4,.L0db6c968
    # Line 1450
    addu	$s2,$s2,$at
    b	.L0db6c92c
    # Line 1453
    lw	$s6,0($s6)
.L0db6c9f8:
    sd	$s2,264($sp)
    b	.L0db6c854
    ld	$s4,184($sp)
.L0db6ca04:
    # Line 1525
    nor	$v1,$s3,$zero
    # Line 1524
    ld	$at,192($sp)
    ld	$v0,200($sp)
    addu	$at,$a2,$at
    lbu	$at,0($at)
    # Line 1526
    addiu	$v0,$v0,1
    sd	$v0,200($sp)
    # Line 1525
    ld	$v0,208($sp)
    # Line 1524
    sb	$at,0($s0)
    # Line 1525
    and	$v0,$v1,$v0
    sd	$v0,208($sp)
.L0db6ca30:
    # Line 1532
    addiu	$s1,$s1,4
    # Line 1535
    srl	$s3,$s3,0x1
    # Line 1531
    addu	$v1,$s5,$s8
    lw	$v1,0($v1)
    # Line 1533
    addiu	$s0,$s0,1
    # Line 1508
    beq	$s4,$a0,.L0db6c700
    # Line 1531
    addu	$s2,$v1,$s2
.L0db6ca4c:
    # Line 1521
    move	$a0,$s2
    lw	$a1,0($s1)
    move	$a2,$s1
    jalr	$s6
    move	$t9,$s6
    # Line 1508
    addiu	$s4,$s4,-1
    li	$a0,-1
    # Line 1521
    beqz	$v0,.L0db6ca04
    lbu	$a2,0($s0)
    # Line 1522
    addu	$a1,$a2,$s7
    lbu	$a1,0($a1)
    b	.L0db6ca30
    sb	$a1,0($s0)
.L0db6ca80:
    # Line 1552
    move	$v0,$zero
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0db6ca9c:
    ld	$gp,112($sp)
    # Line 1556
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,288
.end __glDepthTestStencilOffsetSpan

# Function: __glDepthTestStencilStippledOffsetSpan
# Declared: Line 1564 (Source lines: 1565-1801)
# Address: 0x0db6cab4 - 0x0db6d13c (Size: 1672 bytes, Frame: 176)
.globl __glDepthTestStencilStippledOffsetSpan
.ent __glDepthTestStencilStippledOffsetSpan
__glDepthTestStencilStippledOffsetSpan:
    # Line 1613
    lwc1	$f5,30556($a0)
    # Line 1611
    lwc1	$f6,30536($a0)
    # Line 1565
    addiu	$sp,$sp,-304
    sd	$zero,160($sp)
    sd	$s7,104($sp)
    # Line 1608
    move	$s7,$zero
    # Line 1596
    sw	$zero,8($sp)
    # Line 1595
    sw	$zero,4($sp)
    sd	$a0,168($sp)
    sd	$s0,112($sp)
    # Line 1599
    lw	$s0,30504($a0)
    sd	$s2,128($sp)
    # Line 1598
    lw	$s2,30492($a0)
    # Line 1594
    lw	$a5,30300($a0)
    # Line 1604
    lw	$a2,31360($a0)
    # Line 1603
    lw	$a1,31368($a0)
    # Line 1601
    lw	$v1,31244($a0)
    # Line 1600
    lw	$v0,31240($a0)
    sd	$a1,176($sp)
    sd	$v1,216($sp)
    sd	$v0,200($sp)
    sd	$a2,152($sp)
    # Line 1612
    lwc1	$f4,30552($a0)
    # Line 1606
    lw	$a4,30524($a0)
    sd	$gp,120($sp)
    # Line 1565
    lui	$at,0x9
    addiu	$at,$at,7140
    addu	$gp,$t9,$at
    # Line 1613
    mtc1	$zero,$f0
    # Line 1594
    move	$a2,$a5
    sd	$a4,184($sp)
    # Line 1613
    c.lt.s	$f0,$f4
    # Line 1602
    lw	$a4,12096($a0)
    # Line 1594
    sw	$a5,0($sp)
    # Line 1613
    bc1f	.L0db6cbfc
    # Line 1602
    sw	$a4,16($sp)
    # Line 1613
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db6ccc0
    # Line 1640
    ld	$a3,168($sp)
    # Line 1621
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,168($sp)
    lw	$a1,30380($v0)
    # Line 1619
    trunc.l.s	$f1,$f6
    # Line 1620
    ld	$v1,176($sp)
    # Line 1621
    sw	$a1,40($sp)
    # Line 1620
    lw	$v0,30376($v0)
    # Line 1619
    dmfc1	$at,$f1
    # Line 1621
    c.lt.s	$f4,$f5
    # Line 1620
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 1621
    bc1f	.L0db6cc28
    # Line 1619
    sw	$at,24($sp)
    # Line 1623
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 1624
    ld	$a0,168($sp)
    li	$v1,513
    # Line 1623
    mfc1	$a1,$f0
    # Line 1624
    lw	$a3,30548($a0)
    lw	$a0,1536($a0)
    # Line 1623
    sw	$a1,4($sp)
    # Line 1624
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0db6cf5c
    sw	$a2,0($sp)
.L0db6cbbc:
    # Line 1625
    li	$a1,516
    beq	$a0,$a1,.L0db6cf4c
    nop
    # Line 1631
    sw	$a4,20($sp)
.L0db6cbcc:
    # Line 1635
    sw	$zero,44($sp)
    # Line 1634
    sw	$zero,36($sp)
    # Line 1632
    sw	$a3,28($sp)
    # Line 1633
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 1635
    b	.L0db6cc28
    sd	$at,160($sp)
.L0db6cbfc:
    ld	$a3,168($sp)
    # Line 1662
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0db6ce4c
    lw	$a3,30548($a3)
.L0db6cc10:
    # Line 1666
    li	$at,516
    beq	$a0,$at,.L0db6ce60
    nop
.L0db6cc1c:
    # Line 1673
    sw	$zero,40($sp)
.L0db6cc20:
    # Line 1672
    sw	$zero,32($sp)
    # Line 1671
    sw	$a3,24($sp)
.L0db6cc28:
    # Line 1673
    beqz	$a2,.L0db6ce2c
    nop
    sd	$s6,264($sp)
    move	$s6,$zero
    addiu	$a0,$sp,32
    sd	$s8,224($sp)
    li	$s8,-1
    sd	$s5,240($sp)
    lw	$s5,56($sp)
    addiu	$at,$sp,0
    sd	$at,144($sp)
    sd	$s1,232($sp)
    lw	$s1,52($sp)
    addiu	$v1,$sp,16
    sd	$v1,64($sp)
    li	$v1,32
    sd	$s1,208($sp)
    addiu	$v0,$sp,24
    sd	$v0,136($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,80($sp)
    ld	$a1,160($sp)
    lw	$s1,48($sp)
    sd	$v0,192($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0db6ce7c
    sd	$v1,88($sp)
    sd	$s3,272($sp)
.L0db6cc9c:
    ld	$v0,80($sp)
    sd	$ra,256($sp)
    ld	$at,136($sp)
    lw	$v0,0($v0)
    sd	$s4,248($sp)
    lw	$at,0($at)
    sd	$v0,96($sp)
    b	.L0db6d034
    sd	$at,72($sp)
.L0db6ccc0:
    # Line 1640
    sw	$zero,40($sp)
    # Line 1639
    sw	$zero,32($sp)
    # Line 1640
    lw	$a0,1536($a3)
    # Line 1638
    lw	$a3,30544($a3)
    # Line 1640
    li	$v1,513
    beq	$a0,$v1,.L0db6cf28
    # Line 1638
    sw	$a3,24($sp)
.L0db6ccdc:
    # Line 1641
    li	$at,516
    beq	$a0,$at,.L0db6cf3c
    nop
.L0db6cce8:
    # Line 1645
    sub.s	$f1,$f4,$f5
.L0db6ccec:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqz	$v0,.L0db6cc28
    # Line 1651
    ld	$a1,168($sp)
    # Line 1649
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 1651
    lw	$a6,30380($a1)
    # Line 1649
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 1651
    mult	$a3,$a6
    # Line 1649
    sra	$at,$a0,0x1f
    # Line 1651
    lw	$a1,30376($a1)
    # Line 1649
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 1651
    mflo	$v0
    # Line 1649
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 1651
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1650
    sw	$a4,20($sp)
    # Line 1648
    sw	$a0,0($sp)
    # Line 1651
    cvt.d.s	$f3,$f6
    # Line 1662
    sw	$a6,44($sp)
    # Line 1651
    add.d	$f2,$f2,$f3
    # Line 1647
    subu	$at,$a2,$a0
    sd	$a3,160($sp)
    # Line 1661
    ld	$a3,176($sp)
    # Line 1651
    trunc.l.d	$f2,$f2
    # Line 1648
    move	$a2,$a0
    # Line 1647
    sw	$at,4($sp)
    # Line 1661
    srav	$a1,$a1,$a3
    # Line 1651
    dmfc1	$v1,$f2
    # Line 1661
    sw	$a1,36($sp)
    # Line 1662
    b	.L0db6cc28
    # Line 1651
    sw	$v1,28($sp)
.L0db6cda4:
    ld	$ra,256($sp)
.L0db6cda8:
    # Line 1791
    ld	$v1,88($sp)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v0,80($sp)
    mul.d	$f0,$f0,$f1
    lw	$v0,0($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s4,72($sp)
    mfc1	$s3,$f3
    # Line 1785
    ld	$at,208($sp)
    ld	$v0,184($sp)
    # Line 1791
    addu	$s3,$s3,$s4
    ld	$s4,136($sp)
    # Line 1785
    and	$at,$at,$s5
    sw	$at,-4($v0)
    # Line 1791
    sw	$s3,0($s4)
    ld	$s4,248($sp)
    ld	$s3,272($sp)
.L0db6ce08:
    ld	$a1,192($sp)
    bnezl	$a1,.L0db6cc9c
    sd	$s3,272($sp)
.L0db6ce14:
    ld	$s8,224($sp)
    ld	$s1,232($sp)
    ld	$a5,168($sp)
    ld	$s5,240($sp)
    ld	$s6,264($sp)
    lw	$a5,30300($a5)
.L0db6ce2c:
    beq	$a5,$s7,.L0db6d120
    # Line 1798
    move	$v0,$zero
    ld	$gp,120($sp)
    ld	$s0,112($sp)
    ld	$s2,128($sp)
    ld	$s7,104($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0db6ce4c:
    # Line 1666
    beqz	$a3,.L0db6cc10
    # Line 1670
    la	$at,__glCDTPixel
.L0db6ce54:
    lw	$at,0($at)
    b	.L0db6cc1c
    sw	$at,16($sp)
.L0db6ce60:
    # Line 1666
    bnezl	$a3,.L0db6cc20
    # Line 1673
    sw	$zero,40($sp)
    b	.L0db6ce54
    # Line 1670
    la	$at,__glCDTPixel
.L0db6ce70:
    ld	$s4,248($sp)
    ld	$ra,256($sp)
    ld	$s3,272($sp)
.L0db6ce7c:
    # Line 1735
    ld	$a1,64($sp)
    ld	$v0,144($sp)
    addiu	$s6,$s6,4
    addiu	$a1,$a1,4
    addiu	$v0,$v0,4
    ld	$v1,136($sp)
    sd	$v0,144($sp)
    lw	$v0,0($v0)
    addiu	$v1,$v1,4
    sd	$v1,136($sp)
    ld	$v1,80($sp)
    sd	$a1,64($sp)
    sd	$v0,192($sp)
    addiu	$v1,$v1,4
    beqz	$v0,.L0db6ce14
    sd	$v1,80($sp)
    ld	$a1,160($sp)
    beqz	$a1,.L0db6ce08
    ld	$v0,88($sp)
    # Line 1737
    ld	$at,192($sp)
    sd	$s4,248($sp)
    slt	$at,$at,$v0
    beqz	$at,.L0db6cee4
    move	$s4,$v0
    sd	$s3,272($sp)
    ld	$s4,192($sp)
.L0db6cee4:
    # Line 1742
    ld	$v1,144($sp)
    ld	$v0,192($sp)
    sd	$s3,272($sp)
    # Line 1750
    ld	$s3,136($sp)
    # Line 1742
    subu	$v0,$v0,$s4
    # Line 1751
    addiu	$s4,$s4,-1
    # Line 1750
    lw	$s3,0($s3)
    ld	$at,176($sp)
    sd	$v0,192($sp)
    sd	$s3,72($sp)
    srlv	$s3,$s3,$at
    ld	$at,152($sp)
    # Line 1742
    sw	$v0,0($v1)
    # Line 1751
    bltz	$s4,.L0db6cda8
    # Line 1750
    addu	$s3,$s3,$at
    b	.L0db6d0c0
    sd	$ra,256($sp)
.L0db6cf28:
    # Line 1641
    beqz	$a3,.L0db6ccdc
    # Line 1645
    la	$at,__glCDTPixel
.L0db6cf30:
    lw	$at,0($at)
    b	.L0db6cce8
    sw	$at,16($sp)
.L0db6cf3c:
    # Line 1641
    bnezl	$a3,.L0db6ccec
    # Line 1645
    sub.s	$f1,$f4,$f5
    b	.L0db6cf30
    la	$at,__glCDTPixel
.L0db6cf4c:
    # Line 1625
    bnezl	$a3,.L0db6cbcc
    # Line 1631
    sw	$a4,20($sp)
    b	.L0db6cf64
    # Line 1629
    la	$v0,__glCDTPixel
.L0db6cf5c:
    # Line 1625
    beqz	$a3,.L0db6cbbc
    # Line 1629
    la	$v0,__glCDTPixel
.L0db6cf64:
    lw	$v0,0($v0)
    b	.L0db6cbcc
    sw	$v0,20($sp)
.L0db6cf70:
    ld	$v1,216($sp)
    # Line 1710
    addu	$v1,$a2,$v1
    lbu	$v1,0($v1)
    sb	$v1,0($s0)
.L0db6cf80:
    # Line 1724
    srl	$s1,$s1,0x1
    # Line 1722
    addiu	$s0,$s0,1
    # Line 1720
    addu	$a1,$s6,$a0
    lw	$a1,0($a1)
    # Line 1721
    addiu	$s2,$s2,4
    # Line 1695
    beq	$s4,$s8,.L0db6cffc
    # Line 1720
    addu	$s3,$a1,$s3
    # Line 1695
    and	$at,$s1,$s5
.L0db6cfa0:
    beqz	$at,.L0db6cff4
    addiu	$s4,$s4,-1
    # Line 1709
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s3
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    addiu	$a0,$sp,32
    # Line 1713
    nor	$v1,$s1,$zero
    # Line 1709
    bnez	$v0,.L0db6cf70
    lbu	$a2,0($s0)
    # Line 1713
    ld	$v0,208($sp)
    # Line 1712
    ld	$at,200($sp)
    # Line 1714
    addiu	$s7,$s7,1
    # Line 1713
    and	$v0,$v1,$v0
    # Line 1712
    addu	$at,$a2,$at
    lbu	$at,0($at)
    sd	$v0,208($sp)
    b	.L0db6cf80
    sb	$at,0($s0)
.L0db6cff4:
    b	.L0db6cf80
    # Line 1716
    addiu	$s7,$s7,1
.L0db6cffc:
    ld	$a1,184($sp)
    # Line 1729
    addiu	$a1,$a1,4
    # Line 1733
    ld	$v1,96($sp)
    ld	$at,72($sp)
    sd	$a1,184($sp)
    ld	$v0,136($sp)
    addu	$at,$at,$v1
    # Line 1729
    ld	$v1,208($sp)
    # Line 1733
    sw	$at,0($v0)
    ld	$v0,192($sp)
    sd	$at,72($sp)
    # Line 1729
    and	$v1,$v1,$s5
    # Line 1733
    beqz	$v0,.L0db6ce70
    # Line 1729
    sw	$v1,-4($a1)
.L0db6d034:
    lui	$s1,0x8000
    # Line 1693
    li	$at,-1
    ld	$a1,192($sp)
    # Line 1691
    ld	$v0,176($sp)
    ld	$s3,72($sp)
    # Line 1692
    ld	$s5,184($sp)
    # Line 1682
    move	$s4,$a1
    # Line 1691
    srlv	$s3,$s3,$v0
    ld	$v0,152($sp)
    # Line 1682
    slti	$a1,$a1,33
    bnez	$a1,.L0db6d068
    # Line 1691
    addu	$s3,$s3,$v0
    # Line 1684
    li	$s4,32
.L0db6d068:
    sd	$at,208($sp)
    # Line 1686
    ld	$at,192($sp)
    # Line 1692
    lw	$s5,0($s5)
    # Line 1686
    ld	$v0,144($sp)
    subu	$at,$at,$s4
    # Line 1695
    addiu	$s4,$s4,-1
    sd	$at,192($sp)
    bltz	$s4,.L0db6cffc
    # Line 1686
    sw	$at,0($v0)
    b	.L0db6cfa0
    # Line 1695
    and	$at,$s1,$s5
.L0db6d094:
    ld	$v0,216($sp)
    # Line 1766
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0db6d0a4:
    # Line 1780
    srl	$s1,$s1,0x1
    # Line 1778
    addiu	$s0,$s0,1
    # Line 1776
    addu	$v1,$s6,$a0
    lw	$v1,0($v1)
    # Line 1777
    addiu	$s2,$s2,4
    # Line 1751
    beq	$s4,$s8,.L0db6cda4
    # Line 1776
    addu	$s3,$v1,$s3
.L0db6d0c0:
    # Line 1751
    and	$a1,$s1,$s5
    beqz	$a1,.L0db6d118
    addiu	$s4,$s4,-1
    # Line 1765
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s3
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    addiu	$a0,$sp,32
    # Line 1769
    nor	$v1,$s1,$zero
    # Line 1765
    bnez	$v0,.L0db6d094
    lbu	$a2,0($s0)
    # Line 1769
    ld	$v0,208($sp)
    # Line 1768
    ld	$at,200($sp)
    # Line 1770
    addiu	$s7,$s7,1
    # Line 1769
    and	$v0,$v1,$v0
    # Line 1768
    addu	$at,$a2,$at
    lbu	$at,0($at)
    sd	$v0,208($sp)
    b	.L0db6d0a4
    sb	$at,0($s0)
.L0db6d118:
    b	.L0db6d0a4
    # Line 1772
    addiu	$s7,$s7,1
.L0db6d120:
    # Line 1801
    li	$v0,1
    ld	$gp,120($sp)
    ld	$s0,112($sp)
    ld	$s2,128($sp)
    ld	$s7,104($sp)
    jr	$ra
    addiu	$sp,$sp,304
.end __glDepthTestStencilStippledOffsetSpan

# Function: __glDepthPassSpan
# Declared: Line 1808 (Source lines: 1814-1824)
# Address: 0x0db6d13c - 0x0db6d1f0 (Size: 180 bytes, Frame: 0)
.globl __glDepthPassSpan
.ent __glDepthPassSpan
__glDepthPassSpan:
    # Line 1814
    lw	$a6,30300($a0)
    # Line 1817
    lw	$a3,31244($a0)
    # Line 1816
    lw	$a2,30504($a0)
    andi	$a1,$a6,0x3
    # Line 1819
    blez	$a6,.L0db6d1e8
    addiu	$a5,$a6,-1
    li	$a4,-1
    move	$a7,$a6
    beqz	$a1,.L0db6d188
    move	$t0,$a5
.L0db6d164:
    # Line 1820
    lbu	$at,0($a2)
    # Line 1819
    addiu	$a5,$a5,-1
    # Line 1821
    addiu	$a2,$a2,1
    # Line 1820
    addu	$at,$at,$a3
    lbu	$at,0($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db6d164
    sb	$at,-1($a2)
    move	$t0,$a5
.L0db6d188:
    sra	$v0,$a7,0x2
    beqz	$v0,.L0db6d1e8
    move	$a6,$a2
    move	$a2,$t0
    move	$a1,$a6
.L0db6d19c:
    lbu	$v0,0($a1)
    addu	$v0,$v0,$a3
    lbu	$v0,0($v0)
    lbu	$at,1($a1)
    sb	$v0,0($a1)
    addu	$at,$at,$a3
    lbu	$at,0($at)
    lbu	$a0,2($a1)
    sb	$at,1($a1)
    addu	$a0,$a0,$a3
    lbu	$a0,0($a0)
    lbu	$v1,3($a1)
    # Line 1821
    addiu	$a1,$a1,4
    # Line 1820
    sb	$a0,-2($a1)
    addu	$v1,$v1,$a3
    lbu	$v1,0($v1)
    # Line 1819
    addiu	$a2,$a2,-4
    bne	$a2,$a4,.L0db6d19c
    # Line 1820
    sb	$v1,-1($a1)
.L0db6d1e8:
    # Line 1824
    jr	$ra
    move	$v0,$zero
.end __glDepthPassSpan

# Function: __glDepthPassStippledSpan
# Declared: Line 1830 (Source lines: 1837-1865)
# Address: 0x0db6d1f0 - 0x0db6d2d4 (Size: 228 bytes, Frame: 0)
.globl __glDepthPassStippledSpan
.ent __glDepthPassStippledSpan
__glDepthPassStippledSpan:
    # Line 1837
    lw	$a7,30300($a0)
    # Line 1841
    lw	$a5,31244($a0)
    # Line 1840
    lw	$a2,30504($a0)
    # Line 1841
    beqz	$a7,.L0db6d2cc
    # Line 1838
    lw	$t0,30524($a0)
    # Line 1841
    li	$a6,-1
    b	.L0db6d214
    lui	$t2,0x8000
.L0db6d210:
    # Line 1851
    beqz	$a7,.L0db6d2cc
.L0db6d214:
    # Line 1843
    slti	$at,$a7,33
    bnez	$at,.L0db6d224
    move	$a3,$a7
    # Line 1845
    li	$a3,32
.L0db6d224:
    # Line 1849
    lw	$a4,0($t0)
    # Line 1850
    move	$a1,$t2
    # Line 1847
    subu	$a7,$a7,$a3
    # Line 1851
    addiu	$a3,$a3,-1
    bltz	$a3,.L0db6d210
    # Line 1849
    addiu	$t0,$t0,4
    # Line 1851
    addiu	$t1,$a3,1
    andi	$v0,$t1,0x1
    beqz	$v0,.L0db6d26c
    and	$v1,$a4,$a1
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1851
    beqz	$v1,.L0db6d268
    addiu	$a3,$a3,-1
    # Line 1853
    lbu	$a0,0($a2)
    addu	$a0,$a0,$a5
    lbu	$a0,0($a0)
    sb	$a0,0($a2)
.L0db6d268:
    # Line 1855
    addiu	$a2,$a2,1
.L0db6d26c:
    sra	$at,$t1,0x1
    beqz	$at,.L0db6d210
    nop
    b	.L0db6d28c
    # Line 1851
    and	$v0,$a4,$a1
.L0db6d280:
    beq	$a3,$a6,.L0db6d210
    # Line 1855
    addiu	$a2,$a2,1
    # Line 1851
    and	$v0,$a4,$a1
.L0db6d28c:
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1851
    and	$a0,$a4,$a1
    beqz	$v0,.L0db6d2ac
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1853
    lbu	$v1,0($a2)
    addu	$v1,$v1,$a5
    lbu	$v1,0($v1)
    sb	$v1,0($a2)
.L0db6d2ac:
    # Line 1851
    addiu	$a3,$a3,-2
    beqz	$a0,.L0db6d280
    # Line 1855
    addiu	$a2,$a2,1
    # Line 1853
    lbu	$at,0($a2)
    addu	$at,$at,$a5
    lbu	$at,0($at)
    b	.L0db6d280
    sb	$at,0($a2)
.L0db6d2cc:
    # Line 1865
    jr	$ra
    move	$v0,$zero
.end __glDepthPassStippledSpan

# Function: __glShadeCISpan
# Declared: Line 1870 (Source lines: 1878-1887)
# Address: 0x0db6d2d4 - 0x0db6d354 (Size: 128 bytes, Frame: 0)
.globl __glShadeCISpan
.ent __glShadeCISpan
__glShadeCISpan:
    # Line 1881
    lw	$a2,30300($a0)
    # Line 1880
    lw	$a4,30516($a0)
    # Line 1879
    lwc1	$f5,30336($a0)
    # Line 1881
    addiu	$a2,$a2,-1
    bltz	$a2,.L0db6d348
    # Line 1878
    lwc1	$f4,30260($a0)
    # Line 1881
    addiu	$a1,$a2,1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0db6d30c
    li	$a3,-1
    addiu	$a2,$a2,-1
    # Line 1884
    addiu	$a4,$a4,16
    # Line 1882
    swc1	$f4,-16($a4)
    # Line 1883
    add.s	$f4,$f4,$f5
.L0db6d30c:
    move	$a5,$a2
    mov.s	$f6,$f4
    move	$a6,$a4
    sra	$at,$a1,0x1
    beqz	$at,.L0db6d348
    move	$a1,$a6
    move	$a2,$a5
    mov.s	$f4,$f6
.L0db6d32c:
    add.s	$f0,$f4,$f5
    # Line 1884
    addiu	$a1,$a1,32
    # Line 1881
    addiu	$a2,$a2,-2
    # Line 1882
    swc1	$f4,-32($a1)
    # Line 1883
    add.s	$f4,$f0,$f5
    # Line 1881
    bne	$a2,$a3,.L0db6d32c
    # Line 1882
    swc1	$f0,-16($a1)
.L0db6d348:
    # Line 1887
    move	$v0,$zero
    jr	$ra
    nop
.end __glShadeCISpan

# Function: __glShadeRGBASpan
# Declared: Line 1890 (Source lines: 1899-1920)
# Address: 0x0db6d354 - 0x0db6d3c0 (Size: 108 bytes, Frame: 0)
.globl __glShadeRGBASpan
.ent __glShadeRGBASpan
__glShadeRGBASpan:
    # Line 1907
    lw	$a3,30516($a0)
    # Line 1906
    lwc1	$f10,30348($a0)
    # Line 1905
    lwc1	$f11,30344($a0)
    # Line 1904
    lwc1	$f8,30340($a0)
    # Line 1903
    lwc1	$f9,30336($a0)
    # Line 1902
    lwc1	$f5,30272($a0)
    # Line 1908
    lw	$a2,30300($a0)
    # Line 1901
    lwc1	$f6,30268($a0)
    # Line 1900
    lwc1	$f7,30264($a0)
    # Line 1908
    addiu	$a2,$a2,-1
    bltz	$a2,.L0db6d3b4
    # Line 1899
    lwc1	$f4,30260($a0)
    # Line 1908
    li	$a1,-1
.L0db6d388:
    # Line 1912
    swc1	$f5,12($a3)
    # Line 1916
    add.s	$f5,$f5,$f10
    # Line 1911
    swc1	$f6,8($a3)
    # Line 1915
    add.s	$f6,$f6,$f11
    # Line 1917
    addiu	$a3,$a3,16
    # Line 1910
    swc1	$f7,-12($a3)
    # Line 1914
    add.s	$f7,$f7,$f8
    # Line 1909
    swc1	$f4,-16($a3)
    # Line 1908
    addiu	$a2,$a2,-1
    bne	$a2,$a1,.L0db6d388
    # Line 1913
    add.s	$f4,$f4,$f9
.L0db6d3b4:
    # Line 1920
    move	$v0,$zero
    jr	$ra
    nop
.end __glShadeRGBASpan

# Function: __glFlatCISpan
# Declared: Line 1923 (Source lines: 1931-1938)
# Address: 0x0db6d3c0 - 0x0db6d43c (Size: 124 bytes, Frame: 0)
.globl __glFlatCISpan
.ent __glFlatCISpan
__glFlatCISpan:
    # Line 1933
    lw	$a2,30300($a0)
    # Line 1932
    lw	$a4,30516($a0)
    # Line 1933
    li	$a3,-1
    addiu	$a2,$a2,-1
    bltz	$a2,.L0db6d430
    # Line 1931
    lwc1	$f4,30260($a0)
    # Line 1933
    addiu	$a5,$a2,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db6d400
    sra	$at,$a5,0x2
.L0db6d3e8:
    addiu	$a2,$a2,-1
    # Line 1935
    addiu	$a4,$a4,16
    addi	$a1,$a1,-1
    bnez	$a1,.L0db6d3e8
    # Line 1934
    swc1	$f4,-16($a4)
    sra	$at,$a5,0x2
.L0db6d400:
    move	$a7,$a2
    beqz	$at,.L0db6d430
    move	$a6,$a4
    move	$a2,$a7
    move	$a1,$a6
.L0db6d414:
    # Line 1935
    addiu	$a1,$a1,64
    # Line 1934
    swc1	$f4,-16($a1)
    swc1	$f4,-32($a1)
    swc1	$f4,-48($a1)
    # Line 1933
    addiu	$a2,$a2,-4
    bne	$a2,$a3,.L0db6d414
    # Line 1934
    swc1	$f4,-64($a1)
.L0db6d430:
    # Line 1938
    move	$v0,$zero
    jr	$ra
    nop
.end __glFlatCISpan

# Function: __glFlatRGBASpan
# Declared: Line 1941 (Source lines: 1949-1962)
# Address: 0x0db6d43c - 0x0db6d500 (Size: 196 bytes, Frame: 0)
.globl __glFlatRGBASpan
.ent __glFlatRGBASpan
__glFlatRGBASpan:
    # Line 1953
    lw	$a4,30516($a0)
    # Line 1952
    lwc1	$f6,30272($a0)
    # Line 1951
    lwc1	$f7,30268($a0)
    # Line 1954
    lw	$a2,30300($a0)
    # Line 1950
    lwc1	$f4,30264($a0)
    # Line 1954
    li	$a3,-1
    addiu	$a2,$a2,-1
    bltz	$a2,.L0db6d4f4
    # Line 1949
    lwc1	$f5,30260($a0)
    # Line 1954
    addiu	$a5,$a2,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db6d494
    sra	$at,$a5,0x2
.L0db6d470:
    addiu	$a2,$a2,-1
    # Line 1959
    addiu	$a4,$a4,16
    # Line 1958
    swc1	$f6,-4($a4)
    # Line 1957
    swc1	$f7,-8($a4)
    # Line 1956
    swc1	$f4,-12($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db6d470
    # Line 1955
    swc1	$f5,-16($a4)
    sra	$at,$a5,0x2
.L0db6d494:
    move	$a7,$a2
    beqz	$at,.L0db6d4f4
    move	$a6,$a4
    move	$a2,$a7
    move	$a1,$a6
.L0db6d4a8:
    # Line 1959
    addiu	$a1,$a1,64
    # Line 1958
    swc1	$f6,-4($a1)
    # Line 1957
    swc1	$f7,-8($a1)
    # Line 1956
    swc1	$f4,-12($a1)
    # Line 1955
    swc1	$f5,-16($a1)
    # Line 1958
    swc1	$f6,-20($a1)
    # Line 1957
    swc1	$f7,-24($a1)
    # Line 1956
    swc1	$f4,-28($a1)
    # Line 1955
    swc1	$f5,-32($a1)
    # Line 1958
    swc1	$f6,-36($a1)
    # Line 1957
    swc1	$f7,-40($a1)
    # Line 1956
    swc1	$f4,-44($a1)
    # Line 1955
    swc1	$f5,-48($a1)
    # Line 1958
    swc1	$f6,-52($a1)
    # Line 1957
    swc1	$f7,-56($a1)
    # Line 1956
    swc1	$f4,-60($a1)
    # Line 1954
    addiu	$a2,$a2,-4
    bne	$a2,$a3,.L0db6d4a8
    # Line 1955
    swc1	$f5,-64($a1)
.L0db6d4f4:
    # Line 1962
    move	$v0,$zero
    jr	$ra
    nop
.end __glFlatRGBASpan

# Function: __glTextureSpan
# Declared: Line 1967 (Source lines: 1968-1999)
# Address: 0x0db6d500 - 0x0db6d6cc (Size: 460 bytes, Frame: 240)
.globl __glTextureSpan
.ent __glTextureSpan
__glTextureSpan:
    # Line 1968
    addiu	$sp,$sp,-112
    sd	$s3,88($sp)
    sd	$s1,56($sp)
    move	$s1,$a0
    sdc1	$f30,32($sp)
    # Line 1982
    lwc1	$f30,30292($a0)
    sdc1	$f22,8($sp)
    # Line 1981
    lwc1	$f22,30288($a0)
    sdc1	$f24,16($sp)
    # Line 1980
    lwc1	$f24,30284($a0)
    sdc1	$f26,0($sp)
    # Line 1979
    lwc1	$f26,30280($a0)
    sdc1	$f28,24($sp)
    # Line 1978
    lwc1	$f28,30276($a0)
    sd	$s0,48($sp)
    # Line 1976
    lw	$s0,30516($a0)
    sd	$gp,64($sp)
    sd	$s2,40($sp)
    # Line 1984
    lw	$s2,30300($a0)
    # Line 1968
    lui	$at,0x9
    addiu	$at,$at,4504
    # Line 1984
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db6d69c
    # Line 1968
    addu	$gp,$t9,$at
    # Line 1984
    addiu	$a0,$s2,1
    andi	$v0,$a0,0x1
    beqz	$v0,.L0db6d5d8
    li	$s3,-1
    # Line 1985
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    sd	$a0,72($sp)
    # Line 1990
    mul.s	$f17,$f30,$f14
    move	$a0,$s1
    move	$a1,$s0
    mul.s	$f16,$f24,$f14
    # Line 1996
    addiu	$s0,$s0,16
    # Line 1990
    lw	$t9,12584($s1)
    mul.s	$f15,$f26,$f14
    sd	$ra,80($sp)
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 1994
    lwc1	$f3,30444($s1)
    # Line 1993
    lwc1	$f2,30440($s1)
    # Line 1994
    add.s	$f22,$f3,$f22
    # Line 1992
    lwc1	$f1,30436($s1)
    # Line 1993
    add.s	$f24,$f2,$f24
    # Line 1992
    add.s	$f26,$f1,$f26
    # Line 1995
    lwc1	$f0,30448($s1)
    # Line 1984
    addiu	$s2,$s2,-1
    # Line 1995
    add.s	$f30,$f0,$f30
    # Line 1991
    lwc1	$f0,30432($s1)
    ld	$a0,72($sp)
    ld	$ra,80($sp)
    add.s	$f28,$f0,$f28
.L0db6d5d8:
    sra	$v1,$a0,0x1
    beqz	$v1,.L0db6d694
    sd	$ra,80($sp)
.L0db6d5e4:
    # Line 1985
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 1990
    mul.s	$f17,$f30,$f14
    move	$a0,$s1
    # Line 1984
    addiu	$s2,$s2,-2
    # Line 1990
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12584($s1)
    mul.s	$f15,$f26,$f14
    # Line 1996
    addiu	$s0,$s0,16
    # Line 1990
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 1994
    lwc1	$f15,30444($s1)
    add.s	$f22,$f15,$f22
    # Line 1985
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 1995
    lwc1	$f18,30448($s1)
    # Line 1993
    lwc1	$f17,30440($s1)
    # Line 1995
    add.s	$f30,$f18,$f30
    # Line 1990
    move	$a0,$s1
    # Line 1992
    lwc1	$f16,30436($s1)
    # Line 1993
    add.s	$f24,$f17,$f24
    # Line 1990
    move	$a1,$s0
    mul.s	$f17,$f30,$f14
    # Line 1992
    add.s	$f26,$f16,$f26
    # Line 1991
    lwc1	$f15,30432($s1)
    # Line 1990
    mul.s	$f16,$f24,$f14
    lw	$t9,12584($s1)
    # Line 1991
    add.s	$f28,$f15,$f28
    # Line 1990
    mul.s	$f15,$f26,$f14
    # Line 1996
    addiu	$s0,$s0,16
    # Line 1990
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 1994
    lwc1	$f3,30444($s1)
    # Line 1993
    lwc1	$f2,30440($s1)
    # Line 1994
    add.s	$f22,$f3,$f22
    # Line 1992
    lwc1	$f1,30436($s1)
    # Line 1993
    add.s	$f24,$f2,$f24
    # Line 1992
    add.s	$f26,$f1,$f26
    # Line 1995
    lwc1	$f0,30448($s1)
    add.s	$f30,$f0,$f30
    # Line 1991
    lwc1	$f0,30432($s1)
    # Line 1984
    bne	$s2,$s3,.L0db6d5e4
    # Line 1991
    add.s	$f28,$f0,$f28
.L0db6d694:
    ld	$ra,80($sp)
    ld	$s3,88($sp)
.L0db6d69c:
    # Line 1999
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s2,40($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,16($sp)
    ldc1	$f26,0($sp)
    ldc1	$f28,24($sp)
    ldc1	$f30,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glTextureSpan

# Function: __glTextureStippledSpan
# Declared: Line 2002 (Source lines: 2003-2053)
# Address: 0x0db6d6cc - 0x0db6d930 (Size: 612 bytes, Frame: 144)
.globl __glTextureStippledSpan
.ent __glTextureStippledSpan
__glTextureStippledSpan:
    # Line 2003
    addiu	$sp,$sp,-144
    sd	$s2,40($sp)
    sd	$s3,48($sp)
    sd	$s4,64($sp)
    sd	$s5,80($sp)
    sd	$s8,72($sp)
    sd	$ra,56($sp)
    sd	$s1,104($sp)
    move	$s1,$a0
    sdc1	$f30,0($sp)
    # Line 2019
    lwc1	$f30,30292($a0)
    sdc1	$f22,24($sp)
    # Line 2018
    lwc1	$f22,30288($a0)
    sdc1	$f24,16($sp)
    # Line 2017
    lwc1	$f24,30284($a0)
    sdc1	$f26,32($sp)
    # Line 2016
    lwc1	$f26,30280($a0)
    sdc1	$f28,8($sp)
    # Line 2015
    lwc1	$f28,30276($a0)
    sd	$s7,88($sp)
    # Line 2013
    lw	$s7,30524($a0)
    sd	$s0,112($sp)
    # Line 2012
    lw	$s0,30516($a0)
    sd	$gp,96($sp)
    sd	$s6,120($sp)
    # Line 2011
    lw	$s6,30300($a0)
    # Line 2003
    lui	$at,0x9
    addiu	$at,$at,4044
    # Line 2019
    beqz	$s6,.L0db6d8e4
    # Line 2003
    addu	$gp,$t9,$at
    sd	$s2,40($sp)
    sd	$s3,48($sp)
    sd	$ra,56($sp)
    sd	$s4,64($sp)
    sd	$s8,72($sp)
    b	.L0db6d764
    # Line 2019
    li	$s5,-1
.L0db6d760:
    # Line 2030
    beqz	$s6,.L0db6d8e4
.L0db6d764:
    # Line 2022
    slti	$v0,$s6,33
    bnez	$v0,.L0db6d774
    move	$s3,$s6
    # Line 2024
    li	$s3,32
.L0db6d774:
    # Line 2028
    lw	$s4,0($s7)
    lui	$s2,0x8000
    # Line 2026
    subu	$s6,$s6,$s3
    # Line 2030
    addiu	$s3,$s3,-1
    bltz	$s3,.L0db6d760
    # Line 2028
    addiu	$s7,$s7,4
    # Line 2030
    addiu	$s8,$s3,1
    andi	$v1,$s8,0x1
    beqz	$v1,.L0db6d7fc
    and	$a2,$s4,$s2
    beqz	$a2,.L0db6d7cc
    # Line 2046
    srl	$s2,$s2,0x1
    # Line 2032
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 2037
    mul.s	$f17,$f30,$f14
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12584($s1)
    mul.s	$f15,$f26,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f28,$f14
.L0db6d7cc:
    # Line 2042
    lwc1	$f3,30444($s1)
    # Line 2041
    lwc1	$f2,30440($s1)
    # Line 2042
    add.s	$f22,$f3,$f22
    # Line 2040
    lwc1	$f1,30436($s1)
    # Line 2041
    add.s	$f24,$f2,$f24
    # Line 2040
    add.s	$f26,$f1,$f26
    # Line 2043
    lwc1	$f0,30448($s1)
    add.s	$f30,$f0,$f30
    # Line 2039
    lwc1	$f0,30432($s1)
    # Line 2030
    addiu	$s3,$s3,-1
    # Line 2044
    addiu	$s0,$s0,16
    # Line 2039
    add.s	$f28,$f0,$f28
.L0db6d7fc:
    sra	$at,$s8,0x1
    beqz	$at,.L0db6d760
    nop
    b	.L0db6d848
    # Line 2030
    and	$v0,$s4,$s2
.L0db6d810:
    # Line 2042
    lwc1	$f0,30444($s1)
.L0db6d814:
    # Line 2041
    lwc1	$f3,30440($s1)
    # Line 2042
    add.s	$f22,$f0,$f22
    # Line 2040
    lwc1	$f2,30436($s1)
    # Line 2041
    add.s	$f24,$f3,$f24
    # Line 2040
    add.s	$f26,$f2,$f26
    # Line 2043
    lwc1	$f1,30448($s1)
    # Line 2044
    addiu	$s0,$s0,16
    # Line 2043
    add.s	$f30,$f1,$f30
    # Line 2039
    lwc1	$f1,30432($s1)
    # Line 2030
    addiu	$s3,$s3,-2
    beq	$s3,$s5,.L0db6d760
    # Line 2039
    add.s	$f28,$f1,$f28
    # Line 2030
    and	$v0,$s4,$s2
.L0db6d848:
    beqzl	$v0,.L0db6d87c
    # Line 2042
    lwc1	$f3,30444($s1)
    # Line 2032
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 2037
    mul.s	$f17,$f30,$f14
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12584($s1)
    mul.s	$f15,$f26,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 2042
    lwc1	$f3,30444($s1)
.L0db6d87c:
    # Line 2041
    lwc1	$f2,30440($s1)
    # Line 2042
    add.s	$f22,$f3,$f22
    # Line 2040
    lwc1	$f1,30436($s1)
    # Line 2041
    add.s	$f24,$f2,$f24
    # Line 2044
    addiu	$s0,$s0,16
    # Line 2040
    add.s	$f26,$f1,$f26
    # Line 2043
    lwc1	$f0,30448($s1)
    # Line 2046
    srl	$s2,$s2,0x1
    # Line 2030
    and	$v1,$s4,$s2
    # Line 2043
    add.s	$f30,$f0,$f30
    # Line 2039
    lwc1	$f0,30432($s1)
    # Line 2046
    srl	$s2,$s2,0x1
    # Line 2030
    beqz	$v1,.L0db6d810
    # Line 2039
    add.s	$f28,$f0,$f28
    # Line 2032
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 2037
    mul.s	$f17,$f30,$f14
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12584($s1)
    mul.s	$f15,$f26,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f28,$f14
    b	.L0db6d814
    # Line 2042
    lwc1	$f0,30444($s1)
.L0db6d8e4:
    # Line 2053
    move	$v0,$zero
    ld	$gp,96($sp)
    ld	$s0,112($sp)
    ld	$s1,104($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,64($sp)
    ld	$s5,80($sp)
    ld	$s6,120($sp)
    ld	$s7,88($sp)
    ld	$s8,72($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,16($sp)
    ldc1	$f26,32($sp)
    ld	$ra,56($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glTextureStippledSpan

# Function: __glDitherCISpan
# Declared: Line 2061 (Source lines: 2062-2084)
# Address: 0x0db6d930 - 0x0db6daa4 (Size: 372 bytes, Frame: 0)
.globl __glDitherCISpan
.ent __glDitherCISpan
__glDitherCISpan:
    # Line 2072
    lw	$a5,30516($a0)
    # Line 2073
    li	$t2,-1
    # Line 2069
    lw	$a3,30248($a0)
    # Line 2073
    lw	$a7,30300($a0)
    # Line 2071
    li	$a6,1
    # Line 2070
    lw	$a4,30252($a0)
    # Line 2073
    addiu	$a7,$a7,-1
    # Line 2062
    lui	$v0,0x9
    addiu	$v0,$v0,3432
    addu	$at,$t9,$v0
    # Line 2071
    lw	$t9,3136($a0)
    # Line 2073
    andi	$t0,$a4,0x3
    sll	$t0,$t0,0x2
    # Line 2071
    sllv	$a6,$a6,$t9
    # Line 2073
    bltz	$a7,.L0db6d9e8
    # Line 2071
    addiu	$a6,$a6,-1
    # Line 2073
    lwc1	$f4,_lit_41800000
    addiu	$t3,$a7,1
    andi	$v0,$t3,0x1
    beqz	$v0,.L0db6d9dc
    la	$t1,__glDitherTable
    # Line 2076
    lwc1	$f1,0($a5)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    andi	$a4,$a3,0x3
    trunc.w.s	$f0,$f0
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$t1
    lb	$a4,0($a4)
    mfc1	$v0,$f0
    # Line 2081
    addiu	$a3,$a3,1
    # Line 2076
    addu	$a4,$a4,$v0
    sra	$a4,$a4,0x4
    slt	$v1,$a6,$a4
    beqz	$v1,.L0db6d9c8
    # Line 2073
    addiu	$a7,$a7,-1
    # Line 2078
    move	$a4,$a6
.L0db6d9c8:
    # Line 2080
    addiu	$a5,$a5,16
    # Line 2079
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-16($a5)
.L0db6d9dc:
    sra	$v0,$t3,0x1
    bnezl	$v0,.L0db6da60
    # Line 2076
    lwc1	$f0,0($a5)
.L0db6d9e8:
    # Line 2084
    jr	$ra
    move	$v0,$zero
.L0db6d9f0:
    # Line 2079
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 2076
    lwc1	$f0,16($a5)
    mul.s	$f0,$f0,$f4
    # Line 2079
    swc1	$f1,0($a5)
    # Line 2076
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    andi	$a4,$a3,0x3
    trunc.w.s	$f3,$f3
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$t1
    lb	$a4,0($a4)
    mfc1	$v0,$f3
    # Line 2080
    addiu	$a5,$a5,32
    # Line 2076
    addu	$a4,$a4,$v0
    sra	$a4,$a4,0x4
    slt	$v1,$a6,$a4
    beqz	$v1,.L0db6da44
    # Line 2081
    addiu	$a3,$a3,1
    # Line 2078
    move	$a4,$a6
.L0db6da44:
    # Line 2073
    addiu	$a7,$a7,-2
    # Line 2079
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2073
    beq	$a7,$t2,.L0db6d9e8
    # Line 2079
    swc1	$f2,-16($a5)
    # Line 2076
    lwc1	$f0,0($a5)
.L0db6da60:
    mul.s	$f0,$f0,$f4
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    andi	$a4,$a3,0x3
    trunc.w.s	$f3,$f3
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$t1
    lb	$a4,0($a4)
    mfc1	$v0,$f3
    nop
    addu	$a4,$a4,$v0
    sra	$a4,$a4,0x4
    slt	$v0,$a6,$a4
    beqz	$v0,.L0db6d9f0
    # Line 2081
    addiu	$a3,$a3,1
    b	.L0db6d9f0
    # Line 2078
    move	$a4,$a6
.end __glDitherCISpan

# Function: __glDitherCIStippledSpan
# Declared: Line 2090 (Source lines: 2091-2132)
# Address: 0x0db6daa4 - 0x0db6dccc (Size: 552 bytes, Frame: 192)
.globl __glDitherCIStippledSpan
.ent __glDitherCIStippledSpan
__glDitherCIStippledSpan:
    # Line 2103
    lw	$a3,30516($a0)
    # Line 2101
    lw	$a6,30252($a0)
    # Line 2100
    lw	$a4,30248($a0)
    # Line 2102
    li	$a7,1
    # Line 2098
    lw	$v0,30524($a0)
    # Line 2091
    addiu	$sp,$sp,-64
    sd	$s8,16($sp)
    lui	$s8,0x9
    addiu	$s8,$s8,3060
    addu	$at,$t9,$s8
    # Line 2102
    lw	$t9,3136($a0)
    # Line 2097
    lw	$s8,30300($a0)
    sd	$v0,24($sp)
    # Line 2102
    sllv	$a7,$a7,$t9
    # Line 2103
    beqz	$s8,.L0db6dcbc
    # Line 2102
    addiu	$a7,$a7,-1
    # Line 2103
    la	$t3,__glDitherTable
    li	$t8,-1
    lwc1	$f4,_lit_41800000
    ld	$t9,24($sp)
    andi	$t2,$a6,0x3
    b	.L0db6db14
    sll	$t2,$t2,0x2
.L0db6db00:
    ld	$v0,8($sp)
.L0db6db04:
    # Line 2113
    ld	$a4,0($sp)
    addu	$a4,$a4,$v0
    addiu	$a4,$a4,1
.L0db6db10:
    beqz	$s8,.L0db6dcbc
.L0db6db14:
    # Line 2105
    slti	$v1,$s8,33
    bnez	$v1,.L0db6db24
    move	$t0,$s8
    # Line 2107
    li	$t0,32
.L0db6db24:
    # Line 2111
    addiu	$t9,$t9,4
    lw	$t1,-4($t9)
    lui	$a5,0x8000
    # Line 2109
    subu	$s8,$s8,$t0
    # Line 2113
    addiu	$t0,$t0,-1
    bltz	$t0,.L0db6db10
    move	$a6,$t0
    move	$a2,$a4
    sd	$t0,0($sp)
    addiu	$a6,$t0,1
    andi	$a1,$a6,0x1
    beqz	$a1,.L0db6dbcc
    sd	$a4,8($sp)
    and	$v0,$t1,$a5
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2113
    beqz	$v0,.L0db6dbc4
    addiu	$t0,$t0,-1
    # Line 2117
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    sd	$a6,32($sp)
    andi	$a6,$a4,0x3
    trunc.w.s	$f0,$f0
    addu	$a6,$a6,$t2
    addu	$a6,$a6,$t3
    lb	$a6,0($a6)
    mfc1	$v0,$f0
    nop
    addu	$a6,$a6,$v0
    sra	$a6,$a6,0x4
    slt	$v1,$a7,$a6
    beqz	$v1,.L0db6dbb0
    nop
    # Line 2119
    move	$a6,$a7
.L0db6dbb0:
    # Line 2120
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$a6,32($sp)
    swc1	$f2,0($a3)
.L0db6dbc4:
    # Line 2123
    addiu	$a4,$a4,1
    # Line 2122
    addiu	$a3,$a3,16
.L0db6dbcc:
    sra	$v0,$a6,0x1
    beqz	$v0,.L0db6db04
    ld	$v0,8($sp)
    b	.L0db6dc6c
    # Line 2117
    andi	$a6,$a4,0x3
.L0db6dbe0:
    # Line 2120
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a3)
.L0db6dbf0:
    # Line 2113
    addiu	$t0,$t0,-2
    # Line 2122
    addiu	$a3,$a3,16
    # Line 2123
    addiu	$a4,$a4,1
    # Line 2113
    and	$v1,$t1,$a5
    beqz	$v1,.L0db6dc5c
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2117
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    andi	$a6,$a4,0x3
    trunc.w.s	$f0,$f0
    addu	$a6,$a6,$t2
    addu	$a6,$a6,$t3
    lb	$a6,0($a6)
    mfc1	$v0,$f0
    nop
    addu	$a6,$a6,$v0
    sra	$a6,$a6,0x4
    slt	$a1,$a7,$a6
    beqz	$a1,.L0db6dc4c
    nop
    # Line 2119
    move	$a6,$a7
.L0db6dc4c:
    # Line 2120
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a3)
.L0db6dc5c:
    # Line 2123
    addiu	$a4,$a4,1
    # Line 2113
    beq	$t0,$t8,.L0db6db00
    # Line 2122
    addiu	$a3,$a3,16
    # Line 2117
    andi	$a6,$a4,0x3
.L0db6dc6c:
    # Line 2113
    and	$v0,$t1,$a5
    beqz	$v0,.L0db6dbf0
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2117
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    addu	$a6,$a6,$t2
    addu	$a6,$a6,$t3
    lb	$a6,0($a6)
    mfc1	$v0,$f3
    nop
    addu	$a6,$a6,$v0
    sra	$a6,$a6,0x4
    slt	$v1,$a7,$a6
    beqz	$v1,.L0db6dbe0
    nop
    b	.L0db6dbe0
    # Line 2119
    move	$a6,$a7
.L0db6dcbc:
    # Line 2132
    move	$v0,$zero
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDitherCIStippledSpan

# Function: __glDitherRGBASpan
# Declared: Line 2139 (Source lines: 2140-2186)
# Address: 0x0db6dccc - 0x0db6de4c (Size: 384 bytes, Frame: 0)
.globl __glDitherRGBASpan
.ent __glDitherRGBASpan
__glDitherRGBASpan:
    # Line 2154
    lw	$a3,30516($a0)
    # Line 2153
    lw	$t8,30848($a0)
    # Line 2152
    lw	$t3,30824($a0)
    # Line 2151
    lw	$t2,30820($a0)
    # Line 2150
    lw	$t1,30816($a0)
    # Line 2149
    lw	$a4,30252($a0)
    # Line 2148
    lw	$a5,30248($a0)
    # Line 2155
    lw	$t0,30300($a0)
    # Line 2140
    lui	$v0,0x9
    addiu	$v0,$v0,2508
    # Line 2155
    addiu	$t0,$t0,-1
    bltz	$t0,.L0db6de44
    # Line 2140
    addu	$at,$t9,$v0
    # Line 2155
    lwc1	$f4,_lit_41800000
    andi	$t9,$a4,0x3
    b	.L0db6dd2c
    sll	$t9,$t9,0x2
.L0db6dd10:
    # Line 2180
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2183
    addiu	$a5,$a5,1
    li	$v0,-1
    # Line 2155
    beq	$t0,$v0,.L0db6de44
    # Line 2180
    swc1	$f0,-4($a3)
.L0db6dd2c:
    # Line 2162
    lwc1	$f2,0($a3)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    # Line 2161
    andi	$a4,$a5,0x3
    la	$a7,__glDitherTable
    # Line 2162
    trunc.w.s	$f1,$f1
    # Line 2161
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$a7
    lb	$a4,0($a4)
    # Line 2162
    mfc1	$a6,$f1
    nop
    addu	$a6,$a6,$a4
    sra	$a6,$a6,0x4
    slt	$v1,$t1,$a6
    beqz	$v1,.L0db6dd74
    nop
    # Line 2164
    move	$a6,$t1
.L0db6dd74:
    # Line 2165
    mtc1	$a6,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 2167
    lwc1	$f0,4($a3)
    mul.s	$f0,$f0,$f4
    # Line 2165
    swc1	$f1,0($a3)
    # Line 2167
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    nop
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v0,$t2,$a7
    beqz	$v0,.L0db6ddb8
    nop
    # Line 2169
    move	$a7,$t2
.L0db6ddb8:
    # Line 2170
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2172
    lwc1	$f3,8($a3)
    mul.s	$f3,$f3,$f4
    # Line 2170
    swc1	$f0,4($a3)
    # Line 2172
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    nop
    addu	$a6,$a6,$a4
    sra	$a6,$a6,0x4
    slt	$v0,$t3,$a6
    beqz	$v0,.L0db6ddfc
    nop
    # Line 2174
    move	$a6,$t3
.L0db6ddfc:
    # Line 2175
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 2177
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f4
    # Line 2175
    swc1	$f3,8($a3)
    # Line 2177
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a7,$f1
    # Line 2155
    addiu	$t0,$t0,-1
    # Line 2177
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v0,$t8,$a7
    beqz	$v0,.L0db6dd10
    # Line 2182
    addiu	$a3,$a3,16
    b	.L0db6dd10
    # Line 2179
    move	$a7,$t8
.L0db6de44:
    # Line 2186
    jr	$ra
    move	$v0,$zero
.end __glDitherRGBASpan

# Function: __glDitherRGBAStippledSpan
# Declared: Line 2193 (Source lines: 2194-2258)
# Address: 0x0db6de4c - 0x0db6e06c (Size: 544 bytes, Frame: 208)
.globl __glDitherRGBAStippledSpan
.ent __glDitherRGBAStippledSpan
__glDitherRGBAStippledSpan:
    # Line 2210
    lw	$a3,30516($a0)
    # Line 2209
    lw	$t8,30848($a0)
    # Line 2208
    lw	$t3,30824($a0)
    # Line 2207
    lw	$t2,30820($a0)
    # Line 2205
    lw	$a4,30252($a0)
    # Line 2204
    lw	$a6,30248($a0)
    # Line 2194
    addiu	$sp,$sp,-80
    sd	$s2,56($sp)
    sd	$s6,48($sp)
    sd	$gp,40($sp)
    sd	$s1,16($sp)
    # Line 2206
    lw	$s1,30816($a0)
    # Line 2194
    lui	$v0,0x9
    addiu	$v0,$v0,2124
    sd	$s8,0($sp)
    # Line 2201
    lw	$s8,30300($a0)
    # Line 2202
    lw	$v1,30524($a0)
    # Line 2194
    addu	$at,$t9,$v0
    # Line 2210
    beqz	$s8,.L0db6e058
    sd	$v1,8($sp)
    la	$gp,__glDitherTable
    li	$s6,-1
    lwc1	$f4,_lit_41800000
    andi	$s2,$a4,0x3
    b	.L0db6dec8
    sll	$s2,$s2,0x2
.L0db6deb4:
    ld	$v0,24($sp)
    # Line 2220
    ld	$a6,32($sp)
    addu	$a6,$a6,$v0
    addiu	$a6,$a6,1
.L0db6dec4:
    beqz	$s8,.L0db6e04c
.L0db6dec8:
    # Line 2218
    ld	$a1,8($sp)
    # Line 2212
    slti	$v1,$s8,33
    bnez	$v1,.L0db6dedc
    move	$t1,$s8
    # Line 2214
    li	$t1,32
.L0db6dedc:
    lui	$a5,0x8000
    # Line 2218
    lw	$t9,0($a1)
    # Line 2220
    move	$a2,$a6
    # Line 2218
    addiu	$a1,$a1,4
    # Line 2216
    subu	$s8,$s8,$t1
    # Line 2220
    addiu	$t1,$t1,-1
    bltz	$t1,.L0db6dec4
    sd	$a1,8($sp)
    move	$v0,$t1
    sd	$t1,32($sp)
    b	.L0db6dff4
    sd	$a6,24($sp)
.L0db6df0c:
    # Line 2231
    mtc1	$a7,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2233
    lwc1	$f1,4($a3)
    mul.s	$f1,$f1,$f4
    # Line 2231
    swc1	$f2,0($a3)
    # Line 2233
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f0
    nop
    addu	$t0,$t0,$a4
    sra	$t0,$t0,0x4
    slt	$v1,$t2,$t0
    beqz	$v1,.L0db6df50
    nop
    # Line 2235
    move	$t0,$t2
.L0db6df50:
    # Line 2236
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 2238
    lwc1	$f0,8($a3)
    mul.s	$f0,$f0,$f4
    # Line 2236
    swc1	$f1,4($a3)
    # Line 2238
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    nop
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v0,$t3,$a7
    beqz	$v0,.L0db6df94
    nop
    # Line 2240
    move	$a7,$t3
.L0db6df94:
    # Line 2241
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2243
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f4
    # Line 2241
    swc1	$f0,8($a3)
    # Line 2243
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$t0,$f2
    nop
    addu	$t0,$t0,$a4
    sra	$t0,$t0,0x4
    slt	$v0,$t8,$t0
    beqz	$v0,.L0db6dfd8
    nop
    # Line 2245
    move	$t0,$t8
.L0db6dfd8:
    # Line 2246
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,12($a3)
.L0db6dfe8:
    # Line 2249
    addiu	$a6,$a6,1
    # Line 2220
    beq	$t1,$s6,.L0db6deb4
    # Line 2248
    addiu	$a3,$a3,16
.L0db6dff4:
    # Line 2220
    addiu	$t1,$t1,-1
    and	$v0,$t9,$a5
    beqz	$v0,.L0db6dfe8
    # Line 2251
    srl	$a5,$a5,0x1
    # Line 2228
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    # Line 2227
    andi	$a4,$a6,0x3
    # Line 2228
    trunc.w.s	$f2,$f2
    # Line 2227
    addu	$a4,$a4,$s2
    addu	$a4,$a4,$gp
    lb	$a4,0($a4)
    # Line 2228
    mfc1	$a7,$f2
    nop
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v1,$s1,$a7
    beqz	$v1,.L0db6df0c
    nop
    b	.L0db6df0c
    # Line 2230
    move	$a7,$s1
.L0db6e04c:
    ld	$gp,40($sp)
    ld	$s6,48($sp)
    ld	$s2,56($sp)
.L0db6e058:
    # Line 2258
    move	$v0,$zero
    ld	$s1,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDitherRGBAStippledSpan

# Function: __glRoundCISpan
# Declared: Line 2264 (Source lines: 2272-2282)
# Address: 0x0db6e06c - 0x0db6e160 (Size: 244 bytes, Frame: 0)
.globl __glRoundCISpan
.ent __glRoundCISpan
__glRoundCISpan:
    # Line 2273
    lw	$a3,30516($a0)
    # Line 2272
    lw	$at,3136($a0)
    # Line 2274
    lw	$a5,30300($a0)
    # Line 2272
    li	$a4,1
    sllv	$a4,$a4,$at
    # Line 2274
    addiu	$a5,$a5,-1
    bltz	$a5,.L0db6e0e0
    # Line 2272
    addiu	$a4,$a4,-1
    # Line 2274
    addiu	$a7,$a5,1
    andi	$a6,$a7,0x1
    beqz	$a6,.L0db6e0d4
    li	$a6,-1
    # Line 2275
    lwc1	$f1,3280($a0)
    lwc1	$f0,0($a3)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    # Line 2278
    addiu	$a3,$a3,16
    # Line 2275
    slt	$at,$a4,$a2
    beqz	$at,.L0db6e0c4
    # Line 2274
    addiu	$a5,$a5,-1
    # Line 2276
    move	$a2,$a4
.L0db6e0c4:
    # Line 2277
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-16($a3)
.L0db6e0d4:
    sra	$v0,$a7,0x1
    bnezl	$v0,.L0db6e138
    # Line 2275
    lwc1	$f0,3280($a0)
.L0db6e0e0:
    # Line 2282
    jr	$ra
    move	$v0,$zero
.L0db6e0e8:
    # Line 2277
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a3)
    # Line 2275
    lwc1	$f3,16($a3)
    lwc1	$f0,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a2,$f3
    # Line 2274
    addiu	$a5,$a5,-2
    # Line 2275
    slt	$v1,$a4,$a2
    beqz	$v1,.L0db6e120
    # Line 2278
    addiu	$a3,$a3,32
    # Line 2276
    move	$a2,$a4
.L0db6e120:
    # Line 2277
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2274
    beq	$a5,$a6,.L0db6e0e0
    # Line 2277
    swc1	$f2,-16($a3)
    # Line 2275
    lwc1	$f0,3280($a0)
.L0db6e138:
    lwc1	$f3,0($a3)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a2,$f3
    nop
    slt	$a1,$a4,$a2
    beqz	$a1,.L0db6e0e8
    nop
    b	.L0db6e0e8
    # Line 2276
    move	$a2,$a4
.end __glRoundCISpan

# Function: __glRoundCIStippledSpan
# Declared: Line 2288 (Source lines: 2295-2325)
# Address: 0x0db6e160 - 0x0db6e2c8 (Size: 360 bytes, Frame: 0)
.globl __glRoundCIStippledSpan
.ent __glRoundCIStippledSpan
__glRoundCIStippledSpan:
    # Line 2299
    lw	$a2,30516($a0)
    # Line 2296
    lw	$t2,30524($a0)
    # Line 2298
    lw	$at,3136($a0)
    # Line 2295
    lw	$t1,30300($a0)
    # Line 2298
    li	$a5,1
    sllv	$a5,$a5,$at
    # Line 2299
    beqz	$t1,.L0db6e2c0
    # Line 2298
    addiu	$a5,$a5,-1
    # Line 2299
    li	$t0,-1
    b	.L0db6e190
    lui	$t8,0x8000
.L0db6e18c:
    # Line 2309
    beqz	$t1,.L0db6e2c0
.L0db6e190:
    # Line 2301
    slti	$v0,$t1,33
    bnez	$v0,.L0db6e1a0
    move	$a6,$t1
    # Line 2303
    li	$a6,32
.L0db6e1a0:
    # Line 2307
    lw	$a7,0($t2)
    # Line 2308
    move	$a3,$t8
    # Line 2305
    subu	$t1,$t1,$a6
    # Line 2309
    addiu	$a6,$a6,-1
    bltz	$a6,.L0db6e18c
    # Line 2307
    addiu	$t2,$t2,4
    # Line 2309
    addiu	$t3,$a6,1
    andi	$v1,$t3,0x1
    beqz	$v1,.L0db6e210
    and	$a1,$a7,$a3
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2309
    beqz	$a1,.L0db6e20c
    addiu	$a6,$a6,-1
    # Line 2311
    lwc1	$f1,3280($a0)
    lwc1	$f0,0($a2)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f0
    nop
    slt	$at,$a5,$a4
    beqz	$at,.L0db6e1fc
    nop
    # Line 2312
    move	$a4,$a5
.L0db6e1fc:
    # Line 2313
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a2)
.L0db6e20c:
    # Line 2315
    addiu	$a2,$a2,16
.L0db6e210:
    sra	$v0,$t3,0x1
    beqz	$v0,.L0db6e18c
    nop
    b	.L0db6e284
    # Line 2309
    and	$at,$a7,$a3
.L0db6e224:
    # Line 2313
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a2)
.L0db6e234:
    # Line 2309
    addiu	$a6,$a6,-2
    beqz	$v1,.L0db6e278
    # Line 2315
    addiu	$a2,$a2,16
    # Line 2311
    lwc1	$f1,3280($a0)
    lwc1	$f0,0($a2)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f0
    nop
    slt	$a1,$a5,$a4
    beqz	$a1,.L0db6e268
    nop
    # Line 2312
    move	$a4,$a5
.L0db6e268:
    # Line 2313
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a2)
.L0db6e278:
    # Line 2309
    beq	$a6,$t0,.L0db6e18c
    # Line 2315
    addiu	$a2,$a2,16
    # Line 2309
    and	$at,$a7,$a3
.L0db6e284:
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2309
    and	$v1,$a7,$a3
    beqz	$at,.L0db6e234
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2311
    lwc1	$f0,3280($a0)
    lwc1	$f3,0($a2)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a4,$f3
    nop
    slt	$v0,$a5,$a4
    beqz	$v0,.L0db6e224
    nop
    b	.L0db6e224
    # Line 2312
    move	$a4,$a5
.L0db6e2c0:
    # Line 2325
    jr	$ra
    move	$v0,$zero
.end __glRoundCIStippledSpan

# Function: __glRoundRGBASpan
# Declared: Line 2332 (Source lines: 2342-2364)
# Address: 0x0db6e2c8 - 0x0db6e3e4 (Size: 284 bytes, Frame: 0)
.globl __glRoundRGBASpan
.ent __glRoundRGBASpan
__glRoundRGBASpan:
    # Line 2346
    lw	$a2,30516($a0)
    # Line 2345
    lw	$a7,30848($a0)
    # Line 2344
    lw	$t0,30824($a0)
    # Line 2347
    lw	$a5,30300($a0)
    # Line 2343
    lw	$a6,30820($a0)
    # Line 2347
    addiu	$a5,$a5,-1
    bltz	$a5,.L0db6e3dc
    # Line 2342
    lw	$t1,30816($a0)
    # Line 2347
    li	$t2,-1
    b	.L0db6e30c
    # Line 2348
    lwc1	$f2,3280($a0)
.L0db6e2f4:
    # Line 2359
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2347
    beq	$a5,$t2,.L0db6e3dc
    # Line 2359
    swc1	$f0,-4($a2)
    # Line 2348
    lwc1	$f2,3280($a0)
.L0db6e30c:
    lwc1	$f1,0($a2)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    nop
    slt	$at,$t1,$a4
    beqz	$at,.L0db6e330
    nop
    # Line 2349
    move	$a4,$t1
.L0db6e330:
    # Line 2350
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a2)
    # Line 2351
    lwc1	$f3,4($a2)
    lwc1	$f0,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
    nop
    slt	$v0,$a6,$a3
    beqz	$v0,.L0db6e368
    nop
    # Line 2352
    move	$a3,$a6
.L0db6e368:
    # Line 2353
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a2)
    # Line 2354
    lwc1	$f2,8($a2)
    lwc1	$f3,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    nop
    slt	$v1,$t0,$a4
    beqz	$v1,.L0db6e3a0
    nop
    # Line 2355
    move	$a4,$t0
.L0db6e3a0:
    # Line 2356
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,8($a2)
    # Line 2357
    lwc1	$f1,12($a2)
    lwc1	$f2,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    # Line 2347
    addiu	$a5,$a5,-1
    # Line 2357
    slt	$a1,$a7,$a3
    beqz	$a1,.L0db6e2f4
    # Line 2360
    addiu	$a2,$a2,16
    b	.L0db6e2f4
    # Line 2358
    move	$a3,$a7
.L0db6e3dc:
    # Line 2364
    jr	$ra
    move	$v0,$zero
.end __glRoundRGBASpan

# Function: __glRoundRGBAStippledSpan
# Declared: Line 2371 (Source lines: 2372-2422)
# Address: 0x0db6e3e4 - 0x0db6e56c (Size: 392 bytes, Frame: 32)
.globl __glRoundRGBAStippledSpan
.ent __glRoundRGBAStippledSpan
__glRoundRGBAStippledSpan:
    # Line 2387
    lw	$a2,30516($a0)
    # Line 2386
    lw	$t3,30848($a0)
    # Line 2385
    lw	$t2,30824($a0)
    # Line 2384
    lw	$t1,30820($a0)
    # Line 2383
    lw	$t0,30816($a0)
    # Line 2379
    lw	$at,30300($a0)
    # Line 2372
    addiu	$sp,$sp,-32
    # Line 2380
    lw	$v0,30524($a0)
    sd	$at,0($sp)
    # Line 2387
    beqz	$at,.L0db6e560
    sd	$v0,8($sp)
    b	.L0db6e420
    li	$t9,-1
.L0db6e418:
    ld	$v1,0($sp)
    # Line 2397
    beqz	$v1,.L0db6e560
.L0db6e420:
    ld	$a1,0($sp)
    # Line 2389
    move	$a7,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0db6e438
    # Line 2395
    ld	$at,8($sp)
    # Line 2391
    li	$a7,32
.L0db6e438:
    lui	$a3,0x8000
    # Line 2395
    lw	$t8,0($at)
    # Line 2393
    ld	$v0,0($sp)
    # Line 2395
    addiu	$at,$at,4
    sd	$at,8($sp)
    # Line 2393
    subu	$v0,$v0,$a7
    # Line 2397
    addiu	$a7,$a7,-1
    bltz	$a7,.L0db6e418
    sd	$v0,0($sp)
    b	.L0db6e528
    addiu	$a7,$a7,-1
.L0db6e464:
    # Line 2401
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a2)
    # Line 2402
    lwc1	$f0,4($a2)
    lwc1	$f1,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f0
    nop
    slt	$v1,$t1,$a5
    beqz	$v1,.L0db6e49c
    nop
    # Line 2403
    move	$a5,$t1
.L0db6e49c:
    # Line 2404
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,4($a2)
    # Line 2405
    lwc1	$f3,8($a2)
    lwc1	$f0,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a6,$f3
    nop
    slt	$a1,$t2,$a6
    beqz	$a1,.L0db6e4d4
    nop
    # Line 2406
    move	$a6,$t2
.L0db6e4d4:
    # Line 2407
    mtc1	$a6,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,8($a2)
    # Line 2408
    lwc1	$f2,12($a2)
    lwc1	$f3,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    nop
    slt	$at,$t3,$a4
    beqz	$at,.L0db6e50c
    nop
    # Line 2409
    move	$a4,$t3
.L0db6e50c:
    # Line 2410
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,12($a2)
.L0db6e51c:
    # Line 2397
    beq	$a7,$t9,.L0db6e418
    # Line 2412
    addiu	$a2,$a2,16
    # Line 2397
    addiu	$a7,$a7,-1
.L0db6e528:
    and	$v0,$t8,$a3
    beqz	$v0,.L0db6e51c
    # Line 2415
    srl	$a3,$a3,0x1
    # Line 2399
    lwc1	$f3,3280($a0)
    lwc1	$f2,0($a2)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    nop
    slt	$v1,$t0,$a4
    beqz	$v1,.L0db6e464
    nop
    b	.L0db6e464
    # Line 2400
    move	$a4,$t0
.L0db6e560:
    # Line 2422
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end __glRoundRGBAStippledSpan

# Function: __glLogicOpSpan
# Declared: Line 2427 (Source lines: 2428-2465)
# Address: 0x0db6e56c - 0x0db6e68c (Size: 288 bytes, Frame: 0)
.globl __glLogicOpSpan
.ent __glLogicOpSpan
__glLogicOpSpan:
    # Line 2436
    lw	$a3,30520($a0)
    # Line 2435
    lw	$a4,30516($a0)
    # Line 2438
    lw	$a6,30300($a0)
    # Line 2428
    lui	$v0,0x9
    addiu	$v0,$v0,300
    # Line 2438
    addiu	$a6,$a6,-1
    bltz	$a6,.L0db6e684
    # Line 2428
    addu	$at,$t9,$v0
    # Line 2438
    li	$t1,-1
    b	.L0db6e5c0
    # Line 2460
    addiu	$a4,$a4,16
.L0db6e598:
    # Line 2451
    xor	$a5,$a5,$t0
    nor	$a5,$a5,$zero
.L0db6e5a0:
    # Line 2438
    addiu	$a6,$a6,-1
    # Line 2459
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2461
    addiu	$a3,$a3,16
    # Line 2438
    beq	$a6,$t1,.L0db6e684
    # Line 2459
    swc1	$f0,-16($a4)
    # Line 2460
    addiu	$a4,$a4,16
.L0db6e5c0:
    # Line 2440
    la	$v0,sub_0dbf0000
    lwc1	$f2,0($a3)
    lw	$a7,1756($a0)
    # Line 2439
    lwc1	$f1,-16($a4)
    # Line 2440
    trunc.w.s	$f2,$f2
    addiu	$v0,$v0,-2008
    addiu	$a7,$a7,-5376
    # Line 2439
    trunc.w.s	$f1,$f1
    # Line 2440
    sltiu	$v1,$a7,16
    sll	$a7,$a7,0x2
    mfc1	$t0,$f2
    # Line 2439
    mfc1	$a5,$f1
    # Line 2440
    beqz	$v1,.L0db6e5a0
    addu	$a7,$a7,$v0
    lw	$v0,%lo(jtbl_0dbef828)($a7)
    jr	$v0
    # Line 2444
    nor	$v1,$t0,$zero
.L0db6e604:
    # Line 2442
    b	.L0db6e5a0
    move	$a5,$zero
.L0db6e60c:
    # Line 2443
    b	.L0db6e5a0
    and	$a5,$a5,$t0
.L0db6e614:
    # Line 2444
    b	.L0db6e5a0
    and	$a5,$v1,$a5
.L0db6e61c:
    # Line 2446
    nor	$a5,$a5,$zero
    b	.L0db6e5a0
    and	$a5,$a5,$t0
.L0db6e628:
    # Line 2447
    b	.L0db6e5a0
    move	$a5,$t0
.L0db6e630:
    # Line 2448
    b	.L0db6e5a0
    xor	$a5,$a5,$t0
.L0db6e638:
    # Line 2449
    b	.L0db6e5a0
    or	$a5,$a5,$t0
.L0db6e640:
    # Line 2450
    b	.L0db6e5a0
    nor	$a5,$a5,$t0
.L0db6e648:
    # Line 2452
    b	.L0db6e5a0
    nor	$a5,$t0,$zero
.L0db6e650:
    # Line 2453
    nor	$v0,$t0,$zero
    b	.L0db6e5a0
    or	$a5,$v0,$a5
.L0db6e65c:
    # Line 2454
    b	.L0db6e5a0
    nor	$a5,$a5,$zero
.L0db6e664:
    # Line 2455
    nor	$a5,$a5,$zero
    b	.L0db6e5a0
    or	$a5,$a5,$t0
.L0db6e670:
    # Line 2456
    and	$a5,$a5,$t0
    b	.L0db6e5a0
    nor	$a5,$a5,$zero
.L0db6e67c:
    b	.L0db6e5a0
    # Line 2457
    li	$a5,-1
.L0db6e684:
    # Line 2465
    jr	$ra
    move	$v0,$zero
.end __glLogicOpSpan

# Function: __glLogicOpStippledSpan
# Declared: Line 2468 (Source lines: 2469-2525)
# Address: 0x0db6e68c - 0x0db6e7f8 (Size: 364 bytes, Frame: 32)
.globl __glLogicOpStippledSpan
.ent __glLogicOpStippledSpan
__glLogicOpStippledSpan:
    # Line 2479
    lw	$a5,30520($a0)
    # Line 2478
    lw	$a3,30516($a0)
    # Line 2469
    addiu	$sp,$sp,-32
    lui	$v0,0x9
    addiu	$v0,$v0,12
    # Line 2475
    lw	$t8,30300($a0)
    # Line 2476
    lw	$v1,30524($a0)
    # Line 2469
    addu	$at,$t9,$v0
    # Line 2479
    beqz	$t8,.L0db6e7ec
    sd	$v1,0($sp)
    li	$t3,-1
    b	.L0db6e6c4
    ld	$t9,0($sp)
.L0db6e6c0:
    # Line 2490
    beqz	$t8,.L0db6e7ec
.L0db6e6c4:
    # Line 2482
    slti	$a1,$t8,33
    bnez	$a1,.L0db6e6d4
    move	$a7,$t8
    # Line 2484
    li	$a7,32
.L0db6e6d4:
    lui	$a4,0x8000
    # Line 2488
    lw	$t2,0($t9)
    # Line 2486
    subu	$t8,$t8,$a7
    # Line 2490
    addiu	$a7,$a7,-1
    bltz	$a7,.L0db6e6c0
    # Line 2488
    addiu	$t9,$t9,4
    b	.L0db6e718
    # Line 2490
    addiu	$a7,$a7,-1
.L0db6e6f4:
    # Line 2502
    or	$a6,$a6,$t1
.L0db6e6f8:
    # Line 2512
    mtc1	$a6,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a3)
.L0db6e708:
    # Line 2515
    addiu	$a5,$a5,16
    # Line 2490
    beq	$a7,$t3,.L0db6e6c0
    # Line 2514
    addiu	$a3,$a3,16
    # Line 2490
    addiu	$a7,$a7,-1
.L0db6e718:
    and	$a2,$t2,$a4
    beqz	$a2,.L0db6e708
    # Line 2518
    srl	$a4,$a4,0x1
    # Line 2493
    la	$v0,sub_0dbf0000
    lwc1	$f2,0($a5)
    lw	$t0,1756($a0)
    # Line 2492
    lwc1	$f1,0($a3)
    # Line 2493
    trunc.w.s	$f2,$f2
    addiu	$v0,$v0,-1944
    addiu	$t0,$t0,-5376
    # Line 2492
    trunc.w.s	$f1,$f1
    # Line 2493
    sltiu	$v1,$t0,16
    sll	$t0,$t0,0x2
    mfc1	$t1,$f2
    # Line 2492
    mfc1	$a6,$f1
    # Line 2493
    beqz	$v1,.L0db6e6f8
    addu	$t0,$t0,$v0
    lw	$v0,%lo(jtbl_0dbef868)($t0)
    jr	$v0
    # Line 2497
    nor	$v1,$t1,$zero
.L0db6e768:
    # Line 2495
    b	.L0db6e6f8
    move	$a6,$zero
.L0db6e770:
    # Line 2496
    b	.L0db6e6f8
    and	$a6,$a6,$t1
.L0db6e778:
    # Line 2497
    b	.L0db6e6f8
    and	$a6,$v1,$a6
.L0db6e780:
    # Line 2499
    nor	$a6,$a6,$zero
    b	.L0db6e6f8
    and	$a6,$a6,$t1
.L0db6e78c:
    # Line 2500
    b	.L0db6e6f8
    move	$a6,$t1
.L0db6e794:
    # Line 2501
    b	.L0db6e6f8
    xor	$a6,$a6,$t1
.L0db6e79c:
    # Line 2503
    b	.L0db6e6f8
    nor	$a6,$a6,$t1
.L0db6e7a4:
    # Line 2504
    xor	$a6,$a6,$t1
    b	.L0db6e6f8
    nor	$a6,$a6,$zero
.L0db6e7b0:
    # Line 2505
    b	.L0db6e6f8
    nor	$a6,$t1,$zero
.L0db6e7b8:
    # Line 2506
    nor	$v0,$t1,$zero
    b	.L0db6e6f8
    or	$a6,$v0,$a6
.L0db6e7c4:
    # Line 2507
    b	.L0db6e6f8
    nor	$a6,$a6,$zero
.L0db6e7cc:
    # Line 2508
    nor	$a6,$a6,$zero
    b	.L0db6e6f8
    or	$a6,$a6,$t1
.L0db6e7d8:
    # Line 2509
    and	$a6,$a6,$t1
    b	.L0db6e6f8
    nor	$a6,$a6,$zero
.L0db6e7e4:
    b	.L0db6e6f8
    # Line 2510
    li	$a6,-1
.L0db6e7ec:
    # Line 2525
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end __glLogicOpStippledSpan

# Function: __glMaskRGBASpan
# Declared: Line 2530 (Source lines: 2539-2553)
# Address: 0x0db6e7f8 - 0x0db6e950 (Size: 344 bytes, Frame: 0)
.globl __glMaskRGBASpan
.ent __glMaskRGBASpan
__glMaskRGBASpan:
    # Line 2544
    lw	$t0,30520($a0)
    # Line 2543
    lw	$a2,30516($a0)
    # Line 2542
    lbu	$a5,1787($a0)
    # Line 2541
    lbu	$a7,1786($a0)
    # Line 2545
    lw	$a3,30300($a0)
    # Line 2540
    lbu	$a4,1785($a0)
    # Line 2545
    li	$a1,-1
    addiu	$a3,$a3,-1
    bltz	$a3,.L0db6e878
    # Line 2539
    lbu	$a6,1784($a0)
    # Line 2545
    addiu	$t1,$a3,1
    andi	$at,$t1,0x1
    beqz	$at,.L0db6e870
    sra	$v0,$t1,0x1
    beqz	$a6,.L0db6e930
    nop
    # Line 2546
    lwc1	$f4,0($a2)
.L0db6e83c:
    # Line 2545
    addiu	$a3,$a3,-1
    # Line 2546
    beqz	$a4,.L0db6e938
    swc1	$f4,0($a2)
    # Line 2547
    lwc1	$f4,4($a2)
.L0db6e84c:
    beqz	$a7,.L0db6e940
    swc1	$f4,4($a2)
    # Line 2548
    lwc1	$f4,8($a2)
.L0db6e858:
    beqz	$a5,.L0db6e948
    swc1	$f4,8($a2)
    # Line 2549
    lwc1	$f4,12($a2)
.L0db6e864:
    # Line 2550
    addiu	$a2,$a2,16
    # Line 2549
    swc1	$f4,-4($a2)
    sra	$v0,$t1,0x1
.L0db6e870:
    bnez	$v0,.L0db6e89c
    nop
.L0db6e878:
    # Line 2553
    jr	$ra
    move	$v0,$zero
.L0db6e880:
    # Line 2548
    lwc1	$f4,8($t0)
.L0db6e884:
    beqz	$a5,.L0db6e928
    swc1	$f4,24($a2)
    # Line 2549
    lwc1	$f4,28($a2)
.L0db6e890:
    # Line 2550
    addiu	$a2,$a2,32
    # Line 2545
    beq	$a3,$a1,.L0db6e878
    # Line 2549
    swc1	$f4,-4($a2)
.L0db6e89c:
    # Line 2545
    beqz	$a6,.L0db6e8f8
    nop
    # Line 2546
    lwc1	$f4,0($a2)
.L0db6e8a8:
    # Line 2545
    addiu	$a3,$a3,-2
    # Line 2546
    beqz	$a4,.L0db6e900
    swc1	$f4,0($a2)
    # Line 2547
    lwc1	$f4,4($a2)
.L0db6e8b8:
    beqz	$a7,.L0db6e908
    swc1	$f4,4($a2)
    # Line 2548
    lwc1	$f4,8($a2)
.L0db6e8c4:
    beqz	$a5,.L0db6e910
    swc1	$f4,8($a2)
    # Line 2549
    lwc1	$f4,12($a2)
.L0db6e8d0:
    # Line 2545
    beqz	$a6,.L0db6e918
    # Line 2549
    swc1	$f4,12($a2)
    # Line 2546
    lwc1	$f4,16($a2)
.L0db6e8dc:
    beqz	$a4,.L0db6e920
    swc1	$f4,16($a2)
    # Line 2547
    lwc1	$f4,20($a2)
.L0db6e8e8:
    beqz	$a7,.L0db6e880
    swc1	$f4,20($a2)
    # Line 2548
    b	.L0db6e884
    lwc1	$f4,24($a2)
.L0db6e8f8:
    b	.L0db6e8a8
    # Line 2546
    lwc1	$f4,0($t0)
.L0db6e900:
    b	.L0db6e8b8
    # Line 2547
    lwc1	$f4,4($t0)
.L0db6e908:
    b	.L0db6e8c4
    # Line 2548
    lwc1	$f4,8($t0)
.L0db6e910:
    b	.L0db6e8d0
    # Line 2549
    lwc1	$f4,12($t0)
.L0db6e918:
    b	.L0db6e8dc
    # Line 2546
    lwc1	$f4,0($t0)
.L0db6e920:
    b	.L0db6e8e8
    # Line 2547
    lwc1	$f4,4($t0)
.L0db6e928:
    b	.L0db6e890
    # Line 2549
    lwc1	$f4,12($t0)
.L0db6e930:
    b	.L0db6e83c
    # Line 2546
    lwc1	$f4,0($t0)
.L0db6e938:
    b	.L0db6e84c
    # Line 2547
    lwc1	$f4,4($t0)
.L0db6e940:
    b	.L0db6e858
    # Line 2548
    lwc1	$f4,8($t0)
.L0db6e948:
    b	.L0db6e864
    # Line 2549
    lwc1	$f4,12($t0)
.end __glMaskRGBASpan

# Function: __glMaskCISpan
# Declared: Line 2556 (Source lines: 2564-2575)
# Address: 0x0db6e950 - 0x0db6ea84 (Size: 308 bytes, Frame: 0)
.globl __glMaskCISpan
.ent __glMaskCISpan
__glMaskCISpan:
    # Line 2567
    lw	$a5,30520($a0)
    # Line 2566
    lw	$a7,30516($a0)
    # Line 2564
    lw	$a3,1780($a0)
    # Line 2568
    lw	$a2,30300($a0)
    # Line 2565
    lw	$a4,30788($a0)
    nor	$at,$a3,$zero
    # Line 2568
    addiu	$a2,$a2,-1
    bltz	$a2,.L0db6ea7c
    # Line 2565
    and	$a4,$a4,$at
    # Line 2568
    addiu	$a1,$a2,1
    andi	$a6,$a1,0x1
    beqz	$a6,.L0db6e9d0
    li	$a6,-1
    # Line 2571
    lwc1	$f2,0($a7)
    lwc1	$f1,0($a5)
    trunc.l.s	$f2,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$at,$f2
    dmfc1	$v0,$f1
    sll	$at,$at,0x0
    sll	$v0,$v0,0x0
    and	$v0,$v0,$a4
    and	$at,$at,$a3
    or	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 2568
    addiu	$a2,$a2,-1
    # Line 2572
    addiu	$a7,$a7,16
    # Line 2571
    swc1	$f0,-16($a7)
.L0db6e9d0:
    sra	$v0,$a1,0x1
    move	$t1,$a2
    beqz	$v0,.L0db6ea7c
    move	$t0,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db6e9e8:
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    lwc1	$f3,0($a5)
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f0
    dmfc1	$at,$f3
    sll	$a0,$a0,0x0
    and	$a0,$a0,$a3
    sll	$at,$at,0x0
    and	$at,$at,$a4
    or	$a0,$a0,$at
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f1,16($a2)
    swc1	$f2,0($a2)
    trunc.l.s	$f1,$f1
    lwc1	$f0,0($a5)
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f1
    dmfc1	$a0,$f0
    sll	$v1,$v1,0x0
    and	$v1,$v1,$a3
    sll	$a0,$a0,0x0
    and	$a0,$a0,$a4
    or	$v1,$v1,$a0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 2572
    addiu	$a2,$a2,32
    # Line 2568
    addiu	$a1,$a1,-2
    bne	$a1,$a6,.L0db6e9e8
    # Line 2571
    swc1	$f3,-16($a2)
.L0db6ea7c:
    # Line 2575
    jr	$ra
    move	$v0,$zero
.end __glMaskCISpan

.late_rodata
jtbl_0dbef828:
    .word .L0db6e604
    .word .L0db6e60c
    .word .L0db6e614
    .word .L0db6e5a0
    .word .L0db6e61c
    .word .L0db6e628
    .word .L0db6e630
    .word .L0db6e638
    .word .L0db6e640
    .word .L0db6e598
    .word .L0db6e648
    .word .L0db6e650
    .word .L0db6e65c
    .word .L0db6e664
    .word .L0db6e670
    .word .L0db6e67c
jtbl_0dbef868:
    .word .L0db6e768
    .word .L0db6e770
    .word .L0db6e778
    .word .L0db6e6f8
    .word .L0db6e780
    .word .L0db6e78c
    .word .L0db6e794
    .word .L0db6e6f4
    .word .L0db6e79c
    .word .L0db6e7a4
    .word .L0db6e7b0
    .word .L0db6e7b8
    .word .L0db6e7c4
    .word .L0db6e7cc
    .word .L0db6e7d8
    .word .L0db6e7e4

.rdata
_lit8_3fa0000000000000:
    .word 0x3fa00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_41800000:
    .word 0x41800000

