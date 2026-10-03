# Source: ../MGRAS/mgras_depth.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_depth.c
# Total Functions: 3

.text

# Function: Clear
# Declared: Line 26 (Source lines: 28-29)
# Address: 0x0da721cc - 0x0da721e0 (Size: 20 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 28
    li	$at,18944
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 29
    jr	$ra
    # Line 28
    sw	$at,0($v0)
.end Clear

# Function: Store
# Declared: Line 33 (Source lines: 37-37)
# Address: 0x0da721e0 - 0x0da721e8 (Size: 8 bytes, Frame: 0)
.ent Store
Store:
    # Line 37
    jr	$ra
    li	$v0,1
.end Store

# Function: __glMgrInitDepth
# Declared: Line 41 (Source lines: 41-52)
# Address: 0x0da721e8 - 0x0da72264 (Size: 124 bytes, Frame: 48)
.globl __glMgrInitDepth
.ent __glMgrInitDepth
__glMgrInitDepth:
    # Line 41
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    lui	$at,0x19
    addiu	$at,$at,-15184
    addu	$gp,$t9,$at
    # Line 42
    # lw $t9, -27204($gp) # &__glInitDepth32
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitDepth32
    # Line 41
    move	$s8,$a0
    # Line 51
    la	$a0,sub_0da70000
    # Line 50
    la	$v1,sub_0da70000
    ld	$gp,16($sp)
    # Line 47
    lui	$a2,0xff
    # Line 45
    ld	$v0,24($sp)
    # Line 44
    li	$ra,4
    sw	$ra,24($s8)
    # Line 47
    ori	$a2,$a2,0xffff
    # Line 45
    lw	$v0,3128($v0)
    # Line 48
    sw	$a2,76($s8)
    # Line 47
    sw	$a2,72($s8)
    # Line 52
    ld	$ra,0($sp)
    # Line 50
    addiu	$v1,$v1,8672
    # Line 51
    addiu	$a0,$a0,8652
    sw	$a0,120($s8)
    # Line 50
    sw	$v1,116($s8)
    # Line 45
    sw	$v0,12($s8)
    # Line 52
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrInitDepth

