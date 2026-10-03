# Source: ../MGRAS/mgras_utils.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_utils.c
# Total Functions: 16

.text

# Function: getchannels
# Declared: Line 24 (Source lines: 25-81)
# Address: 0x0daceb38 - 0x0dacef14 (Size: 988 bytes, Frame: 0)
.globl getchannels
.ent getchannels
getchannels:
    # Line 25
    li	$a2,0x8046
    sltu	$at,$a0,$a2
    bnez	$at,.L0daceb9c
    # Line 26
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0daceca0
    li	$a2,0x8051
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacec4c
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0dacec44
    li	$a2,0x8057
    sltu	$at,$a0,$a2
    bnez	$at,.L0daceca8
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0dacecd4
    li	$a2,0x805a
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacee10
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0dacecd4
    li	$at,0x805b
    bne	$a0,$at,.L0dacec18
    nop
    b	.L0dacecd4
    nop
.L0daceb9c:
    li	$a2,0x803b
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dacebec
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0daced28
    li	$a2,0x8041
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dacecdc
    sltu	$at,$a2,$a0
    beqz	$at,.L0daced08
    li	$a2,0x8044
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0daced9c
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0daceca0
    li	$a1,0x8045
    bne	$a0,$a1,.L0dacec18
    nop
    b	.L0daceca0
    nop
.L0dacebec:
    sltiu	$at,$a0,6408
    bnez	$at,.L0dacec20
    sltiu	$v0,$a0,6409
    bnez	$v0,.L0dacecd4
    sltiu	$v1,$a0,10768
    bnez	$v1,.L0daced80
    sltiu	$a1,$a0,10769
    bnez	$a1,.L0dacec44
    li	$at,0x8000
    beq	$a0,$at,.L0dacecd4
    nop
.L0dacec18:
    # Line 81
    jr	$ra
    move	$v0,$zero
.L0dacec20:
    # Line 26
    sltiu	$v0,$a0,6405
    bnez	$v0,.L0daced64
    sltiu	$v1,$a0,6406
    bnez	$v1,.L0dacee80
    sltiu	$a1,$a0,6407
    bnez	$a1,.L0dacee30
    sltiu	$at,$a0,6408
    beqz	$at,.L0dacec18
    nop
.L0dacec44:
    # Line 63
    jr	$ra
    li	$v0,14
.L0dacec4c:
    # Line 26
    li	$a2,0x804c
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0daced30
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0daced5c
    li	$a2,0x804f
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dacedbc
    sltu	$at,$a2,$a0
    beqz	$at,.L0dacec44
    li	$v0,0x8050
    bne	$a0,$v0,.L0dacec18
    nop
    b	.L0dacec44
    nop
.L0dacec88:
    li	$a2,0x8048
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacee6c
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0dacec18
    nop
.L0daceca0:
    # Line 53
    jr	$ra
    li	$v0,31
.L0daceca8:
    # Line 26
    li	$a2,0x8054
    sltu	$at,$a0,$a2
    bnez	$at,.L0daceddc
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0dacec44
    li	$a2,0x8056
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daceeec
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0dacec18
    nop
.L0dacecd4:
    # Line 73
    jr	$ra
    li	$v0,15
.L0dacecdc:
    # Line 26
    li	$a2,0x803e
    sltu	$at,$a0,$a2
    bnez	$at,.L0daced10
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0daced28
    li	$a2,0x8040
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacee88
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0dacec18
    nop
.L0daced08:
    # Line 45
    jr	$ra
    li	$v0,30
.L0daced10:
    # Line 26
    li	$a2,0x803d
    sltu	$at,$a0,$a2
    bnez	$at,.L0dacee58
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0dacec18
    nop
.L0daced28:
    # Line 39
    jr	$ra
    li	$v0,1
.L0daced30:
    # Line 26
    li	$a2,0x8049
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacec88
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0daced5c
    li	$a2,0x804b
    sltu	$at,$a0,$a2
    bnez	$at,.L0daceeb0
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0dacec18
    nop
.L0daced5c:
    # Line 79
    jr	$ra
    li	$v0,47
.L0daced64:
    # Line 26
    sltiu	$v1,$a0,6404
    bnez	$v1,.L0dacedfc
    sltiu	$a1,$a0,6405
    beqz	$a1,.L0dacec18
    nop
    # Line 31
    jr	$ra
    li	$v0,4
.L0daced80:
    # Line 26
    sltiu	$at,$a0,6410
    bnez	$at,.L0dacee44
    sltiu	$v0,$a0,6411
    beqz	$v0,.L0dacec18
    nop
    b	.L0daceca0
    nop
.L0daced9c:
    li	$a2,0x8043
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacee9c
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0dacec18
    nop
    b	.L0daceca0
    nop
.L0dacedbc:
    li	$a2,0x804e
    sltu	$at,$a0,$a2
    bnez	$at,.L0daceec4
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0dacec18
    nop
    b	.L0dacec44
    nop
.L0daceddc:
    li	$a2,0x8053
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daceed8
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0dacec18
    nop
    b	.L0dacec44
    nop
.L0dacedfc:
    li	$at,6403
    bne	$a0,$at,.L0dacec18
    nop
    # Line 29
    jr	$ra
    li	$v0,8
.L0dacee10:
    # Line 26
    li	$a2,0x8059
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dacef00
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0dacec18
    nop
    b	.L0dacecd4
    nop
.L0dacee30:
    li	$a1,6406
    bne	$a0,$a1,.L0dacec18
    nop
    b	.L0daced28
    nop
.L0dacee44:
    li	$at,6409
    bne	$a0,$at,.L0dacec18
    nop
    b	.L0daced08
    nop
.L0dacee58:
    li	$v0,0x803c
    bne	$a0,$v0,.L0dacec18
    nop
    b	.L0daced28
    nop
.L0dacee6c:
    li	$v1,0x8047
    bne	$a0,$v1,.L0dacec18
    nop
    b	.L0daceca0
    nop
.L0dacee80:
    # Line 33
    jr	$ra
    li	$v0,2
.L0dacee88:
    # Line 26
    li	$a1,0x803f
    bne	$a0,$a1,.L0dacec18
    nop
    b	.L0daced08
    nop
.L0dacee9c:
    li	$at,0x8042
    bne	$a0,$at,.L0dacec18
    nop
    b	.L0daced08
    nop
.L0daceeb0:
    li	$v0,0x804a
    bne	$a0,$v0,.L0dacec18
    nop
    b	.L0daced5c
    nop
.L0daceec4:
    li	$v1,0x804d
    bne	$a0,$v1,.L0dacec18
    nop
    b	.L0daced5c
    nop
.L0daceed8:
    li	$a1,0x8052
    bne	$a0,$a1,.L0dacec18
    nop
    b	.L0dacec44
    nop
.L0daceeec:
    li	$at,0x8055
    bne	$a0,$at,.L0dacec18
    nop
    b	.L0dacecd4
    nop
.L0dacef00:
    li	$v0,0x8058
    bne	$a0,$v0,.L0dacec18
    nop
    b	.L0dacecd4
    nop
.end getchannels

# Function: getbaseformat
# Declared: Line 91 (Source lines: 92-146)
# Address: 0x0dacef14 - 0x0dacf2d0 (Size: 956 bytes, Frame: 0)
.globl getbaseformat
.ent getbaseformat
getbaseformat:
    # Line 92
    li	$a2,0x8047
    sltu	$at,$a0,$a2
    bnez	$at,.L0dacef78
    # Line 93
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0dacf010
    li	$a2,0x8052
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacf044
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0dacf03c
    li	$a2,0x8057
    sltu	$at,$a0,$a2
    bnez	$at,.L0dacf148
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0dacf140
    li	$a2,0x805a
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacf128
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0dacf140
    li	$at,0x805b
    bne	$a0,$at,.L0daceff4
    nop
    b	.L0dacf140
    nop
.L0dacef78:
    li	$a2,0x803c
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dacefc8
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0dacf0cc
    li	$a2,0x8042
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dacf080
    sltu	$at,$a2,$a0
    beqz	$at,.L0dacf0ac
    li	$a2,0x8045
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dacf18c
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0dacf010
    li	$a1,0x8046
    bne	$a0,$a1,.L0daceff4
    nop
    b	.L0dacf010
    nop
.L0dacefc8:
    sltiu	$at,$a0,6408
    bnez	$at,.L0dacf018
    sltiu	$v0,$a0,6409
    bnez	$v0,.L0dacf140
    sltiu	$v1,$a0,10768
    bnez	$v1,.L0daceffc
    sltiu	$a1,$a0,10769
    bnez	$a1,.L0dacf03c
    li	$at,0x803b
    beq	$a0,$at,.L0dacf0cc
    nop
.L0daceff4:
    # Line 146
    jr	$ra
    move	$v0,$zero
.L0daceffc:
    # Line 93
    sltiu	$v0,$a0,6410
    bnez	$v0,.L0dacf214
    sltiu	$v1,$a0,6411
    beqz	$v1,.L0daceff4
    nop
.L0dacf010:
    # Line 119
    jr	$ra
    li	$v0,6410
.L0dacf018:
    # Line 93
    sltiu	$a1,$a0,6405
    bnez	$a1,.L0dacf170
    sltiu	$at,$a0,6406
    bnez	$at,.L0dacf250
    sltiu	$v0,$a0,6407
    bnez	$v0,.L0dacf200
    sltiu	$v1,$a0,6408
    beqz	$v1,.L0daceff4
    nop
.L0dacf03c:
    # Line 135
    jr	$ra
    li	$v0,6407
.L0dacf044:
    # Line 93
    li	$a2,0x804d
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dacf0d4
    sltu	$at,$a2,$a0
    beqz	$at,.L0dacf120
    li	$a2,0x8050
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dacf1ac
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0dacf03c
    li	$a1,0x8051
    bne	$a0,$a1,.L0daceff4
    nop
    b	.L0dacf03c
    nop
.L0dacf080:
    li	$a2,0x803f
    sltu	$at,$a0,$a2
    bnez	$at,.L0dacf0b4
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0dacf0ac
    li	$a2,0x8041
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacf258
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0daceff4
    nop
.L0dacf0ac:
    # Line 111
    jr	$ra
    li	$v0,6409
.L0dacf0b4:
    # Line 93
    li	$a2,0x803e
    sltu	$at,$a0,$a2
    bnez	$at,.L0dacf228
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daceff4
    nop
.L0dacf0cc:
    # Line 105
    jr	$ra
    li	$v0,6406
.L0dacf0d4:
    # Line 93
    li	$a2,0x804a
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacf108
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0dacf120
    li	$a2,0x804c
    sltu	$at,$a0,$a2
    bnez	$at,.L0dacf280
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daceff4
    nop
    b	.L0dacf120
    nop
.L0dacf108:
    li	$a2,0x8049
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacf23c
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0daceff4
    nop
.L0dacf120:
    # Line 125
    jr	$ra
    li	$v0,0x8049
.L0dacf128:
    # Line 93
    li	$a2,0x8059
    sltu	$at,$a0,$a2
    bnez	$at,.L0dacf2bc
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daceff4
    nop
.L0dacf140:
    # Line 144
    jr	$ra
    li	$v0,6408
.L0dacf148:
    # Line 93
    li	$a2,0x8055
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dacf1cc
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0dacf140
    li	$at,0x8056
    bne	$a0,$at,.L0daceff4
    nop
    b	.L0dacf140
    nop
.L0dacf170:
    sltiu	$v0,$a0,6404
    bnez	$v0,.L0dacf1ec
    sltiu	$v1,$a0,6405
    beqz	$v1,.L0daceff4
    nop
    # Line 97
    jr	$ra
    li	$v0,6404
.L0dacf18c:
    # Line 93
    li	$a2,0x8044
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dacf26c
    sltu	$at,$a2,$a0
    bnez	$at,.L0daceff4
    nop
    b	.L0dacf010
    nop
.L0dacf1ac:
    li	$a2,0x804f
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dacf294
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0daceff4
    nop
    b	.L0dacf03c
    nop
.L0dacf1cc:
    li	$a2,0x8054
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dacf2a8
    sltu	$at,$a2,$a0
    bnez	$at,.L0daceff4
    nop
    b	.L0dacf03c
    nop
.L0dacf1ec:
    li	$v0,6403
    bne	$a0,$v0,.L0daceff4
    nop
    # Line 95
    jr	$ra
    li	$v0,6403
.L0dacf200:
    # Line 93
    li	$v1,6406
    bne	$a0,$v1,.L0daceff4
    nop
    b	.L0dacf0cc
    nop
.L0dacf214:
    li	$a1,6409
    bne	$a0,$a1,.L0daceff4
    nop
    b	.L0dacf0ac
    nop
.L0dacf228:
    li	$at,0x803d
    bne	$a0,$at,.L0daceff4
    nop
    b	.L0dacf0cc
    nop
.L0dacf23c:
    li	$v0,0x8048
    bne	$a0,$v0,.L0daceff4
    nop
    b	.L0dacf010
    nop
.L0dacf250:
    # Line 99
    jr	$ra
    li	$v0,6405
.L0dacf258:
    # Line 93
    li	$v1,0x8040
    bne	$a0,$v1,.L0daceff4
    nop
    b	.L0dacf0ac
    nop
.L0dacf26c:
    li	$a1,0x8043
    bne	$a0,$a1,.L0daceff4
    nop
    b	.L0dacf010
    nop
.L0dacf280:
    li	$at,0x804b
    bne	$a0,$at,.L0daceff4
    nop
    b	.L0dacf120
    nop
.L0dacf294:
    li	$v0,0x804e
    bne	$a0,$v0,.L0daceff4
    nop
    b	.L0dacf03c
    nop
.L0dacf2a8:
    li	$v1,0x8053
    bne	$a0,$v1,.L0daceff4
    nop
    b	.L0dacf03c
    nop
.L0dacf2bc:
    li	$a1,0x8058
    bne	$a0,$a1,.L0daceff4
    nop
    b	.L0dacf140
    nop
.end getbaseformat

# Function: getbasetype
# Declared: Line 156 (Source lines: 157-217)
# Address: 0x0dacf2d0 - 0x0dacf69c (Size: 972 bytes, Frame: 0)
.globl getbasetype
.ent getbasetype
getbasetype:
    # Line 157
    li	$v0,0x8048
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf334
    # Line 158
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dacf39c
    li	$v0,0x8052
    sltu	$a2,$a0,$v0
    bnez	$a2,.L0dacf3dc
    sltu	$a3,$v0,$a0
    beqz	$a3,.L0dacf39c
    li	$v0,0x8057
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf4f8
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dacf458
    li	$v0,0x805a
    sltu	$a2,$a0,$v0
    bnez	$a2,.L0dacf5b4
    sltu	$a3,$v0,$a0
    beqz	$a3,.L0dacf39c
    li	$at,0x805b
    bne	$a0,$at,.L0dacf438
    nop
    b	.L0dacf39c
    nop
.L0dacf334:
    li	$v0,0x803e
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dacf3a4
    sltu	$a2,$v0,$a0
    beqz	$a2,.L0dacf39c
    li	$v0,0x8043
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0dacf418
    sltu	$at,$v0,$a0
    beqz	$at,.L0dacf458
    li	$v0,0x8046
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dacf560
    sltu	$a2,$v0,$a0
    beqz	$a2,.L0dacf39c
    li	$a3,0x8047
    bne	$a0,$a3,.L0dacf438
    nop
    b	.L0dacf39c
    nop
.L0dacf384:
    li	$v0,0x8054
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf638
    sltu	$v1,$v0,$a0
    bnez	$v1,.L0dacf438
    nop
.L0dacf39c:
    # Line 215
    jr	$ra
    li	$v0,5123
.L0dacf3a4:
    # Line 158
    sltiu	$a2,$a0,10768
    bnez	$a2,.L0dacf460
    sltiu	$a3,$a0,10769
    bnez	$a3,.L0dacf458
    li	$v0,0x803c
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf440
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dacf458
    li	$a2,0x803d
    bne	$a0,$a2,.L0dacf438
    nop
    b	.L0dacf39c
    nop
.L0dacf3dc:
    li	$v0,0x804d
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0dacf4d0
    sltu	$at,$v0,$a0
    beqz	$at,.L0dacf39c
    li	$v0,0x8050
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dacf580
    sltu	$a2,$v0,$a0
    beqz	$a2,.L0dacf458
    li	$a3,0x8051
    bne	$a0,$a3,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf418:
    li	$v0,0x8041
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf520
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dacf39c
    li	$a2,0x8042
    beq	$a0,$a2,.L0dacf39c
    nop
.L0dacf438:
    # Line 217
    jr	$ra
    move	$v0,$zero
.L0dacf440:
    # Line 158
    li	$v0,0x803b
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0dacf5d4
    sltu	$at,$v0,$a0
    bnez	$at,.L0dacf438
    nop
.L0dacf458:
    # Line 199
    jr	$ra
    li	$v0,5121
.L0dacf460:
    # Line 158
    sltiu	$v1,$a0,6408
    bnez	$v1,.L0dacf48c
    sltiu	$a2,$a0,6409
    bnez	$a2,.L0dacf49c
    sltiu	$a3,$a0,6410
    bnez	$a3,.L0dacf64c
    sltiu	$at,$a0,6411
    beqz	$at,.L0dacf438
    nop
    b	.L0dacf4a0
    # Line 166
    li	$a3,0x8032
.L0dacf48c:
    # Line 158
    sltiu	$v1,$a0,6407
    bnez	$v1,.L0dacf5a0
    sltiu	$a2,$a0,6408
    beqz	$a2,.L0dacf438
.L0dacf49c:
    # Line 166
    li	$a3,0x8032
.L0dacf4a0:
    beq	$a1,$a3,.L0dacf67c
    li	$at,0x8033
    beq	$a1,$at,.L0dacf684
    li	$v1,0x8034
    beq	$a1,$v1,.L0dacf68c
    li	$a2,0x8035
    beq	$a1,$a2,.L0dacf694
    li	$a3,0x8036
    beq	$a1,$a3,.L0dacf674
    nop
    # Line 179
    jr	$ra
    move	$v0,$a1
.L0dacf4d0:
    # Line 158
    li	$v0,0x804b
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf540
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dacf458
    li	$a2,0x804c
    bne	$a0,$a2,.L0dacf438
    nop
    b	.L0dacf39c
    nop
.L0dacf4f8:
    li	$v0,0x8055
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0dacf384
    sltu	$at,$v0,$a0
    beqz	$at,.L0dacf458
    li	$v1,0x8056
    bne	$a0,$v1,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf520:
    li	$v0,0x8040
    sltu	$a2,$a0,$v0
    bnez	$a2,.L0dacf5e8
    sltu	$a3,$v0,$a0
    bnez	$a3,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf540:
    li	$v0,0x804a
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf5fc
    sltu	$v1,$v0,$a0
    bnez	$v1,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf560:
    li	$v0,0x8045
    sltu	$a2,$a0,$v0
    bnez	$a2,.L0dacf610
    sltu	$a3,$v0,$a0
    bnez	$a3,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf580:
    li	$v0,0x804f
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacf624
    sltu	$v1,$v0,$a0
    bnez	$v1,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf5a0:
    li	$a2,6406
    bne	$a0,$a2,.L0dacf438
    nop
    b	.L0dacf4a0
    # Line 166
    li	$a3,0x8032
.L0dacf5b4:
    # Line 158
    li	$v0,0x8059
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0dacf660
    sltu	$at,$v0,$a0
    bnez	$at,.L0dacf438
    nop
    b	.L0dacf39c
    nop
.L0dacf5d4:
    li	$v1,0x8000
    bne	$a0,$v1,.L0dacf438
    nop
    b	.L0dacf4a0
    # Line 166
    li	$a3,0x8032
.L0dacf5e8:
    # Line 158
    li	$a2,0x803f
    bne	$a0,$a2,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf5fc:
    li	$a3,0x8049
    bne	$a0,$a3,.L0dacf438
    nop
    b	.L0dacf4a0
    # Line 166
    li	$a3,0x8032
.L0dacf610:
    # Line 158
    li	$at,0x8044
    bne	$a0,$at,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf624:
    li	$v1,0x804e
    bne	$a0,$v1,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf638:
    li	$a2,0x8053
    bne	$a0,$a2,.L0dacf438
    nop
    b	.L0dacf39c
    nop
.L0dacf64c:
    li	$a3,6409
    bne	$a0,$a3,.L0dacf438
    nop
    b	.L0dacf4a0
    # Line 166
    li	$a3,0x8032
.L0dacf660:
    # Line 158
    li	$at,0x8058
    bne	$a0,$at,.L0dacf438
    nop
    b	.L0dacf458
    nop
.L0dacf674:
    # Line 177
    jr	$ra
    li	$v0,5123
.L0dacf67c:
    # Line 169
    jr	$ra
    li	$v0,5121
.L0dacf684:
    # Line 171
    jr	$ra
    li	$v0,5121
.L0dacf68c:
    # Line 173
    jr	$ra
    li	$v0,5121
.L0dacf694:
    # Line 175
    jr	$ra
    li	$v0,5121
.end getbasetype

# Function: calcbytesperpixel
# Declared: Line 226 (Source lines: 227-266)
# Address: 0x0dacf69c - 0x0dacf750 (Size: 180 bytes, Frame: 0)
.globl calcbytesperpixel
.ent calcbytesperpixel
calcbytesperpixel:
    # Line 228
    move	$v0,$zero
    addiu	$a5,$a1,-5120
    # Line 227
    lui	$v1,0x13
    addiu	$v1,$v1,-4100
    addu	$at,$t9,$v1
    # Line 228
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$v1,$a5,7
    sll	$a5,$a5,0x2
    addiu	$t9,$t9,-5824
    beqz	$v1,.L0dacf6d8
    addu	$a5,$a5,$t9
    lw	$a1,%lo(jtbl_0dbee940)($a5)
    jr	$a1
    # Line 242
    li	$v0,4
.L0dacf6d4:
    # Line 233
    li	$v0,1
.L0dacf6d8:
    # Line 246
    sltiu	$a2,$a0,6407
.L0dacf6dc:
    bnez	$a2,.L0dacf714
    sltiu	$a3,$a0,6408
    bnez	$a3,.L0dacf70c
    sltiu	$v1,$a0,6410
    bnez	$v1,.L0dacf71c
    sltiu	$a1,$a0,6411
    bnez	$a1,.L0dacf748
    li	$a2,0x8000
    bne	$a0,$a2,.L0dacf714
    nop
    b	.L0dacf730
    nop
.L0dacf70c:
    # Line 258
    sll	$a3,$v0,0x2
    subu	$v0,$a3,$v0
.L0dacf714:
    # Line 266
    jr	$ra
    nop
.L0dacf71c:
    # Line 246
    sltiu	$v1,$a0,6409
    beqz	$v1,.L0dacf714
    li	$a1,6408
    bne	$a0,$a1,.L0dacf714
    nop
.L0dacf730:
    # Line 266
    jr	$ra
    # Line 262
    sll	$v0,$v0,0x2
.L0dacf738:
    # Line 238
    b	.L0dacf6d8
    # Line 237
    li	$v0,2
.L0dacf740:
    b	.L0dacf6dc
    # Line 246
    sltiu	$a2,$a0,6407
.L0dacf748:
    # Line 266
    jr	$ra
    # Line 255
    addu	$v0,$v0,$v0
.end calcbytesperpixel

# Function: __glMgrCvtToFloat
# Declared: Line 273 (Source lines: 287-307)
# Address: 0x0dacf750 - 0x0dacfca8 (Size: 1368 bytes, Frame: 0)
.globl __glMgrCvtToFloat
.ent __glMgrCvtToFloat
__glMgrCvtToFloat:
    # Line 287
    li	$at,5120
    beq	$a2,$at,.L0dacf794
    # Line 289
    sll	$a5,$a1,0x2
    # Line 287
    li	$v0,5122
    beq	$a2,$v0,.L0dacf95c
    # Line 292
    sll	$a4,$a1,0x2
    # Line 287
    li	$v1,5124
    beq	$a2,$v1,.L0dacfa30
    li	$a3,5121
    beq	$a2,$a3,.L0dacfb04
    li	$at,5123
    beq	$a2,$at,.L0dacfbd4
    li	$v0,5125
    beq	$a2,$v0,.L0dacf864
    # Line 304
    move	$a2,$zero
.L0dacf78c:
    # Line 307
    jr	$ra
    nop
.L0dacf794:
    # Line 289
    addu	$a5,$a5,$a0
    addu	$a4,$a1,$a0
    blez	$a1,.L0dacf78c
    move	$a2,$zero
    move	$a6,$a1
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dacf7e0
    move	$t1,$a2
.L0dacf7b4:
    lb	$at,-1($a4)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,1
    addiu	$a5,$a5,-4
    addiu	$a4,$a4,-1
    addi	$a0,$a0,-1
    bnez	$a0,.L0dacf7b4
    swc1	$f0,0($a5)
    move	$t1,$a2
.L0dacf7e0:
    sra	$v0,$a6,0x2
    move	$t0,$a5
    beqz	$v0,.L0dacf85c
    move	$a7,$a4
    move	$a2,$t0
    move	$a4,$t1
    move	$a0,$a7
.L0dacf7fc:
    lb	$v0,-1($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,-4($a2)
    lb	$at,-2($a0)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,-8($a2)
    lb	$a3,-3($a0)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-12($a2)
    lb	$v1,-4($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,-16
    addiu	$a0,$a0,-4
    addiu	$a4,$a4,4
    bne	$a1,$a4,.L0dacf7fc
    swc1	$f1,0($a2)
.L0dacf85c:
    # Line 307
    jr	$ra
    nop
.L0dacf864:
    # Line 304
    sll	$a5,$a1,0x2
    addu	$a5,$a5,$a0
    blez	$a1,.L0dacf78c
    move	$a4,$a5
    move	$a6,$a1
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dacf8b8
    move	$a7,$a5
.L0dacf884:
    lw	$at,-4($a5)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    addiu	$a2,$a2,1
    addiu	$a4,$a4,-4
    addiu	$a5,$a5,-4
    addi	$a0,$a0,-1
    bnez	$a0,.L0dacf884
    swc1	$f1,0($a4)
    move	$a7,$a5
.L0dacf8b8:
    move	$t1,$a2
    move	$t0,$a4
    sra	$v0,$a6,0x2
    beqz	$v0,.L0dacf954
    move	$a2,$t0
    move	$a0,$t1
    move	$a4,$a7
.L0dacf8d4:
    lw	$v0,-4($a4)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    swc1	$f1,-4($a2)
    lw	$at,-8($a4)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    swc1	$f0,-8($a2)
    lw	$a3,-12($a4)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,-12($a2)
    lw	$v1,-16($a4)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    addiu	$a2,$a2,-16
    addiu	$a4,$a4,-16
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dacf8d4
    swc1	$f2,0($a2)
.L0dacf954:
    # Line 307
    jr	$ra
    nop
.L0dacf95c:
    # Line 292
    addu	$a4,$a4,$a0
    move	$a2,$zero
    addu	$a5,$a1,$a1
    blez	$a1,.L0dacf78c
    addu	$a5,$a5,$a0
    move	$a6,$a1
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dacf9ac
    move	$a7,$a5
.L0dacf980:
    lh	$at,-2($a5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a2,$a2,1
    addiu	$a4,$a4,-4
    addiu	$a5,$a5,-2
    addi	$a0,$a0,-1
    bnez	$a0,.L0dacf980
    swc1	$f2,0($a4)
    move	$a7,$a5
.L0dacf9ac:
    move	$t1,$a2
    move	$t0,$a4
    sra	$v0,$a6,0x2
    beqz	$v0,.L0dacfa28
    move	$a2,$t0
    move	$a0,$t1
    move	$a4,$a7
.L0dacf9c8:
    lh	$v0,-2($a4)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-4($a2)
    lh	$at,-4($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,-8($a2)
    lh	$a3,-6($a4)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,-12($a2)
    lh	$v1,-8($a4)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    addiu	$a2,$a2,-16
    addiu	$a4,$a4,-8
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dacf9c8
    swc1	$f3,0($a2)
.L0dacfa28:
    # Line 307
    jr	$ra
    nop
.L0dacfa30:
    # Line 295
    move	$a2,$zero
    sll	$a5,$a1,0x2
    addu	$a5,$a5,$a0
    blez	$a1,.L0dacf78c
    move	$a4,$a5
    andi	$a0,$a1,0x3
    move	$a6,$a1
    beqz	$a0,.L0dacfa80
    move	$t1,$a2
.L0dacfa54:
    lw	$at,-4($a5)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    addiu	$a2,$a2,1
    addiu	$a4,$a4,-4
    addiu	$a5,$a5,-4
    addi	$a0,$a0,-1
    bnez	$a0,.L0dacfa54
    swc1	$f3,0($a4)
    move	$t1,$a2
.L0dacfa80:
    move	$t0,$a4
    sra	$v0,$a6,0x2
    beqz	$v0,.L0dacfafc
    move	$a7,$a5
    move	$a4,$t1
    move	$a0,$t0
    move	$a2,$a7
.L0dacfa9c:
    lw	$v0,-4($a2)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,-4($a0)
    lw	$at,-8($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-8($a0)
    lw	$a3,-12($a2)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,-12($a0)
    lw	$v1,-16($a2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a0,$a0,-16
    addiu	$a2,$a2,-16
    addiu	$a4,$a4,4
    bne	$a1,$a4,.L0dacfa9c
    swc1	$f0,0($a0)
.L0dacfafc:
    # Line 307
    jr	$ra
    nop
.L0dacfb04:
    # Line 298
    addu	$a4,$a1,$a0
    move	$a2,$zero
    sll	$a5,$a1,0x2
    blez	$a1,.L0dacf78c
    addu	$a5,$a5,$a0
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dacfb4c
    move	$a6,$a1
.L0dacfb24:
    lbu	$at,-1($a4)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,1
    addiu	$a5,$a5,-4
    addiu	$a4,$a4,-1
    addi	$a0,$a0,-1
    bnez	$a0,.L0dacfb24
    swc1	$f0,0($a5)
.L0dacfb4c:
    move	$t1,$a2
    move	$t0,$a5
    sra	$v0,$a6,0x2
    beqz	$v0,.L0dacfbcc
    move	$a7,$a4
    move	$a2,$t1
    move	$a0,$t0
    move	$a4,$a7
.L0dacfb6c:
    lbu	$v0,-1($a4)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,-4($a0)
    lbu	$at,-2($a4)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,-8($a0)
    lbu	$a3,-3($a4)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-12($a0)
    lbu	$v1,-4($a4)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a0,$a0,-16
    addiu	$a4,$a4,-4
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dacfb6c
    swc1	$f1,0($a0)
.L0dacfbcc:
    # Line 307
    jr	$ra
    nop
.L0dacfbd4:
    # Line 301
    move	$a2,$zero
    addu	$a4,$a1,$a1
    sll	$a5,$a1,0x2
    addu	$a5,$a5,$a0
    blez	$a1,.L0dacf78c
    addu	$a4,$a4,$a0
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dacfc20
    move	$a6,$a1
.L0dacfbf8:
    lhu	$at,-2($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,1
    addiu	$a5,$a5,-4
    addiu	$a4,$a4,-2
    addi	$a0,$a0,-1
    bnez	$a0,.L0dacfbf8
    swc1	$f1,0($a5)
.L0dacfc20:
    move	$t1,$a2
    move	$t0,$a5
    sra	$v0,$a6,0x2
    beqz	$v0,.L0dacfca0
    move	$a7,$a4
    move	$a0,$t1
    move	$a2,$t0
    move	$a4,$a7
.L0dacfc40:
    lhu	$v0,-2($a4)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,-4($a2)
    lhu	$at,-4($a4)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,-8($a2)
    lhu	$a3,-6($a4)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,-12($a2)
    lhu	$v1,-8($a4)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a2,$a2,-16
    addiu	$a4,$a4,-8
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dacfc40
    swc1	$f2,0($a2)
.L0dacfca0:
    # Line 307
    jr	$ra
    nop
.end __glMgrCvtToFloat

# Function: __glMgrCvtScaleBias
# Declared: Line 314 (Source lines: 315-354)
# Address: 0x0dacfca8 - 0x0dacfd94 (Size: 236 bytes, Frame: 48)
.globl __glMgrCvtScaleBias
.ent __glMgrCvtScaleBias
__glMgrCvtScaleBias:
    # Line 315
    addiu	$sp,$sp,-48
    addiu	$a5,$a2,-5120
    lui	$v0,0x13
    addiu	$v0,$v0,-5648
    addu	$at,$t9,$v0
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$v0,$a5,7
    sll	$a5,$a5,0x2
    addiu	$t9,$t9,-5792
    beqz	$v0,.L0dacfcf8
    addu	$a5,$a5,$t9
    lw	$v1,%lo(jtbl_0dbee960)($a5)
    # Line 342
    lwc1	$f3,_lit_30000001
    # Line 338
    lwc1	$f1,_lit_37800080
    # Line 315
    jr	$v1
    # Line 343
    mtc1	$zero,$f0
.L0dacfce8:
    # Line 323
    lwc1	$f1,_lit_3b808081
    # Line 322
    lwc1	$f0,_lit_3c008081
    # Line 323
    swc1	$f1,4($sp)
    # Line 322
    swc1	$f0,0($sp)
.L0dacfcf8:
    # Line 352
    lwc1	$f4,4($sp)
    sll	$a4,$a1,0x2
    addu	$a4,$a4,$a0
    beq	$a4,$a0,.L0dacfd2c
    addiu	$a4,$a4,-4
    addiu	$a1,$a0,-4
    lwc1	$f5,0($sp)
.L0dacfd14:
    # Line 353
    lwc1	$f2,0($a4)
    mul.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f4
    # Line 352
    addiu	$a4,$a4,-4
    bne	$a1,$a4,.L0dacfd14
    # Line 353
    swc1	$f2,4($a4)
.L0dacfd2c:
    # Line 354
    jr	$ra
    addiu	$sp,$sp,48
.L0dacfd34:
    # Line 327
    lwc1	$f0,_lit_37800080
    # Line 326
    lwc1	$f3,_lit_38000080
    # Line 327
    swc1	$f0,4($sp)
    # Line 328
    b	.L0dacfcf8
    # Line 326
    swc1	$f3,0($sp)
.L0dacfd48:
    # Line 331
    lwc1	$f2,_lit_2f800001
    # Line 330
    lwc1	$f1,_lit_30000001
    # Line 331
    swc1	$f2,4($sp)
    # Line 332
    b	.L0dacfcf8
    # Line 330
    swc1	$f1,0($sp)
.L0dacfd5c:
    # Line 335
    mtc1	$zero,$f0
    # Line 334
    lwc1	$f3,_lit_3b808081
    # Line 335
    swc1	$f0,4($sp)
    # Line 336
    b	.L0dacfcf8
    # Line 334
    swc1	$f3,0($sp)
.L0dacfd70:
    # Line 339
    mtc1	$zero,$f2
    # Line 338
    swc1	$f1,0($sp)
    # Line 340
    b	.L0dacfcf8
    # Line 339
    swc1	$f2,4($sp)
.L0dacfd80:
    # Line 343
    swc1	$f0,4($sp)
    # Line 344
    b	.L0dacfcf8
    # Line 342
    swc1	$f3,0($sp)
.L0dacfd8c:
    # Line 346
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrCvtScaleBias

# Function: __glMgrCvtToRGBA
# Declared: Line 360 (Source lines: 362-456)
# Address: 0x0dacfd94 - 0x0dad04d4 (Size: 1856 bytes, Frame: 0)
.globl __glMgrCvtToRGBA
.ent __glMgrCvtToRGBA
__glMgrCvtToRGBA:
    andi	$a6,$a2,0x3
    # Line 362
    sltiu	$v0,$a3,6407
    lui	$v1,0x13
    addiu	$v1,$v1,-5884
    bnez	$v0,.L0dacfed0
    addu	$at,$t9,$v1
    # Line 366
    sltiu	$a4,$a3,6408
    bnez	$a4,.L0dacffb0
    sltiu	$a5,$a3,6410
    bnez	$a5,.L0dad0328
    sltiu	$v0,$a3,6411
    bnez	$v0,.L0dad03fc
    li	$v1,0x8000
    bne	$a3,$v1,.L0dad0098
    nop
    # Line 443
    blez	$a2,.L0dad0098
    move	$a3,$zero
    andi	$a6,$a2,0x3
    beqz	$a6,.L0dacfe18
    move	$a7,$a2
.L0dacfde4:
    # Line 447
    lwc1	$f3,-16($a0)
    swc1	$f3,-4($a1)
    # Line 448
    lwc1	$f2,-12($a0)
    swc1	$f2,-8($a1)
    # Line 449
    lwc1	$f1,-8($a0)
    # Line 443
    addiu	$a3,$a3,1
    # Line 446
    addiu	$a0,$a0,-16
    # Line 449
    swc1	$f1,-12($a1)
    # Line 445
    addiu	$a1,$a1,-16
    # Line 450
    lwc1	$f0,12($a0)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dacfde4
    swc1	$f0,0($a1)
.L0dacfe18:
    move	$t1,$a3
    move	$t0,$a0
    sra	$a4,$a7,0x2
    beqz	$a4,.L0dacfec8
    move	$a6,$a1
    move	$a0,$t1
    move	$a3,$t0
    move	$a1,$a6
.L0dacfe38:
    # Line 447
    lwc1	$f3,-16($a3)
    swc1	$f3,-4($a1)
    # Line 448
    lwc1	$f2,-12($a3)
    swc1	$f2,-8($a1)
    # Line 449
    lwc1	$f1,-8($a3)
    swc1	$f1,-12($a1)
    # Line 450
    lwc1	$f0,-4($a3)
    swc1	$f0,-16($a1)
    # Line 447
    lwc1	$f3,-32($a3)
    swc1	$f3,-20($a1)
    # Line 448
    lwc1	$f2,-28($a3)
    swc1	$f2,-24($a1)
    # Line 449
    lwc1	$f1,-24($a3)
    swc1	$f1,-28($a1)
    # Line 450
    lwc1	$f0,-20($a3)
    swc1	$f0,-32($a1)
    # Line 447
    lwc1	$f3,-48($a3)
    swc1	$f3,-36($a1)
    # Line 448
    lwc1	$f2,-44($a3)
    swc1	$f2,-40($a1)
    # Line 449
    lwc1	$f1,-40($a3)
    swc1	$f1,-44($a1)
    # Line 450
    lwc1	$f0,-36($a3)
    swc1	$f0,-48($a1)
    # Line 447
    lwc1	$f3,-64($a3)
    swc1	$f3,-52($a1)
    # Line 448
    lwc1	$f2,-60($a3)
    swc1	$f2,-56($a1)
    # Line 449
    lwc1	$f1,-56($a3)
    # Line 446
    addiu	$a3,$a3,-64
    # Line 449
    swc1	$f1,-60($a1)
    # Line 445
    addiu	$a1,$a1,-64
    # Line 450
    lwc1	$f0,12($a3)
    # Line 443
    addiu	$a0,$a0,4
    bne	$a2,$a0,.L0dacfe38
    # Line 450
    swc1	$f0,0($a1)
.L0dacfec8:
    # Line 456
    jr	$ra
    nop
.L0dacfed0:
    # Line 366
    sltiu	$a5,$a3,6405
    bnez	$a5,.L0dad00a0
    andi	$a6,$a2,0x3
    sltiu	$v0,$a3,6406
    beqz	$v0,.L0dad0254
    # Line 412
    move	$a7,$a2
    blez	$a2,.L0dad0098
    move	$a3,$zero
    lwc1	$f4,_lit_3f800000
    mtc1	$zero,$f5
    beqz	$a6,.L0dacff2c
    move	$t1,$a3
.L0dacff00:
    addiu	$a3,$a3,1
    # Line 416
    addiu	$a0,$a0,-4
    # Line 414
    addiu	$a1,$a1,-16
    # Line 415
    swc1	$f4,12($a1)
    addi	$a6,$a6,-1
    # Line 416
    lwc1	$f0,0($a0)
    # Line 418
    swc1	$f5,0($a1)
    # Line 417
    swc1	$f5,4($a1)
    bnez	$a6,.L0dacff00
    # Line 416
    swc1	$f0,8($a1)
    move	$t1,$a3
.L0dacff2c:
    move	$a6,$a1
    move	$t0,$a0
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dacffa8
    move	$a0,$t0
    move	$a3,$t1
    move	$a1,$a6
.L0dacff48:
    # Line 415
    swc1	$f4,-4($a1)
    # Line 416
    lwc1	$f0,-4($a0)
    swc1	$f0,-8($a1)
    # Line 417
    swc1	$f5,-12($a1)
    # Line 418
    swc1	$f5,-16($a1)
    # Line 415
    swc1	$f4,-20($a1)
    # Line 416
    lwc1	$f3,-8($a0)
    swc1	$f3,-24($a1)
    # Line 417
    swc1	$f5,-28($a1)
    # Line 418
    swc1	$f5,-32($a1)
    # Line 415
    swc1	$f4,-36($a1)
    # Line 416
    lwc1	$f2,-12($a0)
    addiu	$a0,$a0,-16
    # Line 414
    addiu	$a1,$a1,-64
    # Line 416
    swc1	$f2,24($a1)
    # Line 417
    swc1	$f5,20($a1)
    # Line 418
    swc1	$f5,16($a1)
    # Line 415
    swc1	$f4,12($a1)
    # Line 412
    addiu	$a3,$a3,4
    # Line 416
    lwc1	$f1,0($a0)
    # Line 418
    swc1	$f5,0($a1)
    # Line 417
    swc1	$f5,4($a1)
    # Line 412
    bne	$a2,$a3,.L0dacff48
    # Line 416
    swc1	$f1,8($a1)
.L0dacffa8:
    # Line 456
    jr	$ra
    nop
.L0dacffb0:
    # Line 432
    blez	$a2,.L0dad0098
    move	$a3,$zero
    lwc1	$f4,_lit_3f800000
    move	$a7,$a2
    beqzl	$a6,.L0dacfffc
    move	$a6,$a3
.L0dacffc8:
    # Line 436
    swc1	$f4,-4($a1)
    # Line 437
    lwc1	$f3,-4($a0)
    swc1	$f3,-8($a1)
    # Line 438
    lwc1	$f2,-8($a0)
    # Line 432
    addiu	$a3,$a3,1
    # Line 435
    addiu	$a0,$a0,-12
    # Line 438
    swc1	$f2,-12($a1)
    # Line 434
    addiu	$a1,$a1,-16
    # Line 439
    lwc1	$f1,0($a0)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dacffc8
    swc1	$f1,0($a1)
    move	$a6,$a3
.L0dacfffc:
    sra	$a4,$a7,0x2
    move	$t1,$a0
    beqz	$a4,.L0dad0098
    move	$t0,$a1
    move	$a3,$t1
    move	$a1,$a6
    move	$a0,$t0
.L0dad0018:
    # Line 436
    swc1	$f4,-4($a0)
    # Line 437
    lwc1	$f3,-4($a3)
    swc1	$f3,-8($a0)
    # Line 438
    lwc1	$f2,-8($a3)
    swc1	$f2,-12($a0)
    # Line 439
    lwc1	$f1,-12($a3)
    swc1	$f1,-16($a0)
    # Line 436
    swc1	$f4,-20($a0)
    # Line 437
    lwc1	$f0,-16($a3)
    swc1	$f0,-24($a0)
    # Line 438
    lwc1	$f3,-20($a3)
    swc1	$f3,-28($a0)
    # Line 439
    lwc1	$f2,-24($a3)
    swc1	$f2,-32($a0)
    # Line 436
    swc1	$f4,-36($a0)
    # Line 437
    lwc1	$f1,-28($a3)
    swc1	$f1,-40($a0)
    # Line 438
    lwc1	$f0,-32($a3)
    swc1	$f0,-44($a0)
    # Line 439
    lwc1	$f3,-36($a3)
    swc1	$f3,-48($a0)
    # Line 436
    swc1	$f4,-52($a0)
    # Line 437
    lwc1	$f2,-40($a3)
    swc1	$f2,-56($a0)
    # Line 438
    lwc1	$f1,-44($a3)
    # Line 435
    addiu	$a3,$a3,-48
    # Line 438
    swc1	$f1,-60($a0)
    # Line 434
    addiu	$a0,$a0,-64
    # Line 439
    lwc1	$f0,0($a3)
    # Line 432
    addiu	$a1,$a1,4
    bne	$a2,$a1,.L0dad0018
    # Line 439
    swc1	$f0,0($a0)
.L0dad0098:
    # Line 456
    jr	$ra
    nop
.L0dad00a0:
    # Line 366
    sltiu	$a5,$a3,6404
    bnez	$a5,.L0dad017c
    sltiu	$v0,$a3,6405
    beqz	$v0,.L0dad0098
    # Line 402
    move	$a3,$zero
    blez	$a2,.L0dad0098
    mtc1	$zero,$f5
    move	$a7,$a2
    andi	$a6,$a2,0x3
    beqz	$a6,.L0dad00f4
    lwc1	$f4,_lit_3f800000
.L0dad00cc:
    addiu	$a3,$a3,1
    # Line 407
    addiu	$a0,$a0,-4
    # Line 404
    addiu	$a1,$a1,-16
    # Line 405
    swc1	$f4,12($a1)
    # Line 406
    swc1	$f5,8($a1)
    addi	$a6,$a6,-1
    # Line 407
    lwc1	$f0,0($a0)
    # Line 408
    swc1	$f5,0($a1)
    bnez	$a6,.L0dad00cc
    # Line 407
    swc1	$f0,4($a1)
.L0dad00f4:
    move	$t1,$a3
    move	$t0,$a0
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad0174
    move	$a6,$a1
    move	$a3,$t1
    move	$a0,$t0
    move	$a1,$a6
.L0dad0114:
    # Line 405
    swc1	$f4,-4($a1)
    # Line 406
    swc1	$f5,-8($a1)
    # Line 407
    lwc1	$f0,-4($a0)
    swc1	$f0,-12($a1)
    # Line 408
    swc1	$f5,-16($a1)
    # Line 405
    swc1	$f4,-20($a1)
    # Line 406
    swc1	$f5,-24($a1)
    # Line 407
    lwc1	$f3,-8($a0)
    swc1	$f3,-28($a1)
    # Line 408
    swc1	$f5,-32($a1)
    # Line 405
    swc1	$f4,-36($a1)
    # Line 406
    swc1	$f5,-40($a1)
    # Line 407
    lwc1	$f2,-12($a0)
    addiu	$a0,$a0,-16
    # Line 404
    addiu	$a1,$a1,-64
    # Line 407
    swc1	$f2,20($a1)
    # Line 408
    swc1	$f5,16($a1)
    # Line 405
    swc1	$f4,12($a1)
    # Line 406
    swc1	$f5,8($a1)
    # Line 402
    addiu	$a3,$a3,4
    # Line 407
    lwc1	$f1,0($a0)
    # Line 408
    swc1	$f5,0($a1)
    # Line 402
    bne	$a2,$a3,.L0dad0114
    # Line 407
    swc1	$f1,4($a1)
.L0dad0174:
    # Line 456
    jr	$ra
    nop
.L0dad017c:
    # Line 366
    li	$a4,6403
    bne	$a3,$a4,.L0dad0098
    nop
    # Line 392
    blez	$a2,.L0dad0098
    move	$a3,$zero
    mtc1	$zero,$f5
    move	$a7,$a2
    andi	$a6,$a2,0x3
    beqz	$a6,.L0dad01cc
    lwc1	$f4,_lit_3f800000
.L0dad01a4:
    addiu	$a3,$a3,1
    # Line 398
    addiu	$a0,$a0,-4
    # Line 395
    swc1	$f4,-4($a1)
    # Line 396
    swc1	$f5,-8($a1)
    # Line 397
    swc1	$f5,-12($a1)
    # Line 394
    addiu	$a1,$a1,-16
    # Line 398
    lwc1	$f1,0($a0)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dad01a4
    swc1	$f1,0($a1)
.L0dad01cc:
    move	$a6,$a3
    move	$t1,$a0
    sra	$a5,$a7,0x2
    beqz	$a5,.L0dad024c
    move	$t0,$a1
    move	$a1,$a6
    move	$a0,$t1
    move	$a3,$t0
.L0dad01ec:
    # Line 395
    swc1	$f4,-4($a3)
    # Line 396
    swc1	$f5,-8($a3)
    # Line 397
    swc1	$f5,-12($a3)
    # Line 398
    lwc1	$f1,-4($a0)
    swc1	$f1,-16($a3)
    # Line 395
    swc1	$f4,-20($a3)
    # Line 396
    swc1	$f5,-24($a3)
    # Line 397
    swc1	$f5,-28($a3)
    # Line 398
    lwc1	$f0,-8($a0)
    swc1	$f0,-32($a3)
    # Line 395
    swc1	$f4,-36($a3)
    # Line 396
    swc1	$f5,-40($a3)
    # Line 397
    swc1	$f5,-44($a3)
    # Line 398
    lwc1	$f3,-12($a0)
    addiu	$a0,$a0,-16
    swc1	$f3,-48($a3)
    # Line 395
    swc1	$f4,-52($a3)
    # Line 396
    swc1	$f5,-56($a3)
    # Line 397
    swc1	$f5,-60($a3)
    # Line 394
    addiu	$a3,$a3,-64
    # Line 398
    lwc1	$f2,0($a0)
    # Line 392
    addiu	$a1,$a1,4
    bne	$a2,$a1,.L0dad01ec
    # Line 398
    swc1	$f2,0($a3)
.L0dad024c:
    # Line 456
    jr	$ra
    nop
.L0dad0254:
    # Line 366
    li	$v0,6406
    bne	$a3,$v0,.L0dad0098
    nop
    # Line 422
    blez	$a2,.L0dad0098
    move	$a3,$zero
    move	$a7,$a2
    andi	$a6,$a2,0x3
    beqz	$a6,.L0dad02a0
    mtc1	$zero,$f5
.L0dad0278:
    addiu	$a3,$a3,1
    # Line 425
    lwc1	$f2,-4($a0)
    # Line 428
    swc1	$f5,-16($a1)
    # Line 427
    swc1	$f5,-12($a1)
    # Line 426
    swc1	$f5,-8($a1)
    # Line 425
    addiu	$a0,$a0,-4
    # Line 424
    addiu	$a1,$a1,-16
    addi	$a6,$a6,-1
    bnez	$a6,.L0dad0278
    # Line 425
    swc1	$f2,12($a1)
.L0dad02a0:
    move	$t1,$a3
    move	$t0,$a0
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad0320
    move	$a6,$a1
    move	$a0,$t1
    move	$a3,$t0
    move	$a1,$a6
.L0dad02c0:
    lwc1	$f2,-4($a3)
    swc1	$f2,-4($a1)
    # Line 426
    swc1	$f5,-8($a1)
    # Line 427
    swc1	$f5,-12($a1)
    # Line 428
    swc1	$f5,-16($a1)
    # Line 425
    lwc1	$f1,-8($a3)
    swc1	$f1,-20($a1)
    # Line 426
    swc1	$f5,-24($a1)
    # Line 427
    swc1	$f5,-28($a1)
    # Line 428
    swc1	$f5,-32($a1)
    # Line 425
    lwc1	$f0,-12($a3)
    addiu	$a3,$a3,-16
    # Line 424
    addiu	$a1,$a1,-64
    # Line 425
    swc1	$f0,28($a1)
    # Line 426
    swc1	$f5,24($a1)
    # Line 427
    swc1	$f5,20($a1)
    # Line 428
    swc1	$f5,16($a1)
    # Line 422
    addiu	$a0,$a0,4
    # Line 425
    lwc1	$f3,0($a3)
    # Line 428
    swc1	$f5,0($a1)
    # Line 427
    swc1	$f5,4($a1)
    # Line 426
    swc1	$f5,8($a1)
    # Line 422
    bne	$a2,$a0,.L0dad02c0
    # Line 425
    swc1	$f3,12($a1)
.L0dad0320:
    # Line 456
    jr	$ra
    nop
.L0dad0328:
    # Line 366
    li	$a4,6409
    bne	$a3,$a4,.L0dad0098
    nop
    # Line 369
    blez	$a2,.L0dad0098
    move	$a3,$zero
    move	$a7,$a2
    andi	$a6,$a2,0x3
    beqz	$a6,.L0dad0374
    lwc1	$f4,_lit_3f800000
.L0dad034c:
    addiu	$a3,$a3,1
    # Line 371
    lwc1	$f3,-4($a0)
    # Line 373
    swc1	$f4,-4($a1)
    # Line 372
    addiu	$a1,$a1,-16
    # Line 371
    addiu	$a0,$a0,-4
    addi	$a6,$a6,-1
    # Line 376
    swc1	$f3,0($a1)
    # Line 375
    swc1	$f3,4($a1)
    bnez	$a6,.L0dad034c
    # Line 374
    swc1	$f3,8($a1)
.L0dad0374:
    move	$a6,$a3
    move	$t1,$a1
    sra	$a5,$a7,0x2
    beqz	$a5,.L0dad03f4
    move	$t0,$a0
    move	$a3,$a6
    move	$a0,$t1
    move	$a1,$t0
.L0dad0394:
    # Line 371
    lwc1	$f3,-4($a1)
    # Line 373
    swc1	$f4,-4($a0)
    # Line 374
    swc1	$f3,-8($a0)
    # Line 375
    swc1	$f3,-12($a0)
    # Line 376
    swc1	$f3,-16($a0)
    # Line 371
    lwc1	$f2,-8($a1)
    # Line 373
    swc1	$f4,-20($a0)
    # Line 374
    swc1	$f2,-24($a0)
    # Line 375
    swc1	$f2,-28($a0)
    # Line 376
    swc1	$f2,-32($a0)
    # Line 371
    lwc1	$f1,-12($a1)
    # Line 372
    addiu	$a0,$a0,-64
    # Line 373
    swc1	$f4,28($a0)
    # Line 374
    swc1	$f1,24($a0)
    # Line 375
    swc1	$f1,20($a0)
    # Line 376
    swc1	$f1,16($a0)
    # Line 371
    addiu	$a1,$a1,-16
    lwc1	$f0,0($a1)
    # Line 369
    addiu	$a3,$a3,4
    # Line 373
    swc1	$f4,12($a0)
    # Line 376
    swc1	$f0,0($a0)
    # Line 375
    swc1	$f0,4($a0)
    # Line 369
    bne	$a2,$a3,.L0dad0394
    # Line 374
    swc1	$f0,8($a0)
.L0dad03f4:
    # Line 456
    jr	$ra
    nop
.L0dad03fc:
    # Line 380
    blez	$a2,.L0dad0098
    move	$a3,$zero
    andi	$a6,$a2,0x3
    beqz	$a6,.L0dad043c
    move	$a7,$a2
.L0dad0410:
    addiu	$a3,$a3,1
    # Line 384
    addiu	$a1,$a1,-16
    # Line 383
    addiu	$a0,$a0,-8
    lwc1	$f1,0($a0)
    addi	$a6,$a6,-1
    # Line 382
    lwc1	$f0,4($a0)
    # Line 388
    swc1	$f1,0($a1)
    # Line 387
    swc1	$f1,4($a1)
    # Line 386
    swc1	$f1,8($a1)
    bnez	$a6,.L0dad0410
    # Line 385
    swc1	$f0,12($a1)
.L0dad043c:
    move	$t1,$a3
    move	$t0,$a1
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dad04cc
    move	$a6,$a0
    move	$a0,$t1
    move	$a1,$t0
    move	$a3,$a6
.L0dad045c:
    # Line 382
    lwc1	$f1,-4($a3)
    # Line 383
    lwc1	$f0,-8($a3)
    # Line 385
    swc1	$f1,-4($a1)
    # Line 386
    swc1	$f0,-8($a1)
    # Line 387
    swc1	$f0,-12($a1)
    # Line 388
    swc1	$f0,-16($a1)
    # Line 382
    lwc1	$f3,-12($a3)
    # Line 383
    lwc1	$f2,-16($a3)
    # Line 385
    swc1	$f3,-20($a1)
    # Line 386
    swc1	$f2,-24($a1)
    # Line 387
    swc1	$f2,-28($a1)
    # Line 388
    swc1	$f2,-32($a1)
    # Line 382
    lwc1	$f1,-20($a3)
    # Line 383
    lwc1	$f0,-24($a3)
    # Line 384
    addiu	$a1,$a1,-64
    # Line 385
    swc1	$f1,28($a1)
    # Line 386
    swc1	$f0,24($a1)
    # Line 387
    swc1	$f0,20($a1)
    # Line 388
    swc1	$f0,16($a1)
    # Line 383
    addiu	$a3,$a3,-32
    lwc1	$f3,0($a3)
    # Line 380
    addiu	$a0,$a0,4
    # Line 382
    lwc1	$f2,4($a3)
    # Line 388
    swc1	$f3,0($a1)
    # Line 387
    swc1	$f3,4($a1)
    # Line 386
    swc1	$f3,8($a1)
    # Line 380
    bne	$a2,$a0,.L0dad045c
    # Line 385
    swc1	$f2,12($a1)
.L0dad04cc:
    # Line 456
    jr	$ra
    nop
.end __glMgrCvtToRGBA

# Function: __glMgrCvtToInternalFmt
# Declared: Line 462 (Source lines: 468-526)
# Address: 0x0dad04d4 - 0x0dad07b8 (Size: 740 bytes, Frame: 0)
.globl __glMgrCvtToInternalFmt
.ent __glMgrCvtToInternalFmt
__glMgrCvtToInternalFmt:
    # Line 502
    move	$a6,$a1
    # Line 468
    li	$at,6408
    beq	$a2,$at,.L0dad0510
    move	$a4,$a0
    # Line 473
    li	$v0,6406
    beq	$a2,$v0,.L0dad067c
    li	$v1,6409
    beq	$a2,$v1,.L0dad0518
    li	$a3,0x8049
    beq	$a2,$a3,.L0dad0518
    li	$at,6410
    beq	$a2,$at,.L0dad0708
    li	$v0,6407
    beq	$a2,$v0,.L0dad05a0
    nop
.L0dad0510:
    # Line 526
    jr	$ra
    nop
.L0dad0518:
    # Line 502
    blez	$a1,.L0dad0510
    move	$a2,$zero
    andi	$a5,$a1,0x3
    beqz	$a5,.L0dad054c
    move	$t0,$a2
.L0dad052c:
    addiu	$a2,$a2,1
    # Line 504
    addiu	$a0,$a0,16
    # Line 503
    addiu	$a4,$a4,4
    lwc1	$f0,-16($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dad052c
    swc1	$f0,-4($a4)
    move	$t0,$a2
.L0dad054c:
    sra	$v1,$a6,0x2
    move	$a7,$a0
    beqz	$v1,.L0dad0598
    move	$a5,$a4
    move	$a2,$a7
    move	$a4,$t0
    move	$a0,$a5
.L0dad0568:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a0)
    lwc1	$f2,32($a2)
    # Line 504
    addiu	$a2,$a2,64
    # Line 503
    swc1	$f2,8($a0)
    addiu	$a0,$a0,16
    lwc1	$f1,-16($a2)
    # Line 502
    addiu	$a4,$a4,4
    bne	$a1,$a4,.L0dad0568
    # Line 503
    swc1	$f1,-4($a0)
.L0dad0598:
    # Line 526
    jr	$ra
    nop
.L0dad05a0:
    # Line 516
    blez	$a1,.L0dad0510
    move	$a2,$zero
    move	$a6,$a1
    andi	$a5,$a1,0x3
    beqz	$a5,.L0dad05e8
    move	$t0,$a2
.L0dad05b8:
    # Line 517
    lwc1	$f3,0($a0)
    swc1	$f3,0($a4)
    # Line 518
    lwc1	$f2,4($a0)
    # Line 516
    addiu	$a2,$a2,1
    # Line 521
    addiu	$a4,$a4,12
    # Line 518
    swc1	$f2,-8($a4)
    # Line 520
    addiu	$a0,$a0,16
    # Line 519
    lwc1	$f1,-8($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dad05b8
    swc1	$f1,-4($a4)
    move	$t0,$a2
.L0dad05e8:
    move	$a5,$a0
    move	$a7,$a4
    sra	$a3,$a6,0x2
    beqz	$a3,.L0dad0674
    move	$a4,$a7
    move	$a2,$t0
    move	$a0,$a5
.L0dad0604:
    # Line 517
    lwc1	$f3,0($a0)
    swc1	$f3,0($a4)
    # Line 518
    lwc1	$f2,4($a0)
    swc1	$f2,4($a4)
    # Line 519
    lwc1	$f1,8($a0)
    swc1	$f1,8($a4)
    # Line 517
    lwc1	$f0,16($a0)
    swc1	$f0,12($a4)
    # Line 518
    lwc1	$f3,20($a0)
    swc1	$f3,16($a4)
    # Line 519
    lwc1	$f2,24($a0)
    swc1	$f2,20($a4)
    # Line 517
    lwc1	$f1,32($a0)
    swc1	$f1,24($a4)
    # Line 518
    lwc1	$f0,36($a0)
    swc1	$f0,28($a4)
    # Line 519
    lwc1	$f3,40($a0)
    swc1	$f3,32($a4)
    # Line 517
    lwc1	$f2,48($a0)
    swc1	$f2,36($a4)
    # Line 518
    lwc1	$f1,52($a0)
    # Line 521
    addiu	$a4,$a4,48
    # Line 518
    swc1	$f1,-8($a4)
    # Line 520
    addiu	$a0,$a0,64
    # Line 519
    lwc1	$f0,-8($a0)
    # Line 516
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dad0604
    # Line 519
    swc1	$f0,-4($a4)
.L0dad0674:
    # Line 526
    jr	$ra
    nop
.L0dad067c:
    # Line 495
    blez	$a1,.L0dad0510
    move	$a2,$zero
    move	$a6,$a1
    andi	$a5,$a1,0x3
    beqz	$a5,.L0dad06b4
    move	$a7,$a4
.L0dad0694:
    addiu	$a2,$a2,1
    # Line 497
    addiu	$a0,$a0,16
    # Line 496
    addiu	$a4,$a4,4
    lwc1	$f0,-4($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dad0694
    swc1	$f0,-4($a4)
    move	$a7,$a4
.L0dad06b4:
    move	$t0,$a2
    move	$a5,$a0
    sra	$at,$a6,0x2
    beqz	$at,.L0dad0700
    move	$a2,$a5
    move	$a0,$t0
    move	$a4,$a7
.L0dad06d0:
    lwc1	$f0,12($a2)
    swc1	$f0,0($a4)
    lwc1	$f3,28($a2)
    swc1	$f3,4($a4)
    lwc1	$f2,44($a2)
    # Line 497
    addiu	$a2,$a2,64
    # Line 496
    swc1	$f2,8($a4)
    addiu	$a4,$a4,16
    lwc1	$f1,-4($a2)
    # Line 495
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dad06d0
    # Line 496
    swc1	$f1,-4($a4)
.L0dad0700:
    # Line 526
    jr	$ra
    nop
.L0dad0708:
    # Line 508
    blez	$a1,.L0dad0510
    move	$a2,$zero
    andi	$a5,$a1,0x3
    beqz	$a5,.L0dad0740
    move	$a6,$a1
.L0dad071c:
    # Line 509
    lwc1	$f2,0($a0)
    # Line 508
    addiu	$a2,$a2,1
    # Line 512
    addiu	$a4,$a4,8
    # Line 509
    swc1	$f2,-8($a4)
    # Line 511
    addiu	$a0,$a0,16
    # Line 510
    lwc1	$f1,-4($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dad071c
    swc1	$f1,-4($a4)
.L0dad0740:
    move	$t0,$a2
    move	$a7,$a4
    sra	$v0,$a6,0x2
    beqz	$v0,.L0dad07b0
    move	$a5,$a0
    move	$a2,$t0
    move	$a0,$a7
    move	$a4,$a5
.L0dad0760:
    # Line 509
    lwc1	$f2,0($a4)
    swc1	$f2,0($a0)
    # Line 510
    lwc1	$f1,12($a4)
    swc1	$f1,4($a0)
    # Line 509
    lwc1	$f0,16($a4)
    swc1	$f0,8($a0)
    # Line 510
    lwc1	$f3,28($a4)
    swc1	$f3,12($a0)
    # Line 509
    lwc1	$f2,32($a4)
    swc1	$f2,16($a0)
    # Line 510
    lwc1	$f1,44($a4)
    swc1	$f1,20($a0)
    # Line 509
    lwc1	$f0,48($a4)
    # Line 512
    addiu	$a0,$a0,32
    # Line 509
    swc1	$f0,-8($a0)
    # Line 511
    addiu	$a4,$a4,64
    # Line 510
    lwc1	$f3,-4($a4)
    # Line 508
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dad0760
    # Line 510
    swc1	$f3,-4($a0)
.L0dad07b0:
    # Line 526
    jr	$ra
    nop
.end __glMgrCvtToInternalFmt

# Function: __glMgr_PackPixels
# Declared: Line 540 (Source lines: 543-618)
# Address: 0x0dad07b8 - 0x0dad0e78 (Size: 1728 bytes, Frame: 0)
.globl __glMgr_PackPixels
.ent __glMgr_PackPixels
__glMgr_PackPixels:
    # Line 546
    move	$a6,$a1
    # Line 543
    li	$at,0x8032
    beq	$a2,$at,.L0dad0880
    # Line 604
    move	$a7,$a1
    # Line 543
    li	$v0,0x8033
    beq	$a2,$v0,.L0dad0968
    li	$v1,0x8034
    beq	$a2,$v1,.L0dad09e0
    li	$a5,0x8035
    beq	$a2,$a5,.L0dad0a68
    li	$at,0x8036
    beq	$a2,$at,.L0dad07f4
    # Line 603
    move	$a6,$a0
.L0dad07ec:
    # Line 618
    jr	$ra
    nop
.L0dad07f4:
    # Line 604
    beqz	$a4,.L0dad0b7c
    li	$a2,-1
    # Line 607
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
.L0dad0804:
    # Line 608
    addiu	$a6,$a6,8
    lhu	$v1,-8($a6)
    addiu	$a7,$a7,4
    # Line 607
    addiu	$a3,$a3,-1
    # Line 608
    andi	$v0,$v1,0x3fc0
    sll	$v0,$v0,0x12
    andi	$v1,$v1,0xc000
    lhu	$at,-6($a6)
    sll	$v1,$v1,0x2
    or	$v0,$v0,$v1
    andi	$v1,$at,0xfc0
    lhu	$a0,-4($a6)
    sll	$v1,$v1,0xc
    or	$v0,$v0,$v1
    andi	$a5,$a0,0x3c0
    sll	$a5,$a5,0x6
    andi	$at,$at,0xf000
    srl	$at,$at,0x4
    lhu	$v1,-2($a6)
    or	$a5,$a5,$at
    or	$v0,$v0,$a5
    andi	$v1,$v1,0xc000
    srl	$v1,$v1,0x8
    andi	$a0,$a0,0xfc00
    srl	$a0,$a0,0xa
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    # Line 607
    bne	$a3,$a2,.L0dad0804
    # Line 608
    sw	$v0,-4($a7)
    # Line 618
    jr	$ra
    nop
.L0dad0880:
    # Line 548
    li	$a2,-1
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
    # Line 545
    move	$a4,$a0
    # Line 548
    addiu	$a0,$a3,1
    andi	$v1,$a0,0x1
    beqz	$v1,.L0dad08dc
    move	$t1,$a3
    addiu	$a3,$a3,-1
    # Line 549
    addiu	$a4,$a4,3
    addiu	$a6,$a6,1
    lbu	$a5,-1($a4)
    lbu	$at,-3($a4)
    lbu	$v0,-2($a4)
    andi	$a5,$a5,0xc0
    andi	$at,$at,0xe0
    andi	$v0,$v0,0xe0
    sra	$v0,$v0,0x2
    sra	$at,$at,0x5
    or	$at,$at,$v0
    or	$a5,$a5,$at
    sb	$a5,-1($a6)
    move	$t1,$a3
.L0dad08dc:
    move	$a7,$a6
    move	$t0,$a4
    sra	$at,$a0,0x1
    beqz	$at,.L0dad0960
    move	$a1,$t0
    move	$a3,$t1
    move	$a0,$a7
.L0dad08f8:
    lbu	$v1,2($a1)
    addiu	$a1,$a1,6
    lbu	$a5,-6($a1)
    andi	$v1,$v1,0xc0
    lbu	$at,-5($a1)
    andi	$a5,$a5,0xe0
    sra	$a5,$a5,0x5
    andi	$at,$at,0xe0
    sra	$at,$at,0x2
    or	$a5,$a5,$at
    or	$v1,$v1,$a5
    sb	$v1,0($a0)
    addiu	$a0,$a0,2
    lbu	$v0,-1($a1)
    # Line 548
    addiu	$a3,$a3,-2
    # Line 549
    lbu	$v1,-3($a1)
    andi	$v0,$v0,0xc0
    lbu	$a5,-2($a1)
    andi	$v1,$v1,0xe0
    sra	$v1,$v1,0x5
    andi	$a5,$a5,0xe0
    sra	$a5,$a5,0x2
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    # Line 548
    bne	$a3,$a2,.L0dad08f8
    # Line 549
    sb	$v0,-1($a0)
.L0dad0960:
    # Line 618
    jr	$ra
    nop
.L0dad0968:
    # Line 556
    move	$a6,$a1
    # Line 555
    move	$a7,$a0
    # Line 556
    beqz	$a4,.L0dad0c98
    li	$a2,-1
    # Line 559
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
.L0dad0980:
    # Line 560
    addiu	$a7,$a7,4
    addiu	$a6,$a6,2
    lbu	$a5,-1($a7)
    lbu	$v0,-2($a7)
    # Line 559
    addiu	$a3,$a3,-1
    # Line 560
    andi	$a5,$a5,0xf0
    andi	$v0,$v0,0xf0
    andi	$v0,$v0,0xffff
    lbu	$at,-4($a7)
    sra	$v0,$v0,0x4
    or	$a5,$a5,$v0
    andi	$at,$at,0xf0
    lbu	$v0,-3($a7)
    andi	$at,$at,0xffff
    sll	$at,$at,0x4
    andi	$v0,$v0,0xf0
    andi	$v0,$v0,0xffff
    sll	$v0,$v0,0x8
    or	$at,$at,$v0
    or	$a5,$a5,$at
    # Line 559
    bne	$a3,$a2,.L0dad0980
    # Line 560
    sh	$a5,-2($a6)
    # Line 618
    jr	$ra
    nop
.L0dad09e0:
    # Line 572
    move	$a6,$a1
    # Line 571
    move	$a7,$a0
    # Line 572
    beqz	$a4,.L0dad0d04
    li	$a2,-1
    # Line 575
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
.L0dad09f8:
    # Line 576
    addiu	$a7,$a7,4
    addiu	$a6,$a6,2
    lbu	$at,-1($a7)
    lbu	$v1,-2($a7)
    # Line 575
    addiu	$a3,$a3,-1
    # Line 576
    andi	$at,$at,0x80
    andi	$v1,$v1,0xf8
    andi	$v1,$v1,0xffff
    lbu	$v0,-4($a7)
    sra	$v1,$v1,0x1
    or	$at,$at,$v1
    andi	$v0,$v0,0xf8
    lbu	$v1,-3($a7)
    andi	$v0,$v0,0xffff
    sll	$v0,$v0,0x5
    andi	$a5,$v1,0x38
    andi	$a5,$a5,0xffff
    sll	$a5,$a5,0xa
    or	$v0,$v0,$a5
    andi	$v1,$v1,0xc0
    andi	$v1,$v1,0xffff
    sra	$v1,$v1,0x6
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 575
    bne	$a3,$a2,.L0dad09f8
    # Line 576
    sh	$at,-2($a6)
    # Line 618
    jr	$ra
    nop
.L0dad0a68:
    # Line 588
    move	$a6,$a1
    # Line 587
    move	$a7,$a0
    # Line 588
    beqz	$a4,.L0dad0d74
    li	$a2,-1
    # Line 591
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
    addiu	$a0,$a3,1
    andi	$v0,$a0,0x1
    beqz	$v0,.L0dad0ad8
    move	$t1,$a3
    addiu	$a3,$a3,-1
    # Line 592
    addiu	$a7,$a7,4
    lbu	$v1,-1($a7)
    lbu	$v0,-2($a7)
    addiu	$a6,$a6,4
    andi	$v1,$v1,0xff
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x8
    lbu	$a5,-4($a7)
    lbu	$at,-3($a7)
    or	$v1,$v1,$v0
    sll	$a5,$a5,0x18
    andi	$at,$at,0xff
    sll	$at,$at,0x10
    or	$a5,$a5,$at
    or	$v1,$v1,$a5
    sw	$v1,-4($a6)
    move	$t1,$a3
.L0dad0ad8:
    move	$t0,$a7
    sra	$a5,$a0,0x1
    beqz	$a5,.L0dad0b74
    move	$a4,$a6
    move	$a0,$t1
    move	$a1,$t0
    move	$a3,$a4
.L0dad0af4:
    lbu	$v0,3($a1)
    lbu	$at,2($a1)
    addiu	$a1,$a1,8
    andi	$v0,$v0,0xff
    andi	$at,$at,0xff
    sll	$at,$at,0x8
    lbu	$v1,-8($a1)
    lbu	$a5,-7($a1)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x10
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    sw	$v0,0($a3)
    addiu	$a3,$a3,8
    lbu	$at,-1($a1)
    lbu	$a5,-2($a1)
    # Line 591
    addiu	$a0,$a0,-2
    # Line 592
    andi	$at,$at,0xff
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x8
    lbu	$v0,-4($a1)
    lbu	$v1,-3($a1)
    or	$at,$at,$a5
    sll	$v0,$v0,0x18
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 591
    bne	$a0,$a2,.L0dad0af4
    # Line 592
    sw	$at,-4($a3)
.L0dad0b74:
    # Line 618
    jr	$ra
    nop
.L0dad0b7c:
    # Line 611
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
    addiu	$a0,$a3,1
    andi	$v1,$a0,0x1
    beqz	$v1,.L0dad0be4
    move	$t1,$a3
    addiu	$a3,$a3,-1
    # Line 612
    addiu	$a6,$a6,8
    lhu	$a5,-6($a6)
    addiu	$a7,$a7,4
    lhu	$v0,-8($a6)
    andi	$a5,$a5,0xffc0
    sll	$a5,$a5,0x4
    andi	$v0,$v0,0xffc0
    srl	$v0,$v0,0x6
    lhu	$at,-4($a6)
    or	$a5,$a5,$v0
    lhu	$v0,-2($a6)
    andi	$at,$at,0xffc0
    sll	$at,$at,0xe
    andi	$v0,$v0,0xc000
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    or	$a5,$a5,$at
    sw	$a5,-4($a7)
    move	$t1,$a3
.L0dad0be4:
    move	$t0,$a6
    sra	$at,$a0,0x1
    beqz	$at,.L0dad0c90
    move	$a4,$a7
    move	$a0,$t1
    move	$a3,$t0
    move	$a1,$a4
.L0dad0c00:
    lhu	$v1,2($a3)
    addiu	$a3,$a3,16
    lhu	$at,-16($a3)
    andi	$v1,$v1,0xffc0
    sll	$v1,$v1,0x4
    andi	$at,$at,0xffc0
    srl	$at,$at,0x6
    lhu	$a5,-12($a3)
    or	$v1,$v1,$at
    lhu	$at,-10($a3)
    andi	$a5,$a5,0xffc0
    sll	$a5,$a5,0xe
    andi	$at,$at,0xc000
    sll	$at,$at,0x10
    or	$a5,$a5,$at
    or	$v1,$v1,$a5
    sw	$v1,0($a1)
    addiu	$a1,$a1,8
    lhu	$v0,-6($a3)
    # Line 611
    addiu	$a0,$a0,-2
    # Line 612
    lhu	$a5,-8($a3)
    andi	$v0,$v0,0xffc0
    sll	$v0,$v0,0x4
    andi	$a5,$a5,0xffc0
    srl	$a5,$a5,0x6
    lhu	$v1,-4($a3)
    or	$v0,$v0,$a5
    lhu	$a5,-2($a3)
    andi	$v1,$v1,0xffc0
    sll	$v1,$v1,0xe
    andi	$a5,$a5,0xc000
    sll	$a5,$a5,0x10
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    # Line 611
    bne	$a0,$a2,.L0dad0c00
    # Line 612
    sw	$v0,-4($a1)
.L0dad0c90:
    # Line 618
    jr	$ra
    nop
.L0dad0c98:
    # Line 563
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
.L0dad0ca0:
    # Line 564
    addiu	$a7,$a7,4
    addiu	$a6,$a6,2
    lbu	$a5,-3($a7)
    # Line 563
    addiu	$a3,$a3,-1
    # Line 564
    lbu	$v0,-4($a7)
    andi	$a5,$a5,0xf0
    andi	$a5,$a5,0xffff
    andi	$v0,$v0,0xf0
    andi	$v0,$v0,0xffff
    lbu	$at,-2($a7)
    sra	$v0,$v0,0x4
    or	$a5,$a5,$v0
    andi	$at,$at,0xf0
    lbu	$v0,-1($a7)
    andi	$at,$at,0xffff
    sll	$at,$at,0x4
    andi	$v0,$v0,0xf0
    andi	$v0,$v0,0xffff
    sll	$v0,$v0,0x8
    or	$at,$at,$v0
    or	$a5,$a5,$at
    # Line 563
    bne	$a3,$a2,.L0dad0ca0
    # Line 564
    sh	$a5,-2($a6)
    # Line 618
    jr	$ra
    nop
.L0dad0d04:
    # Line 579
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
.L0dad0d0c:
    # Line 580
    addiu	$a7,$a7,4
    lbu	$at,-3($a7)
    addiu	$a6,$a6,2
    # Line 579
    addiu	$a3,$a3,-1
    # Line 580
    andi	$at,$at,0xf8
    lbu	$v1,-4($a7)
    andi	$at,$at,0xffff
    sll	$at,$at,0x2
    andi	$v1,$v1,0xf8
    andi	$v1,$v1,0xffff
    lbu	$v0,-2($a7)
    sra	$v1,$v1,0x3
    or	$at,$at,$v1
    andi	$v0,$v0,0xf8
    lbu	$v1,-1($a7)
    andi	$v0,$v0,0xffff
    sll	$v0,$v0,0x7
    andi	$v1,$v1,0x80
    andi	$v1,$v1,0xffff
    sll	$v1,$v1,0x8
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 579
    bne	$a3,$a2,.L0dad0d0c
    # Line 580
    sh	$at,-2($a6)
    # Line 618
    jr	$ra
    nop
.L0dad0d74:
    # Line 595
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0dad07ec
    addiu	$a0,$a3,1
    andi	$v0,$a0,0x1
    beqz	$v0,.L0dad0dd4
    move	$t1,$a3
    addiu	$a3,$a3,-1
    # Line 596
    addiu	$a7,$a7,4
    lbu	$v1,-4($a7)
    lbu	$v0,-3($a7)
    addiu	$a6,$a6,4
    andi	$v1,$v1,0xff
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x8
    lbu	$a5,-1($a7)
    lbu	$at,-2($a7)
    or	$v1,$v1,$v0
    sll	$a5,$a5,0x18
    andi	$at,$at,0xff
    sll	$at,$at,0x10
    or	$a5,$a5,$at
    or	$v1,$v1,$a5
    sw	$v1,-4($a6)
    move	$t1,$a3
.L0dad0dd4:
    move	$t0,$a7
    sra	$a5,$a0,0x1
    beqz	$a5,.L0dad0e70
    move	$a4,$a6
    move	$a0,$t1
    move	$a1,$t0
    move	$a3,$a4
.L0dad0df0:
    lbu	$v0,0($a1)
    lbu	$at,1($a1)
    addiu	$a1,$a1,8
    andi	$v0,$v0,0xff
    andi	$at,$at,0xff
    sll	$at,$at,0x8
    lbu	$v1,-5($a1)
    lbu	$a5,-6($a1)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x10
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    sw	$v0,0($a3)
    addiu	$a3,$a3,8
    lbu	$at,-4($a1)
    lbu	$a5,-3($a1)
    # Line 595
    addiu	$a0,$a0,-2
    # Line 596
    andi	$at,$at,0xff
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x8
    lbu	$v0,-1($a1)
    lbu	$v1,-2($a1)
    or	$at,$at,$a5
    sll	$v0,$v0,0x18
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 595
    bne	$a0,$a2,.L0dad0df0
    # Line 596
    sw	$at,-4($a3)
.L0dad0e70:
    # Line 618
    jr	$ra
    nop
.end __glMgr_PackPixels

# Function: __glMgr_PackBitmap
# Declared: Line 625 (Source lines: 627-755)
# Address: 0x0dad0e78 - 0x0dad144c (Size: 1492 bytes, Frame: 0)
.globl __glMgr_PackBitmap
.ent __glMgr_PackBitmap
__glMgr_PackBitmap:
    # Line 638
    lbu	$a7,0($a1)
    # Line 634
    move	$t0,$a1
    # Line 638
    sltiu	$v1,$a3,8
    # Line 627
    lui	$v0,0x13
    addiu	$v0,$v0,-10208
    # Line 638
    beqz	$a4,.L0dad1110
    # Line 627
    addu	$at,$t9,$v0
    # Line 638
    beqz	$a3,.L0dad0f98
    la	$v0,sub_0dbf0000
    sll	$a6,$a3,0x2
    addiu	$v0,$v0,-5760
    beqz	$v1,.L0dad0f90
    addu	$a6,$a6,$v0
    lw	$v1,%lo(jtbl_0dbee980)($a6)
    jr	$v1
    nop
.L0dad0eb8:
    # Line 644
    lbu	$a4,0($a0)
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad13ec
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x2
.L0dad0ecc:
    # Line 646
    addiu	$a2,$a2,-1
    beqz	$a2,.L0dad0f94
    # Line 672
    addiu	$t0,$a1,1
.L0dad0ed8:
    # Line 648
    lbu	$a5,0($a0)
    andi	$a5,$a5,0x1
    beqz	$a5,.L0dad13d4
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x4
.L0dad0eec:
    # Line 650
    addiu	$a2,$a2,-1
    beqz	$a2,.L0dad0f94
    # Line 672
    addiu	$t0,$a1,1
.L0dad0ef8:
    # Line 652
    lbu	$v0,0($a0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad13c8
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x8
.L0dad0f0c:
    # Line 654
    addiu	$a2,$a2,-1
    beqz	$a2,.L0dad0f94
    # Line 672
    addiu	$t0,$a1,1
.L0dad0f18:
    # Line 656
    lbu	$v1,0($a0)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dad13bc
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x10
.L0dad0f2c:
    # Line 658
    addiu	$a2,$a2,-1
    beqz	$a2,.L0dad0f94
    # Line 672
    addiu	$t0,$a1,1
.L0dad0f38:
    # Line 660
    lbu	$a4,0($a0)
    # Line 662
    addiu	$a2,$a2,-1
    # Line 660
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad13b0
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x20
.L0dad0f50:
    # Line 662
    beqz	$a2,.L0dad0f94
    # Line 672
    addiu	$t0,$a1,1
.L0dad0f58:
    # Line 664
    lbu	$a5,0($a0)
    # Line 666
    addiu	$a2,$a2,-1
    # Line 664
    andi	$a5,$a5,0x1
    beqz	$a5,.L0dad13a4
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x40
.L0dad0f70:
    # Line 666
    beqz	$a2,.L0dad0f94
    # Line 672
    addiu	$t0,$a1,1
.L0dad0f78:
    # Line 668
    lbu	$v0,0($a0)
    # Line 670
    addiu	$a2,$a2,-1
    # Line 668
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad1398
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x80
.L0dad0f90:
    # Line 672
    addiu	$t0,$a1,1
.L0dad0f94:
    sb	$a7,0($a1)
.L0dad0f98:
    slti	$v1,$a2,8
    bnez	$v1,.L0dad1060
    nop
    b	.L0dad0fe4
    # Line 676
    lbu	$v1,0($a0)
.L0dad0fac:
    # Line 682
    lbu	$a4,6($a0)
.L0dad0fb0:
    andi	$a4,$a4,0x1
    beqzl	$a4,.L0dad0fc4
    # Line 684
    lbu	$a5,7($a0)
    # Line 683
    ori	$a7,$a7,0x40
    # Line 684
    lbu	$a5,7($a0)
.L0dad0fc4:
    andi	$a5,$a5,0x1
    beqz	$a5,.L0dad0fd4
    addiu	$a0,$a0,8
    ori	$a7,$a7,0x80
.L0dad0fd4:
    # Line 685
    sb	$a7,0($t0)
    bnez	$v0,.L0dad1060
    addiu	$t0,$t0,1
    # Line 676
    lbu	$v1,0($a0)
.L0dad0fe4:
    # Line 675
    move	$a7,$zero
    # Line 676
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dad0ff8
    addiu	$a2,$a2,-8
    # Line 677
    li	$a7,1
.L0dad0ff8:
    lbu	$a4,1($a0)
    andi	$a4,$a4,0x1
    beqzl	$a4,.L0dad1010
    # Line 678
    lbu	$a5,2($a0)
    ori	$a7,$a7,0x2
    lbu	$a5,2($a0)
.L0dad1010:
    andi	$a5,$a5,0x1
    beqzl	$a5,.L0dad1024
    # Line 679
    lbu	$v0,3($a0)
    ori	$a7,$a7,0x4
    lbu	$v0,3($a0)
.L0dad1024:
    andi	$v0,$v0,0x1
    beqzl	$v0,.L0dad1038
    # Line 680
    lbu	$v1,4($a0)
    ori	$a7,$a7,0x8
    lbu	$v1,4($a0)
.L0dad1038:
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dad1048
    # Line 685
    slti	$v0,$a2,8
    # Line 681
    ori	$a7,$a7,0x10
.L0dad1048:
    lbu	$a4,5($a0)
    andi	$a4,$a4,0x1
    beqzl	$a4,.L0dad0fb0
    # Line 682
    lbu	$a4,6($a0)
    b	.L0dad0fac
    ori	$a7,$a7,0x20
.L0dad1060:
    # Line 685
    beqz	$a2,.L0dad10b4
    # Line 689
    li	$a1,1
    li	$a3,1
    slt	$a7,$a2,$a3
    beqzl	$a7,.L0dad1078
    move	$a3,$a2
.L0dad1078:
    andi	$a5,$a3,0x1
    beqz	$a5,.L0dad10a4
    # Line 688
    lbu	$a7,0($t0)
    # Line 691
    lbu	$v0,0($a0)
    # Line 694
    addiu	$a2,$a2,-1
    # Line 691
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad138c
    addiu	$a0,$a0,1
    or	$a7,$a1,$a7
    andi	$a7,$a7,0xff
.L0dad10a0:
    # Line 693
    sll	$a1,$a1,0x1
.L0dad10a4:
    sra	$v0,$a3,0x1
    bnezl	$v0,.L0dad10e8
    # Line 691
    lbu	$v0,0($a0)
.L0dad10b0:
    # Line 695
    sb	$a7,0($t0)
.L0dad10b4:
    # Line 755
    jr	$ra
    nop
.L0dad10bc:
    # Line 692
    and	$a7,$v1,$a7
.L0dad10c0:
    # Line 691
    lbu	$a4,1($a0)
    addiu	$a0,$a0,2
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad1104
    # Line 693
    sll	$a1,$a1,0x1
    # Line 691
    or	$a7,$a1,$a7
    andi	$a7,$a7,0xff
.L0dad10dc:
    # Line 694
    beqz	$a2,.L0dad10b0
    # Line 693
    sll	$a1,$a1,0x1
    # Line 691
    lbu	$v0,0($a0)
.L0dad10e8:
    # Line 692
    nor	$v1,$a1,$zero
    # Line 691
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad10bc
    # Line 694
    addiu	$a2,$a2,-2
    # Line 691
    or	$a7,$a1,$a7
    b	.L0dad10c0
    andi	$a7,$a7,0xff
.L0dad1104:
    # Line 692
    nor	$v0,$a1,$zero
    b	.L0dad10dc
    and	$a7,$v0,$a7
.L0dad1110:
    # Line 695
    beqz	$a3,.L0dad1218
    la	$a4,sub_0dbf0000
    sltiu	$a5,$a3,8
    sll	$a1,$a3,0x2
    addiu	$a4,$a4,-5728
    beqz	$a5,.L0dad1210
    addu	$a1,$a1,$a4
    lw	$a5,%lo(jtbl_0dbee980)($a1)
    jr	$a5
    nop
.L0dad1138:
    # Line 701
    lbu	$v0,0($a0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad1440
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x40
.L0dad114c:
    # Line 703
    addiu	$a2,$a2,-1
    beqzl	$a2,.L0dad1214
    # Line 729
    sb	$a7,0($t0)
.L0dad1158:
    # Line 705
    lbu	$v1,0($a0)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dad1434
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x20
.L0dad116c:
    # Line 707
    addiu	$a2,$a2,-1
    beqzl	$a2,.L0dad1214
    # Line 729
    sb	$a7,0($t0)
.L0dad1178:
    # Line 709
    lbu	$a4,0($a0)
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad1428
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x10
.L0dad118c:
    # Line 711
    addiu	$a2,$a2,-1
    beqzl	$a2,.L0dad1214
    # Line 729
    sb	$a7,0($t0)
.L0dad1198:
    # Line 713
    lbu	$a5,0($a0)
    andi	$a5,$a5,0x1
    beqz	$a5,.L0dad141c
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x8
.L0dad11ac:
    # Line 715
    addiu	$a2,$a2,-1
    beqzl	$a2,.L0dad1214
    # Line 729
    sb	$a7,0($t0)
.L0dad11b8:
    # Line 717
    lbu	$v0,0($a0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad1410
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x4
.L0dad11cc:
    # Line 719
    addiu	$a2,$a2,-1
    beqzl	$a2,.L0dad1214
    # Line 729
    sb	$a7,0($t0)
.L0dad11d8:
    # Line 721
    lbu	$v1,0($a0)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dad1404
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x2
.L0dad11ec:
    # Line 723
    addiu	$a2,$a2,-1
    beqzl	$a2,.L0dad1214
    # Line 729
    sb	$a7,0($t0)
.L0dad11f8:
    # Line 725
    lbu	$a4,0($a0)
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad13f8
    addiu	$a0,$a0,1
    ori	$a7,$a7,0x1
.L0dad120c:
    # Line 727
    addiu	$a2,$a2,-1
.L0dad1210:
    # Line 729
    sb	$a7,0($t0)
.L0dad1214:
    addiu	$t0,$t0,1
.L0dad1218:
    slti	$a5,$a2,8
    bnez	$a5,.L0dad12e0
    nop
    b	.L0dad12c8
    # Line 733
    lbu	$v0,0($a0)
.L0dad122c:
    # Line 734
    lbu	$v0,1($a0)
    andi	$v0,$v0,0x1
    beqzl	$v0,.L0dad1244
    # Line 735
    lbu	$v1,2($a0)
    ori	$a7,$a7,0x40
    lbu	$v1,2($a0)
.L0dad1244:
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0dad1258
    # Line 736
    lbu	$a4,3($a0)
    ori	$a7,$a7,0x20
    lbu	$a4,3($a0)
.L0dad1258:
    andi	$a4,$a4,0x1
    beqzl	$a4,.L0dad126c
    # Line 737
    lbu	$a5,4($a0)
    ori	$a7,$a7,0x10
    lbu	$a5,4($a0)
.L0dad126c:
    andi	$a5,$a5,0x1
    beqzl	$a5,.L0dad1280
    # Line 738
    lbu	$v0,5($a0)
    ori	$a7,$a7,0x8
    lbu	$v0,5($a0)
.L0dad1280:
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad1290
    # Line 742
    slti	$a5,$a2,8
    # Line 739
    ori	$a7,$a7,0x4
.L0dad1290:
    lbu	$v1,6($a0)
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0dad12a8
    # Line 741
    lbu	$a4,7($a0)
    # Line 740
    ori	$a7,$a7,0x2
    # Line 741
    lbu	$a4,7($a0)
.L0dad12a8:
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad12b8
    addiu	$a0,$a0,8
    ori	$a7,$a7,0x1
.L0dad12b8:
    # Line 742
    sb	$a7,0($t0)
    bnez	$a5,.L0dad12e0
    addiu	$t0,$t0,1
    # Line 733
    lbu	$v0,0($a0)
.L0dad12c8:
    # Line 732
    move	$a7,$zero
    # Line 733
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad122c
    addiu	$a2,$a2,-8
    b	.L0dad122c
    # Line 734
    li	$a7,128
.L0dad12e0:
    # Line 742
    beqz	$a2,.L0dad10b4
    # Line 746
    li	$a3,1
    slt	$a1,$a2,$a3
    beqzl	$a1,.L0dad12f4
    move	$a3,$a2
.L0dad12f4:
    li	$a1,128
    andi	$v1,$a3,0x1
    beqz	$v1,.L0dad1324
    # Line 745
    lbu	$a7,0($t0)
    # Line 748
    lbu	$a4,0($a0)
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad13e0
    addiu	$a0,$a0,1
    or	$a7,$a1,$a7
    andi	$a7,$a7,0xff
.L0dad131c:
    # Line 751
    addiu	$a2,$a2,-1
    # Line 750
    sra	$a1,$a1,0x1
.L0dad1324:
    sra	$v0,$a3,0x1
    bnezl	$v0,.L0dad1364
    # Line 748
    lbu	$v0,0($a0)
.L0dad1330:
    # Line 755
    jr	$ra
    # Line 752
    sb	$a7,0($t0)
.L0dad1338:
    # Line 749
    and	$a7,$v1,$a7
.L0dad133c:
    # Line 748
    lbu	$a4,1($a0)
    addiu	$a0,$a0,2
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dad1380
    # Line 750
    sra	$a1,$a1,0x1
    # Line 748
    or	$a7,$a1,$a7
    andi	$a7,$a7,0xff
.L0dad1358:
    # Line 751
    beqz	$a2,.L0dad1330
    # Line 750
    sra	$a1,$a1,0x1
    # Line 748
    lbu	$v0,0($a0)
.L0dad1364:
    # Line 749
    nor	$v1,$a1,$zero
    # Line 748
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad1338
    # Line 751
    addiu	$a2,$a2,-2
    # Line 748
    or	$a7,$a1,$a7
    b	.L0dad133c
    andi	$a7,$a7,0xff
.L0dad1380:
    # Line 749
    nor	$v0,$a1,$zero
    b	.L0dad1358
    and	$a7,$v0,$a7
.L0dad138c:
    # Line 692
    nor	$v1,$a1,$zero
    b	.L0dad10a0
    and	$a7,$v1,$a7
.L0dad1398:
    # Line 669
    li	$a4,-129
    b	.L0dad0f90
    and	$a7,$a7,$a4
.L0dad13a4:
    # Line 665
    li	$a5,-65
    b	.L0dad0f70
    and	$a7,$a7,$a5
.L0dad13b0:
    # Line 661
    li	$v0,-33
    b	.L0dad0f50
    and	$a7,$a7,$v0
.L0dad13bc:
    # Line 657
    li	$v1,-17
    b	.L0dad0f2c
    and	$a7,$a7,$v1
.L0dad13c8:
    # Line 653
    li	$a4,-9
    b	.L0dad0f0c
    and	$a7,$a7,$a4
.L0dad13d4:
    # Line 649
    li	$a5,-5
    b	.L0dad0eec
    and	$a7,$a7,$a5
.L0dad13e0:
    # Line 749
    nor	$v0,$a1,$zero
    b	.L0dad131c
    and	$a7,$v0,$a7
.L0dad13ec:
    # Line 645
    li	$v1,-3
    b	.L0dad0ecc
    and	$a7,$a7,$v1
.L0dad13f8:
    # Line 726
    li	$a4,-2
    b	.L0dad120c
    and	$a7,$a7,$a4
.L0dad1404:
    # Line 722
    li	$a5,-3
    b	.L0dad11ec
    and	$a7,$a7,$a5
.L0dad1410:
    # Line 718
    li	$v0,-5
    b	.L0dad11cc
    and	$a7,$a7,$v0
.L0dad141c:
    # Line 714
    li	$v1,-9
    b	.L0dad11ac
    and	$a7,$a7,$v1
.L0dad1428:
    # Line 710
    li	$a4,-17
    b	.L0dad118c
    and	$a7,$a7,$a4
.L0dad1434:
    # Line 706
    li	$a5,-33
    b	.L0dad116c
    and	$a7,$a7,$a5
.L0dad1440:
    # Line 702
    li	$v0,-65
    b	.L0dad114c
    and	$a7,$a7,$v0
.end __glMgr_PackBitmap

# Function: __glMgr_FormatTexels
# Declared: Line 785 (Source lines: 788-1265)
# Address: 0x0dad144c - 0x0dada788 (Size: 37692 bytes, Frame: 208)
.globl __glMgr_FormatTexels
.ent __glMgr_FormatTexels
__glMgr_FormatTexels:
    # Line 793
    sltiu	$t2,$a5,5126
    # Line 788
    addiu	$sp,$sp,-848
    # Line 793
    sw	$zero,0($sp)
    # Line 788
    lui	$v0,0x13
    addiu	$v0,$v0,-11700
    # Line 793
    beqz	$t2,.L0dad1498
    # Line 788
    addu	$at,$t9,$v0
    # Line 802
    sll	$v1,$a5,0x2
    la	$t3,sub_0dbf0000
    addiu	$t3,$t3,-5912
    addu	$v1,$v1,$t3
    lw	$v1,-20480($v1)
    # Line 804
    beqz	$a3,.L0dad14a4
    # Line 802
    sw	$v1,4($sp)
.L0dad1484:
    # Line 804
    li	$v0,1
    beq	$a3,$v0,.L0dad1558
    # Line 1041
    sll	$a3,$a2,0x2
.L0dad1490:
    # Line 1265
    jr	$ra
    addiu	$sp,$sp,848
.L0dad1498:
    # Line 802
    la	$t3,sub_0dbf0000
    # Line 804
    bnez	$a3,.L0dad1484
    # Line 802
    addiu	$t3,$t3,-5912
.L0dad14a4:
    # Line 806
    li	$v0,10
    beq	$a2,$v0,.L0dad17c0
    # Line 817
    sll	$a3,$a2,0x2
    addu	$a3,$a3,$t3
    lw	$v1,-4($a3)
    beqz	$v1,.L0dad1b68
    move	$t9,$a0
.L0dad14c0:
    lw	$t0,12($a3)
    beqz	$t0,.L0dad1b70
    move	$t8,$t9
    # Line 818
    addiu	$t1,$a0,1
    sd	$t1,648($sp)
.L0dad14d4:
    lw	$v0,28($a3)
    beqz	$v0,.L0dad1b7c
    ld	$t9,648($sp)
    sd	$t9,704($sp)
    # Line 819
    addiu	$v1,$a0,2
    sd	$v1,640($sp)
.L0dad14ec:
    lw	$t0,44($a3)
    beqz	$t0,.L0dad1b8c
    ld	$t9,640($sp)
    # Line 820
    addiu	$t1,$a0,3
    sd	$t1,744($sp)
    move	$a0,$t1
.L0dad1504:
    # Line 824
    beqz	$t2,.L0dad17d8
    # Line 820
    move	$a3,$a0
.L0dad150c:
    # Line 824
    sltiu	$v0,$a5,5123
    bnez	$v0,.L0dad1728
    ld	$t2,704($sp)
    sltiu	$v1,$a5,5124
    beqz	$v1,.L0dad1a10
    sd	$a3,760($sp)
    sd	$a1,768($sp)
.L0dad1528:
    # Line 872
    addiu	$a3,$a4,-6403
    move	$a5,$a1
    la	$a5,sub_0dbf0000
    sltiu	$t0,$a3,8
    sll	$a3,$a3,0x2
    addiu	$a5,$a5,-5696
    addu	$a3,$a3,$a5
    beqz	$t0,.L0dad1490
    ld	$a5,760($sp)
    lw	$t0,%lo(jtbl_0dbee9c0)($a3)
    jr	$t0
    ld	$a4,768($sp)
.L0dad1558:
    # Line 1041
    addu	$t8,$a3,$t3
    lw	$t1,-4($t8)
    beqz	$t1,.L0dad18b8
    # Line 1044
    move	$t9,$a0
.L0dad1568:
    lw	$v0,12($t8)
    beqz	$v0,.L0dad18c0
    move	$a2,$t9
    # Line 1045
    addiu	$v1,$a0,2
    sd	$v1,656($sp)
.L0dad157c:
    lw	$t0,28($t8)
    beqz	$t0,.L0dad18cc
    ld	$t9,656($sp)
    # Line 1046
    addiu	$t1,$a0,4
    sd	$t8,712($sp)
    sd	$t1,664($sp)
.L0dad1594:
    ld	$v0,712($sp)
    lw	$v0,44($v0)
    beqz	$v0,.L0dad18dc
    ld	$t8,664($sp)
    # Line 1047
    addiu	$v1,$a0,6
    sd	$v1,672($sp)
.L0dad15ac:
    ld	$t0,672($sp)
    # Line 1050
    sltiu	$v0,$a5,5121
    beqz	$t2,.L0dad18e8
    sd	$t0,776($sp)
    sltiu	$t1,$a5,5123
    bnez	$t1,.L0dad1614
    ld	$t2,776($sp)
    sltiu	$v0,$a5,5124
    bnez	$v0,.L0dad1628
    sltiu	$v1,$a5,5125
    bnez	$v1,.L0dad1a54
    sltiu	$t0,$a5,5126
    beqz	$t0,.L0dad1490
    nop
    sd	$a1,696($sp)
.L0dad15e8:
    # Line 1139
    addiu	$a0,$a4,-6403
    move	$t0,$a1
    la	$t0,sub_0dbf0000
    sltiu	$t1,$a0,8
    sll	$a0,$a0,0x2
    addiu	$t0,$t0,-5568
    beqz	$t1,.L0dad1490
    addu	$a0,$a0,$t0
    lw	$t1,%lo(jtbl_0dbee9c0)($a0)
    jr	$t1
    # Line 1160
    lw	$a1,4($sp)
.L0dad1614:
    # Line 1050
    bnez	$v0,.L0dad1654
    sltiu	$v1,$a5,5122
    bnez	$v1,.L0dad165c
    li	$t0,5122
    bne	$a5,$t0,.L0dad1490
.L0dad1628:
    # Line 1098
    move	$a5,$a1
    addiu	$a0,$a4,-6403
    la	$t0,sub_0dbf0000
    sltiu	$t1,$a0,8
    sll	$a0,$a0,0x2
    addiu	$t0,$t0,-5600
    beqz	$t1,.L0dad1490
    addu	$a0,$a0,$t0
    lw	$t0,%lo(jtbl_0dbee9c0)($a0)
    jr	$t0
    # Line 1119
    lw	$a1,4($sp)
.L0dad1654:
    # Line 1050
    li	$t1,5120
    bne	$a5,$t1,.L0dad1490
.L0dad165c:
    # Line 1056
    sltiu	$v0,$a4,6407
    bnez	$v0,.L0dad1a68
    # Line 1054
    move	$a5,$a1
    # Line 1056
    sltiu	$v1,$a4,6408
    bnez	$v1,.L0dad1db4
    sltiu	$t0,$a4,6410
    bnez	$t0,.L0dad2634
    sltiu	$t1,$a4,6411
    bnez	$t1,.L0dad3a90
    li	$v0,0x8000
    bne	$a4,$v0,.L0dad1490
    # Line 1088
    lw	$a1,4($sp)
    slti	$v1,$a1,8
    bnez	$v1,.L0dad6b24
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad16a4:
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$t1,0($t2)
    addu	$t2,$v0,$t2
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$t1,$t1,$a7
    sb	$t1,-4($a5)
    addu	$t0,$t0,$t0
    lhu	$v1,0($t8)
    addu	$t8,$t0,$t8
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    sllv	$v1,$v1,$a7
    sb	$v1,-3($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t9)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    sllv	$v1,$v1,$a7
    sb	$v1,-2($a5)
    addu	$t9,$v0,$t9
    lhu	$t0,0($a2)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    sllv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad16a4
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad1728:
    # Line 824
    sltiu	$v1,$a5,5121
    bnez	$v1,.L0dad19fc
    sltiu	$t0,$a5,5122
    beqz	$t0,.L0dad1b94
    # Line 830
    sltiu	$t1,$a4,6407
.L0dad173c:
    bnez	$t1,.L0dad1bbc
    # Line 828
    move	$a5,$a1
    # Line 830
    sltiu	$v0,$a4,6408
    beqz	$v0,.L0dad1ffc
    # Line 853
    lw	$a1,4($sp)
    bltz	$a1,.L0dad4ec0
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad1764:
    addiu	$a5,$a5,3
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$v0,0($t8)
    addiu	$a6,$a6,-1
    addu	$t8,$v1,$t8
    sllv	$v0,$v0,$a1
    sb	$v0,-3($a5)
    addu	$t1,$a3,$t3
    lbu	$v0,0($t2)
    lw	$t1,12($t1)
    addu	$t0,$a3,$t3
    sllv	$v0,$v0,$a1
    sb	$v0,-2($a5)
    lw	$t0,28($t0)
    lbu	$v1,0($t9)
    addu	$t2,$t1,$t2
    addu	$t9,$t0,$t9
    sllv	$v1,$v1,$a1
    bne	$a6,$a0,.L0dad1764
    sb	$v1,-1($a5)
    b	.L0dad1490
    nop
.L0dad17c0:
    # Line 813
    addiu	$t9,$sp,0
    # Line 811
    addiu	$t8,$a0,1
    # Line 812
    addiu	$a3,$sp,0
    sd	$a3,704($sp)
    # Line 824
    bnez	$t2,.L0dad150c
    # Line 814
    move	$a3,$a0
.L0dad17d8:
    sd	$a3,760($sp)
    # Line 824
    sltiu	$t0,$a5,5127
    bnez	$t0,.L0dad1cbc
    move	$t2,$a3
    li	$a0,0x8034
    sltu	$t1,$a5,$a0
    bnez	$t1,.L0dad255c
    ld	$a4,704($sp)
    sltu	$v0,$a0,$a5
    bnez	$v0,.L0dad32d8
    li	$a0,0x8036
    # Line 1012
    move	$a5,$a1
    beqz	$a7,.L0dad6594
    li	$a0,-1
    # Line 1014
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad181c:
    addiu	$a5,$a5,2
    addiu	$a6,$a6,-1
    addu	$a1,$a3,$t3
    lw	$a1,44($a1)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    lbu	$t1,0($t2)
    addu	$t2,$a1,$t2
    lbu	$t0,0($t9)
    addu	$t9,$v1,$t9
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$a1,0($a4)
    addu	$a4,$v0,$a4
    lbu	$v0,0($t8)
    addu	$t8,$v1,$t8
    andi	$a1,$a1,0xf8
    sll	$a1,$a1,0x2
    andi	$v0,$v0,0xf8
    sra	$v0,$v0,0x3
    or	$a1,$a1,$v0
    andi	$t0,$t0,0xf8
    sll	$t0,$t0,0x7
    andi	$t1,$t1,0x80
    sll	$t1,$t1,0x8
    or	$t0,$t0,$t1
    or	$a1,$a1,$t0
    andi	$a1,$a1,0xffff
    andi	$v1,$a1,0xff
    sll	$v1,$v1,0x8
    andi	$a1,$a1,0xff00
    sra	$a1,$a1,0x8
    or	$v1,$v1,$a1
    bne	$a6,$a0,.L0dad181c
    sh	$v1,-2($a5)
    b	.L0dad1490
    nop
.L0dad18b8:
    b	.L0dad1568
    # Line 1044
    addiu	$t9,$sp,0
.L0dad18c0:
    # Line 1045
    addiu	$t0,$sp,0
    b	.L0dad157c
    sd	$t0,656($sp)
.L0dad18cc:
    sd	$t8,712($sp)
    # Line 1046
    addiu	$t1,$sp,0
    b	.L0dad1594
    sd	$t1,664($sp)
.L0dad18dc:
    # Line 1047
    addiu	$v0,$sp,0
    b	.L0dad15ac
    sd	$v0,672($sp)
.L0dad18e8:
    # Line 1050
    sltiu	$v1,$a5,5127
    bnez	$v1,.L0dad1b3c
    ld	$t2,776($sp)
    li	$a0,0x8034
    sltu	$t0,$a5,$a0
    bnez	$t0,.L0dad1e38
    sltu	$t1,$a0,$a5
    beqz	$t1,.L0dad28bc
    li	$a0,0x8036
    sltu	$v0,$a5,$a0
    bnez	$v0,.L0dad3af8
    sltu	$v1,$a0,$a5
    bnez	$v1,.L0dad1490
    # Line 1255
    move	$a4,$a1
    beqz	$a7,.L0dad7b7c
    li	$a0,-1
    sd	$a4,752($sp)
    # Line 1257
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a4
    lui	$a5,0xff
    lui	$a4,0xff00
.L0dad1940:
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    addiu	$a1,$a1,4
    addiu	$a6,$a6,-1
    addu	$t1,$t1,$t1
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    lhu	$v1,0($t2)
    addu	$t2,$t1,$t2
    addu	$t0,$t0,$t0
    addu	$a7,$a3,$t3
    lw	$a7,12($a7)
    lhu	$v0,0($t8)
    addu	$t8,$t0,$t8
    addu	$a7,$a7,$a7
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$t1,0($t9)
    addu	$t9,$a7,$t9
    addu	$t0,$t0,$t0
    lhu	$a7,0($a2)
    addu	$a2,$t0,$a2
    andi	$t1,$t1,0xffc0
    sll	$t1,$t1,0x5
    andi	$a7,$a7,0xffc0
    srl	$a7,$a7,0x6
    or	$t1,$t1,$a7
    andi	$v0,$v0,0xffc0
    sll	$v0,$v0,0xf
    andi	$v1,$v1,0xc000
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$t1,$t1,$v0
    andi	$a7,$t1,0xff00
    sll	$a7,$a7,0x8
    sll	$t0,$t1,0x18
    or	$a7,$a7,$t0
    and	$t0,$a4,$t1
    srl	$t0,$t0,0x18
    and	$t1,$a5,$t1
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    or	$a7,$a7,$t0
    bne	$a6,$a0,.L0dad1940
    sw	$a7,-4($a1)
    b	.L0dad1490
    nop
.L0dad19fc:
    # Line 824
    li	$v0,5120
    bne	$a5,$v0,.L0dad1490
    nop
    b	.L0dad173c
    # Line 830
    sltiu	$t1,$a4,6407
.L0dad1a10:
    # Line 824
    sltiu	$v1,$a5,5125
    bnez	$v1,.L0dad1ba8
    sltiu	$t0,$a5,5126
    beqz	$t0,.L0dad1490
    nop
    sd	$a1,688($sp)
.L0dad1a28:
    # Line 913
    addiu	$a0,$a4,-6403
    move	$t0,$a1
    la	$t0,sub_0dbf0000
    sltiu	$t1,$a0,8
    sll	$a0,$a0,0x2
    addiu	$t0,$t0,-5664
    beqz	$t1,.L0dad1490
    addu	$a0,$a0,$t0
    lw	$t1,%lo(jtbl_0dbee9c0)($a0)
    jr	$t1
    # Line 944
    li	$a0,-1
.L0dad1a54:
    # Line 1050
    li	$v0,5124
    bne	$a5,$v0,.L0dad1490
    nop
    b	.L0dad15e8
    sd	$a1,696($sp)
.L0dad1a68:
    # Line 1056
    sltiu	$v1,$a4,6405
    bnez	$v1,.L0dad1ce8
    sltiu	$t0,$a4,6406
    bnez	$t0,.L0dad26fc
    li	$t1,6406
    bne	$a4,$t1,.L0dad1490
    # Line 1071
    lw	$a1,4($sp)
    slti	$v0,$a1,8
    bnez	$v0,.L0dad536c
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$v1,$a2,0x1
    beqz	$v1,.L0dad1acc
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$t1,0($t2)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sllv	$t1,$t1,$a7
    sb	$t1,-1($a5)
    addu	$t0,$t0,$t0
    addu	$t2,$t0,$t2
.L0dad1acc:
    sd	$a6,320($sp)
    move	$t9,$t2
    move	$t8,$a6
    sra	$t1,$a2,0x1
    beqz	$t1,.L0dad1b34
    move	$t8,$a5
    ld	$a2,320($sp)
    move	$a4,$t9
    move	$a1,$t8
.L0dad1af0:
    addiu	$a1,$a1,2
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    lhu	$v0,0($a4)
    lw	$t1,44($t1)
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sb	$v0,-2($a1)
    addu	$t0,$t0,$a4
    lhu	$v0,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    sllv	$v0,$v0,$a7
    bne	$a2,$a0,.L0dad1af0
    sb	$v0,-1($a1)
.L0dad1b34:
    b	.L0dad1490
    nop
.L0dad1b3c:
    # Line 1178
    move	$a5,$a1
    addiu	$a0,$a4,-6403
    la	$t0,sub_0dbf0000
    sltiu	$t1,$a0,8
    sll	$a0,$a0,0x2
    addiu	$t0,$t0,-5536
    beqz	$t1,.L0dad1490
    addu	$a0,$a0,$t0
    lw	$t0,%lo(jtbl_0dbee9c0)($a0)
    jr	$t0
    nop
.L0dad1b68:
    b	.L0dad14c0
    # Line 817
    addiu	$t9,$sp,0
.L0dad1b70:
    # Line 818
    addiu	$t1,$sp,0
    b	.L0dad14d4
    sd	$t1,648($sp)
.L0dad1b7c:
    sd	$t9,704($sp)
    # Line 819
    addiu	$v0,$sp,0
    b	.L0dad14ec
    sd	$v0,640($sp)
.L0dad1b8c:
    b	.L0dad1504
    # Line 820
    addiu	$a0,$sp,0
.L0dad1b94:
    # Line 824
    li	$v1,5122
    bne	$a5,$v1,.L0dad1490
    sd	$a3,760($sp)
    b	.L0dad1528
    sd	$a1,768($sp)
.L0dad1ba8:
    li	$t0,5124
    bne	$a5,$t0,.L0dad1490
    nop
    b	.L0dad1a28
    sd	$a1,688($sp)
.L0dad1bbc:
    # Line 830
    sltiu	$t1,$a4,6405
    bnez	$t1,.L0dad1f08
    sltiu	$v0,$a4,6406
    bnez	$v0,.L0dad3174
    li	$v1,6406
    bne	$a4,$v1,.L0dad1490
    # Line 845
    lw	$a1,4($sp)
    bltz	$a1,.L0dad90f0
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    addiu	$t2,$a6,1
    andi	$a7,$t2,0x3
    beqz	$a7,.L0dad1c28
    ld	$a4,760($sp)
.L0dad1c00:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    lbu	$t0,0($a4)
    addi	$a7,$a7,-1
    addu	$a4,$t1,$a4
    sllv	$t0,$t0,$a1
    bnez	$a7,.L0dad1c00
    sb	$t0,-1($a5)
.L0dad1c28:
    move	$t9,$a6
    move	$t8,$a4
    sra	$v0,$t2,0x2
    beqz	$v0,.L0dad1cb4
    move	$a7,$a5
    move	$a5,$t9
    move	$a2,$t8
    move	$a4,$a7
.L0dad1c48:
    addiu	$a4,$a4,4
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    lbu	$v1,0($a2)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$v1,$v1,$a1
    sb	$v1,-4($a4)
    addu	$v0,$v0,$a2
    lbu	$v1,0($v0)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    sllv	$v1,$v1,$a1
    sb	$v1,-3($a4)
    addu	$t1,$t1,$v0
    lbu	$v0,0($t1)
    addu	$a2,$a3,$t3
    lw	$a2,44($a2)
    sllv	$v0,$v0,$a1
    sb	$v0,-2($a4)
    addu	$a2,$a2,$t1
    lbu	$v1,0($a2)
    addiu	$a5,$a5,-4
    addu	$a2,$t0,$a2
    sllv	$v1,$v1,$a1
    bne	$a5,$a0,.L0dad1c48
    sb	$v1,-1($a4)
.L0dad1cb4:
    b	.L0dad1490
    nop
.L0dad1cbc:
    # Line 953
    move	$a5,$a1
    addiu	$a0,$a4,-6403
    la	$t0,sub_0dbf0000
    sltiu	$t1,$a0,8
    sll	$a0,$a0,0x2
    addiu	$t0,$t0,-5632
    beqz	$t1,.L0dad1490
    addu	$a0,$a0,$t0
    lw	$t0,%lo(jtbl_0dbee9c0)($a0)
    jr	$t0
    nop
.L0dad1ce8:
    # Line 1056
    sltiu	$t1,$a4,6404
    bnez	$t1,.L0dad2620
    sltiu	$v0,$a4,6405
    beqz	$v0,.L0dad1490
    # Line 1063
    lw	$a1,4($sp)
    slti	$v1,$a1,8
    bnez	$v1,.L0dad40d0
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$a7,$a2,0x1
    beqz	$a7,.L0dad1d44
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$t1,0($t9)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$t1,$t1,$a7
    sb	$t1,-1($a5)
    addu	$t0,$t0,$t0
    addu	$t9,$t0,$t9
.L0dad1d44:
    sd	$a6,368($sp)
    move	$t8,$t9
    move	$t2,$a6
    sra	$t1,$a2,0x1
    beqz	$t1,.L0dad1dac
    move	$t2,$a5
    ld	$a2,368($sp)
    move	$a4,$t8
    move	$a1,$t2
.L0dad1d68:
    addiu	$a1,$a1,2
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    lhu	$v0,0($a4)
    lw	$t1,12($t1)
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sb	$v0,-2($a1)
    addu	$t0,$t0,$a4
    lhu	$v0,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    sllv	$v0,$v0,$a7
    bne	$a2,$a0,.L0dad1d68
    sb	$v0,-1($a1)
.L0dad1dac:
    b	.L0dad1490
    nop
.L0dad1db4:
    # Line 1079
    lw	$a1,4($sp)
    slti	$t1,$a1,8
    bnez	$t1,.L0dad27b8
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad1dd0:
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a5,$a5,3
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$t1,0($a2)
    addu	$a2,$v0,$a2
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$t1,$t1,$a7
    sb	$t1,-3($a5)
    addu	$t0,$t0,$t0
    lhu	$t1,0($t9)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    sllv	$t1,$t1,$a7
    sb	$t1,-2($a5)
    addu	$t9,$t0,$t9
    lhu	$v0,0($t8)
    addu	$v1,$v1,$v1
    addu	$t8,$v1,$t8
    sllv	$v0,$v0,$a7
    bne	$a6,$a0,.L0dad1dd0
    sb	$v0,-1($a5)
    b	.L0dad1490
    nop
.L0dad1e38:
    # Line 1050
    li	$a0,0x8033
    sltu	$v1,$a5,$a0
    bnez	$v1,.L0dad2830
    sltu	$t0,$a0,$a5
    bnez	$t0,.L0dad1490
    # Line 1228
    move	$a4,$a1
    beqz	$a7,.L0dad5dac
    li	$a0,-1
    # Line 1230
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
.L0dad1e60:
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addiu	$a4,$a4,2
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    addu	$a1,$a3,$t3
    lw	$a1,28($a1)
    lhu	$v0,0($t2)
    addu	$t2,$t0,$t2
    addu	$a1,$a1,$a1
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    lhu	$t0,0($t8)
    addu	$t8,$a1,$t8
    addu	$v1,$v1,$v1
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lhu	$a1,0($t9)
    addu	$t9,$v1,$t9
    addu	$t1,$t1,$t1
    lhu	$v1,0($a2)
    addu	$a2,$t1,$a2
    andi	$v0,$v0,0xf000
    andi	$t0,$t0,0xf000
    sra	$t0,$t0,0x4
    or	$v0,$v0,$t0
    andi	$v1,$v1,0xf000
    sra	$v1,$v1,0xc
    andi	$a1,$a1,0xf000
    sra	$a1,$a1,0x8
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    bne	$a6,$a0,.L0dad1e60
    sh	$t1,-2($a4)
    b	.L0dad1490
    nop
.L0dad1f08:
    # Line 830
    sltiu	$t1,$a4,6404
    bnez	$t1,.L0dad306c
    sltiu	$v0,$a4,6405
    beqz	$v0,.L0dad1490
    # Line 837
    lw	$a1,4($sp)
    bltz	$a1,.L0dad707c
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a6,1
    andi	$a4,$a7,0x3
    beqz	$a4,.L0dad1f64
    sll	$a3,$a2,0x2
.L0dad1f3c:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    lbu	$v1,0($t2)
    addi	$a4,$a4,-1
    addu	$t2,$t0,$t2
    sllv	$v1,$v1,$a1
    bnez	$a4,.L0dad1f3c
    sb	$v1,-1($a5)
.L0dad1f64:
    sd	$a6,360($sp)
    move	$t9,$t2
    move	$t8,$a6
    sra	$t1,$a7,0x2
    beqz	$t1,.L0dad1ff4
    move	$t8,$a5
    ld	$a2,360($sp)
    move	$a4,$t9
    move	$a5,$t8
.L0dad1f88:
    addiu	$a5,$a5,4
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    lbu	$v0,0($a4)
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    sllv	$v0,$v0,$a1
    sb	$v0,-4($a5)
    addu	$t1,$t1,$a4
    lbu	$v0,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$v0,$v0,$a1
    sb	$v0,-3($a5)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,12($a4)
    sllv	$t1,$t1,$a1
    sb	$t1,-2($a5)
    addu	$a4,$a4,$t0
    lbu	$v0,0($a4)
    addiu	$a2,$a2,-4
    addu	$a4,$v1,$a4
    sllv	$v0,$v0,$a1
    bne	$a2,$a0,.L0dad1f88
    sb	$v0,-1($a5)
.L0dad1ff4:
    b	.L0dad1490
    nop
.L0dad1ffc:
    # Line 830
    sltiu	$t0,$a4,6410
    bnez	$t0,.L0dad3080
    sltiu	$t1,$a4,6411
    beqz	$t1,.L0dad4804
    # Line 849
    lw	$a1,4($sp)
    bltz	$a1,.L0dad81bc
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    addiu	$v0,$a6,1
    sd	$v0,336($sp)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dad2074
    ld	$a4,760($sp)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    addu	$t1,$a3,$t3
    lbu	$v0,0($t8)
    lw	$t1,-4($t1)
    addu	$t0,$a3,$t3
    sllv	$v0,$v0,$a1
    sb	$v0,-2($a5)
    lw	$t0,44($t0)
    lbu	$v1,0($a4)
    addu	$t8,$t1,$t8
    addu	$a4,$t0,$a4
    sllv	$v1,$v1,$a1
    sb	$v1,-1($a5)
.L0dad2074:
    move	$a7,$a6
    move	$t2,$a4
    ld	$v0,336($sp)
    move	$t9,$a5
    move	$v1,$t8
    sra	$v0,$v0,0x1
    beqz	$v0,.L0dad2110
    sd	$t8,344($sp)
    move	$a2,$a7
    move	$a5,$t2
    move	$a4,$t9
    ld	$a6,344($sp)
.L0dad20a4:
    addiu	$a4,$a4,4
    addiu	$a2,$a2,-2
    addu	$v0,$a3,$t3
    lbu	$v1,0($a6)
    lw	$v0,-4($v0)
    addu	$t1,$a3,$t3
    sllv	$v1,$v1,$a1
    sb	$v1,-4($a4)
    lw	$t1,44($t1)
    lbu	$t0,0($a5)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    sllv	$t0,$t0,$a1
    sb	$t0,-3($a4)
    addu	$a6,$v1,$a6
    lbu	$v1,0($a6)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sllv	$v1,$v1,$a1
    sb	$v1,-2($a4)
    addu	$a5,$t0,$a5
    lbu	$t0,0($a5)
    addu	$a6,$v0,$a6
    addu	$a5,$t1,$a5
    sllv	$t0,$t0,$a1
    bne	$a2,$a0,.L0dad20a4
    sb	$t0,-1($a4)
.L0dad2110:
    b	.L0dad1490
    nop
.L0dad2118:
    # Line 1103
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad4f2c
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad541c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad2140:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($a2)
    addu	$v0,$v0,$v0
    addu	$a2,$v0,$a2
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad2140
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad2188:
    # Line 1107
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad4fdc
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad5470
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad21b0:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($t9)
    addu	$v0,$v0,$v0
    addu	$t9,$v0,$t9
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad21b0
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad21f8:
    # Line 1111
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad5090
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad54c4
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad2220:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($t8)
    addu	$v0,$v0,$v0
    addu	$t8,$v0,$t8
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad2220
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad2268:
    # Line 1115
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad5144
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad5518
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad2290:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad2290
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad22d8:
    # Line 1119
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad51f8
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad556c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad22fc:
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v1,$v1,$v1
    lhu	$t1,0($a2)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a5)
    addu	$a2,$v1,$a2
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad22fc
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad2378:
    # Line 1124
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad5258
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad55f4
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad23a0:
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addiu	$a5,$a5,6
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    lhu	$t1,0($a2)
    addu	$a2,$t0,$a2
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-6($a5)
    addu	$v1,$v1,$v1
    lhu	$t1,0($t9)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a5)
    addu	$t9,$v1,$t9
    lhu	$t1,0($t8)
    addu	$v0,$v0,$v0
    addu	$t8,$v0,$t8
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad23a0
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad2450:
    # Line 1129
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad52d4
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad56b0
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad2478:
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    addiu	$a5,$a5,8
    addiu	$a6,$a6,-1
    addu	$t1,$t1,$t1
    lhu	$v0,0($a2)
    addu	$a2,$t1,$a2
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$v0,$v0,$a7
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    sh	$t1,-8($a5)
    addu	$t0,$t0,$t0
    lhu	$t1,0($t9)
    addu	$t9,$t0,$t9
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-6($a5)
    addu	$v1,$v1,$v1
    lhu	$t1,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a5)
    addu	$t8,$v1,$t8
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    sllv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad2478
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad255c:
    # Line 824
    li	$a0,0x8033
    sltu	$v0,$a5,$a0
    bnez	$v0,.L0dad3258
    sltu	$v1,$a0,$a5
    bnez	$v1,.L0dad1490
    # Line 1003
    move	$a5,$a1
    beqz	$a7,.L0dad724c
    li	$a0,-1
    # Line 1005
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad2588:
    addiu	$a5,$a5,2
    addiu	$a6,$a6,-1
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addu	$a1,$a3,$t3
    lw	$a1,28($a1)
    lbu	$v0,0($t2)
    addu	$t2,$t0,$t2
    lbu	$t1,0($t9)
    addu	$t9,$a1,$t9
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    addu	$a1,$a3,$t3
    lw	$a1,-4($a1)
    lbu	$t0,0($a4)
    addu	$a4,$v1,$a4
    lbu	$v1,0($t8)
    addu	$t8,$a1,$t8
    andi	$t0,$t0,0xf0
    andi	$v1,$v1,0xf0
    sra	$v1,$v1,0x4
    or	$t0,$t0,$v1
    andi	$t1,$t1,0xf0
    sll	$t1,$t1,0x4
    andi	$v0,$v0,0xf0
    sll	$v0,$v0,0x8
    or	$t1,$t1,$v0
    or	$t0,$t0,$t1
    andi	$t0,$t0,0xffff
    andi	$a1,$t0,0xff
    sll	$a1,$a1,0x8
    andi	$t0,$t0,0xff00
    sra	$t0,$t0,0x8
    or	$a1,$a1,$t0
    bne	$a6,$a0,.L0dad2588
    sh	$a1,-2($a5)
    b	.L0dad1490
    nop
.L0dad2620:
    # Line 1056
    li	$t1,6403
    bne	$a4,$t1,.L0dad1490
    nop
    b	.L0dad2648
    # Line 1059
    lw	$a1,4($sp)
.L0dad2634:
    # Line 1056
    sltiu	$v0,$a4,6409
    bnez	$v0,.L0dad3938
    sltiu	$v1,$a4,6410
    beqz	$v1,.L0dad1490
    # Line 1059
    lw	$a1,4($sp)
.L0dad2648:
    slti	$a0,$a1,8
    bnez	$a0,.L0dad4180
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a4,$a6,1
    andi	$a7,$a4,0x1
    beqz	$a7,.L0dad2690
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$t1,0($a2)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$t1,$t1,$a7
    sb	$t1,-1($a5)
    addu	$t0,$t0,$t0
    addu	$a2,$t0,$a2
.L0dad2690:
    move	$t9,$a6
    move	$t8,$a2
    sra	$t1,$a4,0x1
    beqz	$t1,.L0dad26f4
    move	$t2,$a5
    move	$a1,$t9
    move	$a4,$t8
    move	$a2,$t2
.L0dad26b0:
    addiu	$a2,$a2,2
    addiu	$a1,$a1,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$v0,0($a4)
    lw	$t1,-4($t1)
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sb	$v0,-2($a2)
    addu	$t0,$t0,$a4
    lhu	$v0,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    sllv	$v0,$v0,$a7
    bne	$a1,$a0,.L0dad26b0
    sb	$v0,-1($a2)
.L0dad26f4:
    b	.L0dad1490
    nop
.L0dad26fc:
    # Line 1067
    lw	$a1,4($sp)
    slti	$t1,$a1,8
    bnez	$t1,.L0dad39e0
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$v0,$a2,0x1
    beqz	$v0,.L0dad2748
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$t0,0($t8)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    sllv	$t0,$t0,$a7
    sb	$t0,-1($a5)
    addu	$v1,$v1,$v1
    addu	$t8,$v1,$t8
.L0dad2748:
    move	$t1,$a6
    sd	$a6,392($sp)
    move	$t9,$t8
    sra	$t0,$a2,0x1
    beqz	$t0,.L0dad27b0
    move	$t2,$a5
    ld	$a2,392($sp)
    move	$a4,$t9
    move	$a1,$t2
.L0dad276c:
    addiu	$a1,$a1,2
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    lhu	$v0,0($a4)
    lw	$t1,28($t1)
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sb	$v0,-2($a1)
    addu	$t0,$t0,$a4
    lhu	$v0,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    sllv	$v0,$v0,$a7
    bne	$a2,$a0,.L0dad276c
    sb	$v0,-1($a1)
.L0dad27b0:
    b	.L0dad1490
    nop
.L0dad27b8:
    # Line 1079
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad27c8:
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addiu	$a5,$a5,3
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    lhu	$v1,0($a2)
    addu	$a2,$t0,$a2
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    srlv	$v1,$v1,$a7
    sb	$v1,-3($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t9)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    srlv	$v1,$v1,$a7
    sb	$v1,-2($a5)
    addu	$t9,$v0,$t9
    lhu	$t0,0($t8)
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad27c8
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad2830:
    # Line 1050
    li	$t1,0x8032
    bne	$a5,$t1,.L0dad1490
    # Line 1221
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    # Line 1219
    move	$a4,$a1
.L0dad2848:
    # Line 1221
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    addiu	$a4,$a4,1
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    lhu	$v1,0($t8)
    addu	$t8,$t0,$t8
    addu	$v0,$v0,$v0
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lhu	$t0,0($t9)
    addu	$t9,$v0,$t9
    lhu	$v0,0($a2)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    andi	$v0,$v0,0xe000
    sra	$v0,$v0,0x8
    andi	$t0,$t0,0xe000
    sra	$t0,$t0,0xb
    or	$v0,$v0,$t0
    andi	$v1,$v1,0xc000
    sra	$v1,$v1,0xe
    or	$v0,$v0,$v1
    bne	$a6,$a0,.L0dad2848
    sb	$v0,-1($a4)
    b	.L0dad1490
    nop
.L0dad28bc:
    # Line 1237
    move	$a4,$a1
    beqz	$a7,.L0dad57a0
    li	$a0,-1
    # Line 1239
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
.L0dad28d0:
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addiu	$a4,$a4,2
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    addu	$a1,$a3,$t3
    lw	$a1,28($a1)
    lhu	$v0,0($t2)
    addu	$t2,$t0,$t2
    addu	$a1,$a1,$a1
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    lhu	$t0,0($t8)
    addu	$t8,$a1,$t8
    addu	$v1,$v1,$v1
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lhu	$a1,0($t9)
    addu	$t9,$v1,$t9
    addu	$t1,$t1,$t1
    lhu	$v1,0($a2)
    addu	$a2,$t1,$a2
    andi	$v0,$v0,0x8000
    andi	$t0,$t0,0xf800
    sra	$t0,$t0,0x1
    or	$v0,$v0,$t0
    andi	$v1,$v1,0xf800
    sra	$v1,$v1,0xb
    andi	$a1,$a1,0xf800
    sra	$a1,$a1,0x6
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    bne	$a6,$a0,.L0dad28d0
    sh	$t1,-2($a4)
    b	.L0dad1490
    nop
.L0dad2978:
    # Line 877
    li	$a0,-1
    beqz	$a7,.L0dad5838
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad5f2c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a5,$a6,1
    andi	$t1,$a5,0x1
    beqz	$t1,.L0dad29dc
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lbu	$v1,0($t8)
    addiu	$a4,$a4,2
    addu	$t8,$t0,$t8
    sllv	$v1,$v1,$a1
    andi	$v1,$v1,0xffff
    andi	$v0,$v1,0xff
    sll	$v0,$v0,0x8
    andi	$v1,$v1,0xff00
    sra	$v1,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,-2($a4)
.L0dad29dc:
    move	$t9,$a6
    move	$v1,$a4
    sd	$a4,616($sp)
    move	$v0,$t8
    sra	$t1,$a5,0x1
    beqz	$t1,.L0dad2a98
    sd	$t8,608($sp)
    move	$a2,$t9
    ld	$a5,616($sp)
    ld	$a4,608($sp)
    li	$v0,0xff00
    li	$a6,0xffff
    li	$t0,255
    li	$a7,0xffff
    li	$t8,255
    li	$t2,0xffff
    and	$t2,$t2,$t8
    li	$t8,0xffff
    and	$a7,$a7,$t0
    li	$t0,0xff00
    and	$a6,$a6,$t0
    and	$t8,$t8,$v0
.L0dad2a34:
    addiu	$a5,$a5,4
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$v0,0($a4)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$v0,$v0,$a1
    and	$t1,$v0,$a7
    sll	$t1,$t1,0x8
    and	$v0,$v0,$a6
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    sh	$t1,-4($a5)
    addu	$a4,$t0,$a4
    lbu	$v0,0($a4)
    addiu	$a2,$a2,-2
    addu	$a4,$v1,$a4
    sllv	$v0,$v0,$a1
    and	$t1,$v0,$t2
    sll	$t1,$t1,0x8
    and	$v0,$v0,$t8
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    bne	$a2,$a0,.L0dad2a34
    sh	$t1,-2($a5)
.L0dad2a98:
    b	.L0dad1490
    nop
.L0dad2aa0:
    # Line 881
    li	$a0,-1
    beqz	$a7,.L0dad5918
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad6040
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x1
    beqz	$a3,.L0dad2b04
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    lbu	$t1,0($t2)
    addiu	$a4,$a4,2
    addu	$t2,$v0,$t2
    sllv	$t1,$t1,$a1
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-2($a4)
.L0dad2b04:
    move	$t8,$a6
    move	$t9,$a4
    move	$t0,$t2
    sra	$v1,$a5,0x1
    beqz	$v1,.L0dad2bc4
    sd	$t2,584($sp)
    move	$a4,$t8
    move	$a2,$t9
    ld	$a5,584($sp)
    li	$a6,0xffff
    li	$t1,0xffff
    li	$t0,255
    li	$a7,0xffff
    and	$a7,$a7,$t0
    li	$t0,0xff00
    and	$a6,$a6,$t0
    li	$v0,255
    li	$t2,0xffff
    and	$t2,$t2,$v0
    li	$v0,0xff00
    and	$t1,$t1,$v0
    sd	$t1,576($sp)
.L0dad2b5c:
    addiu	$a2,$a2,4
    addiu	$a4,$a4,-2
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    lbu	$v0,0($a5)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$v0,$v0,$a1
    and	$t1,$v0,$a7
    and	$v0,$v0,$a6
    sra	$v0,$v0,0x8
    sll	$t1,$t1,0x8
    or	$t1,$t1,$v0
    sh	$t1,-4($a2)
    addu	$a5,$t0,$a5
    lbu	$v0,0($a5)
    addu	$a5,$v1,$a5
    ld	$v1,576($sp)
    sllv	$v0,$v0,$a1
    and	$t1,$v0,$t2
    and	$v0,$v0,$v1
    sra	$v0,$v0,0x8
    sll	$t1,$t1,0x8
    or	$t1,$t1,$v0
    bne	$a4,$a0,.L0dad2b5c
    sh	$t1,-2($a2)
.L0dad2bc4:
    b	.L0dad1490
    nop
.L0dad2bcc:
    # Line 885
    li	$a0,-1
    beqz	$a7,.L0dad59f8
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad6158
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x1
    beqz	$a3,.L0dad2c30
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    lbu	$t1,0($t9)
    addiu	$a4,$a4,2
    addu	$t9,$v0,$t9
    sllv	$t1,$t1,$a1
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-2($a4)
.L0dad2c30:
    move	$t8,$a6
    move	$t1,$a4
    sd	$a4,632($sp)
    move	$t0,$t9
    sra	$v1,$a5,0x1
    beqz	$v1,.L0dad2cec
    sd	$t9,624($sp)
    move	$a5,$t8
    ld	$a4,632($sp)
    ld	$a2,624($sp)
    li	$t0,0xff00
    li	$t2,0xffff
    li	$v0,255
    li	$t9,0xffff
    li	$a7,0xff00
    li	$a6,0xffff
    and	$a6,$a6,$a7
    li	$a7,0xffff
    and	$t9,$t9,$v0
    li	$v0,255
    and	$t2,$t2,$v0
    and	$a7,$a7,$t0
.L0dad2c88:
    addiu	$a4,$a4,4
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lbu	$v1,0($a2)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$v1,$v1,$a1
    and	$v0,$v1,$t9
    sll	$v0,$v0,0x8
    and	$v1,$v1,$a6
    sra	$v1,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,-4($a4)
    addu	$a2,$t0,$a2
    lbu	$t0,0($a2)
    addiu	$a5,$a5,-2
    addu	$a2,$t1,$a2
    sllv	$t0,$t0,$a1
    and	$v1,$t0,$t2
    sll	$v1,$v1,0x8
    and	$t0,$t0,$a7
    sra	$t0,$t0,0x8
    or	$v1,$v1,$t0
    bne	$a5,$a0,.L0dad2c88
    sh	$v1,-2($a4)
.L0dad2cec:
    b	.L0dad1490
    nop
.L0dad2cf4:
    # Line 889
    li	$a0,-1
    beqz	$a7,.L0dad5ad8
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad626c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a6,1
    andi	$v0,$a7,0x1
    beqz	$v0,.L0dad2d58
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    lbu	$t0,0($a5)
    addiu	$a4,$a4,2
    addu	$a5,$t1,$a5
    sllv	$t0,$t0,$a1
    andi	$t0,$t0,0xffff
    andi	$v1,$t0,0xff
    sll	$v1,$v1,0x8
    andi	$t0,$t0,0xff00
    sra	$t0,$t0,0x8
    or	$v1,$v1,$t0
    sh	$v1,-2($a4)
.L0dad2d58:
    move	$t8,$a6
    move	$t9,$a4
    move	$v1,$a5
    sra	$v0,$a7,0x1
    beqz	$v0,.L0dad2e18
    sd	$a5,600($sp)
    move	$a2,$t8
    move	$a4,$t9
    ld	$a5,600($sp)
    li	$v0,0xff00
    li	$a6,0xffff
    li	$t0,255
    li	$a7,0xffff
    li	$t2,0xff00
    li	$t1,0xffff
    and	$t1,$t1,$t2
    li	$t2,0xffff
    and	$a7,$a7,$t0
    li	$t0,255
    sd	$t1,592($sp)
    and	$a6,$a6,$t0
    and	$t2,$t2,$v0
.L0dad2db0:
    addiu	$a4,$a4,4
    addu	$t1,$a3,$t3
    lbu	$v1,0($a5)
    lw	$t1,44($t1)
    ld	$t0,592($sp)
    sllv	$v1,$v1,$a1
    and	$v0,$v1,$a7
    and	$v1,$v1,$t0
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sra	$v1,$v1,0x8
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    sh	$v0,-4($a4)
    addu	$a5,$t0,$a5
    lbu	$t0,0($a5)
    addiu	$a2,$a2,-2
    addu	$a5,$t1,$a5
    sllv	$t0,$t0,$a1
    and	$v1,$t0,$a6
    and	$t0,$t0,$t2
    sra	$t0,$t0,0x8
    sll	$v1,$v1,0x8
    or	$v1,$v1,$t0
    bne	$a2,$a0,.L0dad2db0
    sh	$v1,-2($a4)
.L0dad2e18:
    b	.L0dad1490
    nop
.L0dad2e20:
    # Line 893
    li	$a0,-1
    beqz	$a7,.L0dad5bb4
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad6384
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad2e40:
    addiu	$a4,$a4,4
    addiu	$a6,$a6,-1
    addu	$v1,$a3,$t3
    lbu	$t1,0($t8)
    lw	$v1,-4($v1)
    addu	$v0,$a3,$t3
    sllv	$t1,$t1,$a1
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a4)
    lw	$v0,44($v0)
    lbu	$t1,0($a5)
    addu	$t8,$v1,$t8
    addu	$a5,$v0,$a5
    sllv	$t1,$t1,$a1
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad2e40
    sh	$t0,-2($a4)
    b	.L0dad1490
    nop
.L0dad2eb4:
    # Line 898
    li	$a0,-1
    beqz	$a7,.L0dad5cb4
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad6404
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad2ed4:
    addiu	$a4,$a4,6
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lbu	$t1,0($t8)
    addiu	$a6,$a6,-1
    addu	$t8,$v0,$t8
    sllv	$t1,$t1,$a1
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-6($a4)
    addu	$v1,$a3,$t3
    lbu	$t1,0($t2)
    lw	$v1,12($v1)
    addu	$v0,$a3,$t3
    sllv	$t1,$t1,$a1
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a4)
    lw	$v0,28($v0)
    lbu	$t1,0($t9)
    addu	$t2,$v1,$t2
    addu	$t9,$v0,$t9
    sllv	$t1,$t1,$a1
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad2ed4
    sh	$t0,-2($a4)
    b	.L0dad1490
    nop
.L0dad2f78:
    # Line 903
    li	$a0,-1
    beqz	$a7,.L0dad5d24
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad64b4
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad2f98:
    addiu	$a4,$a4,8
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    lbu	$t0,0($t8)
    lw	$v0,-4($v0)
    addu	$t1,$a3,$t3
    sllv	$t0,$t0,$a1
    andi	$t0,$t0,0xffff
    andi	$v1,$t0,0xff
    sll	$v1,$v1,0x8
    andi	$t0,$t0,0xff00
    sra	$t0,$t0,0x8
    or	$v1,$v1,$t0
    sh	$v1,-8($a4)
    lw	$t1,12($t1)
    lbu	$t0,0($t2)
    addu	$t8,$v0,$t8
    addu	$t2,$t1,$t2
    sllv	$t0,$t0,$a1
    andi	$t0,$t0,0xffff
    andi	$v1,$t0,0xff
    sll	$v1,$v1,0x8
    andi	$t0,$t0,0xff00
    sra	$t0,$t0,0x8
    or	$v1,$v1,$t0
    sh	$v1,-6($a4)
    addu	$v0,$a3,$t3
    lbu	$t0,0($t9)
    lw	$v0,28($v0)
    addu	$t1,$a3,$t3
    sllv	$t0,$t0,$a1
    andi	$t0,$t0,0xffff
    andi	$v1,$t0,0xff
    sll	$v1,$v1,0x8
    andi	$t0,$t0,0xff00
    sra	$t0,$t0,0x8
    or	$v1,$v1,$t0
    sh	$v1,-4($a4)
    lw	$t1,44($t1)
    lbu	$t0,0($a5)
    addu	$t9,$v0,$t9
    addu	$a5,$t1,$a5
    sllv	$t0,$t0,$a1
    andi	$t0,$t0,0xffff
    andi	$v1,$t0,0xff
    sll	$v1,$v1,0x8
    andi	$t0,$t0,0xff00
    sra	$t0,$t0,0x8
    or	$v1,$v1,$t0
    bne	$a6,$a0,.L0dad2f98
    sh	$v1,-2($a4)
    b	.L0dad1490
    nop
.L0dad306c:
    # Line 830
    li	$v1,6403
    bne	$a4,$v1,.L0dad1490
    nop
    b	.L0dad3094
    # Line 833
    lw	$a1,4($sp)
.L0dad3080:
    # Line 830
    sltiu	$t0,$a4,6409
    bnez	$t0,.L0dad4768
    sltiu	$t1,$a4,6410
    beqz	$t1,.L0dad1490
    # Line 833
    lw	$a1,4($sp)
.L0dad3094:
    bltz	$a1,.L0dad7164
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a6,1
    andi	$a4,$a7,0x3
    beqz	$a4,.L0dad30dc
    sll	$a3,$a2,0x2
.L0dad30b4:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$v0,0($t8)
    addi	$a4,$a4,-1
    addu	$t8,$v1,$t8
    sllv	$v0,$v0,$a1
    bnez	$a4,.L0dad30b4
    sb	$v0,-1($a5)
.L0dad30dc:
    move	$t1,$a6
    sd	$a6,352($sp)
    move	$t9,$t8
    sra	$t0,$a7,0x2
    beqz	$t0,.L0dad316c
    move	$t2,$a5
    ld	$a2,352($sp)
    move	$a5,$t9
    move	$a4,$t2
.L0dad3100:
    addiu	$a4,$a4,4
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$v0,0($a5)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    sllv	$v0,$v0,$a1
    sb	$v0,-4($a4)
    addu	$t1,$t1,$a5
    lbu	$v0,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$v0,$v0,$a1
    sb	$v0,-3($a4)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a5,$a3,$t3
    lw	$a5,-4($a5)
    sllv	$t1,$t1,$a1
    sb	$t1,-2($a4)
    addu	$a5,$a5,$t0
    lbu	$v0,0($a5)
    addiu	$a2,$a2,-4
    addu	$a5,$v1,$a5
    sllv	$v0,$v0,$a1
    bne	$a2,$a0,.L0dad3100
    sb	$v0,-1($a4)
.L0dad316c:
    b	.L0dad1490
    nop
.L0dad3174:
    # Line 841
    lw	$a1,4($sp)
    bltz	$a1,.L0dad5e44
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a6,1
    andi	$a4,$a7,0x3
    beqz	$a4,.L0dad31c0
    sll	$a3,$a2,0x2
.L0dad3198:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lbu	$t0,0($t9)
    addi	$a4,$a4,-1
    addu	$t9,$t1,$t9
    sllv	$t0,$t0,$a1
    bnez	$a4,.L0dad3198
    sb	$t0,-1($a5)
.L0dad31c0:
    move	$v1,$a6
    sd	$a6,384($sp)
    move	$t8,$t9
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dad3250
    move	$t2,$a5
    ld	$a2,384($sp)
    move	$a5,$t8
    move	$a4,$t2
.L0dad31e4:
    addiu	$a4,$a4,4
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lbu	$v1,0($a5)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    sllv	$v1,$v1,$a1
    sb	$v1,-4($a4)
    addu	$v0,$v0,$a5
    lbu	$v1,0($v0)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$v1,$v1,$a1
    sb	$v1,-3($a4)
    addu	$t0,$t0,$v0
    lbu	$v0,0($t0)
    addu	$a5,$a3,$t3
    lw	$a5,28($a5)
    sllv	$v0,$v0,$a1
    sb	$v0,-2($a4)
    addu	$a5,$a5,$t0
    lbu	$t0,0($a5)
    addiu	$a2,$a2,-4
    addu	$a5,$t1,$a5
    sllv	$t0,$t0,$a1
    bne	$a2,$a0,.L0dad31e4
    sb	$t0,-1($a4)
.L0dad3250:
    b	.L0dad1490
    nop
.L0dad3258:
    # Line 824
    li	$v0,0x8032
    bne	$a5,$v0,.L0dad1490
    # Line 996
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    # Line 994
    move	$a5,$a1
    # Line 996
    sll	$a3,$a2,0x2
.L0dad3274:
    addiu	$a5,$a5,1
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    addiu	$a6,$a6,-1
    lbu	$a1,0($t9)
    addu	$t9,$v1,$t9
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lbu	$v1,0($t8)
    lbu	$t0,0($a4)
    addu	$a4,$v0,$a4
    addu	$t8,$t1,$t8
    andi	$v1,$v1,0xe0
    andi	$t0,$t0,0xe0
    sra	$t0,$t0,0x3
    or	$v1,$v1,$t0
    andi	$a1,$a1,0xc0
    sra	$a1,$a1,0x6
    or	$v1,$v1,$a1
    bne	$a6,$a0,.L0dad3274
    sb	$v1,-1($a5)
    b	.L0dad1490
    nop
.L0dad32d8:
    # Line 824
    sltu	$t0,$a5,$a0
    bnez	$t0,.L0dad48a0
    sltu	$t1,$a0,$a5
    bnez	$t1,.L0dad1490
    # Line 1030
    move	$a5,$a1
    beqz	$a7,.L0dad906c
    li	$a0,-1
    sd	$a5,736($sp)
    # Line 1032
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a7,$a5
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
    ld	$a1,704($sp)
.L0dad3314:
    addiu	$a7,$a7,4
    addiu	$a6,$a6,-1
    lbu	$v0,0($t9)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    lbu	$v1,0($a1)
    sll	$v0,$v0,0x16
    addu	$a1,$t0,$a1
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addu	$a2,$a3,$t3
    lw	$a2,28($a2)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    addu	$t9,$a2,$t9
    lbu	$a2,0($t2)
    addu	$t2,$t1,$t2
    lbu	$t1,0($t8)
    sll	$v1,$v1,0xc
    addu	$t8,$t0,$t8
    sll	$t1,$t1,0x2
    or	$t1,$t1,$v1
    andi	$a2,$a2,0xc0
    sll	$a2,$a2,0x18
    or	$v0,$v0,$a2
    or	$t1,$t1,$v0
    sll	$t0,$t1,0x18
    andi	$a2,$t1,0xff00
    sll	$a2,$a2,0x8
    or	$a2,$a2,$t0
    and	$t0,$a4,$t1
    and	$t1,$a5,$t1
    srl	$t1,$t1,0x8
    srl	$t0,$t0,0x18
    or	$t0,$t0,$t1
    or	$a2,$a2,$t0
    bne	$a6,$a0,.L0dad3314
    sw	$a2,-4($a7)
    b	.L0dad1490
    nop
.L0dad33b4:
    # Line 1144
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad6624
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad6bb8
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    addiu	$a7,$a1,-8
.L0dad33e4:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($a2)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$a2,$t0,$a2
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad33e4
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad3444:
    # Line 1148
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad66dc
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad6c2c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    addiu	$a7,$a1,-8
.L0dad3474:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($t9)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$t9,$t0,$t9
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad3474
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad34d4:
    # Line 1152
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad6794
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad6ca0
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    addiu	$a7,$a1,-8
.L0dad3504:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($t8)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$t8,$t0,$t8
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad3504
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad3564:
    # Line 1156
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad684c
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad6d14
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    addiu	$a7,$a1,-8
.L0dad3594:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($t2)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sllv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$t2,$t0,$t2
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad3594
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad35f4:
    # Line 1160
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad6904
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad6d88
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    addiu	$a7,$a1,-8
.L0dad3620:
    lhu	$t1,0($a2)
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    sllv	$t1,$t1,$a7
    and	$v0,$a5,$t1
    and	$t0,$a4,$t1
    andi	$a1,$t1,0xff00
    sll	$t1,$t1,0x18
    sll	$a1,$a1,0x8
    srl	$v0,$v0,0x8
    srl	$t0,$t0,0x18
    or	$t0,$t0,$v0
    or	$a1,$a1,$t1
    or	$a1,$a1,$t0
    ld	$t0,696($sp)
    addiu	$a6,$a6,-1
    addu	$v1,$v1,$v1
    addiu	$t0,$t0,8
    sd	$t0,696($sp)
    addu	$t1,$a3,$t3
    sw	$a1,-8($t0)
    lw	$t1,-4($t1)
    lhu	$v0,0($t2)
    addu	$t2,$v1,$t2
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    sllv	$v0,$v0,$a7
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad3620
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad36c4:
    # Line 1164
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad696c
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad6e40
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    addiu	$a7,$a1,-8
.L0dad36f4:
    lhu	$t1,0($a2)
    sllv	$t1,$t1,$a7
    sll	$t0,$t1,0x18
    andi	$a1,$t1,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t0
    and	$t0,$a4,$t1
    and	$t1,$a5,$t1
    srl	$t1,$t1,0x8
    srl	$t0,$t0,0x18
    or	$t0,$t0,$t1
    or	$a1,$a1,$t0
    ld	$t0,696($sp)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    addiu	$t0,$t0,12
    sw	$a1,-12($t0)
    lhu	$v0,0($t9)
    addu	$v1,$v1,$v1
    addu	$a2,$v1,$a2
    sllv	$v0,$v0,$a7
    and	$t1,$a4,$v0
    and	$v1,$a5,$v0
    srl	$v1,$v1,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v1
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    addiu	$a6,$a6,-1
    sd	$t0,696($sp)
    addu	$v1,$v1,$v1
    andi	$a1,$v0,0xff00
    sll	$v0,$v0,0x18
    sll	$a1,$a1,0x8
    or	$a1,$a1,$v0
    or	$a1,$a1,$t1
    addu	$t1,$a3,$t3
    sw	$a1,-8($t0)
    lw	$t1,12($t1)
    lhu	$v0,0($t8)
    addu	$t8,$v1,$t8
    addu	$t1,$t1,$t1
    addu	$t9,$t1,$t9
    sllv	$v0,$v0,$a7
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad36f4
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad37dc:
    # Line 1169
    lw	$a1,4($sp)
    li	$a0,-1
    slti	$a4,$a1,8
    beqz	$a7,.L0dad69f0
    xori	$a4,$a4,0x1
    beqzl	$a4,.L0dad6f3c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    addiu	$a7,$a1,-8
.L0dad380c:
    lhu	$v0,0($a2)
    sllv	$v0,$v0,$a7
    and	$t1,$a4,$v0
    sll	$t0,$v0,0x18
    andi	$a1,$v0,0xff00
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t0
    ld	$t0,696($sp)
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    addiu	$t0,$t0,16
    sw	$a1,-16($t0)
    addiu	$a6,$a6,-1
    lhu	$v1,0($t9)
    sd	$t0,696($sp)
    addu	$a1,$a3,$t3
    sllv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    andi	$t1,$v1,0xff00
    sll	$t1,$t1,0x8
    or	$t1,$t1,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    or	$t1,$t1,$v0
    sw	$t1,-12($t0)
    lw	$a1,-4($a1)
    lhu	$v0,0($t8)
    addu	$v1,$v1,$v1
    addu	$t9,$v1,$t9
    sllv	$v0,$v0,$a7
    and	$t1,$a4,$v0
    and	$v1,$a5,$v0
    srl	$v1,$v1,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v1
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addu	$a1,$a1,$a1
    addu	$a2,$a1,$a2
    addu	$v1,$v1,$v1
    andi	$a1,$v0,0xff00
    sll	$v0,$v0,0x18
    sll	$a1,$a1,0x8
    or	$a1,$a1,$v0
    or	$a1,$a1,$t1
    addu	$t1,$a3,$t3
    sw	$a1,-8($t0)
    lw	$t1,28($t1)
    lhu	$v0,0($t2)
    addu	$t2,$v1,$t2
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
    sllv	$v0,$v0,$a7
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad380c
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad3938:
    # Line 1056
    li	$v1,6408
    bne	$a4,$v1,.L0dad1490
    # Line 1084
    lw	$a1,4($sp)
    slti	$a0,$a1,8
    bnez	$a0,.L0dad6a90
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad395c:
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$t1,0($a2)
    addu	$a2,$v0,$a2
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$t1,$t1,$a7
    sb	$t1,-4($a5)
    addu	$t0,$t0,$t0
    lhu	$v1,0($t9)
    addu	$t9,$t0,$t9
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    sllv	$v1,$v1,$a7
    sb	$v1,-3($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    sllv	$v1,$v1,$a7
    sb	$v1,-2($a5)
    addu	$t8,$v0,$t8
    lhu	$t0,0($t2)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
    sllv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad395c
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad39e0:
    # Line 1067
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad3a20
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$v0,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    srlv	$v0,$v0,$a7
    sb	$v0,-1($a5)
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
.L0dad3a20:
    move	$v1,$a6
    sd	$a6,400($sp)
    move	$t9,$t8
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad3a88
    move	$t2,$a5
    ld	$a4,400($sp)
    move	$a2,$t9
    move	$a1,$t2
.L0dad3a44:
    addiu	$a1,$a1,2
    addiu	$a4,$a4,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lhu	$v1,0($a2)
    lw	$v0,28($v0)
    addu	$t1,$t1,$t1
    srlv	$v1,$v1,$a7
    sb	$v1,-2($a1)
    addu	$t1,$t1,$a2
    lhu	$t0,0($t1)
    addu	$a2,$v0,$v0
    addu	$a2,$a2,$t1
    srlv	$t0,$t0,$a7
    bne	$a4,$a0,.L0dad3a44
    sb	$t0,-1($a1)
.L0dad3a88:
    b	.L0dad1490
    nop
.L0dad3a90:
    # Line 1075
    lw	$a1,4($sp)
    slti	$v0,$a1,8
    bnez	$v0,.L0dad4970
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad3aac:
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    addiu	$a5,$a5,2
    addiu	$a6,$a6,-1
    addu	$t1,$t1,$t1
    lhu	$v0,0($a2)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sllv	$v0,$v0,$a7
    sb	$v0,-2($a5)
    addu	$a2,$t1,$a2
    lhu	$v1,0($t2)
    addu	$t0,$t0,$t0
    addu	$t2,$t0,$t2
    sllv	$v1,$v1,$a7
    bne	$a6,$a0,.L0dad3aac
    sb	$v1,-1($a5)
    b	.L0dad1490
    nop
.L0dad3af8:
    # Line 1050
    li	$v0,0x8035
    bne	$a5,$v0,.L0dad1490
    # Line 1246
    move	$a4,$a1
    beqz	$a7,.L0dad95e4
    li	$a0,-1
    sd	$a4,728($sp)
    # Line 1248
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a4
    lui	$a5,0xff
    lui	$a4,0xff00
.L0dad3b24:
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addiu	$a1,$a1,4
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    addu	$a7,$a3,$t3
    lw	$a7,28($a7)
    lhu	$v0,0($t2)
    addu	$t2,$t0,$t2
    addu	$a7,$a7,$a7
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    lhu	$t1,0($t8)
    addu	$t8,$a7,$t8
    addu	$v1,$v1,$v1
    addu	$a7,$a3,$t3
    lw	$a7,-4($a7)
    lhu	$t0,0($t9)
    addu	$t9,$v1,$t9
    addu	$a7,$a7,$a7
    lhu	$v1,0($a2)
    addu	$a2,$a7,$a2
    andi	$t0,$t0,0xff00
    andi	$v1,$v1,0xff00
    srl	$v1,$v1,0x8
    or	$t0,$t0,$v1
    andi	$t1,$t1,0xff00
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sll	$v0,$v0,0x18
    or	$t1,$t1,$v0
    or	$t0,$t0,$t1
    andi	$v1,$t0,0xff00
    sll	$v1,$v1,0x8
    sll	$a7,$t0,0x18
    or	$v1,$v1,$a7
    and	$a7,$a4,$t0
    srl	$a7,$a7,0x18
    and	$t0,$a5,$t0
    srl	$t0,$t0,0x8
    or	$a7,$a7,$t0
    or	$v1,$v1,$a7
    bne	$a6,$a0,.L0dad3b24
    sw	$v1,-4($a1)
    b	.L0dad1490
    nop
.L0dad3bdc:
    # Line 1184
    beqz	$a7,.L0dad72d8
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a2,$a1
    lw	$t1,64($sp)
    addiu	$a4,$a6,1
    andi	$a1,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a1,.L0dad3c44
    or	$a3,$a3,$t0
.L0dad3c30:
    addiu	$a6,$a6,-1
    sw	$a3,0($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dad3c30
    addiu	$a2,$a2,4
.L0dad3c44:
    move	$a5,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad3c78
    move	$a7,$a2
    move	$a1,$a5
    move	$a2,$a7
.L0dad3c5c:
    addiu	$a2,$a2,16
    addiu	$a1,$a1,-4
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad3c5c
    sw	$a3,-4($a2)
.L0dad3c78:
    b	.L0dad1490
    nop
.L0dad3c80:
    # Line 1188
    beqz	$a7,.L0dad73a4
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,72($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad3ce8
    or	$a3,$a3,$t0
.L0dad3cd4:
    addiu	$a6,$a6,-1
    sw	$a3,0($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L0dad3cd4
    addiu	$a1,$a1,4
.L0dad3ce8:
    move	$a5,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad3d1c
    move	$a7,$a1
    move	$a2,$a5
    move	$a1,$a7
.L0dad3d00:
    addiu	$a1,$a1,16
    addiu	$a2,$a2,-4
    sw	$a3,-16($a1)
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    bne	$a2,$a0,.L0dad3d00
    sw	$a3,-4($a1)
.L0dad3d1c:
    b	.L0dad1490
    nop
.L0dad3d24:
    # Line 1192
    beqz	$a7,.L0dad7470
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,80($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad3d8c
    or	$a3,$a3,$t0
.L0dad3d78:
    addiu	$a6,$a6,-1
    sw	$a3,0($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L0dad3d78
    addiu	$a1,$a1,4
.L0dad3d8c:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad3dc0
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad3da4:
    addiu	$a2,$a2,16
    addiu	$a1,$a1,-4
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad3da4
    sw	$a3,-4($a2)
.L0dad3dc0:
    b	.L0dad1490
    nop
.L0dad3dc8:
    # Line 1196
    beqz	$a7,.L0dad753c
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,88($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad3e30
    or	$a3,$a3,$t0
.L0dad3e1c:
    addiu	$a6,$a6,-1
    sw	$a3,0($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L0dad3e1c
    addiu	$a1,$a1,4
.L0dad3e30:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad3e64
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad3e48:
    addiu	$a2,$a2,16
    addiu	$a1,$a1,-4
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad3e48
    sw	$a3,-4($a2)
.L0dad3e64:
    b	.L0dad1490
    nop
.L0dad3e6c:
    # Line 1200
    beqz	$a7,.L0dad7608
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,96($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad3ed8
    or	$a3,$a3,$t0
.L0dad3ec0:
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,8
    addi	$a2,$a2,-1
    sw	$a3,-8($a1)
    bnez	$a2,.L0dad3ec0
    sw	$a3,-4($a1)
.L0dad3ed8:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad3f1c
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad3ef0:
    addiu	$a2,$a2,32
    addiu	$a1,$a1,-4
    sw	$a3,-32($a2)
    sw	$a3,-28($a2)
    sw	$a3,-24($a2)
    sw	$a3,-20($a2)
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad3ef0
    sw	$a3,-4($a2)
.L0dad3f1c:
    b	.L0dad1490
    nop
.L0dad3f24:
    # Line 1205
    beqz	$a7,.L0dad7758
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,104($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad3f94
    or	$a3,$a3,$t0
.L0dad3f78:
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,12
    addi	$a2,$a2,-1
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    bnez	$a2,.L0dad3f78
    sw	$a3,-4($a1)
.L0dad3f94:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad3fe8
    move	$a5,$a1
    move	$a2,$a7
    move	$a1,$a5
.L0dad3fac:
    addiu	$a1,$a1,48
    addiu	$a2,$a2,-4
    sw	$a3,-48($a1)
    sw	$a3,-44($a1)
    sw	$a3,-40($a1)
    sw	$a3,-36($a1)
    sw	$a3,-32($a1)
    sw	$a3,-28($a1)
    sw	$a3,-24($a1)
    sw	$a3,-20($a1)
    sw	$a3,-16($a1)
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    bne	$a2,$a0,.L0dad3fac
    sw	$a3,-4($a1)
.L0dad3fe8:
    b	.L0dad1490
    nop
.L0dad3ff0:
    # Line 1210
    beqz	$a7,.L0dad7928
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,112($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad4064
    or	$a3,$a3,$t0
.L0dad4044:
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,16
    addi	$a2,$a2,-1
    sw	$a3,-16($a1)
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    bnez	$a2,.L0dad4044
    sw	$a3,-4($a1)
.L0dad4064:
    move	$a5,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad40c8
    move	$a7,$a1
    move	$a1,$a5
    move	$a2,$a7
.L0dad407c:
    addiu	$a2,$a2,64
    addiu	$a1,$a1,-4
    sw	$a3,-64($a2)
    sw	$a3,-60($a2)
    sw	$a3,-56($a2)
    sw	$a3,-52($a2)
    sw	$a3,-48($a2)
    sw	$a3,-44($a2)
    sw	$a3,-40($a2)
    sw	$a3,-36($a2)
    sw	$a3,-32($a2)
    sw	$a3,-28($a2)
    sw	$a3,-24($a2)
    sw	$a3,-20($a2)
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad407c
    sw	$a3,-4($a2)
.L0dad40c8:
    b	.L0dad1490
    nop
.L0dad40d0:
    # Line 1063
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad4110
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$v0,0($t9)
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    srlv	$v0,$v0,$a7
    sb	$v0,-1($a5)
    addu	$t1,$t1,$t1
    addu	$t9,$t1,$t9
.L0dad4110:
    move	$v1,$a6
    sd	$a6,376($sp)
    move	$t8,$t9
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad4178
    move	$t2,$a5
    ld	$a1,376($sp)
    move	$a4,$t8
    move	$a2,$t2
.L0dad4134:
    addiu	$a2,$a2,2
    addiu	$a1,$a1,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    lhu	$v1,0($a4)
    lw	$v0,12($v0)
    addu	$t1,$t1,$t1
    srlv	$v1,$v1,$a7
    sb	$v1,-2($a2)
    addu	$t1,$t1,$a4
    lhu	$t0,0($t1)
    addu	$a4,$v0,$v0
    addu	$a4,$a4,$t1
    srlv	$t0,$t0,$a7
    bne	$a1,$a0,.L0dad4134
    sb	$t0,-1($a2)
.L0dad4178:
    b	.L0dad1490
    nop
.L0dad4180:
    # Line 1059
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a4,$a6,1
    andi	$t0,$a4,0x1
    beqz	$t0,.L0dad41c0
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$v0,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    srlv	$v0,$v0,$a7
    sb	$v0,-1($a5)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
.L0dad41c0:
    move	$t9,$a6
    move	$t8,$a2
    sra	$v0,$a4,0x1
    beqz	$v0,.L0dad4224
    move	$t2,$a5
    move	$a2,$t9
    move	$a4,$t8
    move	$a1,$t2
.L0dad41e0:
    addiu	$a1,$a1,2
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$v0,0($a4)
    lw	$t1,-4($t1)
    addu	$t0,$t0,$t0
    srlv	$v0,$v0,$a7
    sb	$v0,-2($a1)
    addu	$t0,$t0,$a4
    lhu	$v1,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    srlv	$v1,$v1,$a7
    bne	$a2,$a0,.L0dad41e0
    sb	$v1,-1($a1)
.L0dad4224:
    b	.L0dad1490
    nop
.L0dad422c:
    sd	$a3,760($sp)
    # Line 918
    li	$a0,-1
    beqz	$a7,.L0dad7c18
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad82cc
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad4258:
    ld	$v0,688($sp)
    addiu	$a6,$a6,-1
    addiu	$v0,$v0,4
    sd	$v0,688($sp)
    lbu	$t0,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    sllv	$t0,$t0,$a1
    sll	$v1,$t0,0x18
    addu	$t8,$t1,$t8
    andi	$t1,$t0,0xff00
    sll	$t1,$t1,0x8
    or	$t1,$t1,$v1
    and	$v1,$a4,$t0
    and	$t0,$a5,$t0
    srl	$t0,$t0,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$t0
    or	$t1,$t1,$v1
    bne	$a6,$a0,.L0dad4258
    sw	$t1,-4($v0)
    b	.L0dad1490
    nop
.L0dad42b4:
    sd	$a3,760($sp)
    # Line 922
    li	$a0,-1
    beqz	$a7,.L0dad7cfc
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad8344
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad42e0:
    ld	$v1,688($sp)
    addiu	$a6,$a6,-1
    addiu	$v1,$v1,4
    sd	$v1,688($sp)
    lbu	$t1,0($t2)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    sllv	$t1,$t1,$a1
    sll	$t0,$t1,0x18
    addu	$t2,$v0,$t2
    andi	$v0,$t1,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$t0
    and	$t0,$a4,$t1
    and	$t1,$a5,$t1
    srl	$t1,$t1,0x8
    srl	$t0,$t0,0x18
    or	$t0,$t0,$t1
    or	$v0,$v0,$t0
    bne	$a6,$a0,.L0dad42e0
    sw	$v0,-4($v1)
    b	.L0dad1490
    nop
.L0dad433c:
    sd	$a3,760($sp)
    # Line 926
    li	$a0,-1
    beqz	$a7,.L0dad7de0
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad83bc
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad4368:
    ld	$t0,688($sp)
    addiu	$a6,$a6,-1
    addiu	$t0,$t0,4
    sd	$t0,688($sp)
    lbu	$v0,0($t9)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    sllv	$v0,$v0,$a1
    sll	$t1,$v0,0x18
    addu	$t9,$v1,$t9
    andi	$v1,$v0,0xff00
    sll	$v1,$v1,0x8
    or	$v1,$v1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$v1,$v1,$t1
    bne	$a6,$a0,.L0dad4368
    sw	$v1,-4($t0)
    b	.L0dad1490
    nop
.L0dad43c4:
    sd	$a3,760($sp)
    # Line 930
    li	$a0,-1
    lw	$a1,4($sp)
    beqz	$a7,.L0dad7ec4
    move	$t2,$a3
    bltzl	$a1,.L0dad8434
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad43f4:
    ld	$t1,688($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,688($sp)
    lbu	$v1,0($t2)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sllv	$v1,$v1,$a1
    sll	$v0,$v1,0x18
    addu	$t2,$t0,$t2
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad43f4
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad4450:
    sd	$a3,760($sp)
    # Line 934
    li	$a0,-1
    lw	$a1,4($sp)
    beqz	$a7,.L0dad7fa8
    move	$t2,$a3
    bltzl	$a1,.L0dad84ac
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad4480:
    lbu	$v0,0($t8)
    addiu	$a6,$a6,-1
    sllv	$v0,$v0,$a1
    and	$v1,$a5,$v0
    and	$t1,$a4,$v0
    andi	$t0,$v0,0xff00
    sll	$v0,$v0,0x18
    sll	$t0,$t0,0x8
    srl	$v1,$v1,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v1
    or	$t0,$t0,$v0
    or	$t0,$t0,$t1
    ld	$t1,688($sp)
    addu	$a2,$a3,$t3
    lw	$a2,44($a2)
    addiu	$t1,$t1,8
    sd	$t1,688($sp)
    addu	$v0,$a3,$t3
    sw	$t0,-8($t1)
    lw	$v0,-4($v0)
    lbu	$v1,0($t2)
    addu	$t2,$a2,$t2
    addu	$t8,$v0,$t8
    sllv	$v1,$v1,$a1
    sll	$v0,$v1,0x18
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad4480
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad451c:
    sd	$a3,760($sp)
    # Line 939
    li	$a0,-1
    beqz	$a7,.L0dad80ac
    lw	$a1,4($sp)
    bltzl	$a1,.L0dad8564
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad4548:
    lbu	$t0,0($t8)
    sllv	$t0,$t0,$a1
    and	$a2,$a4,$t0
    sll	$v1,$t0,0x18
    andi	$v0,$t0,0xff00
    and	$t0,$a5,$t0
    srl	$t0,$t0,0x8
    srl	$a2,$a2,0x18
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    ld	$v1,688($sp)
    or	$a2,$a2,$t0
    or	$v0,$v0,$a2
    addiu	$v1,$v1,12
    sw	$v0,-12($v1)
    lbu	$t1,0($t2)
    addiu	$a6,$a6,-1
    sd	$v1,688($sp)
    sllv	$t1,$t1,$a1
    and	$v0,$a5,$t1
    and	$t0,$a4,$t1
    andi	$a2,$t1,0xff00
    sll	$t1,$t1,0x18
    sll	$a2,$a2,0x8
    or	$a2,$a2,$t1
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    srl	$v0,$v0,0x8
    srl	$t0,$t0,0x18
    or	$t0,$t0,$v0
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    or	$a2,$a2,$t0
    sw	$a2,-8($v1)
    addu	$a2,$a3,$t3
    lw	$a2,12($a2)
    lbu	$t0,0($t9)
    addu	$t9,$t1,$t9
    addu	$t8,$v0,$t8
    addu	$t2,$a2,$t2
    sllv	$t0,$t0,$a1
    sll	$a2,$t0,0x18
    andi	$v0,$t0,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$a2
    and	$a2,$a4,$t0
    and	$t0,$a5,$t0
    srl	$t0,$t0,0x8
    srl	$a2,$a2,0x18
    or	$a2,$a2,$t0
    or	$v0,$v0,$a2
    bne	$a6,$a0,.L0dad4548
    sw	$v0,-4($v1)
    b	.L0dad1490
    nop
.L0dad4624:
    # Line 944
    beqz	$a7,.L0dad8124
    lw	$a1,4($sp)
    sd	$a3,760($sp)
    bltz	$a1,.L0dad865c
    move	$a7,$a3
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad464c:
    lbu	$v1,0($t8)
    sllv	$v1,$v1,$a1
    and	$v0,$a4,$v1
    sll	$t1,$v1,0x18
    andi	$t0,$v1,0xff00
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    sll	$t0,$t0,0x8
    or	$t0,$t0,$t1
    ld	$t1,688($sp)
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    addiu	$t1,$t1,16
    sw	$t0,-16($t1)
    lbu	$a2,0($t2)
    addiu	$a6,$a6,-1
    addu	$t0,$a3,$t3
    sllv	$a2,$a2,$a1
    sll	$v1,$a2,0x18
    andi	$v0,$a2,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    and	$v1,$a4,$a2
    and	$a2,$a5,$a2
    srl	$a2,$a2,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$a2
    or	$v0,$v0,$v1
    sw	$v0,-12($t1)
    lw	$t0,-4($t0)
    lbu	$a2,0($t9)
    sd	$t1,688($sp)
    addu	$t8,$t0,$t8
    sllv	$a2,$a2,$a1
    and	$t0,$a5,$a2
    and	$v1,$a4,$a2
    andi	$v0,$a2,0xff00
    sll	$a2,$a2,0x18
    sll	$v0,$v0,0x8
    or	$v0,$v0,$a2
    addu	$a2,$a3,$t3
    lw	$a2,44($a2)
    srl	$t0,$t0,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$t0
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    or	$v0,$v0,$v1
    sw	$v0,-8($t1)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    lbu	$v1,0($a7)
    addu	$a7,$a2,$a7
    addu	$t2,$t0,$t2
    addu	$t9,$v0,$t9
    sllv	$v1,$v1,$a1
    sll	$v0,$v1,0x18
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad464c
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad4768:
    # Line 830
    li	$t0,6408
    bne	$a4,$t0,.L0dad1490
    # Line 858
    lw	$a1,4($sp)
    bltz	$a1,.L0dad9bf8
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    ld	$a4,760($sp)
.L0dad4790:
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    lbu	$v1,0($t8)
    lw	$v0,-4($v0)
    addu	$t1,$a3,$t3
    sllv	$v1,$v1,$a1
    sb	$v1,-4($a5)
    lw	$t1,12($t1)
    lbu	$t0,0($t2)
    addu	$t8,$v0,$t8
    addu	$t2,$t1,$t2
    sllv	$t0,$t0,$a1
    sb	$t0,-3($a5)
    addu	$v1,$a3,$t3
    lbu	$t0,0($t9)
    lw	$v1,28($v1)
    addu	$v0,$a3,$t3
    sllv	$t0,$t0,$a1
    sb	$t0,-2($a5)
    lw	$v0,44($v0)
    lbu	$t1,0($a4)
    addu	$t9,$v1,$t9
    addu	$a4,$v0,$a4
    sllv	$t1,$t1,$a1
    bne	$a6,$a0,.L0dad4790
    sb	$t1,-1($a5)
    b	.L0dad1490
    nop
.L0dad4804:
    # Line 830
    li	$v1,0x8000
    bne	$a4,$v1,.L0dad1490
    # Line 862
    lw	$a1,4($sp)
    bltz	$a1,.L0dad9c8c
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    ld	$a4,760($sp)
.L0dad482c:
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$t1,$a3,$t3
    lbu	$v0,0($a4)
    lw	$t1,44($t1)
    addu	$t0,$a3,$t3
    sllv	$v0,$v0,$a1
    sb	$v0,-4($a5)
    lw	$t0,28($t0)
    lbu	$v1,0($t9)
    addu	$a4,$t1,$a4
    addu	$t9,$t0,$t9
    sllv	$v1,$v1,$a1
    sb	$v1,-3($a5)
    addu	$v0,$a3,$t3
    lbu	$v1,0($t2)
    lw	$v0,12($v0)
    addu	$t1,$a3,$t3
    sllv	$v1,$v1,$a1
    sb	$v1,-2($a5)
    lw	$t1,-4($t1)
    lbu	$t0,0($t8)
    addu	$t2,$v0,$t2
    addu	$t8,$t1,$t8
    sllv	$t0,$t0,$a1
    bne	$a6,$a0,.L0dad482c
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad48a0:
    # Line 824
    li	$v0,0x8035
    bne	$a5,$v0,.L0dad1490
    # Line 1021
    move	$a5,$a1
    beqz	$a7,.L0dad9d20
    li	$a0,-1
    sd	$a5,720($sp)
    # Line 1023
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
.L0dad48d0:
    addiu	$a1,$a1,4
    lbu	$t1,0($t2)
    lbu	$a2,0($t9)
    addiu	$a6,$a6,-1
    sll	$t1,$t1,0x18
    sll	$a2,$a2,0x10
    or	$a2,$a2,$t1
    addu	$v0,$a3,$t3
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    addu	$t2,$v1,$t2
    ld	$v1,704($sp)
    lw	$v0,12($v0)
    addu	$t9,$t0,$t9
    lbu	$t0,0($v1)
    addu	$v1,$v0,$v1
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    sd	$v1,704($sp)
    lbu	$v1,0($t8)
    addu	$t8,$v0,$t8
    sll	$t0,$t0,0x8
    or	$v1,$v1,$t0
    or	$v1,$v1,$a2
    sll	$v0,$v1,0x18
    andi	$t1,$v1,0xff00
    sll	$t1,$t1,0x8
    or	$t1,$t1,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t1,$t1,$v0
    bne	$a6,$a0,.L0dad48d0
    sw	$t1,-4($a1)
    b	.L0dad1490
    nop
.L0dad4970:
    # Line 1075
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad4980:
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a5,$a5,2
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$v1,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    srlv	$v1,$v1,$a7
    sb	$v1,-2($a5)
    addu	$a2,$v0,$a2
    lhu	$t0,0($t2)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad4980
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad49cc:
    # Line 959
    beqz	$a7,.L0dad8798
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a2,$a1
    lw	$t1,8($sp)
    addiu	$a4,$a6,1
    andi	$a1,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a1,.L0dad4a34
    or	$a3,$a3,$t0
.L0dad4a20:
    addiu	$a6,$a6,-1
    sw	$a3,0($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dad4a20
    addiu	$a2,$a2,4
.L0dad4a34:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad4a68
    move	$a5,$a2
    move	$a1,$a7
    move	$a2,$a5
.L0dad4a4c:
    addiu	$a2,$a2,16
    addiu	$a1,$a1,-4
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad4a4c
    sw	$a3,-4($a2)
.L0dad4a68:
    b	.L0dad1490
    nop
.L0dad4a70:
    # Line 963
    beqz	$a7,.L0dad885c
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,16($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad4ad8
    or	$a3,$a3,$t0
.L0dad4ac4:
    addiu	$a6,$a6,-1
    sw	$a3,0($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L0dad4ac4
    addiu	$a1,$a1,4
.L0dad4ad8:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad4b0c
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad4af0:
    addiu	$a2,$a2,16
    addiu	$a1,$a1,-4
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad4af0
    sw	$a3,-4($a2)
.L0dad4b0c:
    b	.L0dad1490
    nop
.L0dad4b14:
    # Line 967
    beqz	$a7,.L0dad8928
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,24($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad4b7c
    or	$a3,$a3,$t0
.L0dad4b68:
    addiu	$a6,$a6,-1
    sw	$a3,0($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L0dad4b68
    addiu	$a1,$a1,4
.L0dad4b7c:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad4bb0
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad4b94:
    addiu	$a2,$a2,16
    addiu	$a1,$a1,-4
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad4b94
    sw	$a3,-4($a2)
.L0dad4bb0:
    b	.L0dad1490
    nop
.L0dad4bb8:
    # Line 971
    beqz	$a7,.L0dad89ec
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,32($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad4c20
    or	$a3,$a3,$t0
.L0dad4c0c:
    addiu	$a6,$a6,-1
    sw	$a3,0($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L0dad4c0c
    addiu	$a1,$a1,4
.L0dad4c20:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad4c54
    move	$a5,$a1
    move	$a2,$a7
    move	$a1,$a5
.L0dad4c38:
    addiu	$a1,$a1,16
    addiu	$a2,$a2,-4
    sw	$a3,-16($a1)
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    bne	$a2,$a0,.L0dad4c38
    sw	$a3,-4($a1)
.L0dad4c54:
    b	.L0dad1490
    nop
.L0dad4c5c:
    # Line 975
    beqz	$a7,.L0dad8ab0
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,40($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad4cc8
    or	$a3,$a3,$t0
.L0dad4cb0:
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,8
    addi	$a2,$a2,-1
    sw	$a3,-8($a1)
    bnez	$a2,.L0dad4cb0
    sw	$a3,-4($a1)
.L0dad4cc8:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad4d0c
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad4ce0:
    addiu	$a2,$a2,32
    addiu	$a1,$a1,-4
    sw	$a3,-32($a2)
    sw	$a3,-28($a2)
    sw	$a3,-24($a2)
    sw	$a3,-20($a2)
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad4ce0
    sw	$a3,-4($a2)
.L0dad4d0c:
    b	.L0dad1490
    nop
.L0dad4d14:
    # Line 980
    beqz	$a7,.L0dad8c88
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,48($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad4d84
    or	$a3,$a3,$t0
.L0dad4d68:
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,12
    addi	$a2,$a2,-1
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    bnez	$a2,.L0dad4d68
    sw	$a3,-4($a1)
.L0dad4d84:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad4dd8
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad4d9c:
    addiu	$a2,$a2,48
    addiu	$a1,$a1,-4
    sw	$a3,-48($a2)
    sw	$a3,-44($a2)
    sw	$a3,-40($a2)
    sw	$a3,-36($a2)
    sw	$a3,-32($a2)
    sw	$a3,-28($a2)
    sw	$a3,-24($a2)
    sw	$a3,-20($a2)
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad4d9c
    sw	$a3,-4($a2)
.L0dad4dd8:
    b	.L0dad1490
    nop
.L0dad4de0:
    # Line 985
    beqz	$a7,.L0dad8e40
    li	$a0,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    move	$a1,$a5
    lw	$t1,56($sp)
    addiu	$a4,$a6,1
    andi	$a2,$a4,0x3
    sll	$a3,$t1,0x18
    andi	$t0,$t1,0xff00
    sll	$t0,$t0,0x8
    or	$a3,$a3,$t0
    lui	$t0,0xff00
    and	$t0,$t1,$t0
    srl	$t0,$t0,0x18
    lui	$v0,0xff
    and	$t1,$t1,$v0
    srl	$t1,$t1,0x8
    or	$t0,$t0,$t1
    beqz	$a2,.L0dad4e54
    or	$a3,$a3,$t0
.L0dad4e34:
    addiu	$a6,$a6,-1
    addiu	$a1,$a1,16
    addi	$a2,$a2,-1
    sw	$a3,-16($a1)
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    bnez	$a2,.L0dad4e34
    sw	$a3,-4($a1)
.L0dad4e54:
    move	$a7,$a6
    sra	$t1,$a4,0x2
    beqz	$t1,.L0dad4eb8
    move	$a5,$a1
    move	$a1,$a7
    move	$a2,$a5
.L0dad4e6c:
    addiu	$a2,$a2,64
    addiu	$a1,$a1,-4
    sw	$a3,-64($a2)
    sw	$a3,-60($a2)
    sw	$a3,-56($a2)
    sw	$a3,-52($a2)
    sw	$a3,-48($a2)
    sw	$a3,-44($a2)
    sw	$a3,-40($a2)
    sw	$a3,-36($a2)
    sw	$a3,-32($a2)
    sw	$a3,-28($a2)
    sw	$a3,-24($a2)
    sw	$a3,-20($a2)
    sw	$a3,-16($a2)
    sw	$a3,-12($a2)
    sw	$a3,-8($a2)
    bne	$a1,$a0,.L0dad4e6c
    sw	$a3,-4($a2)
.L0dad4eb8:
    b	.L0dad1490
    nop
.L0dad4ec0:
    # Line 853
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a4,$a1
    sll	$a3,$a2,0x2
.L0dad4ed0:
    addiu	$a5,$a5,3
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lbu	$t1,0($t8)
    addiu	$a6,$a6,-1
    addu	$t8,$v0,$t8
    srlv	$t1,$t1,$a4
    sb	$t1,-3($a5)
    addu	$t0,$a3,$t3
    lbu	$t1,0($t2)
    lw	$t0,12($t0)
    addu	$v1,$a3,$t3
    srlv	$t1,$t1,$a4
    sb	$t1,-2($a5)
    lw	$v1,28($v1)
    lbu	$v0,0($t9)
    addu	$t2,$t0,$t2
    addu	$t9,$v1,$t9
    srlv	$v0,$v0,$a4
    bne	$a6,$a0,.L0dad4ed0
    sb	$v0,-1($a5)
    b	.L0dad1490
    nop
.L0dad4f2c:
    # Line 1103
    beqzl	$a4,.L0dad91dc
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a4,$a6,1
    andi	$v1,$a4,0x1
    beqz	$v1,.L0dad4f70
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$t1,0($a2)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$t1,$t1,$a7
    sh	$t1,-2($a5)
    addu	$t0,$t0,$t0
    addu	$a2,$t0,$a2
.L0dad4f70:
    move	$t9,$a6
    move	$t2,$a2
    sra	$t1,$a4,0x1
    beqz	$t1,.L0dad4fd4
    move	$t8,$a5
    move	$a2,$t9
    move	$a1,$t2
    move	$a4,$t8
.L0dad4f90:
    addiu	$a4,$a4,4
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$v0,0($a1)
    lw	$t1,-4($t1)
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sh	$v0,-4($a4)
    addu	$t0,$t0,$a1
    lhu	$v0,0($t0)
    addu	$a1,$t1,$t1
    addu	$a1,$a1,$t0
    sllv	$v0,$v0,$a7
    bne	$a2,$a0,.L0dad4f90
    sh	$v0,-2($a4)
.L0dad4fd4:
    b	.L0dad1490
    nop
.L0dad4fdc:
    # Line 1107
    beqzl	$a4,.L0dad9284
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$t1,$a2,0x1
    beqz	$t1,.L0dad5020
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$v1,0($t9)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    sllv	$v1,$v1,$a7
    sh	$v1,-2($a5)
    addu	$v0,$v0,$v0
    addu	$t9,$v0,$t9
.L0dad5020:
    move	$t0,$a6
    sd	$a6,304($sp)
    move	$t8,$t9
    sra	$v1,$a2,0x1
    beqz	$v1,.L0dad5088
    move	$t2,$a5
    ld	$a2,304($sp)
    move	$a1,$t8
    move	$a4,$t2
.L0dad5044:
    addiu	$a4,$a4,4
    addiu	$a2,$a2,-2
    addu	$v0,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    lhu	$t1,0($a1)
    lw	$v0,12($v0)
    addu	$t0,$t0,$t0
    sllv	$t1,$t1,$a7
    sh	$t1,-4($a4)
    addu	$t0,$t0,$a1
    lhu	$t1,0($t0)
    addu	$a1,$v0,$v0
    addu	$a1,$a1,$t0
    sllv	$t1,$t1,$a7
    bne	$a2,$a0,.L0dad5044
    sh	$t1,-2($a4)
.L0dad5088:
    b	.L0dad1490
    nop
.L0dad5090:
    # Line 1111
    beqzl	$a4,.L0dad9330
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$t1,$a2,0x1
    beqz	$t1,.L0dad50d4
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$v1,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    sllv	$v1,$v1,$a7
    sh	$v1,-2($a5)
    addu	$v0,$v0,$v0
    addu	$t8,$v0,$t8
.L0dad50d4:
    move	$t9,$a6
    move	$t2,$t8
    move	$t0,$a5
    sra	$v1,$a2,0x1
    beqz	$v1,.L0dad513c
    sd	$a5,312($sp)
    move	$a4,$t9
    move	$a1,$t2
    ld	$a2,312($sp)
.L0dad50f8:
    addiu	$a2,$a2,4
    addiu	$a4,$a4,-2
    addu	$v0,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    lhu	$t1,0($a1)
    lw	$v0,28($v0)
    addu	$t0,$t0,$t0
    sllv	$t1,$t1,$a7
    sh	$t1,-4($a2)
    addu	$t0,$t0,$a1
    lhu	$t1,0($t0)
    addu	$a1,$v0,$v0
    addu	$a1,$a1,$t0
    sllv	$t1,$t1,$a7
    bne	$a4,$a0,.L0dad50f8
    sh	$t1,-2($a2)
.L0dad513c:
    b	.L0dad1490
    nop
.L0dad5144:
    # Line 1115
    beqzl	$a4,.L0dad93dc
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$t1,$a2,0x1
    beqz	$t1,.L0dad5188
    addiu	$a7,$a1,-8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$v1,0($t2)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$v1,$v1,$a7
    sh	$v1,-2($a5)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
.L0dad5188:
    move	$t9,$a6
    move	$t0,$t2
    sd	$t2,296($sp)
    sra	$v1,$a2,0x1
    beqz	$v1,.L0dad51f0
    move	$t8,$a5
    move	$a2,$t9
    ld	$a4,296($sp)
    move	$a1,$t8
.L0dad51ac:
    addiu	$a1,$a1,4
    addiu	$a2,$a2,-2
    addu	$v0,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    lhu	$t1,0($a4)
    lw	$v0,44($v0)
    addu	$t0,$t0,$t0
    sllv	$t1,$t1,$a7
    sh	$t1,-4($a1)
    addu	$t0,$t0,$a4
    lhu	$t1,0($t0)
    addu	$a4,$v0,$v0
    addu	$a4,$a4,$t0
    sllv	$t1,$t1,$a7
    bne	$a2,$a0,.L0dad51ac
    sh	$t1,-2($a1)
.L0dad51f0:
    b	.L0dad1490
    nop
.L0dad51f8:
    # Line 1119
    beqzl	$a4,.L0dad9488
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad520c:
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v1,$v1,$v1
    lhu	$t0,0($a2)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$t0,$t0,$a7
    sh	$t0,-4($a5)
    addu	$a2,$v1,$a2
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    sllv	$t1,$t1,$a7
    bne	$a6,$a0,.L0dad520c
    sh	$t1,-2($a5)
    b	.L0dad1490
    nop
.L0dad5258:
    # Line 1124
    beqzl	$a4,.L0dad94e0
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad526c:
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addiu	$a5,$a5,6
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    lhu	$v1,0($a2)
    addu	$a2,$t0,$a2
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    sllv	$v1,$v1,$a7
    sh	$v1,-6($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t9)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    sllv	$v1,$v1,$a7
    sh	$v1,-4($a5)
    addu	$t9,$v0,$t9
    lhu	$t0,0($t8)
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
    sllv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad526c
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad52d4:
    # Line 1129
    beqzl	$a4,.L0dad9554
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad52e8:
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    addiu	$a5,$a5,8
    addiu	$a6,$a6,-1
    addu	$v1,$v1,$v1
    lhu	$v0,0($a2)
    addu	$a2,$v1,$a2
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    sllv	$v0,$v0,$a7
    sh	$v0,-8($a5)
    addu	$t1,$t1,$t1
    lhu	$t0,0($t9)
    addu	$t9,$t1,$t9
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    sllv	$t0,$t0,$a7
    sh	$t0,-6($a5)
    addu	$v1,$v1,$v1
    lhu	$t0,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$t0,$t0,$a7
    sh	$t0,-4($a5)
    addu	$t8,$v1,$t8
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    sllv	$t1,$t1,$a7
    bne	$a6,$a0,.L0dad52e8
    sh	$t1,-2($a5)
    b	.L0dad1490
    nop
.L0dad536c:
    # Line 1071
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad53ac
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    lhu	$v0,0($t2)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    srlv	$v0,$v0,$a7
    sb	$v0,-1($a5)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
.L0dad53ac:
    move	$v1,$a6
    sd	$a6,328($sp)
    move	$t9,$t2
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad5414
    move	$t8,$a5
    ld	$a1,328($sp)
    move	$a2,$t9
    move	$a4,$t8
.L0dad53d0:
    addiu	$a4,$a4,2
    addiu	$a1,$a1,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    lhu	$v1,0($a2)
    lw	$v0,44($v0)
    addu	$t1,$t1,$t1
    srlv	$v1,$v1,$a7
    sb	$v1,-2($a4)
    addu	$t1,$t1,$a2
    lhu	$t0,0($t1)
    addu	$a2,$v0,$v0
    addu	$a2,$a2,$t1
    srlv	$t0,$t0,$a7
    bne	$a1,$a0,.L0dad53d0
    sb	$t0,-1($a4)
.L0dad5414:
    b	.L0dad1490
    nop
.L0dad541c:
    # Line 1103
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad5428:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($a2)
    addu	$v0,$v0,$v0
    addu	$a2,$v0,$a2
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad5428
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad5470:
    # Line 1107
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad547c:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($t9)
    addu	$v0,$v0,$v0
    addu	$t9,$v0,$t9
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad547c
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad54c4:
    # Line 1111
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad54d0:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($t8)
    addu	$v0,$v0,$v0
    addu	$t8,$v0,$t8
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad54d0
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad5518:
    # Line 1115
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad5524:
    addiu	$a5,$a5,2
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addiu	$a6,$a6,-1
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad5524
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad556c:
    # Line 1119
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad5578:
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v1,$v1,$v1
    lhu	$t1,0($a2)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a5)
    addu	$a2,$v1,$a2
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad5578
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad55f4:
    # Line 1124
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad5600:
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addiu	$a5,$a5,6
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    lhu	$t1,0($a2)
    addu	$a2,$t0,$a2
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-6($a5)
    addu	$v1,$v1,$v1
    lhu	$t1,0($t9)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a5)
    addu	$t9,$v1,$t9
    lhu	$t1,0($t8)
    addu	$v0,$v0,$v0
    addu	$t8,$v0,$t8
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad5600
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad56b0:
    # Line 1129
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad56bc:
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    addiu	$a5,$a5,8
    addiu	$a6,$a6,-1
    addu	$t1,$t1,$t1
    lhu	$v0,0($a2)
    addu	$a2,$t1,$a2
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    srlv	$v0,$v0,$a7
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    sh	$t1,-8($a5)
    addu	$t0,$t0,$t0
    lhu	$t1,0($t9)
    addu	$t9,$t0,$t9
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-6($a5)
    addu	$v1,$v1,$v1
    lhu	$t1,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a5)
    addu	$t8,$v1,$t8
    lhu	$t1,0($t2)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad56bc
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad57a0:
    # Line 1239
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
.L0dad57a8:
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addiu	$a4,$a4,2
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    addu	$a1,$a3,$t3
    lw	$a1,28($a1)
    lhu	$v0,0($t2)
    addu	$t2,$t0,$t2
    addu	$a1,$a1,$a1
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    lhu	$t0,0($t8)
    addu	$t8,$a1,$t8
    addu	$v1,$v1,$v1
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lhu	$a1,0($t9)
    addu	$t9,$v1,$t9
    addu	$t1,$t1,$t1
    lhu	$v1,0($a2)
    addu	$a2,$t1,$a2
    andi	$v0,$v0,0x8000
    andi	$t0,$t0,0xf800
    sra	$t0,$t0,0x1
    or	$v0,$v0,$t0
    andi	$v1,$v1,0xf800
    sra	$v1,$v1,0xb
    andi	$a1,$a1,0xf800
    sra	$a1,$a1,0x6
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
    bne	$a6,$a0,.L0dad57a8
    sh	$v0,-2($a4)
    b	.L0dad1490
    nop
.L0dad5838:
    # Line 877
    bltzl	$a1,.L0dad967c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a6,1
    andi	$a5,$a7,0x3
    beqz	$a5,.L0dad5880
    sll	$a3,$a2,0x2
.L0dad5858:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lbu	$t1,0($t8)
    addi	$a5,$a5,-1
    addu	$t8,$v0,$t8
    sllv	$t1,$t1,$a1
    bnez	$a5,.L0dad5858
    sh	$t1,-2($a4)
.L0dad5880:
    move	$t0,$a6
    sd	$a6,248($sp)
    move	$t9,$t8
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad5910
    move	$t2,$a4
    ld	$a5,248($sp)
    move	$a2,$t9
    move	$a4,$t2
.L0dad58a4:
    addiu	$a4,$a4,8
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lbu	$v1,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    sllv	$v1,$v1,$a1
    sh	$v1,-8($a4)
    addu	$t1,$t1,$a2
    lbu	$v1,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$v1,$v1,$a1
    sh	$v1,-6($a4)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,-4($a2)
    sllv	$t1,$t1,$a1
    sh	$t1,-4($a4)
    addu	$a2,$a2,$t0
    lbu	$t1,0($a2)
    addiu	$a5,$a5,-4
    addu	$a2,$v0,$a2
    sllv	$t1,$t1,$a1
    bne	$a5,$a0,.L0dad58a4
    sh	$t1,-2($a4)
.L0dad5910:
    b	.L0dad1490
    nop
.L0dad5918:
    # Line 881
    bltzl	$a1,.L0dad975c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a6,1
    andi	$a5,$a7,0x3
    beqz	$a5,.L0dad5960
    sll	$a3,$a2,0x2
.L0dad5938:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    lbu	$v1,0($t2)
    addi	$a5,$a5,-1
    addu	$t2,$t0,$t2
    sllv	$v1,$v1,$a1
    bnez	$a5,.L0dad5938
    sh	$v1,-2($a4)
.L0dad5960:
    sd	$a6,256($sp)
    move	$t9,$t2
    move	$t8,$a6
    sra	$t1,$a7,0x2
    beqz	$t1,.L0dad59f0
    move	$t8,$a4
    ld	$a4,256($sp)
    move	$a2,$t9
    move	$a5,$t8
.L0dad5984:
    addiu	$a5,$a5,8
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    lbu	$v0,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    sllv	$v0,$v0,$a1
    sh	$v0,-8($a5)
    addu	$t1,$t1,$a2
    lbu	$v0,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$v0,$v0,$a1
    sh	$v0,-6($a5)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,12($a2)
    sllv	$t1,$t1,$a1
    sh	$t1,-4($a5)
    addu	$a2,$a2,$t0
    lbu	$v0,0($a2)
    addiu	$a4,$a4,-4
    addu	$a2,$v1,$a2
    sllv	$v0,$v0,$a1
    bne	$a4,$a0,.L0dad5984
    sh	$v0,-2($a5)
.L0dad59f0:
    b	.L0dad1490
    nop
.L0dad59f8:
    # Line 885
    bltzl	$a1,.L0dad983c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a6,1
    andi	$a5,$a7,0x3
    beqz	$a5,.L0dad5a40
    sll	$a3,$a2,0x2
.L0dad5a18:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lbu	$t0,0($t9)
    addi	$a5,$a5,-1
    addu	$t9,$t1,$t9
    sllv	$t0,$t0,$a1
    bnez	$a5,.L0dad5a18
    sh	$t0,-2($a4)
.L0dad5a40:
    move	$t8,$a6
    move	$v1,$t9
    sd	$t9,264($sp)
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dad5ad0
    move	$t2,$a4
    move	$a5,$t8
    ld	$a2,264($sp)
    move	$a4,$t2
.L0dad5a64:
    addiu	$a4,$a4,8
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lbu	$v1,0($a2)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    sllv	$v1,$v1,$a1
    sh	$v1,-8($a4)
    addu	$v0,$v0,$a2
    lbu	$v1,0($v0)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$v1,$v1,$a1
    sh	$v1,-6($a4)
    addu	$t0,$t0,$v0
    lbu	$v0,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,28($a2)
    sllv	$v0,$v0,$a1
    sh	$v0,-4($a4)
    addu	$a2,$a2,$t0
    lbu	$t0,0($a2)
    addiu	$a5,$a5,-4
    addu	$a2,$t1,$a2
    sllv	$t0,$t0,$a1
    bne	$a5,$a0,.L0dad5a64
    sh	$t0,-2($a4)
.L0dad5ad0:
    b	.L0dad1490
    nop
.L0dad5ad8:
    # Line 889
    bltzl	$a1,.L0dad991c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$t2,$a6,1
    andi	$a7,$t2,0x3
    beqz	$a7,.L0dad5b20
    sll	$a3,$a2,0x2
.L0dad5af8:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    lbu	$v0,0($a5)
    addi	$a7,$a7,-1
    addu	$a5,$v1,$a5
    sllv	$v0,$v0,$a1
    bnez	$a7,.L0dad5af8
    sh	$v0,-2($a4)
.L0dad5b20:
    move	$t9,$a6
    move	$t8,$a5
    sra	$t0,$t2,0x2
    beqz	$t0,.L0dad5bac
    move	$a7,$a4
    move	$a2,$t9
    move	$a4,$t8
    move	$a5,$a7
.L0dad5b40:
    addiu	$a5,$a5,8
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    lbu	$v1,0($a4)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    sllv	$v1,$v1,$a1
    sh	$v1,-8($a5)
    addu	$t1,$t1,$a4
    lbu	$v1,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sllv	$v1,$v1,$a1
    sh	$v1,-6($a5)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,44($a4)
    sllv	$t1,$t1,$a1
    sh	$t1,-4($a5)
    addu	$a4,$a4,$t0
    lbu	$t1,0($a4)
    addiu	$a2,$a2,-4
    addu	$a4,$v0,$a4
    sllv	$t1,$t1,$a1
    bne	$a2,$a0,.L0dad5b40
    sh	$t1,-2($a5)
.L0dad5bac:
    b	.L0dad1490
    nop
.L0dad5bb4:
    # Line 893
    bltzl	$a1,.L0dad99fc
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$v1,$a6,1
    sd	$v1,272($sp)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dad5c10
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,4
    addu	$v0,$a3,$t3
    lbu	$v1,0($t8)
    lw	$v0,-4($v0)
    addu	$t1,$a3,$t3
    sllv	$v1,$v1,$a1
    sh	$v1,-4($a4)
    lw	$t1,44($t1)
    lbu	$t0,0($a5)
    addu	$t8,$v0,$t8
    addu	$a5,$t1,$a5
    sllv	$t0,$t0,$a1
    sh	$t0,-2($a4)
.L0dad5c10:
    move	$a7,$a6
    move	$t2,$a5
    ld	$v1,272($sp)
    move	$t9,$a4
    move	$t0,$t8
    sra	$v1,$v1,0x1
    beqz	$v1,.L0dad5cac
    sd	$t8,280($sp)
    move	$a2,$a7
    move	$a6,$t2
    move	$a5,$t9
    ld	$a4,280($sp)
.L0dad5c40:
    addiu	$a5,$a5,8
    addiu	$a2,$a2,-2
    addu	$t0,$a3,$t3
    lbu	$v1,0($a4)
    lw	$t0,-4($t0)
    addu	$v0,$a3,$t3
    sllv	$v1,$v1,$a1
    sh	$v1,-8($a5)
    lw	$v0,44($v0)
    lbu	$t1,0($a6)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    sllv	$t1,$t1,$a1
    sh	$t1,-6($a5)
    addu	$a4,$v1,$a4
    lbu	$v1,0($a4)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    sllv	$v1,$v1,$a1
    sh	$v1,-4($a5)
    addu	$a6,$t1,$a6
    lbu	$t1,0($a6)
    addu	$a4,$t0,$a4
    addu	$a6,$v0,$a6
    sllv	$t1,$t1,$a1
    bne	$a2,$a0,.L0dad5c40
    sh	$t1,-2($a5)
.L0dad5cac:
    b	.L0dad1490
    nop
.L0dad5cb4:
    # Line 898
    bltzl	$a1,.L0dad9b00
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad5cc8:
    addiu	$a4,$a4,6
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lbu	$t0,0($t8)
    addiu	$a6,$a6,-1
    addu	$t8,$t1,$t8
    sllv	$t0,$t0,$a1
    sh	$t0,-6($a4)
    addu	$v1,$a3,$t3
    lbu	$t0,0($t2)
    lw	$v1,12($v1)
    addu	$v0,$a3,$t3
    sllv	$t0,$t0,$a1
    sh	$t0,-4($a4)
    lw	$v0,28($v0)
    lbu	$t1,0($t9)
    addu	$t2,$v1,$t2
    addu	$t9,$v0,$t9
    sllv	$t1,$t1,$a1
    bne	$a6,$a0,.L0dad5cc8
    sh	$t1,-2($a4)
    b	.L0dad1490
    nop
.L0dad5d24:
    # Line 903
    bltzl	$a1,.L0dad9b70
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad5d38:
    addiu	$a4,$a4,8
    addiu	$a6,$a6,-1
    addu	$v1,$a3,$t3
    lbu	$t0,0($t8)
    lw	$v1,-4($v1)
    addu	$v0,$a3,$t3
    sllv	$t0,$t0,$a1
    sh	$t0,-8($a4)
    lw	$v0,12($v0)
    lbu	$t1,0($t2)
    addu	$t8,$v1,$t8
    addu	$t2,$v0,$t2
    sllv	$t1,$t1,$a1
    sh	$t1,-6($a4)
    addu	$t0,$a3,$t3
    lbu	$t1,0($t9)
    lw	$t0,28($t0)
    addu	$v1,$a3,$t3
    sllv	$t1,$t1,$a1
    sh	$t1,-4($a4)
    lw	$v1,44($v1)
    lbu	$v0,0($a5)
    addu	$t9,$t0,$t9
    addu	$a5,$v1,$a5
    sllv	$v0,$v0,$a1
    bne	$a6,$a0,.L0dad5d38
    sh	$v0,-2($a4)
    b	.L0dad1490
    nop
.L0dad5dac:
    # Line 1230
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
.L0dad5db4:
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addiu	$a4,$a4,2
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lhu	$a1,0($t2)
    addu	$t2,$v0,$t2
    addu	$t1,$t1,$t1
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    lhu	$v0,0($t8)
    addu	$t8,$t1,$t8
    addu	$t0,$t0,$t0
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lhu	$t1,0($t9)
    addu	$t9,$t0,$t9
    addu	$v1,$v1,$v1
    lhu	$t0,0($a2)
    addu	$a2,$v1,$a2
    andi	$a1,$a1,0xf000
    andi	$v0,$v0,0xf000
    sra	$v0,$v0,0x4
    or	$a1,$a1,$v0
    andi	$t0,$t0,0xf000
    sra	$t0,$t0,0xc
    andi	$t1,$t1,0xf000
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    or	$a1,$a1,$t0
    bne	$a6,$a0,.L0dad5db4
    sh	$a1,-2($a4)
    b	.L0dad1490
    nop
.L0dad5e44:
    # Line 841
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    addiu	$a7,$a6,1
    andi	$a4,$a7,0x3
    beqz	$a4,.L0dad5e90
    sd	$v1,680($sp)
.L0dad5e64:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    ld	$t1,680($sp)
    lbu	$t0,0($t9)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    addi	$a4,$a4,-1
    srlv	$t0,$t0,$t1
    addu	$t9,$v0,$t9
    bnez	$a4,.L0dad5e64
    sb	$t0,-1($a5)
.L0dad5e90:
    move	$t0,$a6
    sd	$a6,288($sp)
    move	$t8,$t9
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad5f24
    move	$t2,$a5
    ld	$a2,288($sp)
    move	$a4,$t8
    move	$a1,$t2
.L0dad5eb4:
    addiu	$a1,$a1,4
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    ld	$v0,680($sp)
    lbu	$t0,0($a4)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    srlv	$t0,$t0,$v0
    sb	$t0,-4($a1)
    addu	$t1,$t1,$a4
    lbu	$a4,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    srlv	$a4,$a4,$v0
    sb	$a4,-3($a1)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,28($a4)
    srlv	$t1,$t1,$v0
    sb	$t1,-2($a1)
    addu	$a4,$a4,$t0
    lbu	$t1,0($a4)
    addiu	$a2,$a2,-4
    addu	$a4,$v1,$a4
    srlv	$t1,$t1,$v0
    bne	$a2,$a0,.L0dad5eb4
    sb	$t1,-1($a1)
.L0dad5f24:
    b	.L0dad1490
    nop
.L0dad5f2c:
    # Line 877
    beq	$a6,$a0,.L0dad1490
    negu	$a5,$a1
    addiu	$a7,$a6,1
    andi	$a3,$a7,0x1
    beqz	$a3,.L0dad5f7c
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lbu	$t1,0($t8)
    addiu	$a4,$a4,2
    addu	$t8,$v0,$t8
    srlv	$t1,$t1,$a5
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-2($a4)
.L0dad5f7c:
    move	$t1,$a6
    sd	$a6,480($sp)
    move	$t9,$a4
    move	$t0,$t8
    sra	$v1,$a7,0x1
    beqz	$v1,.L0dad6038
    sd	$t8,472($sp)
    ld	$a2,480($sp)
    move	$a1,$t9
    ld	$a4,472($sp)
    li	$t2,0xffff
    li	$t0,0xff00
    li	$a7,255
    li	$a6,0xffff
    li	$v0,255
    li	$t8,0xffff
    and	$t8,$t8,$v0
    li	$v0,0xff00
    and	$a6,$a6,$a7
    li	$a7,0xffff
    and	$a7,$a7,$t0
    and	$t2,$t2,$v0
.L0dad5fd4:
    addiu	$a1,$a1,4
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lbu	$v1,0($a4)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    srlv	$v1,$v1,$a5
    and	$t1,$v1,$a6
    sll	$t1,$t1,0x8
    and	$v1,$v1,$a7
    sra	$v1,$v1,0x8
    or	$t1,$t1,$v1
    sh	$t1,-4($a1)
    addu	$a4,$t0,$a4
    lbu	$t1,0($a4)
    addiu	$a2,$a2,-2
    addu	$a4,$v0,$a4
    srlv	$t1,$t1,$a5
    and	$t0,$t1,$t8
    sll	$t0,$t0,0x8
    and	$t1,$t1,$t2
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a2,$a0,.L0dad5fd4
    sh	$t0,-2($a1)
.L0dad6038:
    b	.L0dad1490
    nop
.L0dad6040:
    # Line 881
    beq	$a6,$a0,.L0dad1490
    negu	$a5,$a1
    addiu	$a7,$a6,1
    andi	$v1,$a7,0x1
    beqz	$v1,.L0dad6090
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    lbu	$t1,0($t2)
    addiu	$a4,$a4,2
    addu	$t2,$v0,$t2
    srlv	$t1,$t1,$a5
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-2($a4)
.L0dad6090:
    move	$t8,$a6
    move	$t9,$a4
    move	$t0,$t2
    sra	$v1,$a7,0x1
    beqz	$v1,.L0dad6150
    sd	$t2,512($sp)
    move	$a1,$t8
    move	$a4,$t9
    ld	$a2,512($sp)
    li	$v0,0xff00
    li	$t2,0xffff
    and	$t2,$t2,$v0
    li	$a7,0xff00
    li	$a6,0xffff
    and	$a6,$a6,$a7
    li	$a7,0xffff
    li	$t1,255
    li	$t0,0xffff
    and	$t0,$t0,$t1
    sd	$t0,504($sp)
    li	$t0,255
    and	$a7,$a7,$t0
.L0dad60e8:
    addiu	$a4,$a4,4
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    addu	$t1,$a3,$t3
    lbu	$v1,0($a2)
    ld	$v0,504($sp)
    lw	$t1,12($t1)
    srlv	$v1,$v1,$a5
    and	$v0,$v1,$v0
    and	$v1,$v1,$a6
    sra	$v1,$v1,0x8
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    sh	$v0,-4($a4)
    addu	$a2,$t1,$a2
    lbu	$v1,0($a2)
    addiu	$a1,$a1,-2
    addu	$a2,$t0,$a2
    srlv	$v1,$v1,$a5
    and	$v0,$v1,$a7
    and	$v1,$v1,$t2
    sra	$v1,$v1,0x8
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    bne	$a1,$a0,.L0dad60e8
    sh	$v0,-2($a4)
.L0dad6150:
    b	.L0dad1490
    nop
.L0dad6158:
    # Line 885
    beq	$a6,$a0,.L0dad1490
    negu	$a5,$a1
    addiu	$a7,$a6,1
    andi	$t1,$a7,0x1
    beqz	$t1,.L0dad61a8
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    lbu	$v1,0($t9)
    addiu	$a4,$a4,2
    addu	$t9,$t0,$t9
    srlv	$v1,$v1,$a5
    andi	$v1,$v1,0xffff
    andi	$v0,$v1,0xff
    sll	$v0,$v0,0x8
    andi	$v1,$v1,0xff00
    sra	$v1,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,-2($a4)
.L0dad61a8:
    move	$t8,$a6
    move	$v1,$a4
    sd	$a4,496($sp)
    move	$v0,$t9
    sra	$t1,$a7,0x1
    beqz	$t1,.L0dad6264
    sd	$t9,488($sp)
    move	$a2,$t8
    ld	$a4,496($sp)
    ld	$a1,488($sp)
    li	$t2,0xffff
    li	$t0,0xff00
    li	$a7,255
    li	$a6,0xffff
    li	$v0,255
    li	$t9,0xffff
    and	$t9,$t9,$v0
    li	$v0,0xff00
    and	$a6,$a6,$a7
    li	$a7,0xffff
    and	$a7,$a7,$t0
    and	$t2,$t2,$v0
.L0dad6200:
    addiu	$a4,$a4,4
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    lbu	$v1,0($a1)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    srlv	$v1,$v1,$a5
    and	$t1,$v1,$a6
    sll	$t1,$t1,0x8
    and	$v1,$v1,$a7
    sra	$v1,$v1,0x8
    or	$t1,$t1,$v1
    sh	$t1,-4($a4)
    addu	$a1,$t0,$a1
    lbu	$t1,0($a1)
    addiu	$a2,$a2,-2
    addu	$a1,$v0,$a1
    srlv	$t1,$t1,$a5
    and	$t0,$t1,$t9
    sll	$t0,$t0,0x8
    and	$t1,$t1,$t2
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a2,$a0,.L0dad6200
    sh	$t0,-2($a4)
.L0dad6264:
    b	.L0dad1490
    nop
.L0dad626c:
    # Line 889
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$t2,$a6,1
    andi	$v1,$t2,0x1
    beqz	$v1,.L0dad62bc
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    lbu	$t1,0($a5)
    addiu	$a4,$a4,2
    addu	$a5,$v0,$a5
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-2($a4)
.L0dad62bc:
    move	$t8,$a6
    move	$t9,$a4
    move	$t0,$a5
    sra	$v1,$t2,0x1
    beqz	$v1,.L0dad637c
    sd	$a5,464($sp)
    move	$a4,$t8
    move	$a1,$t9
    ld	$a2,464($sp)
    li	$v0,0xff00
    li	$t0,255
    li	$a6,255
    li	$a5,0xffff
    li	$t2,0xff00
    li	$t1,0xffff
    and	$t1,$t1,$t2
    li	$t2,0xffff
    and	$a5,$a5,$a6
    li	$a6,0xffff
    sd	$t1,456($sp)
    and	$a6,$a6,$t0
    and	$t2,$t2,$v0
.L0dad6314:
    addiu	$a1,$a1,4
    lbu	$t0,0($a2)
    addu	$v0,$a3,$t3
    ld	$t1,456($sp)
    srlv	$t0,$t0,$a7
    and	$v1,$t0,$a5
    and	$t0,$t0,$t1
    sra	$t0,$t0,0x8
    sll	$v1,$v1,0x8
    or	$v1,$v1,$t0
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    lw	$v0,44($v0)
    sh	$v1,-4($a1)
    addu	$a2,$t0,$a2
    lbu	$t1,0($a2)
    addiu	$a4,$a4,-2
    addu	$a2,$v0,$a2
    srlv	$t1,$t1,$a7
    and	$t0,$t1,$a6
    and	$t1,$t1,$t2
    sra	$t1,$t1,0x8
    sll	$t0,$t0,0x8
    or	$t0,$t0,$t1
    bne	$a4,$a0,.L0dad6314
    sh	$t0,-2($a1)
.L0dad637c:
    b	.L0dad1490
    nop
.L0dad6384:
    # Line 893
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    sll	$a3,$a2,0x2
.L0dad6390:
    addiu	$a4,$a4,4
    addiu	$a6,$a6,-1
    addu	$t0,$a3,$t3
    lbu	$v0,0($t8)
    lw	$t0,-4($t0)
    addu	$v1,$a3,$t3
    srlv	$v0,$v0,$a7
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    sh	$t1,-4($a4)
    lw	$v1,44($v1)
    lbu	$v0,0($a5)
    addu	$t8,$t0,$t8
    addu	$a5,$v1,$a5
    srlv	$v0,$v0,$a7
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    bne	$a6,$a0,.L0dad6390
    sh	$t1,-2($a4)
    b	.L0dad1490
    nop
.L0dad6404:
    # Line 898
    beq	$a6,$a0,.L0dad1490
    negu	$a5,$a1
    sll	$a3,$a2,0x2
.L0dad6410:
    addiu	$a4,$a4,6
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$v0,0($t8)
    addiu	$a6,$a6,-1
    addu	$t8,$v1,$t8
    srlv	$v0,$v0,$a5
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    sh	$t1,-6($a4)
    addu	$t0,$a3,$t3
    lbu	$v0,0($t2)
    lw	$t0,12($t0)
    addu	$v1,$a3,$t3
    srlv	$v0,$v0,$a5
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    sh	$t1,-4($a4)
    lw	$v1,28($v1)
    lbu	$v0,0($t9)
    addu	$t2,$t0,$t2
    addu	$t9,$v1,$t9
    srlv	$v0,$v0,$a5
    andi	$v0,$v0,0xffff
    andi	$t1,$v0,0xff
    sll	$t1,$t1,0x8
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    or	$t1,$t1,$v0
    bne	$a6,$a0,.L0dad6410
    sh	$t1,-2($a4)
    b	.L0dad1490
    nop
.L0dad64b4:
    # Line 903
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    sll	$a3,$a2,0x2
.L0dad64c0:
    addiu	$a4,$a4,8
    addiu	$a6,$a6,-1
    addu	$v1,$a3,$t3
    lbu	$t1,0($t8)
    lw	$v1,-4($v1)
    addu	$v0,$a3,$t3
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-8($a4)
    lw	$v0,12($v0)
    lbu	$t1,0($t2)
    addu	$t8,$v1,$t8
    addu	$t2,$v0,$t2
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-6($a4)
    addu	$v1,$a3,$t3
    lbu	$t1,0($t9)
    lw	$v1,28($v1)
    addu	$v0,$a3,$t3
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    sh	$t0,-4($a4)
    lw	$v0,44($v0)
    lbu	$t1,0($a5)
    addu	$t9,$v1,$t9
    addu	$a5,$v0,$a5
    srlv	$t1,$t1,$a7
    andi	$t1,$t1,0xffff
    andi	$t0,$t1,0xff
    sll	$t0,$t0,0x8
    andi	$t1,$t1,0xff00
    sra	$t1,$t1,0x8
    or	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad64c0
    sh	$t0,-2($a4)
    b	.L0dad1490
    nop
.L0dad6594:
    # Line 1014
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad65a0:
    addiu	$a5,$a5,2
    addiu	$a6,$a6,-1
    addu	$a1,$a3,$t3
    lw	$a1,44($a1)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    lbu	$t1,0($t2)
    addu	$t2,$a1,$t2
    lbu	$t0,0($t9)
    addu	$t9,$v1,$t9
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$a1,0($a4)
    addu	$a4,$v0,$a4
    lbu	$v0,0($t8)
    addu	$t8,$v1,$t8
    andi	$a1,$a1,0xf8
    sll	$a1,$a1,0x2
    andi	$v0,$v0,0xf8
    sra	$v0,$v0,0x3
    or	$a1,$a1,$v0
    andi	$t0,$t0,0xf8
    sll	$t0,$t0,0x7
    andi	$t1,$t1,0x80
    sll	$t1,$t1,0x8
    or	$t0,$t0,$t1
    or	$a1,$a1,$t0
    bne	$a6,$a0,.L0dad65a0
    sh	$a1,-2($a5)
    b	.L0dad1490
    nop
.L0dad6624:
    # Line 1144
    beqzl	$a4,.L0dad9d9c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a4,$a6,1
    andi	$a7,$a4,0x1
    beqz	$a7,.L0dad6670
    addiu	$a7,$a1,-8
    lhu	$t1,0($a2)
    ld	$v0,696($sp)
    addiu	$a6,$a6,-1
    sllv	$t1,$t1,$a7
    addiu	$v0,$v0,4
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sd	$v0,696($sp)
    sw	$t1,-4($v0)
    addu	$t0,$t0,$t0
    addu	$a2,$t0,$a2
.L0dad6670:
    move	$t8,$a6
    move	$t2,$a2
    sra	$t1,$a4,0x1
    beqz	$t1,.L0dad66d4
    ld	$a5,696($sp)
    move	$a2,$t8
    move	$a4,$t2
    move	$a1,$a5
.L0dad6690:
    addiu	$a1,$a1,8
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$v0,0($a4)
    lw	$t1,-4($t1)
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sw	$v0,-8($a1)
    addu	$t0,$t0,$a4
    lhu	$v0,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    sllv	$v0,$v0,$a7
    bne	$a2,$a0,.L0dad6690
    sw	$v0,-4($a1)
.L0dad66d4:
    b	.L0dad1490
    nop
.L0dad66dc:
    # Line 1148
    beqzl	$a4,.L0dad9e4c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$t1,$a2,0x1
    beqz	$t1,.L0dad6728
    addiu	$a7,$a1,-8
    lhu	$v1,0($t9)
    ld	$t0,696($sp)
    addiu	$a6,$a6,-1
    sllv	$v1,$v1,$a7
    addiu	$t0,$t0,4
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    sd	$t0,696($sp)
    sw	$v1,-4($t0)
    addu	$v0,$v0,$v0
    addu	$t9,$v0,$t9
.L0dad6728:
    move	$t8,$a6
    move	$t2,$t9
    sra	$v1,$a2,0x1
    beqz	$v1,.L0dad678c
    ld	$a5,696($sp)
    move	$a2,$t8
    move	$a1,$t2
    move	$a4,$a5
.L0dad6748:
    addiu	$a4,$a4,8
    addiu	$a2,$a2,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    lhu	$v1,0($a1)
    lw	$v0,12($v0)
    addu	$t1,$t1,$t1
    sllv	$v1,$v1,$a7
    sw	$v1,-8($a4)
    addu	$t1,$t1,$a1
    lhu	$t0,0($t1)
    addu	$a1,$v0,$v0
    addu	$a1,$a1,$t1
    sllv	$t0,$t0,$a7
    bne	$a2,$a0,.L0dad6748
    sw	$t0,-4($a4)
.L0dad678c:
    b	.L0dad1490
    nop
.L0dad6794:
    # Line 1152
    beqzl	$a4,.L0dad9efc
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$v0,$a2,0x1
    beqz	$v0,.L0dad67e0
    addiu	$a7,$a1,-8
    lhu	$t0,0($t8)
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    sllv	$t0,$t0,$a7
    addiu	$t1,$t1,4
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    sd	$t1,696($sp)
    sw	$t0,-4($t1)
    addu	$v1,$v1,$v1
    addu	$t8,$v1,$t8
.L0dad67e0:
    move	$t9,$a6
    move	$t2,$t8
    sra	$t0,$a2,0x1
    beqz	$t0,.L0dad6844
    ld	$a5,696($sp)
    move	$a1,$t9
    move	$a2,$t2
    move	$a4,$a5
.L0dad6800:
    addiu	$a4,$a4,8
    addiu	$a1,$a1,-2
    addu	$v0,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    lhu	$t1,0($a2)
    lw	$v0,28($v0)
    addu	$t0,$t0,$t0
    sllv	$t1,$t1,$a7
    sw	$t1,-8($a4)
    addu	$t0,$t0,$a2
    lhu	$t1,0($t0)
    addu	$a2,$v0,$v0
    addu	$a2,$a2,$t0
    sllv	$t1,$t1,$a7
    bne	$a1,$a0,.L0dad6800
    sw	$t1,-4($a4)
.L0dad6844:
    b	.L0dad1490
    nop
.L0dad684c:
    # Line 1156
    beqzl	$a4,.L0dad9fac
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a2,$a6,1
    andi	$t1,$a2,0x1
    beqz	$t1,.L0dad6898
    addiu	$a7,$a1,-8
    lhu	$v1,0($t2)
    ld	$t0,696($sp)
    addiu	$a6,$a6,-1
    sllv	$v1,$v1,$a7
    addiu	$t0,$t0,4
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sd	$t0,696($sp)
    sw	$v1,-4($t0)
    addu	$v0,$v0,$v0
    addu	$t2,$v0,$t2
.L0dad6898:
    move	$t9,$a6
    move	$t8,$t2
    sra	$v1,$a2,0x1
    beqz	$v1,.L0dad68fc
    ld	$a5,696($sp)
    move	$a1,$t9
    move	$a4,$t8
    move	$a2,$a5
.L0dad68b8:
    addiu	$a2,$a2,8
    addiu	$a1,$a1,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    lhu	$v1,0($a4)
    lw	$v0,44($v0)
    addu	$t1,$t1,$t1
    sllv	$v1,$v1,$a7
    sw	$v1,-8($a2)
    addu	$t1,$t1,$a4
    lhu	$t0,0($t1)
    addu	$a4,$v0,$v0
    addu	$a4,$a4,$t1
    sllv	$t0,$t0,$a7
    bne	$a1,$a0,.L0dad68b8
    sw	$t0,-4($a2)
.L0dad68fc:
    b	.L0dad1490
    nop
.L0dad6904:
    # Line 1160
    beqzl	$a4,.L0dada05c
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad6918:
    ld	$v1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$v1,$v1,8
    sd	$v1,696($sp)
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    lhu	$v0,0($a2)
    lw	$t1,-4($t1)
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sw	$v0,-8($v1)
    addu	$t1,$t1,$t1
    lhu	$v0,0($t2)
    addu	$a2,$t1,$a2
    addu	$t2,$t0,$t2
    sllv	$v0,$v0,$a7
    bne	$a6,$a0,.L0dad6918
    sw	$v0,-4($v1)
    b	.L0dad1490
    nop
.L0dad696c:
    # Line 1164
    beqzl	$a4,.L0dada0bc
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad6980:
    ld	$v1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$v1,$v1,12
    sd	$v1,696($sp)
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$v0,0($a2)
    addu	$t1,$t1,$t1
    addu	$t0,$t0,$t0
    sllv	$v0,$v0,$a7
    sw	$v0,-12($v1)
    addu	$a2,$t0,$a2
    lhu	$v0,0($t9)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$v0,$v0,$a7
    sw	$v0,-8($v1)
    addu	$t9,$t1,$t9
    lhu	$v0,0($t8)
    addu	$t0,$t0,$t0
    addu	$t8,$t0,$t8
    sllv	$v0,$v0,$a7
    bne	$a6,$a0,.L0dad6980
    sw	$v0,-4($v1)
    b	.L0dad1490
    nop
.L0dad69f0:
    # Line 1169
    beqzl	$a4,.L0dada138
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a7,$a1,-8
.L0dad6a04:
    ld	$v0,696($sp)
    addiu	$a6,$a6,-1
    lhu	$t0,0($a2)
    addiu	$v0,$v0,16
    sd	$v0,696($sp)
    sllv	$t0,$t0,$a7
    sw	$t0,-16($v0)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    lhu	$t1,0($t9)
    addu	$t0,$t0,$t0
    addu	$v1,$v1,$v1
    sllv	$t1,$t1,$a7
    sw	$t1,-12($v0)
    addu	$t9,$v1,$t9
    lhu	$t1,0($t8)
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    sllv	$t1,$t1,$a7
    sw	$t1,-8($v0)
    addu	$v1,$v1,$v1
    lhu	$t1,0($t2)
    addu	$t8,$t0,$t8
    addu	$t2,$v1,$t2
    sllv	$t1,$t1,$a7
    bne	$a6,$a0,.L0dad6a04
    sw	$t1,-4($v0)
    b	.L0dad1490
    nop
.L0dad6a90:
    # Line 1084
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6aa0:
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$t1,0($a2)
    addu	$a2,$v0,$a2
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    srlv	$t1,$t1,$a7
    sb	$t1,-4($a5)
    addu	$t0,$t0,$t0
    lhu	$v1,0($t9)
    addu	$t9,$t0,$t9
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    srlv	$v1,$v1,$a7
    sb	$v1,-3($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    srlv	$v1,$v1,$a7
    sb	$v1,-2($a5)
    addu	$t8,$v0,$t8
    lhu	$t0,0($t2)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad6aa0
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad6b24:
    # Line 1088
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6b34:
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$t1,0($t2)
    addu	$t2,$v0,$t2
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    srlv	$t1,$t1,$a7
    sb	$t1,-4($a5)
    addu	$t0,$t0,$t0
    lhu	$v1,0($t8)
    addu	$t8,$t0,$t8
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    srlv	$v1,$v1,$a7
    sb	$v1,-3($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t9)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    srlv	$v1,$v1,$a7
    sb	$v1,-2($a5)
    addu	$t9,$v0,$t9
    lhu	$t0,0($a2)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad6b34
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad6bb8:
    # Line 1144
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6bcc:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($a2)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    srlv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$a2,$t0,$a2
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad6bcc
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad6c2c:
    # Line 1148
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6c40:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($t9)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    srlv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$t9,$t0,$t9
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad6c40
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad6ca0:
    # Line 1152
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6cb4:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($t8)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    srlv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$t8,$t0,$t8
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad6cb4
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad6d14:
    # Line 1156
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6d28:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,4
    sd	$t1,696($sp)
    lhu	$v1,0($t2)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    srlv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    addu	$t0,$t0,$t0
    addu	$t2,$t0,$t2
    andi	$t0,$v1,0xff00
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$t0,$t0,$v0
    bne	$a6,$a0,.L0dad6d28
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad6d88:
    # Line 1160
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6d9c:
    lhu	$t1,0($a2)
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    srlv	$t1,$t1,$a7
    and	$v0,$a5,$t1
    and	$t0,$a4,$t1
    andi	$a1,$t1,0xff00
    sll	$t1,$t1,0x18
    sll	$a1,$a1,0x8
    srl	$v0,$v0,0x8
    srl	$t0,$t0,0x18
    or	$t0,$t0,$v0
    or	$a1,$a1,$t1
    or	$a1,$a1,$t0
    ld	$t0,696($sp)
    addiu	$a6,$a6,-1
    addu	$v1,$v1,$v1
    addiu	$t0,$t0,8
    sd	$t0,696($sp)
    addu	$t1,$a3,$t3
    sw	$a1,-8($t0)
    lw	$t1,-4($t1)
    lhu	$v0,0($t2)
    addu	$t2,$v1,$t2
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    srlv	$v0,$v0,$a7
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad6d9c
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad6e40:
    # Line 1164
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6e54:
    lhu	$t1,0($a2)
    srlv	$t1,$t1,$a7
    sll	$t0,$t1,0x18
    andi	$a1,$t1,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t0
    and	$t0,$a4,$t1
    and	$t1,$a5,$t1
    srl	$t1,$t1,0x8
    srl	$t0,$t0,0x18
    or	$t0,$t0,$t1
    or	$a1,$a1,$t0
    ld	$t0,696($sp)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    addiu	$t0,$t0,12
    sw	$a1,-12($t0)
    lhu	$v0,0($t9)
    addu	$v1,$v1,$v1
    addu	$a2,$v1,$a2
    srlv	$v0,$v0,$a7
    and	$t1,$a4,$v0
    and	$v1,$a5,$v0
    srl	$v1,$v1,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v1
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    addiu	$a6,$a6,-1
    sd	$t0,696($sp)
    addu	$v1,$v1,$v1
    andi	$a1,$v0,0xff00
    sll	$v0,$v0,0x18
    sll	$a1,$a1,0x8
    or	$a1,$a1,$v0
    or	$a1,$a1,$t1
    addu	$t1,$a3,$t3
    sw	$a1,-8($t0)
    lw	$t1,12($t1)
    lhu	$v0,0($t8)
    addu	$t8,$v1,$t8
    addu	$t1,$t1,$t1
    addu	$t9,$t1,$t9
    srlv	$v0,$v0,$a7
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad6e54
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad6f3c:
    # Line 1169
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad6f50:
    lhu	$v0,0($a2)
    srlv	$v0,$v0,$a7
    and	$t1,$a4,$v0
    sll	$t0,$v0,0x18
    andi	$a1,$v0,0xff00
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t0
    ld	$t0,696($sp)
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    addiu	$t0,$t0,16
    sw	$a1,-16($t0)
    addiu	$a6,$a6,-1
    lhu	$v1,0($t9)
    sd	$t0,696($sp)
    addu	$a1,$a3,$t3
    srlv	$v1,$v1,$a7
    sll	$v0,$v1,0x18
    andi	$t1,$v1,0xff00
    sll	$t1,$t1,0x8
    or	$t1,$t1,$v0
    and	$v0,$a4,$v1
    and	$v1,$a5,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    or	$t1,$t1,$v0
    sw	$t1,-12($t0)
    lw	$a1,-4($a1)
    lhu	$v0,0($t8)
    addu	$v1,$v1,$v1
    addu	$t9,$v1,$t9
    srlv	$v0,$v0,$a7
    and	$t1,$a4,$v0
    and	$v1,$a5,$v0
    srl	$v1,$v1,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v1
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addu	$a1,$a1,$a1
    addu	$a2,$a1,$a2
    addu	$v1,$v1,$v1
    andi	$a1,$v0,0xff00
    sll	$v0,$v0,0x18
    sll	$a1,$a1,0x8
    or	$a1,$a1,$v0
    or	$a1,$a1,$t1
    addu	$t1,$a3,$t3
    sw	$a1,-8($t0)
    lw	$t1,28($t1)
    lhu	$v0,0($t2)
    addu	$t2,$v1,$t2
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
    srlv	$v0,$v0,$a7
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad6f50
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad707c:
    # Line 837
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    addiu	$a7,$a6,1
    andi	$a4,$a7,0x3
    beqz	$a4,.L0dad70c8
    sd	$v1,680($sp)
.L0dad709c:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    ld	$t1,680($sp)
    lbu	$t0,0($t2)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addi	$a4,$a4,-1
    srlv	$t0,$t0,$t1
    addu	$t2,$v0,$t2
    bnez	$a4,.L0dad709c
    sb	$t0,-1($a5)
.L0dad70c8:
    move	$t0,$a6
    sd	$a6,240($sp)
    move	$t9,$t2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad715c
    move	$t8,$a5
    ld	$a1,240($sp)
    move	$a2,$t9
    move	$a4,$t8
.L0dad70ec:
    addiu	$a4,$a4,4
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    ld	$v0,680($sp)
    lbu	$t0,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    srlv	$t0,$t0,$v0
    sb	$t0,-4($a4)
    addu	$t1,$t1,$a2
    lbu	$a2,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    srlv	$a2,$a2,$v0
    sb	$a2,-3($a4)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,12($a2)
    srlv	$t1,$t1,$v0
    sb	$t1,-2($a4)
    addu	$a2,$a2,$t0
    lbu	$t1,0($a2)
    addiu	$a1,$a1,-4
    addu	$a2,$v1,$a2
    srlv	$t1,$t1,$v0
    bne	$a1,$a0,.L0dad70ec
    sb	$t1,-1($a4)
.L0dad715c:
    b	.L0dad1490
    nop
.L0dad7164:
    # Line 833
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    negu	$a3,$a1
    sd	$a3,680($sp)
    addiu	$a7,$a6,1
    andi	$a4,$a7,0x3
    beqz	$a4,.L0dad71b0
    sll	$a3,$a2,0x2
.L0dad7184:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    ld	$t1,680($sp)
    lbu	$t0,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addi	$a4,$a4,-1
    srlv	$t0,$t0,$t1
    addu	$t8,$v0,$t8
    bnez	$a4,.L0dad7184
    sb	$t0,-1($a5)
.L0dad71b0:
    move	$t0,$a6
    sd	$a6,232($sp)
    move	$t9,$t8
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad7244
    move	$t2,$a5
    ld	$a4,232($sp)
    move	$a1,$t9
    move	$a2,$t2
.L0dad71d4:
    addiu	$a2,$a2,4
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    ld	$v0,680($sp)
    lbu	$t0,0($a1)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    srlv	$t0,$t0,$v0
    sb	$t0,-4($a2)
    addu	$t1,$t1,$a1
    lbu	$a1,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    srlv	$a1,$a1,$v0
    sb	$a1,-3($a2)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a1,$a3,$t3
    lw	$a1,-4($a1)
    srlv	$t1,$t1,$v0
    sb	$t1,-2($a2)
    addu	$a1,$a1,$t0
    lbu	$t1,0($a1)
    addiu	$a4,$a4,-4
    addu	$a1,$v1,$a1
    srlv	$t1,$t1,$v0
    bne	$a4,$a0,.L0dad71d4
    sb	$t1,-1($a2)
.L0dad7244:
    b	.L0dad1490
    nop
.L0dad724c:
    # Line 1005
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad7258:
    addiu	$a5,$a5,2
    addiu	$a6,$a6,-1
    addu	$a1,$a3,$t3
    lw	$a1,44($a1)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    lbu	$t1,0($t2)
    addu	$t2,$a1,$t2
    lbu	$t0,0($t9)
    addu	$t9,$v1,$t9
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$a1,0($a4)
    addu	$a4,$v0,$a4
    lbu	$v0,0($t8)
    addu	$t8,$v1,$t8
    andi	$a1,$a1,0xf0
    andi	$v0,$v0,0xf0
    sra	$v0,$v0,0x4
    or	$a1,$a1,$v0
    andi	$t0,$t0,0xf0
    sll	$t0,$t0,0x4
    andi	$t1,$t1,0xf0
    sll	$t1,$t1,0x8
    or	$t0,$t0,$t1
    or	$a1,$a1,$t0
    bne	$a6,$a0,.L0dad7258
    sh	$a1,-2($a5)
    b	.L0dad1490
    nop
.L0dad72d8:
    # Line 1184
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a1,$a6,1
    andi	$t0,$a1,0x1
    beqz	$t0,.L0dad7320
    lwc1	$f4,_lit_3b808081
    lhu	$v0,0($a2)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    swc1	$f0,-4($a5)
.L0dad7320:
    move	$t8,$a6
    move	$t2,$a2
    sra	$v1,$a1,0x1
    beqz	$v1,.L0dad739c
    move	$a7,$a5
    move	$a1,$t8
    move	$a4,$t2
    move	$a2,$a7
.L0dad7340:
    lhu	$t1,0($a4)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addu	$t0,$t0,$t0
    swc1	$f2,0($a2)
    addu	$t0,$t0,$a4
    lhu	$t1,0($t0)
    mtc1	$t1,$f1
    nop
    cvt.s.w	$f1,$f1
    addu	$a4,$a3,$t3
    mul.s	$f1,$f1,$f4
    lw	$a4,-4($a4)
    addiu	$a2,$a2,8
    addiu	$a1,$a1,-2
    addu	$a4,$a4,$a4
    addu	$a4,$a4,$t0
    bne	$a1,$a0,.L0dad7340
    swc1	$f1,-4($a2)
.L0dad739c:
    b	.L0dad1490
    nop
.L0dad73a4:
    # Line 1188
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad73ec
    lwc1	$f4,_lit_3b808081
    lhu	$t0,0($t9)
    mtc1	$t0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$v1,$v1,$v1
    addu	$t9,$v1,$t9
    swc1	$f3,-4($a5)
.L0dad73ec:
    move	$t2,$a6
    move	$a7,$t9
    sra	$t1,$a1,0x1
    beqz	$t1,.L0dad7468
    move	$t8,$a5
    move	$a4,$t2
    move	$a2,$a7
    move	$a1,$t8
.L0dad740c:
    lhu	$t1,0($a2)
    mtc1	$t1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    addu	$t0,$t0,$t0
    swc1	$f1,0($a1)
    addu	$t0,$t0,$a2
    lhu	$t1,0($t0)
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    addu	$a2,$a3,$t3
    mul.s	$f0,$f0,$f4
    lw	$a2,12($a2)
    addiu	$a1,$a1,8
    addiu	$a4,$a4,-2
    addu	$a2,$a2,$a2
    addu	$a2,$a2,$t0
    bne	$a4,$a0,.L0dad740c
    swc1	$f0,-4($a1)
.L0dad7468:
    b	.L0dad1490
    nop
.L0dad7470:
    # Line 1192
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad74b8
    lwc1	$f4,_lit_3b808081
    lhu	$t0,0($t8)
    mtc1	$t0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$v1,$v1,$v1
    addu	$t8,$v1,$t8
    swc1	$f2,-4($a5)
.L0dad74b8:
    move	$t9,$a6
    move	$t2,$t8
    sra	$t1,$a1,0x1
    beqz	$t1,.L0dad7534
    move	$a7,$a5
    move	$a4,$t9
    move	$a2,$t2
    move	$a1,$a7
.L0dad74d8:
    lhu	$t1,0($a2)
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    addu	$t0,$t0,$t0
    swc1	$f0,0($a1)
    addu	$t0,$t0,$a2
    lhu	$t1,0($t0)
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    addu	$a2,$a3,$t3
    mul.s	$f3,$f3,$f4
    lw	$a2,28($a2)
    addiu	$a1,$a1,8
    addiu	$a4,$a4,-2
    addu	$a2,$a2,$a2
    addu	$a2,$a2,$t0
    bne	$a4,$a0,.L0dad74d8
    swc1	$f3,-4($a1)
.L0dad7534:
    b	.L0dad1490
    nop
.L0dad753c:
    # Line 1196
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad7584
    lwc1	$f4,_lit_3b808081
    lhu	$t0,0($t2)
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$v1,$v1,$v1
    addu	$t2,$v1,$t2
    swc1	$f1,-4($a5)
.L0dad7584:
    move	$t8,$a6
    move	$a7,$t2
    sra	$t1,$a1,0x1
    beqz	$t1,.L0dad7600
    move	$t9,$a5
    move	$a4,$t8
    move	$a2,$a7
    move	$a1,$t9
.L0dad75a4:
    lhu	$t1,0($a2)
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addu	$t0,$t0,$t0
    swc1	$f3,0($a1)
    addu	$t0,$t0,$a2
    lhu	$t1,0($t0)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    addu	$a2,$a3,$t3
    mul.s	$f2,$f2,$f4
    lw	$a2,44($a2)
    addiu	$a1,$a1,8
    addiu	$a4,$a4,-2
    addu	$a2,$a2,$a2
    addu	$a2,$a2,$t0
    bne	$a4,$a0,.L0dad75a4
    swc1	$f2,-4($a1)
.L0dad7600:
    b	.L0dad1490
    nop
.L0dad7608:
    # Line 1200
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad7678
    lwc1	$f4,_lit_3b808081
    lhu	$v0,0($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a5)
    lhu	$t1,0($t2)
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,8
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    mul.s	$f0,$f0,$f4
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addu	$t0,$t0,$t0
    addu	$a2,$t0,$a2
    addu	$v1,$v1,$v1
    addu	$t2,$v1,$t2
    swc1	$f0,-4($a5)
.L0dad7678:
    sd	$a6,224($sp)
    move	$t9,$t2
    move	$t8,$a5
    move	$a7,$a6
    sra	$v1,$a1,0x1
    beqz	$v1,.L0dad7750
    move	$a7,$a2
    ld	$a2,224($sp)
    move	$a1,$t9
    move	$a5,$t8
    move	$a4,$a7
.L0dad76a4:
    lhu	$v1,0($a4)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a5)
    lhu	$v0,0($a1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    addu	$t1,$t1,$t1
    swc1	$f0,4($a5)
    addu	$t1,$t1,$a4
    lhu	$v0,0($t1)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addu	$t0,$t0,$t0
    swc1	$f3,8($a5)
    addu	$t0,$t0,$a1
    lhu	$v0,0($t0)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a5,$a5,16
    addiu	$a2,$a2,-2
    addu	$a4,$a3,$t3
    lw	$a4,-4($a4)
    addu	$a1,$a3,$t3
    mul.s	$f2,$f2,$f4
    lw	$a1,44($a1)
    addu	$a4,$a4,$a4
    addu	$a4,$a4,$t1
    addu	$a1,$a1,$a1
    addu	$a1,$a1,$t0
    bne	$a2,$a0,.L0dad76a4
    swc1	$f2,-4($a5)
.L0dad7750:
    b	.L0dad1490
    nop
.L0dad7758:
    # Line 1205
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a1,$a6,1
    andi	$t0,$a1,0x1
    beqz	$t0,.L0dad77ec
    lwc1	$f4,_lit_3b808081
    lhu	$v0,0($a2)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,0($a5)
    lhu	$t1,0($t9)
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a5)
    lhu	$t0,0($t8)
    addiu	$a6,$a6,-1
    mtc1	$t0,$f2
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    cvt.s.w	$f2,$f2
    addiu	$a5,$a5,12
    addu	$v1,$v1,$v1
    addu	$a2,$v1,$a2
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    mul.s	$f2,$f2,$f4
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    addu	$v0,$v0,$v0
    addu	$t9,$v0,$t9
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
    swc1	$f2,-4($a5)
.L0dad77ec:
    move	$a7,$a6
    move	$t2,$t8
    move	$v0,$t9
    sd	$t9,536($sp)
    move	$t1,$a5
    sd	$a5,528($sp)
    move	$t0,$a2
    sra	$v1,$a1,0x1
    beqz	$v1,.L0dad7920
    sd	$a2,520($sp)
    move	$a4,$a7
    move	$a5,$t2
    ld	$a1,536($sp)
    ld	$a2,528($sp)
    ld	$a6,520($sp)
.L0dad7828:
    lhu	$t1,0($a6)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    swc1	$f2,0($a2)
    lhu	$t0,0($a1)
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a2)
    lhu	$v1,0($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addu	$v0,$v0,$v0
    swc1	$f0,8($a2)
    addu	$v0,$v0,$a6
    lhu	$v1,0($v0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    addu	$t1,$t1,$t1
    swc1	$f3,12($a2)
    addu	$t1,$t1,$a1
    lhu	$v1,0($t1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    addu	$t0,$t0,$t0
    swc1	$f2,16($a2)
    addu	$t0,$t0,$a5
    lhu	$v1,0($t0)
    addiu	$a2,$a2,24
    addu	$a6,$a3,$t3
    mtc1	$v1,$f1
    lw	$a6,-4($a6)
    addiu	$a4,$a4,-2
    cvt.s.w	$f1,$f1
    addu	$a6,$a6,$a6
    addu	$a6,$a6,$v0
    addu	$a1,$a3,$t3
    lw	$a1,12($a1)
    addu	$a5,$a3,$t3
    mul.s	$f1,$f1,$f4
    lw	$a5,28($a5)
    addu	$a1,$a1,$a1
    addu	$a1,$a1,$t1
    addu	$a5,$a5,$a5
    addu	$a5,$a5,$t0
    bne	$a4,$a0,.L0dad7828
    swc1	$f1,-4($a2)
.L0dad7920:
    b	.L0dad1490
    nop
.L0dad7928:
    # Line 1210
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad79e4
    lwc1	$f4,_lit_3b808081
    lhu	$t1,0($a2)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    swc1	$f2,0($a5)
    lhu	$t0,0($t9)
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a5)
    lhu	$v1,0($t8)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    swc1	$f0,8($a5)
    lw	$v0,-4($v0)
    lhu	$v1,0($t2)
    addiu	$a5,$a5,16
    addu	$v0,$v0,$v0
    mtc1	$v1,$f3
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    cvt.s.w	$f3,$f3
    addu	$a2,$v0,$a2
    addu	$t1,$t1,$t1
    addu	$t9,$t1,$t9
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    mul.s	$f3,$f3,$f4
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addu	$t0,$t0,$t0
    addu	$t8,$t0,$t8
    addu	$v1,$v1,$v1
    addu	$t2,$v1,$t2
    swc1	$f3,-4($a5)
.L0dad79e4:
    move	$a4,$a6
    move	$a7,$t2
    sd	$t8,568($sp)
    move	$t1,$t9
    sd	$t9,560($sp)
    move	$t0,$a5
    sd	$a5,552($sp)
    move	$v1,$a2
    move	$v0,$t8
    sra	$v0,$a1,0x1
    beqz	$v0,.L0dad7b74
    sd	$a2,544($sp)
    move	$a2,$a4
    move	$a6,$a7
    ld	$t2,568($sp)
    ld	$t8,560($sp)
    ld	$a5,552($sp)
    ld	$a1,544($sp)
.L0dad7a2c:
    lhu	$t1,0($a1)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    swc1	$f2,0($a5)
    lhu	$t0,0($t8)
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a5)
    lhu	$v1,0($t2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,8($a5)
    lhu	$v0,0($a6)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    addu	$t1,$t1,$t1
    swc1	$f3,12($a5)
    addu	$t1,$t1,$a1
    lhu	$a1,0($t1)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    addu	$v1,$v1,$v1
    swc1	$f2,16($a5)
    addu	$v1,$v1,$t8
    lhu	$a1,0($v1)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    addu	$v0,$v0,$v0
    swc1	$f1,20($a5)
    addu	$v0,$v0,$t2
    lhu	$t2,0($v0)
    mtc1	$t2,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a5,$a5,32
    mul.s	$f0,$f0,$f4
    addiu	$a2,$a2,-2
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    addu	$a1,$a3,$t3
    lw	$a1,-4($a1)
    addu	$t0,$t0,$t0
    swc1	$f0,-8($a5)
    addu	$t0,$t0,$a6
    lhu	$a6,0($t0)
    addu	$a1,$a1,$a1
    addu	$t8,$a3,$t3
    mtc1	$a6,$f3
    lw	$t8,12($t8)
    addu	$a1,$a1,$t1
    cvt.s.w	$f3,$f3
    addu	$t8,$t8,$t8
    addu	$t8,$t8,$v1
    addu	$t2,$a3,$t3
    lw	$t2,28($t2)
    addu	$a6,$a3,$t3
    mul.s	$f3,$f3,$f4
    lw	$a6,44($a6)
    addu	$t2,$t2,$t2
    addu	$t2,$t2,$v0
    addu	$a6,$a6,$a6
    addu	$a6,$a6,$t0
    bne	$a2,$a0,.L0dad7a2c
    swc1	$f3,-4($a5)
.L0dad7b74:
    b	.L0dad1490
    nop
.L0dad7b7c:
    # Line 1257
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
.L0dad7b84:
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    addiu	$a4,$a4,4
    addiu	$a6,$a6,-1
    addu	$t1,$t1,$t1
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    lhu	$a1,0($t2)
    addu	$t2,$t1,$t2
    addu	$t0,$t0,$t0
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    lhu	$v1,0($t8)
    addu	$t8,$t0,$t8
    addu	$v0,$v0,$v0
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lhu	$t0,0($t9)
    addu	$t9,$v0,$t9
    lhu	$v0,0($a2)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
    andi	$v0,$v0,0xffc0
    sll	$v0,$v0,0x10
    andi	$t0,$t0,0xffc0
    sll	$t0,$t0,0x6
    or	$v0,$v0,$t0
    andi	$v1,$v1,0xffc0
    srl	$v1,$v1,0x4
    andi	$a1,$a1,0xc000
    srl	$a1,$a1,0xe
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
    bne	$a6,$a0,.L0dad7b84
    sw	$v0,-4($a4)
    b	.L0dad1490
    nop
.L0dad7c18:
    # Line 918
    bltzl	$a1,.L0dada1d0
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dad7c68
    sll	$a3,$a2,0x2
.L0dad7c38:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$v1,688($sp)
    lbu	$v0,0($t8)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$v0,$v0,$a1
    addiu	$v1,$v1,4
    sd	$v1,688($sp)
    addu	$t8,$t0,$t8
    bnez	$a4,.L0dad7c38
    sw	$v0,-4($v1)
.L0dad7c68:
    move	$t9,$a6
    move	$t2,$t8
    sra	$t1,$a5,0x2
    beqz	$t1,.L0dad7cf4
    ld	$a7,688($sp)
    move	$a2,$t9
    move	$a5,$t2
    move	$a4,$a7
.L0dad7c88:
    addiu	$a4,$a4,16
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$v0,0($a5)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    sllv	$v0,$v0,$a1
    sw	$v0,-16($a4)
    addu	$t1,$t1,$a5
    lbu	$v0,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    sllv	$v0,$v0,$a1
    sw	$v0,-12($a4)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a5,$a3,$t3
    lw	$a5,-4($a5)
    sllv	$t1,$t1,$a1
    sw	$t1,-8($a4)
    addu	$a5,$a5,$t0
    lbu	$v0,0($a5)
    addiu	$a2,$a2,-4
    addu	$a5,$v1,$a5
    sllv	$v0,$v0,$a1
    bne	$a2,$a0,.L0dad7c88
    sw	$v0,-4($a4)
.L0dad7cf4:
    b	.L0dad1490
    nop
.L0dad7cfc:
    # Line 922
    bltzl	$a1,.L0dada2b8
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dad7d4c
    sll	$a3,$a2,0x2
.L0dad7d1c:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$t1,688($sp)
    lbu	$t0,0($t2)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    sllv	$t0,$t0,$a1
    addiu	$t1,$t1,4
    sd	$t1,688($sp)
    addu	$t2,$v0,$t2
    bnez	$a4,.L0dad7d1c
    sw	$t0,-4($t1)
.L0dad7d4c:
    move	$t9,$a6
    move	$t8,$t2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0dad7dd8
    ld	$a7,688($sp)
    move	$a2,$t9
    move	$a4,$t8
    move	$a5,$a7
.L0dad7d6c:
    addiu	$a5,$a5,16
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    lbu	$v1,0($a4)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    sllv	$v1,$v1,$a1
    sw	$v1,-16($a5)
    addu	$v0,$v0,$a4
    lbu	$v1,0($v0)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    sllv	$v1,$v1,$a1
    sw	$v1,-12($a5)
    addu	$t0,$t0,$v0
    lbu	$v0,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,12($a4)
    sllv	$v0,$v0,$a1
    sw	$v0,-8($a5)
    addu	$a4,$a4,$t0
    lbu	$t0,0($a4)
    addiu	$a2,$a2,-4
    addu	$a4,$t1,$a4
    sllv	$t0,$t0,$a1
    bne	$a2,$a0,.L0dad7d6c
    sw	$t0,-4($a5)
.L0dad7dd8:
    b	.L0dad1490
    nop
.L0dad7de0:
    # Line 926
    bltzl	$a1,.L0dada3a0
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dad7e30
    sll	$a3,$a2,0x2
.L0dad7e00:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$v1,688($sp)
    lbu	$v0,0($t9)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$v0,$v0,$a1
    addiu	$v1,$v1,4
    sd	$v1,688($sp)
    addu	$t9,$t0,$t9
    bnez	$a4,.L0dad7e00
    sw	$v0,-4($v1)
.L0dad7e30:
    move	$t8,$a6
    move	$t2,$t9
    sra	$t1,$a5,0x2
    beqz	$t1,.L0dad7ebc
    ld	$a7,688($sp)
    move	$a2,$t8
    move	$a4,$t2
    move	$a5,$a7
.L0dad7e50:
    addiu	$a5,$a5,16
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    lbu	$v0,0($a4)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    sllv	$v0,$v0,$a1
    sw	$v0,-16($a5)
    addu	$t1,$t1,$a4
    lbu	$v0,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sllv	$v0,$v0,$a1
    sw	$v0,-12($a5)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,28($a4)
    sllv	$t1,$t1,$a1
    sw	$t1,-8($a5)
    addu	$a4,$a4,$t0
    lbu	$v0,0($a4)
    addiu	$a2,$a2,-4
    addu	$a4,$v1,$a4
    sllv	$v0,$v0,$a1
    bne	$a2,$a0,.L0dad7e50
    sw	$v0,-4($a5)
.L0dad7ebc:
    b	.L0dad1490
    nop
.L0dad7ec4:
    # Line 930
    bltzl	$a1,.L0dada488
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dad7f14
    sll	$a3,$a2,0x2
.L0dad7ee4:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$t1,688($sp)
    lbu	$t0,0($t2)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$t0,$t0,$a1
    addiu	$t1,$t1,4
    sd	$t1,688($sp)
    addu	$t2,$v0,$t2
    bnez	$a4,.L0dad7ee4
    sw	$t0,-4($t1)
.L0dad7f14:
    move	$a7,$a6
    move	$t9,$t2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0dad7fa0
    ld	$t8,688($sp)
    move	$a2,$a7
    move	$a5,$t9
    move	$a4,$t8
.L0dad7f34:
    addiu	$a4,$a4,16
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    lbu	$v1,0($a5)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    sllv	$v1,$v1,$a1
    sw	$v1,-16($a4)
    addu	$v0,$v0,$a5
    lbu	$v1,0($v0)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    sllv	$v1,$v1,$a1
    sw	$v1,-12($a4)
    addu	$t0,$t0,$v0
    lbu	$v0,0($t0)
    addu	$a5,$a3,$t3
    lw	$a5,44($a5)
    sllv	$v0,$v0,$a1
    sw	$v0,-8($a4)
    addu	$a5,$a5,$t0
    lbu	$t0,0($a5)
    addiu	$a2,$a2,-4
    addu	$a5,$t1,$a5
    sllv	$t0,$t0,$a1
    bne	$a2,$a0,.L0dad7f34
    sw	$t0,-4($a4)
.L0dad7fa0:
    b	.L0dad1490
    nop
.L0dad7fa8:
    # Line 934
    bltzl	$a1,.L0dada570
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    addiu	$a4,$a6,1
    andi	$v0,$a4,0x1
    beqz	$v0,.L0dad8008
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    ld	$t0,688($sp)
    lbu	$v1,0($t8)
    lw	$v0,-4($v0)
    addiu	$t0,$t0,8
    sllv	$v1,$v1,$a1
    sw	$v1,-8($t0)
    sd	$t0,688($sp)
    lbu	$v1,0($t2)
    addu	$t8,$v0,$t8
    addu	$t2,$t1,$t2
    sllv	$v1,$v1,$a1
    sw	$v1,-4($t0)
.L0dad8008:
    move	$a7,$a6
    move	$t9,$t2
    move	$t0,$t8
    sd	$t8,192($sp)
    ld	$t1,688($sp)
    sra	$v1,$a4,0x1
    beqz	$v1,.L0dad80a4
    sd	$t1,200($sp)
    move	$a4,$a7
    move	$a5,$t9
    ld	$a2,200($sp)
    ld	$a6,192($sp)
.L0dad8038:
    addiu	$a2,$a2,16
    addiu	$a4,$a4,-2
    addu	$t0,$a3,$t3
    lbu	$t1,0($a6)
    lw	$t0,-4($t0)
    addu	$v1,$a3,$t3
    sllv	$t1,$t1,$a1
    sw	$t1,-16($a2)
    lw	$v1,44($v1)
    lbu	$t1,0($a5)
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    sllv	$t1,$t1,$a1
    sw	$t1,-12($a2)
    addu	$a6,$v0,$a6
    lbu	$v0,0($a6)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    sllv	$v0,$v0,$a1
    sw	$v0,-8($a2)
    addu	$a5,$t1,$a5
    lbu	$v0,0($a5)
    addu	$a6,$t0,$a6
    addu	$a5,$v1,$a5
    sllv	$v0,$v0,$a1
    bne	$a4,$a0,.L0dad8038
    sw	$v0,-4($a2)
.L0dad80a4:
    b	.L0dad1490
    nop
.L0dad80ac:
    # Line 939
    bltzl	$a1,.L0dada678
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad80c0:
    addiu	$a6,$a6,-1
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    addu	$v1,$a3,$t3
    ld	$v0,688($sp)
    lbu	$t1,0($t8)
    lw	$v1,-4($v1)
    addiu	$v0,$v0,12
    sllv	$t1,$t1,$a1
    sw	$t1,-12($v0)
    sd	$v0,688($sp)
    lbu	$t1,0($t2)
    addu	$t8,$v1,$t8
    addu	$v1,$a3,$t3
    sllv	$t1,$t1,$a1
    sw	$t1,-8($v0)
    lw	$v1,28($v1)
    lbu	$t1,0($t9)
    addu	$t2,$t0,$t2
    addu	$t9,$v1,$t9
    sllv	$t1,$t1,$a1
    bne	$a6,$a0,.L0dad80c0
    sw	$t1,-4($v0)
    b	.L0dad1490
    nop
.L0dad8124:
    # Line 944
    bltzl	$a1,.L0dada6f0
    addiu	$a6,$a6,-1
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    ld	$a4,760($sp)
.L0dad8140:
    ld	$t1,688($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,16
    sd	$t1,688($sp)
    addu	$v0,$a3,$t3
    lbu	$t0,0($t8)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    sllv	$t0,$t0,$a1
    sw	$t0,-16($t1)
    lw	$v0,12($v0)
    lbu	$t0,0($t2)
    addu	$t8,$v1,$t8
    addu	$v1,$a3,$t3
    sllv	$t0,$t0,$a1
    sw	$t0,-12($t1)
    lw	$v1,28($v1)
    lbu	$t0,0($t9)
    addu	$t2,$v0,$t2
    addu	$v0,$a3,$t3
    sllv	$t0,$t0,$a1
    sw	$t0,-8($t1)
    lw	$v0,44($v0)
    lbu	$t0,0($a4)
    addu	$t9,$v1,$t9
    addu	$a4,$v0,$a4
    sllv	$t0,$t0,$a1
    bne	$a6,$a0,.L0dad8140
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dad81bc:
    # Line 849
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    ld	$a4,760($sp)
    negu	$t1,$a1
    addiu	$t0,$a6,1
    sd	$t0,208($sp)
    andi	$t0,$t0,0x1
    beqz	$t0,.L0dad8224
    sd	$t1,680($sp)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    addu	$t0,$a3,$t3
    ld	$v1,680($sp)
    lbu	$v0,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    srlv	$v0,$v0,$v1
    sb	$v0,-2($a5)
    lw	$t0,44($t0)
    lbu	$v0,0($a4)
    addu	$t8,$t1,$t8
    addu	$a4,$t0,$a4
    srlv	$v0,$v0,$v1
    sb	$v0,-1($a5)
.L0dad8224:
    move	$a7,$a6
    move	$t2,$a4
    ld	$v0,208($sp)
    move	$t9,$a5
    move	$v1,$t8
    sra	$v0,$v0,0x1
    beqz	$v0,.L0dad82c4
    sd	$t8,216($sp)
    move	$a4,$a7
    move	$a5,$t2
    move	$a2,$t9
    ld	$a1,216($sp)
.L0dad8254:
    addiu	$a2,$a2,4
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    ld	$v0,680($sp)
    lbu	$t1,0($a1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    srlv	$t1,$t1,$v0
    sb	$t1,-4($a2)
    addu	$t0,$t0,$a1
    lbu	$t1,0($a5)
    addu	$a1,$a3,$t3
    lw	$a1,-4($a1)
    srlv	$t1,$t1,$v0
    sb	$t1,-3($a2)
    addu	$a1,$a1,$t0
    lbu	$t1,0($t0)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    srlv	$t1,$t1,$v0
    sb	$t1,-2($a2)
    addu	$a5,$t0,$a5
    lbu	$t1,0($a5)
    addiu	$a4,$a4,-2
    addu	$a5,$v1,$a5
    srlv	$t1,$t1,$v0
    bne	$a4,$a0,.L0dad8254
    sb	$t1,-1($a2)
.L0dad82c4:
    b	.L0dad1490
    nop
.L0dad82cc:
    # Line 918
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
    negu	$v0,$a1
    sd	$v0,680($sp)
.L0dad82e4:
    ld	$t0,688($sp)
    addiu	$a6,$a6,-1
    addiu	$t0,$t0,4
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    ld	$v1,680($sp)
    lbu	$v0,0($t8)
    sd	$t0,688($sp)
    addu	$t8,$t1,$t8
    srlv	$v0,$v0,$v1
    sll	$t1,$v0,0x18
    andi	$v1,$v0,0xff00
    sll	$v1,$v1,0x8
    or	$v1,$v1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$v1,$v1,$t1
    bne	$a6,$a0,.L0dad82e4
    sw	$v1,-4($t0)
    b	.L0dad1490
    nop
.L0dad8344:
    # Line 922
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
    negu	$v0,$a1
    sd	$v0,680($sp)
.L0dad835c:
    ld	$t0,688($sp)
    addiu	$a6,$a6,-1
    addiu	$t0,$t0,4
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    ld	$v1,680($sp)
    lbu	$v0,0($t2)
    sd	$t0,688($sp)
    addu	$t2,$t1,$t2
    srlv	$v0,$v0,$v1
    sll	$t1,$v0,0x18
    andi	$v1,$v0,0xff00
    sll	$v1,$v1,0x8
    or	$v1,$v1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$v1,$v1,$t1
    bne	$a6,$a0,.L0dad835c
    sw	$v1,-4($t0)
    b	.L0dad1490
    nop
.L0dad83bc:
    # Line 926
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
    negu	$v0,$a1
    sd	$v0,680($sp)
.L0dad83d4:
    ld	$t0,688($sp)
    addiu	$a6,$a6,-1
    addiu	$t0,$t0,4
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    ld	$v1,680($sp)
    lbu	$v0,0($t9)
    sd	$t0,688($sp)
    addu	$t9,$t1,$t9
    srlv	$v0,$v0,$v1
    sll	$t1,$v0,0x18
    andi	$v1,$v0,0xff00
    sll	$v1,$v1,0x8
    or	$v1,$v1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$v1,$v1,$t1
    bne	$a6,$a0,.L0dad83d4
    sw	$v1,-4($t0)
    b	.L0dad1490
    nop
.L0dad8434:
    # Line 930
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
    negu	$v0,$a1
    sd	$v0,680($sp)
.L0dad844c:
    ld	$t0,688($sp)
    addiu	$a6,$a6,-1
    addiu	$t0,$t0,4
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    ld	$v1,680($sp)
    lbu	$v0,0($t2)
    sd	$t0,688($sp)
    addu	$t2,$t1,$t2
    srlv	$v0,$v0,$v1
    sll	$t1,$v0,0x18
    andi	$v1,$v0,0xff00
    sll	$v1,$v1,0x8
    or	$v1,$v1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$v1,$v1,$t1
    bne	$a6,$a0,.L0dad844c
    sw	$v1,-4($t0)
    b	.L0dad1490
    nop
.L0dad84ac:
    # Line 934
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    sll	$a3,$a2,0x2
    negu	$v0,$a1
    sd	$v0,680($sp)
.L0dad84c4:
    addu	$a1,$a3,$t3
    lw	$a1,-4($a1)
    ld	$t1,680($sp)
    lbu	$v1,0($t8)
    addiu	$a6,$a6,-1
    addu	$t8,$a1,$t8
    srlv	$v1,$v1,$t1
    and	$a1,$a5,$v1
    srl	$a1,$a1,0x8
    and	$v0,$a4,$v1
    srl	$v0,$v0,0x18
    or	$v0,$v0,$a1
    andi	$t0,$v1,0xff00
    sll	$v1,$v1,0x18
    sll	$t0,$t0,0x8
    or	$t0,$t0,$v1
    ld	$v1,688($sp)
    addu	$a1,$a3,$t3
    or	$t0,$t0,$v0
    addiu	$v1,$v1,8
    sw	$t0,-8($v1)
    lw	$a1,44($a1)
    lbu	$t0,0($t2)
    sd	$v1,688($sp)
    addu	$t2,$a1,$t2
    srlv	$t0,$t0,$t1
    sll	$a1,$t0,0x18
    andi	$v0,$t0,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$a1
    and	$a1,$a4,$t0
    and	$t0,$a5,$t0
    srl	$t0,$t0,0x8
    srl	$a1,$a1,0x18
    or	$a1,$a1,$t0
    or	$v0,$v0,$a1
    bne	$a6,$a0,.L0dad84c4
    sw	$v0,-4($v1)
    b	.L0dad1490
    nop
.L0dad8564:
    # Line 939
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a3,$a1
    sd	$a3,680($sp)
    sll	$a3,$a2,0x2
.L0dad857c:
    ld	$v1,680($sp)
    lbu	$v0,0($t8)
    addu	$a1,$a3,$t3
    lw	$a1,-4($a1)
    srlv	$v0,$v0,$v1
    and	$t1,$a4,$v0
    sll	$t0,$v0,0x18
    addu	$t8,$a1,$t8
    andi	$a1,$v0,0xff00
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t0
    ld	$t0,688($sp)
    addu	$v0,$a3,$t3
    or	$a1,$a1,$t1
    addiu	$t0,$t0,12
    sw	$a1,-12($t0)
    lw	$v0,12($v0)
    lbu	$t1,0($t2)
    addiu	$a6,$a6,-1
    addu	$t2,$v0,$t2
    srlv	$t1,$t1,$v1
    and	$a1,$a4,$t1
    and	$v0,$a5,$t1
    srl	$v0,$v0,0x8
    srl	$a1,$a1,0x18
    or	$a1,$a1,$v0
    andi	$v0,$t1,0xff00
    sll	$t1,$t1,0x18
    sll	$v0,$v0,0x8
    or	$v0,$v0,$t1
    addu	$t1,$a3,$t3
    or	$v0,$v0,$a1
    sw	$v0,-8($t0)
    lw	$t1,28($t1)
    lbu	$v0,0($t9)
    sd	$t0,688($sp)
    addu	$t9,$t1,$t9
    srlv	$v0,$v0,$v1
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad857c
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad865c:
    # Line 944
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lui	$a5,0xff
    lui	$a4,0xff00
    negu	$a3,$a1
    sd	$a3,680($sp)
    sll	$a3,$a2,0x2
.L0dad8678:
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    ld	$v1,680($sp)
    lbu	$a1,0($t8)
    addu	$t8,$t0,$t8
    ld	$t0,688($sp)
    srlv	$a1,$a1,$v1
    sll	$v0,$a1,0x18
    andi	$t1,$a1,0xff00
    sll	$t1,$t1,0x8
    or	$t1,$t1,$v0
    and	$v0,$a4,$a1
    and	$a1,$a5,$a1
    srl	$a1,$a1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$a1
    addu	$a1,$a3,$t3
    addiu	$t0,$t0,16
    or	$t1,$t1,$v0
    sw	$t1,-16($t0)
    lw	$a1,12($a1)
    lbu	$v0,0($t2)
    addu	$t2,$a1,$t2
    srlv	$v0,$v0,$v1
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    addu	$v0,$a3,$t3
    or	$a1,$a1,$t1
    sw	$a1,-12($t0)
    lw	$v0,28($v0)
    lbu	$t1,0($t9)
    addiu	$a6,$a6,-1
    addu	$t9,$v0,$t9
    srlv	$t1,$t1,$v1
    and	$a1,$a4,$t1
    and	$v0,$a5,$t1
    srl	$v0,$v0,0x8
    srl	$a1,$a1,0x18
    or	$a1,$a1,$v0
    andi	$v0,$t1,0xff00
    sll	$t1,$t1,0x18
    sll	$v0,$v0,0x8
    or	$v0,$v0,$t1
    addu	$t1,$a3,$t3
    or	$v0,$v0,$a1
    sw	$v0,-8($t0)
    lw	$t1,44($t1)
    lbu	$v0,0($a7)
    sd	$t0,688($sp)
    addu	$a7,$t1,$a7
    srlv	$v0,$v0,$v1
    sll	$t1,$v0,0x18
    andi	$a1,$v0,0xff00
    sll	$a1,$a1,0x8
    or	$a1,$a1,$t1
    and	$t1,$a4,$v0
    and	$v0,$a5,$v0
    srl	$v0,$v0,0x8
    srl	$t1,$t1,0x18
    or	$t1,$t1,$v0
    or	$a1,$a1,$t1
    bne	$a6,$a0,.L0dad8678
    sw	$a1,-4($t0)
    b	.L0dad1490
    nop
.L0dad8798:
    # Line 959
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a6,1
    andi	$t1,$a1,0x1
    beqz	$t1,.L0dad87e0
    sll	$a3,$a2,0x2
    lbu	$v1,0($t8)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$t8,$v0,$t8
    swc1	$f3,-4($a5)
.L0dad87e0:
    move	$t9,$a6
    move	$t2,$t8
    sra	$t0,$a1,0x1
    beqz	$t0,.L0dad8854
    move	$a7,$a5
    move	$a1,$t9
    move	$a4,$t2
    move	$a2,$a7
.L0dad8800:
    lbu	$t1,0($a4)
    mtc1	$t1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    swc1	$f1,0($a2)
    addu	$t0,$t0,$a4
    lbu	$t1,0($t0)
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$a4,$a3,$t3
    lw	$a4,-4($a4)
    addiu	$a2,$a2,8
    addiu	$a1,$a1,-2
    addu	$a4,$a4,$t0
    bne	$a1,$a0,.L0dad8800
    swc1	$f0,-4($a2)
.L0dad8854:
    b	.L0dad1490
    nop
.L0dad885c:
    # Line 963
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad88ac
    sll	$a3,$a2,0x2
    ld	$v1,704($sp)
    lbu	$t1,0($v1)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$v1,$t0,$v1
    sd	$v1,704($sp)
    swc1	$f2,-4($a5)
.L0dad88ac:
    move	$t8,$a6
    ld	$t2,704($sp)
    sra	$v0,$a1,0x1
    beqz	$v0,.L0dad8920
    move	$a7,$a5
    move	$a1,$t8
    move	$a2,$t2
    move	$a4,$a7
.L0dad88cc:
    lbu	$t1,0($a2)
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    swc1	$f0,0($a4)
    addu	$t0,$t0,$a2
    lbu	$t1,0($t0)
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$a2,$a3,$t3
    lw	$a2,12($a2)
    addiu	$a4,$a4,8
    addiu	$a1,$a1,-2
    addu	$a2,$a2,$t0
    bne	$a1,$a0,.L0dad88cc
    swc1	$f3,-4($a4)
.L0dad8920:
    b	.L0dad1490
    nop
.L0dad8928:
    # Line 967
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad8970
    sll	$a3,$a2,0x2
    lbu	$t0,0($t9)
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$t9,$v1,$t9
    swc1	$f1,-4($a5)
.L0dad8970:
    move	$t8,$a6
    move	$t2,$t9
    sra	$t1,$a1,0x1
    beqz	$t1,.L0dad89e4
    move	$a7,$a5
    move	$a4,$t8
    move	$a1,$t2
    move	$a2,$a7
.L0dad8990:
    lbu	$t1,0($a1)
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    swc1	$f3,0($a2)
    addu	$t0,$t0,$a1
    lbu	$t1,0($t0)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$a1,$a3,$t3
    lw	$a1,28($a1)
    addiu	$a2,$a2,8
    addiu	$a4,$a4,-2
    addu	$a1,$a1,$t0
    bne	$a4,$a0,.L0dad8990
    swc1	$f2,-4($a2)
.L0dad89e4:
    b	.L0dad1490
    nop
.L0dad89ec:
    # Line 971
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad8a34
    sll	$a3,$a2,0x2
    lbu	$t0,0($t2)
    mtc1	$t0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addu	$t2,$v1,$t2
    swc1	$f0,-4($a5)
.L0dad8a34:
    move	$t9,$a6
    move	$t8,$t2
    sra	$t1,$a1,0x1
    beqz	$t1,.L0dad8aa8
    move	$a7,$a5
    move	$a1,$t9
    move	$a2,$t8
    move	$a4,$a7
.L0dad8a54:
    lbu	$t1,0($a2)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    swc1	$f2,0($a4)
    addu	$t0,$t0,$a2
    lbu	$t1,0($t0)
    mtc1	$t1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$a2,$a3,$t3
    lw	$a2,44($a2)
    addiu	$a4,$a4,8
    addiu	$a1,$a1,-2
    addu	$a2,$a2,$t0
    bne	$a1,$a0,.L0dad8a54
    swc1	$f1,-4($a4)
.L0dad8aa8:
    b	.L0dad1490
    nop
.L0dad8ab0:
    # Line 975
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lwc1	$f4,_lit_3b808081
    addiu	$a4,$a6,1
    andi	$a1,$a4,0x3
    beqz	$a1,.L0dad8b24
    sll	$a3,$a2,0x2
.L0dad8acc:
    lbu	$t1,0($t8)
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,0($a5)
    lbu	$t0,0($t2)
    mtc1	$t0,$f3
    nop
    cvt.s.w	$f3,$f3
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,8
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    mul.s	$f3,$f3,$f4
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addi	$a1,$a1,-1
    addu	$t8,$v1,$t8
    addu	$t2,$v0,$t2
    bnez	$a1,.L0dad8acc
    swc1	$f3,-4($a5)
.L0dad8b24:
    sd	$a6,176($sp)
    move	$v1,$t2
    sd	$t2,184($sp)
    move	$t9,$a5
    move	$a7,$a6
    sra	$v0,$a4,0x2
    beqz	$v0,.L0dad8c80
    move	$a7,$t8
    ld	$a5,176($sp)
    ld	$a2,184($sp)
    move	$a4,$t9
    move	$a1,$a7
.L0dad8b54:
    lbu	$v0,0($a1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,0($a4)
    lbu	$t1,0($a2)
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    swc1	$f3,4($a4)
    addu	$t0,$t0,$a1
    lbu	$t1,0($t0)
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$a1,$a3,$t3
    lw	$a1,44($a1)
    swc1	$f2,8($a4)
    addu	$a1,$a1,$a2
    lbu	$a2,0($a1)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    swc1	$f1,12($a4)
    addu	$v1,$v1,$t0
    lbu	$a2,0($v1)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    swc1	$f0,16($a4)
    addu	$v0,$v0,$a1
    lbu	$a1,0($v0)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    swc1	$f3,20($a4)
    addu	$t1,$t1,$v1
    lbu	$v1,0($t1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    swc1	$f2,24($a4)
    addu	$t0,$t0,$v0
    lbu	$a2,0($t0)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a4,$a4,32
    addu	$a1,$a3,$t3
    lw	$a1,-4($a1)
    mul.s	$f1,$f1,$f4
    addu	$a2,$a3,$t3
    lw	$a2,44($a2)
    addiu	$a5,$a5,-4
    addu	$a1,$a1,$t1
    addu	$a2,$a2,$t0
    bne	$a5,$a0,.L0dad8b54
    swc1	$f1,-4($a4)
.L0dad8c80:
    b	.L0dad1490
    nop
.L0dad8c88:
    # Line 980
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a6,1
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dad8d1c
    sll	$a3,$a2,0x2
    lbu	$v1,0($t8)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    ld	$t1,704($sp)
    swc1	$f3,0($a5)
    lbu	$v0,0($t1)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    swc1	$f2,4($a5)
    lbu	$t0,0($t9)
    mtc1	$t0,$f1
    addu	$v1,$a3,$t3
    cvt.s.w	$f1,$f1
    lw	$v1,-4($v1)
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,12
    addu	$t8,$v1,$t8
    addu	$v0,$a3,$t3
    mul.s	$f1,$f1,$f4
    lw	$v0,12($v0)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    addu	$t1,$v0,$t1
    sd	$t1,704($sp)
    addu	$t9,$t0,$t9
    swc1	$f1,-4($a5)
.L0dad8d1c:
    move	$a7,$a6
    move	$t2,$t9
    move	$v0,$a5
    sd	$a5,416($sp)
    move	$t1,$t8
    sd	$t8,408($sp)
    ld	$v1,704($sp)
    sra	$t0,$a1,0x1
    beqz	$t0,.L0dad8e38
    sd	$v1,424($sp)
    move	$a6,$a7
    move	$a1,$t2
    ld	$a5,424($sp)
    ld	$a4,416($sp)
    ld	$a2,408($sp)
.L0dad8d58:
    lbu	$t1,0($a2)
    mtc1	$t1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a4)
    lbu	$t0,0($a5)
    mtc1	$t0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,4($a4)
    lbu	$v1,0($a1)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    swc1	$f3,8($a4)
    addu	$v0,$v0,$a2
    lbu	$v1,0($v0)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    swc1	$f2,12($a4)
    addu	$t1,$t1,$a5
    lbu	$v1,0($t1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    swc1	$f1,16($a4)
    addu	$t0,$t0,$a1
    lbu	$a5,0($t0)
    mtc1	$a5,$f0
    addiu	$a4,$a4,24
    cvt.s.w	$f0,$f0
    addiu	$a6,$a6,-2
    addu	$a2,$a3,$t3
    lw	$a2,-4($a2)
    addu	$a5,$a3,$t3
    lw	$a5,12($a5)
    mul.s	$f0,$f0,$f4
    addu	$a1,$a3,$t3
    lw	$a1,28($a1)
    addu	$a2,$a2,$v0
    addu	$a5,$a5,$t1
    addu	$a1,$a1,$t0
    bne	$a6,$a0,.L0dad8d58
    swc1	$f0,-4($a4)
.L0dad8e38:
    b	.L0dad1490
    nop
.L0dad8e40:
    # Line 985
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    lwc1	$f4,_lit_3b808081
    addiu	$a1,$a6,1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dad8ef8
    sll	$a3,$a2,0x2
    lbu	$t0,0($t8)
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    ld	$t1,704($sp)
    swc1	$f1,0($a5)
    lbu	$v1,0($t1)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,4($a5)
    lbu	$v0,0($t9)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    swc1	$f3,8($a5)
    lbu	$t0,0($t2)
    addiu	$a6,$a6,-1
    addu	$v1,$a3,$t3
    mtc1	$t0,$f2
    lw	$v1,-4($v1)
    addiu	$a5,$a5,16
    cvt.s.w	$f2,$f2
    addu	$t8,$v1,$t8
    addu	$v1,$a3,$t3
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    lw	$v1,44($v1)
    mul.s	$f2,$f2,$f4
    addu	$t1,$v0,$t1
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    sd	$t1,704($sp)
    addu	$t2,$v1,$t2
    addu	$t9,$t0,$t9
    swc1	$f2,-4($a5)
.L0dad8ef8:
    move	$a2,$a6
    move	$a4,$t2
    move	$a7,$t9
    move	$v1,$a5
    sd	$a5,440($sp)
    move	$v0,$t8
    sd	$t8,432($sp)
    ld	$t0,704($sp)
    sra	$t1,$a1,0x1
    beqz	$t1,.L0dad9064
    sd	$t0,448($sp)
    move	$a1,$a2
    move	$a5,$a4
    move	$a6,$a7
    ld	$t2,448($sp)
    ld	$t9,440($sp)
    ld	$t8,432($sp)
.L0dad8f3c:
    lbu	$v1,0($t8)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($t9)
    lbu	$v0,0($t2)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,4($t9)
    lbu	$t1,0($a6)
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    swc1	$f3,8($t9)
    lbu	$t0,0($a5)
    mtc1	$t0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    swc1	$f2,12($t9)
    addu	$v1,$v1,$t8
    lbu	$t0,0($v1)
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    swc1	$f1,16($t9)
    addu	$v0,$v0,$t2
    lbu	$t2,0($v0)
    mtc1	$t2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    swc1	$f0,20($t9)
    addu	$t1,$t1,$a6
    lbu	$t2,0($t1)
    mtc1	$t2,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    swc1	$f3,24($t9)
    addu	$t0,$t0,$a5
    lbu	$a5,0($t0)
    addiu	$t9,$t9,32
    addu	$t8,$a3,$t3
    mtc1	$a5,$f2
    lw	$t8,-4($t8)
    addiu	$a1,$a1,-2
    cvt.s.w	$f2,$f2
    addu	$t8,$t8,$v1
    addu	$t2,$a3,$t3
    lw	$t2,12($t2)
    addu	$a6,$a3,$t3
    lw	$a6,28($a6)
    mul.s	$f2,$f2,$f4
    addu	$a5,$a3,$t3
    lw	$a5,44($a5)
    addu	$t2,$t2,$v0
    addu	$a6,$a6,$t1
    addu	$a5,$a5,$t0
    bne	$a1,$a0,.L0dad8f3c
    swc1	$f2,-4($t9)
.L0dad9064:
    b	.L0dad1490
    nop
.L0dad906c:
    # Line 1032
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad9078:
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$a2,$a3,$t3
    lw	$a2,44($a2)
    addu	$a1,$a3,$t3
    lw	$a1,28($a1)
    lbu	$t0,0($t2)
    addu	$t2,$a2,$t2
    lbu	$a2,0($t9)
    addu	$t9,$a1,$t9
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lbu	$a1,0($t8)
    lbu	$t1,0($a4)
    addu	$a4,$v1,$a4
    addu	$t8,$v0,$t8
    sll	$a1,$a1,0x18
    sll	$t1,$t1,0xe
    or	$a1,$a1,$t1
    sll	$a2,$a2,0x4
    andi	$t0,$t0,0xc0
    srl	$t0,$t0,0x6
    or	$a2,$a2,$t0
    or	$a1,$a1,$a2
    bne	$a6,$a0,.L0dad9078
    sw	$a1,-4($a5)
    b	.L0dad1490
    nop
.L0dad90f0:
    # Line 845
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    ld	$a4,760($sp)
    negu	$a3,$a1
    sd	$a3,680($sp)
    addiu	$t2,$a6,1
    andi	$a7,$t2,0x3
    beqz	$a7,.L0dad9144
    sll	$a3,$a2,0x2
.L0dad9118:
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,1
    ld	$t1,680($sp)
    lbu	$t0,0($a4)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addi	$a7,$a7,-1
    srlv	$t0,$t0,$t1
    addu	$a4,$v0,$a4
    bnez	$a7,.L0dad9118
    sb	$t0,-1($a5)
.L0dad9144:
    move	$t9,$a6
    move	$t8,$a4
    sra	$v1,$t2,0x2
    beqz	$v1,.L0dad91d4
    move	$a7,$a5
    move	$a2,$t9
    move	$a4,$t8
    move	$a1,$a7
.L0dad9164:
    addiu	$a1,$a1,4
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    ld	$t1,680($sp)
    lbu	$t0,0($a4)
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    srlv	$t0,$t0,$t1
    sb	$t0,-4($a1)
    addu	$v1,$v1,$a4
    lbu	$a4,0($v1)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    srlv	$a4,$a4,$t1
    sb	$a4,-3($a1)
    addu	$t0,$t0,$v1
    lbu	$v1,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,44($a4)
    srlv	$v1,$v1,$t1
    sb	$v1,-2($a1)
    addu	$a4,$a4,$t0
    lbu	$t0,0($a4)
    addiu	$a2,$a2,-4
    addu	$a4,$v0,$a4
    srlv	$t0,$t0,$t1
    bne	$a2,$a0,.L0dad9164
    sb	$t0,-1($a1)
.L0dad91d4:
    b	.L0dad1490
    nop
.L0dad91dc:
    # Line 1103
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a4,$a6,1
    andi	$t0,$a4,0x1
    beqz	$t0,.L0dad9218
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$v0,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    srlv	$v0,$v0,$a7
    sh	$v0,-2($a5)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
.L0dad9218:
    move	$t9,$a6
    move	$t8,$a2
    sra	$v0,$a4,0x1
    beqz	$v0,.L0dad927c
    move	$t2,$a5
    move	$a1,$t9
    move	$a2,$t8
    move	$a4,$t2
.L0dad9238:
    addiu	$a4,$a4,4
    addiu	$a1,$a1,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$v0,0($a2)
    lw	$t1,-4($t1)
    addu	$t0,$t0,$t0
    srlv	$v0,$v0,$a7
    sh	$v0,-4($a4)
    addu	$t0,$t0,$a2
    lhu	$v1,0($t0)
    addu	$a2,$t1,$t1
    addu	$a2,$a2,$t0
    srlv	$v1,$v1,$a7
    bne	$a1,$a0,.L0dad9238
    sh	$v1,-2($a4)
.L0dad927c:
    b	.L0dad1490
    nop
.L0dad9284:
    # Line 1107
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad92c0
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$v0,0($t9)
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    srlv	$v0,$v0,$a7
    sh	$v0,-2($a5)
    addu	$t1,$t1,$t1
    addu	$t9,$t1,$t9
.L0dad92c0:
    move	$t8,$a6
    move	$t2,$t9
    move	$v1,$a5
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad9328
    sd	$a5,152($sp)
    move	$a1,$t8
    move	$a2,$t2
    ld	$a4,152($sp)
.L0dad92e4:
    addiu	$a4,$a4,4
    addiu	$a1,$a1,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    lhu	$v1,0($a2)
    lw	$v0,12($v0)
    addu	$t1,$t1,$t1
    srlv	$v1,$v1,$a7
    sh	$v1,-4($a4)
    addu	$t1,$t1,$a2
    lhu	$t0,0($t1)
    addu	$a2,$v0,$v0
    addu	$a2,$a2,$t1
    srlv	$t0,$t0,$a7
    bne	$a1,$a0,.L0dad92e4
    sh	$t0,-2($a4)
.L0dad9328:
    b	.L0dad1490
    nop
.L0dad9330:
    # Line 1111
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad936c
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$v0,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    srlv	$v0,$v0,$a7
    sh	$v0,-2($a5)
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
.L0dad936c:
    move	$v1,$a6
    sd	$a6,160($sp)
    move	$t9,$t8
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad93d4
    move	$t2,$a5
    ld	$a1,160($sp)
    move	$a2,$t9
    move	$a4,$t2
.L0dad9390:
    addiu	$a4,$a4,4
    addiu	$a1,$a1,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    lhu	$v1,0($a2)
    lw	$v0,28($v0)
    addu	$t1,$t1,$t1
    srlv	$v1,$v1,$a7
    sh	$v1,-4($a4)
    addu	$t1,$t1,$a2
    lhu	$t0,0($t1)
    addu	$a2,$v0,$v0
    addu	$a2,$a2,$t1
    srlv	$t0,$t0,$a7
    bne	$a1,$a0,.L0dad9390
    sh	$t0,-2($a4)
.L0dad93d4:
    b	.L0dad1490
    nop
.L0dad93dc:
    # Line 1115
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad9418
    addiu	$a7,$a7,8
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,2
    lhu	$v0,0($t2)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    srlv	$v0,$v0,$a7
    sh	$v0,-2($a5)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
.L0dad9418:
    move	$v1,$a6
    sd	$a6,168($sp)
    move	$t9,$t2
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad9480
    move	$t8,$a5
    ld	$a4,168($sp)
    move	$a1,$t9
    move	$a2,$t8
.L0dad943c:
    addiu	$a2,$a2,4
    addiu	$a4,$a4,-2
    addu	$v0,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    lhu	$v1,0($a1)
    lw	$v0,44($v0)
    addu	$t1,$t1,$t1
    srlv	$v1,$v1,$a7
    sh	$v1,-4($a2)
    addu	$t1,$t1,$a1
    lhu	$t0,0($t1)
    addu	$a1,$v0,$v0
    addu	$a1,$a1,$t1
    srlv	$t0,$t0,$a7
    bne	$a4,$a0,.L0dad943c
    sh	$t0,-2($a2)
.L0dad9480:
    b	.L0dad1490
    nop
.L0dad9488:
    # Line 1119
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad9494:
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$v1,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    srlv	$v1,$v1,$a7
    sh	$v1,-4($a5)
    addu	$a2,$v0,$a2
    lhu	$t0,0($t2)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad9494
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad94e0:
    # Line 1124
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad94ec:
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addiu	$a5,$a5,6
    addiu	$a6,$a6,-1
    addu	$t0,$t0,$t0
    lhu	$v1,0($a2)
    addu	$a2,$t0,$a2
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    srlv	$v1,$v1,$a7
    sh	$v1,-6($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t9)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    srlv	$v1,$v1,$a7
    sh	$v1,-4($a5)
    addu	$t9,$v0,$t9
    lhu	$t0,0($t8)
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad94ec
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad9554:
    # Line 1129
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dad9560:
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addiu	$a5,$a5,8
    addiu	$a6,$a6,-1
    addu	$v0,$v0,$v0
    lhu	$t1,0($a2)
    addu	$a2,$v0,$a2
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    srlv	$t1,$t1,$a7
    sh	$t1,-8($a5)
    addu	$t0,$t0,$t0
    lhu	$v1,0($t9)
    addu	$t9,$t0,$t9
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    srlv	$v1,$v1,$a7
    sh	$v1,-6($a5)
    addu	$v0,$v0,$v0
    lhu	$v1,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    srlv	$v1,$v1,$a7
    sh	$v1,-4($a5)
    addu	$t8,$v0,$t8
    lhu	$t0,0($t2)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dad9560
    sh	$t0,-2($a5)
    b	.L0dad1490
    nop
.L0dad95e4:
    # Line 1248
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
.L0dad95ec:
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addiu	$a4,$a4,4
    addiu	$a6,$a6,-1
    addu	$v1,$v1,$v1
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    lhu	$t0,0($t2)
    addu	$t2,$v1,$t2
    addu	$v0,$v0,$v0
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    lhu	$a1,0($t8)
    addu	$t8,$v0,$t8
    addu	$t1,$t1,$t1
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lhu	$v1,0($t9)
    addu	$t9,$t1,$t9
    addu	$v0,$v0,$v0
    lhu	$t1,0($a2)
    addu	$a2,$v0,$a2
    andi	$v1,$v1,0xff00
    andi	$t1,$t1,0xff00
    srl	$t1,$t1,0x8
    or	$v1,$v1,$t1
    andi	$a1,$a1,0xff00
    sll	$a1,$a1,0x8
    andi	$t0,$t0,0xff00
    sll	$t0,$t0,0x18
    or	$a1,$a1,$t0
    or	$v1,$v1,$a1
    bne	$a6,$a0,.L0dad95ec
    sw	$v1,-4($a4)
    b	.L0dad1490
    nop
.L0dad967c:
    # Line 877
    beq	$a6,$a0,.L0dad1490
    negu	$a3,$a1
    sd	$a3,680($sp)
    addiu	$a7,$a6,1
    andi	$a5,$a7,0x3
    beqz	$a5,.L0dad96c4
    sll	$a3,$a2,0x2
.L0dad9698:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    ld	$t1,680($sp)
    lbu	$t0,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    addi	$a5,$a5,-1
    srlv	$t0,$t0,$t1
    addu	$t8,$v0,$t8
    bnez	$a5,.L0dad9698
    sh	$t0,-2($a4)
.L0dad96c4:
    move	$t9,$a6
    move	$t2,$t8
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad9754
    move	$a5,$a4
    move	$a1,$t9
    move	$a2,$t2
    move	$a4,$a5
.L0dad96e4:
    addiu	$a4,$a4,8
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    ld	$t1,680($sp)
    lbu	$t0,0($a2)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    srlv	$t0,$t0,$t1
    sh	$t0,-8($a4)
    addu	$v1,$v1,$a2
    lbu	$a2,0($v1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    srlv	$a2,$a2,$t1
    sh	$a2,-6($a4)
    addu	$t0,$t0,$v1
    lbu	$v1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,-4($a2)
    srlv	$v1,$v1,$t1
    sh	$v1,-4($a4)
    addu	$a2,$a2,$t0
    lbu	$t0,0($a2)
    addiu	$a1,$a1,-4
    addu	$a2,$v0,$a2
    srlv	$t0,$t0,$t1
    bne	$a1,$a0,.L0dad96e4
    sh	$t0,-2($a4)
.L0dad9754:
    b	.L0dad1490
    nop
.L0dad975c:
    # Line 881
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    addiu	$a7,$a6,1
    andi	$a5,$a7,0x3
    beqz	$a5,.L0dad97a4
    sd	$v1,680($sp)
.L0dad9778:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    ld	$t1,680($sp)
    lbu	$t0,0($t2)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addi	$a5,$a5,-1
    srlv	$t0,$t0,$t1
    addu	$t2,$v0,$t2
    bnez	$a5,.L0dad9778
    sh	$t0,-2($a4)
.L0dad97a4:
    move	$t9,$a6
    move	$t8,$t2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad9834
    move	$a5,$a4
    move	$a4,$t9
    move	$a2,$t8
    move	$a1,$a5
.L0dad97c4:
    addiu	$a1,$a1,8
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    ld	$t1,680($sp)
    lbu	$t0,0($a2)
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    srlv	$t0,$t0,$t1
    sh	$t0,-8($a1)
    addu	$v1,$v1,$a2
    lbu	$a2,0($v1)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    srlv	$a2,$a2,$t1
    sh	$a2,-6($a1)
    addu	$t0,$t0,$v1
    lbu	$v1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,12($a2)
    srlv	$v1,$v1,$t1
    sh	$v1,-4($a1)
    addu	$a2,$a2,$t0
    lbu	$t0,0($a2)
    addiu	$a4,$a4,-4
    addu	$a2,$v0,$a2
    srlv	$t0,$t0,$t1
    bne	$a4,$a0,.L0dad97c4
    sh	$t0,-2($a1)
.L0dad9834:
    b	.L0dad1490
    nop
.L0dad983c:
    # Line 885
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    addiu	$a7,$a6,1
    andi	$a5,$a7,0x3
    beqz	$a5,.L0dad9884
    sd	$v1,680($sp)
.L0dad9858:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    ld	$t1,680($sp)
    lbu	$t0,0($t9)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    addi	$a5,$a5,-1
    srlv	$t0,$t0,$t1
    addu	$t9,$v0,$t9
    bnez	$a5,.L0dad9858
    sh	$t0,-2($a4)
.L0dad9884:
    move	$t8,$a6
    move	$t2,$t9
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dad9914
    move	$a5,$a4
    move	$a1,$t8
    move	$a4,$t2
    move	$a2,$a5
.L0dad98a4:
    addiu	$a2,$a2,8
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    ld	$t1,680($sp)
    lbu	$t0,0($a4)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    srlv	$t0,$t0,$t1
    sh	$t0,-8($a2)
    addu	$v1,$v1,$a4
    lbu	$a4,0($v1)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    srlv	$a4,$a4,$t1
    sh	$a4,-6($a2)
    addu	$t0,$t0,$v1
    lbu	$v1,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,28($a4)
    srlv	$v1,$v1,$t1
    sh	$v1,-4($a2)
    addu	$a4,$a4,$t0
    lbu	$t0,0($a4)
    addiu	$a1,$a1,-4
    addu	$a4,$v0,$a4
    srlv	$t0,$t0,$t1
    bne	$a1,$a0,.L0dad98a4
    sh	$t0,-2($a2)
.L0dad9914:
    b	.L0dad1490
    nop
.L0dad991c:
    # Line 889
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    addiu	$t2,$a6,1
    andi	$a7,$t2,0x3
    beqz	$a7,.L0dad9964
    sd	$v1,680($sp)
.L0dad9938:
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,2
    ld	$t1,680($sp)
    lbu	$t0,0($a5)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addi	$a7,$a7,-1
    srlv	$t0,$t0,$t1
    addu	$a5,$v0,$a5
    bnez	$a7,.L0dad9938
    sh	$t0,-2($a4)
.L0dad9964:
    move	$t9,$a6
    move	$t8,$a5
    sra	$v1,$t2,0x2
    beqz	$v1,.L0dad99f4
    move	$a7,$a4
    move	$a1,$t9
    move	$a4,$t8
    move	$a2,$a7
.L0dad9984:
    addiu	$a2,$a2,8
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    ld	$t1,680($sp)
    lbu	$t0,0($a4)
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    srlv	$t0,$t0,$t1
    sh	$t0,-8($a2)
    addu	$v1,$v1,$a4
    lbu	$a4,0($v1)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    srlv	$a4,$a4,$t1
    sh	$a4,-6($a2)
    addu	$t0,$t0,$v1
    lbu	$v1,0($t0)
    addu	$a4,$a3,$t3
    lw	$a4,44($a4)
    srlv	$v1,$v1,$t1
    sh	$v1,-4($a2)
    addu	$a4,$a4,$t0
    lbu	$t0,0($a4)
    addiu	$a1,$a1,-4
    addu	$a4,$v0,$a4
    srlv	$t0,$t0,$t1
    bne	$a1,$a0,.L0dad9984
    sh	$t0,-2($a2)
.L0dad99f4:
    b	.L0dad1490
    nop
.L0dad99fc:
    # Line 893
    beq	$a6,$a0,.L0dad1490
    negu	$a3,$a1
    sd	$a3,680($sp)
    addiu	$v1,$a6,1
    sd	$v1,136($sp)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dad9a58
    sll	$a3,$a2,0x2
    addiu	$a6,$a6,-1
    addiu	$a4,$a4,4
    addu	$v0,$a3,$t3
    ld	$t1,680($sp)
    lbu	$t0,0($t8)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    srlv	$t0,$t0,$t1
    sh	$t0,-4($a4)
    lw	$v0,44($v0)
    lbu	$t0,0($a5)
    addu	$t8,$v1,$t8
    addu	$a5,$v0,$a5
    srlv	$t0,$t0,$t1
    sh	$t0,-2($a4)
.L0dad9a58:
    move	$a7,$a6
    move	$t2,$a5
    ld	$t0,136($sp)
    move	$t9,$a4
    move	$t1,$t8
    sra	$t0,$t0,0x1
    beqz	$t0,.L0dad9af8
    sd	$t8,144($sp)
    move	$a1,$a7
    move	$a5,$t2
    move	$a4,$t9
    ld	$a2,144($sp)
.L0dad9a88:
    addiu	$a4,$a4,8
    ld	$t0,680($sp)
    lbu	$v0,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    srlv	$v0,$v0,$t0
    sh	$v0,-8($a4)
    addu	$t1,$t1,$a2
    lbu	$v0,0($a5)
    addu	$a2,$a3,$t3
    lw	$a2,-4($a2)
    srlv	$v0,$v0,$t0
    sh	$v0,-6($a4)
    addu	$a2,$a2,$t1
    lbu	$v1,0($t1)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    srlv	$v1,$v1,$t0
    sh	$v1,-4($a4)
    addu	$a5,$v0,$a5
    lbu	$v1,0($a5)
    addiu	$a1,$a1,-2
    addu	$a5,$t1,$a5
    srlv	$v1,$v1,$t0
    bne	$a1,$a0,.L0dad9a88
    sh	$v1,-2($a4)
.L0dad9af8:
    b	.L0dad1490
    nop
.L0dad9b00:
    # Line 898
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    sd	$v1,680($sp)
.L0dad9b10:
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    lbu	$t0,0($t8)
    addu	$t8,$t1,$t8
    ld	$t1,680($sp)
    addiu	$a4,$a4,6
    addiu	$a6,$a6,-1
    srlv	$t0,$t0,$t1
    sh	$t0,-6($a4)
    addu	$v0,$a3,$t3
    lbu	$t0,0($t2)
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    srlv	$t0,$t0,$t1
    sh	$t0,-4($a4)
    lw	$v0,28($v0)
    lbu	$t0,0($t9)
    addu	$t2,$v1,$t2
    addu	$t9,$v0,$t9
    srlv	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad9b10
    sh	$t0,-2($a4)
    b	.L0dad1490
    nop
.L0dad9b70:
    # Line 903
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v0,$a1
    sd	$v0,680($sp)
.L0dad9b80:
    addiu	$a4,$a4,8
    addiu	$a6,$a6,-1
    addu	$t1,$a3,$t3
    ld	$t0,680($sp)
    lbu	$v1,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    srlv	$v1,$v1,$t0
    sh	$v1,-8($a4)
    lw	$t1,12($t1)
    lbu	$v1,0($t2)
    addu	$t8,$v0,$t8
    addu	$v0,$a3,$t3
    srlv	$v1,$v1,$t0
    sh	$v1,-6($a4)
    lw	$v0,28($v0)
    lbu	$v1,0($t9)
    addu	$t2,$t1,$t2
    addu	$t1,$a3,$t3
    srlv	$v1,$v1,$t0
    sh	$v1,-4($a4)
    lw	$t1,44($t1)
    lbu	$v1,0($a5)
    addu	$t9,$v0,$t9
    addu	$a5,$t1,$a5
    srlv	$v1,$v1,$t0
    bne	$a6,$a0,.L0dad9b80
    sh	$v1,-2($a4)
    b	.L0dad1490
    nop
.L0dad9bf8:
    # Line 858
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    ld	$a4,760($sp)
    negu	$v1,$a1
    sd	$v1,680($sp)
.L0dad9c14:
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    ld	$t1,680($sp)
    lbu	$t0,0($t8)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    srlv	$t0,$t0,$t1
    sb	$t0,-4($a5)
    lw	$v0,12($v0)
    lbu	$t0,0($t2)
    addu	$t8,$v1,$t8
    addu	$v1,$a3,$t3
    srlv	$t0,$t0,$t1
    sb	$t0,-3($a5)
    lw	$v1,28($v1)
    lbu	$t0,0($t9)
    addu	$t2,$v0,$t2
    addu	$v0,$a3,$t3
    srlv	$t0,$t0,$t1
    sb	$t0,-2($a5)
    lw	$v0,44($v0)
    lbu	$t0,0($a4)
    addu	$t9,$v1,$t9
    addu	$a4,$v0,$a4
    srlv	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad9c14
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad9c8c:
    # Line 862
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    ld	$a4,760($sp)
    negu	$a3,$a1
    sd	$a3,680($sp)
    sll	$a3,$a2,0x2
.L0dad9ca8:
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v0,$a3,$t3
    ld	$t1,680($sp)
    lbu	$t0,0($a4)
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    srlv	$t0,$t0,$t1
    sb	$t0,-4($a5)
    lw	$v0,28($v0)
    lbu	$t0,0($t9)
    addu	$a4,$v1,$a4
    addu	$v1,$a3,$t3
    srlv	$t0,$t0,$t1
    sb	$t0,-3($a5)
    lw	$v1,12($v1)
    lbu	$t0,0($t2)
    addu	$t9,$v0,$t9
    addu	$v0,$a3,$t3
    srlv	$t0,$t0,$t1
    sb	$t0,-2($a5)
    lw	$v0,-4($v0)
    lbu	$t0,0($t8)
    addu	$t2,$v1,$t2
    addu	$t8,$v0,$t8
    srlv	$t0,$t0,$t1
    bne	$a6,$a0,.L0dad9ca8
    sb	$t0,-1($a5)
    b	.L0dad1490
    nop
.L0dad9d20:
    # Line 1023
    addiu	$a6,$a6,-1
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
.L0dad9d2c:
    addiu	$a5,$a5,4
    addiu	$a6,$a6,-1
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    lbu	$t1,0($t2)
    addu	$t2,$v1,$t2
    lbu	$t0,0($t9)
    addu	$t9,$v0,$t9
    addu	$a1,$a3,$t3
    lw	$a1,12($a1)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    lbu	$v0,0($a4)
    addu	$a4,$a1,$a4
    lbu	$a1,0($t8)
    addu	$t8,$v1,$t8
    sll	$v0,$v0,0x8
    or	$a1,$a1,$v0
    sll	$t0,$t0,0x10
    sll	$t1,$t1,0x18
    or	$t0,$t0,$t1
    or	$a1,$a1,$t0
    bne	$a6,$a0,.L0dad9d2c
    sw	$a1,-4($a5)
    b	.L0dad1490
    nop
.L0dad9d9c:
    # Line 1144
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a4,$a6,1
    andi	$t0,$a4,0x1
    beqz	$t0,.L0dad9de0
    addiu	$a7,$a7,8
    lhu	$v0,0($a2)
    ld	$v1,696($sp)
    addiu	$a6,$a6,-1
    srlv	$v0,$v0,$a7
    addiu	$v1,$v1,4
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    sd	$v1,696($sp)
    sw	$v0,-4($v1)
    addu	$t1,$t1,$t1
    addu	$a2,$t1,$a2
.L0dad9de0:
    move	$t8,$a6
    move	$t2,$a2
    sra	$v0,$a4,0x1
    beqz	$v0,.L0dad9e44
    ld	$a5,696($sp)
    move	$a2,$t8
    move	$a4,$t2
    move	$a1,$a5
.L0dad9e00:
    addiu	$a1,$a1,8
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    lhu	$v0,0($a4)
    lw	$t1,-4($t1)
    addu	$t0,$t0,$t0
    srlv	$v0,$v0,$a7
    sw	$v0,-8($a1)
    addu	$t0,$t0,$a4
    lhu	$v1,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    srlv	$v1,$v1,$a7
    bne	$a2,$a0,.L0dad9e00
    sw	$v1,-4($a1)
.L0dad9e44:
    b	.L0dad1490
    nop
.L0dad9e4c:
    # Line 1148
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad9e90
    addiu	$a7,$a7,8
    lhu	$v0,0($t9)
    ld	$v1,696($sp)
    addiu	$a6,$a6,-1
    srlv	$v0,$v0,$a7
    addiu	$v1,$v1,4
    addu	$t1,$a3,$t3
    lw	$t1,12($t1)
    sd	$v1,696($sp)
    sw	$v0,-4($v1)
    addu	$t1,$t1,$t1
    addu	$t9,$t1,$t9
.L0dad9e90:
    move	$t8,$a6
    move	$t2,$t9
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad9ef4
    ld	$a5,696($sp)
    move	$a1,$t8
    move	$a4,$t2
    move	$a2,$a5
.L0dad9eb0:
    addiu	$a2,$a2,8
    addiu	$a1,$a1,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    lhu	$v0,0($a4)
    lw	$t1,12($t1)
    addu	$t0,$t0,$t0
    srlv	$v0,$v0,$a7
    sw	$v0,-8($a2)
    addu	$t0,$t0,$a4
    lhu	$v1,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    srlv	$v1,$v1,$a7
    bne	$a1,$a0,.L0dad9eb0
    sw	$v1,-4($a2)
.L0dad9ef4:
    b	.L0dad1490
    nop
.L0dad9efc:
    # Line 1152
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad9f40
    addiu	$a7,$a7,8
    lhu	$v0,0($t8)
    ld	$v1,696($sp)
    addiu	$a6,$a6,-1
    srlv	$v0,$v0,$a7
    addiu	$v1,$v1,4
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    sd	$v1,696($sp)
    sw	$v0,-4($v1)
    addu	$t1,$t1,$t1
    addu	$t8,$t1,$t8
.L0dad9f40:
    move	$t9,$a6
    move	$t2,$t8
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dad9fa4
    ld	$a5,696($sp)
    move	$a2,$t9
    move	$a4,$t2
    move	$a1,$a5
.L0dad9f60:
    addiu	$a1,$a1,8
    addiu	$a2,$a2,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    lhu	$v0,0($a4)
    lw	$t1,28($t1)
    addu	$t0,$t0,$t0
    srlv	$v0,$v0,$a7
    sw	$v0,-8($a1)
    addu	$t0,$t0,$a4
    lhu	$v1,0($t0)
    addu	$a4,$t1,$t1
    addu	$a4,$a4,$t0
    srlv	$v1,$v1,$a7
    bne	$a2,$a0,.L0dad9f60
    sw	$v1,-4($a1)
.L0dad9fa4:
    b	.L0dad1490
    nop
.L0dad9fac:
    # Line 1156
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a2,$a6,1
    andi	$t0,$a2,0x1
    beqz	$t0,.L0dad9ff0
    addiu	$a7,$a7,8
    lhu	$v0,0($t2)
    ld	$v1,696($sp)
    addiu	$a6,$a6,-1
    srlv	$v0,$v0,$a7
    addiu	$v1,$v1,4
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    sd	$v1,696($sp)
    sw	$v0,-4($v1)
    addu	$t1,$t1,$t1
    addu	$t2,$t1,$t2
.L0dad9ff0:
    move	$t9,$a6
    move	$t8,$t2
    sra	$v0,$a2,0x1
    beqz	$v0,.L0dada054
    ld	$a5,696($sp)
    move	$a1,$t9
    move	$a2,$t8
    move	$a4,$a5
.L0dada010:
    addiu	$a4,$a4,8
    addiu	$a1,$a1,-2
    addu	$t1,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    lhu	$v0,0($a2)
    lw	$t1,44($t1)
    addu	$t0,$t0,$t0
    srlv	$v0,$v0,$a7
    sw	$v0,-8($a4)
    addu	$t0,$t0,$a2
    lhu	$v1,0($t0)
    addu	$a2,$t1,$t1
    addu	$a2,$a2,$t0
    srlv	$v1,$v1,$a7
    bne	$a1,$a0,.L0dada010
    sw	$v1,-4($a4)
.L0dada054:
    b	.L0dad1490
    nop
.L0dada05c:
    # Line 1160
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dada068:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,8
    sd	$t1,696($sp)
    addu	$v1,$a3,$t3
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    lhu	$t0,0($a2)
    lw	$v1,-4($v1)
    addu	$v0,$v0,$v0
    srlv	$t0,$t0,$a7
    sw	$t0,-8($t1)
    addu	$v1,$v1,$v1
    lhu	$t0,0($t2)
    addu	$a2,$v1,$a2
    addu	$t2,$v0,$t2
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dada068
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dada0bc:
    # Line 1164
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dada0c8:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    addiu	$t1,$t1,12
    sd	$t1,696($sp)
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    lhu	$t0,0($a2)
    addu	$v1,$v1,$v1
    addu	$v0,$v0,$v0
    srlv	$t0,$t0,$a7
    sw	$t0,-12($t1)
    addu	$a2,$v0,$a2
    lhu	$t0,0($t9)
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    srlv	$t0,$t0,$a7
    sw	$t0,-8($t1)
    addu	$t9,$v1,$t9
    lhu	$t0,0($t8)
    addu	$v0,$v0,$v0
    addu	$t8,$v0,$t8
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dada0c8
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dada138:
    # Line 1169
    beq	$a6,$a0,.L0dad1490
    negu	$a7,$a1
    addiu	$a7,$a7,8
.L0dada144:
    ld	$t1,696($sp)
    addiu	$a6,$a6,-1
    lhu	$v1,0($a2)
    addiu	$t1,$t1,16
    sd	$t1,696($sp)
    srlv	$v1,$v1,$a7
    sw	$v1,-16($t1)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    addu	$t0,$t0,$t0
    addu	$a2,$t0,$a2
    lhu	$t0,0($t9)
    addu	$v1,$v1,$v1
    addu	$v0,$v0,$v0
    srlv	$t0,$t0,$a7
    sw	$t0,-12($t1)
    addu	$t9,$v0,$t9
    lhu	$t0,0($t8)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    srlv	$t0,$t0,$a7
    sw	$t0,-8($t1)
    addu	$v0,$v0,$v0
    lhu	$t0,0($t2)
    addu	$t8,$v1,$t8
    addu	$t2,$v0,$t2
    srlv	$t0,$t0,$a7
    bne	$a6,$a0,.L0dada144
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dada1d0:
    # Line 918
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$t1,$a1
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dada220
    sd	$t1,680($sp)
.L0dada1ec:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$v1,688($sp)
    ld	$t0,680($sp)
    lbu	$v0,0($t8)
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    srlv	$v0,$v0,$t0
    addiu	$v1,$v1,4
    sd	$v1,688($sp)
    addu	$t8,$t1,$t8
    bnez	$a4,.L0dada1ec
    sw	$v0,-4($v1)
.L0dada220:
    move	$t9,$a6
    move	$t2,$t8
    sra	$v0,$a5,0x2
    beqz	$v0,.L0dada2b0
    ld	$a7,688($sp)
    move	$a1,$t9
    move	$a2,$t2
    move	$a4,$a7
.L0dada240:
    addiu	$a4,$a4,16
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    ld	$t0,680($sp)
    lbu	$v0,0($a2)
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    srlv	$v0,$v0,$t0
    sw	$v0,-16($a4)
    addu	$v1,$v1,$a2
    lbu	$a2,0($v1)
    addu	$v0,$a3,$t3
    lw	$v0,-4($v0)
    srlv	$a2,$a2,$t0
    sw	$a2,-12($a4)
    addu	$v0,$v0,$v1
    lbu	$v1,0($v0)
    addu	$a2,$a3,$t3
    lw	$a2,-4($a2)
    srlv	$v1,$v1,$t0
    sw	$v1,-8($a4)
    addu	$a2,$a2,$v0
    lbu	$v1,0($a2)
    addiu	$a1,$a1,-4
    addu	$a2,$t1,$a2
    srlv	$v1,$v1,$t0
    bne	$a1,$a0,.L0dada240
    sw	$v1,-4($a4)
.L0dada2b0:
    b	.L0dad1490
    nop
.L0dada2b8:
    # Line 922
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v0,$a1
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dada308
    sd	$v0,680($sp)
.L0dada2d4:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$t0,688($sp)
    ld	$t1,680($sp)
    lbu	$v1,0($t2)
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    srlv	$v1,$v1,$t1
    addiu	$t0,$t0,4
    sd	$t0,688($sp)
    addu	$t2,$v0,$t2
    bnez	$a4,.L0dada2d4
    sw	$v1,-4($t0)
.L0dada308:
    move	$t9,$a6
    move	$t8,$t2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0dada398
    ld	$a7,688($sp)
    move	$a1,$t9
    move	$a2,$t8
    move	$a4,$a7
.L0dada328:
    addiu	$a4,$a4,16
    addu	$v0,$a3,$t3
    lw	$v0,12($v0)
    ld	$t1,680($sp)
    lbu	$t0,0($a2)
    addu	$v1,$a3,$t3
    lw	$v1,12($v1)
    srlv	$t0,$t0,$t1
    sw	$t0,-16($a4)
    addu	$v1,$v1,$a2
    lbu	$a2,0($v1)
    addu	$t0,$a3,$t3
    lw	$t0,12($t0)
    srlv	$a2,$a2,$t1
    sw	$a2,-12($a4)
    addu	$t0,$t0,$v1
    lbu	$v1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,12($a2)
    srlv	$v1,$v1,$t1
    sw	$v1,-8($a4)
    addu	$a2,$a2,$t0
    lbu	$t0,0($a2)
    addiu	$a1,$a1,-4
    addu	$a2,$v0,$a2
    srlv	$t0,$t0,$t1
    bne	$a1,$a0,.L0dada328
    sw	$t0,-4($a4)
.L0dada398:
    b	.L0dad1490
    nop
.L0dada3a0:
    # Line 926
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dada3f0
    sd	$v1,680($sp)
.L0dada3bc:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$t1,688($sp)
    ld	$v0,680($sp)
    lbu	$t0,0($t9)
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    srlv	$t0,$t0,$v0
    addiu	$t1,$t1,4
    sd	$t1,688($sp)
    addu	$t9,$v1,$t9
    bnez	$a4,.L0dada3bc
    sw	$t0,-4($t1)
.L0dada3f0:
    move	$t8,$a6
    move	$t2,$t9
    sra	$t0,$a5,0x2
    beqz	$t0,.L0dada480
    ld	$a7,688($sp)
    move	$a1,$t8
    move	$a2,$t2
    move	$a4,$a7
.L0dada410:
    addiu	$a4,$a4,16
    addu	$v1,$a3,$t3
    lw	$v1,28($v1)
    ld	$v0,680($sp)
    lbu	$t0,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,28($t1)
    srlv	$t0,$t0,$v0
    sw	$t0,-16($a4)
    addu	$t1,$t1,$a2
    lbu	$a2,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,28($t0)
    srlv	$a2,$a2,$v0
    sw	$a2,-12($a4)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,28($a2)
    srlv	$t1,$t1,$v0
    sw	$t1,-8($a4)
    addu	$a2,$a2,$t0
    lbu	$t1,0($a2)
    addiu	$a1,$a1,-4
    addu	$a2,$v1,$a2
    srlv	$t1,$t1,$v0
    bne	$a1,$a0,.L0dada410
    sw	$t1,-4($a4)
.L0dada480:
    b	.L0dad1490
    nop
.L0dada488:
    # Line 930
    beq	$a6,$a0,.L0dad1490
    negu	$a3,$a1
    sd	$a3,680($sp)
    addiu	$a5,$a6,1
    andi	$a4,$a5,0x3
    beqz	$a4,.L0dada4d8
    sll	$a3,$a2,0x2
.L0dada4a4:
    addiu	$a6,$a6,-1
    addi	$a4,$a4,-1
    ld	$t1,688($sp)
    ld	$v0,680($sp)
    lbu	$t0,0($t2)
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    srlv	$t0,$t0,$v0
    addiu	$t1,$t1,4
    sd	$t1,688($sp)
    addu	$t2,$v1,$t2
    bnez	$a4,.L0dada4a4
    sw	$t0,-4($t1)
.L0dada4d8:
    move	$t9,$a6
    move	$t8,$t2
    sra	$t0,$a5,0x2
    beqz	$t0,.L0dada568
    ld	$a7,688($sp)
    move	$a1,$t9
    move	$a2,$t8
    move	$a4,$a7
.L0dada4f8:
    addiu	$a4,$a4,16
    addu	$v1,$a3,$t3
    lw	$v1,44($v1)
    ld	$v0,680($sp)
    lbu	$t0,0($a2)
    addu	$t1,$a3,$t3
    lw	$t1,44($t1)
    srlv	$t0,$t0,$v0
    sw	$t0,-16($a4)
    addu	$t1,$t1,$a2
    lbu	$a2,0($t1)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    srlv	$a2,$a2,$v0
    sw	$a2,-12($a4)
    addu	$t0,$t0,$t1
    lbu	$t1,0($t0)
    addu	$a2,$a3,$t3
    lw	$a2,44($a2)
    srlv	$t1,$t1,$v0
    sw	$t1,-8($a4)
    addu	$a2,$a2,$t0
    lbu	$t1,0($a2)
    addiu	$a1,$a1,-4
    addu	$a2,$v1,$a2
    srlv	$t1,$t1,$v0
    bne	$a1,$a0,.L0dada4f8
    sw	$t1,-4($a4)
.L0dada568:
    b	.L0dad1490
    nop
.L0dada570:
    # Line 934
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$t1,$a1
    addiu	$a4,$a6,1
    andi	$t0,$a4,0x1
    beqz	$t0,.L0dada5d0
    sd	$t1,680($sp)
    addiu	$a6,$a6,-1
    addu	$v1,$a3,$t3
    lw	$v1,-4($v1)
    ld	$t0,680($sp)
    lbu	$v0,0($t8)
    addu	$t8,$v1,$t8
    ld	$v1,688($sp)
    addu	$t1,$a3,$t3
    srlv	$v0,$v0,$t0
    addiu	$v1,$v1,8
    sw	$v0,-8($v1)
    lw	$t1,44($t1)
    lbu	$v0,0($t2)
    sd	$v1,688($sp)
    addu	$t2,$t1,$t2
    srlv	$v0,$v0,$t0
    sw	$v0,-4($v1)
.L0dada5d0:
    move	$a7,$a6
    move	$t9,$t2
    move	$t1,$t8
    sd	$t8,120($sp)
    ld	$v0,688($sp)
    sra	$t0,$a4,0x1
    beqz	$t0,.L0dada670
    sd	$v0,128($sp)
    move	$a1,$a7
    move	$a2,$t9
    ld	$a5,128($sp)
    ld	$a4,120($sp)
.L0dada600:
    addiu	$a5,$a5,16
    ld	$t1,680($sp)
    lbu	$v0,0($a4)
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    srlv	$v0,$v0,$t1
    sw	$v0,-16($a5)
    addu	$t0,$t0,$a4
    lbu	$v0,0($a2)
    addu	$a4,$a3,$t3
    lw	$a4,-4($a4)
    srlv	$v0,$v0,$t1
    sw	$v0,-12($a5)
    addu	$a4,$a4,$t0
    lbu	$v0,0($t0)
    addu	$t0,$a3,$t3
    lw	$t0,44($t0)
    srlv	$v0,$v0,$t1
    sw	$v0,-8($a5)
    addu	$v0,$a3,$t3
    lw	$v0,44($v0)
    addu	$a2,$t0,$a2
    lbu	$t0,0($a2)
    addiu	$a1,$a1,-2
    addu	$a2,$v0,$a2
    srlv	$t0,$t0,$t1
    bne	$a1,$a0,.L0dada600
    sw	$t0,-4($a5)
.L0dada670:
    b	.L0dad1490
    nop
.L0dada678:
    # Line 939
    beq	$a6,$a0,.L0dad1490
    sll	$a3,$a2,0x2
    negu	$v1,$a1
    sd	$v1,680($sp)
.L0dada688:
    addu	$v1,$a3,$t3
    addu	$t1,$a3,$t3
    lw	$t1,-4($t1)
    ld	$v0,680($sp)
    lbu	$t0,0($t8)
    addu	$t8,$t1,$t8
    ld	$t1,688($sp)
    lw	$v1,12($v1)
    srlv	$t0,$t0,$v0
    addiu	$t1,$t1,12
    sw	$t0,-12($t1)
    addiu	$a6,$a6,-1
    lbu	$t0,0($t2)
    addu	$t2,$v1,$t2
    addu	$v1,$a3,$t3
    srlv	$t0,$t0,$v0
    sw	$t0,-8($t1)
    lw	$v1,28($v1)
    lbu	$t0,0($t9)
    sd	$t1,688($sp)
    addu	$t9,$v1,$t9
    srlv	$t0,$t0,$v0
    bne	$a6,$a0,.L0dada688
    sw	$t0,-4($t1)
    b	.L0dad1490
    nop
.L0dada6f0:
    # Line 944
    beq	$a6,$a0,.L0dad1490
    sd	$a3,760($sp)
    sll	$a3,$a2,0x2
    ld	$a4,760($sp)
    negu	$v0,$a1
    sd	$v0,680($sp)
.L0dada708:
    addu	$v0,$a3,$t3
    addu	$t0,$a3,$t3
    lw	$t0,-4($t0)
    ld	$t1,680($sp)
    lbu	$v1,0($t8)
    addu	$t8,$t0,$t8
    ld	$t0,688($sp)
    lw	$v0,12($v0)
    srlv	$v1,$v1,$t1
    addiu	$t0,$t0,16
    sw	$v1,-16($t0)
    lbu	$v1,0($t2)
    addu	$t2,$v0,$t2
    addu	$v0,$a3,$t3
    lw	$v0,28($v0)
    srlv	$v1,$v1,$t1
    sw	$v1,-12($t0)
    addiu	$a6,$a6,-1
    lbu	$v1,0($t9)
    addu	$t9,$v0,$t9
    addu	$v0,$a3,$t3
    srlv	$v1,$v1,$t1
    sw	$v1,-8($t0)
    lw	$v0,44($v0)
    lbu	$v1,0($a4)
    sd	$t0,688($sp)
    addu	$a4,$v0,$a4
    srlv	$v1,$v1,$t1
    bne	$a6,$a0,.L0dada708
    sw	$v1,-4($t0)
    b	.L0dad1490
    nop
.end __glMgr_FormatTexels

# Function: __glMgrGetRawVisualInfo
# Declared: Line 1268 (Source lines: 1270-1315)
# Address: 0x0dada788 - 0x0dada880 (Size: 248 bytes, Frame: 0)
.ent __glMgrGetRawVisualInfo
__glMgrGetRawVisualInfo:
    # Line 1270
    li	$at,6144
    beq	$a0,$at,.L0dada7b0
    li	$v0,6145
    beq	$a0,$v0,.L0dada838
    # Line 1304
    li	$at,5125
    # Line 1270
    li	$v1,6146
    beq	$a0,$v1,.L0dada7d8
    # Line 1312
    li	$v0,1280
    jr	$ra
    nop
.L0dada7b0:
    # Line 1274
    lbu	$a4,4($a3)
    # Line 1278
    li	$v1,5121
    # Line 1274
    beqz	$a4,.L0dada848
    # Line 1279
    li	$v0,6408
    # Line 1274
    lw	$at,52($a3)
    beqzl	$at,.L0dada7f0
    # Line 1279
    lw	$v0,40($a3)
    # Line 1278
    sw	$v1,0($a1)
    # Line 1279
    b	.L0dada7e8
    sw	$v0,0($a2)
.L0dada7d8:
    # Line 1308
    li	$at,5121
    sw	$at,0($a1)
    # Line 1309
    li	$a4,6401
    sw	$a4,0($a2)
.L0dada7e8:
    # Line 1315
    jr	$ra
    move	$v0,$zero
.L0dada7f0:
    # Line 1279
    slti	$v0,$v0,9
    beqz	$v0,.L0dada828
    # Line 1288
    li	$v0,5123
    # Line 1279
    lw	$v1,44($a3)
    slti	$v1,$v1,9
    beqz	$v1,.L0dada828
    # Line 1288
    li	$v0,5123
    # Line 1283
    lw	$a4,48($a3)
    slti	$a4,$a4,9
    beqz	$a4,.L0dada824
    # Line 1286
    li	$at,5121
    b	.L0dada82c
    sw	$at,0($a1)
.L0dada824:
    # Line 1288
    li	$v0,5123
.L0dada828:
    sw	$v0,0($a1)
.L0dada82c:
    # Line 1290
    li	$v1,6407
    b	.L0dada7e8
    sw	$v1,0($a2)
.L0dada838:
    # Line 1304
    sw	$at,0($a1)
    # Line 1305
    li	$a4,6402
    # Line 1306
    b	.L0dada7e8
    # Line 1305
    sw	$a4,0($a2)
.L0dada848:
    # Line 1290
    lbu	$v0,5($a3)
    beqz	$v0,.L0dada7e8
    nop
    lw	$v1,36($a3)
    slti	$v1,$v1,9
    beqz	$v1,.L0dada870
    # Line 1300
    li	$v0,6400
    # Line 1296
    li	$a4,5121
    b	.L0dada878
    sw	$a4,0($a1)
.L0dada870:
    # Line 1298
    li	$at,5123
    sw	$at,0($a1)
.L0dada878:
    # Line 1300
    b	.L0dada7e8
    sw	$v0,0($a2)
.end __glMgrGetRawVisualInfo

# Function: __glMgrGetVisualInfo
# Declared: Line 1319 (Source lines: 1320-1322)
# Address: 0x0dada880 - 0x0dada8bc (Size: 60 bytes, Frame: 48)
.globl __glMgrGetVisualInfo
.ent __glMgrGetVisualInfo
__glMgrGetVisualInfo:
    # Line 1320
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0x12
    addiu	$ra,$ra,15896
    addu	$gp,$t9,$ra
    # Line 1322
    # lw $t9, -32716($gp) # &sub_0dae0000
    lw	$a3,__glCurrentContext
    addiu	$t9,$t9,-22648
    bal __glMgr_FormatTexels
    addiu	$a3,$a3,3188
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrGetVisualInfo

# Function: __glMgrGetDrawVisualInfo
# Declared: Line 1326 (Source lines: 1327-1329)
# Address: 0x0dada8bc - 0x0dada8f8 (Size: 60 bytes, Frame: 48)
.globl __glMgrGetDrawVisualInfo
.ent __glMgrGetDrawVisualInfo
__glMgrGetDrawVisualInfo:
    # Line 1327
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0x12
    addiu	$ra,$ra,15836
    addu	$gp,$t9,$ra
    # Line 1329
    # lw $t9, -32716($gp) # &sub_0dae0000
    lw	$a3,__glCurrentContext
    addiu	$t9,$t9,-22648
    bal __glMgr_FormatTexels
    addiu	$a3,$a3,3100
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrGetDrawVisualInfo

# Function: __glMgrInitPixelStateCRAM
# Declared: Line 1333 (Source lines: 1338-1388)
# Address: 0x0dada8f8 - 0x0dadaac8 (Size: 464 bytes, Frame: 0)
.globl __glMgrInitPixelStateCRAM
.ent __glMgrInitPixelStateCRAM
__glMgrInitPixelStateCRAM:
    # Line 1338
    lui	$a5,0x1
    li	$at,-2
    beq	$a1,$at,.L0dadaa80
    lw	$a3,__glCurrentContext
    # Line 1345
    li	$v0,-1
    beq	$a1,$v0,.L0dada948
    # Line 1348
    sll	$at,$a1,0x2
    addu	$at,$at,$a3
    addu	$at,$a5,$at
    lw	$a2,-23200($at)
    sll	$v1,$a1,0x8
    addiu	$a2,$a2,1
    sw	$a2,-23200($at)
    addu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    addu	$v1,$v1,$a5
    sw	$a0,-25252($v1)
    # Line 1388
    jr	$ra
    nop
.L0dada948:
    # Line 1348
    addu	$a6,$a5,$a3
    lbu	$v0,-25437($a6)
    # Line 1352
    move	$a5,$zero
    # Line 1348
    li	$v1,1
    beq	$v0,$v1,.L0dadaac0
    move	$a4,$a6
    # Line 1352
    lw	$a5,-23196($a4)
.L0dada964:
    # Line 1354
    lw	$a1,-23200($a4)
    # Line 1362
    lui	$v0,0x8000
    # Line 1354
    lui	$a3,0x7
    addu	$a1,$a1,$a5
    sll	$a1,$a1,0x2
    addiu	$a1,$a1,32
    sltiu	$at,$a1,256
    beqz	$at,.L0dada994
    ori	$a3,$a3,0x4080
    # Line 1357
    ori	$a2,$a1,0x8000
    b	.L0dada9b0
    sw	$a2,0($a3)
.L0dada994:
    # Line 1362
    lui	$at,0xf
    ori	$at,$at,0xffff
    and	$at,$a1,$at
    or	$at,$at,$v0
    # Line 1360
    li	$v0,0x8000
    sw	$v0,0($a3)
    # Line 1362
    sw	$at,0($a3)
.L0dada9b0:
    # Line 1365
    lw	$at,-23200($a4)
    li	$v0,5
    div	$zero,$at,$v0
    mflo	$a2
    sw	$a2,0($a3)
    # Line 1366
    lw	$a1,-23200($a4)
    div	$zero,$a1,$v0
    mfhi	$v1
    sw	$v1,0($a3)
    # Line 1367
    lw	$at,-23200($a4)
    sll	$at,$at,0x2
    sw	$at,0($a3)
    # Line 1368
    sw	$a0,0($a3)
    # Line 1369
    sw	$zero,0($a3)
    # Line 1372
    lw	$at,-23200($a4)
    lw	$a2,-23196($a4)
    sltiu	$at,$at,1
    sltiu	$a2,$a2,1
    sll	$a2,$a2,0x1
    or	$a2,$a2,$at
    sw	$a2,0($a3)
    # Line 1374
    lw	$a1,-23200($a4)
    sw	$a1,0($a3)
    # Line 1366
    teq	$v0,$zero,0x7
    # Line 1376
    lw	$v1,-23200($a4)
    # Line 1365
    teq	$v0,$zero,0x7
    # Line 1376
    blez	$v1,.L0dadaa40
    move	$a1,$zero
    move	$a0,$a6
.L0dadaa24:
    # Line 1377
    lw	$v1,-25248($a0)
    sw	$v1,0($a3)
    # Line 1376
    lw	$v0,-23200($a4)
    addiu	$a1,$a1,1
    slt	$v0,$a1,$v0
    bnez	$v0,.L0dadaa24
    addiu	$a0,$a0,4
.L0dadaa40:
    # Line 1379
    lw	$a2,-23196($a4)
    sw	$a2,0($a3)
    # Line 1381
    lw	$a1,-23196($a4)
    move	$a0,$a6
    blez	$a1,.L0dadaa74
    move	$a1,$zero
.L0dadaa58:
    # Line 1382
    lw	$v0,-24224($a0)
    sw	$v0,0($a3)
    # Line 1381
    lw	$at,-23196($a4)
    addiu	$a1,$a1,1
    slt	$at,$a1,$at
    bnez	$at,.L0dadaa58
    addiu	$a0,$a0,4
.L0dadaa74:
    # Line 1385
    sw	$zero,-23196($a4)
    # Line 1388
    jr	$ra
    # Line 1384
    sw	$zero,-23200($a4)
.L0dadaa80:
    # Line 1344
    addu	$at,$a5,$a3
    lw	$v1,-23200($at)
    addiu	$v1,$v1,1
    sw	$v1,-23200($at)
    sll	$v0,$v1,0x2
    addu	$v0,$v0,$a3
    addu	$v0,$v0,$a5
    sw	$a0,-25252($v0)
    # Line 1345
    lw	$a2,-23196($at)
    addiu	$a2,$a2,1
    sw	$a2,-23196($at)
    sll	$v1,$a2,0x2
    addu	$v1,$v1,$a3
    addu	$v1,$v1,$a5
    # Line 1388
    jr	$ra
    # Line 1345
    sw	$a0,-24228($v1)
.L0dadaac0:
    # Line 1352
    b	.L0dada964
    sw	$zero,-23196($a4)
.end __glMgrInitPixelStateCRAM

# Function: __glMgrInitPixelStateERAM
# Declared: Line 1391 (Source lines: 1396-1450)
# Address: 0x0dadaac8 - 0x0dadaca8 (Size: 480 bytes, Frame: 0)
.globl __glMgrInitPixelStateERAM
.ent __glMgrInitPixelStateERAM
__glMgrInitPixelStateERAM:
    # Line 1396
    lui	$a5,0x1
    li	$at,-2
    beq	$a1,$at,.L0dadac60
    lw	$a3,__glCurrentContext
    # Line 1404
    li	$v0,-1
    beq	$a1,$v0,.L0dadab18
    # Line 1408
    sll	$at,$a1,0x2
    addu	$at,$at,$a3
    addu	$at,$a5,$at
    lw	$a2,-23200($at)
    sll	$v1,$a1,0x8
    addiu	$a2,$a2,1
    sw	$a2,-23200($at)
    addu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    addu	$v1,$v1,$a5
    sw	$a0,-25252($v1)
    # Line 1450
    jr	$ra
    nop
.L0dadab18:
    # Line 1408
    addu	$a6,$a5,$a3
    lbu	$v0,-25437($a6)
    # Line 1413
    move	$a5,$zero
    # Line 1408
    li	$v1,1
    beq	$v0,$v1,.L0dadaca0
    move	$a4,$a6
    # Line 1413
    lw	$a5,-23196($a4)
.L0dadab34:
    # Line 1415
    lw	$a1,-23200($a4)
    # Line 1425
    lui	$v0,0x8000
    # Line 1415
    lui	$a3,0x7
    addu	$a1,$a1,$a5
    sll	$a1,$a1,0x2
    addiu	$a1,$a1,32
    sltiu	$at,$a1,256
    beqz	$at,.L0dadab64
    ori	$a3,$a3,0x4080
    # Line 1419
    ori	$a2,$a1,0xcd00
    b	.L0dadab80
    sw	$a2,0($a3)
.L0dadab64:
    # Line 1425
    lui	$at,0xf
    ori	$at,$at,0xffff
    and	$at,$a1,$at
    or	$at,$at,$v0
    # Line 1423
    li	$v0,0xcd00
    sw	$v0,0($a3)
    # Line 1425
    sw	$at,0($a3)
.L0dadab80:
    # Line 1428
    lw	$a2,-23200($a4)
    sra	$a1,$a2,0x1
    srl	$a1,$a1,0x1e
    addu	$a1,$a1,$a2
    sra	$a1,$a1,0x2
    sw	$a1,0($a3)
    # Line 1429
    lw	$v0,-23200($a4)
    sra	$v1,$v0,0x1f
    xor	$at,$v0,$v1
    sra	$v0,$v0,0x1f
    subu	$at,$at,$v1
    andi	$at,$at,0x3
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    sw	$at,0($a3)
    # Line 1430
    lw	$a2,-23200($a4)
    sll	$a2,$a2,0x2
    sw	$a2,0($a3)
    # Line 1431
    sw	$a0,0($a3)
    # Line 1432
    sw	$zero,0($a3)
    # Line 1435
    lw	$a2,-23200($a4)
    lw	$a1,-23196($a4)
    sltiu	$a2,$a2,1
    sltiu	$a1,$a1,1
    sll	$a1,$a1,0x1
    or	$a1,$a1,$a2
    sw	$a1,0($a3)
    # Line 1437
    lw	$v1,-23200($a4)
    sw	$v1,0($a3)
    # Line 1439
    lw	$v0,-23200($a4)
    blez	$v0,.L0dadac20
    move	$a1,$zero
    move	$a0,$a6
.L0dadac04:
    # Line 1440
    lw	$at,-25248($a0)
    sw	$at,0($a3)
    # Line 1439
    lw	$a2,-23200($a4)
    addiu	$a1,$a1,1
    slt	$a2,$a1,$a2
    bnez	$a2,.L0dadac04
    addiu	$a0,$a0,4
.L0dadac20:
    # Line 1442
    lw	$v1,-23196($a4)
    sw	$v1,0($a3)
    # Line 1444
    lw	$v0,-23196($a4)
    move	$a0,$a6
    blez	$v0,.L0dadac54
    move	$a1,$zero
.L0dadac38:
    # Line 1445
    lw	$at,-24224($a0)
    sw	$at,0($a3)
    # Line 1444
    lw	$a2,-23196($a4)
    addiu	$a1,$a1,1
    slt	$a2,$a1,$a2
    bnez	$a2,.L0dadac38
    addiu	$a0,$a0,4
.L0dadac54:
    # Line 1448
    sw	$zero,-23196($a4)
    # Line 1450
    jr	$ra
    # Line 1447
    sw	$zero,-23200($a4)
.L0dadac60:
    # Line 1403
    addu	$a2,$a5,$a3
    lw	$v0,-23200($a2)
    addiu	$v0,$v0,1
    sw	$v0,-23200($a2)
    sll	$at,$v0,0x2
    addu	$at,$at,$a3
    addu	$at,$at,$a5
    sw	$a0,-25252($at)
    # Line 1404
    lw	$v1,-23196($a2)
    addiu	$v1,$v1,1
    sw	$v1,-23196($a2)
    sll	$v0,$v1,0x2
    addu	$v0,$v0,$a3
    addu	$v0,$v0,$a5
    # Line 1450
    jr	$ra
    # Line 1404
    sw	$a0,-24228($v0)
.L0dadaca0:
    # Line 1413
    b	.L0dadab34
    sw	$zero,-23196($a4)
.end __glMgrInitPixelStateERAM

.late_rodata
jtbl_0dbee940:
    .word .L0dacf6d4
    .word .L0dacf6d4
    .word .L0dacf738
    .word .L0dacf738
    .word .L0dacf740
    .word .L0dacf740
    .word .L0dacf740
jtbl_0dbee960:
    .word .L0dacfce8
    .word .L0dacfd5c
    .word .L0dacfd34
    .word .L0dacfd70
    .word .L0dacfd48
    .word .L0dacfd80
    .word .L0dacfd8c
jtbl_0dbee980:
    .word .L0dad0f90
    .word .L0dad0eb8
    .word .L0dad0ed8
    .word .L0dad0ef8
    .word .L0dad0f18
    .word .L0dad0f38
    .word .L0dad0f58
    .word .L0dad0f78
    .word .L0dad1210
    .word .L0dad1138
    .word .L0dad1158
    .word .L0dad1178
    .word .L0dad1198
    .word .L0dad11b8
    .word .L0dad11d8
    .word .L0dad11f8
jtbl_0dbee9c0:
    .word .L0dad2978
    .word .L0dad2aa0
    .word .L0dad2bcc
    .word .L0dad2cf4
    .word .L0dad2eb4
    .word .L0dad2f78
    .word .L0dad2978
    .word .L0dad2e20
    .word .L0dad422c
    .word .L0dad42b4
    .word .L0dad433c
    .word .L0dad43c4
    .word .L0dad451c
    .word .L0dad4624
    .word .L0dad422c
    .word .L0dad4450
    .word .L0dad49cc
    .word .L0dad4a70
    .word .L0dad4b14
    .word .L0dad4bb8
    .word .L0dad4d14
    .word .L0dad4de0
    .word .L0dad49cc
    .word .L0dad4c5c
    .word .L0dad2118
    .word .L0dad2188
    .word .L0dad21f8
    .word .L0dad2268
    .word .L0dad2378
    .word .L0dad2450
    .word .L0dad2118
    .word .L0dad22d8
    .word .L0dad33b4
    .word .L0dad3444
    .word .L0dad34d4
    .word .L0dad3564
    .word .L0dad36c4
    .word .L0dad37dc
    .word .L0dad33b4
    .word .L0dad35f4
    .word .L0dad3bdc
    .word .L0dad3c80
    .word .L0dad3d24
    .word .L0dad3dc8
    .word .L0dad3f24
    .word .L0dad3ff0
    .word .L0dad3bdc
    .word .L0dad3e6c

.rdata
_lit_2f800001:
    .word 0x2f800001
_lit_30000001:
    .word 0x30000001
_lit_37800080:
    .word 0x37800080
_lit_38000080:
    .word 0x38000080
_lit_3b808081:
    .word 0x3b808081
_lit_3c008081:
    .word 0x3c008081
_lit_3f800000:
    .word 0x3f800000

