# Source: ../soft/so_pntfin.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntfin.c
# Total Functions: 4

.text

# Function: __glBeginPoints
# Declared: Line 24 (Source lines: 25-32)
# Address: 0x0db623a4 - 0x0db623d4 (Size: 48 bytes, Frame: 0)
.globl __glBeginPoints
.ent __glBeginPoints
__glBeginPoints:
    # Line 28
    lw	$a1,12024($a0)
    sw	$a1,12020($a0)
    # Line 29
    addiu	$v0,$a0,12768
    # Line 25
    lui	$a2,0xa
    addiu	$a2,$a2,-15628
    addu	$at,$t9,$a2
    # Line 31
    la	$v1,__glNop
    # Line 29
    sw	$v0,12744($a0)
    # Line 30
    la	$v0,__glEndPoints
    # Line 31
    sw	$v1,12092($a0)
    # Line 32
    jr	$ra
    # Line 30
    sw	$v0,12140($a0)
.end __glBeginPoints

# Function: __glEndPoints
# Declared: Line 34 (Source lines: 35-38)
# Address: 0x0db623d4 - 0x0db623f4 (Size: 32 bytes, Frame: 0)
.globl __glEndPoints
.ent __glEndPoints
__glEndPoints:
    # Line 35
    lui	$a1,0xa
    addiu	$a1,$a1,-15676
    addu	$at,$t9,$a1
    # Line 37
    la	$v1,__glEndPrim
    # Line 36
    la	$v0,__glNop
    # Line 37
    sw	$v1,12140($a0)
    # Line 38
    jr	$ra
    # Line 36
    sw	$v0,12020($a0)
.end __glEndPoints

# Function: __glPoint
# Declared: Line 41 (Source lines: 42-47)
# Address: 0x0db623f4 - 0x0db62464 (Size: 112 bytes, Frame: 48)
.globl __glPoint
.ent __glPoint
__glPoint:
    # Line 42
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lw	$at,12($a1)
    lui	$v0,0xa
    addiu	$v0,$v0,-15708
    beqz	$at,.L0db62424
    addu	$gp,$t9,$v0
.L0db62418:
    ld	$gp,16($sp)
    # Line 47
    jr	$ra
    addiu	$sp,$sp,48
.L0db62424:
    # Line 44
    ld	$t9,8($sp)
    ld	$a2,0($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    move	$a0,$a2
    lw	$a2,28136($a2)
    sd	$ra,24($sp)
    jalr	$t9
    ori	$a2,$a2,0x1
    ld	$t9,0($sp)
    # Line 45
    move	$a0,$t9
    lw	$t9,12556($t9)
    jalr	$t9
    ld	$a1,8($sp)
    b	.L0db62418
    ld	$ra,24($sp)
.end __glPoint

# Function: __glPointFast
# Declared: Line 49 (Source lines: 50-54)
# Address: 0x0db62464 - 0x0db624a4 (Size: 64 bytes, Frame: 32)
.globl __glPointFast
.ent __glPointFast
__glPointFast:
    # Line 50
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,12($a1)
    lui	$v0,0xa
    addiu	$v0,$v0,-15820
    beqz	$at,.L0db6248c
    addu	$gp,$t9,$v0
.L0db62480:
    ld	$gp,0($sp)
    # Line 54
    jr	$ra
    addiu	$sp,$sp,32
.L0db6248c:
    # Line 52
    lw	$t9,12556($a0)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0db62480
    ld	$ra,8($sp)
.end __glPointFast

