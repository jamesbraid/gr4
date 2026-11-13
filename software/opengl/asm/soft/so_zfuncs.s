# Source: ../soft/so_zfuncs.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_zfuncs.c
# Total Functions: 23

.text

# Function: __glDT_NEVER
# Declared: Line 37 (Source lines: 39-39)
# Address: 0x0dba7528 - 0x0dba7530 (Size: 8 bytes, Frame: 0)
.globl __glDT_NEVER
.ent __glDT_NEVER
__glDT_NEVER:
    # Line 39
    jr	$ra
    move	$v0,$zero
.end __glDT_NEVER

# Function: __glDT_LEQUAL
# Declared: Line 46 (Source lines: 47-52)
# Address: 0x0dba7530 - 0x0dba7550 (Size: 32 bytes, Frame: 0)
.globl __glDT_LEQUAL
.ent __glDT_LEQUAL
__glDT_LEQUAL:
    # Line 47
    sltu	$at,$a1,$a0
    bnez	$at,.L0dba7548
    # Line 52
    move	$v0,$zero
    # Line 50
    li	$v0,1
    jr	$ra
    # Line 49
    sw	$a0,0($a2)
.L0dba7548:
    # Line 52
    jr	$ra
    nop
.end __glDT_LEQUAL

# Function: __glDT_LEQUAL_s
# Declared: Line 60 (Source lines: 61-66)
# Address: 0x0dba7550 - 0x0dba7570 (Size: 32 bytes, Frame: 0)
.globl __glDT_LEQUAL_s
.ent __glDT_LEQUAL_s
__glDT_LEQUAL_s:
    # Line 61
    slt	$at,$a1,$a0
    bnez	$at,.L0dba7568
    # Line 66
    move	$v0,$zero
    # Line 64
    li	$v0,1
    jr	$ra
    # Line 63
    sw	$a0,0($a2)
.L0dba7568:
    # Line 66
    jr	$ra
    nop
.end __glDT_LEQUAL_s

# Function: __glDT_LESS
# Declared: Line 74 (Source lines: 75-80)
# Address: 0x0dba7570 - 0x0dba7590 (Size: 32 bytes, Frame: 0)
.globl __glDT_LESS
.ent __glDT_LESS
__glDT_LESS:
    # Line 75
    sltu	$at,$a0,$a1
    beqz	$at,.L0dba7588
    # Line 80
    move	$v0,$zero
    # Line 78
    li	$v0,1
    jr	$ra
    # Line 77
    sw	$a0,0($a2)
.L0dba7588:
    # Line 80
    jr	$ra
    nop
.end __glDT_LESS

# Function: __glDT_LESS_s
# Declared: Line 88 (Source lines: 89-94)
# Address: 0x0dba7590 - 0x0dba75b0 (Size: 32 bytes, Frame: 0)
.globl __glDT_LESS_s
.ent __glDT_LESS_s
__glDT_LESS_s:
    # Line 89
    slt	$at,$a0,$a1
    beqz	$at,.L0dba75a8
    # Line 94
    move	$v0,$zero
    # Line 92
    li	$v0,1
    jr	$ra
    # Line 91
    sw	$a0,0($a2)
.L0dba75a8:
    # Line 94
    jr	$ra
    nop
.end __glDT_LESS_s

# Function: __glDT_EQUAL
# Declared: Line 102 (Source lines: 103-108)
# Address: 0x0dba75b0 - 0x0dba75cc (Size: 28 bytes, Frame: 0)
.globl __glDT_EQUAL
.ent __glDT_EQUAL
__glDT_EQUAL:
    # Line 103
    bne	$a0,$a1,.L0dba75c0
    # Line 106
    li	$v0,1
    jr	$ra
    # Line 105
    sw	$a0,0($a2)
.L0dba75c0:
    # Line 108
    move	$v0,$zero
    jr	$ra
    nop
.end __glDT_EQUAL

# Function: __glDT_GREATER
# Declared: Line 116 (Source lines: 117-122)
# Address: 0x0dba75cc - 0x0dba75ec (Size: 32 bytes, Frame: 0)
.globl __glDT_GREATER
.ent __glDT_GREATER
__glDT_GREATER:
    # Line 117
    sltu	$at,$a1,$a0
    beqz	$at,.L0dba75e4
    # Line 122
    move	$v0,$zero
    # Line 120
    li	$v0,1
    jr	$ra
    # Line 119
    sw	$a0,0($a2)
.L0dba75e4:
    # Line 122
    jr	$ra
    nop
.end __glDT_GREATER

# Function: __glDT_GREATER_s
# Declared: Line 130 (Source lines: 131-136)
# Address: 0x0dba75ec - 0x0dba760c (Size: 32 bytes, Frame: 0)
.globl __glDT_GREATER_s
.ent __glDT_GREATER_s
__glDT_GREATER_s:
    # Line 131
    slt	$at,$a1,$a0
    beqz	$at,.L0dba7604
    # Line 136
    move	$v0,$zero
    # Line 134
    li	$v0,1
    jr	$ra
    # Line 133
    sw	$a0,0($a2)
.L0dba7604:
    # Line 136
    jr	$ra
    nop
.end __glDT_GREATER_s

# Function: __glDT_NOTEQUAL
# Declared: Line 144 (Source lines: 145-150)
# Address: 0x0dba760c - 0x0dba7628 (Size: 28 bytes, Frame: 0)
.globl __glDT_NOTEQUAL
.ent __glDT_NOTEQUAL
__glDT_NOTEQUAL:
    # Line 145
    beq	$a0,$a1,.L0dba761c
    # Line 148
    li	$v0,1
    jr	$ra
    # Line 147
    sw	$a0,0($a2)
.L0dba761c:
    # Line 150
    move	$v0,$zero
    jr	$ra
    nop
.end __glDT_NOTEQUAL

# Function: __glDT_GEQUAL
# Declared: Line 158 (Source lines: 159-164)
# Address: 0x0dba7628 - 0x0dba7648 (Size: 32 bytes, Frame: 0)
.globl __glDT_GEQUAL
.ent __glDT_GEQUAL
__glDT_GEQUAL:
    # Line 159
    sltu	$at,$a0,$a1
    bnez	$at,.L0dba7640
    # Line 164
    move	$v0,$zero
    # Line 162
    li	$v0,1
    jr	$ra
    # Line 161
    sw	$a0,0($a2)
.L0dba7640:
    # Line 164
    jr	$ra
    nop
.end __glDT_GEQUAL

# Function: __glDT_GEQUAL_s
# Declared: Line 172 (Source lines: 173-178)
# Address: 0x0dba7648 - 0x0dba7668 (Size: 32 bytes, Frame: 0)
.globl __glDT_GEQUAL_s
.ent __glDT_GEQUAL_s
__glDT_GEQUAL_s:
    # Line 173
    slt	$at,$a0,$a1
    bnez	$at,.L0dba7660
    # Line 178
    move	$v0,$zero
    # Line 176
    li	$v0,1
    jr	$ra
    # Line 175
    sw	$a0,0($a2)
.L0dba7660:
    # Line 178
    jr	$ra
    nop
.end __glDT_GEQUAL_s

# Function: __glDT_ALWAYS
# Declared: Line 187 (Source lines: 189-190)
# Address: 0x0dba7668 - 0x0dba7674 (Size: 12 bytes, Frame: 0)
.globl __glDT_ALWAYS
.ent __glDT_ALWAYS
__glDT_ALWAYS:
    # Line 190
    li	$v0,1
    jr	$ra
    # Line 189
    sw	$a0,0($a2)
.end __glDT_ALWAYS

# Function: __glDT_LEQUAL_M
# Declared: Line 202 (Source lines: 204-204)
# Address: 0x0dba7674 - 0x0dba7680 (Size: 12 bytes, Frame: 0)
.globl __glDT_LEQUAL_M
.ent __glDT_LEQUAL_M
__glDT_LEQUAL_M:
    # Line 204
    sltu	$v0,$a1,$a0
    jr	$ra
    xori	$v0,$v0,0x1
.end __glDT_LEQUAL_M

# Function: __glDT_LEQUAL_M_s
# Declared: Line 212 (Source lines: 214-214)
# Address: 0x0dba7680 - 0x0dba768c (Size: 12 bytes, Frame: 0)
.globl __glDT_LEQUAL_M_s
.ent __glDT_LEQUAL_M_s
__glDT_LEQUAL_M_s:
    # Line 214
    slt	$v0,$a1,$a0
    jr	$ra
    xori	$v0,$v0,0x1
.end __glDT_LEQUAL_M_s

# Function: __glDT_LESS_M
# Declared: Line 222 (Source lines: 224-224)
# Address: 0x0dba768c - 0x0dba7694 (Size: 8 bytes, Frame: 0)
.globl __glDT_LESS_M
.ent __glDT_LESS_M
__glDT_LESS_M:
    # Line 224
    jr	$ra
    sltu	$v0,$a0,$a1
.end __glDT_LESS_M

# Function: __glDT_LESS_M_s
# Declared: Line 232 (Source lines: 234-234)
# Address: 0x0dba7694 - 0x0dba769c (Size: 8 bytes, Frame: 0)
.globl __glDT_LESS_M_s
.ent __glDT_LESS_M_s
__glDT_LESS_M_s:
    # Line 234
    jr	$ra
    slt	$v0,$a0,$a1
.end __glDT_LESS_M_s

# Function: __glDT_EQUAL_M
# Declared: Line 242 (Source lines: 244-244)
# Address: 0x0dba769c - 0x0dba76a8 (Size: 12 bytes, Frame: 0)
.globl __glDT_EQUAL_M
.ent __glDT_EQUAL_M
__glDT_EQUAL_M:
    # Line 244
    xor	$v0,$a0,$a1
    jr	$ra
    sltiu	$v0,$v0,1
.end __glDT_EQUAL_M

# Function: __glDT_GREATER_M
# Declared: Line 252 (Source lines: 254-254)
# Address: 0x0dba76a8 - 0x0dba76b0 (Size: 8 bytes, Frame: 0)
.globl __glDT_GREATER_M
.ent __glDT_GREATER_M
__glDT_GREATER_M:
    # Line 254
    jr	$ra
    sltu	$v0,$a1,$a0
.end __glDT_GREATER_M

# Function: __glDT_GREATER_M_s
# Declared: Line 262 (Source lines: 264-264)
# Address: 0x0dba76b0 - 0x0dba76b8 (Size: 8 bytes, Frame: 0)
.globl __glDT_GREATER_M_s
.ent __glDT_GREATER_M_s
__glDT_GREATER_M_s:
    # Line 264
    jr	$ra
    slt	$v0,$a1,$a0
.end __glDT_GREATER_M_s

# Function: __glDT_NOTEQUAL_M
# Declared: Line 272 (Source lines: 274-274)
# Address: 0x0dba76b8 - 0x0dba76c4 (Size: 12 bytes, Frame: 0)
.globl __glDT_NOTEQUAL_M
.ent __glDT_NOTEQUAL_M
__glDT_NOTEQUAL_M:
    # Line 274
    xor	$v0,$a0,$a1
    jr	$ra
    sltu	$v0,$zero,$v0
.end __glDT_NOTEQUAL_M

# Function: __glDT_GEQUAL_M
# Declared: Line 282 (Source lines: 284-284)
# Address: 0x0dba76c4 - 0x0dba76d0 (Size: 12 bytes, Frame: 0)
.globl __glDT_GEQUAL_M
.ent __glDT_GEQUAL_M
__glDT_GEQUAL_M:
    # Line 284
    sltu	$v0,$a0,$a1
    jr	$ra
    xori	$v0,$v0,0x1
.end __glDT_GEQUAL_M

# Function: __glDT_GEQUAL_M_s
# Declared: Line 292 (Source lines: 294-294)
# Address: 0x0dba76d0 - 0x0dba76dc (Size: 12 bytes, Frame: 0)
.globl __glDT_GEQUAL_M_s
.ent __glDT_GEQUAL_M_s
__glDT_GEQUAL_M_s:
    # Line 294
    slt	$v0,$a0,$a1
    jr	$ra
    xori	$v0,$v0,0x1
.end __glDT_GEQUAL_M_s

# Function: __glDT_ALWAYS_M
# Declared: Line 302 (Source lines: 304-304)
# Address: 0x0dba76dc - 0x0dba76e4 (Size: 8 bytes, Frame: 0)
.globl __glDT_ALWAYS_M
.ent __glDT_ALWAYS_M
__glDT_ALWAYS_M:
    # Line 304
    jr	$ra
    li	$v0,1
.end __glDT_ALWAYS_M

