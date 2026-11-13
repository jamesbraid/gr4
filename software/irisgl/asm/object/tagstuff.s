# Source: ../object/tagstuff.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/tagstuff.c -o tagstuff.T
# Total Functions: 3

.text

# Function: gl_g_maketag
# Declared: Line 22 (Source lines: 24-54)
# Address: 0x0f118990 - 0x0f118b2c (Size: 412 bytes, Frame: 48)
.globl gl_g_maketag
.ent gl_g_maketag
gl_g_maketag:
    # Line 24
    move	$v0,$a0
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xfff2
    addiu	$at,$at,-22344
    bltz	$a0,.L0f118b04
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 29
    la	$v1,gl_openobjhdr
    lw	$v1,0($v1)
    bnez	$v1,.L0f1189c8
    sd	$v0,0($sp)
    ld	$gp,8($sp)
    # Line 32
    jr	$ra
    addiu	$sp,$sp,48
.L0f1189c8:
    # Line 33
    la	$t9,__GListag
    sd	$ra,16($sp)
    jalr	$t9
    ld	$a0,0($sp)
    beqz	$v0,.L0f118a04
    # Line 35
    la	$a3,gl_replacemode
    # Line 34
    la	$t9,gl_ErrorHandler
    lw	$a2,-14416($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,36
    # Line 35
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f118a04:
    lw	$a3,0($a3)
    li	$a4,1
    beq	$a3,$a4,.L0f118ae0
    # Line 41
    la	$t9,gl_makeroom
    jalr	$t9
    li	$a0,4
    beqz	$v0,.L0f118ac8
    ld	$ra,16($sp)
    ld	$a2,0($sp)
    # Line 42
    la	$a1,gl_openobj
    # Line 43
    la	$t9,gl_addhash
    la	$a0,gl_currentpos
    lw	$a1,0($a1)
    jalr	$t9
    lw	$a0,0($a0)
    beqz	$v0,.L0f118ad4
    ld	$ra,16($sp)
    # Line 45
    la	$t9,gl_malloc
    lw	$a1,-14416($gp)
    jalr	$t9
    li	$a0,8
    bnez	$v0,.L0f118a84
    la	$a2,gl_openobjhdr
    # Line 46
    la	$t9,gl_removehash
    la	$a0,gl_openobj
    ld	$a1,0($sp)
    jalr	$t9
    lw	$a0,0($a0)
    # Line 47
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f118a84:
    # Line 49
    lw	$a4,0($a2)
    # Line 50
    ld	$a0,0($sp)
    # Line 49
    lw	$a4,16($a4)
    # Line 50
    sw	$a0,4($v0)
    # Line 49
    sw	$a4,0($v0)
    # Line 51
    lw	$a3,0($a2)
    sw	$v0,16($a3)
    # Line 52
    lw	$a2,0($a2)
    lw	$a1,8($a2)
    # Line 53
    la	$t9,gl_addtag
    # Line 52
    addiu	$a1,$a1,4
    # Line 53
    bal gl_addtag
    # Line 52
    sw	$a1,8($a2)
    # Line 54
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f118ac8:
    ld	$gp,8($sp)
    # Line 42
    jr	$ra
    addiu	$sp,$sp,48
.L0f118ad4:
    ld	$gp,8($sp)
    # Line 44
    jr	$ra
    addiu	$sp,$sp,48
.L0f118ae0:
    # Line 38
    la	$t9,gl_ErrorHandler
    lw	$a2,-14416($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,62
    # Line 39
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f118b04:
    # Line 28
    lw	$a2,-14416($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,35
    # Line 29
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_maketag

# Function: gl_g_istag
# Declared: Line 58 (Source lines: 60-65)
# Address: 0x0f118b2c - 0x0f118bbc (Size: 144 bytes, Frame: 48)
.globl gl_g_istag
.ent gl_g_istag
gl_g_istag:
    # Line 61
    li	$at,-2
    # Line 60
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0xfff2
    addiu	$v0,$v0,-22756
    # Line 61
    beq	$a0,$at,.L0f118b94
    # Line 60
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 61
    li	$v1,-3
    beq	$s0,$v1,.L0f118b94
    # Line 63
    move	$a1,$s0
    la	$t9,gl_findhash
    la	$a0,gl_openobj
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a0,0($a0)
    beqz	$v0,.L0f118ba8
    ld	$ra,16($sp)
    li	$a2,-1
    beq	$s0,$a2,.L0f118ba8
    # Line 64
    li	$v0,1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f118b94:
    # Line 62
    li	$v0,1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f118ba8:
    # Line 65
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_istag

# Function: gl_addtag
# Declared: Line 68 (Source lines: 70-82)
# Address: 0x0f118bbc - 0x0f118c78 (Size: 188 bytes, Frame: 48)
.globl gl_addtag
.ent gl_addtag
gl_addtag:
    # Line 70
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-22900 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 71
    la	$t9,gl_makeroom
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,4
    beqz	$v0,.L0f118c68
    # Line 72
    ld	$ra,16($sp)
    la	$a3,gl_openobjhdr
    lw	$a3,0($a3)
    la	$a4,gl_currentpos
    lw	$a2,20($a3)
    lw	$a0,0($a4)
    bnel	$a2,$a0,.L0f118c18
    # Line 76
    lw	$v1,4($a0)
    # Line 75
    addiu	$at,$a2,8
    sw	$at,20($a3)
    lw	$a0,0($a4)
    # Line 76
    lw	$v1,4($a0)
.L0f118c18:
    sw	$v1,12($a0)
    # Line 77
    lw	$v0,0($a4)
    lw	$at,0($v0)
    sw	$at,8($v0)
    # Line 78
    la	$a2,gl_n_tag
    lw	$ra,0($a4)
    sw	$a2,0($ra)
    # Line 79
    lw	$a1,0($a4)
    ld	$gp,8($sp)
    # Line 80
    ld	$a0,0($sp)
    # Line 79
    addiu	$a1,$a1,4
    sw	$a1,0($a4)
    # Line 80
    sw	$a0,0($a1)
    # Line 82
    li	$v0,1
    # Line 81
    lw	$v1,0($a4)
    # Line 82
    ld	$ra,16($sp)
    addiu	$sp,$sp,48
    # Line 81
    addiu	$v1,$v1,4
    # Line 82
    jr	$ra
    # Line 81
    sw	$v1,0($a4)
.L0f118c68:
    # Line 72
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_addtag

