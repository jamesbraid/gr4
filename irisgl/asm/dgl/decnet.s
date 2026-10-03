# Source: ../dgl/decnet.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/decnet.c -o decnet.T
# Total Functions: 1

.text

# Function: gl_decnet_init
# Declared: Line 154 (Source lines: 157-159)
# Address: 0x0f0a2d54 - 0x0f0a2d94 (Size: 64 bytes, Frame: 48)
.globl gl_decnet_init
.ent gl_decnet_init
gl_decnet_init:
    # Line 157
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,1268
    addu	$gp,$t9,$a1
    la	$a0,sub_0f020000
    # Line 158
    la	$t9,gl_dgl_error
    sd	$ra,0($sp)
    # Line 157
    addiu	$a0,$a0,31096
    # Line 158
    jalr	$t9
    addiu	$a1,$a0,16
    # Line 159
    ld	$ra,0($sp)
    li	$v0,19
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_decnet_init

