# Source: ../dgl/initialize.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/initialize.c -o initialize.T
# Total Functions: 3

.text

# Function: gl_initializer
# Declared: Line 34 (Source lines: 35-46)
# Address: 0x0f0d8cbc - 0x0f0d8d2c (Size: 112 bytes, Frame: 16)
.globl gl_initializer
.ent gl_initializer
gl_initializer:
    # Line 35
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-23156 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_connection_inited
    lw	$at,0($at)
    beqz	$at,.L0f0d8cec
    # Line 41
    la	$t9,gl_InitMemory
    ld	$gp,0($sp)
    # Line 39
    jr	$ra
    addiu	$sp,$sp,16
.L0f0d8cec:
    sd	$ra,8($sp)
    # Line 41
    bal gl_InitMemory
    nop
    # Line 42
    la	$t9,gl_SetImmediateMode
    bal gl_SetImmediateMode
    li	$a0,1
    # Line 44
    la	$t9,gl_comm_default_init
    # Line 43
    la	$v1,gl_dgl_table_is_remote
    # Line 44
    jalr	$t9
    # Line 43
    sw	$zero,0($v1)
    ld	$gp,0($sp)
    # Line 46
    ld	$ra,8($sp)
    addiu	$sp,$sp,16
    # Line 45
    li	$a0,1
    # Line 46
    jr	$ra
    # Line 45
    sw	$a0,404($v0)
.end gl_initializer

# Function: gl_InitMemory
# Declared: Line 94 (Source lines: 137-137)
# Address: 0x0f0d8d2c - 0x0f0d8d34 (Size: 8 bytes, Frame: 0)
.globl gl_InitMemory
.ent gl_InitMemory
gl_InitMemory:
    # Line 137
    jr	$ra
    move	$v0,$zero
.end gl_InitMemory

# Function: gl_SetImmediateMode
# Declared: Line 142 (Source lines: 143-156)
# Address: 0x0f0d8d34 - 0x0f0d8d50 (Size: 28 bytes, Frame: 0)
.globl gl_SetImmediateMode
.ent gl_SetImmediateMode
gl_SetImmediateMode:
    # Line 143
    lui	$v1,0xfff6
    addiu	$v1,$v1,-23276
    addu	$at,$t9,$v1
    # Line 147
    lw	$v0,-32324($at)
    sw	$a0,0($v0)
    # Line 156
    jr	$ra
    move	$v0,$zero
.end gl_SetImmediateMode

