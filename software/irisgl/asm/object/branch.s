# Source: ../object/branch.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/branch.c -o branch.T
# Total Functions: 1

.text

# Function: gl_load_dgl_table
# Declared: Line 191 (Source lines: 193-222)
# Address: 0x0f096630 - 0x0f0966c8 (Size: 152 bytes, Frame: 48)
.globl gl_load_dgl_table
.ent gl_load_dgl_table
gl_load_dgl_table:
    # Line 193
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-13288 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_connection_inited
    lw	$at,0($at)
    sd	$s3,0($sp)
    beqz	$at,.L0f0966b0
    move	$s3,$a0
.L0f096658:
    # Line 210
    li	$v1,1
    beq	$s3,$v1,.L0f096690
    sd	$ra,16($sp)
    # Line 213
    la	$t9,gl_SetImmediateMode
    move	$a0,$zero
    jalr	$t9
    ld	$s3,0($sp)
    # Line 214
    la	$ra,gl_dgl_table_is_remote
    li	$a1,1
    sw	$a1,0($ra)
    ld	$ra,16($sp)
.L0f096684:
    ld	$gp,8($sp)
    # Line 222
    jr	$ra
    addiu	$sp,$sp,48
.L0f096690:
    # Line 217
    la	$t9,gl_SetImmediateMode
    li	$a0,1
    jalr	$t9
    ld	$s3,0($sp)
    # Line 218
    la	$at,gl_dgl_table_is_remote
    ld	$ra,16($sp)
    b	.L0f096684
    sw	$zero,0($at)
.L0f0966b0:
    # Line 210
    la	$t9,gl_InitMemory
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f096658
    ld	$ra,16($sp)
.end gl_load_dgl_table

