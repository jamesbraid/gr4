# Source: ../pixel/px_api.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_api.c
# Total Functions: 18

.text

# Function: __glInitDefaultPixelMap
# Declared: Line 26 (Source lines: 27-65)
# Address: 0x0db0454c - 0x0db0467c (Size: 304 bytes, Frame: 48)
.globl __glInitDefaultPixelMap
.ent __glInitDefaultPixelMap
__glInitDefaultPixelMap:
    # Line 27
    move	$v0,$a1
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    addiu	$a4,$a1,-3184
    sd	$gp,8($sp)
    lui	$at,0x10
    addiu	$at,$at,-24244
    addu	$gp,$t9,$at
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a4,10
    sll	$a4,$a4,0x2
    addiu	$t9,$t9,-4568
    beqz	$at,.L0db04658
    addu	$a4,$a4,$t9
    lw	$v1,%lo(jtbl_0dbeee28)($a4)
    sd	$ra,24($sp)
    jr	$v1
    sd	$v0,0($sp)
.L0db04598:
    # Line 38
    lw	$t9,0($s0)
    move	$a0,$s0
    jal	sub_0dbf0000
    li	$a1,4
    ld	$a2,0($sp)
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    lui	$a2,0xffff
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    addu	$a0,$a0,$a2
    bnez	$v0,.L0db04628
    sw	$v0,28288($a0)
    # Line 40
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db045e0:
    # Line 53
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    li	$a1,4
    ld	$a2,0($sp)
    ld	$ra,24($sp)
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    lui	$a2,0xffff
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    addu	$a0,$a0,$a2
    bnez	$v0,.L0db04638
    sw	$v0,28288($a0)
    # Line 55
    ld	$s0,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db04628:
    # Line 43
    li	$a3,1
    # Line 42
    sw	$zero,0($v0)
    b	.L0db04648
    # Line 43
    sw	$a3,28280($a0)
.L0db04638:
    # Line 58
    li	$at,1
    # Line 57
    mtc1	$zero,$f0
    swc1	$f0,0($v0)
    # Line 58
    sw	$at,28280($a0)
.L0db04648:
    ld	$gp,8($sp)
    # Line 65
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db04658:
    # Line 62
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 63
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitDefaultPixelMap

# Function: __glPixelSetColorScales
# Declared: Line 67 (Source lines: 68-112)
# Address: 0x0db0467c - 0x0db04830 (Size: 436 bytes, Frame: 48)
.globl __glPixelSetColorScales
.ent __glPixelSetColorScales
__glPixelSetColorScales:
    # Line 68
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lw	$at,30600($a0)
    lui	$v0,0x10
    addiu	$v0,$v0,-24548
    beqz	$at,.L0db047c0
    addu	$gp,$t9,$v0
.L0db046a0:
    # Line 94
    lwc1	$f0,_lit_437f0000
    # Line 97
    lwc1	$f6,30844($s0)
    div.s	$f6,$f6,$f0
    # Line 96
    lwc1	$f5,30812($s0)
    div.s	$f5,$f5,$f0
    # Line 95
    lwc1	$f7,30808($s0)
    div.s	$f7,$f7,$f0
    # Line 99
    li	$a4,256
    move	$a2,$zero
    move	$a0,$zero
    # Line 94
    lwc1	$f4,30804($s0)
    # Line 98
    lw	$a3,30788($s0)
    ld	$gp,0($sp)
    # Line 94
    div.s	$f4,$f4,$f0
.L0db046d8:
    # Line 100
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f1,$f3,$f4
    # Line 102
    mul.s	$f0,$f3,$f5
    # Line 100
    lw	$a1,30600($s0)
    # Line 101
    mul.s	$f2,$f3,$f7
    # Line 100
    addu	$a1,$a1,$a2
    swc1	$f1,0($a1)
    # Line 101
    lw	$v1,30604($s0)
    # Line 99
    addiu	$at,$a0,1
    # Line 100
    mtc1	$at,$f1
    # Line 101
    addu	$v1,$v1,$a2
    swc1	$f2,0($v1)
    # Line 100
    cvt.s.w	$f1,$f1
    # Line 102
    lw	$v0,30608($s0)
    # Line 103
    mul.s	$f3,$f3,$f6
    # Line 104
    and	$a1,$a3,$a0
    # Line 102
    addu	$v0,$v0,$a2
    swc1	$f0,0($v0)
    # Line 104
    mtc1	$a1,$f2
    # Line 103
    lw	$a0,30612($s0)
    # Line 104
    cvt.s.w	$f2,$f2
    # Line 103
    addu	$a0,$a0,$a2
    swc1	$f3,0($a0)
    # Line 104
    lw	$v1,30616($s0)
    # Line 100
    mul.s	$f0,$f1,$f4
    # Line 104
    addu	$v1,$v1,$a2
    swc1	$f2,0($v1)
    # Line 100
    lw	$v0,30600($s0)
    # Line 101
    mul.s	$f3,$f1,$f7
    # Line 99
    addiu	$a1,$a2,4
    # Line 100
    addu	$v0,$v0,$a1
    swc1	$f0,0($v0)
    # Line 101
    lw	$a2,30604($s0)
    # Line 102
    mul.s	$f2,$f1,$f5
    # Line 101
    addu	$a2,$a2,$a1
    swc1	$f3,0($a2)
    # Line 102
    lw	$a0,30608($s0)
    # Line 103
    mul.s	$f1,$f1,$f6
    # Line 102
    addu	$a0,$a0,$a1
    swc1	$f2,0($a0)
    # Line 103
    lw	$v0,30612($s0)
    # Line 104
    and	$v1,$a3,$at
    mtc1	$v1,$f0
    # Line 103
    addu	$v0,$v0,$a1
    swc1	$f1,0($v0)
    # Line 104
    cvt.s.w	$f0,$f0
    lw	$v1,30616($s0)
    # Line 99
    addiu	$a0,$at,1
    addiu	$a2,$a1,4
    # Line 104
    addu	$v1,$v1,$a1
    # Line 99
    bne	$a0,$a4,.L0db046d8
    # Line 104
    swc1	$f0,0($v1)
    # Line 111
    sb	$zero,30640($s0)
    # Line 112
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db047c0:
    # Line 82
    lw	$t9,0($s0)
    move	$a0,$s0
    sd	$ra,16($sp)
    jalr	$t9
    li	$a1,1024
    # Line 84
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 82
    sw	$v0,30600($s0)
    # Line 86
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 84
    sw	$v0,30604($s0)
    # Line 88
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 86
    sw	$v0,30608($s0)
    # Line 90
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 88
    sw	$v0,30612($s0)
    # Line 90
    sw	$v0,30616($s0)
    b	.L0db046a0
    ld	$ra,16($sp)
.end __glPixelSetColorScales

# Function: __glFreePixelState
# Declared: Line 116 (Source lines: 117-163)
# Address: 0x0db04830 - 0x0db04ba4 (Size: 884 bytes, Frame: 192)
.globl __glFreePixelState
.ent __glFreePixelState
__glFreePixelState:
    # Line 117
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    li	$at,0x9540
    addu	$at,$a0,$at
    sd	$s0,8($sp)
    lui	$s0,0xffff
    sd	$s2,0($sp)
    li	$s2,0x95b8
    addu	$s2,$a0,$s2
    addu	$s2,$s0,$s2
    addu	$s0,$s0,$at
    lw	$a1,28288($s0)
    lui	$at,0x10
    addiu	$at,$at,-24984
    addu	$gp,$t9,$at
    beqzl	$a1,.L0db04898
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db04898:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db048c8
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db048c8:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db048f8
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db048f8:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db04928
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db04928:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db04958
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db04958:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db04988
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db04988:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db049b8
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db049b8:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db049e8
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db049e8:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    beqzl	$a1,.L0db04a18
    # Line 127
    addiu	$s0,$s0,12
    # Line 130
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
    ld	$ra,32($sp)
    # Line 127
    addiu	$s0,$s0,12
.L0db04a18:
    beq	$s0,$s2,.L0db04a40
    sd	$ra,32($sp)
    # Line 117
    lw	$a1,28288($s0)
    sd	$ra,32($sp)
    beqz	$a1,.L0db04a40
    ld	$s2,0($sp)
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28288($s0)
.L0db04a40:
    # Line 134
    move	$a0,$s1
    lw	$t9,12($s1)
    lw	$a1,30600($s1)
    ld	$s0,8($sp)
    jalr	$t9
    ld	$s2,0($sp)
    # Line 135
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30604($s1)
    # Line 136
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30608($s1)
    # Line 137
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30612($s1)
    # Line 138
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30616($s1)
    lw	$a1,30644($s1)
    beqzl	$a1,.L0db04ae4
    # Line 143
    lw	$a1,30672($s1)
    # Line 140
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 141
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30648($s1)
    # Line 142
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30652($s1)
    # Line 143
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30656($s1)
    lw	$a1,30672($s1)
.L0db04ae4:
    beqzl	$a1,.L0db04b2c
    # Line 149
    lw	$a1,30664($s1)
    # Line 146
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 147
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30676($s1)
    # Line 148
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30680($s1)
    # Line 149
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30684($s1)
    lw	$a1,30664($s1)
.L0db04b2c:
    beqzl	$a1,.L0db04b44
    # Line 155
    lw	$t9,12($s1)
    # Line 152
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 155
    lw	$t9,12($s1)
.L0db04b44:
    move	$a0,$s1
    jalr	$t9
    lw	$a1,808($s1)
    # Line 156
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,876($s1)
    # Line 157
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,944($s1)
    # Line 159
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,948($s1)
    # Line 161
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1156($s1)
    ld	$s1,16($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    # Line 163
    jr	$ra
    addiu	$sp,$sp,64
.end __glFreePixelState

# Function: __glInitPixelState
# Declared: Line 170 (Source lines: 171-300)
# Address: 0x0db04ba4 - 0x0db04eb8 (Size: 788 bytes, Frame: 192)
.globl __glInitPixelState
.ent __glInitPixelState
__glInitPixelState:
    # Line 171
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s2,0($sp)
    # Line 200
    li	$s2,3194
    sd	$s0,8($sp)
    li	$s0,3184
    sd	$s1,16($sp)
    # Line 171
    move	$s1,$a0
    sd	$gp,24($sp)
    lui	$at,0x10
    # Line 178
    lwc1	$f0,3284($a0)
    # Line 171
    addiu	$at,$at,-25868
    addu	$gp,$t9,$at
    # Line 195
    swc1	$f0,724($a0)
    # Line 194
    swc1	$f0,720($a0)
    # Line 192
    swc1	$f0,700($a0)
    # Line 191
    swc1	$f0,696($a0)
    # Line 190
    swc1	$f0,692($a0)
    # Line 189
    swc1	$f0,688($a0)
    # Line 187
    swc1	$f0,668($a0)
    # Line 186
    swc1	$f0,664($a0)
    # Line 185
    swc1	$f0,660($a0)
    # Line 184
    swc1	$f0,656($a0)
    # Line 182
    swc1	$f0,632($a0)
    # Line 181
    swc1	$f0,628($a0)
    # Line 180
    swc1	$f0,624($a0)
    # Line 179
    swc1	$f0,620($a0)
    # Line 178
    swc1	$f0,616($a0)
    # Line 201
    # lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 200
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0db04d00
    # Line 201
    nop	# was lw $t9, -29216($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    move	$a1,$s0
    bal __glInitDefaultPixelMap
    ld	$s2,0($sp)
.L0db04d00:
    ld	$s2,0($sp)
    # Line 208
    lbu	$v0,3106($s1)
    # Line 207
    li	$v1,4
    # Line 208
    sw	$v1,1124($s1)
    beqz	$v0,.L0db04ea8
    # Line 207
    sw	$v1,1088($s1)
    # Line 212
    li	$a3,1029
    sd	$s4,40($sp)
    sw	$a3,1148($s1)
.L0db04d24:
    # Line 230
    move	$a0,$s1
    # Line 221
    li	$a2,0x8010
    # Line 222
    li	$s4,0x8016
    # Line 223
    li	$s0,6408
    # Line 216
    sw	$a3,1152($s1)
    # Line 228
    li	$a3,1
    sw	$a3,796($s1)
    # Line 223
    sw	$s0,752($s1)
    # Line 222
    sw	$s4,748($s1)
    # Line 224
    lwc1	$f1,3284($s1)
    # Line 221
    sw	$a2,744($s1)
    # Line 230
    lw	$t9,0($s1)
    # Line 227
    swc1	$f1,772($s1)
    # Line 226
    swc1	$f1,768($s1)
    # Line 229
    lw	$a1,3352($s1)
    # Line 225
    swc1	$f1,764($s1)
    # Line 224
    swc1	$f1,760($s1)
    # Line 229
    sw	$a1,800($s1)
    # Line 230
    sll	$a1,$a1,0x2
    jal	__glInitDefaultPixelMap
    sll	$a1,$a1,0x2
    # Line 244
    lw	$a3,3360($s1)
    # Line 243
    lw	$a2,3356($s1)
    # Line 245
    move	$a0,$s1
    # Line 238
    sw	$s0,820($s1)
    # Line 245
    mult	$a2,$a3
    # Line 237
    sw	$s4,816($s1)
    # Line 230
    sw	$v0,808($s1)
    # Line 236
    li	$a4,0x8011
    sw	$a4,812($s1)
    # Line 245
    lw	$t9,0($s1)
    # Line 239
    lwc1	$f2,3284($s1)
    # Line 244
    sw	$a3,872($s1)
    # Line 243
    sw	$a2,868($s1)
    # Line 242
    swc1	$f2,840($s1)
    # Line 241
    swc1	$f2,836($s1)
    # Line 240
    swc1	$f2,832($s1)
    # Line 239
    swc1	$f2,828($s1)
    # Line 245
    mflo	$a1
    sll	$a1,$a1,0x2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 261
    move	$a0,$s1
    # Line 254
    sw	$s0,888($s1)
    # Line 253
    sw	$s4,884($s1)
    # Line 245
    sw	$v0,876($s1)
    # Line 252
    li	$a3,0x8012
    sw	$a3,880($s1)
    # Line 260
    lw	$a2,3368($s1)
    # Line 255
    lwc1	$f3,3284($s1)
    # Line 261
    lw	$t9,0($s1)
    # Line 260
    sw	$a2,940($s1)
    # Line 258
    swc1	$f3,908($s1)
    # Line 257
    swc1	$f3,904($s1)
    # Line 259
    lw	$a1,3364($s1)
    # Line 256
    swc1	$f3,900($s1)
    # Line 255
    swc1	$f3,896($s1)
    # Line 259
    sw	$a1,936($s1)
    # Line 261
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 270
    move	$a0,$s1
    # Line 261
    sw	$v0,944($s1)
    # Line 270
    lw	$t9,0($s1)
    lw	$a1,940($s1)
    ld	$s4,40($sp)
    jalr	$t9
    sll	$a1,$a1,0xf
    la	$a2,dummyFilter
    # Line 280
    lwc1	$f7,3284($s1)
    # Line 270
    sw	$v0,948($s1)
    # Line 280
    swc1	$f7,16($a2)
    # Line 281
    lwc1	$f6,3284($s1)
    swc1	$f6,20($a2)
    # Line 282
    lwc1	$f5,3284($s1)
    swc1	$f5,24($a2)
    # Line 299
    move	$a0,$s1
    # Line 283
    lwc1	$f4,3284($s1)
    # Line 294
    li	$a3,0x8421
    # Line 299
    # lw $t9, -29212($gp) # &__glPixelSetColorScales
    # Line 283
    swc1	$f4,28($a2)
    # Line 295
    sb	$zero,30697($s1)
    # Line 294
    sw	$a3,30688($s1)
    # Line 292
    sw	$s0,1284($s1)
    # Line 291
    sw	$s0,1280($s1)
    # Line 290
    sw	$s0,1228($s1)
    # Line 289
    sw	$s0,1188($s1)
    # Line 288
    sw	$s0,1184($s1)
    # Line 299
    bal __glPixelSetColorScales
    # Line 285
    sw	$a2,740($s1)
    ld	$gp,24($sp)
    # Line 300
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db04ea8:
    sd	$s4,40($sp)
    # Line 214
    li	$a3,1028
    b	.L0db04d24
    sw	$a3,1148($s1)
.end __glInitPixelState

# Function: __glim_PixelStoref
# Declared: Line 307 (Source lines: 308-344)
# Address: 0x0db04eb8 - 0x0db05118 (Size: 608 bytes, Frame: 48)
.globl __glim_PixelStoref
.ent __glim_PixelStoref
__glim_PixelStoref:
    # Line 308
    sltiu	$at,$a0,3331
    addiu	$sp,$sp,-48
    sdc1	$f28,0($sp)
    mov.s	$f28,$f13
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$v0,0x10
    addiu	$v0,$v0,-26656
    bnez	$at,.L0db04f28
    addu	$gp,$t9,$v0
    # Line 309
    sltiu	$v1,$s0,3332
    bnez	$v1,.L0db04f6c
    li	$a0,0x806d
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0db0503c
    sltu	$at,$a0,$s0
    beqz	$at,.L0db04f6c
    li	$a0,0x8131
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0db05104
    sltu	$v1,$a0,$s0
    beqz	$v1,.L0db04f6c
    li	$a1,0x8133
    bne	$s0,$a1,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.L0db04f28:
    # Line 309
    sltiu	$at,$s0,3316
    bnez	$at,.L0db04f5c
    sltiu	$v0,$s0,3317
    bnez	$v0,.L0db04f6c
    sltiu	$v1,$s0,3329
    bnez	$v1,.L0db0508c
    sltiu	$a1,$s0,3330
    bnez	$a1,.L0db04fc0
    li	$at,3330
    bne	$s0,$at,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.L0db04f5c:
    # Line 309
    sltiu	$v0,$s0,3314
    bnez	$v0,.L0db04fac
    sltiu	$v1,$s0,3315
    beqz	$v1,.L0db05078
.L0db04f6c:
    # Line 325
    mtc1	$zero,$f0
.L0db04f70:
    c.lt.s	$f28,$f0
    nop
    bc1f	.L0db05010
    sd	$ra,24($sp)
    # Line 326
    lwc1	$f1,_lit_bf000000
    add.s	$f1,$f28,$f1
    trunc.w.s	$f1,$f1
    # lw $t9, -29196($gp) # &__glim_PixelStorei
    mfc1	$a1,$f1
    bal __glim_PixelStorei
    move	$a0,$s0
    ldc1	$f28,0($sp)
    ld	$ra,24($sp)
    b	.L0db05004
    ld	$s0,8($sp)
.L0db04fac:
    # Line 309
    sltiu	$a1,$s0,3313
    bnez	$a1,.L0db05064
    sltiu	$at,$s0,3314
    beqz	$at,.L0db04fe4
    sd	$ra,24($sp)
.L0db04fc0:
    # Line 335
    mtc1	$zero,$f2
.L0db04fc4:
    c.eq.s	$f28,$f2
    nop
    bc1f	.L0db050c4
    sd	$ra,24($sp)
    # Line 336
    # lw $t9, -29196($gp) # &__glim_PixelStorei
    move	$a0,$s0
    bal __glim_PixelStorei
    move	$a1,$zero
.L0db04fe4:
    # Line 341
    trunc.w.s	$f3,$f28
.L0db04fe8:
    # lw $t9, -29196($gp) # &__glim_PixelStorei
    mfc1	$a1,$f3
    bal __glim_PixelStorei
    move	$a0,$s0
    ldc1	$f28,0($sp)
    ld	$ra,24($sp)
    ld	$s0,8($sp)
.L0db05004:
    ld	$gp,16($sp)
    # Line 344
    jr	$ra
    addiu	$sp,$sp,48
.L0db05010:
    # Line 328
    lwc1	$f4,_lit_3f000000
    add.s	$f4,$f28,$f4
    trunc.w.s	$f4,$f4
    # lw $t9, -29196($gp) # &__glim_PixelStorei
    mfc1	$a1,$f4
    bal __glim_PixelStorei
    move	$a0,$s0
    ldc1	$f28,0($sp)
    ld	$ra,24($sp)
    b	.L0db05004
    ld	$s0,8($sp)
.L0db0503c:
    # Line 309
    li	$a0,0x806b
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0db050a8
    sltu	$v1,$a0,$s0
    beqz	$v1,.L0db04f6c
    li	$a1,0x806c
    bne	$s0,$a1,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.L0db05064:
    # Line 309
    li	$at,3312
    bne	$s0,$at,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04fc4
    # Line 335
    mtc1	$zero,$f2
.L0db05078:
    # Line 309
    li	$v0,3315
    bne	$s0,$v0,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.L0db0508c:
    # Line 309
    sltiu	$v1,$s0,3328
    bnez	$v1,.L0db050dc
    sltiu	$a1,$s0,3329
    beqz	$a1,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04fc4
    # Line 335
    mtc1	$zero,$f2
.L0db050a8:
    # Line 309
    sltiu	$at,$s0,3333
    bnez	$at,.L0db050f0
    sltiu	$v0,$s0,3334
    beqz	$v0,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.L0db050c4:
    # Line 338
    # lw $t9, -29196($gp) # &__glim_PixelStorei
    move	$a0,$s0
    bal __glim_PixelStorei
    li	$a1,1
    b	.L0db04fe8
    # Line 341
    trunc.w.s	$f3,$f28
.L0db050dc:
    # Line 309
    li	$v1,3317
    bne	$s0,$v1,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.L0db050f0:
    # Line 309
    li	$a1,3332
    bne	$s0,$a1,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.L0db05104:
    # Line 309
    li	$at,0x806e
    bne	$s0,$at,.L0db04fe4
    sd	$ra,24($sp)
    b	.L0db04f70
    # Line 325
    mtc1	$zero,$f0
.end __glim_PixelStoref

# Function: __glim_PixelStorei
# Declared: Line 346 (Source lines: 347-490)
# Address: 0x0db05118 - 0x0db05634 (Size: 1308 bytes, Frame: 32)
.globl __glim_PixelStorei
.ent __glim_PixelStorei
__glim_PixelStorei:
    # Line 349
    lw	$a3,__glCurrentContext
    li	$a5,1
    # Line 347
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 349
    lw	$at,__glBeginMode
    # Line 347
    lui	$v0,0x10
    addiu	$v0,$v0,-27264
    # Line 349
    beq	$at,$a5,.L0db05404
    # Line 347
    addu	$gp,$t9,$v0
    # Line 349
    sltiu	$v1,$a0,3332
    bnez	$v1,.L0db05174
    # Line 353
    sltiu	$a2,$a0,3333
    bnez	$a2,.L0db051b0
    li	$a4,0x806e
    sltu	$at,$a0,$a4
    bnez	$at,.L0db05244
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0db05308
    li	$a4,0x8132
    # Line 428
    bltz	$a1,.L0db05494
    # Line 433
    li	$a0,2
    b	.L0db051bc
    # Line 432
    sw	$a1,1132($a3)
.L0db05174:
    # Line 353
    sltiu	$v1,$a0,3317
    bnez	$v1,.L0db051d8
    sltiu	$a2,$a0,3318
    beqz	$a2,.L0db0521c
    sltiu	$at,$a0,3330
    # Line 470
    beq	$a1,$a5,.L0db051a8
    li	$a0,2
    beq	$a1,$a0,.L0db051a8
    li	$at,4
    beq	$a1,$at,.L0db051a8
    li	$v0,8
    bne	$a1,$v0,.L0db0526c
    # Line 475
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db051a8:
    # Line 472
    b	.L0db051bc
    sw	$a1,1124($a3)
.L0db051b0:
    # Line 397
    bltz	$a1,.L0db05458
    # Line 402
    li	$a0,2
    # Line 401
    sw	$a1,1084($a3)
.L0db051bc:
    # Line 489
    sw	$a0,__glBeginMode
    lw	$v1,11828($a3)
    ld	$gp,0($sp)
    # Line 490
    addiu	$sp,$sp,32
    # Line 489
    ori	$v1,$v1,0x10
    # Line 490
    jr	$ra
    # Line 489
    sw	$v1,11828($a3)
.L0db051d8:
    # Line 353
    sltiu	$a2,$a0,3314
    bnez	$a2,.L0db051fc
    sltiu	$at,$a0,3315
    beqz	$at,.L0db052a0
    sltiu	$a2,$a0,3316
    # Line 435
    bltz	$a1,.L0db054b4
    # Line 440
    li	$a0,2
    b	.L0db051bc
    # Line 439
    sw	$a1,1112($a3)
.L0db051fc:
    # Line 353
    sltiu	$v0,$a0,3313
    bnez	$v0,.L0db05288
    sltiu	$v1,$a0,3314
    beqz	$v1,.L0db0532c
    # Line 484
    li	$a0,2
    # Line 483
    sltu	$a2,$zero,$a1
    # Line 484
    b	.L0db051bc
    # Line 483
    sb	$a2,1109($a3)
.L0db0521c:
    # Line 353
    bnez	$at,.L0db052c0
    sltiu	$v0,$a0,3331
    bnez	$v0,.L0db053f4
    li	$v1,3331
    bne	$a0,$v1,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 390
    bltz	$a1,.L0db05554
    # Line 395
    li	$a0,2
    b	.L0db051bc
    # Line 394
    sw	$a1,1080($a3)
.L0db05244:
    # Line 353
    li	$a4,0x806c
    sltu	$a2,$a0,$a4
    bnez	$a2,.L0db052e0
    sltu	$at,$a4,$a0
    bnez	$at,.L0db053b4
    li	$v1,0x806d
    # Line 362
    bltz	$a1,.L0db054d4
    # Line 367
    li	$a0,2
    b	.L0db051bc
    # Line 366
    sw	$a1,1096($a3)
.L0db0526c:
    sd	$ra,8($sp)
    # Line 475
    jal	__glSetError
    li	$a0,1281
    # Line 476
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05288:
    # Line 353
    li	$v0,3312
    bne	$a0,$v0,.L0db0532c
    # Line 481
    li	$a0,2
    # Line 480
    sltu	$v1,$zero,$a1
    # Line 481
    b	.L0db051bc
    # Line 480
    sb	$v1,1108($a3)
.L0db052a0:
    # Line 353
    bnez	$a2,.L0db0534c
    sltiu	$at,$a0,3317
    beqz	$at,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 463
    bltz	$a1,.L0db05534
    # Line 468
    li	$a0,2
    b	.L0db051bc
    # Line 467
    sw	$a1,1120($a3)
.L0db052c0:
    # Line 353
    sltiu	$v0,$a0,3329
    bnez	$v0,.L0db05368
    sltiu	$v1,$a0,3330
    beqz	$v1,.L0db0532c
    # Line 418
    li	$a0,2
    # Line 417
    sltu	$a2,$zero,$a1
    # Line 418
    b	.L0db051bc
    # Line 417
    sb	$a2,1073($a3)
.L0db052e0:
    # Line 353
    li	$a4,0x806b
    sltu	$at,$a0,$a4
    bnez	$at,.L0db05380
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 383
    bltz	$a1,.L0db05514
    # Line 388
    li	$a0,2
    b	.L0db051bc
    # Line 387
    sw	$a1,1092($a3)
.L0db05308:
    # Line 353
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0db053cc
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0db05440
    li	$v1,0x8133
    # Line 442
    bltz	$a1,.L0db055b4
    # Line 447
    li	$a0,2
    b	.L0db051bc
    # Line 446
    sw	$a1,1136($a3)
.L0db0532c:
    # Line 486
    # lw $t9, -27320($gp) # &__glSetError
.L0db05330:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 487
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db0534c:
    # Line 353
    li	$at,3315
    bne	$a0,$at,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 456
    bltz	$a1,.L0db05594
    # Line 461
    li	$a0,2
    b	.L0db051bc
    # Line 460
    sw	$a1,1116($a3)
.L0db05368:
    # Line 353
    li	$v0,3328
    bne	$a0,$v0,.L0db0532c
    # Line 415
    li	$a0,2
    # Line 414
    sltu	$v1,$zero,$a1
    # Line 415
    b	.L0db051bc
    # Line 414
    sb	$v1,1072($a3)
.L0db05380:
    # Line 353
    li	$a2,3333
    bne	$a0,$a2,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 404
    beq	$a1,$a5,.L0db053ac
    li	$a0,2
    beq	$a1,$a0,.L0db053ac
    li	$at,4
    beq	$a1,$at,.L0db053ac
    li	$v0,8
    bne	$a1,$v0,.L0db05478
    # Line 409
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db053ac:
    # Line 406
    b	.L0db051bc
    sw	$a1,1088($a3)
.L0db053b4:
    # Line 353
    bne	$a0,$v1,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 449
    bltz	$a1,.L0db05574
    # Line 454
    li	$a0,2
    b	.L0db051bc
    # Line 453
    sw	$a1,1128($a3)
.L0db053cc:
    # Line 353
    li	$a4,0x8131
    sltu	$a2,$a0,$a4
    bnez	$a2,.L0db05424
    sltu	$at,$a4,$a0
    bnez	$at,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 355
    bltz	$a1,.L0db055d4
    # Line 360
    li	$a0,2
    b	.L0db051bc
    # Line 359
    sw	$a1,1104($a3)
.L0db053f4:
    # Line 369
    bltz	$a1,.L0db054f4
    # Line 374
    li	$a0,2
    b	.L0db051bc
    # Line 373
    sw	$a1,1076($a3)
.L0db05404:
    # Line 349
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05424:
    # Line 353
    li	$v0,0x8130
    bne	$a0,$v0,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 376
    bltz	$a1,.L0db055f4
    # Line 381
    li	$a0,2
    b	.L0db051bc
    # Line 380
    sw	$a1,1100($a3)
.L0db05440:
    # Line 353
    bne	$a0,$v1,.L0db05330
    # Line 486
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 421
    bltz	$a1,.L0db05614
    # Line 426
    li	$a0,2
    b	.L0db051bc
    # Line 425
    sw	$a1,1140($a3)
.L0db05458:
    # Line 398
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 399
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05478:
    sd	$ra,8($sp)
    # Line 409
    jalr	$t9
    li	$a0,1281
    # Line 410
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05494:
    # Line 429
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 430
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db054b4:
    # Line 436
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 437
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db054d4:
    # Line 363
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 364
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db054f4:
    # Line 370
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 371
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05514:
    # Line 384
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 385
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05534:
    # Line 464
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 465
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05554:
    # Line 391
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 392
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05574:
    # Line 450
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 451
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05594:
    # Line 457
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 458
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db055b4:
    # Line 443
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 444
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db055d4:
    # Line 356
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 357
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db055f4:
    # Line 377
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 378
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05614:
    # Line 422
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 423
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PixelStorei

# Function: __glim_PixelZoom
# Declared: Line 495 (Source lines: 496-520)
# Address: 0x0db05634 - 0x0db05730 (Size: 252 bytes, Frame: 32)
.globl __glim_PixelZoom
.ent __glim_PixelZoom
__glim_PixelZoom:
    # Line 499
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 496
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 499
    lw	$at,__glBeginMode
    # Line 496
    lui	$v1,0x10
    addiu	$v1,$v1,-28572
    # Line 499
    beq	$at,$v0,.L0db05710
    # Line 496
    addu	$gp,$t9,$v1
    # Line 499
    mtc1	$zero,$f7
    lwc1	$f5,3280($a1)
    c.lt.s	$f7,$f12
    lwc1	$f4,3388($a1)
    # Line 519
    li	$at,2
    # Line 499
    bc1f	.L0db05688
    div.s	$f6,$f12,$f4
    # Line 505
    add.s	$f0,$f5,$f6
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    b	.L0db05698
    nop
.L0db05688:
    # Line 507
    sub.s	$f1,$f6,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    nop
.L0db05698:
    c.lt.s	$f7,$f13
    nop
    bc1f	.L0db056bc
    div.s	$f6,$f13,$f4
    # Line 510
    add.s	$f2,$f5,$f6
    trunc.w.s	$f2,$f2
    mfc1	$a3,$f2
    b	.L0db056cc
    nop
.L0db056bc:
    # Line 512
    sub.s	$f3,$f6,$f5
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
    nop
.L0db056cc:
    ld	$gp,0($sp)
    # Line 517
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 515
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 517
    mul.s	$f0,$f0,$f4
    # Line 515
    mul.s	$f4,$f1,$f4
    # Line 518
    swc1	$f4,724($a1)
    # Line 517
    swc1	$f0,720($a1)
    # Line 519
    sw	$at,__glBeginMode
    lw	$a0,11828($a1)
    # Line 520
    addiu	$sp,$sp,32
    # Line 519
    ori	$a0,$a0,0x10
    # Line 520
    jr	$ra
    # Line 519
    sw	$a0,11828($a1)
.L0db05710:
    # Line 499
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PixelZoom

# Function: __glim_PixelTransferf
# Declared: Line 525 (Source lines: 526-638)
# Address: 0x0db05730 - 0x0db05af0 (Size: 960 bytes, Frame: 32)
.globl __glim_PixelTransferf
.ent __glim_PixelTransferf
__glim_PixelTransferf:
    # Line 528
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 526
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 528
    lw	$at,__glBeginMode
    # Line 526
    lui	$v1,0x10
    addiu	$v1,$v1,-28824
    # Line 528
    beq	$at,$v0,.L0db05a34
    # Line 526
    addu	$gp,$t9,$v1
    # Line 528
    li	$a3,0x801d
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0db057b0
    # Line 532
    sltu	$at,$a3,$a0
    beqz	$at,.L0db0582c
    li	$a3,0x80b5
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db05850
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0db05988
    li	$a3,0x80b9
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0db05990
    sltu	$at,$a3,$a0
    beqz	$at,.L0db05a90
    li	$a3,0x80bb
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db05ac4
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 610
    b	.L0db05830
    # Line 609
    swc1	$f13,716($a2)
.L0db057b0:
    # Line 532
    sltiu	$a1,$a0,3353
    bnez	$a1,.L0db057f4
    sltiu	$at,$a0,3354
    bnez	$at,.L0db058cc
    sltiu	$v0,$a0,3357
    bnez	$v0,.L0db058d4
    sltiu	$v1,$a0,3358
    bnez	$v1,.L0db05a08
    sltiu	$a1,$a0,3359
    bnez	$a1,.L0db05a54
    sltiu	$at,$a0,3360
    bnez	$at,.L0db05ad8
    li	$v0,0x801c
    bne	$a0,$v0,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 565
    b	.L0db05830
    # Line 564
    swc1	$f13,656($a2)
.L0db057f4:
    # Line 532
    sltiu	$v1,$a0,3347
    bnez	$v1,.L0db0588c
    sltiu	$a1,$a0,3348
    beqz	$a1,.L0db05964
    # Line 621
    mtc1	$zero,$f0
    c.lt.s	$f0,$f13
    nop
    bc1f	.L0db059f4
    lwc1	$f4,3280($a2)
    # Line 622
    add.s	$f1,$f4,$f13
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    b	.L0db05830
    sw	$at,732($a2)
.L0db0582c:
    # Line 567
    swc1	$f13,660($a2)
.L0db05830:
    # Line 637
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11828($a2)
    ld	$gp,0($sp)
    # Line 638
    addiu	$sp,$sp,32
    # Line 637
    ori	$v0,$v0,0x10
    # Line 638
    jr	$ra
    # Line 637
    sw	$v0,11828($a2)
.L0db05850:
    # Line 532
    li	$a3,0x8021
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0db058f8
    sltu	$at,$a3,$a0
    beqz	$at,.L0db05a10
    li	$a3,0x8023
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db05a68
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0db05ae0
    li	$a1,0x80b4
    bne	$a0,$a1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 589
    b	.L0db05830
    # Line 588
    swc1	$f13,688($a2)
.L0db0588c:
    # Line 532
    sltiu	$at,$a0,3345
    bnez	$at,.L0db05920
    sltiu	$v0,$a0,3346
    bnez	$v0,.L0db05a18
    li	$v1,3346
    bne	$a0,$v1,.L0db05944
    # Line 613
    mtc1	$zero,$f2
    c.lt.s	$f2,$f13
    nop
    bc1f	.L0db05ab0
    lwc1	$f4,3280($a2)
    # Line 614
    add.s	$f3,$f4,$f13
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    b	.L0db05830
    sw	$a1,728($a2)
.L0db058cc:
    # Line 553
    b	.L0db05830
    # Line 552
    swc1	$f13,640($a2)
.L0db058d4:
    # Line 532
    sltiu	$at,$a0,3355
    bnez	$at,.L0db059b8
    sltiu	$v0,$a0,3356
    bnez	$v0,.L0db05a98
    li	$v1,3356
    bne	$a0,$v1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 544
    b	.L0db05830
    # Line 543
    swc1	$f13,628($a2)
.L0db058f8:
    # Line 532
    li	$a3,0x801f
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0db059cc
    sltu	$at,$a3,$a0
    beqz	$at,.L0db05aa0
    li	$v0,0x8020
    bne	$a0,$v0,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 577
    b	.L0db05830
    # Line 576
    swc1	$f13,672($a2)
.L0db05920:
    # Line 532
    li	$v1,3344
    bne	$a0,$v1,.L0db05944
    # Line 628
    mtc1	$zero,$f0
    c.eq.s	$f13,$f0
    li	$a1,1
    bc1tl	.L0db0593c
    move	$a1,$zero
.L0db0593c:
    # Line 629
    b	.L0db05830
    # Line 628
    sb	$a1,736($a2)
.L0db05944:
    # Line 634
    # lw $t9, -27320($gp) # &__glSetError
.L0db05948:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 635
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05964:
    # Line 532
    sltiu	$at,$a0,3349
    bnez	$at,.L0db059e0
    sltiu	$v0,$a0,3350
    bnez	$v0,.L0db05aa8
    li	$v1,3352
    bne	$a0,$v1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 538
    b	.L0db05830
    # Line 537
    swc1	$f13,620($a2)
.L0db05988:
    # Line 592
    b	.L0db05830
    # Line 591
    swc1	$f13,692($a2)
.L0db05990:
    # Line 532
    li	$a3,0x80b7
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0db05a7c
    sltu	$at,$a3,$a0
    beqz	$at,.L0db05ae8
    li	$v0,0x80b8
    bne	$a0,$v0,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 601
    b	.L0db05830
    # Line 600
    swc1	$f13,704($a2)
.L0db059b8:
    # Line 532
    li	$v1,3354
    bne	$a0,$v1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 541
    b	.L0db05830
    # Line 540
    swc1	$f13,624($a2)
.L0db059cc:
    # Line 532
    li	$a1,0x801e
    bne	$a0,$a1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 571
    b	.L0db05830
    # Line 570
    swc1	$f13,664($a2)
.L0db059e0:
    # Line 532
    li	$at,3348
    bne	$a0,$at,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 535
    b	.L0db05830
    # Line 534
    swc1	$f13,616($a2)
.L0db059f4:
    # Line 624
    sub.s	$f1,$f13,$f4
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    b	.L0db05830
    sw	$v0,732($a2)
.L0db05a08:
    # Line 559
    b	.L0db05830
    # Line 558
    swc1	$f13,648($a2)
.L0db05a10:
    # Line 580
    b	.L0db05830
    # Line 579
    swc1	$f13,676($a2)
.L0db05a18:
    # Line 631
    mtc1	$zero,$f2
    c.eq.s	$f13,$f2
    li	$v1,1
    bc1tl	.L0db05a2c
    move	$v1,$zero
.L0db05a2c:
    # Line 632
    b	.L0db05830
    # Line 631
    sb	$v1,737($a2)
.L0db05a34:
    # Line 528
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db05a54:
    # Line 532
    li	$a1,3358
    bne	$a0,$a1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 547
    b	.L0db05830
    # Line 546
    swc1	$f13,632($a2)
.L0db05a68:
    # Line 532
    li	$at,0x8022
    bne	$a0,$at,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 583
    b	.L0db05830
    # Line 582
    swc1	$f13,680($a2)
.L0db05a7c:
    # Line 532
    li	$v0,0x80b6
    bne	$a0,$v0,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 595
    b	.L0db05830
    # Line 594
    swc1	$f13,696($a2)
.L0db05a90:
    # Line 604
    b	.L0db05830
    # Line 603
    swc1	$f13,708($a2)
.L0db05a98:
    # Line 556
    b	.L0db05830
    # Line 555
    swc1	$f13,644($a2)
.L0db05aa0:
    # Line 574
    b	.L0db05830
    # Line 573
    swc1	$f13,668($a2)
.L0db05aa8:
    # Line 550
    b	.L0db05830
    # Line 549
    swc1	$f13,636($a2)
.L0db05ab0:
    # Line 616
    sub.s	$f3,$f13,$f4
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    b	.L0db05830
    sw	$v1,728($a2)
.L0db05ac4:
    # Line 532
    li	$a1,0x80ba
    bne	$a0,$a1,.L0db05948
    # Line 634
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 607
    b	.L0db05830
    # Line 606
    swc1	$f13,712($a2)
.L0db05ad8:
    # Line 562
    b	.L0db05830
    # Line 561
    swc1	$f13,652($a2)
.L0db05ae0:
    # Line 586
    b	.L0db05830
    # Line 585
    swc1	$f13,684($a2)
.L0db05ae8:
    # Line 598
    b	.L0db05830
    # Line 597
    swc1	$f13,700($a2)
.end __glim_PixelTransferf

# Function: __glim_PixelTransferi
# Declared: Line 640 (Source lines: 641-643)
# Address: 0x0db05af0 - 0x0db05b28 (Size: 56 bytes, Frame: 32)
.globl __glim_PixelTransferi
.ent __glim_PixelTransferi
__glim_PixelTransferi:
    # Line 641
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x10
    addiu	$at,$at,-29784
    addu	$gp,$t9,$at
    # Line 642
    # lw $t9, -29188($gp) # &__glim_PixelTransferf
    mtc1	$a1,$f13
    sd	$ra,0($sp)
    bal __glim_PixelTransferf
    cvt.s.w	$f13,$f13
    # Line 643
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PixelTransferi

# Function: __glim_PixelMapfv
# Declared: Line 650 (Source lines: 652-744)
# Address: 0x0db05b28 - 0x0db05fb4 (Size: 1164 bytes, Frame: 224)
.globl __glim_PixelMapfv
.ent __glim_PixelMapfv
__glim_PixelMapfv:
    # Line 657
    li	$v0,1
    # Line 652
    addiu	$sp,$sp,-96
    sd	$s1,16($sp)
    # Line 657
    lw	$s1,__glCurrentContext
    sd	$s2,32($sp)
    # Line 652
    move	$s2,$a1
    sd	$gp,24($sp)
    # Line 657
    lw	$at,__glBeginMode
    # Line 652
    lui	$v1,0x10
    addiu	$v1,$v1,-29840
    # Line 657
    beq	$at,$v0,.L0db05f8c
    # Line 652
    addu	$gp,$t9,$v1
    # Line 662
    blez	$s2,.L0db05ee4
    # Line 667
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 662
    lw	$a3,3476($s1)
    slt	$a3,$a3,$s2
    bnez	$a3,.L0db05ee0
    # Line 668
    addiu	$a1,$a0,-3184
    la	$a3,sub_0dbf0000
    sltiu	$at,$a1,10
    sll	$a1,$a1,0x2
    addiu	$a3,$a3,-4528
    beqz	$at,.L0db05f28
    addu	$a1,$a1,$a3
    lw	$a3,%lo(jtbl_0dbeee50)($a1)
    jr	$a3
    # Line 716
    lui	$at,0xffff
.L0db05b94:
    # Line 674
    addiu	$at,$s2,-1
    and	$at,$at,$s2
    beqz	$at,.L0db05d68
    # Line 680
    lui	$at,0xffff
    # Line 679
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 680
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db05bcc:
    # Line 708
    addiu	$v0,$s2,-1
    and	$v0,$v0,$s2
    beqzl	$v0,.L0db05c08
    sd	$s0,0($sp)
    # Line 713
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 714
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db05c04:
    sd	$s0,0($sp)
.L0db05c08:
    # Line 716
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    addu	$s0,$s0,$at
    lw	$a1,28288($s0)
    sd	$ra,40($sp)
    beqz	$a1,.L0db05c40
    sd	$a2,8($sp)
    # Line 721
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    sd	$s4,48($sp)
    # Line 722
    sw	$zero,28288($s0)
.L0db05c40:
    # Line 725
    move	$a0,$s1
    lw	$t9,0($s1)
    sd	$s4,48($sp)
    sll	$s4,$s2,0x2
    jalr	$t9
    move	$a1,$s4
    # Line 732
    ld	$a0,8($sp)
    # Line 725
    sw	$v0,28288($s0)
    beqz	$v0,.L0db05f08
    ld	$ra,40($sp)
    # Line 732
    addiu	$s4,$s4,-4
    # Line 731
    sw	$s2,28280($s0)
    # Line 732
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db05cc4
    mtc1	$zero,$f5
    addiu	$a4,$a0,-4
    addiu	$a1,$s2,1
    andi	$at,$a1,0x1
    beqz	$at,.L0db05cb8
    addu	$a0,$s4,$a0
    # Line 733
    lwc1	$f4,0($a0)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db05f50
    # Line 732
    addiu	$a0,$a0,-4
    # Line 734
    mov.s	$f4,$f5
.L0db05ca8:
    # Line 736
    lw	$a3,28288($s0)
.L0db05cac:
    addu	$a3,$a3,$s4
    # Line 732
    addiu	$s4,$s4,-4
    # Line 736
    swc1	$f4,0($a3)
.L0db05cb8:
    sra	$at,$a1,0x1
    bnezl	$at,.L0db05d14
    # Line 733
    lwc1	$f4,0($a0)
.L0db05cc4:
    # Line 738
    sb	$zero,30640($s1)
.L0db05cc8:
    ld	$gp,24($sp)
.L0db05ccc:
    # Line 744
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db05ce4:
    # Line 734
    lwc1	$f6,3284($s1)
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db05d00
    # Line 736
    lw	$v0,28288($s0)
    # Line 735
    mov.s	$f4,$f6
.L0db05cfc:
    # Line 736
    lw	$v0,28288($s0)
.L0db05d00:
    addu	$v0,$v0,$s4
    # Line 732
    addiu	$s4,$s4,-4
    beq	$a0,$a4,.L0db05cc4
    # Line 736
    swc1	$f4,0($v0)
    # Line 733
    lwc1	$f4,0($a0)
.L0db05d14:
    c.lt.s	$f4,$f5
    nop
    bc1fl	.L0db05d50
    # Line 734
    lwc1	$f6,3284($s1)
    mov.s	$f4,$f5
.L0db05d28:
    # Line 736
    lw	$v1,28288($s0)
.L0db05d2c:
    addu	$v1,$v1,$s4
    swc1	$f4,0($v1)
    # Line 733
    lwc1	$f4,-4($a0)
    c.lt.s	$f4,$f5
    # Line 732
    addiu	$a0,$a0,-8
    # Line 733
    bc1f	.L0db05ce4
    # Line 732
    addiu	$s4,$s4,-4
    # Line 734
    b	.L0db05cfc
    mov.s	$f4,$f5
.L0db05d50:
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db05d2c
    # Line 736
    lw	$v1,28288($s0)
    b	.L0db05d28
    # Line 735
    mov.s	$f4,$f6
.L0db05d68:
    sd	$s0,0($sp)
    # Line 680
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    addu	$s0,$s0,$at
    lw	$a1,28288($s0)
    sd	$ra,40($sp)
    beqz	$a1,.L0db05da4
    sd	$a2,8($sp)
    # Line 683
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    sd	$s4,48($sp)
    # Line 684
    sw	$zero,28288($s0)
.L0db05da4:
    # Line 686
    move	$a0,$s1
    lw	$t9,0($s1)
    sd	$s4,48($sp)
    sll	$s4,$s2,0x2
    jalr	$t9
    move	$a1,$s4
    sw	$v0,28288($s0)
    beqz	$v0,.L0db05f6c
    ld	$ra,40($sp)
    # Line 693
    addiu	$s4,$s4,-4
    # Line 692
    sw	$s2,28280($s0)
    # Line 693
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db05cc8
    mtc1	$zero,$f5
    addiu	$a5,$s2,1
    ld	$a0,8($sp)
    andi	$at,$a5,0x1
    addiu	$a4,$a0,-4
    beqz	$at,.L0db05e3c
    addu	$a0,$s4,$a0
    # Line 694
    lwc1	$f4,0($a0)
    c.lt.s	$f5,$f4
    lw	$a1,28288($s0)
    lwc1	$f6,3280($s1)
    bc1f	.L0db05e20
    addu	$a1,$s4,$a1
    # Line 696
    add.s	$f0,$f6,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a3,$f0
    b	.L0db05e34
    sw	$a3,0($a1)
.L0db05e20:
    # Line 699
    sub.s	$f1,$f4,$f6
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sw	$at,0($a1)
.L0db05e34:
    # Line 693
    addiu	$a0,$a0,-4
    addiu	$s4,$s4,-4
.L0db05e3c:
    sra	$v0,$a5,0x1
    bnezl	$v0,.L0db05e70
    # Line 694
    lwc1	$f4,0($a0)
.L0db05e48:
    b	.L0db05ccc
    ld	$gp,24($sp)
.L0db05e50:
    # Line 699
    sub.s	$f2,$f4,$f6
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,0($a1)
.L0db05e64:
    # Line 693
    beq	$a0,$a4,.L0db05e48
    addiu	$s4,$s4,-4
    # Line 694
    lwc1	$f4,0($a0)
.L0db05e70:
    c.lt.s	$f5,$f4
    lw	$a1,28288($s0)
    lwc1	$f6,3280($s1)
    bc1f	.L0db05e98
    addu	$a1,$s4,$a1
    # Line 696
    add.s	$f3,$f6,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
    b	.L0db05eac
    sw	$a3,0($a1)
.L0db05e98:
    # Line 699
    sub.s	$f0,$f4,$f6
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,0($a1)
.L0db05eac:
    # Line 694
    lwc1	$f4,-4($a0)
    lwc1	$f6,3280($s1)
    # Line 693
    addiu	$a0,$a0,-8
    # Line 694
    c.lt.s	$f5,$f4
    lw	$a1,28288($s0)
    # Line 693
    addiu	$s4,$s4,-4
    # Line 694
    bc1f	.L0db05e50
    addu	$a1,$s4,$a1
    # Line 696
    add.s	$f1,$f6,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    b	.L0db05e64
    sw	$a3,0($a1)
.L0db05ee0:
    # Line 667
    # lw $t9, -27320($gp) # &__glSetError
.L0db05ee4:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 668
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db05f08:
    ld	$gp,24($sp)
    # Line 728
    sw	$zero,28280($s0)
    # Line 729
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db05f28:
    # Line 741
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 742
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db05f50:
    # Line 734
    lwc1	$f6,3284($s1)
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db05cac
    # Line 736
    lw	$a3,28288($s0)
    b	.L0db05ca8
    # Line 735
    mov.s	$f4,$f6
.L0db05f6c:
    ld	$gp,24($sp)
    # Line 689
    sw	$zero,28280($s0)
    # Line 690
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db05f8c:
    # Line 657
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_PixelMapfv

# Function: __glim_PixelMapuiv
# Declared: Line 746 (Source lines: 748-829)
# Address: 0x0db05fb4 - 0x0db063a4 (Size: 1008 bytes, Frame: 224)
.globl __glim_PixelMapuiv
.ent __glim_PixelMapuiv
__glim_PixelMapuiv:
    # Line 752
    li	$v0,1
    # Line 748
    addiu	$sp,$sp,-96
    sd	$s1,16($sp)
    # Line 752
    lw	$s1,__glCurrentContext
    sd	$s2,32($sp)
    # Line 748
    move	$s2,$a1
    sd	$gp,24($sp)
    # Line 752
    lw	$at,__glBeginMode
    # Line 748
    lui	$v1,0x10
    addiu	$v1,$v1,-31004
    # Line 752
    beq	$at,$v0,.L0db0637c
    # Line 748
    addu	$gp,$t9,$v1
    # Line 757
    blez	$s2,.L0db062f0
    # Line 762
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 757
    lw	$a3,3476($s1)
    slt	$a3,$a3,$s2
    bnez	$a3,.L0db062ec
    # Line 763
    addiu	$a1,$a0,-3184
    la	$a3,sub_0dbf0000
    sltiu	$at,$a1,10
    sll	$a1,$a1,0x2
    addiu	$a3,$a3,-4488
    beqz	$at,.L0db06334
    addu	$a1,$a1,$a3
    lw	$a3,%lo(jtbl_0dbeee78)($a1)
    jr	$a3
    # Line 804
    lui	$at,0xffff
.L0db06020:
    # Line 769
    addiu	$at,$s2,-1
    and	$at,$at,$s2
    beqz	$at,.L0db061f4
    # Line 775
    lui	$at,0xffff
    # Line 774
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 775
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db06058:
    # Line 796
    addiu	$v0,$s2,-1
    and	$v0,$v0,$s2
    beqzl	$v0,.L0db06094
    sd	$s0,0($sp)
    # Line 801
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 802
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db06090:
    sd	$s0,0($sp)
.L0db06094:
    # Line 804
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    addu	$s0,$s0,$at
    lw	$a1,28288($s0)
    sd	$ra,40($sp)
    beqz	$a1,.L0db060cc
    sd	$a2,8($sp)
    # Line 809
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    sd	$s4,48($sp)
    # Line 810
    sw	$zero,28288($s0)
.L0db060cc:
    # Line 812
    move	$a0,$s1
    lw	$t9,0($s1)
    sd	$s4,48($sp)
    sll	$s4,$s2,0x2
    jalr	$t9
    move	$a1,$s4
    sw	$v0,28288($s0)
    beqz	$v0,.L0db06314
    ld	$ra,40($sp)
    # Line 819
    addiu	$s4,$s4,-4
    # Line 818
    sw	$s2,28280($s0)
    # Line 819
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db061d4
    ld	$a0,8($sp)
    addiu	$a1,$s2,1
    andi	$at,$a1,0x1
    addiu	$a4,$a0,-4
    beqz	$at,.L0db0614c
    addu	$a0,$s4,$a0
    # Line 820
    lw	$at,0($a0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($s1)
    mul.s	$f0,$f0,$f1
    lw	$a3,28288($s0)
    # Line 819
    addiu	$a0,$a0,-4
    # Line 820
    addu	$a3,$a3,$s4
    # Line 819
    addiu	$s4,$s4,-4
    # Line 820
    swc1	$f0,0($a3)
.L0db0614c:
    move	$a2,$s4
    ld	$s4,48($sp)
    move	$a5,$a0
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db061d4
    move	$a0,$a5
    move	$a1,$a2
    ld	$s4,48($sp)
.L0db0616c:
    lw	$v1,0($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($s1)
    mul.s	$f0,$f0,$f1
    lw	$v0,28288($s0)
    addu	$v0,$v0,$a1
    swc1	$f0,0($v0)
    lw	$at,-4($a0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f2,3308($s1)
    mul.s	$f2,$f2,$f3
    # Line 819
    addiu	$a0,$a0,-8
    # Line 820
    lw	$v1,28288($s0)
    # Line 819
    addiu	$a3,$a1,-4
    addiu	$a1,$a3,-4
    # Line 820
    addu	$v1,$v1,$a3
    # Line 819
    bne	$a0,$a4,.L0db0616c
    # Line 820
    swc1	$f2,0($v1)
.L0db061d4:
    # Line 823
    sb	$zero,30640($s1)
.L0db061d8:
    ld	$gp,24($sp)
.L0db061dc:
    # Line 829
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db061f4:
    sd	$s0,0($sp)
    # Line 775
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    addu	$s0,$s0,$at
    lw	$a1,28288($s0)
    sd	$ra,40($sp)
    beqz	$a1,.L0db06230
    sd	$a2,8($sp)
    # Line 778
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    sd	$s4,48($sp)
    # Line 779
    sw	$zero,28288($s0)
.L0db06230:
    # Line 781
    move	$a0,$s1
    lw	$t9,0($s1)
    sd	$s4,48($sp)
    sll	$s4,$s2,0x2
    jalr	$t9
    move	$a1,$s4
    sw	$v0,28288($s0)
    beqz	$v0,.L0db0635c
    ld	$ra,40($sp)
    # Line 788
    addiu	$s4,$s4,-4
    # Line 787
    sw	$s2,28280($s0)
    # Line 788
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db061d8
    addiu	$a1,$s2,1
    ld	$a0,8($sp)
    andi	$at,$a1,0x1
    addiu	$a4,$a0,-4
    beqz	$at,.L0db06294
    addu	$a0,$s4,$a0
    # Line 789
    lw	$at,28288($s0)
    # Line 788
    addiu	$a0,$a0,-4
    # Line 789
    lw	$a3,4($a0)
    addu	$at,$at,$s4
    # Line 788
    addiu	$s4,$s4,-4
    # Line 789
    sw	$a3,0($at)
.L0db06294:
    sra	$v0,$a1,0x1
    move	$a2,$a0
    move	$a5,$s4
    beqz	$v0,.L0db062e4
    ld	$s4,48($sp)
    move	$a0,$a5
    move	$a1,$a2
    ld	$s4,48($sp)
.L0db062b4:
    lw	$v1,28288($s0)
    lw	$v0,0($a1)
    # Line 788
    addiu	$a1,$a1,-8
    # Line 789
    addu	$v1,$v1,$a0
    sw	$v0,0($v1)
    # Line 788
    addiu	$at,$a0,-4
    # Line 789
    lw	$a3,28288($s0)
    # Line 788
    addiu	$a0,$at,-4
    # Line 789
    lw	$v1,4($a1)
    addu	$a3,$a3,$at
    # Line 788
    bne	$a1,$a4,.L0db062b4
    # Line 789
    sw	$v1,0($a3)
.L0db062e4:
    b	.L0db061dc
    ld	$gp,24($sp)
.L0db062ec:
    # Line 762
    # lw $t9, -27320($gp) # &__glSetError
.L0db062f0:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 763
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db06314:
    ld	$gp,24($sp)
    # Line 815
    sw	$zero,28280($s0)
    # Line 816
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db06334:
    # Line 826
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 827
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db0635c:
    ld	$gp,24($sp)
    # Line 784
    sw	$zero,28280($s0)
    # Line 785
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db0637c:
    # Line 752
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_PixelMapuiv

# Function: __glim_PixelMapusv
# Declared: Line 831 (Source lines: 833-914)
# Address: 0x0db063a4 - 0x0db06784 (Size: 992 bytes, Frame: 224)
.globl __glim_PixelMapusv
.ent __glim_PixelMapusv
__glim_PixelMapusv:
    # Line 837
    li	$v0,1
    # Line 833
    addiu	$sp,$sp,-96
    sd	$s1,16($sp)
    # Line 837
    lw	$s1,__glCurrentContext
    sd	$s2,32($sp)
    # Line 833
    move	$s2,$a1
    sd	$gp,24($sp)
    # Line 837
    lw	$at,__glBeginMode
    # Line 833
    lui	$v1,0x10
    addiu	$v1,$v1,-32012
    # Line 837
    beq	$at,$v0,.L0db0675c
    # Line 833
    addu	$gp,$t9,$v1
    # Line 842
    blez	$s2,.L0db066d0
    # Line 847
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 842
    lw	$a3,3476($s1)
    slt	$a3,$a3,$s2
    bnez	$a3,.L0db066cc
    # Line 848
    addiu	$a1,$a0,-3184
    la	$a3,sub_0dbf0000
    sltiu	$at,$a1,10
    sll	$a1,$a1,0x2
    addiu	$a3,$a3,-4448
    beqz	$at,.L0db06714
    addu	$a1,$a1,$a3
    lw	$a3,%lo(jtbl_0dbeeea0)($a1)
    jr	$a3
    # Line 889
    lui	$at,0xffff
.L0db06410:
    # Line 854
    addiu	$at,$s2,-1
    and	$at,$at,$s2
    beqz	$at,.L0db065d0
    # Line 860
    lui	$at,0xffff
    # Line 859
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 860
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db06448:
    # Line 881
    addiu	$v0,$s2,-1
    and	$v0,$v0,$s2
    beqzl	$v0,.L0db06484
    sd	$s0,0($sp)
    # Line 886
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 887
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db06480:
    sd	$s0,0($sp)
.L0db06484:
    # Line 889
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    addu	$s0,$s0,$at
    lw	$a1,28288($s0)
    sd	$ra,40($sp)
    beqz	$a1,.L0db064bc
    sd	$a2,8($sp)
    # Line 894
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    sd	$s4,48($sp)
    # Line 895
    sw	$zero,28288($s0)
.L0db064bc:
    # Line 897
    move	$a0,$s1
    lw	$t9,0($s1)
    sd	$s4,48($sp)
    sll	$s4,$s2,0x2
    jalr	$t9
    move	$a1,$s4
    sw	$v0,28288($s0)
    # Line 904
    ld	$a3,8($sp)
    # Line 897
    beqz	$v0,.L0db066f4
    ld	$ra,40($sp)
    # Line 904
    addiu	$s4,$s4,-4
    # Line 903
    sw	$s2,28280($s0)
    # Line 904
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db065b0
    addiu	$a1,$s2,1
    li	$a4,-4
    addu	$a0,$s2,$s2
    andi	$at,$a1,0x1
    beqz	$at,.L0db06538
    addu	$a0,$a0,$a3
    # Line 905
    lhu	$v0,0($a0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($s1)
    mul.s	$f0,$f0,$f1
    lw	$at,28288($s0)
    # Line 904
    addiu	$a0,$a0,-2
    # Line 905
    addu	$at,$at,$s4
    # Line 904
    addiu	$s4,$s4,-4
    # Line 905
    swc1	$f0,0($at)
.L0db06538:
    move	$a2,$s4
    ld	$s4,48($sp)
    move	$a5,$a0
    sra	$v1,$a1,0x1
    beqz	$v1,.L0db065b0
    move	$a1,$a5
    move	$a0,$a2
    ld	$s4,48($sp)
.L0db06558:
    lhu	$a3,0($a1)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($s1)
    mul.s	$f0,$f0,$f1
    lw	$v1,28288($s0)
    addu	$v1,$v1,$a0
    swc1	$f0,0($v1)
    lhu	$v0,-2($a1)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($s1)
    mul.s	$f2,$f2,$f3
    # Line 904
    addiu	$a1,$a1,-4
    # Line 905
    lw	$a3,28288($s0)
    # Line 904
    addiu	$at,$a0,-4
    addiu	$a0,$at,-4
    # Line 905
    addu	$a3,$a3,$at
    # Line 904
    bne	$a4,$a0,.L0db06558
    # Line 905
    swc1	$f2,0($a3)
.L0db065b0:
    # Line 908
    sb	$zero,30640($s1)
.L0db065b4:
    ld	$gp,24($sp)
.L0db065b8:
    # Line 914
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db065d0:
    sd	$s0,0($sp)
    # Line 860
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    addu	$s0,$s0,$at
    lw	$a1,28288($s0)
    sd	$ra,40($sp)
    beqz	$a1,.L0db0660c
    sd	$a2,8($sp)
    # Line 863
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    sd	$s4,48($sp)
    # Line 864
    sw	$zero,28288($s0)
.L0db0660c:
    # Line 866
    move	$a0,$s1
    lw	$t9,0($s1)
    sd	$s4,48($sp)
    sll	$s4,$s2,0x2
    jalr	$t9
    move	$a1,$s4
    sw	$v0,28288($s0)
    beqz	$v0,.L0db0673c
    ld	$ra,40($sp)
    # Line 873
    addiu	$s4,$s4,-4
    # Line 872
    sw	$s2,28280($s0)
    # Line 873
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db065b4
    li	$a4,-4
    addu	$a0,$s2,$s2
    addiu	$a1,$s2,1
    ld	$a3,8($sp)
    andi	$at,$a1,0x1
    beqz	$at,.L0db06674
    addu	$a0,$a0,$a3
    # Line 874
    lw	$v0,28288($s0)
    # Line 873
    addiu	$a0,$a0,-2
    # Line 874
    lhu	$at,2($a0)
    addu	$v0,$v0,$s4
    # Line 873
    addiu	$s4,$s4,-4
    # Line 874
    sw	$at,0($v0)
.L0db06674:
    sra	$v1,$a1,0x1
    move	$a2,$a0
    move	$a5,$s4
    beqz	$v1,.L0db066c4
    ld	$s4,48($sp)
    move	$a1,$a5
    move	$a0,$a2
    ld	$s4,48($sp)
.L0db06694:
    lw	$a3,28288($s0)
    lhu	$v1,0($a0)
    # Line 873
    addiu	$a0,$a0,-4
    # Line 874
    addu	$a3,$a3,$a1
    sw	$v1,0($a3)
    # Line 873
    addiu	$v0,$a1,-4
    # Line 874
    lw	$at,28288($s0)
    # Line 873
    addiu	$a1,$v0,-4
    # Line 874
    lhu	$a3,2($a0)
    addu	$at,$at,$v0
    # Line 873
    bne	$a4,$a1,.L0db06694
    # Line 874
    sw	$a3,0($at)
.L0db066c4:
    b	.L0db065b8
    ld	$gp,24($sp)
.L0db066cc:
    # Line 847
    # lw $t9, -27320($gp) # &__glSetError
.L0db066d0:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 848
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db066f4:
    ld	$gp,24($sp)
    # Line 900
    sw	$zero,28280($s0)
    # Line 901
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db06714:
    # Line 911
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 912
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db0673c:
    ld	$gp,24($sp)
    # Line 869
    sw	$zero,28280($s0)
    # Line 870
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db0675c:
    # Line 837
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_PixelMapusv

# Function: __glim_ReadBuffer
# Declared: Line 919 (Source lines: 920-960)
# Address: 0x0db06784 - 0x0db068c4 (Size: 320 bytes, Frame: 32)
.globl __glim_ReadBuffer
.ent __glim_ReadBuffer
__glim_ReadBuffer:
    # Line 922
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 920
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 922
    lw	$at,__glBeginMode
    # Line 920
    lui	$v1,0xf
    addiu	$v1,$v1,32532
    # Line 922
    beq	$at,$v0,.L0db06884
    # Line 920
    addu	$gp,$t9,$v1
    # Line 922
    addiu	$a3,$a0,-1024
    la	$at,sub_0dbf0000
    sltiu	$v0,$a3,13
    sll	$a3,$a3,0x2
    addiu	$at,$at,-4408
    beqz	$v0,.L0db067d0
    addu	$a3,$a3,$at
    lw	$at,%lo(jtbl_0dbeeec8)($a3)
    jr	$at
    # Line 928
    li	$v0,1028
.L0db067d0:
    # Line 955
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 956
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db067f0:
    # Line 928
    sw	$v0,1148($a2)
.L0db067f4:
    # Line 958
    sw	$a0,1152($a2)
    # Line 959
    li	$a1,2
    sw	$a1,__glBeginMode
    lw	$v1,11828($a2)
    ld	$gp,0($sp)
    # Line 960
    addiu	$sp,$sp,32
    # Line 959
    ori	$v1,$v1,0x10
    # Line 960
    jr	$ra
    # Line 959
    sw	$v1,11828($a2)
.L0db06818:
    # Line 932
    lbu	$at,3106($a2)
    beqz	$at,.L0db068a4
    # Line 936
    li	$v0,1029
    # Line 937
    b	.L0db067f4
    # Line 936
    sw	$v0,1148($a2)
.L0db0682c:
    # Line 942
    lw	$a1,3180($a2)
    addiu	$v1,$a0,-1033
    slt	$v1,$v1,$a1
    beqz	$v1,.L0db06868
    # Line 944
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 948
    b	.L0db067f4
    # Line 947
    sw	$a0,1148($a2)
.L0db06848:
    # Line 952
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 953
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db06868:
    sd	$ra,8($sp)
    # Line 944
    jalr	$t9
    li	$a0,1282
    # Line 945
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db06884:
    # Line 922
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db068a4:
    # Line 933
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 934
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_ReadBuffer

# Function: __glCheckDrawPixelArgs
# Declared: Line 962 (Source lines: 964-1043)
# Address: 0x0db068c4 - 0x0db06c1c (Size: 856 bytes, Frame: 192)
.globl __glCheckDrawPixelArgs
.ent __glCheckDrawPixelArgs
__glCheckDrawPixelArgs:
    # Line 964
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0xf
    addiu	$at,$at,32212
    # Line 967
    bltz	$a1,.L0db06ba4
    # Line 964
    addu	$gp,$t9,$at
    # Line 971
    sltiu	$at,$a3,6401
    # Line 967
    bltz	$a2,.L0db06ba4
    # Line 971
    sltiu	$a1,$a3,6409
    # Line 969
    sltiu	$v0,$a3,6406
    bnez	$v0,.L0db06928
    # Line 971
    sltiu	$v1,$a3,6407
    bnezl	$v1,.L0db06954
    # Line 989
    lbu	$a1,3105($a0)
    # Line 971
    bnez	$a1,.L0db06a58
    sltiu	$at,$a3,6410
    bnez	$at,.L0db06950
    li	$a2,0x8000
    sltu	$v0,$a3,$a2
    bnez	$v0,.L0db06bc8
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0db06a84
    # Line 998
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06954
    # Line 989
    lbu	$a1,3105($a0)
.L0db06928:
    # Line 971
    sltiu	$a1,$a3,6403
    bnez	$a1,.L0db06980
    nop
    sltiu	$at,$a3,6404
    bnez	$at,.L0db06950
    sltiu	$v0,$a3,6405
    bnez	$v0,.L0db06af8
    sltiu	$v1,$a3,6406
    beqz	$v1,.L0db06a84
    # Line 998
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db06950:
    # Line 989
    lbu	$a1,3105($a0)
.L0db06954:
    beqz	$a1,.L0db06998
    # Line 995
    move	$a0,$zero
    # Line 991
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 992
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06980:
    # Line 971
    bnez	$at,.L0db06a44
    sltiu	$v0,$a3,6402
    bnez	$v0,.L0db06b0c
    li	$v1,6402
    bne	$a3,$v1,.L0db06a80
    # Line 995
    move	$a0,$zero
.L0db06998:
    # Line 1000
    sltiu	$a1,$a4,5126
    bnez	$a1,.L0db069f0
    # Line 1002
    sltiu	$at,$a4,5127
    bnez	$at,.L0db06a10
    li	$a2,0x8034
    sltu	$v0,$a4,$a2
    bnez	$v0,.L0db06ad0
    sltu	$v1,$a2,$a4
    bnez	$v1,.L0db06b84
    # Line 1030
    li	$a1,6408
.L0db069c0:
    beq	$a3,$a1,.L0db06a10
    li	$at,0x8000
    beq	$a3,$at,.L0db06a10
    # Line 1035
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1036
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db069f0:
    # Line 1002
    sltiu	$v0,$a4,5123
    bnez	$v0,.L0db06a20
    sltiu	$v1,$a4,5124
    bnez	$v1,.L0db06a10
    sltiu	$a1,$a4,5125
    bnez	$a1,.L0db06b38
    sltiu	$at,$a4,5126
    beqz	$at,.L0db06aac
.L0db06a10:
    # Line 1043
    li	$v0,1
.L0db06a14:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06a20:
    # Line 1002
    sltiu	$v0,$a4,5121
    bnez	$v0,.L0db06aa4
    sltiu	$v1,$a4,5122
    bnez	$v1,.L0db06a10
    li	$a1,5122
    bne	$a4,$a1,.L0db06ab0
    # Line 1040
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06a14
    # Line 1043
    li	$v0,1
.L0db06a44:
    # Line 971
    li	$at,6400
    bne	$a3,$at,.L0db06a84
    # Line 998
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db06a50:
    # Line 979
    b	.L0db06998
    # Line 978
    li	$a0,1
.L0db06a58:
    # Line 971
    sltiu	$v0,$a3,6408
    bnez	$v0,.L0db06a74
    sltiu	$v1,$a3,6409
    beqz	$v1,.L0db06a84
    # Line 998
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06954
    # Line 989
    lbu	$a1,3105($a0)
.L0db06a74:
    # Line 971
    li	$a1,6407
    beql	$a3,$a1,.L0db06954
    # Line 989
    lbu	$a1,3105($a0)
.L0db06a80:
    # Line 998
    # lw $t9, -27320($gp) # &__glSetError
.L0db06a84:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 999
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06aa4:
    # Line 1002
    li	$at,5120
    beq	$a4,$at,.L0db06a10
.L0db06aac:
    # Line 1040
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db06ab0:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1041
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06ad0:
    # Line 1002
    li	$a2,0x8032
    sltu	$v0,$a4,$a2
    bnez	$v0,.L0db06b4c
    sltu	$v1,$a2,$a4
    beqz	$v1,.L0db06bf0
    li	$a1,0x8033
    bne	$a4,$a1,.L0db06ab0
    # Line 1040
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db069c0
    # Line 1030
    li	$a1,6408
.L0db06af8:
    # Line 971
    li	$at,6404
    bne	$a3,$at,.L0db06a84
    # Line 998
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06954
    # Line 989
    lbu	$a1,3105($a0)
.L0db06b0c:
    # Line 973
    lbu	$v0,3110($a0)
    bnez	$v0,.L0db06a50
    # Line 974
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 975
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06b38:
    # Line 1002
    li	$v1,5124
    bne	$a4,$v1,.L0db06ab0
    # Line 1040
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06a14
    # Line 1043
    li	$v0,1
.L0db06b4c:
    # Line 1002
    li	$a1,6656
    bne	$a4,$a1,.L0db06ab0
    # Line 1040
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1004
    bnez	$a0,.L0db06a14
    # Line 1043
    li	$v0,1
    # Line 1005
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1006
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06b84:
    # Line 1002
    li	$a0,0x8036
    sltu	$at,$a4,$a0
    bnez	$at,.L0db06bdc
    sltu	$v0,$a0,$a4
    bnez	$v0,.L0db06ab0
    # Line 1040
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db069c0
    # Line 1030
    li	$a1,6408
.L0db06ba4:
    # Line 968
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 969
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06bc8:
    # Line 971
    li	$v1,6410
    bne	$a3,$v1,.L0db06a84
    # Line 998
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06954
    # Line 989
    lbu	$a1,3105($a0)
.L0db06bdc:
    # Line 1002
    li	$a1,0x8035
    bne	$a4,$a1,.L0db06ab0
    # Line 1040
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db069c0
    # Line 1030
    li	$a1,6408
.L0db06bf0:
    # Line 1018
    li	$at,6407
    beq	$a3,$at,.L0db06a10
    # Line 1022
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1023
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glCheckDrawPixelArgs

# Function: __glCheckReadPixelArgs
# Declared: Line 1046 (Source lines: 1048-1128)
# Address: 0x0db06c1c - 0x0db06fa4 (Size: 904 bytes, Frame: 192)
.globl __glCheckReadPixelArgs
.ent __glCheckReadPixelArgs
__glCheckReadPixelArgs:
    # Line 1048
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0xf
    addiu	$at,$at,31356
    # Line 1049
    bltz	$a1,.L0db06f2c
    # Line 1048
    addu	$gp,$t9,$at
    # Line 1049
    bltz	$a2,.L0db06f2c
    # Line 1051
    sltiu	$v0,$a3,6406
    bnez	$v0,.L0db06cd0
    # Line 1053
    sltiu	$v1,$a3,6407
    beqz	$v1,.L0db06d48
.L0db06c48:
    # Line 1086
    sltiu	$a1,$a4,5126
.L0db06c4c:
    bnez	$a1,.L0db06ca0
    # Line 1087
    sltiu	$at,$a4,5127
    bnez	$at,.L0db06cc0
    li	$a0,0x8034
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0db06dc8
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0db06ec8
    # Line 1115
    li	$a1,6408
.L0db06c70:
    beq	$a3,$a1,.L0db06cc0
    li	$at,0x8000
    beq	$a3,$at,.L0db06cc0
    # Line 1120
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1121
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06ca0:
    # Line 1087
    sltiu	$v0,$a4,5123
    bnez	$v0,.L0db06d78
    sltiu	$v1,$a4,5124
    bnez	$v1,.L0db06cc0
    sltiu	$a1,$a4,5125
    bnez	$a1,.L0db06e78
    sltiu	$at,$a4,5126
    beqz	$at,.L0db06da4
.L0db06cc0:
    # Line 1128
    li	$v0,1
.L0db06cc4:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06cd0:
    # Line 1053
    sltiu	$v0,$a3,6403
    bnez	$v0,.L0db06cfc
    sltiu	$v1,$a3,6404
    bnez	$v1,.L0db06c48
    sltiu	$a1,$a3,6405
    bnez	$a1,.L0db06ee8
    sltiu	$at,$a3,6406
    beqz	$at,.L0db06e58
    # Line 1084
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
.L0db06cfc:
    # Line 1053
    sltiu	$v0,$a3,6401
    bnez	$v0,.L0db06df0
    sltiu	$v1,$a3,6402
    bnez	$v1,.L0db06efc
    li	$a1,6402
    bne	$a3,$a1,.L0db06e58
    # Line 1084
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1068
    lbu	$at,3109($a0)
    bnez	$at,.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
    # Line 1069
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1070
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06d48:
    # Line 1053
    sltiu	$v0,$a3,6409
    bnez	$v0,.L0db06e2c
    sltiu	$v1,$a3,6410
    bnez	$v1,.L0db06c48
    li	$a0,0x8000
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0db06f90
    sltu	$at,$a0,$a3
    bnez	$at,.L0db06e58
    # Line 1084
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
.L0db06d78:
    # Line 1087
    sltiu	$v0,$a4,5121
    bnez	$v0,.L0db06d9c
    sltiu	$v1,$a4,5122
    bnez	$v1,.L0db06cc0
    li	$a1,5122
    bne	$a4,$a1,.L0db06da8
    # Line 1125
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06cc4
    # Line 1128
    li	$v0,1
.L0db06d9c:
    # Line 1087
    li	$at,5120
    beq	$a4,$at,.L0db06cc0
.L0db06da4:
    # Line 1125
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db06da8:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1126
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06dc8:
    # Line 1087
    li	$a0,0x8032
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0db06e8c
    sltu	$v1,$a0,$a4
    beqz	$v1,.L0db06f64
    li	$a1,0x8033
    bne	$a4,$a1,.L0db06da8
    # Line 1125
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c70
    # Line 1115
    li	$a1,6408
.L0db06df0:
    # Line 1053
    li	$at,6400
    bne	$a3,$at,.L0db06e58
    # Line 1084
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1061
    lbu	$v0,3104($a0)
    beqz	$v0,.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
    # Line 1063
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1064
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06e2c:
    # Line 1053
    sltiu	$v1,$a3,6408
    bnez	$v1,.L0db06e48
    sltiu	$a1,$a3,6409
    beqz	$a1,.L0db06e58
    # Line 1084
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
.L0db06e48:
    # Line 1053
    li	$at,6407
    beq	$a3,$at,.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
    # Line 1084
    # lw $t9, -27320($gp) # &__glSetError
.L0db06e58:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1085
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06e78:
    # Line 1087
    li	$v0,5124
    bne	$a4,$v0,.L0db06da8
    # Line 1125
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06cc4
    # Line 1128
    li	$v0,1
.L0db06e8c:
    # Line 1087
    li	$v1,6656
    bne	$a4,$v1,.L0db06da4
    # Line 1089
    li	$a1,6401
    beq	$a3,$a1,.L0db06cc0
    li	$at,6400
    beq	$a3,$at,.L0db06cc0
    # Line 1090
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1091
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06ec8:
    # Line 1087
    li	$a0,0x8036
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0db06f50
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0db06da8
    # Line 1125
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c70
    # Line 1115
    li	$a1,6408
.L0db06ee8:
    # Line 1053
    li	$a1,6404
    bne	$a3,$a1,.L0db06e58
    # Line 1084
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
.L0db06efc:
    # Line 1055
    lbu	$at,3110($a0)
    bnez	$at,.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
    # Line 1056
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1057
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06f2c:
    # Line 1050
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1051
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06f50:
    # Line 1087
    li	$v0,0x8035
    bne	$a4,$v0,.L0db06da8
    # Line 1125
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c70
    # Line 1115
    li	$a1,6408
.L0db06f64:
    # Line 1103
    li	$v1,6407
    beq	$a3,$v1,.L0db06cc0
    # Line 1107
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1108
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db06f90:
    # Line 1053
    li	$a1,6410
    bne	$a3,$a1,.L0db06e58
    # Line 1084
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db06c4c
    # Line 1086
    sltiu	$a1,$a4,5126
.end __glCheckReadPixelArgs

# Function: __glim_DrawPixels
# Declared: Line 1131 (Source lines: 1133-1163)
# Address: 0x0db06fa4 - 0x0db07114 (Size: 368 bytes, Frame: 240)
.globl __glim_DrawPixels
.ent __glim_DrawPixels
__glim_DrawPixels:
    # Line 1134
    lw	$a5,__glCurrentContext
    # Line 1133
    addiu	$sp,$sp,-112
    sd	$gp,48($sp)
    # Line 1137
    lw	$a7,__glBeginMode
    # Line 1133
    lui	$at,0xf
    addiu	$at,$at,30452
    # Line 1137
    beqz	$a7,.L0db0703c
    # Line 1133
    addu	$gp,$t9,$at
    sd	$ra,56($sp)
    sd	$a3,8($sp)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$a0,32($sp)
    # Line 1137
    li	$v0,2
    beq	$a7,$v0,.L0db07000
    sd	$a4,40($sp)
    # Line 1145
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1146
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db07000:
    # Line 1140
    lw	$t9,11856($a5)
    jalr	$t9
    move	$a0,$a5
    ld	$a4,40($sp)
    # Line 1142
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    # lw $t9, -16676($gp) # &glDrawPixels
    ld	$a1,24($sp)
    ld	$a0,32($sp)
    jal	glDrawPixels
    # Line 1141
    sw	$zero,__glBeginMode
    # Line 1143
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db0703c:
    sd	$a5,0($sp)
    sd	$a0,32($sp)
    move	$a0,$a5
    sd	$a4,40($sp)
    sd	$ra,56($sp)
    sd	$a3,8($sp)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    # Line 1150
    ld	$a1,32($sp)
    # lw $t9, -29164($gp) # &__glCheckDrawPixelArgs
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    bal __glCheckDrawPixelArgs
    ld	$a4,8($sp)
    ld	$ra,56($sp)
    beqz	$v0,.L0db070b0
    ld	$t0,0($sp)
    lbu	$v1,428($t0)
    beqzl	$v1,.L0db070bc
    ld	$gp,48($sp)
    # Line 1152
    lw	$a7,3092($t0)
    li	$a6,7169
    beq	$a7,$a6,.L0db070f4
    # Line 1157
    li	$at,7168
    beq	$a7,$at,.L0db070c4
    # Line 1162
    move	$a0,$t0
    ld	$gp,48($sp)
    # Line 1160
    jr	$ra
    addiu	$sp,$sp,112
.L0db070b0:
    ld	$gp,48($sp)
    # Line 1150
    jr	$ra
    addiu	$sp,$sp,112
.L0db070bc:
    # Line 1152
    jr	$ra
    addiu	$sp,$sp,112
.L0db070c4:
    # Line 1162
    ld	$a1,32($sp)
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    lw	$t9,12620($t0)
    ld	$a4,8($sp)
    ld	$a5,40($sp)
    jal	__glCheckDrawPixelArgs
    move	$a6,$zero
    # Line 1163
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db070f4:
    # Line 1156
    # lw $t9, -26992($gp) # &__glFeedbackDrawPixels
    move	$a0,$t0
    jal	__glFeedbackDrawPixels
    addiu	$a1,$t0,216
    # Line 1157
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_DrawPixels

# Function: __glim_ReadPixels
# Declared: Line 1165 (Source lines: 1167-1187)
# Address: 0x0db07114 - 0x0db0724c (Size: 312 bytes, Frame: 144)
.globl __glim_ReadPixels
.ent __glim_ReadPixels
__glim_ReadPixels:
    # Line 1168
    lw	$a7,__glCurrentContext
    # Line 1167
    addiu	$sp,$sp,-144
    sd	$gp,64($sp)
    # Line 1171
    lw	$t1,__glBeginMode
    # Line 1167
    lui	$at,0xf
    addiu	$at,$at,30084
    # Line 1171
    beqz	$t1,.L0db071bc
    # Line 1167
    addu	$gp,$t9,$at
    sd	$ra,72($sp)
    sd	$a2,8($sp)
    sd	$a3,16($sp)
    sd	$a5,24($sp)
    sd	$a4,32($sp)
    sd	$a1,40($sp)
    sd	$a6,48($sp)
    # Line 1171
    li	$v0,2
    beq	$t1,$v0,.L0db07178
    sd	$a0,56($sp)
    # Line 1179
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1180
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db07178:
    # Line 1174
    lw	$t9,11856($a7)
    jalr	$t9
    move	$a0,$a7
    ld	$a6,48($sp)
    # Line 1176
    ld	$a5,24($sp)
    ld	$a4,32($sp)
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    # lw $t9, -16680($gp) # &glReadPixels
    ld	$a1,40($sp)
    ld	$a0,56($sp)
    jal	glReadPixels
    # Line 1175
    sw	$zero,__glBeginMode
    # Line 1177
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db071bc:
    sd	$a7,0($sp)
    sd	$a5,24($sp)
    sd	$a6,48($sp)
    sd	$a0,56($sp)
    move	$a0,$a7
    sd	$a4,32($sp)
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    sd	$a1,40($sp)
    # Line 1184
    move	$a1,$a2
    move	$a2,$a3
    # lw $t9, -29160($gp) # &__glCheckReadPixelArgs
    move	$a3,$a4
    sd	$ra,72($sp)
    bal __glCheckReadPixelArgs
    move	$a4,$a5
    bnez	$v0,.L0db07210
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db07210:
    # Line 1186
    ld	$a1,56($sp)
    ld	$a2,40($sp)
    ld	$t9,0($sp)
    ld	$a3,8($sp)
    ld	$a4,16($sp)
    move	$a0,$t9
    lw	$t9,12628($t9)
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    jal	__glCheckReadPixelArgs
    ld	$a7,48($sp)
    # Line 1187
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_ReadPixels

# Function: __glim_CopyPixels
# Declared: Line 1189 (Source lines: 1191-1252)
# Address: 0x0db0724c - 0x0db07458 (Size: 524 bytes, Frame: 240)
.globl __glim_CopyPixels
.ent __glim_CopyPixels
__glim_CopyPixels:
    # Line 1193
    lw	$t0,__glCurrentContext
    # Line 1191
    move	$t1,$a3
    move	$a7,$a2
    move	$t2,$a1
    move	$t3,$a0
    addiu	$sp,$sp,-112
    sd	$gp,40($sp)
    # Line 1196
    lw	$a5,__glBeginMode
    # Line 1191
    lui	$at,0xf
    addiu	$at,$at,29772
    # Line 1196
    beqz	$a5,.L0db072b8
    # Line 1191
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sd	$a4,0($sp)
    sd	$a7,8($sp)
    sd	$t1,16($sp)
    sd	$t2,24($sp)
    # Line 1196
    li	$v0,2
    beq	$a5,$v0,.L0db072fc
    sd	$t3,32($sp)
    # Line 1204
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1205
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db072b8:
    # Line 1209
    bltz	$a7,.L0db0739c
    # Line 1233
    li	$a5,6402
    # Line 1209
    bltz	$t1,.L0db0739c
    # Line 1213
    li	$v1,6146
    beq	$a4,$v1,.L0db07374
    li	$a6,6144
    beq	$a4,$a6,.L0db07388
    li	$at,6145
    beq	$a4,$at,.L0db07338
    # Line 1236
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1237
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db072fc:
    # Line 1199
    lw	$t9,11856($t0)
    jalr	$t9
    move	$a0,$t0
    ld	$a4,0($sp)
    # Line 1201
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    # lw $t9, -16684($gp) # &glCopyPixels
    ld	$a1,24($sp)
    ld	$a0,32($sp)
    jal	glCopyPixels
    # Line 1200
    sw	$zero,__glBeginMode
    # Line 1202
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db07338:
    # Line 1229
    lbu	$v0,3109($t0)
    beqz	$v0,.L0db0741c
    # Line 1230
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db07344:
    # Line 1238
    lbu	$v1,428($t0)
.L0db07348:
    # Line 1246
    li	$at,7168
    # Line 1238
    beqz	$v1,.L0db073bc
    # Line 1241
    li	$a6,7169
    lw	$a0,3092($t0)
    beq	$a0,$a6,.L0db073fc
    # Line 1245
    nop	# was lw $t9, -26996($gp) # &__glFeedbackCopyPixels
    # Line 1246
    beq	$a0,$at,.L0db073c8
    # Line 1251
    move	$a0,$t0
    ld	$gp,40($sp)
    # Line 1249
    jr	$ra
    addiu	$sp,$sp,112
.L0db07374:
    # Line 1215
    lbu	$v0,3110($t0)
    beqz	$v0,.L0db07438
    # Line 1219
    li	$a5,6401
    # Line 1220
    b	.L0db07348
    # Line 1238
    lbu	$v1,428($t0)
.L0db07388:
    # Line 1222
    lbu	$v1,3104($t0)
    beqz	$v1,.L0db073f4
    nop
    # Line 1223
    b	.L0db07344
    li	$a5,6408
.L0db0739c:
    # Line 1210
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1211
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db073bc:
    ld	$gp,40($sp)
    # Line 1241
    jr	$ra
    addiu	$sp,$sp,112
.L0db073c8:
    # Line 1251
    move	$a1,$t3
    move	$a2,$t2
    lw	$t9,12624($t0)
    move	$a3,$a7
    sd	$ra,48($sp)
    jalr	$t9
    move	$a4,$t1
    # Line 1252
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db073f4:
    b	.L0db07344
    # Line 1225
    li	$a5,6400
.L0db073fc:
    # Line 1245
    move	$a0,$t0
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a1,$t0,216
    # Line 1246
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db0741c:
    sd	$ra,48($sp)
    # Line 1230
    jalr	$t9
    li	$a0,1282
    # Line 1231
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db07438:
    # Line 1216
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1217
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_CopyPixels

.late_rodata
jtbl_0dbeee28:
    .word .L0db04598
    .word .L0db04598
    .word .L0db045e0
    .word .L0db045e0
    .word .L0db045e0
    .word .L0db045e0
    .word .L0db045e0
    .word .L0db045e0
    .word .L0db045e0
    .word .L0db045e0
jtbl_0dbeee50:
    .word .L0db05b94
    .word .L0db05b94
    .word .L0db05bcc
    .word .L0db05bcc
    .word .L0db05bcc
    .word .L0db05bcc
    .word .L0db05c04
    .word .L0db05c04
    .word .L0db05c04
    .word .L0db05c04
jtbl_0dbeee78:
    .word .L0db06020
    .word .L0db06020
    .word .L0db06058
    .word .L0db06058
    .word .L0db06058
    .word .L0db06058
    .word .L0db06090
    .word .L0db06090
    .word .L0db06090
    .word .L0db06090
jtbl_0dbeeea0:
    .word .L0db06410
    .word .L0db06410
    .word .L0db06448
    .word .L0db06448
    .word .L0db06448
    .word .L0db06448
    .word .L0db06480
    .word .L0db06480
    .word .L0db06480
    .word .L0db06480
jtbl_0dbeeec8:
    .word .L0db067f0
    .word .L0db06848
    .word .L0db06818
    .word .L0db06848
    .word .L0db067f0
    .word .L0db06818
    .word .L0db067f0
    .word .L0db06848
    .word .L0db067d0
    .word .L0db0682c
    .word .L0db0682c
    .word .L0db0682c
    .word .L0db0682c

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_437f0000:
    .word 0x437f0000
_lit_bf000000:
    .word 0xbf000000

