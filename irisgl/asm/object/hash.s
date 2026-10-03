# Source: ../object/hash.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/hash.c -o hash.T
# Total Functions: 5

.text

# Function: gl_free_objects
# Declared: Line 32 (Source lines: 33-60)
# Address: 0x0f0d84a8 - 0x0f0d85d4 (Size: 300 bytes, Frame: 192)
.globl gl_free_objects
.ent gl_free_objects
gl_free_objects:
    # Line 33
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    sd	$ra,48($sp)
    sd	$s2,8($sp)
    li	$s2,-1
    sd	$s1,24($sp)
    sd	$gp,0($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-21088 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$s1,gl_hashtable
    sd	$s4,40($sp)
    sd	$s5,16($sp)
    addiu	$s5,$s1,1024
    b	.L0f0d84f0
    move	$s4,$s1
.L0f0d84e8:
    # Line 38
    beq	$s4,$s5,.L0f0d8560
    nop
.L0f0d84f0:
    # Line 39
    lw	$s0,0($s4)
    beqz	$s0,.L0f0d84e8
    # Line 38
    addiu	$s4,$s4,4
    b	.L0f0d851c
    # Line 39
    lw	$a0,8($s0)
.L0f0d8504:
    # Line 42
    beq	$a0,$s2,.L0f0d854c
    # Line 44
    la	$t9,gl_free
    # Line 45
    lw	$s0,0($s0)
.L0f0d8510:
    beqz	$s0,.L0f0d84e8
    nop
    # Line 39
    lw	$a0,8($s0)
.L0f0d851c:
    bnel	$a0,$s2,.L0f0d8510
    # Line 45
    lw	$s0,0($s0)
    # Line 39
    lw	$v0,4($s0)
    lw	$v0,28($v0)
    beqz	$v0,.L0f0d8504
    # Line 42
    la	$t9,__GLdelobj
    jalr	$t9
    lw	$a0,12($s0)
    lw	$a0,8($s0)
    bnel	$a0,$s2,.L0f0d8510
    # Line 45
    lw	$s0,0($s0)
    # Line 44
    la	$t9,gl_free
.L0f0d854c:
    lw	$a1,-14788($gp)
    jalr	$t9
    lw	$a0,4($s0)
    b	.L0f0d8510
    # Line 45
    lw	$s0,0($s0)
.L0f0d8560:
    b	.L0f0d8570
    # Line 38
    move	$s4,$s1
.L0f0d8568:
    # Line 49
    beq	$s4,$s5,.L0f0d85a0
    # Line 56
    sw	$zero,-4($s4)
.L0f0d8570:
    # Line 50
    lw	$s0,0($s4)
    beqz	$s0,.L0f0d8568
    # Line 49
    addiu	$s4,$s4,4
.L0f0d857c:
    # Line 53
    la	$t9,gl_free
    lw	$a1,-14788($gp)
    move	$a0,$s0
    jalr	$t9
    # Line 52
    lw	$s1,0($s0)
    # Line 54
    bnez	$s1,.L0f0d857c
    move	$s0,$s1
    b	.L0f0d8568
    nop
.L0f0d85a0:
    # Line 59
    la	$a0,gl_objchunksize
    # Line 58
    la	$v1,gl_openobj
    ld	$gp,0($sp)
    # Line 60
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$ra,48($sp)
    # Line 59
    sw	$zero,0($a0)
    # Line 58
    sw	$s2,0($v1)
    # Line 60
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_free_objects

# Function: gl_addhash
# Declared: Line 68 (Source lines: 72-84)
# Address: 0x0f0d85d4 - 0x0f0d8674 (Size: 160 bytes, Frame: 208)
.globl gl_addhash
.ent gl_addhash
gl_addhash:
    # Line 72
    addiu	$sp,$sp,-80
    sd	$a0,0($sp)
    # Line 76
    li	$a0,16
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$gp,24($sp)
    # Line 72
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-21388 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 76
    la	$t9,gl_malloc
    la	$at,sub_0f030000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a1,$at,-30048
    # Line 80
    ld	$a3,16($sp)
    la	$ra,gl_hashtable
    # Line 76
    bnez	$v0,.L0f0d8630
    move	$a0,$v0
    # Line 77
    ld	$ra,32($sp)
    move	$v0,$zero
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0d8630:
    ld	$gp,24($sp)
    # Line 79
    ld	$at,0($sp)
    ld	$a4,8($sp)
    sw	$at,4($a0)
    # Line 80
    addu	$v1,$a4,$a3
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$ra
    lw	$ra,0($v1)
    # Line 84
    li	$v0,1
    # Line 81
    sw	$a4,12($a0)
    # Line 80
    sw	$ra,0($a0)
    # Line 84
    ld	$ra,32($sp)
    # Line 82
    sw	$a3,8($a0)
    # Line 84
    addiu	$sp,$sp,80
    jr	$ra
    # Line 83
    sw	$a0,0($v1)
.end gl_addhash

# Function: gl_removehash
# Declared: Line 92 (Source lines: 95-118)
# Address: 0x0f0d8674 - 0x0f0d877c (Size: 264 bytes, Frame: 32)
.globl gl_removehash
.ent gl_removehash
gl_removehash:
    # Line 100
    addu	$a4,$a0,$a1
    # Line 95
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a5,0xfff6
    addiu	$a5,$a5,-21548
    addu	$gp,$t9,$a5
    # Line 100
    la	$a5,gl_hashtable
    andi	$a4,$a4,0xff
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    lw	$a5,0($a4)
    beqz	$a5,.L0f0d873c
    # Line 95
    move	$a3,$a0
    # Line 101
    lw	$at,12($a5)
    bnel	$at,$a3,.L0f0d86c4
    # Line 108
    lw	$a0,0($a5)
    # Line 101
    lw	$v0,8($a5)
    beq	$v0,$a1,.L0f0d874c
    # Line 104
    move	$a0,$a5
    # Line 108
    lw	$a0,0($a5)
.L0f0d86c4:
    beqz	$a0,.L0f0d872c
    # Line 107
    move	$a4,$a5
    b	.L0f0d86e8
    # Line 108
    lw	$v1,12($a0)
    # Line 115
    move	$a4,$a0
.L0f0d86d8:
    # Line 116
    lw	$a0,0($a0)
    beqz	$a0,.L0f0d8730
    # Line 118
    move	$v0,$zero
    # Line 108
    lw	$v1,12($a0)
.L0f0d86e8:
    bnel	$v1,$a3,.L0f0d86d8
    # Line 115
    move	$a4,$a0
    # Line 108
    lw	$a2,8($a0)
    bnel	$a2,$a1,.L0f0d86d8
    # Line 115
    move	$a4,$a0
    sd	$ra,8($sp)
    # Line 112
    la	$a1,sub_0f030000
    la	$t9,gl_free
    # Line 111
    lw	$a3,0($a0)
    # Line 112
    addiu	$a1,$a1,-30016
    jalr	$t9
    # Line 111
    sw	$a3,0($a4)
    # Line 113
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0d872c:
    # Line 118
    move	$v0,$zero
.L0f0d8730:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0d873c:
    # Line 101
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0d874c:
    sd	$ra,8($sp)
    # Line 104
    la	$a1,sub_0f030000
    la	$t9,gl_free
    # Line 103
    lw	$a2,0($a5)
    # Line 104
    addiu	$a1,$a1,-30032
    jalr	$t9
    # Line 103
    sw	$a2,0($a4)
    # Line 105
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_removehash

# Function: gl_findhash
# Declared: Line 124 (Source lines: 127-136)
# Address: 0x0f0d877c - 0x0f0d87e4 (Size: 104 bytes, Frame: 0)
.globl gl_findhash
.ent gl_findhash
gl_findhash:
    # Line 130
    addu	$a5,$a0,$a1
    # Line 127
    lui	$v0,0xfff6
    addiu	$v0,$v0,-21812
    addu	$at,$t9,$v0
    # Line 130
    lw	$t9,-32476($at)
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$t9
    lw	$a5,0($a5)
    beqz	$a5,.L0f0d87dc
    # Line 136
    move	$v0,$zero
    b	.L0f0d87c0
    # Line 130
    lw	$v1,12($a5)
    # Line 134
    lw	$a5,0($a5)
.L0f0d87b4:
    beqz	$a5,.L0f0d87dc
    nop
    # Line 130
    lw	$v1,12($a5)
.L0f0d87c0:
    bnel	$v1,$a0,.L0f0d87b4
    # Line 134
    lw	$a5,0($a5)
    # Line 130
    lw	$a2,8($a5)
    bnel	$a2,$a1,.L0f0d87b4
    # Line 134
    lw	$a5,0($a5)
    # Line 133
    jr	$ra
    lw	$v0,4($a5)
.L0f0d87dc:
    # Line 136
    jr	$ra
    nop
.end gl_findhash

# Function: gl_replacehash
# Declared: Line 145 (Source lines: 149-160)
# Address: 0x0f0d87e4 - 0x0f0d8850 (Size: 108 bytes, Frame: 0)
.globl gl_replacehash
.ent gl_replacehash
gl_replacehash:
    # Line 152
    addu	$a6,$a1,$a2
    # Line 149
    lui	$v0,0xfff6
    addiu	$v0,$v0,-21916
    addu	$at,$t9,$v0
    # Line 152
    lw	$t9,-32476($at)
    andi	$a6,$a6,0xff
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$t9
    lw	$a6,0($a6)
    beqz	$a6,.L0f0d8848
    # Line 160
    move	$v0,$zero
    b	.L0f0d8828
    # Line 152
    lw	$v1,12($a6)
    # Line 158
    lw	$a6,0($a6)
.L0f0d881c:
    beqz	$a6,.L0f0d8848
    nop
    # Line 152
    lw	$v1,12($a6)
.L0f0d8828:
    bnel	$v1,$a1,.L0f0d881c
    # Line 158
    lw	$a6,0($a6)
    # Line 152
    lw	$a3,8($a6)
    bnel	$a3,$a2,.L0f0d881c
    # Line 158
    lw	$a6,0($a6)
    # Line 156
    li	$v0,1
    jr	$ra
    # Line 155
    sw	$a0,4($a6)
.L0f0d8848:
    # Line 160
    jr	$ra
    nop
.end gl_replacehash

