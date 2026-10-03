# Source: ../dlist/dl_init.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_init.c
# Total Functions: 3

.text

# Function: __glShareDlist
# Declared: Line 31 (Source lines: 39-43)
# Address: 0x0dafe73c - 0x0dafe768 (Size: 44 bytes, Frame: 0)
.globl __glShareDlist
.ent __glShareDlist
__glShareDlist:
    # Line 39
    lw	$v1,4624($a1)
    sw	$v1,4624($a0)
    # Line 40
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 41
    lw	$v0,4628($a1)
    sw	$v0,4628($a0)
    # Line 42
    lw	$at,8($v0)
    addiu	$at,$at,1
    # Line 43
    jr	$ra
    # Line 42
    sw	$at,8($v0)
.end __glShareDlist

# Function: __glInitDlistState
# Declared: Line 45 (Source lines: 46-72)
# Address: 0x0dafe768 - 0x0dafe800 (Size: 152 bytes, Frame: 48)
.globl __glInitDlistState
.ent __glInitDlistState
__glInitDlistState:
    # Line 46
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a1,0x10
    # Line 52
    sw	$zero,4688($a0)
    # Line 51
    sw	$zero,4680($a0)
    sd	$s0,0($sp)
    # Line 46
    move	$s0,$a0
    # Line 57
    lw	$a0,12($a0)
    # Line 46
    addiu	$a1,$a1,-208
    addu	$gp,$t9,$a1
    # Line 57
    sw	$a0,4724($s0)
    # Line 56
    lw	$v1,8($s0)
    # Line 57
    lw	$at,4624($s0)
    # Line 55
    lw	$v0,0($s0)
    # Line 56
    sw	$v1,4720($s0)
    # Line 57
    beqz	$at,.L0dafe7c8
    # Line 55
    sw	$v0,4716($s0)
.L0dafe7ac:
    # Line 65
    lw	$at,4628($s0)
    beqz	$at,.L0dafe7e4
    # Line 69
    nop	# was lw $t9, -26236($gp) # &__glNamesNewArray
.L0dafe7b8:
    ld	$gp,8($sp)
    # Line 72
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafe7c8:
    # Line 65
    # lw $t9, -29368($gp) # &__glDlistNewArray
    sd	$ra,16($sp)
    bal __glDlistNewArray
    move	$a0,$s0
    sw	$v0,4624($s0)
    b	.L0dafe7ac
    ld	$ra,16($sp)
.L0dafe7e4:
    # Line 69
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glDlistNewArray
    move	$a1,$zero
    sw	$v0,4628($s0)
    b	.L0dafe7b8
    ld	$ra,16($sp)
.end __glInitDlistState

# Function: __glFreeDlistState
# Declared: Line 81 (Source lines: 82-106)
# Address: 0x0dafe800 - 0x0dafe8b8 (Size: 184 bytes, Frame: 48)
.globl __glFreeDlistState
.ent __glFreeDlistState
__glFreeDlistState:
    # Line 82
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 83
    lw	$a0,4628($a0)
    lw	$v1,8($a0)
    addiu	$v1,$v1,-1
    sw	$v1,8($a0)
    lw	$a1,4628($s0)
    sd	$gp,8($sp)
    lw	$at,8($a1)
    # Line 82
    lui	$v0,0x10
    addiu	$v0,$v0,-360
    # Line 83
    beqz	$at,.L0dafe88c
    # Line 82
    addu	$gp,$t9,$v0
.L0dafe838:
    # Line 96
    lw	$v0,4624($s0)
    # Line 90
    sw	$zero,4628($s0)
    # Line 96
    lw	$at,0($v0)
    addiu	$at,$at,-1
    sw	$at,0($v0)
    lw	$a1,4624($s0)
    lw	$a2,0($a1)
    beqz	$a2,.L0dafe8a4
    # Line 99
    nop	# was lw $t9, -29364($gp) # &__glDlistFreeArray
.L0dafe85c:
    # Line 101
    lw	$a0,4712($s0)
    beqz	$a0,.L0dafe87c
    sw	$zero,4624($s0)
    # Line 105
    lw	$t9,12692($s0)
    sd	$ra,16($sp)
    jal	__glDlistFreeArray
    nop
    ld	$ra,16($sp)
.L0dafe87c:
    ld	$gp,8($sp)
    # Line 106
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafe88c:
    # Line 87
    # lw $t9, -26228($gp) # &__glNamesFreeArray
    sd	$ra,16($sp)
    jal	__glNamesFreeArray
    move	$a0,$s0
    b	.L0dafe838
    ld	$ra,16($sp)
.L0dafe8a4:
    sd	$ra,16($sp)
    # Line 99
    bal __glDlistFreeArray
    move	$a0,$s0
    b	.L0dafe85c
    ld	$ra,16($sp)
.end __glFreeDlistState

