# Source: ../dgl/data.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/data.c -o data.T
# Total Functions: 2

.text

# Function: gl_data_check_special
# Declared: Line 26 (Source lines: 27-44)
# Address: 0x0f0a2bb4 - 0x0f0a2d1c (Size: 360 bytes, Frame: 208)
.globl gl_data_check_special
.ent gl_data_check_special
gl_data_check_special:
    # Line 32
    li	$a3,4
    # Line 27
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a1
    move	$a1,$a2
    # Line 32
    addiu	$a2,$sp,0
    sd	$s0,8($sp)
    # Line 27
    move	$s0,$a0
    sd	$ra,16($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,1684 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 32
    la	$t9,gl_comm_io
    # Line 31
    li	$at,4660
    sw	$at,0($sp)
    # Line 32
    bal gl_comm_io
    lw	$a0,28($a0)
    li	$v1,4
    beq	$v0,$v1,.L0f0a2c10
    # Line 33
    la	$t9,gl_comm_fatal_error
    bal gl_comm_fatal_error
    addiu	$a0,$gp,-15248
.L0f0a2c10:
    sd	$s2,40($sp)
    # Line 35
    li	$a3,1
    la	$t9,gl_comm_io
    addiu	$a2,$sp,0
    move	$a1,$s1
    bal gl_comm_io
    lw	$a0,24($s0)
    li	$s2,1
    beq	$v0,$s2,.L0f0a2c4c
    # Line 36
    la	$t9,gl_comm_fatal_error
    addiu	$a0,$gp,-15248
    bal gl_comm_fatal_error
    addiu	$a0,$a0,8
    b	.L0f0a2c50
    # Line 37
    li	$a3,1
.L0f0a2c4c:
    li	$a3,1
.L0f0a2c50:
    move	$a1,$s1
    la	$t9,gl_comm_io
    lw	$a0,24($s0)
    # Line 36
    addiu	$a2,$sp,0
    # Line 37
    bal gl_comm_io
    addiu	$a2,$a2,1
    beq	$v0,$s2,.L0f0a2c7c
    # Line 38
    la	$t9,gl_comm_fatal_error
    addiu	$a0,$gp,-15248
    bal gl_comm_fatal_error
    addiu	$a0,$a0,16
.L0f0a2c7c:
    # Line 39
    li	$a3,1
    move	$a1,$s1
    la	$t9,gl_comm_io
    lw	$a0,24($s0)
    addiu	$a2,$sp,0
    bal gl_comm_io
    addiu	$a2,$a2,2
    beq	$v0,$s2,.L0f0a2cac
    # Line 40
    la	$t9,gl_comm_fatal_error
    addiu	$a0,$gp,-15248
    bal gl_comm_fatal_error
    addiu	$a0,$a0,24
.L0f0a2cac:
    # Line 41
    li	$a3,1
    move	$a1,$s1
    la	$t9,gl_comm_io
    lw	$a0,24($s0)
    addiu	$a2,$sp,0
    bal gl_comm_io
    addiu	$a2,$a2,3
    move	$a3,$s2
    ld	$s2,40($sp)
    ld	$s1,24($sp)
    ld	$ra,16($sp)
    beq	$v0,$a3,.L0f0a2cf8
    ld	$s0,8($sp)
    # Line 42
    la	$t9,gl_comm_fatal_error
    ld	$s2,40($sp)
    addiu	$a0,$gp,-15248
    bal gl_comm_fatal_error
    addiu	$a0,$a0,32
    ld	$ra,16($sp)
.L0f0a2cf8:
    lw	$a2,0($sp)
    # Line 44
    li	$v0,34
    # Line 42
    li	$a3,-4660
    beq	$a2,$a3,.L0f0a2d14
    ld	$gp,32($sp)
.L0f0a2d0c:
    # Line 44
    jr	$ra
    addiu	$sp,$sp,80
.L0f0a2d14:
    b	.L0f0a2d0c
    move	$v0,$zero
.end gl_data_check_special

# Function: gl_data_check_xdr
# Declared: Line 51 (Source lines: 52-110)
# Address: 0x0f0a2d1c - 0x0f0a2d54 (Size: 56 bytes, Frame: 16)
.globl gl_data_check_xdr
.ent gl_data_check_xdr
gl_data_check_xdr:
    # Line 52
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,1324 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 110
    la	$t9,gl_d_dglxdrformat
    li	$a1,1
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,2
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_data_check_xdr

