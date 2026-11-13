# Source: ../object/callobj.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/callobj.c -o callobj.T
# Total Functions: 3

.text

# Function: gl_i_callobj
# Declared: Line 24 (Source lines: 24-40)
# Address: 0x0f097bdc - 0x0f097c6c (Size: 144 bytes, Frame: 48)
.globl gl_i_callobj
.ent gl_i_callobj
gl_i_callobj:
    # Line 24
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-18836 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f097c10
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f097c10:
    # Line 33
    la	$t9,gl_findhash
    ld	$a0,0($sp)
    jalr	$t9
    li	$a1,-1
    beqz	$v0,.L0f097c4c
    ld	$ra,16($sp)
.L0f097c28:
    # Line 35
    lw	$a0,0($v0)
    beqz	$a0,.L0f097c40
    # Line 38
    la	$t9,gl_interpret
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f097c40:
    ld	$gp,8($sp)
    # Line 40
    jr	$ra
    addiu	$sp,$sp,48
.L0f097c4c:
    # Line 34
    la	$t9,gl_getnewobjhdr
    jalr	$t9
    ld	$a0,0($sp)
    bnez	$v0,.L0f097c28
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 35
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_callobj

# Function: gl_c_callobj
# Declared: Line 42 (Source lines: 42-55)
# Address: 0x0f097c6c - 0x0f097d1c (Size: 176 bytes, Frame: 192)
.globl gl_c_callobj
.ent gl_c_callobj
gl_c_callobj:
    # Line 42
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-18980 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21060($gp)
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    beqz	$at,.L0f097d00
    move	$s0,$a0
.L0f097c94:
    # Line 46
    la	$t9,gl_findhash
    move	$a0,$s0
    jalr	$t9
    li	$a1,-1
    bnez	$v0,.L0f097ccc
    # Line 47
    la	$t9,gl_getnewobjhdr
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0f097ccc
    ld	$ra,32($sp)
    # Line 48
    ld	$s0,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f097ccc:
    # Line 53
    addiu	$a1,$sp,0
    li	$a0,4
    # Line 51
    la	$v1,sub_0f090000
    # Line 53
    la	$t9,gl_compile
    # Line 52
    sw	$v0,4($sp)
    # Line 51
    addiu	$v1,$v1,32028
    # Line 53
    jalr	$t9
    # Line 51
    sw	$v1,0($sp)
    # Line 55
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f097d00:
    # Line 42
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28976
    li	$a1,1
    b	.L0f097c94
    sw	$a1,-21060($gp)
.end gl_c_callobj

# Function: gl_n_callobj
# Declared: Line 57 (Source lines: 57-64)
# Address: 0x0f097d1c - 0x0f097d8c (Size: 112 bytes, Frame: 48)
.ent gl_n_callobj
gl_n_callobj:
    # Line 57
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-19156 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f097d54
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f097d54:
    ld	$a0,0($sp)
    # Line 61
    lw	$a0,0($a0)
    lw	$a0,0($a0)
    beqz	$a0,.L0f097d78
    # Line 63
    la	$t9,gl_interpret
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f097d78:
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    # Line 64
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end gl_n_callobj

