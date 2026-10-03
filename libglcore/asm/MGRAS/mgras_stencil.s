# Source: ../MGRAS/mgras_stencil.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_stencil.c
# Total Functions: 4

.text

# Function: Clear
# Declared: Line 25 (Source lines: 29-30)
# Address: 0x0da92b34 - 0x0da92b48 (Size: 20 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 29
    li	$at,19456
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 30
    jr	$ra
    # Line 29
    sw	$at,0($v0)
.end Clear

# Function: Store
# Declared: Line 34 (Source lines: 36-36)
# Address: 0x0da92b48 - 0x0da92b50 (Size: 8 bytes, Frame: 0)
.ent Store
Store:
    # Line 36
    jr	$ra
    nop
.end Store

# Function: Pick
# Declared: Line 40 (Source lines: 42-42)
# Address: 0x0da92b50 - 0x0da92b58 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 42
    jr	$ra
    nop
.end Pick

# Function: __glMgrInitStencil
# Declared: Line 45 (Source lines: 46-55)
# Address: 0x0da92b58 - 0x0da92bcc (Size: 116 bytes, Frame: 48)
.globl __glMgrInitStencil
.ent __glMgrInitStencil
__glMgrInitStencil:
    # Line 46
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    lui	$at,0x17
    addiu	$at,$at,-17600
    addu	$gp,$t9,$at
    # Line 47
    # lw $t9, -27596($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 46
    move	$s8,$a0
    # Line 54
    la	$a2,sub_0da90000
    # Line 53
    la	$a0,sub_0da90000
    # Line 52
    la	$v1,sub_0da90000
    ld	$gp,16($sp)
    # Line 55
    ld	$ra,0($sp)
    # Line 52
    addiu	$v1,$v1,11060
    # Line 53
    addiu	$a0,$a0,11080
    # Line 50
    ld	$v0,24($sp)
    # Line 49
    sw	$zero,24($s8)
    # Line 54
    addiu	$a2,$a2,11088
    # Line 50
    lw	$v0,3132($v0)
    # Line 54
    sw	$a2,88($s8)
    # Line 53
    sw	$a0,92($s8)
    # Line 52
    sw	$v1,116($s8)
    # Line 50
    sw	$v0,12($s8)
    # Line 55
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrInitStencil

