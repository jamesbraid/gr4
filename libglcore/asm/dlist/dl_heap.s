# Source: ../dlist/dl_heap.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_heap.c
# Total Functions: 10

.text

# Function: __glDlistHeapInit
# Declared: Line 27 (Source lines: 28-40)
# Address: 0x0dafe1f4 - 0x0dafe270 (Size: 124 bytes, Frame: 48)
.globl __glDlistHeapInit
.ent __glDlistHeapInit
__glDlistHeapInit:
    # Line 29
    li	$a1,12
    # Line 28
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,1188
    addu	$gp,$t9,$at
    # Line 29
    # lw $t9, -17868($gp) # &bzero
    sd	$s3,8($sp)
    sd	$ra,0($sp)
    jal	bzero
    # Line 28
    move	$s3,$a0
    # Line 33
    # lw $t9, -17868($gp) # &bzero
    la	$a0,sub_0dc00000
    li	$a1,12
    jal	bzero
    addiu	$a0,$a0,-13576
    # Line 36
    move	$a0,$s3
    la	$a2,sub_0dc00000
    # Line 35
    lwc1	$f0,_lit_bf800000
    # Line 36
    # lw $t9, -29572($gp) # &__glDlistHeapInsert
    addiu	$a2,$a2,-13576
    move	$a1,$a2
    # Line 34
    sw	$zero,8($a2)
    # Line 36
    bal __glDlistHeapInsert
    # Line 35
    swc1	$f0,0($a2)
    # Line 40
    li	$v0,1
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistHeapInit

# Function: __glDlistHeapFree
# Declared: Line 44 (Source lines: 45-50)
# Address: 0x0dafe270 - 0x0dafe2bc (Size: 76 bytes, Frame: 48)
.globl __glDlistHeapFree
.ent __glDlistHeapFree
__glDlistHeapFree:
    # Line 45
    move	$a2,$a0
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$a3,8($a0)
    lui	$at,0x10
    addiu	$at,$at,1064
    beqz	$a3,.L0dafe2ac
    addu	$gp,$t9,$at
    # Line 48
    # lw $t9, -17784($gp) # &free
    sd	$a2,8($sp)
    sd	$ra,16($sp)
    jal	free
    move	$a0,$a3
    ld	$a2,8($sp)
    ld	$ra,16($sp)
.L0dafe2ac:
    # Line 49
    sw	$zero,8($a2)
    ld	$gp,0($sp)
    # Line 50
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistHeapFree

# Function: __glDlistHeapQueryMin
# Declared: Line 52 (Source lines: 53-55)
# Address: 0x0dafe2bc - 0x0dafe2e0 (Size: 36 bytes, Frame: 0)
.globl __glDlistHeapQueryMin
.ent __glDlistHeapQueryMin
__glDlistHeapQueryMin:
    # Line 53
    lw	$at,0($a0)
    li	$v0,1
    beq	$at,$v0,.L0dafe2d8
    nop
    # Line 55
    lw	$v0,8($a0)
    jr	$ra
    lw	$v0,4($v0)
.L0dafe2d8:
    # Line 54
    jr	$ra
    move	$v0,$zero
.end __glDlistHeapQueryMin

# Function: __glDlistHeapRemoveMin
# Declared: Line 58 (Source lines: 59-66)
# Address: 0x0dafe2e0 - 0x0dafe33c (Size: 92 bytes, Frame: 48)
.globl __glDlistHeapRemoveMin
.ent __glDlistHeapRemoveMin
__glDlistHeapRemoveMin:
    # Line 59
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lw	$at,0($a0)
    lui	$v1,0x10
    addiu	$v1,$v1,952
    bne	$at,$v0,.L0dafe310
    addu	$gp,$t9,$v1
    # Line 62
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafe310:
    # Line 63
    lw	$a1,8($a0)
    # Line 64
    # lw $t9, -29568($gp) # &__glDlistHeapRemove
    # Line 63
    lw	$a1,4($a1)
    sd	$ra,16($sp)
    # Line 64
    bal __glDlistHeapRemove
    sd	$a1,0($sp)
    # Line 66
    ld	$ra,16($sp)
    ld	$v0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistHeapRemoveMin

# Function: __glDlistHeapInsert
# Declared: Line 69 (Source lines: 70-87)
# Address: 0x0dafe33c - 0x0dafe43c (Size: 256 bytes, Frame: 48)
.globl __glDlistHeapInsert
.ent __glDlistHeapInsert
__glDlistHeapInsert:
    # Line 70
    move	$a4,$a1
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lw	$a5,4($a0)
    lui	$at,0x10
    addiu	$at,$at,860
    beqz	$a5,.L0dafe410
    addu	$gp,$t9,$at
    # Line 73
    lw	$a6,0($s0)
    sd	$ra,16($sp)
    addiu	$v1,$a6,1
    bne	$v1,$a5,.L0dafe3b0
    lw	$v0,8($s0)
    sd	$a4,24($sp)
    # Line 75
    # lw $t9, -17748($gp) # &realloc
    move	$a0,$v0
    sll	$a1,$a5,0x2
    jal	realloc
    addiu	$a1,$a1,128
    sw	$v0,8($s0)
    ld	$ra,16($sp)
    beqz	$v0,.L0dafe3fc
    ld	$a4,24($sp)
    # Line 78
    lw	$a2,4($s0)
    lw	$a6,0($s0)
    addiu	$a2,$a2,32
    sw	$a2,4($s0)
.L0dafe3b0:
    # Line 81
    sll	$at,$a6,0x2
    addu	$at,$at,$v0
    sw	$a4,0($at)
    # Line 82
    lw	$ra,0($s0)
    sw	$ra,4($a4)
    # Line 83
    # lw $t9, -32708($gp) # &sub_0db00000
    lw	$a3,0($s0)
    move	$a0,$s0
    addiu	$t9,$t9,-6692
    addiu	$a3,$a3,1
    addiu	$a1,$a3,-1
    bal __glDlistPrintHeap
    sw	$a3,0($s0)
    # Line 87
    li	$v0,1
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafe3fc:
    # Line 77
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafe410:
    # Line 72
    # lw $t9, -17744($gp) # &malloc
    sd	$a4,24($sp)
    sd	$ra,16($sp)
    jal	malloc
    li	$a0,128
    # Line 73
    lw	$a6,0($s0)
    # Line 72
    sw	$v0,8($s0)
    ld	$a4,24($sp)
    # Line 73
    li	$v1,32
    b	.L0dafe3b0
    sw	$v1,4($s0)
.end __glDlistHeapInsert

# Function: __glDlistHeapRemove
# Declared: Line 90 (Source lines: 91-111)
# Address: 0x0dafe43c - 0x0dafe4d4 (Size: 152 bytes, Frame: 32)
.globl __glDlistHeapRemove
.ent __glDlistHeapRemove
__glDlistHeapRemove:
    # Line 100
    lw	$at,0($a0)
    # Line 93
    lw	$a3,4($a1)
    # Line 92
    lw	$a2,8($a0)
    # Line 100
    addiu	$at,$at,-1
    sw	$at,0($a0)
    sll	$v1,$at,0x2
    addu	$v1,$v1,$a2
    lw	$v1,0($v1)
    sll	$v0,$a3,0x2
    addu	$v0,$v0,$a2
    sw	$v1,0($v0)
    # Line 101
    sw	$a3,4($v1)
    # Line 102
    sw	$zero,4($a1)
    lw	$v0,0($v0)
    # Line 91
    addiu	$sp,$sp,-32
    # Line 102
    lwc1	$f0,0($a1)
    lwc1	$f1,0($v0)
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    c.lt.s	$f0,$f1
    # Line 91
    lui	$at,0x10
    addiu	$at,$at,604
    # Line 102
    bc1f	.L0dafe4b4
    # Line 91
    addu	$gp,$t9,$at
    # Line 105
    # lw $t9, -32708($gp) # &sub_0db00000
    addiu	$t9,$t9,-6540
    bal __glDlistPrintHeap
    move	$a1,$a3
    b	.L0dafe4c8
    ld	$ra,8($sp)
.L0dafe4b4:
    # Line 107
    # lw $t9, -32708($gp) # &sub_0db00000
    addiu	$t9,$t9,-6692
    bal __glDlistPrintHeap
    move	$a1,$a3
    ld	$ra,8($sp)
.L0dafe4c8:
    ld	$gp,0($sp)
    # Line 111
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistHeapRemove

# Function: __glDlistHeapPriorityChanged
# Declared: Line 113 (Source lines: 114-124)
# Address: 0x0dafe4d4 - 0x0dafe534 (Size: 96 bytes, Frame: 48)
.globl __glDlistHeapPriorityChanged
.ent __glDlistHeapPriorityChanged
__glDlistHeapPriorityChanged:
    # Line 114
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0x10
    addiu	$s8,$s8,452
    addu	$gp,$t9,$s8
    # Line 120
    # lw $t9, -32708($gp) # &sub_0db00000
    lw	$a1,4($a1)
    sd	$ra,0($sp)
    addiu	$t9,$t9,-6692
    bal __glDlistPrintHeap
    # Line 114
    move	$s8,$a0
    # Line 121
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a0,$s8
    ld	$a1,24($sp)
    addiu	$t9,$t9,-6540
    bal __glDlistPrintHeap
    lw	$a1,4($a1)
    # Line 124
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistHeapPriorityChanged

# Function: __glDlistPrintHeap
# Declared: Line 126 (Source lines: 127-134)
# Address: 0x0dafe534 - 0x0dafe5dc (Size: 168 bytes, Frame: 192)
.globl __glDlistPrintHeap
.ent __glDlistPrintHeap
__glDlistPrintHeap:
    # Line 128
    lw	$a1,8($a0)
    # Line 127
    addiu	$sp,$sp,-64
    sd	$s7,32($sp)
    sd	$ra,24($sp)
    sd	$s1,0($sp)
    # Line 130
    li	$s1,1
    sd	$s5,8($sp)
    # Line 127
    move	$s5,$a0
    sd	$gp,16($sp)
    # Line 130
    lw	$at,0($a0)
    # Line 127
    lui	$v0,0x10
    addiu	$v0,$v0,356
    # Line 130
    sltiu	$at,$at,2
    bnez	$at,.L0dafe5b8
    # Line 127
    addu	$gp,$t9,$v0
    sd	$ra,24($sp)
    # Line 130
    addiu	$s7,$a1,4
    # Line 131
    lw	$a2,0($s7)
.L0dafe57c:
    move	$a1,$s1
    # Line 130
    addiu	$s1,$s1,1
    # Line 131
    lwc1	$f0,0($a2)
    # Line 130
    addiu	$s7,$s7,4
    # Line 131
    # lw $t9, -17884($gp) # &printf
    cvt.d.s	$f0,$f0
    la	$a0,sub_0dbe0000
    dmfc1	$a3,$f0
    jal	printf
    addiu	$a0,$a0,-14552
    # Line 130
    lw	$a2,0($s5)
    sltu	$a2,$s1,$a2
    bnezl	$a2,.L0dafe57c
    # Line 131
    lw	$a2,0($s7)
    ld	$s7,32($sp)
.L0dafe5b8:
    # Line 133
    # lw $t9, -17884($gp) # &printf
    addiu	$a0,$gp,-15528
    ld	$s5,8($sp)
    jal	printf
    ld	$s1,0($sp)
    # Line 134
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDlistPrintHeap

# Function: upheap
# Declared: Line 136 (Source lines: 138-150)
# Address: 0x0dafe5dc - 0x0dafe674 (Size: 152 bytes, Frame: 0)
.ent upheap
upheap:
    # Line 138
    lw	$a6,8($a0)
    # Line 139
    sll	$a7,$a1,0x2
    addu	$a7,$a7,$a6
    lw	$a5,0($a7)
    srl	$a4,$a1,0x1f
    addu	$a4,$a4,$a1
    sra	$a4,$a4,0x1
    sll	$a3,$a4,0x2
    addu	$a3,$a3,$a6
    lw	$a3,0($a3)
    lwc1	$f0,0($a5)
    lwc1	$f1,0($a3)
    c.lt.s	$f0,$f1
    nop
    bc1fl	.L0dafe66c
    # Line 148
    sw	$a5,0($a7)
    # Line 142
    sll	$at,$a1,0x2
.L0dafe620:
    addu	$at,$at,$a6
    sw	$a3,0($at)
    # Line 144
    sw	$a1,4($a3)
    # Line 145
    move	$a1,$a4
    srl	$a4,$a4,0x1f
    addu	$a4,$a4,$a1
    sra	$a4,$a4,0x1
    sll	$a3,$a4,0x2
    addu	$a3,$a3,$a6
    lw	$a3,0($a3)
    lwc1	$f2,0($a5)
    lwc1	$f3,0($a3)
    c.lt.s	$f2,$f3
    nop
    bc1t	.L0dafe620
    # Line 142
    sll	$at,$a1,0x2
    # Line 145
    sll	$a7,$a1,0x2
    addu	$a7,$a7,$a6
    # Line 148
    sw	$a5,0($a7)
.L0dafe66c:
    # Line 150
    jr	$ra
    # Line 149
    sw	$a1,4($a5)
.end upheap

# Function: downheap
# Declared: Line 152 (Source lines: 154-170)
# Address: 0x0dafe674 - 0x0dafe73c (Size: 200 bytes, Frame: 0)
.ent downheap
downheap:
    # Line 154
    lw	$a7,8($a0)
    # Line 155
    lw	$a5,0($a0)
    sll	$a4,$a1,0x2
    addu	$a4,$a4,$a7
    addiu	$at,$a5,-1
    srl	$at,$at,0x1
    sltu	$at,$at,$a1
    bnez	$at,.L0dafe730
    lw	$t0,0($a4)
    b	.L0dafe6e8
    # Line 160
    addu	$a4,$a1,$a1
.L0dafe6a0:
    # Line 162
    sll	$a6,$a3,0x2
.L0dafe6a4:
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lwc1	$f0,0($t0)
    lwc1	$f1,0($a6)
    c.le.s	$f0,$f1
    sll	$a4,$a1,0x2
    bc1t	.L0dafe730
    addu	$a4,$a4,$a7
    # Line 163
    sw	$a6,0($a4)
    # Line 165
    sw	$a1,4($a6)
    # Line 166
    lw	$a5,0($a0)
    addiu	$at,$a5,-1
    srl	$at,$at,0x1
    sltu	$at,$at,$a3
    bnez	$at,.L0dafe728
    move	$a1,$a3
    # Line 160
    addu	$a4,$a1,$a1
.L0dafe6e8:
    addiu	$a6,$a4,1
    sltu	$v0,$a6,$a5
    beqz	$v0,.L0dafe6a0
    move	$a3,$a4
    sll	$v1,$a4,0x2
    addu	$v1,$v1,$a7
    lw	$a2,4($v1)
    lw	$v1,0($v1)
    lwc1	$f3,0($v1)
    lwc1	$f2,0($a2)
    c.lt.s	$f2,$f3
    nop
    bc1fl	.L0dafe6a4
    # Line 162
    sll	$a6,$a3,0x2
    b	.L0dafe6a0
    # Line 161
    move	$a3,$a6
.L0dafe728:
    # Line 166
    sll	$a4,$a1,0x2
    addu	$a4,$a4,$a7
.L0dafe730:
    # Line 168
    sw	$t0,0($a4)
    # Line 170
    jr	$ra
    # Line 169
    sw	$a1,4($t0)
.end downheap

.rdata
_lit_bf800000:
    .word 0xbf800000

