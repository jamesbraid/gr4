# Source: ../object/getcmdname.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/getcmdname.c -o getcmdname.T
# Total Functions: 4

.text

# Function: gl_intrptab_insert
# Declared: Line 26 (Source lines: 28-41)
# Address: 0x0f0bf4fc - 0x0f0bf5bc (Size: 192 bytes, Frame: 144)
.globl gl_intrptab_insert
.ent gl_intrptab_insert
gl_intrptab_insert:
    # Line 28
    addiu	$sp,$sp,-144
    sd	$ra,120($sp)
    sd	$s0,104($sp)
    move	$s0,$a0
    sd	$gp,112($sp)
    lw	$a3,4($a0)
    lui	$at,0xfff7
    addiu	$at,$at,15692
    beqz	$a3,.L0f0bf554
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f0bf524:
    # Line 40
    move	$a1,$s0
    # Line 39
    sra	$a2,$a3,0x2
    # Line 40
    la	$t9,gl_insert
    la	$a0,sub_0f030000
    # Line 39
    sw	$a2,4($s0)
    # Line 40
    jalr	$t9
    addiu	$a0,$a0,-288
    # Line 41
    ld	$ra,120($sp)
    ld	$gp,112($sp)
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0bf554:
    # Line 32
    la	$a1,sub_0f030000
    la	$t9,strcpy
    addiu	$a0,$sp,0
    addiu	$a1,$a1,-31696
    jalr	$t9
    addiu	$a1,$a1,272
    lw	$a1,12($s0)
    beqz	$a1,.L0f0bf59c
    # Line 34
    la	$t9,strcat
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 37
    la	$t9,gl_ErrorHandler
.L0f0bf584:
    addiu	$a2,$sp,0
    li	$a1,5
    bal gl_ErrorHandler
    li	$a0,108
    b	.L0f0bf524
    lw	$a3,4($s0)
.L0f0bf59c:
    la	$a1,sub_0f030000
    # Line 36
    la	$t9,strcat
    addiu	$a0,$sp,0
    addiu	$a1,$a1,-31696
    jalr	$t9
    addiu	$a1,$a1,296
    b	.L0f0bf584
    # Line 37
    la	$t9,gl_ErrorHandler
.end gl_intrptab_insert

# Function: gl_init_intrp
# Declared: Line 76 (Source lines: 77-82)
# Address: 0x0f0bf5bc - 0x0f0bf704 (Size: 328 bytes, Frame: 32)
.globl gl_init_intrp
.ent gl_init_intrp
gl_init_intrp:
    # Line 77
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    sd	$s1,8($sp)
    lui	$s1,0xfff7
    addiu	$s1,$s1,15500
    addu	$gp,$t9,$s1
    la	$s0,sub_0f030000
    sd	$ra,24($sp)
    addiu	$s0,$s0,-31696
    addiu	$s1,$s0,272
    addiu	$s0,$s0,96
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    bal gl_intrptab_insert
    move	$a0,$s0
    # Line 80
    addiu	$s0,$s0,16
    beq	$s0,$s1,.L0f0bf6f0
    ld	$ra,24($sp)
    # Line 81
    la	$t9,gl_intrptab_insert
    move	$a0,$s0
    bal gl_intrptab_insert
    ld	$s1,8($sp)
    ld	$ra,24($sp)
.L0f0bf6f0:
    ld	$gp,16($sp)
    # Line 82
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_init_intrp

# Function: gl_getcmdlength
# Declared: Line 85 (Source lines: 88-122)
# Address: 0x0f0bf704 - 0x0f0bf808 (Size: 260 bytes, Frame: 48)
.globl gl_getcmdlength
.ent gl_getcmdlength
gl_getcmdlength:
    # Line 88
    addiu	$sp,$sp,-48
    sd	$a1,0($sp)
    # Line 92
    sra	$a1,$a0,0x2
    sd	$gp,8($sp)
    # Line 88
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,15172 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 92
    la	$t9,gl_find
    la	$at,sub_0f030000
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$at,-288
    beqz	$v0,.L0f0bf768
    move	$a1,$v0
    # Line 94
    lh	$v0,10($v0)
    andi	$v0,$v0,0x3
    beqz	$v0,.L0f0bf790
    # Line 96
    ld	$ra,16($sp)
    # Line 94
    li	$v1,1
    beq	$v0,$v1,.L0f0bf7d4
    li	$a0,2
    beq	$v0,$a0,.L0f0bf7a0
    li	$a2,3
    beq	$v0,$a2,.L0f0bf7e8
    # Line 115
    ld	$ra,16($sp)
.L0f0bf768:
    # Line 120
    li	$a1,5
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,67
    bal gl_ErrorHandler
    addiu	$a2,$a2,-31376
    # Line 122
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bf790:
    # Line 96
    lh	$v0,8($a1)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bf7a0:
    # Line 106
    ld	$a0,0($sp)
    lh	$v1,8($a1)
    addiu	$a0,$a0,1
    mult	$v1,$a0
    # Line 110
    ld	$ra,16($sp)
    # Line 106
    mflo	$v0
    addiu	$v0,$v0,4
    andi	$at,$v0,0x1
    beqz	$at,.L0f0bf7cc
    ld	$gp,8($sp)
    # Line 109
    addiu	$v0,$v0,1
.L0f0bf7cc:
    # Line 110
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bf7d4:
    # Line 101
    ld	$ra,16($sp)
    ld	$v0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bf7e8:
    # Line 115
    lh	$v0,8($a1)
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    addiu	$sp,$sp,48
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$v0
    jr	$ra
    addiu	$v0,$v0,4
.end gl_getcmdlength

# Function: gl_getcmdname
# Declared: Line 125 (Source lines: 127-134)
# Address: 0x0f0bf808 - 0x0f0bf878 (Size: 112 bytes, Frame: 32)
.globl gl_getcmdname
.ent gl_getcmdname
gl_getcmdname:
    # Line 130
    sra	$a1,$a0,0x2
    # Line 127
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,14912 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 130
    la	$t9,gl_find
    la	$at,sub_0f030000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a0,$at,-288
    beqz	$v0,.L0f0bf850
    move	$a2,$v0
    # Line 131
    ld	$ra,8($sp)
    lw	$v0,12($a2)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0bf850:
    # Line 132
    li	$a1,5
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,67
    bal gl_ErrorHandler
    addiu	$a2,$a2,-31360
    # Line 134
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_getcmdname

