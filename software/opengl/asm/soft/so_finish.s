# Source: ../soft/so_finish.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_finish.c
# Total Functions: 2

.text

# Function: __glim_Finish
# Declared: Line 29 (Source lines: 30-34)
# Address: 0x0db42734 - 0x0db42794 (Size: 96 bytes, Frame: 16)
.globl __glim_Finish
.ent __glim_Finish
__glim_Finish:
    # Line 31
    lw	$a0,__glCurrentContext
    li	$v0,1
    # Line 30
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    # Line 31
    lw	$at,__glBeginMode
    # Line 30
    lui	$v1,0xc
    addiu	$v1,$v1,-16540
    # Line 31
    beq	$at,$v0,.L0db42778
    # Line 30
    addu	$gp,$t9,$v1
    # Line 33
    lw	$t9,11844($a0)
    jalr	$t9
    nop
    # Line 34
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0db42778:
    # Line 31
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Finish

# Function: __glim_Flush
# Declared: Line 40 (Source lines: 41-45)
# Address: 0x0db42794 - 0x0db427f4 (Size: 96 bytes, Frame: 16)
.globl __glim_Flush
.ent __glim_Flush
__glim_Flush:
    # Line 42
    lw	$a0,__glCurrentContext
    li	$v0,1
    # Line 41
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    # Line 42
    lw	$at,__glBeginMode
    # Line 41
    lui	$v1,0xc
    addiu	$v1,$v1,-16636
    # Line 42
    beq	$at,$v0,.L0db427d8
    # Line 41
    addu	$gp,$t9,$v1
    # Line 44
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    # Line 45
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0db427d8:
    # Line 42
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Flush

