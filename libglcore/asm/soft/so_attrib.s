# Source: ../soft/so_attrib.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_attrib.c
# Total Functions: 65

.text

# Function: __glim_AlphaFunc
# Declared: Line 28 (Source lines: 29-43)
# Address: 0x0db28624 - 0x0db286f4 (Size: 208 bytes, Frame: 32)
.globl __glim_AlphaFunc
.ent __glim_AlphaFunc
__glim_AlphaFunc:
    # Line 30
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 29
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 30
    lw	$at,__glBeginMode
    # Line 29
    lui	$v1,0xd
    addiu	$v1,$v1,24692
    # Line 30
    beq	$at,$v0,.L0db286d4
    # Line 29
    addu	$gp,$t9,$v1
    # Line 32
    sltiu	$a1,$a0,512
    bnez	$a1,.L0db286b4
    sltiu	$at,$a0,520
    beqz	$at,.L0db286b4
    # Line 34
    mtc1	$zero,$f4
    c.lt.s	$f13,$f4
    # Line 41
    li	$a1,2
    # Line 34
    bc1fl	.L0db28674
    # Line 36
    lwc1	$f4,3284($a2)
    mov.s	$f13,$f4
    lwc1	$f4,3284($a2)
.L0db28674:
    c.lt.s	$f4,$f13
    nop
    bc1f	.L0db28688
    ld	$gp,0($sp)
    # Line 37
    mov.s	$f13,$f4
.L0db28688:
    # Line 39
    sw	$a0,1720($a2)
    # Line 40
    swc1	$f13,1724($a2)
    # Line 41
    sw	$a1,__glBeginMode
    lw	$v0,11828($a2)
    # Line 42
    lw	$v1,11824($a2)
    # Line 43
    addiu	$sp,$sp,32
    # Line 41
    ori	$v0,$v0,0x1
    # Line 42
    ori	$v1,$v1,0x1
    sw	$v1,11824($a2)
    # Line 43
    jr	$ra
    # Line 41
    sw	$v0,11828($a2)
.L0db286b4:
    # Line 33
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 34
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db286d4:
    # Line 30
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_AlphaFunc

# Function: __glim_BlendFunc
# Declared: Line 45 (Source lines: 46-90)
# Address: 0x0db286f4 - 0x0db28960 (Size: 620 bytes, Frame: 32)
.globl __glim_BlendFunc
.ent __glim_BlendFunc
__glim_BlendFunc:
    # Line 47
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 46
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 47
    lw	$at,__glBeginMode
    # Line 46
    lui	$v1,0xd
    addiu	$v1,$v1,24484
    # Line 47
    beq	$at,$v0,.L0db28940
    # Line 46
    addu	$gp,$t9,$v1
    # Line 47
    sltiu	$a2,$a0,774
    bnez	$a2,.L0db287b8
    # Line 49
    sltiu	$at,$a0,775
    beqz	$at,.L0db28838
.L0db28728:
    # Line 67
    sltiu	$v0,$a1,772
.L0db2872c:
    bnez	$v0,.L0db2876c
    # Line 68
    sltiu	$v1,$a1,773
    bnez	$v1,.L0db28790
    li	$a4,0x8002
    sltu	$a2,$a1,$a4
    bnez	$a2,.L0db2886c
    sltu	$at,$a4,$a1
    beqz	$at,.L0db28790
    li	$a4,0x8004
    sltu	$v0,$a1,$a4
    bnez	$v0,.L0db28918
    sltu	$v1,$a4,$a1
    bnez	$v1,.L0db287fc
    # Line 83
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db28794
    # Line 88
    sw	$a1,1732($a3)
.L0db2876c:
    # Line 68
    sltiu	$a2,$a1,769
    bnez	$a2,.L0db287e4
    sltiu	$at,$a1,770
    bnez	$at,.L0db28790
    sltiu	$v0,$a1,771
    bnez	$v0,.L0db288dc
    sltiu	$v1,$a1,772
    beqz	$v1,.L0db287fc
    # Line 83
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db28790:
    # Line 88
    sw	$a1,1732($a3)
.L0db28794:
    # Line 87
    sw	$a0,1728($a3)
    # Line 89
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$a0,11828($a3)
    ld	$gp,0($sp)
    # Line 90
    addiu	$sp,$sp,32
    # Line 89
    ori	$a0,$a0,0x1
    # Line 90
    jr	$ra
    # Line 89
    sw	$a0,11828($a3)
.L0db287b8:
    # Line 49
    sltiu	$at,$a0,771
    bnez	$at,.L0db28818
    sltiu	$v0,$a0,772
    bnez	$v0,.L0db28728
    sltiu	$v1,$a0,773
    bnez	$v1,.L0db28904
    sltiu	$a2,$a0,774
    beqz	$a2,.L0db288c0
    # Line 65
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2872c
    # Line 67
    sltiu	$v0,$a1,772
.L0db287e4:
    # Line 68
    beqz	$a1,.L0db28790
    sltiu	$at,$a1,2
    bnez	$at,.L0db28790
    li	$v0,768
    beq	$a1,$v0,.L0db28790
.L0db287f8:
    # Line 83
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db287fc:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 84
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db28818:
    # Line 49
    beqz	$a0,.L0db28728
    sltiu	$v1,$a0,2
    bnez	$v1,.L0db28728
    li	$a2,770
    bne	$a0,$a2,.L0db288c0
    # Line 65
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2872c
    # Line 67
    sltiu	$v0,$a1,772
.L0db28838:
    # Line 49
    li	$a4,0x8002
    sltu	$at,$a0,$a4
    bnez	$at,.L0db2888c
    sltu	$v0,$a4,$a0
    beqz	$v0,.L0db28728
    li	$a4,0x8004
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0db2892c
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0db288c0
    # Line 65
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2872c
    # Line 67
    sltiu	$v0,$a1,772
.L0db2886c:
    # Line 68
    li	$a4,0x8001
    sltu	$at,$a1,$a4
    bnez	$at,.L0db288f0
    sltu	$v0,$a4,$a1
    bnez	$v0,.L0db287fc
    # Line 83
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db28794
    # Line 88
    sw	$a1,1732($a3)
.L0db2888c:
    # Line 49
    sltiu	$v1,$a0,776
    bnez	$v1,.L0db288b0
    sltiu	$a2,$a0,777
    bnez	$a2,.L0db28728
    li	$at,0x8001
    bne	$a0,$at,.L0db288c0
    # Line 65
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2872c
    # Line 67
    sltiu	$v0,$a1,772
.L0db288b0:
    # Line 49
    li	$v0,775
    beq	$a0,$v0,.L0db2872c
    # Line 67
    sltiu	$v0,$a1,772
.L0db288bc:
    # Line 65
    # lw $t9, -27320($gp) # &__glSetError
.L0db288c0:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 66
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db288dc:
    # Line 68
    li	$v1,770
    bne	$a1,$v1,.L0db287fc
    # Line 83
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db28794
    # Line 88
    sw	$a1,1732($a3)
.L0db288f0:
    # Line 68
    li	$a2,773
    bne	$a1,$a2,.L0db287fc
    # Line 83
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db28794
    # Line 88
    sw	$a1,1732($a3)
.L0db28904:
    # Line 49
    li	$at,772
    bne	$a0,$at,.L0db288c0
    # Line 65
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2872c
    # Line 67
    sltiu	$v0,$a1,772
.L0db28918:
    # Line 68
    li	$v0,0x8003
    beql	$a1,$v0,.L0db28794
    # Line 88
    sw	$a1,1732($a3)
    b	.L0db287f8
    sd	$ra,8($sp)
.L0db2892c:
    # Line 49
    li	$v1,0x8003
    beq	$a0,$v1,.L0db2872c
    # Line 67
    sltiu	$v0,$a1,772
    b	.L0db288bc
    sd	$ra,8($sp)
.L0db28940:
    # Line 47
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_BlendFunc

# Function: __glim_BlendEquationEXT
# Declared: Line 92 (Source lines: 93-111)
# Address: 0x0db28960 - 0x0db28a18 (Size: 184 bytes, Frame: 32)
.globl __glim_BlendEquationEXT
.ent __glim_BlendEquationEXT
__glim_BlendEquationEXT:
    # Line 94
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 93
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 94
    lw	$at,__glBeginMode
    # Line 93
    lui	$v1,0xd
    addiu	$v1,$v1,23864
    # Line 94
    beq	$at,$v0,.L0db289f8
    # Line 93
    addu	$gp,$t9,$v1
    # Line 94
    li	$a1,3057
    beq	$a0,$a1,.L0db289d4
    li	$at,0x8006
    beq	$a0,$at,.L0db289d4
    li	$v0,0x8007
    beq	$a0,$v0,.L0db289d4
    li	$v1,0x8008
    beq	$a0,$v1,.L0db289d4
    li	$a1,0x800a
    beq	$a0,$a1,.L0db289d4
    li	$at,0x800b
    beq	$a0,$at,.L0db289d4
    # Line 105
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 106
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db289d4:
    # Line 109
    sw	$a0,1736($a2)
    # Line 110
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11828($a2)
    ld	$gp,0($sp)
    # Line 111
    addiu	$sp,$sp,32
    # Line 110
    ori	$v0,$v0,0x1
    # Line 111
    jr	$ra
    # Line 110
    sw	$v0,11828($a2)
.L0db289f8:
    # Line 94
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_BlendEquationEXT

# Function: __glim_ClearAccum
# Declared: Line 113 (Source lines: 114-136)
# Address: 0x0db28a18 - 0x0db28b28 (Size: 272 bytes, Frame: 48)
.globl __glim_ClearAccum
.ent __glim_ClearAccum
__glim_ClearAccum:
    # Line 117
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 114
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 117
    lw	$at,__glBeginMode
    # Line 114
    lui	$v1,0xd
    addiu	$v1,$v1,23680
    # Line 117
    beq	$at,$v0,.L0db28b08
    # Line 114
    addu	$gp,$t9,$v1
    # Line 120
    lwc1	$f5,_lit_bf800000
    c.lt.s	$f12,$f5
    # Line 135
    li	$at,2
    # Line 120
    bc1f	.L0db28a54
    lwc1	$f4,3284($a1)
    # Line 121
    mov.s	$f12,$f5
.L0db28a54:
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0db28a6c
    # Line 122
    c.lt.s	$f13,$f5
    mov.s	$f12,$f4
    c.lt.s	$f13,$f5
.L0db28a6c:
    nop
    bc1fl	.L0db28a80
    # Line 123
    c.lt.s	$f4,$f13
    mov.s	$f13,$f5
    c.lt.s	$f4,$f13
.L0db28a80:
    nop
    bc1fl	.L0db28a94
    # Line 124
    c.lt.s	$f14,$f5
    mov.s	$f13,$f4
    c.lt.s	$f14,$f5
.L0db28a94:
    nop
    bc1fl	.L0db28aa8
    # Line 125
    c.lt.s	$f4,$f14
    mov.s	$f14,$f5
    c.lt.s	$f4,$f14
.L0db28aa8:
    nop
    bc1fl	.L0db28abc
    # Line 126
    c.lt.s	$f15,$f5
    mov.s	$f14,$f4
    c.lt.s	$f15,$f5
.L0db28abc:
    nop
    bc1fl	.L0db28ad0
    # Line 127
    c.lt.s	$f4,$f15
    mov.s	$f15,$f5
    c.lt.s	$f4,$f15
.L0db28ad0:
    nop
    bc1f	.L0db28ae0
    ld	$gp,0($sp)
    # Line 128
    mov.s	$f15,$f4
.L0db28ae0:
    # Line 130
    swc1	$f12,1552($a1)
    # Line 131
    swc1	$f13,1556($a1)
    # Line 132
    swc1	$f14,1560($a1)
    # Line 133
    swc1	$f15,1564($a1)
    # Line 135
    sw	$at,__glBeginMode
    lw	$a0,11828($a1)
    # Line 136
    addiu	$sp,$sp,48
    # Line 135
    ori	$a0,$a0,0x1
    # Line 136
    jr	$ra
    # Line 135
    sw	$a0,11828($a1)
.L0db28b08:
    # Line 117
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ClearAccum

# Function: __glim_ClearColor
# Declared: Line 138 (Source lines: 139-159)
# Address: 0x0db28b28 - 0x0db28c28 (Size: 256 bytes, Frame: 48)
.globl __glim_ClearColor
.ent __glim_ClearColor
__glim_ClearColor:
    # Line 142
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 139
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 142
    lw	$at,__glBeginMode
    # Line 139
    lui	$v1,0xd
    addiu	$v1,$v1,23408
    # Line 142
    beq	$at,$v0,.L0db28c08
    # Line 139
    addu	$gp,$t9,$v1
    # Line 145
    mtc1	$zero,$f5
    c.lt.s	$f12,$f5
    ld	$gp,0($sp)
    bc1f	.L0db28b64
    lwc1	$f4,3284($a1)
    # Line 146
    mov.s	$f12,$f5
.L0db28b64:
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0db28b7c
    # Line 147
    c.lt.s	$f13,$f5
    mov.s	$f12,$f4
    c.lt.s	$f13,$f5
.L0db28b7c:
    nop
    bc1fl	.L0db28b90
    # Line 148
    c.lt.s	$f4,$f13
    mov.s	$f13,$f5
    c.lt.s	$f4,$f13
.L0db28b90:
    nop
    bc1fl	.L0db28ba4
    # Line 149
    c.lt.s	$f14,$f5
    mov.s	$f13,$f4
    c.lt.s	$f14,$f5
.L0db28ba4:
    nop
    bc1fl	.L0db28bb8
    # Line 150
    c.lt.s	$f4,$f14
    mov.s	$f14,$f5
    c.lt.s	$f4,$f14
.L0db28bb8:
    nop
    bc1fl	.L0db28bcc
    # Line 151
    c.lt.s	$f15,$f5
    mov.s	$f14,$f4
    c.lt.s	$f15,$f5
.L0db28bcc:
    nop
    bc1fl	.L0db28be0
    # Line 152
    c.lt.s	$f4,$f15
    mov.s	$f15,$f5
    c.lt.s	$f4,$f15
.L0db28be0:
    nop
    bc1fl	.L0db28bf4
    # Line 158
    swc1	$f15,1772($a1)
    # Line 153
    mov.s	$f15,$f4
    # Line 158
    swc1	$f15,1772($a1)
.L0db28bf4:
    # Line 157
    swc1	$f14,1768($a1)
    # Line 156
    swc1	$f13,1764($a1)
    # Line 155
    swc1	$f12,1760($a1)
    # Line 159
    jr	$ra
    addiu	$sp,$sp,48
.L0db28c08:
    # Line 142
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ClearColor

# Function: __glim_ClearDepth
# Declared: Line 161 (Source lines: 162-169)
# Address: 0x0db28c28 - 0x0db28cb8 (Size: 144 bytes, Frame: 32)
.globl __glim_ClearDepth
.ent __glim_ClearDepth
__glim_ClearDepth:
    # Line 163
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 162
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 163
    lw	$at,__glBeginMode
    # Line 162
    lui	$v1,0xd
    addiu	$v1,$v1,23152
    # Line 163
    beq	$at,$v0,.L0db28c98
    # Line 162
    addu	$gp,$t9,$v1
    # Line 163
    dmtc1	$zero,$f4
    c.lt.d	$f12,$f4
    nop
    bc1f	.L0db28c64
    # Line 168
    li	$at,2
    # Line 165
    mov.d	$f12,$f4
.L0db28c64:
    ldc1	$f4,_lit8_3ff0000000000000
    c.lt.d	$f4,$f12
    nop
    bc1f	.L0db28c7c
    ld	$gp,0($sp)
    # Line 166
    mov.d	$f12,$f4
.L0db28c7c:
    # Line 167
    sdc1	$f12,1544($a1)
    # Line 168
    sw	$at,__glBeginMode
    lw	$a0,11828($a1)
    # Line 169
    addiu	$sp,$sp,32
    # Line 168
    ori	$a0,$a0,0x1
    # Line 169
    jr	$ra
    # Line 168
    sw	$a0,11828($a1)
.L0db28c98:
    # Line 163
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_ClearDepth

# Function: __glim_ClearIndex
# Declared: Line 171 (Source lines: 172-177)
# Address: 0x0db28cb8 - 0x0db28d40 (Size: 136 bytes, Frame: 32)
.globl __glim_ClearIndex
.ent __glim_ClearIndex
__glim_ClearIndex:
    # Line 173
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 172
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 173
    lw	$at,__glBeginMode
    # Line 172
    lui	$v1,0xd
    addiu	$v1,$v1,23008
    # Line 173
    beq	$at,$v0,.L0db28d20
    # Line 172
    addu	$gp,$t9,$v1
    # Line 175
    lwc1	$f1,_lit_41800000
    mul.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    lw	$at,30788($a1)
    mfc1	$a0,$f1
    sll	$at,$at,0x4
    ori	$at,$at,0xf
    and	$a0,$a0,$at
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f1,_lit_3d800000
    mul.s	$f0,$f0,$f1
    ld	$gp,0($sp)
    # Line 177
    addiu	$sp,$sp,32
    jr	$ra
    # Line 176
    swc1	$f0,1776($a1)
.L0db28d20:
    # Line 173
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_ClearIndex

# Function: __glim_ClearStencil
# Declared: Line 179 (Source lines: 180-185)
# Address: 0x0db28d40 - 0x0db28db8 (Size: 120 bytes, Frame: 32)
.globl __glim_ClearStencil
.ent __glim_ClearStencil
__glim_ClearStencil:
    # Line 181
    lw	$a2,__glCurrentContext
    li	$a3,1
    # Line 180
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 181
    lw	$at,__glBeginMode
    # Line 180
    lui	$v0,0xd
    addiu	$v0,$v0,22872
    # Line 181
    beq	$at,$a3,.L0db28d98
    # Line 180
    addu	$gp,$t9,$v0
    # Line 184
    li	$a1,2
    # Line 183
    lw	$at,3132($a2)
    sllv	$at,$a3,$at
    addiu	$at,$at,-1
    and	$at,$at,$a0
    sh	$at,1572($a2)
    # Line 184
    sw	$a1,__glBeginMode
    lw	$v1,11828($a2)
    ld	$gp,0($sp)
    # Line 185
    addiu	$sp,$sp,32
    # Line 184
    ori	$v1,$v1,0x1
    # Line 185
    jr	$ra
    # Line 184
    sw	$v1,11828($a2)
.L0db28d98:
    # Line 181
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_ClearStencil

# Function: __glim_ColorMask
# Declared: Line 187 (Source lines: 188-196)
# Address: 0x0db28db8 - 0x0db28e2c (Size: 116 bytes, Frame: 48)
.globl __glim_ColorMask
.ent __glim_ColorMask
__glim_ColorMask:
    # Line 189
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 188
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 189
    lw	$at,__glBeginMode
    # Line 188
    lui	$v1,0xd
    addiu	$v1,$v1,22752
    # Line 189
    beq	$at,$v0,.L0db28e0c
    # Line 188
    addu	$gp,$t9,$v1
    # Line 195
    li	$a4,2
    # Line 191
    sb	$a0,1784($a5)
    # Line 192
    sb	$a1,1785($a5)
    # Line 193
    sb	$a2,1786($a5)
    # Line 194
    sb	$a3,1787($a5)
    # Line 195
    sw	$a4,__glBeginMode
    lw	$a0,11828($a5)
    ld	$gp,0($sp)
    # Line 196
    addiu	$sp,$sp,48
    # Line 195
    ori	$a0,$a0,0x1
    # Line 196
    jr	$ra
    # Line 195
    sw	$a0,11828($a5)
.L0db28e0c:
    # Line 189
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ColorMask

# Function: __glim_ColorMaterial
# Declared: Line 198 (Source lines: 199-230)
# Address: 0x0db28e2c - 0x0db28f4c (Size: 288 bytes, Frame: 48)
.globl __glim_ColorMaterial
.ent __glim_ColorMaterial
__glim_ColorMaterial:
    # Line 200
    li	$v0,1
    # Line 199
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 200
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 199
    lui	$v1,0xd
    addiu	$v1,$v1,22636
    # Line 200
    beq	$at,$v0,.L0db28f28
    # Line 199
    addu	$gp,$t9,$v1
    # Line 200
    li	$a2,1028
    beq	$a0,$a2,.L0db28e94
    li	$at,1029
    beq	$a0,$at,.L0db28e94
    li	$v0,1032
    beq	$a0,$v0,.L0db28e98
    # Line 210
    li	$v1,4608
    # Line 208
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 209
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db28e94:
    # Line 210
    li	$v1,4608
.L0db28e98:
    beq	$a1,$v1,.L0db28ee4
    li	$a2,4609
    beq	$a1,$a2,.L0db28ee4
    li	$at,4610
    beq	$a1,$at,.L0db28ee4
    li	$v0,5632
    beq	$a1,$v0,.L0db28ee4
    li	$v1,5634
    beql	$a1,$v1,.L0db28ee8
    # Line 224
    lw	$a2,1696($s0)
    # Line 220
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 221
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db28ee4:
    # Line 224
    lw	$a2,1696($s0)
.L0db28ee8:
    sw	$a1,1300($s0)
    andi	$a2,$a2,0x80
    beqz	$a2,.L0db28f18
    # Line 223
    sw	$a0,1296($s0)
    # Line 227
    lw	$t9,11864($s0)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 228
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0db28f18:
    ld	$gp,0($sp)
    # Line 230
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db28f28:
    # Line 200
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ColorMaterial

# Function: __glim_CullFace
# Declared: Line 232 (Source lines: 233-247)
# Address: 0x0db28f4c - 0x0db28fec (Size: 160 bytes, Frame: 32)
.globl __glim_CullFace
.ent __glim_CullFace
__glim_CullFace:
    # Line 234
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 233
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 234
    lw	$at,__glBeginMode
    # Line 233
    lui	$v1,0xd
    addiu	$v1,$v1,22348
    # Line 234
    beq	$at,$v0,.L0db28fcc
    # Line 233
    addu	$gp,$t9,$v1
    # Line 234
    li	$a1,1028
    beq	$a0,$a1,.L0db28fa8
    li	$at,1029
    beq	$a0,$at,.L0db28fa8
    li	$v0,1032
    beq	$a0,$v0,.L0db28fa8
    # Line 242
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 243
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db28fa8:
    # Line 245
    sw	$a0,468($a2)
    # Line 246
    li	$a1,2
    sw	$a1,__glBeginMode
    lw	$v1,11828($a2)
    ld	$gp,0($sp)
    # Line 247
    addiu	$sp,$sp,32
    # Line 246
    ori	$v1,$v1,0x4
    # Line 247
    jr	$ra
    # Line 246
    sw	$v1,11828($a2)
.L0db28fcc:
    # Line 234
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_CullFace

# Function: __glim_DepthFunc
# Declared: Line 249 (Source lines: 250-297)
# Address: 0x0db28fec - 0x0db2918c (Size: 416 bytes, Frame: 48)
.globl __glim_DepthFunc
.ent __glim_DepthFunc
__glim_DepthFunc:
    # Line 251
    li	$v0,1
    # Line 250
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 251
    lw	$s1,__glCurrentContext
    sd	$s0,16($sp)
    # Line 250
    move	$s0,$a0
    sd	$gp,0($sp)
    # Line 251
    lw	$at,__glBeginMode
    # Line 250
    lui	$v1,0xd
    addiu	$v1,$v1,22188
    # Line 251
    beq	$at,$v0,.L0db2915c
    # Line 250
    addu	$gp,$t9,$v1
    # Line 253
    sltiu	$a1,$s0,512
    bnez	$a1,.L0db2908c
    sltiu	$at,$s0,520
    beqz	$at,.L0db29090
    # Line 254
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 255
    lw	$a2,31380($s1)
    lui	$a4,0xff00
    beq	$a4,$a2,.L0db290b4
    # Line 264
    li	$at,516
    # Line 269
    lui	$a0,0x100
.L0db29044:
    bne	$a0,$a2,.L0db29060
    # Line 279
    li	$v1,515
    li	$v0,513
    beql	$s0,$v0,.L0db290d0
    lw	$v1,1696($s1)
    beql	$s0,$v1,.L0db290d0
    lw	$v1,1696($s1)
.L0db29060:
    # Line 294
    sw	$s0,1536($s1)
.L0db29064:
    # Line 296
    li	$a1,2
    sw	$a1,__glBeginMode
    lw	$a0,11828($s1)
    ld	$gp,0($sp)
    # Line 297
    ld	$s0,16($sp)
    # Line 296
    ori	$a0,$a0,0x80
    sw	$a0,11828($s1)
    # Line 297
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2908c:
    # Line 254
    # lw $t9, -27320($gp) # &__glSetError
.L0db29090:
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,0($sp)
    # Line 255
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db290b4:
    # Line 264
    beq	$s0,$at,.L0db2910c
    li	$v0,518
    beq	$s0,$v0,.L0db2910c
    # Line 269
    lui	$a0,0x100
    b	.L0db29044
    nop
    # Line 279
    lw	$v1,1696($s1)
.L0db290d0:
    andi	$v1,$v1,0x10
    beqzl	$v1,.L0db29064
    # Line 294
    sw	$s0,1536($s1)
    # Line 279
    lbu	$a1,3109($s1)
    beqzl	$a1,.L0db29064
    # Line 294
    sw	$s0,1536($s1)
    # Line 284
    lw	$a2,31360($s1)
    addiu	$a1,$s1,31280
    lw	$t9,31388($s1)
    move	$a0,$s1
    sd	$ra,24($sp)
    jalr	$t9
    # Line 283
    sw	$a4,31380($s1)
    b	.L0db29060
    ld	$ra,24($sp)
.L0db2910c:
    # Line 264
    lw	$at,1696($s1)
    andi	$at,$at,0x10
    beqz	$at,.L0db29184
    lui	$a0,0x100
    lbu	$v0,3109($s1)
    beqz	$v0,.L0db29044
    nop
    # Line 269
    lw	$a2,31360($s1)
    addiu	$a1,$s1,31280
    move	$a0,$s1
    lw	$t9,31388($s1)
    sd	$ra,24($sp)
    lui	$v1,0x100
    jalr	$t9
    # Line 268
    sw	$v1,31380($s1)
    lui	$a0,0x100
    lui	$a4,0xff00
    # Line 269
    lw	$a2,31380($s1)
    b	.L0db29044
    ld	$ra,24($sp)
.L0db2915c:
    # Line 251
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db29184:
    b	.L0db29044
    # Line 269
    lui	$a0,0x100
.end __glim_DepthFunc

# Function: __glim_DepthMask
# Declared: Line 299 (Source lines: 300-317)
# Address: 0x0db2918c - 0x0db29250 (Size: 196 bytes, Frame: 48)
.globl __glim_DepthMask
.ent __glim_DepthMask
__glim_DepthMask:
    # Line 301
    li	$v0,1
    # Line 300
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 301
    lw	$s1,__glCurrentContext
    sd	$s5,0($sp)
    # Line 300
    move	$s5,$a0
    sd	$gp,8($sp)
    # Line 301
    lw	$at,__glBeginMode
    # Line 300
    lui	$v1,0xd
    addiu	$v1,$v1,21772
    # Line 301
    beq	$at,$v0,.L0db29214
    # Line 300
    addu	$gp,$t9,$v1
    # Line 301
    lw	$a1,1696($s1)
    andi	$a1,$a1,0x4000
    beqzl	$a1,.L0db291ec
    # Line 314
    sb	$s5,1540($s1)
    # Line 301
    beqz	$s5,.L0db2923c
    # Line 310
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 301
    lbu	$at,1540($s1)
    beql	$at,$s5,.L0db291ec
    # Line 314
    sb	$s5,1540($s1)
    # Line 307
    lw	$v0,31360($s1)
    sw	$v0,31364($s1)
.L0db291e8:
    # Line 314
    sb	$s5,1540($s1)
.L0db291ec:
    # Line 316
    li	$a0,2
    sw	$a0,__glBeginMode
    lw	$v1,11828($s1)
    ld	$gp,8($sp)
    # Line 317
    ld	$s5,0($sp)
    # Line 316
    ori	$v1,$v1,0x80
    sw	$v1,11828($s1)
    # Line 317
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db29214:
    # Line 301
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2923c:
    sd	$ra,24($sp)
    # Line 310
    jalr	$t9
    move	$a0,$s1
    b	.L0db291e8
    ld	$ra,24($sp)
.end __glim_DepthMask

# Function: __glim_DrawBuffer
# Declared: Line 319 (Source lines: 320-369)
# Address: 0x0db29250 - 0x0db2943c (Size: 492 bytes, Frame: 32)
.globl __glim_DrawBuffer
.ent __glim_DrawBuffer
__glim_DrawBuffer:
    # Line 322
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 320
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 322
    lw	$at,__glBeginMode
    # Line 320
    lui	$v1,0xd
    addiu	$v1,$v1,21576
    # Line 322
    beq	$at,$v0,.L0db2941c
    # Line 320
    addu	$gp,$t9,$v1
    # Line 322
    sltiu	$a1,$a0,1030
    bnez	$a1,.L0db292bc
    # Line 324
    sltiu	$at,$a0,1031
    beqz	$at,.L0db29318
    sltiu	$v1,$a0,1034
.L0db29288:
    # Line 340
    lbu	$v0,3106($a2)
    beqz	$v0,.L0db293fc
    # Line 343
    li	$v1,1032
    sw	$v1,1788($a2)
.L0db29298:
    # Line 367
    sw	$a0,1792($a2)
    # Line 368
    li	$a1,2
    sw	$a1,__glBeginMode
    lw	$a0,11828($a2)
    ld	$gp,0($sp)
    # Line 369
    addiu	$sp,$sp,32
    # Line 368
    ori	$a0,$a0,0x1
    # Line 369
    jr	$ra
    # Line 368
    sw	$a0,11828($a2)
.L0db292bc:
    # Line 324
    sltiu	$at,$a0,1026
    bnez	$at,.L0db292fc
    sltiu	$v0,$a0,1027
    bnez	$v0,.L0db292e8
    sltiu	$v1,$a0,1028
    bnez	$v1,.L0db293d0
    sltiu	$a1,$a0,1029
    bnez	$a1,.L0db2930c
    li	$at,1029
    bne	$a0,$at,.L0db29388
    # Line 364
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db292e8:
    # Line 348
    lbu	$v0,3106($a2)
    beqz	$v0,.L0db293b0
    # Line 351
    li	$v1,1029
    # Line 352
    b	.L0db29298
    # Line 351
    sw	$v1,1788($a2)
.L0db292fc:
    # Line 324
    sltiu	$a1,$a0,1024
    bnez	$a1,.L0db29344
    sltiu	$at,$a0,1025
    beqz	$at,.L0db293a4
.L0db2930c:
    # Line 336
    li	$v0,1028
    # Line 337
    b	.L0db29298
    # Line 336
    sw	$v0,1788($a2)
.L0db29318:
    # Line 324
    bnez	$v1,.L0db29354
    sltiu	$a1,$a0,1035
    beqz	$a1,.L0db293e4
    sltiu	$at,$a0,1036
    # Line 358
    lw	$v0,3180($a2)
.L0db2932c:
    addiu	$at,$a0,-1033
    slt	$at,$at,$v0
    beqz	$at,.L0db293b4
    # Line 332
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 362
    b	.L0db29298
    # Line 361
    sw	$a0,1788($a2)
.L0db29344:
    # Line 324
    bnez	$a0,.L0db29388
    # Line 364
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 327
    b	.L0db29298
    # Line 326
    sw	$zero,1788($a2)
.L0db29354:
    # Line 324
    sltiu	$v1,$a0,1032
    bnez	$v1,.L0db29378
    sltiu	$a1,$a0,1033
    bnez	$a1,.L0db29288
    li	$at,1033
    bne	$a0,$at,.L0db29388
    # Line 364
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2932c
    # Line 358
    lw	$v0,3180($a2)
.L0db29378:
    # Line 324
    li	$v0,1031
    beq	$a0,$v0,.L0db293b0
    sd	$ra,8($sp)
.L0db29384:
    # Line 364
    # lw $t9, -27320($gp) # &__glSetError
.L0db29388:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 365
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db293a4:
    # Line 324
    li	$v1,1025
    bne	$a0,$v1,.L0db29384
    sd	$ra,8($sp)
.L0db293b0:
    # Line 332
    # lw $t9, -27320($gp) # &__glSetError
.L0db293b4:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 333
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db293d0:
    # Line 324
    li	$a1,1027
    bne	$a0,$a1,.L0db29388
    # Line 364
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db293b0
    sd	$ra,8($sp)
.L0db293e4:
    # Line 324
    bnez	$at,.L0db29408
    sltiu	$v0,$a0,1037
    beqz	$v0,.L0db29388
    # Line 364
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2932c
    # Line 358
    lw	$v0,3180($a2)
.L0db293fc:
    # Line 341
    li	$v1,1028
    b	.L0db29298
    sw	$v1,1788($a2)
.L0db29408:
    # Line 324
    li	$a1,1035
    bne	$a0,$a1,.L0db29388
    # Line 364
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2932c
    # Line 358
    lw	$v0,3180($a2)
.L0db2941c:
    # Line 322
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_DrawBuffer

# Function: __glim_Fogfv
# Declared: Line 371 (Source lines: 372-436)
# Address: 0x0db2943c - 0x0db29668 (Size: 556 bytes, Frame: 48)
.globl __glim_Fogfv
.ent __glim_Fogfv
__glim_Fogfv:
    # Line 372
    move	$a2,$a1
    # Line 373
    li	$a4,1
    # Line 372
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 373
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 372
    lui	$v0,0xd
    addiu	$v0,$v0,21084
    # Line 373
    beq	$at,$a4,.L0db29620
    # Line 372
    addu	$gp,$t9,$v0
    # Line 375
    li	$v1,2918
    beq	$a0,$v1,.L0db295fc
    li	$a3,2914
    beq	$a0,$a3,.L0db29510
    li	$at,2916
    beq	$a0,$at,.L0db29594
    li	$v0,2915
    beq	$a0,$v0,.L0db295b0
    li	$v1,2913
    beq	$a0,$v1,.L0db295c4
    li	$a3,2917
    beq	$a0,$a3,.L0db294bc
    # Line 416
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 417
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db294bc:
    # Line 404
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a4,$f0
    li	$at,2048
    sll	$a4,$a4,0x0
    beq	$a4,$at,.L0db29584
    move	$a0,$a4
    li	$a1,9729
    li	$at,2049
    beql	$a0,$at,.L0db2958c
    # Line 408
    move	$a0,$a4
    # Line 404
    beq	$a1,$a0,.L0db29588
    # Line 411
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 412
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db29510:
    # Line 380
    mtc1	$zero,$f1
    lwc1	$f4,0($a2)
    c.lt.s	$f4,$f1
    nop
    bc1t	.L0db29644
    # Line 385
    li	$a1,9729
    lw	$a0,1492($s0)
    # Line 384
    swc1	$f4,1512($s0)
.L0db29530:
    # Line 418
    bne	$a1,$a0,.L0db29560
    # Line 431
    mtc1	$zero,$f1
    # Line 418
    lwc1	$f4,1520($s0)
    lwc1	$f5,1516($s0)
    c.eq.s	$f5,$f4
    nop
    bc1t	.L0db295a8
    nop
    # Line 425
    sub.s	$f3,$f4,$f5
    lwc1	$f2,3284($s0)
    div.s	$f2,$f2,$f3
    swc1	$f2,1524($s0)
.L0db29560:
    # Line 435
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11828($s0)
    ld	$gp,0($sp)
    ori	$v0,$v0,0x1
    sw	$v0,11828($s0)
    # Line 436
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db29584:
    # Line 404
    li	$a1,9729
.L0db29588:
    # Line 408
    move	$a0,$a4
.L0db2958c:
    b	.L0db29530
    sw	$a4,1492($s0)
.L0db29594:
    # Line 389
    li	$a1,9729
    # Line 388
    lwc1	$f0,0($a2)
    # Line 389
    lw	$a0,1492($s0)
    b	.L0db29530
    # Line 388
    swc1	$f0,1520($s0)
.L0db295a8:
    b	.L0db29560
    # Line 431
    swc1	$f1,1524($s0)
.L0db295b0:
    # Line 393
    li	$a1,9729
    # Line 392
    lwc1	$f2,0($a2)
    # Line 393
    lw	$a0,1492($s0)
    b	.L0db29530
    # Line 392
    swc1	$f2,1516($s0)
.L0db295c4:
    # Line 400
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    lw	$a1,3136($s0)
    mfc1	$a0,$f0
    sllv	$a1,$a4,$a1
    addiu	$a1,$a1,-1
    and	$a0,$a0,$a1
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 402
    li	$a1,9729
    lw	$a0,1492($s0)
    b	.L0db29530
    # Line 400
    swc1	$f3,1528($s0)
.L0db295fc:
    # Line 377
    # lw $t9, -26704($gp) # &__glClampAndScaleColorf
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glClampAndScaleColorf
    addiu	$a1,$s0,1496
    # Line 378
    li	$a1,9729
    lw	$a0,1492($s0)
    b	.L0db29530
    ld	$ra,16($sp)
.L0db29620:
    # Line 373
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db29644:
    # Line 381
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 382
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Fogfv

# Function: __glim_Fogf
# Declared: Line 438 (Source lines: 439-453)
# Address: 0x0db29668 - 0x0db296e8 (Size: 128 bytes, Frame: 32)
.globl __glim_Fogf
.ent __glim_Fogf
__glim_Fogf:
    # Line 439
    li	$at,2913
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,20528
    beq	$a0,$at,.L0db296c8
    addu	$gp,$t9,$v0
    li	$v1,2914
    beq	$a0,$v1,.L0db296c8
    li	$a1,2915
    beq	$a0,$a1,.L0db296c8
    li	$at,2916
    beq	$a0,$at,.L0db296c8
    li	$v0,2917
    beq	$a0,$v0,.L0db296c8
    sd	$ra,8($sp)
    # Line 450
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 451
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db296c8:
    # Line 447
    # lw $t9, -27980($gp) # &__glim_Fogfv
    sd	$ra,8($sp)
    bal __glim_Fogfv
    addiu	$a1,$sp,24
    # Line 453
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Fogf

# Function: __glim_Fogiv
# Declared: Line 455 (Source lines: 456-515)
# Address: 0x0db296e8 - 0x0db29918 (Size: 560 bytes, Frame: 48)
.globl __glim_Fogiv
.ent __glim_Fogiv
__glim_Fogiv:
    # Line 456
    move	$a2,$a1
    # Line 457
    li	$a5,1
    # Line 456
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 457
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 456
    lui	$v0,0xd
    addiu	$v0,$v0,20400
    # Line 457
    beq	$at,$a5,.L0db298d0
    # Line 456
    addu	$gp,$t9,$v0
    # Line 459
    li	$v1,2918
    beq	$a0,$v1,.L0db298ac
    li	$a3,2914
    beq	$a0,$a3,.L0db297b0
    li	$at,2916
    beq	$a0,$at,.L0db29834
    li	$v0,2915
    beq	$a0,$v0,.L0db2985c
    li	$v1,2913
    beq	$a0,$v1,.L0db2987c
    li	$a3,2917
    beq	$a0,$a3,.L0db29768
    # Line 495
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 496
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db29768:
    # Line 483
    lw	$a1,0($a2)
    li	$at,2048
    beq	$a1,$at,.L0db29824
    move	$a0,$a1
    li	$a4,9729
    li	$v0,2049
    beql	$a0,$v0,.L0db2982c
    # Line 487
    move	$a0,$a1
    # Line 483
    beq	$a4,$a0,.L0db29828
    # Line 490
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 491
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db297b0:
    # Line 464
    lw	$a1,0($a2)
    bltz	$a1,.L0db298f4
    # Line 469
    li	$a4,9729
    # Line 468
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 469
    lw	$a0,1492($s0)
    # Line 468
    swc1	$f0,1512($s0)
.L0db297d0:
    # Line 497
    bne	$a4,$a0,.L0db29804
    # Line 514
    li	$a0,2
    # Line 497
    lwc1	$f5,1520($s0)
    lwc1	$f4,1516($s0)
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0db29854
    # Line 510
    mtc1	$zero,$f0
    # Line 504
    sub.s	$f2,$f5,$f4
    lwc1	$f1,3284($s0)
    div.s	$f1,$f1,$f2
    swc1	$f1,1524($s0)
.L0db29800:
    # Line 514
    li	$a0,2
.L0db29804:
    sw	$a0,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x1
    sw	$v1,11828($s0)
    # Line 515
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db29824:
    # Line 483
    li	$a4,9729
.L0db29828:
    # Line 487
    move	$a0,$a1
.L0db2982c:
    b	.L0db297d0
    sw	$a1,1492($s0)
.L0db29834:
    # Line 473
    li	$a4,9729
    # Line 472
    lw	$a3,0($a2)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 473
    lw	$a0,1492($s0)
    b	.L0db297d0
    # Line 472
    swc1	$f3,1520($s0)
.L0db29854:
    b	.L0db29800
    # Line 510
    swc1	$f0,1524($s0)
.L0db2985c:
    # Line 476
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 477
    lw	$a0,1492($s0)
    li	$a4,9729
    b	.L0db297d0
    # Line 476
    swc1	$f1,1516($s0)
.L0db2987c:
    # Line 481
    li	$a4,9729
    # Line 479
    lw	$v0,3136($s0)
    lw	$at,0($a2)
    sllv	$v0,$a5,$v0
    addiu	$v0,$v0,-1
    and	$at,$at,$v0
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 481
    lw	$a0,1492($s0)
    b	.L0db297d0
    # Line 479
    swc1	$f2,1528($s0)
.L0db298ac:
    # Line 461
    # lw $t9, -26692($gp) # &__glClampAndScaleColori
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glClampAndScaleColori
    addiu	$a1,$s0,1496
    # Line 462
    li	$a4,9729
    lw	$a0,1492($s0)
    b	.L0db297d0
    ld	$ra,16($sp)
.L0db298d0:
    # Line 457
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db298f4:
    # Line 465
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 466
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Fogiv

# Function: __glim_Fogi
# Declared: Line 517 (Source lines: 518-532)
# Address: 0x0db29918 - 0x0db29998 (Size: 128 bytes, Frame: 32)
.globl __glim_Fogi
.ent __glim_Fogi
__glim_Fogi:
    # Line 518
    li	$at,2913
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,19840
    beq	$a0,$at,.L0db29978
    addu	$gp,$t9,$v0
    li	$v1,2914
    beq	$a0,$v1,.L0db29978
    li	$a1,2915
    beq	$a0,$a1,.L0db29978
    li	$at,2916
    beq	$a0,$at,.L0db29978
    li	$v0,2917
    beq	$a0,$v0,.L0db29978
    sd	$ra,8($sp)
    # Line 529
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 530
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db29978:
    # Line 526
    # lw $t9, -27972($gp) # &__glim_Fogiv
    sd	$ra,8($sp)
    bal __glim_Fogiv
    addiu	$a1,$sp,28
    # Line 532
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Fogi

# Function: __glim_FrontFace
# Declared: Line 534 (Source lines: 535-548)
# Address: 0x0db29998 - 0x0db29a30 (Size: 152 bytes, Frame: 32)
.globl __glim_FrontFace
.ent __glim_FrontFace
__glim_FrontFace:
    # Line 536
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 535
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 536
    lw	$at,__glBeginMode
    # Line 535
    lui	$v1,0xd
    addiu	$v1,$v1,19712
    # Line 536
    beq	$at,$v0,.L0db29a10
    # Line 535
    addu	$gp,$t9,$v1
    # Line 536
    li	$a1,2304
    beq	$a0,$a1,.L0db299ec
    li	$at,2305
    beq	$a0,$at,.L0db299ec
    # Line 543
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 544
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db299ec:
    # Line 546
    sw	$a0,472($a2)
    # Line 547
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11828($a2)
    ld	$gp,0($sp)
    # Line 548
    addiu	$sp,$sp,32
    # Line 547
    ori	$v0,$v0,0x4
    # Line 548
    jr	$ra
    # Line 547
    sw	$v0,11828($a2)
.L0db29a10:
    # Line 536
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_FrontFace

# Function: __glim_Hint
# Declared: Line 550 (Source lines: 551-589)
# Address: 0x0db29a30 - 0x0db29b90 (Size: 352 bytes, Frame: 32)
.globl __glim_Hint
.ent __glim_Hint
__glim_Hint:
    # Line 553
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 551
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 553
    lw	$at,__glBeginMode
    # Line 551
    lui	$v1,0xd
    addiu	$v1,$v1,19560
    # Line 553
    beq	$at,$v0,.L0db29b70
    # Line 551
    addu	$gp,$t9,$v1
    # Line 553
    li	$a2,4352
    beq	$a1,$a2,.L0db29a90
    li	$at,4353
    beq	$a1,$at,.L0db29a90
    li	$v0,4354
    beq	$a1,$v0,.L0db29a94
    # Line 565
    li	$v1,3152
    # Line 562
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 563
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db29a90:
    # Line 565
    li	$v1,3152
.L0db29a94:
    beq	$a0,$v1,.L0db29afc
    li	$a2,3153
    beq	$a0,$a2,.L0db29b04
    li	$at,3154
    beq	$a0,$at,.L0db29b28
    li	$v0,3155
    beq	$a0,$v0,.L0db29b4c
    li	$v1,3156
    beq	$a0,$v1,.L0db29ad8
    # Line 585
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 586
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db29ad8:
    # Line 582
    sw	$a1,1812($a3)
.L0db29adc:
    # Line 588
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$a0,11828($a3)
    ld	$gp,0($sp)
    # Line 589
    addiu	$sp,$sp,32
    # Line 588
    ori	$a0,$a0,0x1
    # Line 589
    jr	$ra
    # Line 588
    sw	$a0,11828($a3)
.L0db29afc:
    # Line 568
    b	.L0db29adc
    # Line 567
    sw	$a1,1796($a3)
.L0db29b04:
    # Line 571
    li	$v0,2
    # Line 570
    sw	$a1,1800($a3)
    # Line 571
    sw	$v0,__glBeginMode
    lw	$at,11828($a3)
    ld	$gp,0($sp)
    # Line 572
    addiu	$sp,$sp,32
    # Line 571
    ori	$at,$at,0x8
    # Line 572
    jr	$ra
    # Line 571
    sw	$at,11828($a3)
.L0db29b28:
    # Line 574
    sw	$a1,1804($a3)
    # Line 575
    li	$a0,2
    sw	$a0,__glBeginMode
    lw	$v1,11828($a3)
    ld	$gp,0($sp)
    # Line 576
    addiu	$sp,$sp,32
    # Line 575
    ori	$v1,$v1,0x2
    # Line 576
    jr	$ra
    # Line 575
    sw	$v1,11828($a3)
.L0db29b4c:
    # Line 579
    li	$at,2
    # Line 578
    sw	$a1,1808($a3)
    # Line 579
    sw	$at,__glBeginMode
    lw	$a2,11828($a3)
    ld	$gp,0($sp)
    # Line 580
    addiu	$sp,$sp,32
    # Line 579
    ori	$a2,$a2,0x4
    # Line 580
    jr	$ra
    # Line 579
    sw	$a2,11828($a3)
.L0db29b70:
    # Line 553
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Hint

# Function: __glim_IndexMask
# Declared: Line 591 (Source lines: 592-598)
# Address: 0x0db29b90 - 0x0db29c00 (Size: 112 bytes, Frame: 32)
.globl __glim_IndexMask
.ent __glim_IndexMask
__glim_IndexMask:
    # Line 593
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 592
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 593
    lw	$at,__glBeginMode
    # Line 592
    lui	$v1,0xd
    addiu	$v1,$v1,19208
    # Line 593
    beq	$at,$v0,.L0db29be0
    # Line 592
    addu	$gp,$t9,$v1
    # Line 597
    li	$a1,2
    # Line 595
    lw	$at,30788($a2)
    and	$at,$at,$a0
    # Line 596
    sw	$at,1780($a2)
    # Line 597
    sw	$a1,__glBeginMode
    lw	$a0,11828($a2)
    ld	$gp,0($sp)
    # Line 598
    addiu	$sp,$sp,32
    # Line 597
    ori	$a0,$a0,0x1
    # Line 598
    jr	$ra
    # Line 597
    sw	$a0,11828($a2)
.L0db29be0:
    # Line 593
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_IndexMask

# Function: __glTransformLightDirection
# Declared: Line 600 (Source lines: 601-625)
# Address: 0x0db29c00 - 0x0db29d20 (Size: 288 bytes, Frame: 224)
.globl __glTransformLightDirection
.ent __glTransformLightDirection
__glTransformLightDirection:
    # Line 604
    lw	$v1,1488($a0)
    li	$at,116
    subu	$v1,$a1,$v1
    div	$zero,$v1,$at
    # Line 607
    lwc1	$f8,80($a1)
    # Line 601
    addiu	$sp,$sp,-96
    # Line 607
    swc1	$f8,0($sp)
    # Line 608
    lwc1	$f6,84($a1)
    sd	$s0,40($sp)
    sd	$gp,48($sp)
    swc1	$f6,4($sp)
    # Line 601
    lui	$v0,0xd
    # Line 609
    lwc1	$f5,88($a1)
    # Line 601
    addiu	$v0,$v0,19096
    addu	$gp,$t9,$v0
    # Line 609
    swc1	$f5,8($sp)
    mtc1	$zero,$f9
    lwc1	$f7,60($a1)
    # Line 601
    move	$s0,$a0
    # Line 604
    teq	$at,$zero,0x7
    # Line 609
    c.eq.s	$f7,$f9
    sd	$a1,32($sp)
    # Line 604
    mflo	$a3
    # Line 609
    bc1t	.L0db29c94
    ld	$a2,32($sp)
    # Line 611
    lwc1	$f1,52($a2)
    lwc1	$f4,48($a2)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,56($a2)
    mul.s	$f4,$f4,$f8
    mul.s	$f0,$f0,$f5
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    sd	$s2,56($sp)
    neg.s	$f4,$f4
    b	.L0db29c9c
    div.s	$f4,$f4,$f7
.L0db29c94:
    # Line 614
    mov.s	$f4,$f9
    sd	$s2,56($sp)
.L0db29c9c:
    # Line 616
    swc1	$f4,12($sp)
    # Line 618
    lw	$s2,29712($s0)
    lbu	$at,268($s2)
    sd	$ra,64($sp)
    beqz	$at,.L0db29cc4
    sd	$a3,24($sp)
    # Line 620
    lw	$t9,11972($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
.L0db29cc4:
    # Line 622
    addiu	$a2,$s2,88
    ld	$a0,32($sp)
    lw	$t9,168($s2)
    addiu	$a1,$sp,0
    addiu	$a0,$a0,80
    jalr	$t9
    sd	$a0,16($sp)
    ld	$s2,56($sp)
    ld	$a1,16($sp)
    # Line 623
    ld	$a3,24($sp)
    lw	$t9,11976($s0)
    lw	$a0,28152($s0)
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x5
    addu	$a0,$a0,$a2
    jalr	$t9
    addiu	$a0,$a0,132
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$gp,48($sp)
    # Line 625
    jr	$ra
    addiu	$sp,$sp,96
.end __glTransformLightDirection

# Function: __glim_Lightfv
# Declared: Line 627 (Source lines: 628-706)
# Address: 0x0db29d20 - 0x0db29ff0 (Size: 720 bytes, Frame: 192)
.globl __glim_Lightfv
.ent __glim_Lightfv
__glim_Lightfv:
    # Line 628
    move	$a4,$a2
    # Line 631
    li	$v0,1
    # Line 628
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 631
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 628
    lui	$v1,0xd
    addiu	$v1,$v1,18808
    # Line 631
    beq	$at,$v0,.L0db29fcc
    # Line 628
    addu	$gp,$t9,$v1
    # Line 634
    lw	$at,3328($s0)
    # Line 691
    mtc1	$zero,$f2
    # Line 634
    addiu	$a3,$a0,-16384
    sltu	$a3,$a3,$at
    beqz	$a3,.L0db29db0
    # Line 697
    mtc1	$zero,$f3
    # Line 640
    addiu	$a2,$a1,-4608
    sltiu	$v0,$a2,10
    la	$a3,sub_0dbf0000
    sll	$a2,$a2,0x2
    lw	$a5,1488($s0)
    addiu	$a3,$a3,-4064
    addu	$a2,$a2,$a3
    sll	$at,$a0,0x3
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    lui	$at,0x1d
    beqz	$v0,.L0db29db0
    subu	$a5,$a5,$at
    lw	$a3,%lo(jtbl_0dbef020)($a2)
    jr	$a3
    # Line 685
    mtc1	$zero,$f1
.L0db29db0:
    # Line 636
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 637
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db29dd4:
    # Line 643
    move	$a0,$s0
    # lw $t9, -26708($gp) # &__glScaleColorf
    move	$a1,$a5
    sd	$ra,16($sp)
    jal	__glScaleColorf
    move	$a2,$a4
    b	.L0db29e10
    ld	$ra,16($sp)
.L0db29df4:
    # Line 649
    move	$a0,$s0
    # lw $t9, -26708($gp) # &__glScaleColorf
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColorf
    addiu	$a1,$a5,32
    ld	$ra,16($sp)
.L0db29e10:
    # Line 705
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11828($s0)
    ld	$gp,0($sp)
    ori	$at,$at,0x20
    sw	$at,11828($s0)
    # Line 706
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db29e34:
    # Line 646
    move	$a0,$s0
    # lw $t9, -26708($gp) # &__glScaleColorf
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColorf
    addiu	$a1,$a5,16
    b	.L0db29e10
    ld	$ra,16($sp)
.L0db29e54:
    # Line 652
    lwc1	$f3,0($a4)
    swc1	$f3,48($a5)
    # Line 653
    lwc1	$f2,4($a4)
    swc1	$f2,52($a5)
    # Line 654
    lwc1	$f1,8($a4)
    swc1	$f1,56($a5)
    # Line 655
    lwc1	$f0,12($a4)
    swc1	$f0,60($a5)
    # Line 660
    lw	$a2,29712($s0)
    # Line 661
    lw	$t9,80($a2)
    addiu	$a1,$a5,48
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$a5,64
    b	.L0db29e10
    ld	$ra,16($sp)
.L0db29e94:
    # Line 664
    lwc1	$f7,0($a4)
    # Line 668
    move	$a1,$a5
    # Line 664
    swc1	$f7,80($a5)
    # Line 668
    move	$a0,$s0
    # Line 665
    lwc1	$f6,4($a4)
    sd	$ra,16($sp)
    # Line 667
    lwc1	$f5,_lit_3f800000
    # Line 665
    swc1	$f6,84($a5)
    # Line 668
    # lw $t9, -27952($gp) # &__glTransformLightDirection
    # Line 666
    lwc1	$f4,8($a4)
    # Line 667
    swc1	$f5,92($a5)
    # Line 668
    bal __glTransformLightDirection
    # Line 666
    swc1	$f4,88($a5)
    b	.L0db29e10
    ld	$ra,16($sp)
.L0db29ed0:
    # Line 671
    mtc1	$zero,$f0
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f0
    nop
    bc1t	.L0db29f70
    lwc1	$f1,_lit_43000000
    c.lt.s	$f1,$f4
    nop
    bc1t	.L0db29f74
    # Line 673
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 677
    b	.L0db29e10
    # Line 676
    swc1	$f4,96($a5)
.L0db29f00:
    # Line 679
    lwc1	$f2,_lit_43340000
    lwc1	$f4,0($a4)
    c.eq.s	$f4,$f2
    nop
    bc1t	.L0db29f40
    mtc1	$zero,$f3
    c.lt.s	$f4,$f3
    nop
    bc1t	.L0db29f38
    lwc1	$f0,_lit_42b40000
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0db29f44
    move	$a0,$zero
.L0db29f38:
    b	.L0db29f44
    li	$a0,1
.L0db29f40:
    move	$a0,$zero
.L0db29f44:
    bnez	$a0,.L0db29f74
    # Line 673
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 683
    b	.L0db29e10
    # Line 682
    swc1	$f4,100($a5)
.L0db29f54:
    # Line 685
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f1
    nop
    bc1t	.L0db29f74
    # Line 673
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 689
    b	.L0db29e10
    # Line 688
    swc1	$f4,104($a5)
.L0db29f70:
    # Line 673
    # lw $t9, -27320($gp) # &__glSetError
.L0db29f74:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 674
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db29f94:
    # Line 691
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f2
    nop
    bc1t	.L0db29f74
    # Line 673
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 695
    b	.L0db29e10
    # Line 694
    swc1	$f4,108($a5)
.L0db29fb0:
    # Line 697
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f3
    nop
    bc1t	.L0db29f74
    # Line 673
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db29e10
    # Line 700
    swc1	$f4,112($a5)
.L0db29fcc:
    # Line 631
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Lightfv

# Function: __glim_Lightf
# Declared: Line 708 (Source lines: 709-723)
# Address: 0x0db29ff0 - 0x0db2a070 (Size: 128 bytes, Frame: 48)
.globl __glim_Lightf
.ent __glim_Lightf
__glim_Lightf:
    # Line 709
    li	$at,4613
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,18088
    beq	$a1,$at,.L0db2a050
    addu	$gp,$t9,$v0
    li	$v1,4614
    beq	$a1,$v1,.L0db2a050
    li	$a2,4615
    beq	$a1,$a2,.L0db2a050
    li	$at,4616
    beq	$a1,$at,.L0db2a050
    li	$v0,4617
    beq	$a1,$v0,.L0db2a050
    sd	$ra,8($sp)
    # Line 720
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 721
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a050:
    # Line 717
    # lw $t9, -27948($gp) # &__glim_Lightfv
    sd	$ra,8($sp)
    bal __glim_Lightfv
    addiu	$a2,$sp,32
    # Line 723
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Lightf

# Function: __glim_Lightiv
# Declared: Line 725 (Source lines: 726-803)
# Address: 0x0db2a070 - 0x0db2a37c (Size: 780 bytes, Frame: 192)
.globl __glim_Lightiv
.ent __glim_Lightiv
__glim_Lightiv:
    # Line 726
    move	$a4,$a2
    # Line 729
    li	$v0,1
    # Line 726
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 729
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 726
    lui	$v1,0xd
    addiu	$v1,$v1,17960
    # Line 729
    beq	$at,$v0,.L0db2a358
    # Line 726
    addu	$gp,$t9,$v1
    # Line 732
    lw	$at,3328($s0)
    addiu	$a3,$a0,-16384
    sltu	$a3,$a3,$at
    beqz	$a3,.L0db2a0f8
    # Line 738
    addiu	$a2,$a1,-4608
    sltiu	$v0,$a2,10
    la	$a3,sub_0dbf0000
    sll	$a2,$a2,0x2
    lw	$a5,1488($s0)
    addiu	$a3,$a3,-4024
    addu	$a2,$a2,$a3
    sll	$at,$a0,0x3
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    lui	$at,0x1d
    beqz	$v0,.L0db2a0f8
    subu	$a5,$a5,$at
    lw	$a3,%lo(jtbl_0dbef048)($a2)
    jr	$a3
    # Line 776
    li	$v0,180
.L0db2a0f8:
    # Line 734
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 735
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db2a11c:
    # Line 741
    move	$a0,$s0
    # lw $t9, -26696($gp) # &__glScaleColori
    move	$a1,$a5
    sd	$ra,16($sp)
    jal	__glScaleColori
    move	$a2,$a4
    b	.L0db2a158
    ld	$ra,16($sp)
.L0db2a13c:
    # Line 744
    move	$a0,$s0
    # lw $t9, -26696($gp) # &__glScaleColori
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColori
    addiu	$a1,$a5,16
    ld	$ra,16($sp)
.L0db2a158:
    # Line 802
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11828($s0)
    ld	$gp,0($sp)
    ori	$at,$at,0x20
    sw	$at,11828($s0)
    # Line 803
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db2a17c:
    # Line 747
    move	$a0,$s0
    # lw $t9, -26696($gp) # &__glScaleColori
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColori
    addiu	$a1,$a5,32
    b	.L0db2a158
    ld	$ra,16($sp)
.L0db2a19c:
    # Line 750
    lw	$a2,0($a4)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,48($a5)
    # Line 751
    lw	$a1,4($a4)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,52($a5)
    # Line 752
    lw	$a0,8($a4)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,56($a5)
    # Line 753
    lw	$v1,12($a4)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,60($a5)
    # Line 757
    lw	$a2,29712($s0)
    # Line 758
    lw	$t9,80($a2)
    sd	$ra,16($sp)
    addiu	$a1,$a5,48
    jalr	$t9
    addiu	$a0,$a5,64
    b	.L0db2a158
    ld	$ra,16($sp)
.L0db2a20c:
    # Line 761
    lw	$a7,0($a4)
    mtc1	$a7,$f6
    nop
    cvt.s.w	$f6,$f6
    swc1	$f6,80($a5)
    # Line 762
    lw	$a6,4($a4)
    mtc1	$a6,$f5
    nop
    cvt.s.w	$f5,$f5
    swc1	$f5,84($a5)
    # Line 763
    lw	$a3,8($a4)
    mtc1	$a3,$f4
    # Line 765
    move	$a1,$a5
    move	$a0,$s0
    # Line 763
    cvt.s.w	$f4,$f4
    # Line 764
    lwc1	$f5,_lit_3f800000
    # Line 765
    # lw $t9, -27952($gp) # &__glTransformLightDirection
    sd	$ra,16($sp)
    # Line 764
    swc1	$f5,92($a5)
    # Line 765
    bal __glTransformLightDirection
    # Line 763
    swc1	$f4,88($a5)
    b	.L0db2a158
    ld	$ra,16($sp)
.L0db2a268:
    # Line 768
    lw	$a0,0($a4)
    bltz	$a0,.L0db2a334
    slti	$at,$a0,129
    beqz	$at,.L0db2a338
    # Line 770
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 773
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 774
    b	.L0db2a158
    # Line 773
    swc1	$f0,96($a5)
.L0db2a290:
    # Line 776
    lw	$a0,0($a4)
    beq	$a0,$v0,.L0db2a318
    move	$a1,$zero
    bltz	$a0,.L0db2a2ac
    slti	$v1,$a0,91
    bnez	$v1,.L0db2a318
    move	$a1,$zero
.L0db2a2ac:
    b	.L0db2a318
    li	$a1,1
.L0db2a2b4:
    # Line 782
    lw	$a0,0($a4)
    bltz	$a0,.L0db2a338
    # Line 770
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 785
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 786
    b	.L0db2a158
    # Line 785
    swc1	$f1,104($a5)
.L0db2a2d4:
    # Line 788
    lw	$a0,0($a4)
    bltz	$a0,.L0db2a338
    # Line 770
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 791
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 792
    b	.L0db2a158
    # Line 791
    swc1	$f2,108($a5)
.L0db2a2f4:
    # Line 794
    lw	$a0,0($a4)
    bltz	$a0,.L0db2a338
    # Line 770
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 797
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    b	.L0db2a158
    swc1	$f3,112($a5)
    # Line 776
    move	$a1,$zero
.L0db2a318:
    bnez	$a1,.L0db2a338
    # Line 770
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 779
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 780
    b	.L0db2a158
    # Line 779
    swc1	$f0,100($a5)
.L0db2a334:
    # Line 770
    # lw $t9, -27320($gp) # &__glSetError
.L0db2a338:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 771
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db2a358:
    # Line 729
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Lightiv

# Function: __glim_Lighti
# Declared: Line 805 (Source lines: 806-820)
# Address: 0x0db2a37c - 0x0db2a3fc (Size: 128 bytes, Frame: 48)
.globl __glim_Lighti
.ent __glim_Lighti
__glim_Lighti:
    # Line 806
    li	$at,4613
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,17180
    beq	$a1,$at,.L0db2a3dc
    addu	$gp,$t9,$v0
    li	$v1,4614
    beq	$a1,$v1,.L0db2a3dc
    li	$a2,4615
    beq	$a1,$a2,.L0db2a3dc
    li	$at,4616
    beq	$a1,$at,.L0db2a3dc
    li	$v0,4617
    beq	$a1,$v0,.L0db2a3dc
    sd	$ra,8($sp)
    # Line 817
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 818
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a3dc:
    # Line 814
    # lw $t9, -27940($gp) # &__glim_Lightiv
    sd	$ra,8($sp)
    bal __glim_Lightiv
    addiu	$a2,$sp,36
    # Line 820
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Lighti

# Function: __glim_LightModelfv
# Declared: Line 822 (Source lines: 823-843)
# Address: 0x0db2a3fc - 0x0db2a508 (Size: 268 bytes, Frame: 48)
.globl __glim_LightModelfv
.ent __glim_LightModelfv
__glim_LightModelfv:
    # Line 823
    move	$a2,$a1
    # Line 825
    li	$v0,1
    # Line 823
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$v1,0xd
    addiu	$v1,$v1,17052
    # Line 825
    lw	$at,__glBeginMode
    lw	$a5,__glCurrentContext
    # Line 823
    addu	$gp,$t9,$v1
    # Line 825
    beq	$at,$v0,.L0db2a4c0
    move	$a4,$a5
    # Line 828
    li	$a3,2899
    beq	$a0,$a3,.L0db2a4e0
    li	$at,2897
    beq	$a0,$at,.L0db2a4a0
    li	$v0,2898
    beq	$a0,$v0,.L0db2a460
    # Line 839
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 840
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a460:
    # Line 836
    li	$v1,1
    mtc1	$zero,$f1
    lwc1	$f0,0($a2)
    c.eq.s	$f0,$f1
    nop
    bc1tl	.L0db2a47c
    move	$v1,$zero
.L0db2a47c:
    sb	$v1,1325($a5)
.L0db2a480:
    # Line 842
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11828($a4)
    ld	$gp,8($sp)
    # Line 843
    addiu	$sp,$sp,48
    # Line 842
    ori	$a0,$a0,0x20
    # Line 843
    jr	$ra
    # Line 842
    sw	$a0,11828($a4)
.L0db2a4a0:
    # Line 833
    mtc1	$zero,$f3
    lwc1	$f2,0($a2)
    c.eq.s	$f2,$f3
    li	$at,1
    bc1tl	.L0db2a4b8
    move	$at,$zero
.L0db2a4b8:
    # Line 834
    b	.L0db2a480
    # Line 833
    sb	$at,1324($a4)
.L0db2a4c0:
    # Line 825
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a4e0:
    sd	$a4,0($sp)
    # Line 830
    move	$a0,$a4
    # lw $t9, -26708($gp) # &__glScaleColorf
    sd	$ra,16($sp)
    move	$a1,$a4
    jal	__glScaleColorf
    addiu	$a1,$a4,1308
    ld	$a4,0($sp)
    b	.L0db2a480
    ld	$ra,16($sp)
.end __glim_LightModelfv

# Function: __glim_LightModelf
# Declared: Line 845 (Source lines: 846-857)
# Address: 0x0db2a508 - 0x0db2a570 (Size: 104 bytes, Frame: 32)
.globl __glim_LightModelf
.ent __glim_LightModelf
__glim_LightModelf:
    # Line 846
    li	$at,2897
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,16784
    beq	$a0,$at,.L0db2a550
    addu	$gp,$t9,$v0
    li	$v1,2898
    beq	$a0,$v1,.L0db2a550
    sd	$ra,8($sp)
    # Line 854
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 855
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2a550:
    # Line 851
    # lw $t9, -27932($gp) # &__glim_LightModelfv
    sd	$ra,8($sp)
    bal __glim_LightModelfv
    addiu	$a1,$sp,24
    # Line 857
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_LightModelf

# Function: __glim_LightModeliv
# Declared: Line 859 (Source lines: 860-880)
# Address: 0x0db2a570 - 0x0db2a658 (Size: 232 bytes, Frame: 48)
.globl __glim_LightModeliv
.ent __glim_LightModeliv
__glim_LightModeliv:
    # Line 860
    move	$a2,$a1
    # Line 862
    li	$v0,1
    # Line 860
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$v1,0xd
    addiu	$v1,$v1,16680
    # Line 862
    lw	$at,__glBeginMode
    lw	$a5,__glCurrentContext
    # Line 860
    addu	$gp,$t9,$v1
    # Line 862
    beq	$at,$v0,.L0db2a610
    move	$a4,$a5
    # Line 865
    li	$a3,2899
    beq	$a0,$a3,.L0db2a630
    li	$at,2897
    beq	$a0,$at,.L0db2a600
    li	$v0,2898
    beq	$a0,$v0,.L0db2a5d4
    # Line 876
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 877
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a5d4:
    # Line 873
    lw	$v1,0($a2)
    sltu	$v1,$zero,$v1
    sb	$v1,1325($a5)
.L0db2a5e0:
    # Line 879
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11828($a4)
    ld	$gp,8($sp)
    # Line 880
    addiu	$sp,$sp,48
    # Line 879
    ori	$a0,$a0,0x20
    # Line 880
    jr	$ra
    # Line 879
    sw	$a0,11828($a4)
.L0db2a600:
    # Line 870
    lw	$at,0($a2)
    sltu	$at,$zero,$at
    # Line 871
    b	.L0db2a5e0
    # Line 870
    sb	$at,1324($a4)
.L0db2a610:
    # Line 862
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a630:
    sd	$a4,0($sp)
    # Line 867
    move	$a0,$a4
    # lw $t9, -26696($gp) # &__glScaleColori
    sd	$ra,16($sp)
    move	$a1,$a4
    jal	__glScaleColori
    addiu	$a1,$a4,1308
    ld	$a4,0($sp)
    b	.L0db2a5e0
    ld	$ra,16($sp)
.end __glim_LightModeliv

# Function: __glim_LightModeli
# Declared: Line 882 (Source lines: 883-894)
# Address: 0x0db2a658 - 0x0db2a6c0 (Size: 104 bytes, Frame: 32)
.globl __glim_LightModeli
.ent __glim_LightModeli
__glim_LightModeli:
    # Line 883
    li	$at,2897
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,16448
    beq	$a0,$at,.L0db2a6a0
    addu	$gp,$t9,$v0
    li	$v1,2898
    beq	$a0,$v1,.L0db2a6a0
    sd	$ra,8($sp)
    # Line 891
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 892
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2a6a0:
    # Line 888
    # lw $t9, -27924($gp) # &__glim_LightModeliv
    sd	$ra,8($sp)
    bal __glim_LightModeliv
    addiu	$a1,$sp,28
    # Line 894
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_LightModeli

# Function: __glim_LineStipple
# Declared: Line 896 (Source lines: 897-909)
# Address: 0x0db2a6c0 - 0x0db2a748 (Size: 136 bytes, Frame: 32)
.globl __glim_LineStipple
.ent __glim_LineStipple
__glim_LineStipple:
    # Line 898
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 897
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 898
    lw	$at,__glBeginMode
    # Line 897
    lui	$v1,0xd
    addiu	$v1,$v1,16344
    # Line 898
    beq	$at,$v0,.L0db2a728
    # Line 897
    addu	$gp,$t9,$v1
    # Line 898
    blez	$a0,.L0db2a720
.L0db2a6e8:
    # Line 901
    slti	$a2,$a0,257
    bnez	$a2,.L0db2a6fc
    ld	$gp,0($sp)
    # Line 904
    li	$a0,256
    ld	$gp,0($sp)
.L0db2a6fc:
    # Line 907
    sh	$a1,456($a3)
    # Line 906
    sh	$a0,458($a3)
    # Line 908
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11828($a3)
    # Line 909
    addiu	$sp,$sp,32
    # Line 908
    ori	$at,$at,0x2
    # Line 909
    jr	$ra
    # Line 908
    sw	$at,11828($a3)
.L0db2a720:
    b	.L0db2a6e8
    # Line 901
    li	$a0,1
.L0db2a728:
    # Line 898
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_LineStipple

# Function: RoundWidth
# Declared: Line 911 (Source lines: 912-915)
# Address: 0x0db2a748 - 0x0db2a778 (Size: 48 bytes, Frame: 0)
.ent RoundWidth
RoundWidth:
    # Line 912
    lwc1	$f0,_lit_3f800000
    c.lt.s	$f12,$f0
    # Line 914
    li	$v0,1
    # Line 912
    bc1f	.L0db2a764
    # Line 915
    lwc1	$f1,_lit_3f000000
    # Line 914
    jr	$ra
    nop
.L0db2a764:
    # Line 915
    add.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    jr	$ra
    nop
.end RoundWidth

# Function: ClampWidth
# Declared: Line 918 (Source lines: 920-930)
# Address: 0x0db2a778 - 0x0db2a7cc (Size: 84 bytes, Frame: 0)
.ent ClampWidth
ClampWidth:
    # Line 920
    lwc1	$f5,3460($a0)
    # Line 922
    c.le.s	$f13,$f5
    lwc1	$f6,3468($a0)
    bc1t	.L0db2a7c4
    # Line 921
    lwc1	$f0,3464($a0)
    # Line 925
    c.le.s	$f0,$f13
    nop
    bc1fl	.L0db2a7a4
    # Line 930
    sub.s	$f1,$f13,$f5
    # Line 926
    jr	$ra
    nop
.L0db2a7a4:
    # Line 930
    div.s	$f1,$f1,$f6
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f6
    jr	$ra
    add.s	$f0,$f0,$f5
.L0db2a7c4:
    # Line 925
    jr	$ra
    mov.s	$f0,$f5
.end ClampWidth

# Function: __glim_LineWidth
# Declared: Line 933 (Source lines: 934-946)
# Address: 0x0db2a7cc - 0x0db2a8b8 (Size: 236 bytes, Frame: 48)
.globl __glim_LineWidth
.ent __glim_LineWidth
__glim_LineWidth:
    # Line 935
    li	$v0,1
    # Line 934
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    # Line 935
    lw	$s7,__glCurrentContext
    sdc1	$f20,0($sp)
    # Line 934
    mov.s	$f20,$f12
    sd	$gp,16($sp)
    # Line 935
    lw	$at,__glBeginMode
    # Line 934
    lui	$v1,0xd
    addiu	$v1,$v1,16076
    # Line 935
    beq	$at,$v0,.L0db2a890
    # Line 934
    addu	$gp,$t9,$v1
    # Line 935
    mtc1	$zero,$f0
    c.le.s	$f20,$f0
    nop
    bc1f	.L0db2a834
    sd	$ra,24($sp)
    # Line 938
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$gp,16($sp)
    # Line 939
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a834:
    # Line 943
    # lw $t9, -32696($gp) # &sub_0db30000
    mov.s	$f12,$f20
    addiu	$t9,$t9,-22712
    bal __glim_LineStipple
    # Line 942
    swc1	$f20,444($s7)
    # Line 944
    # lw $t9, -32696($gp) # &sub_0db30000
    mov.s	$f13,$f20
    move	$a0,$s7
    addiu	$t9,$t9,-22664
    bal __glim_LineStipple
    # Line 943
    sw	$v0,452($s7)
    # Line 944
    swc1	$f0,448($s7)
    # Line 945
    li	$at,2
    sw	$at,__glBeginMode
    lw	$ra,11828($s7)
    ld	$gp,16($sp)
    ori	$ra,$ra,0x2
    sw	$ra,11828($s7)
    # Line 946
    ld	$ra,24($sp)
    ldc1	$f20,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2a890:
    # Line 935
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_LineWidth

# Function: __glim_LogicOp
# Declared: Line 948 (Source lines: 949-958)
# Address: 0x0db2a8b8 - 0x0db2a950 (Size: 152 bytes, Frame: 32)
.globl __glim_LogicOp
.ent __glim_LogicOp
__glim_LogicOp:
    # Line 950
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 949
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 950
    lw	$at,__glBeginMode
    # Line 949
    lui	$v1,0xd
    addiu	$v1,$v1,15840
    # Line 950
    beq	$at,$v0,.L0db2a930
    # Line 949
    addu	$gp,$t9,$v1
    # Line 952
    sltiu	$a1,$a0,5376
    bnez	$a1,.L0db2a910
    sltiu	$at,$a0,5392
    beqz	$at,.L0db2a910
    # Line 957
    li	$v1,2
    # Line 956
    sw	$a0,1756($a2)
    # Line 957
    sw	$v1,__glBeginMode
    lw	$v0,11828($a2)
    ld	$gp,0($sp)
    # Line 958
    addiu	$sp,$sp,32
    # Line 957
    ori	$v0,$v0,0x1
    # Line 958
    jr	$ra
    # Line 957
    sw	$v0,11828($a2)
.L0db2a910:
    # Line 953
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 954
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2a930:
    # Line 950
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_LogicOp

# Function: ApplyParameterF
# Declared: Line 960 (Source lines: 962-1003)
# Address: 0x0db2a950 - 0x0db2aadc (Size: 396 bytes, Frame: 48)
.ent ApplyParameterF
ApplyParameterF:
    # Line 962
    addiu	$sp,$sp,-48
    # Line 963
    sltiu	$at,$a2,5632
    bnez	$at,.L0db2a9a8
    # Line 962
    move	$a6,$a1
    # Line 963
    sltiu	$v0,$a2,5633
    bnez	$v0,.L0db2aa24
    sltiu	$v1,$a2,5634
    bnez	$v1,.L0db2aa04
    sltiu	$a4,$a2,5635
    bnez	$a4,.L0db2aa74
    li	$at,5635
    bne	$a2,$at,.L0db2a9fc
    # Line 1003
    move	$v0,$zero
    # Line 965
    lwc1	$f2,0($a3)
    swc1	$f2,68($a6)
    # Line 966
    lwc1	$f1,4($a3)
    swc1	$f1,76($a6)
    # Line 968
    li	$v0,32
    # Line 967
    lwc1	$f0,8($a3)
    # Line 968
    addiu	$sp,$sp,48
    jr	$ra
    # Line 967
    swc1	$f0,72($a6)
.L0db2a9a8:
    # Line 963
    sltiu	$v0,$a2,4609
    bnez	$v0,.L0db2a9f0
    sltiu	$v1,$a2,4610
    bnez	$v1,.L0db2aa48
    li	$a4,4610
    bne	$a2,$a4,.L0db2a9fc
    # Line 1003
    move	$v0,$zero
    # Line 977
    li	$v0,4
    # Line 973
    lwc1	$f1,0($a3)
    swc1	$f1,32($a6)
    # Line 974
    lwc1	$f0,4($a3)
    swc1	$f0,36($a6)
    # Line 975
    lwc1	$f4,8($a3)
    swc1	$f4,40($a6)
    # Line 976
    lwc1	$f3,12($a3)
    # Line 977
    addiu	$sp,$sp,48
    jr	$ra
    # Line 976
    swc1	$f3,44($a6)
.L0db2a9f0:
    # Line 963
    li	$at,4608
    beq	$a2,$at,.L0db2aab0
    # Line 1003
    move	$v0,$zero
.L0db2a9fc:
    jr	$ra
    addiu	$sp,$sp,48
.L0db2aa04:
    # Line 963
    li	$v0,5633
    bne	$a2,$v0,.L0db2a9fc
    # Line 1003
    move	$v0,$zero
    # Line 980
    li	$v0,16
    # Line 979
    lwc1	$f2,0($a3)
    # Line 980
    addiu	$sp,$sp,48
    jr	$ra
    # Line 979
    swc1	$f2,64($a6)
.L0db2aa24:
    # Line 970
    # lw $t9, -26708($gp) # &__glScaleColorf
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColorf
    addiu	$a1,$a6,48
    # Line 971
    ld	$ra,0($sp)
    li	$v0,8
    jr	$ra
    addiu	$sp,$sp,48
.L0db2aa48:
    # Line 992
    li	$v0,2
    # Line 988
    lwc1	$f1,0($a3)
    swc1	$f1,16($a6)
    # Line 989
    lwc1	$f0,4($a3)
    swc1	$f0,20($a6)
    # Line 990
    lwc1	$f4,8($a3)
    swc1	$f4,24($a6)
    # Line 991
    lwc1	$f3,12($a3)
    # Line 992
    addiu	$sp,$sp,48
    jr	$ra
    # Line 991
    swc1	$f3,28($a6)
.L0db2aa74:
    # Line 999
    li	$v0,3
    # Line 994
    lwc1	$f3,0($a3)
    swc1	$f3,0($a6)
    # Line 995
    lwc1	$f4,4($a3)
    swc1	$f4,4($a6)
    # Line 996
    lwc1	$f0,8($a3)
    swc1	$f0,8($a6)
    # Line 997
    lwc1	$f2,12($a3)
    # Line 998
    swc1	$f0,24($a6)
    swc1	$f4,20($a6)
    swc1	$f3,16($a6)
    # Line 999
    addiu	$sp,$sp,48
    # Line 998
    swc1	$f2,28($a6)
    # Line 999
    jr	$ra
    # Line 997
    swc1	$f2,12($a6)
.L0db2aab0:
    # Line 986
    li	$v0,1
    # Line 982
    lwc1	$f4,0($a3)
    swc1	$f4,0($a6)
    # Line 983
    lwc1	$f3,4($a3)
    swc1	$f3,4($a6)
    # Line 984
    lwc1	$f2,8($a3)
    swc1	$f2,8($a6)
    # Line 985
    lwc1	$f1,12($a3)
    # Line 986
    addiu	$sp,$sp,48
    jr	$ra
    # Line 985
    swc1	$f1,12($a6)
.end ApplyParameterF

# Function: __glErrorCheckMaterial
# Declared: Line 1006 (Source lines: 1007-1032)
# Address: 0x0db2aadc - 0x0db2abac (Size: 208 bytes, Frame: 0)
.globl __glErrorCheckMaterial
.ent __glErrorCheckMaterial
__glErrorCheckMaterial:
    # Line 1007
    li	$v0,1028
    lui	$v1,0xd
    addiu	$v1,$v1,15292
    beq	$a0,$v0,.L0db2ab0c
    addu	$at,$t9,$v1
    li	$a2,1029
    beq	$a0,$a2,.L0db2ab0c
    li	$a3,1032
    beq	$a0,$a3,.L0db2ab0c
    # Line 1014
    li	$v0,1280
    jr	$ra
    nop
.L0db2ab0c:
    # Line 1015
    sltiu	$v0,$a1,5632
    bnez	$v0,.L0db2ab40
    # Line 1016
    sltiu	$v1,$a1,5633
    bnez	$v1,.L0db2ab5c
    sltiu	$a2,$a1,5634
    bnez	$a2,.L0db2ab78
    sltiu	$a3,$a1,5635
    bnez	$a3,.L0db2ab5c
    li	$v0,5635
    bne	$a1,$v0,.L0db2ab70
    nop
    b	.L0db2ab5c
    nop
.L0db2ab40:
    sltiu	$v1,$a1,4609
    bnez	$v1,.L0db2ab64
    sltiu	$a2,$a1,4610
    bnez	$a2,.L0db2ab5c
    li	$a3,4610
    bne	$a1,$a3,.L0db2ab70
    nop
.L0db2ab5c:
    # Line 1032
    jr	$ra
    move	$v0,$zero
.L0db2ab64:
    # Line 1016
    li	$v0,4608
    beq	$a1,$v0,.L0db2ab5c
    nop
.L0db2ab70:
    # Line 1030
    jr	$ra
    li	$v0,1280
.L0db2ab78:
    # Line 1016
    li	$v1,5633
    bne	$a1,$v1,.L0db2ab70
    # Line 1025
    mtc1	$zero,$f0
    c.lt.s	$f14,$f0
    nop
    bc1t	.L0db2aba4
    lwc1	$f1,_lit_43000000
    c.lt.s	$f1,$f14
    nop
    bc1f	.L0db2ab5c
    nop
.L0db2aba4:
    # Line 1026
    jr	$ra
    li	$v0,1281
.end __glErrorCheckMaterial

# Function: __glim_Materialfv
# Declared: Line 1035 (Source lines: 1036-1078)
# Address: 0x0db2abac - 0x0db2ad3c (Size: 400 bytes, Frame: 224)
.globl __glim_Materialfv
.ent __glim_Materialfv
__glim_Materialfv:
    # Line 1041
    lwc1	$f14,0($a2)
    # Line 1036
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    # Line 1039
    lw	$s0,__glCurrentContext
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    # Line 1036
    lui	$at,0xd
    addiu	$at,$at,15084
    addu	$gp,$t9,$at
    # Line 1041
    # lw $t9, -27904($gp) # &__glErrorCheckMaterial
    sd	$s1,24($sp)
    sd	$ra,40($sp)
    bal __glErrorCheckMaterial
    # Line 1036
    move	$s1,$a0
    # Line 1041
    beqzl	$v0,.L0db2ac14
    # Line 1044
    lw	$v1,__glBeginMode
    # Line 1043
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    ld	$gp,32($sp)
    # Line 1044
    ld	$ra,40($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db2ac14:
    li	$a4,1
    beq	$v1,$a4,.L0db2ac88
    # Line 1056
    li	$a5,1028
.L0db2ac20:
    beq	$s1,$a5,.L0db2aca8
    li	$at,1029
    beq	$s1,$at,.L0db2acd0
    li	$v1,1032
    beq	$s1,$v1,.L0db2acf8
.L0db2ac34:
    # Line 1069
    ld	$a4,8($sp)
    li	$a5,5635
    beq	$a4,$a5,.L0db2ac54
    # Line 1072
    nop	# was lw $t9, -26628($gp) # &__glValidateMaterial
    move	$a0,$s0
    lw	$a2,4($sp)
    jal	__glValidateMaterial
    lw	$a1,0($sp)
.L0db2ac54:
    lw	$at,1696($s0)
    andi	$at,$at,0x80
    beqzl	$at,.L0db2ac74
    ld	$gp,32($sp)
    # Line 1076
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$gp,32($sp)
.L0db2ac74:
    # Line 1078
    ld	$ra,40($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db2ac88:
    # Line 1044
    lw	$v1,28144($s0)
    beqz	$v1,.L0db2ac20
    # Line 1056
    li	$a5,1028
    # Line 1053
    lw	$t9,12092($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0db2ac20
    # Line 1056
    li	$a5,1028
.L0db2aca8:
    # Line 1058
    move	$a0,$s0
    # lw $t9, -32696($gp) # &sub_0db30000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,-22192
    bal __glim_LogicOp
    addiu	$a1,$s0,1328
    # Line 1059
    sw	$zero,4($sp)
    # Line 1060
    b	.L0db2ac34
    # Line 1058
    sw	$v0,0($sp)
.L0db2acd0:
    # Line 1062
    move	$a0,$s0
    # lw $t9, -32696($gp) # &sub_0db30000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,-22192
    bal __glim_LogicOp
    addiu	$a1,$s0,1408
    # Line 1063
    sw	$zero,0($sp)
    # Line 1064
    b	.L0db2ac34
    # Line 1062
    sw	$v0,4($sp)
.L0db2acf8:
    # Line 1066
    addiu	$a1,$s0,1408
    move	$a0,$s0
    la	$s1,sub_0db30000
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    addiu	$s1,$s1,-22192
    bal __glim_LogicOp
    move	$t9,$s1
    # Line 1067
    addiu	$a1,$s0,1328
    move	$a0,$s0
    # Line 1066
    sw	$v0,4($sp)
    # Line 1067
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    bal __glim_LogicOp
    move	$t9,$s1
    b	.L0db2ac34
    sw	$v0,0($sp)
.end __glim_Materialfv

# Function: __glim_Materialf
# Declared: Line 1080 (Source lines: 1081-1091)
# Address: 0x0db2ad3c - 0x0db2ad98 (Size: 92 bytes, Frame: 48)
.globl __glim_Materialf
.ent __glim_Materialf
__glim_Materialf:
    # Line 1081
    li	$at,5633
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    swc1	$f14,32($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,14684
    beq	$a1,$at,.L0db2ad7c
    addu	$gp,$t9,$v0
    # Line 1088
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1089
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ad7c:
    # Line 1085
    # lw $t9, -27900($gp) # &__glim_Materialfv
    bal __glim_Materialfv
    addiu	$a2,$sp,32
    # Line 1091
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Materialf

# Function: ApplyParameterI
# Declared: Line 1093 (Source lines: 1095-1136)
# Address: 0x0db2ad98 - 0x0db2b130 (Size: 920 bytes, Frame: 48)
.ent ApplyParameterI
ApplyParameterI:
    # Line 1095
    addiu	$sp,$sp,-48
    # Line 1096
    sltiu	$at,$a2,5632
    bnez	$at,.L0db2ae1c
    # Line 1095
    move	$a6,$a1
    # Line 1096
    sltiu	$v0,$a2,5633
    bnez	$v0,.L0db2af20
    sltiu	$v1,$a2,5634
    bnez	$v1,.L0db2aef4
    # Line 1132
    li	$v0,3
    # Line 1096
    sltiu	$a4,$a2,5635
    bnez	$a4,.L0db2afe4
    # Line 1127
    lwc1	$f2,_lit_3f800000
    # Line 1096
    li	$at,5635
    bne	$a2,$at,.L0db2aeec
    # Line 1136
    move	$v0,$zero
    # Line 1098
    lw	$a0,0($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,68($a6)
    # Line 1099
    lw	$v1,4($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,76($a6)
    # Line 1100
    lw	$v0,8($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1101
    addiu	$sp,$sp,48
    li	$v0,32
    jr	$ra
    # Line 1100
    swc1	$f0,72($a6)
.L0db2ae1c:
    # Line 1096
    sltiu	$a4,$a2,4609
    bnez	$a4,.L0db2aedc
    sltiu	$at,$a2,4610
    bnez	$at,.L0db2af44
    # Line 1121
    lwc1	$f3,_lit_3f800000
    # Line 1096
    li	$v0,4610
    bne	$a2,$v0,.L0db2aee8
    # Line 1106
    lwc1	$f0,_lit_3f800000
    lw	$at,0($a3)
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f1,_lit_40000000
    mul.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    lwc1	$f3,3308($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,32($a6)
    # Line 1107
    lw	$a5,4($a3)
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    lwc1	$f4,3308($a0)
    mul.s	$f4,$f4,$f2
    swc1	$f4,36($a6)
    # Line 1108
    lw	$a4,8($a3)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,40($a6)
    # Line 1109
    lw	$v1,12($a3)
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    lwc1	$f3,3308($a0)
    mul.s	$f3,$f3,$f4
    # Line 1110
    li	$v0,4
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1109
    swc1	$f3,44($a6)
.L0db2aedc:
    # Line 1096
    li	$v0,4608
    beq	$a2,$v0,.L0db2b090
    # Line 1115
    lwc1	$f2,_lit_3f800000
.L0db2aee8:
    # Line 1136
    move	$v0,$zero
.L0db2aeec:
    jr	$ra
    addiu	$sp,$sp,48
.L0db2aef4:
    # Line 1096
    li	$v1,5633
    bne	$a2,$v1,.L0db2aeec
    # Line 1136
    move	$v0,$zero
    # Line 1113
    li	$v0,16
    # Line 1112
    lw	$a0,0($a3)
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1113
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1112
    swc1	$f0,64($a6)
.L0db2af20:
    # Line 1103
    # lw $t9, -26696($gp) # &__glScaleColori
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColori
    addiu	$a1,$a6,48
    # Line 1104
    ld	$ra,0($sp)
    li	$v0,8
    jr	$ra
    addiu	$sp,$sp,48
.L0db2af44:
    # Line 1121
    lw	$v0,0($a3)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f4,_lit_40000000
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,16($a6)
    # Line 1122
    lw	$at,4($a3)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f3
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f0
    swc1	$f2,20($a6)
    # Line 1123
    lw	$a5,8($a3)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,24($a6)
    # Line 1124
    lw	$a4,12($a3)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    # Line 1125
    li	$v0,2
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1124
    swc1	$f1,28($a6)
.L0db2afe4:
    # Line 1127
    lw	$at,0($a3)
    mtc1	$at,$f5
    nop
    cvt.s.w	$f5,$f5
    lwc1	$f3,_lit_40000000
    mul.s	$f5,$f5,$f3
    add.s	$f5,$f5,$f2
    lwc1	$f4,3308($a0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a6)
    # Line 1128
    lw	$a5,4($a3)
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f5,3308($a0)
    mul.s	$f5,$f5,$f0
    swc1	$f5,4($a6)
    # Line 1129
    lw	$a4,8($a3)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a6)
    # Line 1130
    lw	$v1,12($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f3,3308($a0)
    mul.s	$f3,$f3,$f1
    # Line 1131
    swc1	$f0,24($a6)
    swc1	$f5,20($a6)
    swc1	$f4,16($a6)
    # Line 1132
    addiu	$sp,$sp,48
    # Line 1131
    swc1	$f3,28($a6)
    # Line 1132
    jr	$ra
    # Line 1130
    swc1	$f3,12($a6)
.L0db2b090:
    # Line 1115
    lw	$a5,0($a3)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f3,_lit_40000000
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a6)
    # Line 1116
    lw	$a4,4($a3)
    mtc1	$a4,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a6)
    # Line 1117
    lw	$v1,8($a3)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f4,3308($a0)
    mul.s	$f4,$f4,$f0
    swc1	$f4,8($a6)
    # Line 1118
    lw	$v0,12($a3)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    # Line 1119
    addiu	$sp,$sp,48
    li	$v0,1
    jr	$ra
    # Line 1118
    swc1	$f0,12($a6)
.end ApplyParameterI

# Function: __glim_Materialiv
# Declared: Line 1139 (Source lines: 1141-1183)
# Address: 0x0db2b130 - 0x0db2b2c8 (Size: 408 bytes, Frame: 224)
.globl __glim_Materialiv
.ent __glim_Materialiv
__glim_Materialiv:
    # Line 1141
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    # Line 1144
    lw	$s0,__glCurrentContext
    sd	$a1,8($sp)
    sd	$s1,24($sp)
    # Line 1141
    move	$s1,$a0
    sd	$a2,16($sp)
    sd	$gp,32($sp)
    # Line 1146
    lw	$at,0($a2)
    # Line 1141
    lui	$v0,0xd
    addiu	$v0,$v0,13672
    addu	$gp,$t9,$v0
    # Line 1146
    # lw $t9, -27904($gp) # &__glErrorCheckMaterial
    mtc1	$at,$f14
    sd	$ra,40($sp)
    bal __glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqzl	$v0,.L0db2b1a0
    # Line 1149
    lw	$v1,__glBeginMode
    # Line 1148
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    ld	$gp,32($sp)
    # Line 1149
    ld	$ra,40($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db2b1a0:
    li	$a4,1
    beq	$v1,$a4,.L0db2b214
    # Line 1161
    li	$a5,1028
.L0db2b1ac:
    beq	$s1,$a5,.L0db2b234
    li	$at,1029
    beq	$s1,$at,.L0db2b25c
    li	$v1,1032
    beq	$s1,$v1,.L0db2b284
.L0db2b1c0:
    # Line 1174
    ld	$a4,8($sp)
    li	$a5,5635
    beq	$a4,$a5,.L0db2b1e0
    # Line 1177
    nop	# was lw $t9, -26628($gp) # &__glValidateMaterial
    move	$a0,$s0
    lw	$a2,4($sp)
    jal	__glValidateMaterial
    lw	$a1,0($sp)
.L0db2b1e0:
    lw	$at,1696($s0)
    andi	$at,$at,0x80
    beqzl	$at,.L0db2b200
    ld	$gp,32($sp)
    # Line 1181
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$gp,32($sp)
.L0db2b200:
    # Line 1183
    ld	$ra,40($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db2b214:
    # Line 1149
    lw	$v1,28144($s0)
    beqz	$v1,.L0db2b1ac
    # Line 1161
    li	$a5,1028
    # Line 1158
    lw	$t9,12092($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0db2b1ac
    # Line 1161
    li	$a5,1028
.L0db2b234:
    # Line 1163
    move	$a0,$s0
    # lw $t9, -32696($gp) # &sub_0db30000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,-21096
    bal __glim_Materialf
    addiu	$a1,$s0,1328
    # Line 1164
    sw	$zero,4($sp)
    # Line 1165
    b	.L0db2b1c0
    # Line 1163
    sw	$v0,0($sp)
.L0db2b25c:
    # Line 1167
    move	$a0,$s0
    # lw $t9, -32696($gp) # &sub_0db30000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,-21096
    bal __glim_Materialf
    addiu	$a1,$s0,1408
    # Line 1168
    sw	$zero,0($sp)
    # Line 1169
    b	.L0db2b1c0
    # Line 1167
    sw	$v0,4($sp)
.L0db2b284:
    # Line 1171
    addiu	$a1,$s0,1408
    move	$a0,$s0
    la	$s1,sub_0db30000
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    addiu	$s1,$s1,-21096
    bal __glim_Materialf
    move	$t9,$s1
    # Line 1172
    addiu	$a1,$s0,1328
    move	$a0,$s0
    # Line 1171
    sw	$v0,4($sp)
    # Line 1172
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    bal __glim_Materialf
    move	$t9,$s1
    b	.L0db2b1c0
    sw	$v0,0($sp)
.end __glim_Materialiv

# Function: __glim_Materiali
# Declared: Line 1185 (Source lines: 1186-1196)
# Address: 0x0db2b2c8 - 0x0db2b324 (Size: 92 bytes, Frame: 48)
.globl __glim_Materiali
.ent __glim_Materiali
__glim_Materiali:
    # Line 1186
    li	$at,5633
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sw	$a2,36($sp)
    sd	$gp,0($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,13264
    beq	$a1,$at,.L0db2b308
    addu	$gp,$t9,$v0
    # Line 1193
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1194
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b308:
    # Line 1190
    # lw $t9, -27892($gp) # &__glim_Materialiv
    bal __glim_Materialiv
    addiu	$a2,$sp,36
    # Line 1196
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Materiali

# Function: RoundSize
# Declared: Line 1198 (Source lines: 1199-1202)
# Address: 0x0db2b324 - 0x0db2b354 (Size: 48 bytes, Frame: 0)
.ent RoundSize
RoundSize:
    # Line 1199
    lwc1	$f0,_lit_3f800000
    c.lt.s	$f12,$f0
    # Line 1201
    li	$v0,1
    # Line 1199
    bc1f	.L0db2b340
    # Line 1202
    lwc1	$f1,_lit_3f000000
    # Line 1201
    jr	$ra
    nop
.L0db2b340:
    # Line 1202
    add.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    jr	$ra
    nop
.end RoundSize

# Function: ClampSize
# Declared: Line 1205 (Source lines: 1207-1217)
# Address: 0x0db2b354 - 0x0db2b3a8 (Size: 84 bytes, Frame: 0)
.ent ClampSize
ClampSize:
    # Line 1207
    lwc1	$f5,3448($a0)
    # Line 1209
    c.le.s	$f13,$f5
    lwc1	$f6,3456($a0)
    bc1t	.L0db2b3a0
    # Line 1208
    lwc1	$f0,3452($a0)
    # Line 1212
    c.le.s	$f0,$f13
    nop
    bc1fl	.L0db2b380
    # Line 1217
    sub.s	$f1,$f13,$f5
    # Line 1213
    jr	$ra
    nop
.L0db2b380:
    # Line 1217
    div.s	$f1,$f1,$f6
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f6
    jr	$ra
    add.s	$f0,$f0,$f5
.L0db2b3a0:
    # Line 1212
    jr	$ra
    mov.s	$f0,$f5
.end ClampSize

# Function: __glim_PointSize
# Declared: Line 1220 (Source lines: 1221-1232)
# Address: 0x0db2b3a8 - 0x0db2b494 (Size: 236 bytes, Frame: 48)
.globl __glim_PointSize
.ent __glim_PointSize
__glim_PointSize:
    # Line 1222
    li	$v0,1
    # Line 1221
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    # Line 1222
    lw	$s7,__glCurrentContext
    sdc1	$f20,0($sp)
    # Line 1221
    mov.s	$f20,$f12
    sd	$gp,16($sp)
    # Line 1222
    lw	$at,__glBeginMode
    # Line 1221
    lui	$v1,0xd
    addiu	$v1,$v1,13040
    # Line 1222
    beq	$at,$v0,.L0db2b46c
    # Line 1221
    addu	$gp,$t9,$v1
    # Line 1222
    mtc1	$zero,$f0
    c.le.s	$f20,$f0
    nop
    bc1f	.L0db2b410
    sd	$ra,24($sp)
    # Line 1225
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$gp,16($sp)
    # Line 1226
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b410:
    # Line 1229
    # lw $t9, -32696($gp) # &sub_0db30000
    mov.s	$f12,$f20
    addiu	$t9,$t9,-19676
    bal __glim_Materiali
    # Line 1228
    swc1	$f20,432($s7)
    # Line 1230
    # lw $t9, -32696($gp) # &sub_0db30000
    mov.s	$f13,$f20
    move	$a0,$s7
    addiu	$t9,$t9,-19628
    bal __glim_Materiali
    # Line 1229
    sw	$v0,440($s7)
    # Line 1230
    swc1	$f0,436($s7)
    # Line 1231
    li	$at,2
    sw	$at,__glBeginMode
    lw	$ra,11828($s7)
    ld	$gp,16($sp)
    ori	$ra,$ra,0x8
    sw	$ra,11828($s7)
    # Line 1232
    ld	$ra,24($sp)
    ldc1	$f20,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b46c:
    # Line 1222
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_PointSize

# Function: __glim_PolygonMode
# Declared: Line 1234 (Source lines: 1235-1267)
# Address: 0x0db2b494 - 0x0db2b5ac (Size: 280 bytes, Frame: 32)
.globl __glim_PolygonMode
.ent __glim_PolygonMode
__glim_PolygonMode:
    # Line 1236
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 1235
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1236
    lw	$at,__glBeginMode
    # Line 1235
    lui	$v1,0xd
    addiu	$v1,$v1,12804
    # Line 1236
    beq	$at,$v0,.L0db2b58c
    # Line 1235
    addu	$gp,$t9,$v1
    # Line 1238
    li	$a2,6914
    beq	$a1,$a2,.L0db2b504
    li	$at,6912
    beq	$a1,$at,.L0db2b53c
    li	$v0,6913
    beq	$a1,$v0,.L0db2b4f0
    # Line 1248
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1249
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2b4f0:
    # Line 1245
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$v1,11828($a3)
    ori	$v1,$v1,0x2
    sw	$v1,11828($a3)
.L0db2b504:
    # Line 1251
    li	$at,1028
    beq	$a0,$at,.L0db2b57c
    li	$v0,1029
    beq	$a0,$v0,.L0db2b584
    li	$v1,1032
    beq	$a0,$v1,.L0db2b554
    # Line 1263
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1264
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2b53c:
    # Line 1242
    li	$at,2
    sw	$at,__glBeginMode
    lw	$a2,11828($a3)
    ori	$a2,$a2,0x8
    # Line 1243
    b	.L0db2b504
    # Line 1242
    sw	$a2,11828($a3)
.L0db2b554:
    # Line 1260
    sw	$a1,464($a3)
    # Line 1259
    sw	$a1,460($a3)
.L0db2b55c:
    # Line 1266
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11828($a3)
    ld	$gp,0($sp)
    # Line 1267
    addiu	$sp,$sp,32
    # Line 1266
    ori	$v0,$v0,0x4
    # Line 1267
    jr	$ra
    # Line 1266
    sw	$v0,11828($a3)
.L0db2b57c:
    # Line 1254
    b	.L0db2b55c
    # Line 1253
    sw	$a1,460($a3)
.L0db2b584:
    # Line 1257
    b	.L0db2b55c
    # Line 1256
    sw	$a1,464($a3)
.L0db2b58c:
    # Line 1236
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PolygonMode

# Function: __glim_PolygonStipple
# Declared: Line 1269 (Source lines: 1270-1278)
# Address: 0x0db2b5ac - 0x0db2b650 (Size: 164 bytes, Frame: 48)
.globl __glim_PolygonStipple
.ent __glim_PolygonStipple
__glim_PolygonStipple:
    # Line 1270
    move	$a5,$a0
    # Line 1272
    li	$v0,1
    # Line 1270
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    # Line 1272
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 1270
    lui	$v1,0xd
    addiu	$v1,$v1,12524
    # Line 1272
    beq	$at,$v0,.L0db2b630
    # Line 1270
    addu	$gp,$t9,$v1
    # Line 1275
    move	$a0,$s0
    addiu	$a6,$s0,488
    li	$a4,6656
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a3,6400
    li	$a2,32
    jal	__glFillImage
    li	$a1,32
    # Line 1276
    lw	$t9,12716($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1277
    li	$a1,2
    sw	$a1,__glBeginMode
    lw	$a0,11828($s0)
    ld	$gp,0($sp)
    # Line 1278
    ld	$ra,16($sp)
    # Line 1277
    ori	$a0,$a0,0x4
    sw	$a0,11828($s0)
    # Line 1278
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b630:
    # Line 1272
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_PolygonStipple

# Function: __glim_ShadeModel
# Declared: Line 1280 (Source lines: 1281-1290)
# Address: 0x0db2b650 - 0x0db2b6e8 (Size: 152 bytes, Frame: 32)
.globl __glim_ShadeModel
.ent __glim_ShadeModel
__glim_ShadeModel:
    # Line 1282
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 1281
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1282
    lw	$at,__glBeginMode
    # Line 1281
    lui	$v1,0xd
    addiu	$v1,$v1,12360
    # Line 1282
    beq	$at,$v0,.L0db2b6c8
    # Line 1281
    addu	$gp,$t9,$v1
    # Line 1284
    sltiu	$a1,$a0,7424
    bnez	$a1,.L0db2b6a8
    sltiu	$at,$a0,7426
    beqz	$at,.L0db2b6a8
    # Line 1289
    li	$v1,2
    # Line 1288
    sw	$a0,1304($a2)
    # Line 1289
    sw	$v1,__glBeginMode
    lw	$v0,11828($a2)
    ld	$gp,0($sp)
    # Line 1290
    addiu	$sp,$sp,32
    # Line 1289
    ori	$v0,$v0,0x1
    # Line 1290
    jr	$ra
    # Line 1289
    sw	$v0,11828($a2)
.L0db2b6a8:
    # Line 1285
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1286
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2b6c8:
    # Line 1282
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_ShadeModel

# Function: __glim_StencilMask
# Declared: Line 1292 (Source lines: 1293-1299)
# Address: 0x0db2b6e8 - 0x0db2b76c (Size: 132 bytes, Frame: 32)
.globl __glim_StencilMask
.ent __glim_StencilMask
__glim_StencilMask:
    # Line 1294
    lw	$a2,__glCurrentContext
    li	$a3,1
    # Line 1293
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1294
    lw	$at,__glBeginMode
    # Line 1293
    lui	$v0,0xd
    addiu	$v0,$v0,12208
    # Line 1294
    beq	$at,$a3,.L0db2b74c
    # Line 1293
    addu	$gp,$t9,$v0
    # Line 1297
    li	$a1,2
    # Line 1296
    lw	$at,3132($a2)
    sllv	$at,$a3,$at
    addiu	$at,$at,-1
    and	$at,$at,$a0
    sh	$at,1578($a2)
    # Line 1297
    sw	$a1,__glBeginMode
    ld	$gp,0($sp)
    lw	$v1,11828($a2)
    # Line 1298
    lw	$a0,11824($a2)
    # Line 1299
    addiu	$sp,$sp,32
    # Line 1297
    ori	$v1,$v1,0x1
    # Line 1298
    ori	$a0,$a0,0x2
    sw	$a0,11824($a2)
    # Line 1299
    jr	$ra
    # Line 1297
    sw	$v1,11828($a2)
.L0db2b74c:
    # Line 1294
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_StencilMask

# Function: __glim_StencilFunc
# Declared: Line 1301 (Source lines: 1302-1316)
# Address: 0x0db2b76c - 0x0db2b844 (Size: 216 bytes, Frame: 48)
.globl __glim_StencilFunc
.ent __glim_StencilFunc
__glim_StencilFunc:
    # Line 1303
    lw	$a4,__glCurrentContext
    li	$a6,1
    # Line 1302
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1303
    lw	$at,__glBeginMode
    # Line 1302
    lui	$v0,0xd
    addiu	$v0,$v0,12076
    # Line 1303
    beq	$at,$a6,.L0db2b824
    # Line 1302
    addu	$gp,$t9,$v0
    # Line 1305
    sltiu	$v1,$a0,512
    bnez	$v1,.L0db2b7fc
    sltiu	$a3,$a0,520
    beqz	$a3,.L0db2b800
    # Line 1306
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1307
    bltz	$a1,.L0db2b81c
    ld	$gp,0($sp)
.L0db2b7ac:
    # Line 1309
    lw	$a5,3132($a4)
    # Line 1314
    li	$v1,2
    # Line 1309
    sllv	$a5,$a6,$a5
    slt	$at,$a1,$a5
    bnez	$at,.L0db2b7c8
    addiu	$a5,$a5,-1
    # Line 1310
    move	$a1,$a5
.L0db2b7c8:
    # Line 1312
    sh	$a1,1574($a4)
    # Line 1311
    sw	$a0,1568($a4)
    # Line 1313
    and	$a0,$a5,$a2
    sh	$a0,1576($a4)
    # Line 1314
    sw	$v1,__glBeginMode
    lw	$at,11828($a4)
    # Line 1315
    lw	$v0,11824($a4)
    # Line 1316
    addiu	$sp,$sp,48
    # Line 1314
    ori	$at,$at,0x1
    # Line 1315
    ori	$v0,$v0,0x2
    sw	$v0,11824($a4)
    # Line 1316
    jr	$ra
    # Line 1314
    sw	$at,11828($a4)
.L0db2b7fc:
    # Line 1306
    # lw $t9, -27320($gp) # &__glSetError
.L0db2b800:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1307
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b81c:
    b	.L0db2b7ac
    # Line 1309
    move	$a1,$zero
.L0db2b824:
    # Line 1303
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_StencilFunc

# Function: __glim_StencilOp
# Declared: Line 1318 (Source lines: 1319-1354)
# Address: 0x0db2b844 - 0x0db2b9bc (Size: 376 bytes, Frame: 48)
.globl __glim_StencilOp
.ent __glim_StencilOp
__glim_StencilOp:
    # Line 1320
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1319
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1320
    lw	$at,__glBeginMode
    # Line 1319
    lui	$v1,0xd
    addiu	$v1,$v1,11860
    # Line 1320
    beq	$at,$v0,.L0db2b99c
    # Line 1319
    addu	$gp,$t9,$v1
    # Line 1320
    beqz	$a0,.L0db2b8b8
    li	$v1,7682
    li	$a3,5386
    beq	$a0,$a3,.L0db2b8b8
    li	$at,7680
    beq	$a0,$at,.L0db2b8b8
    li	$v0,7681
    beq	$a0,$v0,.L0db2b8b8
    nop
    beq	$a0,$v1,.L0db2b8b8
    li	$a3,7683
    beq	$a0,$a3,.L0db2b8b8
    # Line 1327
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1328
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b8b8:
    # Line 1329
    beqz	$a1,.L0db2b910
    li	$v0,7680
    li	$at,5386
    beq	$a1,$at,.L0db2b914
    # Line 1338
    li	$a3,7681
    # Line 1329
    beq	$a1,$v0,.L0db2b910
    li	$at,7683
    li	$v1,7681
    beq	$a1,$v1,.L0db2b910
    li	$a3,7682
    beq	$a1,$a3,.L0db2b914
    # Line 1338
    li	$a3,7681
    # Line 1329
    beq	$a1,$at,.L0db2b914
    # Line 1338
    li	$a3,7681
    # Line 1336
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1337
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b910:
    # Line 1338
    li	$a3,7681
.L0db2b914:
    beqz	$a2,.L0db2b964
    li	$v1,7680
    li	$v0,5386
    beql	$a2,$v0,.L0db2b968
    # Line 1351
    sw	$a2,1588($a4)
    # Line 1338
    beq	$a2,$v1,.L0db2b964
    li	$v0,7683
    beq	$a2,$a3,.L0db2b964
    li	$at,7682
    beql	$a2,$at,.L0db2b968
    # Line 1351
    sw	$a2,1588($a4)
    # Line 1338
    beq	$a2,$v0,.L0db2b964
    # Line 1345
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1346
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2b964:
    # Line 1351
    sw	$a2,1588($a4)
.L0db2b968:
    # Line 1350
    sw	$a1,1584($a4)
    # Line 1349
    sw	$a0,1580($a4)
    # Line 1352
    li	$a3,2
    sw	$a3,__glBeginMode
    ld	$gp,0($sp)
    lw	$v1,11828($a4)
    # Line 1353
    lw	$a0,11824($a4)
    # Line 1354
    addiu	$sp,$sp,48
    # Line 1352
    ori	$v1,$v1,0x1
    # Line 1353
    ori	$a0,$a0,0x4
    sw	$a0,11824($a4)
    # Line 1354
    jr	$ra
    # Line 1352
    sw	$v1,11828($a4)
.L0db2b99c:
    # Line 1320
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_StencilOp

# Function: __glCopyContext
# Declared: Line 1362 (Source lines: 1363-1607)
# Address: 0x0db2b9bc - 0x0db2c444 (Size: 2696 bytes, Frame: 128)
.globl __glCopyContext
.ent __glCopyContext
__glCopyContext:
    # Line 1363
    addiu	$sp,$sp,-128
    sd	$s7,32($sp)
    sd	$s5,16($sp)
    move	$s5,$a1
    # Line 1380
    lwc1	$f3,30804($a1)
    sd	$s6,8($sp)
    # Line 1363
    move	$s6,$a2
    # Line 1380
    swc1	$f3,30804($a0)
    sd	$ra,0($sp)
    # Line 1381
    lwc1	$f2,30808($a1)
    sd	$s3,40($sp)
    sd	$gp,24($sp)
    swc1	$f2,30808($a0)
    # Line 1363
    lui	$at,0xd
    # Line 1382
    lwc1	$f1,30812($a1)
    # Line 1363
    addiu	$at,$at,11484
    addu	$gp,$t9,$at
    # Line 1382
    swc1	$f1,30812($a0)
    # Line 1388
    # lw $t9, -27336($gp) # &__glContextSetColorScales
    # Line 1383
    lwc1	$f0,30844($a1)
    # Line 1363
    move	$s3,$a0
    # Line 1388
    jal	__glContextSetColorScales
    # Line 1383
    swc1	$f0,30844($s3)
    # Line 1391
    andi	$v1,$s6,0x4000
    # Line 1388
    andi	$v0,$s6,0x200
    beqz	$v0,.L0db2ba48
    ld	$ra,0($sp)
    # Line 1391
    lwc1	$f3,1552($s5)
    swc1	$f3,1552($s3)
    lwc1	$f2,1556($s5)
    swc1	$f2,1556($s3)
    lwc1	$f1,1560($s5)
    swc1	$f1,1560($s3)
    lwc1	$f0,1564($s5)
    swc1	$f0,1564($s3)
.L0db2ba48:
    beqz	$v1,.L0db2bad8
    # Line 1406
    li	$s7,2
    # Line 1395
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$s3,1720
    addiu	$a4,$s5,1720
.L0db2ba60:
    addu	$at,$a0,$a2
    addu	$a3,$a0,$a4
    addiu	$a0,$a0,8
    ld	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2ba60
    sd	$a3,0($at)
    addu	$a3,$a0,$a4
    lw	$a3,0($a3)
    addu	$at,$a0,$a2
    sw	$a3,0($at)
    # Line 1396
    lw	$v0,1696($s3)
    li	$v1,-16
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1397
    lw	$at,1696($s5)
    # Line 1402
    lw	$v1,11824($s3)
    # Line 1397
    andi	$at,$at,0xf
    or	$at,$at,$v0
    # Line 1399
    lw	$v0,1700($s3)
    # Line 1397
    sw	$at,1696($s3)
    # Line 1399
    li	$a3,-2049
    and	$v0,$v0,$a3
    sw	$v0,1700($s3)
    # Line 1400
    lw	$at,1700($s5)
    # Line 1402
    ori	$v1,$v1,0x1
    sw	$v1,11824($s3)
    # Line 1400
    andi	$at,$at,0x800
    or	$at,$at,$v0
    sw	$at,1700($s3)
.L0db2bad8:
    # Line 1402
    andi	$at,$s6,0x1
    beqz	$at,.L0db2bb0c
    # Line 1406
    li	$a1,34
    move	$a0,$zero
    addiu	$a2,$s3,160
    addiu	$a4,$s5,160
.L0db2baf0:
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2baf0
    sd	$v0,0($v1)
.L0db2bb0c:
    andi	$v1,$s6,0x100
    beqz	$v1,.L0db2bb5c
    # Line 1414
    andi	$v0,$s6,0x2000
    # Line 1410
    ld	$at,1536($s5)
    sd	$at,1536($s3)
    ld	$a3,1544($s5)
    # Line 1411
    lw	$v0,1696($s3)
    # Line 1410
    sd	$a3,1544($s3)
    # Line 1411
    li	$v1,-17
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1412
    lw	$at,1696($s5)
    andi	$at,$at,0x10
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1414
    sw	$s7,__glBeginMode
    lw	$a3,11828($s3)
    ori	$a3,$a3,0x80
    sw	$a3,11828($s3)
    andi	$v0,$s6,0x2000
.L0db2bb5c:
    beqz	$v0,.L0db2bbac
    # Line 1422
    lui	$a3,0x1
    # Line 1418
    ld	$a2,1696($s5)
    sd	$a2,1696($s3)
    ld	$a1,1704($s5)
    sd	$a1,1704($s3)
    ld	$a0,1712($s5)
    sd	$a0,1712($s3)
    # Line 1419
    sw	$s7,__glBeginMode
    lw	$v1,11828($s3)
    # Line 1421
    lw	$t9,11864($s3)
    move	$a0,$s3
    # Line 1419
    ori	$v1,$v1,0xae
    # Line 1421
    jalr	$t9
    # Line 1419
    sw	$v1,11828($s3)
    # Line 1422
    lw	$t9,12072($s3)
    jalr	$t9
    move	$a0,$s3
    ld	$ra,0($sp)
    lui	$a3,0x1
.L0db2bbac:
    and	$a3,$s6,$a3
    beqz	$a3,.L0db2bc24
    # Line 1431
    andi	$a3,$s6,0x80
    # Line 1426
    ld	$v1,1824($s5)
    sd	$v1,1824($s3)
    ld	$v0,1832($s5)
    sd	$v0,1832($s3)
    ld	$at,1840($s5)
    sd	$at,1840($s3)
    ld	$a3,1848($s5)
    sd	$a3,1848($s3)
    ld	$v1,1856($s5)
    sd	$v1,1856($s3)
    ld	$v0,1864($s5)
    sd	$v0,1864($s3)
    # Line 1427
    lw	$a3,1696($s3)
    lui	$at,0x80
    nor	$at,$at,$zero
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1428
    lw	$v1,1696($s5)
    lui	$at,0x80
    and	$v1,$v1,$at
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1430
    lw	$v0,1712($s5)
    sw	$v0,1712($s3)
    # Line 1431
    lw	$at,1716($s5)
    sw	$at,1716($s3)
    andi	$a3,$s6,0x80
.L0db2bc24:
    beqz	$a3,.L0db2bc74
    # Line 1435
    li	$a0,10
    move	$a1,$zero
    addiu	$a4,$s3,1492
    addiu	$a2,$s5,1492
.L0db2bc38:
    addu	$v0,$a1,$a4
    addu	$at,$a1,$a2
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2bc38
    sw	$at,0($v0)
    # Line 1436
    lw	$v1,1696($s3)
    li	$a3,-33
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1437
    lw	$v0,1696($s5)
    andi	$v0,$v0,0x20
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
.L0db2bc74:
    andi	$at,$s6,0x8000
    beqz	$at,.L0db2bcbc
    # Line 1442
    andi	$at,$s6,0x40
    lw	$a3,1796($s5)
    sw	$a3,1796($s3)
    lw	$v1,1800($s5)
    sw	$v1,1800($s3)
    lw	$v0,1804($s5)
    sw	$v0,1804($s3)
    lw	$at,1808($s5)
    sw	$at,1808($s3)
    lw	$a3,1812($s5)
    sw	$a3,1812($s3)
    lw	$v1,1816($s5)
    sw	$v1,1816($s3)
    lw	$v0,1820($s5)
    sw	$v0,1820($s3)
    andi	$at,$s6,0x40
.L0db2bcbc:
    beqz	$at,.L0db2bdc4
    # Line 1459
    andi	$a3,$s6,0x4
    # Line 1446
    lw	$at,1296($s5)
    sw	$at,1296($s3)
    # Line 1447
    lw	$a4,1300($s5)
    sw	$a4,1300($s3)
    # Line 1448
    lw	$a3,1304($s5)
    sw	$a3,1304($s3)
    # Line 1449
    lw	$a2,1308($s5)
    sw	$a2,1308($s3)
    lw	$a1,1312($s5)
    sw	$a1,1312($s3)
    lw	$a0,1316($s5)
    sw	$a0,1316($s3)
    lw	$v1,1320($s5)
    # Line 1450
    li	$a0,10
    # Line 1449
    sw	$v1,1320($s3)
    # Line 1450
    move	$a1,$zero
    # Line 1449
    lw	$v0,1324($s5)
    # Line 1450
    addiu	$a2,$s3,1328
    addiu	$a4,$s5,1328
    # Line 1449
    sw	$v0,1324($s3)
.L0db2bd14:
    # Line 1450
    addu	$v1,$a1,$a2
    addu	$v0,$a1,$a4
    addiu	$a1,$a1,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2bd14
    sd	$v0,0($v1)
    # Line 1451
    li	$a1,10
    move	$a0,$zero
    addiu	$a2,$s3,1408
    addiu	$a4,$s5,1408
.L0db2bd40:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2bd40
    sd	$v1,0($a3)
    # Line 1452
    lw	$a1,1488($s5)
    lw	$a3,3328($s3)
    lw	$a0,1488($s3)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1455
    lw	$v0,1696($s3)
    li	$v1,-193
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1456
    lw	$at,1696($s5)
    andi	$at,$at,0xc0
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1458
    lw	$ra,1704($s5)
    sw	$ra,1704($s3)
    # Line 1459
    sw	$s7,__glBeginMode
    lw	$a3,11828($s3)
    ld	$ra,0($sp)
    ori	$a3,$a3,0x20
    sw	$a3,11828($s3)
    andi	$a3,$s6,0x4
.L0db2bdc4:
    beqz	$a3,.L0db2be28
    # Line 1467
    lui	$a3,0x2
    # Line 1463
    lwc1	$f1,444($s5)
    swc1	$f1,444($s3)
    lwc1	$f0,448($s5)
    swc1	$f0,448($s3)
    lw	$v1,452($s5)
    sw	$v1,452($s3)
    lhu	$v0,456($s5)
    sh	$v0,456($s3)
    lh	$at,458($s5)
    # Line 1464
    lw	$v1,1696($s3)
    # Line 1463
    sh	$at,458($s3)
    # Line 1464
    li	$a3,-769
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1465
    lw	$v0,1696($s5)
    andi	$v0,$v0,0x300
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1467
    sw	$s7,__glBeginMode
    lw	$at,11828($s3)
    ori	$at,$at,0x2
    sw	$at,11828($s3)
    lui	$a3,0x2
.L0db2be28:
    and	$a3,$s6,$a3
    beqz	$a3,.L0db2be40
    # Line 1471
    andi	$v0,$s6,0x20
    lw	$at,1872($s5)
    sw	$at,1872($s3)
    andi	$v0,$s6,0x20
.L0db2be40:
    beqz	$v0,.L0db2bf04
    # Line 1486
    andi	$at,$s6,0x2
    # Line 1475
    lw	$a2,1148($s5)
    # Line 1477
    li	$a0,15
    # Line 1475
    sw	$a2,1148($s3)
    # Line 1477
    move	$a2,$zero
    # Line 1476
    lw	$v1,1152($s5)
    # Line 1477
    addiu	$a4,$s3,616
    addiu	$a5,$s5,616
    # Line 1476
    sw	$v1,1152($s3)
.L0db2be68:
    # Line 1477
    addu	$at,$a2,$a4
    addu	$a3,$a2,$a5
    addiu	$a2,$a2,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2be68
    sd	$a3,0($at)
    addu	$t0,$a2,$a5
    lw	$t0,0($t0)
    addu	$t1,$a2,$a4
    sw	$t0,0($t1)
    # Line 1478
    lw	$a6,1696($s3)
    lui	$a7,0xe00
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,1696($s3)
    # Line 1479
    lw	$a5,1696($s5)
    # Line 1485
    addiu	$a1,$s3,4952
    # Line 1479
    lui	$a7,0xe00
    and	$a5,$a5,$a7
    or	$a5,$a5,$a6
    # Line 1481
    lui	$a6,0x3000
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    sw	$a5,1696($s3)
    # Line 1485
    addiu	$a0,$s5,4952
    # Line 1482
    lw	$a4,1696($s5)
    # Line 1485
    # lw $t9, -27344($gp) # &__glCopyColorTableScaleBias
    # Line 1482
    lui	$a6,0x3000
    and	$a4,$a4,$a6
    or	$a4,$a4,$a5
    # Line 1485
    jal	__glCopyColorTableScaleBias
    # Line 1482
    sw	$a4,1696($s3)
    # Line 1486
    sw	$s7,__glBeginMode
    lw	$ra,11828($s3)
    ori	$ra,$ra,0x10
    sw	$ra,11828($s3)
    ld	$ra,0($sp)
    andi	$at,$s6,0x2
.L0db2bf04:
    beqz	$at,.L0db2bf58
    # Line 1494
    andi	$v1,$s6,0x8
    # Line 1490
    lwc1	$f3,432($s5)
    swc1	$f3,432($s3)
    lwc1	$f2,436($s5)
    swc1	$f2,436($s3)
    lw	$v0,440($s5)
    # Line 1491
    lw	$a3,1696($s3)
    # Line 1490
    sw	$v0,440($s3)
    # Line 1491
    li	$at,-1025
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1492
    lw	$v1,1696($s5)
    andi	$v1,$v1,0x400
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1494
    sw	$s7,__glBeginMode
    lw	$v0,11828($s3)
    ori	$v0,$v0,0x8
    sw	$v0,11828($s3)
    andi	$v1,$s6,0x8
.L0db2bf58:
    beqz	$v1,.L0db2bff4
    # Line 1513
    andi	$v0,$s6,0x10
    # Line 1498
    lw	$at,460($s5)
    sw	$at,460($s3)
    lw	$a3,464($s5)
    sw	$a3,464($s3)
    lw	$v1,468($s5)
    sw	$v1,468($s3)
    lw	$v0,472($s5)
    sw	$v0,472($s3)
    lw	$at,476($s5)
    sw	$at,476($s3)
    lw	$a3,480($s5)
    sw	$a3,480($s3)
    # Line 1505
    ld	$v0,-14800($gp)
    # Line 1498
    lw	$v1,484($s5)
    # Line 1505
    lw	$at,1696($s3)
    # Line 1498
    sw	$v1,484($s3)
    # Line 1505
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1506
    lw	$a3,1696($s5)
    lui	$v0,0x100
    ori	$v0,$v0,0x3800
    and	$a3,$a3,$v0
    or	$a3,$a3,$at
    # Line 1509
    lw	$v0,1700($s3)
    # Line 1506
    sw	$a3,1696($s3)
    # Line 1509
    li	$v1,-1537
    and	$v0,$v0,$v1
    sw	$v0,1700($s3)
    # Line 1510
    lw	$at,1700($s5)
    andi	$at,$at,0x600
    or	$at,$at,$v0
    sw	$at,1700($s3)
    # Line 1513
    sw	$s7,__glBeginMode
    lw	$a3,11828($s3)
    ori	$a3,$a3,0x4
    sw	$a3,11828($s3)
    andi	$v0,$s6,0x10
.L0db2bff4:
    beqz	$v0,.L0db2c054
    # Line 1517
    li	$a0,16
    move	$a1,$zero
    addiu	$a2,$s3,488
    addiu	$a4,$s5,488
.L0db2c008:
    addu	$a3,$a1,$a2
    addu	$v1,$a1,$a4
    addiu	$a1,$a1,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c008
    sd	$v1,0($a3)
    # Line 1518
    lw	$v0,1696($s3)
    li	$v1,-8193
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1519
    lw	$at,1696($s5)
    andi	$at,$at,0x2000
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1521
    sw	$s7,__glBeginMode
    lw	$a3,11828($s3)
    ori	$a3,$a3,0x44
    sw	$a3,11828($s3)
.L0db2c054:
    lui	$a3,0x8
    and	$a3,$s6,$a3
    beqz	$a3,.L0db2c0a8
    # Line 1528
    andi	$a3,$s6,0x400
    # Line 1526
    lw	$v1,2412($s5)
    sw	$v1,2412($s3)
    lw	$v0,2416($s5)
    sw	$v0,2416($s3)
    lw	$at,2420($s5)
    sw	$at,2420($s3)
    lw	$a3,2424($s5)
    # Line 1527
    lw	$v0,1696($s3)
    # Line 1526
    sw	$a3,2424($s3)
    # Line 1527
    li	$v1,-16385
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1528
    lw	$at,1696($s5)
    andi	$at,$at,0x4000
    or	$at,$at,$v0
    sw	$at,1696($s3)
    andi	$a3,$s6,0x400
.L0db2c0a8:
    beqz	$a3,.L0db2c0fc
    # Line 1537
    lui	$a3,0x4
    # Line 1533
    ld	$v1,1568($s5)
    sd	$v1,1568($s3)
    ld	$v0,1576($s5)
    sd	$v0,1576($s3)
    ld	$at,1584($s5)
    # Line 1537
    lw	$v1,11824($s3)
    # Line 1533
    sd	$at,1584($s3)
    # Line 1534
    lw	$v0,1696($s3)
    li	$a3,0x8000
    nor	$a3,$a3,$zero
    and	$v0,$v0,$a3
    sw	$v0,1696($s3)
    # Line 1535
    lw	$at,1696($s5)
    # Line 1537
    ori	$v1,$v1,0x6
    sw	$v1,11824($s3)
    # Line 1535
    andi	$at,$at,0x8000
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1537
    lui	$a3,0x4
.L0db2c0fc:
    and	$a3,$s6,$a3
    beqz	$a3,.L0db2c2ec
    # Line 1543
    li	$a0,31
    move	$a1,$zero
    addiu	$a2,$s3,1876
    addiu	$a4,$s5,1876
    sd	$s4,72($sp)
    # Line 1542
    lw	$s4,3336($s3)
.L0db2c11c:
    # Line 1543
    addu	$v0,$a1,$a2
    addu	$at,$a1,$a4
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c11c
    sw	$at,0($v0)
    # Line 1544
    li	$a1,15
    move	$a0,$zero
    addiu	$a4,$s3,2000
    addiu	$a5,$s5,2000
    # Line 1545
    move	$a2,$zero
    addiu	$a7,$s5,2124
.L0db2c150:
    # Line 1544
    addu	$v1,$a0,$a4
    addu	$v0,$a0,$a5
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2c150
    sd	$v0,0($v1)
    # Line 1545
    addiu	$a6,$s3,2124
    li	$a1,31
    # Line 1544
    addu	$a3,$a0,$a4
    addu	$v1,$a0,$a5
    lw	$v1,0($v1)
    # Line 1546
    li	$a0,15
    addiu	$a4,$s3,2248
    # Line 1544
    sw	$v1,0($a3)
.L0db2c18c:
    # Line 1545
    addu	$at,$a2,$a6
    addu	$a3,$a2,$a7
    addiu	$a2,$a2,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2c18c
    sw	$a3,0($at)
    # Line 1546
    addiu	$a5,$s5,2248
    move	$a2,$zero
.L0db2c1b0:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a5
    addiu	$a2,$a2,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c1b0
    sd	$at,0($v0)
    addu	$v0,$a2,$a5
    lw	$v0,0($v0)
    addu	$v1,$a2,$a4
    sw	$v0,0($v1)
    # Line 1548
    lwc1	$f3,2380($s5)
    swc1	$f3,2380($s3)
    # Line 1549
    lwc1	$f2,2384($s5)
    swc1	$f2,2384($s3)
    # Line 1550
    lwc1	$f1,2388($s5)
    swc1	$f1,2388($s3)
    # Line 1551
    lwc1	$f0,2392($s5)
    swc1	$f0,2392($s3)
    # Line 1553
    lwc1	$f3,2396($s5)
    swc1	$f3,2396($s3)
    # Line 1554
    lwc1	$f2,2400($s5)
    swc1	$f2,2400($s3)
    # Line 1555
    lwc1	$f1,2404($s5)
    sd	$s0,64($sp)
    swc1	$f1,2404($s3)
    # Line 1572
    move	$s0,$zero
    # Line 1556
    lwc1	$f0,2408($s5)
    sd	$s1,56($sp)
    # Line 1570
    lw	$a0,2372($s3)
    # Line 1556
    swc1	$f0,2408($s3)
    sd	$s2,80($sp)
    # Line 1571
    lw	$a1,2372($s5)
    # Line 1570
    move	$s2,$a0
    # Line 1572
    beqz	$s4,.L0db2c27c
    # Line 1571
    move	$s1,$a1
    andi	$v1,$s4,0x1
    beqz	$v1,.L0db2c268
    # Line 1572
    move	$a0,$s4
    lw	$a3,216($s2)
    lw	$a2,216($s1)
    bne	$a3,$a2,.L0db2c42c
    # Line 1575
    nop	# was lw $t9, -24588($gp) # &__glBindTexture
.L0db2c25c:
    # Line 1573
    addiu	$s1,$s1,224
    addiu	$s2,$s2,224
    addiu	$s0,$s0,1
.L0db2c268:
    sra	$at,$a0,0x1
    bnezl	$at,.L0db2c3f0
    # Line 1572
    lw	$a2,216($s1)
    # Line 1573
    lw	$a1,2372($s5)
.L0db2c278:
    lw	$a0,2372($s3)
.L0db2c27c:
    ld	$s1,56($sp)
    ld	$s0,64($sp)
    ld	$s2,80($sp)
    # Line 1580
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$s4,0x3
    subu	$a2,$a2,$s4
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 1582
    lw	$a1,2376($s5)
    lw	$a0,2376($s3)
    lw	$a3,3340($s3)
    ld	$s4,72($sp)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1585
    lw	$at,1696($s3)
    lui	$v0,0x3fc0
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1586
    lw	$ra,1696($s5)
    lui	$v0,0xc03f
    and	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,1696($s3)
    ld	$ra,0($sp)
.L0db2c2ec:
    andi	$v1,$s6,0x1000
    beqz	$v1,.L0db2c348
    # Line 1596
    andi	$v0,$s6,0x800
    # Line 1592
    lw	$a0,1652($s3)
    lw	$a2,3332($s3)
    # Line 1591
    lw	$a1,1648($s5)
    # Line 1592
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a2,0x4
    # Line 1591
    sw	$a1,1648($s3)
    # Line 1592
    jal	memcpy
    lw	$a1,1652($s5)
    # Line 1595
    lw	$ra,1696($s3)
    lui	$at,0x40
    nor	$at,$at,$zero
    and	$ra,$ra,$at
    sw	$ra,1696($s3)
    # Line 1596
    lw	$a3,1696($s5)
    lui	$at,0x40
    and	$a3,$a3,$at
    or	$a3,$a3,$ra
    ld	$ra,0($sp)
    sw	$a3,1696($s3)
    andi	$v0,$s6,0x800
.L0db2c348:
    beqz	$v0,.L0db2c39c
    ld	$s6,8($sp)
    # Line 1601
    ld	$a5,1592($s5)
    sd	$a5,1592($s3)
    ld	$a4,1600($s5)
    sd	$a4,1600($s3)
    ld	$a3,1608($s5)
    sd	$a3,1608($s3)
    ld	$a2,1616($s5)
    sd	$a2,1616($s3)
    ld	$a1,1624($s5)
    sd	$a1,1624($s3)
    ld	$a0,1632($s5)
    ld	$s6,8($sp)
    sd	$a0,1632($s3)
    # Line 1602
    # lw $t9, -24160($gp) # &__glUpdateViewportTransform
    # Line 1601
    ld	$v1,1640($s5)
    # Line 1602
    move	$a0,$s3
    jal	__glUpdateViewportTransform
    # Line 1601
    sd	$v1,1640($s3)
    ld	$ra,0($sp)
.L0db2c39c:
    # Line 1605
    sw	$s7,__glBeginMode
    # Line 1607
    li	$v0,1
    # Line 1605
    lw	$s5,11828($s3)
    ld	$gp,24($sp)
    # Line 1607
    ld	$s7,32($sp)
    # Line 1605
    ori	$s5,$s5,0x1
    sw	$s5,11828($s3)
    # Line 1607
    ld	$s3,40($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
    # Line 1572
    lw	$a2,440($s1)
.L0db2c3cc:
    lw	$at,440($s2)
    # Line 1573
    addiu	$s1,$s1,448
    addiu	$s2,$s2,448
    # Line 1572
    bne	$at,$a2,.L0db2c414
    # Line 1573
    addiu	$s0,$s0,1
    addiu	$s0,$s0,1
.L0db2c3e4:
    beql	$s4,$s0,.L0db2c278
    lw	$a1,2372($s5)
    # Line 1572
    lw	$a2,216($s1)
.L0db2c3f0:
    lw	$v0,216($s2)
    beql	$v0,$a2,.L0db2c3cc
    lw	$a2,440($s1)
    # Line 1575
    # lw $t9, -24588($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0db2c3cc
    # Line 1572
    lw	$a2,440($s1)
.L0db2c414:
    # Line 1575
    # lw $t9, -24588($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0db2c3e4
    # Line 1573
    addiu	$s0,$s0,1
.L0db2c42c:
    sd	$a0,48($sp)
    # Line 1575
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    b	.L0db2c25c
    ld	$a0,48($sp)
.end __glCopyContext

# Function: __glim_PushAttrib
# Declared: Line 1612 (Source lines: 1613-1734)
# Address: 0x0db2c444 - 0x0db2cb9c (Size: 1880 bytes, Frame: 208)
.globl __glim_PushAttrib
.ent __glim_PushAttrib
__glim_PushAttrib:
    # Line 1616
    li	$v0,1
    # Line 1613
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    # Line 1616
    lw	$s0,__glCurrentContext
    sd	$s2,24($sp)
    # Line 1613
    move	$s2,$a0
    sd	$gp,16($sp)
    # Line 1616
    lw	$at,__glBeginMode
    # Line 1613
    lui	$v1,0xd
    addiu	$v1,$v1,8788
    # Line 1616
    beq	$at,$v0,.L0db2cb74
    # Line 1613
    addu	$gp,$t9,$v1
    sd	$s4,40($sp)
    # Line 1618
    lw	$a4,3480($s0)
    lw	$a3,12728($s0)
    lw	$s4,12732($s0)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    sltu	$a3,$s4,$a3
    beqz	$a3,.L0db2cb28
    # Line 1731
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s1,48($sp)
    # Line 1620
    lw	$s1,0($s4)
    beqz	$s1,.L0db2cb50
    # Line 1621
    move	$a0,$s0
.L0db2c4a8:
    # Line 1625
    sw	$s2,0($s1)
    # Line 1626
    ld	$at,1696($s0)
    sd	$at,1544($s1)
    ld	$a4,1704($s0)
    sd	$a4,1552($s1)
    # Line 1627
    addiu	$v1,$s4,4
    # Line 1626
    ld	$a3,1712($s0)
    ld	$s4,40($sp)
    # Line 1627
    andi	$at,$s2,0x200
    # Line 1626
    sd	$a3,1560($s1)
    # Line 1627
    beqz	$at,.L0db2c4fc
    sw	$v1,12732($s0)
    # Line 1630
    lwc1	$f3,1552($s0)
    swc1	$f3,1400($s1)
    lwc1	$f2,1556($s0)
    swc1	$f2,1404($s1)
    lwc1	$f1,1560($s0)
    swc1	$f1,1408($s1)
    lwc1	$f0,1564($s0)
    ld	$s4,40($sp)
    swc1	$f0,1412($s1)
.L0db2c4fc:
    andi	$v1,$s2,0x4000
    beqz	$v1,.L0db2c540
    # Line 1633
    li	$a0,9
    move	$v0,$zero
    addiu	$a1,$s1,1568
    addiu	$a2,$s0,1720
.L0db2c514:
    addu	$a4,$v0,$a1
    addu	$a3,$v0,$a2
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c514
    sd	$a3,0($a4)
    addu	$a4,$v0,$a2
    lw	$a4,0($a4)
    addu	$at,$v0,$a1
    sw	$a4,0($at)
.L0db2c540:
    andi	$at,$s2,0x1
    beqz	$at,.L0db2c574
    # Line 1636
    li	$v0,34
    move	$a0,$zero
    addiu	$a2,$s1,8
    addiu	$a1,$s0,160
.L0db2c558:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a1
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0db2c558
    sd	$v1,0($a3)
.L0db2c574:
    andi	$a3,$s2,0x100
    beqz	$a3,.L0db2c590
    # Line 1639
    lui	$v1,0x1
    ld	$at,1536($s0)
    sd	$at,1384($s1)
    ld	$a4,1544($s0)
    sd	$a4,1392($s1)
.L0db2c590:
    and	$v1,$s2,$v1
    beqz	$v1,.L0db2c5d0
    # Line 1642
    andi	$at,$s2,0x80
    ld	$a4,1824($s0)
    sd	$a4,1672($s1)
    ld	$a3,1832($s0)
    sd	$a3,1680($s1)
    ld	$v1,1840($s0)
    sd	$v1,1688($s1)
    ld	$at,1848($s0)
    sd	$at,1696($s1)
    ld	$a4,1856($s0)
    sd	$a4,1704($s1)
    ld	$a3,1864($s0)
    sd	$a3,1712($s1)
    andi	$at,$s2,0x80
.L0db2c5d0:
    beqz	$at,.L0db2c600
    # Line 1645
    li	$v0,10
    move	$a0,$zero
    addiu	$a1,$s1,1340
    addiu	$a2,$s0,1492
.L0db2c5e4:
    addu	$a3,$a0,$a1
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0db2c5e4
    sw	$v1,0($a3)
.L0db2c600:
    andi	$a3,$s2,0x8000
    beqz	$a3,.L0db2c648
    # Line 1648
    andi	$a3,$s2,0x40
    lw	$v1,1796($s0)
    sw	$v1,1644($s1)
    lw	$at,1800($s0)
    sw	$at,1648($s1)
    lw	$a4,1804($s0)
    sw	$a4,1652($s1)
    lw	$a3,1808($s0)
    sw	$a3,1656($s1)
    lw	$v1,1812($s0)
    sw	$v1,1660($s1)
    lw	$at,1816($s0)
    sw	$at,1664($s1)
    lw	$a4,1820($s0)
    sw	$a4,1668($s1)
    andi	$a3,$s2,0x40
.L0db2c648:
    beqz	$a3,.L0db2c738
    # Line 1661
    andi	$a3,$s2,0x4
    # Line 1653
    lw	$a4,1296($s0)
    # Line 1651
    lw	$at,3328($s0)
    # Line 1653
    sw	$a4,1144($s1)
    # Line 1654
    lw	$a3,1300($s0)
    sw	$a3,1148($s1)
    # Line 1655
    lw	$a2,1304($s0)
    sw	$a2,1152($s1)
    # Line 1656
    lw	$a1,1308($s0)
    sw	$a1,1156($s1)
    lw	$a0,1312($s0)
    sw	$a0,1160($s1)
    # Line 1657
    li	$v0,10
    # Line 1656
    lw	$v1,1316($s0)
    # Line 1651
    sll	$s4,$at,0x3
    subu	$s4,$s4,$at
    # Line 1656
    sw	$v1,1164($s1)
    # Line 1651
    sll	$s4,$s4,0x2
    # Line 1656
    lw	$v1,1320($s0)
    # Line 1651
    addu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    # Line 1656
    sw	$v1,1168($s1)
    # Line 1657
    addiu	$a2,$s0,1328
    # Line 1656
    lw	$a4,1324($s0)
    # Line 1657
    addiu	$a1,$s1,1176
    move	$a0,$zero
    # Line 1656
    sw	$a4,1172($s1)
.L0db2c6b8:
    # Line 1657
    addu	$v1,$a0,$a1
    addu	$at,$a0,$a2
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0db2c6b8
    sd	$at,0($v1)
    # Line 1658
    li	$a0,10
    move	$v0,$zero
    addiu	$a1,$s1,1256
    addiu	$a2,$s0,1408
.L0db2c6e4:
    addu	$a3,$v0,$a1
    addu	$v1,$v0,$a2
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c6e4
    sd	$v1,0($a3)
    # Line 1659
    lw	$t9,0($s0)
    move	$a0,$s0
    sd	$ra,32($sp)
    jal	__glSetError
    move	$a1,$s4
    move	$a0,$v0
    # Line 1661
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$s4
    # Line 1659
    sw	$v0,1336($s1)
    # Line 1661
    jal	memcpy
    lw	$a1,1488($s0)
    ld	$s4,40($sp)
    ld	$ra,32($sp)
    andi	$a3,$s2,0x4
.L0db2c738:
    beqz	$a3,.L0db2c76c
    # Line 1664
    lui	$a3,0x2
    lwc1	$f1,444($s0)
    swc1	$f1,292($s1)
    lwc1	$f0,448($s0)
    swc1	$f0,296($s1)
    lw	$v1,452($s0)
    sw	$v1,300($s1)
    lhu	$at,456($s0)
    sh	$at,304($s1)
    lh	$a4,458($s0)
    sh	$a4,306($s1)
    lui	$a3,0x2
.L0db2c76c:
    and	$a3,$s2,$a3
    beqz	$a3,.L0db2c784
    # Line 1667
    andi	$at,$s2,0x20
    lw	$a4,1872($s0)
    sw	$a4,1720($s1)
    andi	$at,$s2,0x20
.L0db2c784:
    beqz	$at,.L0db2c7f4
    # Line 1673
    andi	$at,$s2,0x2
    # Line 1670
    lw	$a2,1148($s0)
    # Line 1672
    li	$a0,15
    # Line 1670
    sw	$a2,996($s1)
    # Line 1672
    move	$v0,$zero
    # Line 1671
    lw	$v1,1152($s0)
    # Line 1672
    addiu	$a5,$s0,616
    addiu	$a2,$s1,464
    # Line 1671
    sw	$v1,1000($s1)
.L0db2c7ac:
    # Line 1672
    addu	$a4,$v0,$a2
    addu	$a3,$v0,$a5
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c7ac
    sd	$a3,0($a4)
    # Line 1673
    addiu	$a1,$s1,2276
    addiu	$a0,$s0,4952
    sd	$ra,32($sp)
    # lw $t9, -27344($gp) # &__glCopyColorTableScaleBias
    # Line 1672
    addu	$a4,$v0,$a5
    lw	$a4,0($a4)
    addu	$a5,$v0,$a2
    # Line 1673
    jal	__glCopyColorTableScaleBias
    # Line 1672
    sw	$a4,0($a5)
    ld	$ra,32($sp)
    # Line 1673
    andi	$at,$s2,0x2
.L0db2c7f4:
    beqz	$at,.L0db2c818
    # Line 1676
    andi	$a3,$s2,0x8
    lwc1	$f3,432($s0)
    swc1	$f3,280($s1)
    lwc1	$f2,436($s0)
    swc1	$f2,284($s1)
    lw	$v1,440($s0)
    sw	$v1,288($s1)
    andi	$a3,$s2,0x8
.L0db2c818:
    beqz	$a3,.L0db2c85c
    # Line 1679
    andi	$a3,$s2,0x10
    lw	$v1,460($s0)
    sw	$v1,308($s1)
    lw	$at,464($s0)
    sw	$at,312($s1)
    lw	$a4,468($s0)
    sw	$a4,316($s1)
    lw	$a3,472($s0)
    sw	$a3,320($s1)
    lw	$v1,476($s0)
    sw	$v1,324($s1)
    lw	$at,480($s0)
    sw	$at,328($s1)
    lw	$a4,484($s0)
    sw	$a4,332($s1)
    andi	$a3,$s2,0x10
.L0db2c85c:
    beqz	$a3,.L0db2c88c
    # Line 1682
    li	$a0,16
    move	$v0,$zero
    addiu	$a1,$s1,336
    addiu	$a2,$s0,488
.L0db2c870:
    addu	$at,$v0,$a1
    addu	$a4,$v0,$a2
    addiu	$v0,$v0,8
    ld	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c870
    sd	$a4,0($at)
.L0db2c88c:
    lui	$at,0x8
    and	$at,$s2,$at
    beqz	$at,.L0db2c8c0
    # Line 1685
    andi	$v1,$s2,0x400
    lw	$at,2412($s0)
    sw	$at,2260($s1)
    lw	$a4,2416($s0)
    sw	$a4,2264($s1)
    lw	$a3,2420($s0)
    sw	$a3,2268($s1)
    lw	$v1,2424($s0)
    sw	$v1,2272($s1)
    andi	$v1,$s2,0x400
.L0db2c8c0:
    beqz	$v1,.L0db2c8e4
    # Line 1688
    lui	$v1,0x4
    ld	$at,1568($s0)
    sd	$at,1416($s1)
    ld	$a4,1576($s0)
    sd	$a4,1424($s1)
    ld	$a3,1584($s0)
    sd	$a3,1432($s1)
    lui	$v1,0x4
.L0db2c8e4:
    and	$v1,$s2,$v1
    beqz	$v1,.L0db2ca80
    # Line 1695
    li	$v0,31
    move	$a0,$zero
    addiu	$a1,$s1,1724
    addiu	$a2,$s0,1876
    # Line 1693
    lw	$s4,3340($s0)
    sd	$s3,56($sp)
    # Line 1691
    lw	$at,3336($s0)
    # Line 1693
    sll	$s3,$s4,0x3
    addu	$s3,$s3,$s4
    sll	$s3,$s3,0x2
    # Line 1691
    sll	$s4,$at,0x3
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x5
.L0db2c920:
    # Line 1695
    addu	$v1,$a0,$a1
    addu	$at,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0db2c920
    sw	$at,0($v1)
    # Line 1696
    li	$a0,15
    move	$v0,$zero
    addiu	$a2,$s1,1848
    addiu	$a5,$s0,2000
.L0db2c94c:
    addu	$a3,$v0,$a2
    addu	$v1,$v0,$a5
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c94c
    sd	$v1,0($a3)
    # Line 1697
    li	$a1,31
    move	$a0,$zero
    addiu	$a6,$s1,1972
    addiu	$a7,$s0,2124
    # Line 1696
    addu	$a4,$v0,$a2
    addu	$a3,$v0,$a5
    # Line 1698
    move	$v0,$zero
    # Line 1696
    lw	$a3,0($a3)
    # Line 1698
    addiu	$a5,$s1,2096
    # Line 1696
    sw	$a3,0($a4)
.L0db2c990:
    # Line 1697
    addu	$at,$a0,$a6
    addu	$a4,$a0,$a7
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2c990
    sw	$a4,0($at)
    # Line 1698
    addiu	$a2,$s0,2248
    li	$a0,15
.L0db2c9b4:
    addu	$v1,$v0,$a5
    addu	$at,$v0,$a2
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2c9b4
    sd	$at,0($v1)
    addu	$v1,$v0,$a2
    lw	$v1,0($v1)
    addu	$a0,$v0,$a5
    sw	$v1,0($a0)
    # Line 1700
    lwc1	$f11,2380($s0)
    swc1	$f11,2228($s1)
    # Line 1701
    lwc1	$f10,2384($s0)
    swc1	$f10,2232($s1)
    # Line 1702
    lwc1	$f9,2388($s0)
    swc1	$f9,2236($s1)
    # Line 1703
    lwc1	$f8,2392($s0)
    swc1	$f8,2240($s1)
    # Line 1705
    lwc1	$f7,2396($s0)
    swc1	$f7,2244($s1)
    # Line 1706
    lwc1	$f6,2400($s0)
    swc1	$f6,2248($s1)
    # Line 1707
    lwc1	$f5,2404($s0)
    swc1	$f5,2252($s1)
    # Line 1708
    lwc1	$f4,2408($s0)
    swc1	$f4,2256($s1)
    # Line 1710
    lw	$t9,0($s0)
    move	$a1,$s4
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    move	$a0,$v0
    # Line 1712
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$s4
    # Line 1710
    sw	$v0,2220($s1)
    # Line 1712
    jal	memcpy
    lw	$a1,2372($s0)
    # Line 1714
    lw	$t9,0($s0)
    move	$a0,$s0
    move	$a1,$s3
    jalr	$t9
    ld	$s4,40($sp)
    move	$a0,$v0
    # Line 1716
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$s3
    # Line 1714
    sw	$v0,2224($s1)
    # Line 1716
    jal	memcpy
    lw	$a1,2376($s0)
    ld	$ra,32($sp)
    ld	$s3,56($sp)
.L0db2ca80:
    andi	$a3,$s2,0x1000
    beqz	$a3,.L0db2cad0
    # Line 1724
    andi	$a3,$s2,0x800
    # Line 1721
    lw	$a2,1648($s0)
    # Line 1719
    lw	$a1,3332($s0)
    # Line 1721
    sw	$a2,1496($s1)
    # Line 1722
    move	$a0,$s0
    lw	$t9,0($s0)
    sd	$ra,32($sp)
    # Line 1719
    sll	$a1,$a1,0x4
    # Line 1722
    jalr	$t9
    sd	$a1,0($sp)
    move	$a0,$v0
    # Line 1724
    # lw $t9, -17848($gp) # &memcpy
    ld	$a2,0($sp)
    # Line 1722
    sw	$v0,1500($s1)
    # Line 1724
    jal	memcpy
    lw	$a1,1652($s0)
    ld	$ra,32($sp)
    andi	$a3,$s2,0x800
.L0db2cad0:
    beqz	$a3,.L0db2cb14
    ld	$gp,16($sp)
    # Line 1728
    ld	$v1,1592($s0)
    sd	$v1,1440($s1)
    ld	$at,1600($s0)
    sd	$at,1448($s1)
    ld	$a4,1608($s0)
    sd	$a4,1456($s1)
    ld	$a3,1616($s0)
    sd	$a3,1464($s1)
    ld	$v1,1624($s0)
    sd	$v1,1472($s1)
    ld	$at,1632($s0)
    sd	$at,1480($s1)
    ld	$a4,1640($s0)
    sd	$a4,1488($s1)
    ld	$gp,16($sp)
.L0db2cb14:
    # Line 1734
    ld	$s0,8($sp)
    ld	$s1,48($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db2cb28:
    # Line 1731
    li	$a0,1283
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s4,40($sp)
    ld	$gp,16($sp)
    # Line 1732
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db2cb50:
    # Line 1621
    lw	$t9,4($s0)
    li	$a2,2936
    sd	$ra,32($sp)
    jalr	$t9
    li	$a1,1
    move	$s1,$v0
    # Line 1623
    sw	$v0,0($s4)
    b	.L0db2c4a8
    ld	$ra,32($sp)
.L0db2cb74:
    # Line 1616
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_PushAttrib

# Function: __glim_PopAttrib
# Declared: Line 1738 (Source lines: 1739-2005)
# Address: 0x0db2cb9c - 0x0db2d808 (Size: 3180 bytes, Frame: 224)
.globl __glim_PopAttrib
.ent __glim_PopAttrib
__glim_PopAttrib:
    # Line 1743
    li	$v0,1
    # Line 1739
    addiu	$sp,$sp,-96
    sd	$s3,24($sp)
    # Line 1743
    lw	$s3,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 1739
    lui	$v1,0xd
    addiu	$v1,$v1,6908
    # Line 1743
    beq	$at,$v0,.L0db2d7e4
    # Line 1739
    addu	$gp,$t9,$v1
    # Line 1745
    lw	$a0,12732($s3)
    lw	$a3,12728($s3)
    sltu	$a3,$a3,$a0
    beqz	$a3,.L0db2d7a0
    # Line 1751
    addiu	$v0,$a0,-4
    sd	$s4,0($sp)
    # Line 1748
    lw	$s4,-4($a0)
    sd	$s6,48($sp)
    # Line 1750
    lw	$s6,0($s4)
    # Line 1751
    andi	$at,$s6,0x200
    beqz	$at,.L0db2cc14
    sw	$v0,12732($s3)
    # Line 1753
    lwc1	$f3,1400($s4)
    swc1	$f3,1552($s3)
    lwc1	$f2,1404($s4)
    swc1	$f2,1556($s3)
    lwc1	$f1,1408($s4)
    swc1	$f1,1560($s3)
    lwc1	$f0,1412($s4)
    swc1	$f0,1564($s3)
.L0db2cc14:
    andi	$v1,$s6,0x4000
    beqz	$v1,.L0db2cca4
    # Line 1756
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$s3,1720
    addiu	$a4,$s4,1568
.L0db2cc2c:
    addu	$at,$a0,$a2
    addu	$a3,$a0,$a4
    addiu	$a0,$a0,8
    ld	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2cc2c
    sd	$a3,0($at)
    addu	$a3,$a0,$a4
    lw	$a3,0($a3)
    addu	$at,$a0,$a2
    sw	$a3,0($at)
    # Line 1757
    lw	$v0,1696($s3)
    li	$v1,-16
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1758
    lw	$at,1544($s4)
    # Line 1763
    lw	$v1,11824($s3)
    # Line 1758
    andi	$at,$at,0xf
    or	$at,$at,$v0
    # Line 1760
    lw	$v0,1700($s3)
    # Line 1758
    sw	$at,1696($s3)
    # Line 1760
    li	$a3,-2049
    and	$v0,$v0,$a3
    sw	$v0,1700($s3)
    # Line 1761
    lw	$at,1548($s4)
    # Line 1763
    ori	$v1,$v1,0x1
    sw	$v1,11824($s3)
    # Line 1761
    andi	$at,$at,0x800
    or	$at,$at,$v0
    sw	$at,1700($s3)
.L0db2cca4:
    # Line 1763
    andi	$at,$s6,0x1
    beqz	$at,.L0db2ccdc
    # Line 1766
    li	$a0,34
    move	$a1,$zero
    addiu	$a2,$s3,160
    addiu	$a4,$s4,8
.L0db2ccbc:
    addu	$v1,$a1,$a2
    addu	$v0,$a1,$a4
    addiu	$a1,$a1,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2ccbc
    sd	$v0,0($v1)
    sd	$s7,8($sp)
.L0db2ccdc:
    sd	$s7,8($sp)
    andi	$v1,$s6,0x100
    beqz	$v1,.L0db2cd2c
    li	$s7,2
    # Line 1769
    ld	$at,1384($s4)
    sd	$at,1536($s3)
    ld	$a3,1392($s4)
    # Line 1770
    lw	$v0,1696($s3)
    # Line 1769
    sd	$a3,1544($s3)
    # Line 1770
    li	$v1,-17
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1771
    lw	$at,1544($s4)
    andi	$at,$at,0x10
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1773
    sw	$s7,__glBeginMode
    lw	$a3,11828($s3)
    ori	$a3,$a3,0x80
    sw	$a3,11828($s3)
.L0db2cd2c:
    andi	$v0,$s6,0x2000
    beqz	$v0,.L0db2cdf0
    # Line 1793
    lui	$a3,0x1
    # Line 1773
    lw	$a0,1544($s4)
    lw	$a1,1696($s3)
    nor	$v1,$a0,$zero
    and	$v1,$v1,$a1
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0db2cd6c
    # Line 1779
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    sd	$ra,32($sp)
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1544($s4)
    lw	$a1,1696($s3)
    ld	$ra,32($sp)
.L0db2cd6c:
    nor	$a3,$a1,$zero
    and	$a3,$a3,$a0
    andi	$a3,$a3,0x4000
    beqzl	$a3,.L0db2cd90
    # Line 1786
    ld	$a1,1544($s4)
    # Line 1784
    lw	$at,31360($s3)
    sd	$ra,32($sp)
    sw	$at,31364($s3)
    # Line 1786
    ld	$a1,1544($s4)
.L0db2cd90:
    sd	$a1,1696($s3)
    ld	$a0,1552($s4)
    sd	$a0,1704($s3)
    ld	$v1,1560($s4)
    sd	$v1,1712($s3)
    # Line 1787
    sw	$s7,__glBeginMode
    sd	$ra,32($sp)
    lw	$v0,11828($s3)
    # Line 1790
    lw	$t9,11864($s3)
    move	$a0,$s3
    # Line 1787
    ori	$v0,$v0,0xbe
    # Line 1790
    jalr	$t9
    # Line 1787
    sw	$v0,11828($s3)
    # Line 1791
    lw	$t9,12072($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 1792
    lw	$t9,11988($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 1793
    lw	$t9,11980($s3)
    jalr	$t9
    move	$a0,$s3
    ld	$ra,32($sp)
    lui	$a3,0x1
.L0db2cdf0:
    and	$a3,$s6,$a3
    beqz	$a3,.L0db2ce68
    # Line 1801
    andi	$a3,$s6,0x80
    # Line 1796
    ld	$v1,1672($s4)
    sd	$v1,1824($s3)
    ld	$v0,1680($s4)
    sd	$v0,1832($s3)
    ld	$at,1688($s4)
    sd	$at,1840($s3)
    ld	$a3,1696($s4)
    sd	$a3,1848($s3)
    ld	$v1,1704($s4)
    sd	$v1,1856($s3)
    ld	$v0,1712($s4)
    sd	$v0,1864($s3)
    # Line 1797
    lw	$a3,1696($s3)
    lui	$at,0x80
    nor	$at,$at,$zero
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1798
    lw	$v1,1544($s4)
    lui	$at,0x80
    and	$v1,$v1,$at
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1800
    lw	$v0,1560($s4)
    sw	$v0,1712($s3)
    # Line 1801
    lw	$at,1564($s4)
    sw	$at,1716($s3)
    andi	$a3,$s6,0x80
.L0db2ce68:
    beqz	$a3,.L0db2ceb8
    # Line 1804
    li	$a1,10
    move	$a0,$zero
    addiu	$a2,$s3,1492
    addiu	$a4,$s4,1340
.L0db2ce7c:
    addu	$v0,$a0,$a2
    addu	$at,$a0,$a4
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2ce7c
    sw	$at,0($v0)
    # Line 1805
    lw	$v1,1696($s3)
    li	$a3,-33
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1806
    lw	$v0,1544($s4)
    andi	$v0,$v0,0x20
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
.L0db2ceb8:
    andi	$at,$s6,0x8000
    beqz	$at,.L0db2cf00
    # Line 1810
    andi	$at,$s6,0x40
    lw	$a3,1644($s4)
    sw	$a3,1796($s3)
    lw	$v1,1648($s4)
    sw	$v1,1800($s3)
    lw	$v0,1652($s4)
    sw	$v0,1804($s3)
    lw	$at,1656($s4)
    sw	$at,1808($s3)
    lw	$a3,1660($s4)
    sw	$a3,1812($s3)
    lw	$v1,1664($s4)
    sw	$v1,1816($s3)
    lw	$v0,1668($s4)
    sw	$v0,1820($s3)
    andi	$at,$s6,0x40
.L0db2cf00:
    beqz	$at,.L0db2d020
    # Line 1828
    andi	$a3,$s6,0x4
    # Line 1813
    lw	$at,1144($s4)
    sw	$at,1296($s3)
    # Line 1814
    lw	$a4,1148($s4)
    sw	$a4,1300($s3)
    # Line 1815
    lw	$a3,1152($s4)
    sw	$a3,1304($s3)
    # Line 1816
    lw	$a2,1156($s4)
    sw	$a2,1308($s3)
    lw	$a1,1160($s4)
    sw	$a1,1312($s3)
    lw	$a0,1164($s4)
    sw	$a0,1316($s3)
    lw	$v1,1168($s4)
    # Line 1817
    li	$a1,10
    # Line 1816
    sw	$v1,1320($s3)
    # Line 1817
    move	$a0,$zero
    # Line 1816
    lw	$v0,1172($s4)
    # Line 1817
    addiu	$a2,$s3,1328
    addiu	$a4,$s4,1176
    # Line 1816
    sw	$v0,1324($s3)
.L0db2cf58:
    # Line 1817
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2cf58
    sd	$v0,0($v1)
    # Line 1818
    li	$a1,10
    move	$a0,$zero
    addiu	$a2,$s3,1408
    addiu	$a4,$s4,1256
.L0db2cf84:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2cf84
    sd	$v1,0($a3)
    # Line 1819
    lw	$a1,1336($s4)
    lw	$a0,1488($s3)
    lw	$a3,3328($s3)
    sd	$ra,32($sp)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1822
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1336($s4)
    # Line 1823
    sw	$zero,1336($s4)
    # Line 1824
    lw	$v0,1696($s3)
    li	$v1,-193
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1825
    lw	$at,1544($s4)
    andi	$at,$at,0xc0
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1827
    lw	$ra,1552($s4)
    sw	$ra,1704($s3)
    # Line 1828
    sw	$s7,__glBeginMode
    lw	$a3,11828($s3)
    ld	$ra,32($sp)
    ori	$a3,$a3,0x20
    sw	$a3,11828($s3)
    andi	$a3,$s6,0x4
.L0db2d020:
    beqz	$a3,.L0db2d084
    # Line 1835
    lui	$a3,0x2
    # Line 1831
    lwc1	$f1,292($s4)
    swc1	$f1,444($s3)
    lwc1	$f0,296($s4)
    swc1	$f0,448($s3)
    lw	$v1,300($s4)
    sw	$v1,452($s3)
    lhu	$v0,304($s4)
    sh	$v0,456($s3)
    lh	$at,306($s4)
    # Line 1832
    lw	$v1,1696($s3)
    # Line 1831
    sh	$at,458($s3)
    # Line 1832
    li	$a3,-769
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1833
    lw	$v0,1544($s4)
    andi	$v0,$v0,0x300
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1835
    sw	$s7,__glBeginMode
    lw	$at,11828($s3)
    ori	$at,$at,0x2
    sw	$at,11828($s3)
    lui	$a3,0x2
.L0db2d084:
    and	$a3,$s6,$a3
    beqz	$a3,.L0db2d09c
    # Line 1838
    andi	$v0,$s6,0x20
    lw	$at,1720($s4)
    sw	$at,1872($s3)
    andi	$v0,$s6,0x20
.L0db2d09c:
    beqz	$v0,.L0db2d15c
    # Line 1841
    li	$a0,15
    move	$a2,$zero
    addiu	$a4,$s3,616
    addiu	$a5,$s4,464
.L0db2d0b0:
    addu	$a3,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2d0b0
    sd	$v1,0($a3)
    addu	$a5,$a2,$a5
    lw	$a5,0($a5)
    addu	$a6,$a2,$a4
    sw	$a5,0($a6)
    # Line 1842
    lw	$a3,1000($s4)
    # Line 1844
    addiu	$a1,$s3,4952
    addiu	$a0,$s4,2276
    # Line 1842
    sw	$a3,1152($s3)
    # Line 1844
    # lw $t9, -27344($gp) # &__glCopyColorTableScaleBias
    # Line 1843
    lw	$a2,996($s4)
    sd	$ra,32($sp)
    # Line 1844
    jal	__glCopyColorTableScaleBias
    # Line 1843
    sw	$a2,1148($s3)
    # Line 1845
    lw	$v1,1696($s3)
    lui	$a3,0xe00
    nor	$a3,$a3,$zero
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1846
    lw	$v0,1544($s4)
    lui	$a3,0xe00
    and	$v0,$v0,$a3
    or	$v0,$v0,$v1
    # Line 1848
    lui	$v1,0x3000
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1849
    lw	$at,1544($s4)
    lui	$v1,0x3000
    and	$at,$at,$v1
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1851
    sw	$s7,__glBeginMode
    lw	$ra,11828($s3)
    ori	$ra,$ra,0x10
    sw	$ra,11828($s3)
    ld	$ra,32($sp)
.L0db2d15c:
    andi	$at,$s6,0x2
    beqz	$at,.L0db2d1b4
    # Line 1858
    andi	$v1,$s6,0x8
    # Line 1854
    lwc1	$f3,280($s4)
    swc1	$f3,432($s3)
    lwc1	$f2,284($s4)
    swc1	$f2,436($s3)
    lw	$v0,288($s4)
    # Line 1855
    lw	$a3,1696($s3)
    # Line 1854
    sw	$v0,440($s3)
    # Line 1855
    li	$at,-1025
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1856
    lw	$v1,1544($s4)
    andi	$v1,$v1,0x400
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1858
    sw	$s7,__glBeginMode
    lw	$v0,11828($s3)
    ori	$v0,$v0,0x8
    sw	$v0,11828($s3)
    andi	$v1,$s6,0x8
.L0db2d1b4:
    beqz	$v1,.L0db2d250
    # Line 1876
    andi	$v0,$s6,0x10
    # Line 1861
    lw	$at,308($s4)
    sw	$at,460($s3)
    lw	$a3,312($s4)
    sw	$a3,464($s3)
    lw	$v1,316($s4)
    sw	$v1,468($s3)
    lw	$v0,320($s4)
    sw	$v0,472($s3)
    lw	$at,324($s4)
    sw	$at,476($s3)
    lw	$a3,328($s4)
    sw	$a3,480($s3)
    # Line 1868
    ld	$v0,-14800($gp)
    # Line 1861
    lw	$v1,332($s4)
    # Line 1868
    lw	$at,1696($s3)
    # Line 1861
    sw	$v1,484($s3)
    # Line 1868
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1869
    lw	$a3,1544($s4)
    lui	$v0,0x100
    ori	$v0,$v0,0x3800
    and	$a3,$a3,$v0
    or	$a3,$a3,$at
    # Line 1872
    lw	$v0,1700($s3)
    # Line 1869
    sw	$a3,1696($s3)
    # Line 1872
    li	$v1,-1537
    and	$v0,$v0,$v1
    sw	$v0,1700($s3)
    # Line 1873
    lw	$at,1548($s4)
    andi	$at,$at,0x600
    or	$at,$at,$v0
    sw	$at,1700($s3)
    # Line 1876
    sw	$s7,__glBeginMode
    lw	$a3,11828($s3)
    ori	$a3,$a3,0x4
    sw	$a3,11828($s3)
    andi	$v0,$s6,0x10
.L0db2d250:
    beqz	$v0,.L0db2d2c4
    # Line 1879
    li	$a1,16
    move	$a0,$zero
    addiu	$a2,$s3,488
    addiu	$a4,$s4,336
.L0db2d264:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2d264
    sd	$v1,0($a3)
    # Line 1880
    lw	$a2,1696($s3)
    li	$a3,-8193
    and	$a2,$a2,$a3
    sw	$a2,1696($s3)
    # Line 1883
    move	$a0,$s3
    # Line 1881
    lw	$a1,1544($s4)
    sd	$ra,32($sp)
    # Line 1883
    lw	$t9,12716($s3)
    # Line 1881
    andi	$a1,$a1,0x2000
    or	$a1,$a1,$a2
    # Line 1883
    jalr	$t9
    # Line 1881
    sw	$a1,1696($s3)
    # Line 1884
    sw	$s7,__glBeginMode
    lw	$ra,11828($s3)
    ori	$ra,$ra,0x4
    sw	$ra,11828($s3)
    ld	$ra,32($sp)
.L0db2d2c4:
    lui	$at,0x8
    and	$at,$s6,$at
    beqz	$at,.L0db2d3d4
    # Line 1914
    andi	$at,$s6,0x400
    # Line 1884
    lw	$a1,1696($s3)
    andi	$v0,$a1,0x4000
    beqzl	$v0,.L0db2d328
    # Line 1893
    lw	$a0,1544($s4)
    lw	$v1,2260($s4)
    lw	$a3,2412($s3)
    bne	$v1,$a3,.L0db2d33c
    # Line 1901
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 1893
    lw	$at,2264($s4)
    lw	$v0,2416($s3)
    bne	$at,$v0,.L0db2d33c
    # Line 1901
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 1893
    lw	$v1,2268($s4)
    lw	$a3,2420($s3)
    bne	$v1,$a3,.L0db2d33c
    # Line 1901
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 1893
    lw	$at,2272($s4)
    lw	$v0,2424($s3)
    bne	$at,$v0,.L0db2d33c
    # Line 1901
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 1893
    lw	$a0,1544($s4)
.L0db2d328:
    nor	$v1,$a0,$zero
    and	$v1,$v1,$a1
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0db2d354
    # Line 1901
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
.L0db2d33c:
    sd	$ra,32($sp)
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1544($s4)
    lw	$a1,1696($s3)
    ld	$ra,32($sp)
.L0db2d354:
    nor	$a3,$a1,$zero
    and	$a3,$a3,$a0
    andi	$a3,$a3,0x4000
    beqzl	$a3,.L0db2d378
    # Line 1908
    lw	$a4,2260($s4)
    # Line 1906
    lw	$at,31360($s3)
    sd	$ra,32($sp)
    sw	$at,31364($s3)
    # Line 1908
    lw	$a4,2260($s4)
.L0db2d378:
    sw	$a4,2412($s3)
    lw	$a3,2264($s4)
    sw	$a3,2416($s3)
    lw	$a2,2268($s4)
    sw	$a2,2420($s3)
    # Line 1909
    li	$v1,-16385
    # Line 1908
    lw	$a0,2272($s4)
    # Line 1909
    and	$v1,$a1,$v1
    sw	$v1,1696($s3)
    # Line 1908
    sw	$a0,2424($s3)
    sd	$ra,32($sp)
    # Line 1910
    lw	$v0,1544($s4)
    # Line 1913
    lw	$t9,11988($s3)
    move	$a0,$s3
    # Line 1910
    andi	$v0,$v0,0x4000
    or	$v0,$v0,$v1
    # Line 1913
    jalr	$t9
    # Line 1910
    sw	$v0,1696($s3)
    # Line 1914
    lw	$t9,11980($s3)
    jalr	$t9
    move	$a0,$s3
    ld	$ra,32($sp)
    andi	$at,$s6,0x400
.L0db2d3d4:
    beqz	$at,.L0db2d428
    # Line 1921
    lui	$at,0x4
    # Line 1917
    ld	$a3,1416($s4)
    sd	$a3,1568($s3)
    ld	$v1,1424($s4)
    sd	$v1,1576($s3)
    ld	$v0,1432($s4)
    # Line 1921
    lw	$a3,11824($s3)
    # Line 1917
    sd	$v0,1584($s3)
    # Line 1918
    lw	$v1,1696($s3)
    li	$at,0x8000
    nor	$at,$at,$zero
    and	$v1,$v1,$at
    sw	$v1,1696($s3)
    # Line 1919
    lw	$v0,1544($s4)
    # Line 1921
    ori	$a3,$a3,0x6
    sw	$a3,11824($s3)
    # Line 1919
    andi	$v0,$v0,0x8000
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1921
    lui	$at,0x4
.L0db2d428:
    and	$at,$s6,$at
    beqz	$at,.L0db2d644
    # Line 1927
    li	$a1,31
    move	$a0,$zero
    addiu	$a2,$s3,1876
    addiu	$a4,$s4,1724
    sd	$s5,56($sp)
    # Line 1925
    lw	$s5,3336($s3)
.L0db2d448:
    # Line 1927
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2d448
    sw	$v0,0($v1)
    # Line 1928
    li	$a1,15
    move	$a0,$zero
    addiu	$a4,$s3,2000
    addiu	$a5,$s4,1848
.L0db2d474:
    addu	$a3,$a0,$a4
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2d474
    sd	$v1,0($a3)
    # Line 1929
    li	$a1,31
    move	$a2,$zero
    addiu	$a6,$s3,2124
    addiu	$a7,$s4,1972
    # Line 1928
    addu	$at,$a0,$a4
    addu	$a3,$a0,$a5
    # Line 1930
    li	$a0,15
    # Line 1928
    lw	$a3,0($a3)
    # Line 1930
    addiu	$a5,$s3,2248
    # Line 1928
    sw	$a3,0($at)
.L0db2d4b8:
    # Line 1929
    addu	$v0,$a2,$a6
    addu	$at,$a2,$a7
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db2d4b8
    sw	$at,0($v0)
    # Line 1930
    addiu	$a4,$s4,2096
    move	$a2,$zero
.L0db2d4dc:
    addu	$v1,$a2,$a5
    addu	$v0,$a2,$a4
    addiu	$a2,$a2,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db2d4dc
    sd	$v0,0($v1)
    addu	$v1,$a2,$a4
    lw	$v1,0($v1)
    addu	$a0,$a2,$a5
    sw	$v1,0($a0)
    # Line 1932
    lwc1	$f3,2228($s4)
    swc1	$f3,2380($s3)
    # Line 1933
    lwc1	$f2,2232($s4)
    swc1	$f2,2384($s3)
    # Line 1934
    lwc1	$f1,2236($s4)
    swc1	$f1,2388($s3)
    # Line 1935
    lwc1	$f0,2240($s4)
    swc1	$f0,2392($s3)
    # Line 1937
    lwc1	$f3,2244($s4)
    swc1	$f3,2396($s3)
    # Line 1938
    lwc1	$f2,2248($s4)
    swc1	$f2,2400($s3)
    # Line 1939
    lwc1	$f1,2252($s4)
    sd	$ra,32($sp)
    sd	$s0,72($sp)
    swc1	$f1,2404($s3)
    # Line 1956
    move	$s0,$zero
    # Line 1940
    lwc1	$f0,2256($s4)
    sd	$s1,64($sp)
    # Line 1954
    lw	$a0,2372($s3)
    # Line 1940
    swc1	$f0,2408($s3)
    sd	$s2,80($sp)
    # Line 1955
    lw	$a1,2220($s4)
    # Line 1954
    move	$s2,$a0
    # Line 1956
    beqz	$s5,.L0db2d5ac
    # Line 1955
    move	$s1,$a1
    andi	$a3,$s5,0x1
    beqz	$a3,.L0db2d598
    # Line 1956
    move	$a0,$s5
    lw	$at,216($s2)
    lw	$a2,216($s1)
    bnel	$at,$a2,.L0db2d7c4
    sd	$a0,40($sp)
.L0db2d58c:
    # Line 1957
    addiu	$s1,$s1,224
    addiu	$s2,$s2,224
    addiu	$s0,$s0,1
.L0db2d598:
    sra	$v0,$a0,0x1
    bnez	$v0,.L0db2d75c
    sd	$ra,32($sp)
    lw	$a1,2220($s4)
.L0db2d5a8:
    lw	$a0,2372($s3)
.L0db2d5ac:
    ld	$s1,64($sp)
    ld	$s0,72($sp)
    ld	$s2,80($sp)
    # Line 1964
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$s5,0x3
    subu	$a2,$a2,$s5
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 1966
    lw	$a1,2224($s4)
    lw	$a0,2376($s3)
    lw	$a3,3340($s3)
    ld	$s5,56($sp)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1969
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2220($s4)
    # Line 1970
    sw	$zero,2220($s4)
    # Line 1971
    lw	$t9,12($s3)
    lw	$a1,2224($s4)
    jalr	$t9
    move	$a0,$s3
    # Line 1972
    sw	$zero,2224($s4)
    # Line 1973
    lw	$at,1696($s3)
    lui	$v0,0x3fc0
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1974
    lw	$ra,1544($s4)
    lui	$v0,0xc03f
    and	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,1696($s3)
    ld	$ra,32($sp)
.L0db2d644:
    andi	$v1,$s6,0x1000
    beqz	$v1,.L0db2d6c0
    # Line 1987
    andi	$v1,$s6,0x800
    # Line 1979
    lw	$a0,1652($s3)
    sd	$ra,32($sp)
    lw	$a2,3332($s3)
    # Line 1978
    lw	$a1,1496($s4)
    # Line 1979
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a2,0x4
    # Line 1978
    sw	$a1,1648($s3)
    # Line 1979
    jal	memcpy
    lw	$a1,1500($s4)
    # Line 1982
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1500($s4)
    # Line 1983
    sw	$zero,1500($s4)
    # Line 1984
    lw	$at,1696($s3)
    lui	$v0,0x40
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1985
    lw	$ra,1544($s4)
    lui	$v0,0x40
    and	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,1696($s3)
    # Line 1987
    lw	$a3,1556($s4)
    ld	$ra,32($sp)
    sw	$a3,1708($s3)
    andi	$v1,$s6,0x800
.L0db2d6c0:
    beqz	$v1,.L0db2d718
    ld	$s6,48($sp)
    # Line 1990
    ld	$a7,1440($s4)
    sd	$a7,1592($s3)
    ld	$a6,1448($s4)
    sd	$a6,1600($s3)
    ld	$a5,1456($s4)
    sd	$a5,1608($s3)
    ld	$a4,1464($s4)
    sd	$a4,1616($s3)
    ld	$a3,1472($s4)
    sd	$a3,1624($s3)
    ld	$a2,1480($s4)
    # Line 1991
    move	$a0,$s3
    ld	$s6,48($sp)
    # Line 1990
    sd	$a2,1632($s3)
    # Line 1991
    # lw $t9, -24160($gp) # &__glUpdateViewportTransform
    # Line 1990
    ld	$a1,1488($s4)
    sd	$ra,32($sp)
    # Line 1991
    jal	__glUpdateViewportTransform
    # Line 1990
    sd	$a1,1640($s3)
    ld	$ra,32($sp)
.L0db2d718:
    # Line 1998
    sw	$zero,0($s4)
    # Line 2000
    sw	$s7,__glBeginMode
    lw	$s4,11828($s3)
    ld	$gp,16($sp)
    # Line 2005
    ld	$s7,8($sp)
    # Line 2000
    ori	$s4,$s4,0x1
    sw	$s4,11828($s3)
    # Line 2005
    ld	$s3,24($sp)
    ld	$s4,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db2d744:
    # Line 1959
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
.L0db2d750:
    # Line 1957
    addiu	$s0,$s0,1
    beql	$s5,$s0,.L0db2d5a8
    lw	$a1,2220($s4)
.L0db2d75c:
    # Line 1956
    lw	$a2,216($s1)
    lw	$at,216($s2)
    bne	$at,$a2,.L0db2d78c
    # Line 1959
    nop	# was lw $t9, -24588($gp) # &__glBindTexture
    # Line 1956
    lw	$a2,440($s1)
.L0db2d770:
    lw	$v0,440($s2)
    # Line 1957
    addiu	$s1,$s1,448
    addiu	$s2,$s2,448
    # Line 1956
    beq	$v0,$a2,.L0db2d750
    # Line 1957
    addiu	$s0,$s0,1
    b	.L0db2d744
    # Line 1959
    nop	# was lw $t9, -24588($gp) # &__glBindTexture
.L0db2d78c:
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0db2d770
    # Line 1956
    lw	$a2,440($s1)
.L0db2d7a0:
    # Line 2002
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 2003
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db2d7c4:
    # Line 1959
    # lw $t9, -24588($gp) # &__glBindTexture
    move	$a0,$s3
    sd	$ra,32($sp)
    jal	__glBindTexture
    move	$a1,$s0
    ld	$a0,40($sp)
    b	.L0db2d58c
    ld	$ra,32($sp)
.L0db2d7e4:
    # Line 1743
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_PopAttrib

# Function: __glim_Enable
# Declared: Line 2009 (Source lines: 2010-2227)
# Address: 0x0db2d808 - 0x0db2e478 (Size: 3184 bytes, Frame: 48)
.globl __glim_Enable
.ent __glim_Enable
__glim_Enable:
    # Line 2011
    li	$a3,1
    # Line 2010
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 2011
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 2010
    lui	$v0,0xd
    addiu	$v0,$v0,3728
    # Line 2011
    beq	$at,$a3,.L0db2dcf8
    # Line 2010
    addu	$gp,$t9,$v0
    # Line 2011
    sltiu	$v1,$a0,3510
    bnez	$v1,.L0db2d87c
    # Line 2013
    sltiu	$a1,$a0,3511
    beqz	$a1,.L0db2d928
.L0db2d840:
    # Line 2147
    li	$a2,2
.L0db2d844:
    # Line 2146
    lw	$at,1716($s0)
    addiu	$v0,$a0,-3504
    sllv	$v0,$a3,$v0
    andi	$v0,$v0,0xffff
    or	$at,$at,$v0
    sw	$at,1716($s0)
.L0db2d85c:
    # Line 2226
    sw	$a2,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x1
    sw	$v1,11828($s0)
    # Line 2227
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2d87c:
    # Line 2013
    sltiu	$a1,$a0,3169
    bnez	$a1,.L0db2d8d4
    sltiu	$at,$a0,3170
    bnez	$at,.L0db2da10
    # Line 2107
    lui	$v0,0x8
    # Line 2013
    sltiu	$v0,$a0,3478
    bnez	$v0,.L0db2da24
    sltiu	$v1,$a0,3479
    bnez	$v1,.L0db2da70
    sltiu	$a1,$a0,3506
    bnez	$a1,.L0db2dd74
    sltiu	$at,$a0,3507
    bnez	$at,.L0db2d840
    sltiu	$v0,$a0,3508
    bnez	$v0,.L0db2e2d0
    sltiu	$v1,$a0,3509
    bnez	$v1,.L0db2d840
    li	$a1,3509
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d844
    # Line 2147
    li	$a2,2
.L0db2d8d4:
    # Line 2013
    sltiu	$at,$a0,2929
    bnez	$at,.L0db2d9a4
    sltiu	$v0,$a0,2930
    bnez	$v0,.L0db2daf4
    sltiu	$v1,$a0,3042
    bnez	$v1,.L0db2dbf0
    sltiu	$a1,$a0,3043
    bnez	$a1,.L0db2de44
    sltiu	$at,$a0,3089
    bnez	$at,.L0db2df64
    sltiu	$v0,$a0,3090
    beqz	$v0,.L0db2e1d0
    li	$v1,3168
    # Line 2075
    lw	$a0,1696($s0)
    andi	$v1,$a0,0x4000
    beqzl	$v1,.L0db2e400
    # Line 2076
    lbu	$v0,1540($s0)
    ld	$gp,0($sp)
    # Line 2075
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2d928:
    # Line 2013
    sltiu	$a1,$a0,16390
    bnez	$a1,.L0db2d9e4
    sltiu	$at,$a0,16391
    bnez	$at,.L0db2dbb8
    li	$a2,0x8075
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db2db50
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0db2df14
    li	$a2,0x80bc
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db2dd98
    sltu	$at,$a2,$a0
    beqz	$at,.L0db2e0d4
    li	$a2,0x80d1
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db2e1f0
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0db2e3b0
    li	$a1,0x80d2
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2219
    lw	$v0,1700($s0)
    # Line 2220
    li	$a2,2
    # Line 2219
    ori	$v0,$v0,0x4
    sw	$v0,1700($s0)
    # Line 2220
    sw	$a2,__glBeginMode
    lw	$at,11828($s0)
    ori	$at,$at,0x10
    # Line 2221
    b	.L0db2d85c
    # Line 2220
    sw	$at,11828($s0)
.L0db2d9a4:
    # Line 2013
    sltiu	$v1,$a0,2882
    bnez	$v1,.L0db2da90
    sltiu	$a1,$a0,2883
    bnez	$a1,.L0db2de58
    sltiu	$at,$a0,2903
    bnez	$at,.L0db2db18
    sltiu	$v0,$a0,2904
    bnez	$v0,.L0db2e220
    li	$v1,2912
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2038
    lw	$a1,1696($s0)
    # Line 2039
    li	$a2,2
    # Line 2038
    ori	$a1,$a1,0x20
    # Line 2039
    b	.L0db2d85c
    # Line 2038
    sw	$a1,1696($s0)
.L0db2d9e4:
    # Line 2013
    sltiu	$at,$a0,12291
    bnez	$at,.L0db2dac0
    sltiu	$v0,$a0,12292
    beqz	$v0,.L0db2dc7c
.L0db2d9f4:
    # Line 2121
    li	$a2,2
.L0db2d9f8:
    # Line 2120
    lw	$v1,1708($s0)
    addiu	$a1,$a0,-12288
    sllv	$a1,$a3,$a1
    or	$v1,$v1,$a1
    # Line 2121
    b	.L0db2d85c
    # Line 2120
    sw	$v1,1708($s0)
.L0db2da10:
    # Line 2107
    lw	$at,1696($s0)
    # Line 2108
    li	$a2,2
    # Line 2107
    or	$at,$at,$v0
    # Line 2108
    b	.L0db2d85c
    # Line 2107
    sw	$at,1696($s0)
.L0db2da24:
    # Line 2013
    sltiu	$v1,$a0,3473
    bnez	$v1,.L0db2da58
    sltiu	$a1,$a0,3474
    bnez	$a1,.L0db2da70
    sltiu	$at,$a0,3476
    bnez	$at,.L0db2dfe0
    sltiu	$v0,$a0,3477
    bnez	$v0,.L0db2da70
    li	$v1,3477
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2da74
    # Line 2138
    li	$a2,2
.L0db2da58:
    # Line 2013
    sltiu	$a1,$a0,3456
    bnez	$a1,.L0db2dd48
    sltiu	$at,$a0,3457
    bnez	$at,.L0db2e0bc
    li	$v0,3472
    bne	$a0,$v0,.L0db2db2c
.L0db2da70:
    # Line 2138
    li	$a2,2
.L0db2da74:
    # Line 2137
    lw	$v1,1712($s0)
    addiu	$a1,$a0,-3472
    sllv	$a1,$a3,$a1
    andi	$a1,$a1,0xffff
    or	$v1,$v1,$a1
    # Line 2138
    b	.L0db2d85c
    # Line 2137
    sw	$v1,1712($s0)
.L0db2da90:
    # Line 2013
    sltiu	$at,$a0,2852
    bnez	$at,.L0db2dc20
    sltiu	$v0,$a0,2853
    bnez	$v0,.L0db2e0ec
    li	$v1,2881
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2068
    lw	$a1,1696($s0)
    # Line 2069
    li	$a2,2
    # Line 2068
    ori	$a1,$a1,0x800
    # Line 2069
    b	.L0db2d85c
    # Line 2068
    sw	$a1,1696($s0)
.L0db2dac0:
    # Line 2013
    sltiu	$at,$a0,10753
    bnez	$at,.L0db2dc48
    sltiu	$v0,$a0,10754
    bnez	$v0,.L0db2de88
    sltiu	$v1,$a0,12289
    bnez	$v1,.L0db2e018
    sltiu	$a1,$a0,12290
    bnez	$a1,.L0db2d9f4
    li	$at,12290
    bne	$a0,$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d9f8
    # Line 2121
    li	$a2,2
.L0db2daf4:
    # Line 2031
    lw	$v1,1696($s0)
    # Line 2032
    li	$a2,2
    # Line 2031
    ori	$v1,$v1,0x10
    sw	$v1,1696($s0)
    # Line 2032
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x80
    # Line 2033
    b	.L0db2d85c
    # Line 2032
    sw	$v0,11828($s0)
.L0db2db18:
    # Line 2013
    sltiu	$a1,$a0,2896
    bnez	$a1,.L0db2deac
    sltiu	$at,$a0,2897
    bnez	$at,.L0db2e25c
    sd	$ra,16($sp)
.L0db2db2c:
    # Line 2223
    # lw $t9, -27320($gp) # &__glSetError
.L0db2db30:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2224
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2db50:
    # Line 2013
    li	$a2,0x8024
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db2dcb0
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0db2df3c
    li	$a2,0x806f
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db2e134
    sltu	$at,$a2,$a0
    beqz	$at,.L0db2e398
    li	$v0,0x8074
    bne	$a0,$v0,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2161
    lw	$v1,4944($s0)
    # Line 2162
    lw	$a0,4948($s0)
    ld	$gp,0($sp)
    # Line 2161
    ori	$v1,$v1,0xff
    # Line 2162
    ori	$a0,$a0,0x20
    sw	$a0,4948($s0)
    # Line 2161
    sw	$v1,4944($s0)
    # Line 2163
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2dbac:
    # Line 2013
    li	$a1,16387
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db2dbb8:
    # Line 2128
    li	$v0,2
.L0db2dbbc:
    # Line 2127
    lw	$v1,1704($s0)
    addiu	$a0,$a0,-16384
    sllv	$a0,$a3,$a0
    or	$v1,$v1,$a0
    sw	$v1,1704($s0)
    # Line 2128
    sw	$v0,__glBeginMode
    lw	$at,11828($s0)
    ld	$gp,0($sp)
    ori	$at,$at,0x20
    sw	$at,11828($s0)
    # Line 2129
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2dbf0:
    # Line 2013
    sltiu	$a1,$a0,3008
    bnez	$a1,.L0db2dd1c
    sltiu	$at,$a0,3009
    bnez	$at,.L0db2e0a8
    li	$v0,3024
    bne	$a0,$v0,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2035
    lw	$v1,1696($s0)
    # Line 2036
    li	$a2,2
    # Line 2035
    ori	$v1,$v1,0x8
    # Line 2036
    b	.L0db2d85c
    # Line 2035
    sw	$v1,1696($s0)
.L0db2dc20:
    # Line 2013
    sltiu	$a1,$a0,2848
    bnez	$a1,.L0db2dde4
    sltiu	$at,$a0,2849
    beqz	$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2047
    lw	$v0,1696($s0)
    # Line 2048
    li	$a2,2
    # Line 2047
    ori	$v0,$v0,0x200
    # Line 2048
    b	.L0db2d85c
    # Line 2047
    sw	$v0,1696($s0)
.L0db2dc48:
    # Line 2013
    sltiu	$v1,$a0,3552
    bnez	$v1,.L0db2de04
    sltiu	$a1,$a0,3553
    bnez	$a1,.L0db2e11c
    li	$at,3553
    bne	$a0,$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2098
    lw	$v0,1696($s0)
    # Line 2099
    li	$a2,2
    # Line 2098
    lui	$v1,0x2
    or	$v0,$v0,$v1
    # Line 2099
    b	.L0db2d85c
    # Line 2098
    sw	$v0,1696($s0)
.L0db2dc7c:
    # Line 2013
    sltiu	$a1,$a0,16386
    bnez	$a1,.L0db2de20
    sltiu	$at,$a0,16387
    bnez	$at,.L0db2dbb8
    sltiu	$v0,$a0,16388
    bnez	$v0,.L0db2dbac
    sltiu	$v1,$a0,16389
    bnez	$v1,.L0db2dbb8
    li	$a1,16389
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2dbbc
    # Line 2128
    li	$v0,2
.L0db2dcb0:
    # Line 2013
    li	$a2,0x8011
    sltu	$at,$a0,$a2
    bnez	$at,.L0db2ded4
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0db2e188
    li	$v1,0x8012
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2193
    lw	$at,1696($s0)
    # Line 2194
    li	$a2,2
    # Line 2193
    lui	$v0,0x800
    or	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2194
    sw	$a2,__glBeginMode
    lw	$a1,11828($s0)
    ori	$a1,$a1,0x10
    # Line 2195
    b	.L0db2d85c
    # Line 2194
    sw	$a1,11828($s0)
.L0db2dcf8:
    # Line 2011
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2dd1c:
    # Line 2013
    sltiu	$v1,$a0,2977
    bnez	$v1,.L0db2df9c
    sltiu	$a1,$a0,2978
    beqz	$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2062
    lw	$at,1696($s0)
    # Line 2063
    li	$a2,2
    # Line 2062
    lui	$v0,0x40
    or	$at,$at,$v0
    # Line 2063
    b	.L0db2d85c
    # Line 2062
    sw	$at,1696($s0)
.L0db2dd48:
    # Line 2013
    sltiu	$v1,$a0,3171
    bnez	$v1,.L0db2dfbc
    sltiu	$a1,$a0,3172
    beqz	$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2113
    lw	$at,1696($s0)
    # Line 2114
    li	$a2,2
    # Line 2113
    lui	$v0,0x20
    or	$at,$at,$v0
    # Line 2114
    b	.L0db2d85c
    # Line 2113
    sw	$at,1696($s0)
.L0db2dd74:
    # Line 2013
    sltiu	$v1,$a0,3504
    bnez	$v1,.L0db2dffc
    sltiu	$a1,$a0,3505
    bnez	$a1,.L0db2d840
    li	$at,3505
    bne	$a0,$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d844
    # Line 2147
    li	$a2,2
.L0db2dd98:
    # Line 2013
    li	$a2,0x8078
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db2e034
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0db2e3d4
    li	$a1,0x8079
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2181
    lw	$at,4944($s0)
    # Line 2182
    lw	$v1,4948($s0)
    # Line 2181
    lui	$v0,0x800
    or	$at,$at,$v0
    # Line 2182
    ori	$v1,$v1,0x10
    sw	$v1,4948($s0)
    # Line 2181
    sw	$at,4944($s0)
    # Line 2183
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2dde4:
    # Line 2013
    li	$a1,2832
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2065
    lw	$at,1696($s0)
    # Line 2066
    li	$a2,2
    # Line 2065
    ori	$at,$at,0x400
    # Line 2066
    b	.L0db2d85c
    # Line 2065
    sw	$at,1696($s0)
.L0db2de04:
    # Line 2013
    sltiu	$v0,$a0,3512
    bnez	$v0,.L0db2e078
    sltiu	$v1,$a0,3513
    beqz	$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d844
    # Line 2147
    li	$a2,2
.L0db2de20:
    # Line 2013
    sltiu	$a1,$a0,16384
    bnez	$a1,.L0db2e08c
    sltiu	$at,$a0,16385
    bnez	$at,.L0db2dbb8
    li	$v0,16385
    bne	$a0,$v0,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2dbbc
    # Line 2128
    li	$v0,2
.L0db2de44:
    # Line 2018
    lw	$v1,1696($s0)
    # Line 2019
    li	$a2,2
    # Line 2018
    ori	$v1,$v1,0x2
    # Line 2019
    b	.L0db2d85c
    # Line 2018
    sw	$v1,1696($s0)
.L0db2de58:
    # Line 2071
    lw	$at,1696($s0)
    # Line 2072
    li	$a1,2
    # Line 2071
    ori	$at,$at,0x2000
    sw	$at,1696($s0)
    # Line 2072
    sw	$a1,__glBeginMode
    lw	$a0,11828($s0)
    ld	$gp,0($sp)
    ori	$a0,$a0,0x4
    sw	$a0,11828($s0)
    # Line 2073
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2de88:
    # Line 2153
    lw	$v1,1700($s0)
    # Line 2154
    li	$a2,2
    # Line 2153
    ori	$v1,$v1,0x200
    sw	$v1,1700($s0)
    # Line 2154
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x4
    # Line 2155
    b	.L0db2d85c
    # Line 2154
    sw	$v0,11828($s0)
.L0db2deac:
    # Line 2013
    li	$a1,2884
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2026
    lw	$a0,1696($s0)
    andi	$at,$a0,0x1000
    beqz	$at,.L0db2e44c
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ded4:
    # Line 2013
    li	$a2,0x8010
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db2e174
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2185
    lw	$at,1696($s0)
    # Line 2186
    li	$a2,2
    # Line 2185
    lui	$v0,0x200
    or	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2186
    sw	$a2,__glBeginMode
    lw	$a1,11828($s0)
    ori	$a1,$a1,0x10
    # Line 2187
    b	.L0db2d85c
    # Line 2186
    sw	$a1,11828($s0)
.L0db2df14:
    # Line 2165
    lw	$v1,4944($s0)
    # Line 2166
    lw	$a0,4948($s0)
    ld	$gp,0($sp)
    # Line 2165
    ori	$v1,$v1,0xf00
    # Line 2166
    ori	$a0,$a0,0x1
    sw	$a0,4948($s0)
    # Line 2165
    sw	$v1,4944($s0)
    # Line 2167
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2df3c:
    # Line 2197
    lw	$at,1696($s0)
    # Line 2198
    li	$a2,2
    # Line 2197
    lui	$v0,0x1000
    or	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2198
    sw	$a2,__glBeginMode
    lw	$a1,11828($s0)
    ori	$a1,$a1,0x10
    # Line 2199
    b	.L0db2d85c
    # Line 2198
    sw	$a1,11828($s0)
.L0db2df64:
    # Line 2013
    sltiu	$v1,$a0,3058
    bnez	$v1,.L0db2e1b0
    sltiu	$a1,$a0,3059
    beqz	$a1,.L0db2db2c
    sd	$ra,16($sp)
    # Line 2057
    lw	$a2,1700($s0)
    # Line 2059
    # lw $t9, -28028($gp) # &__glim_BlendEquationEXT
    li	$a0,3057
    # Line 2057
    ori	$a2,$a2,0x800
    # Line 2059
    bal __glim_BlendEquationEXT
    # Line 2057
    sw	$a2,1700($s0)
    # Line 2060
    li	$a2,2
    b	.L0db2d85c
    ld	$ra,16($sp)
.L0db2df9c:
    # Line 2013
    li	$at,2960
    bne	$a0,$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2092
    lw	$v0,1696($s0)
    # Line 2093
    li	$a2,2
    # Line 2092
    ori	$v0,$v0,0x8000
    # Line 2093
    b	.L0db2d85c
    # Line 2092
    sw	$v0,1696($s0)
.L0db2dfbc:
    # Line 2013
    li	$v1,3170
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2110
    lw	$a1,1696($s0)
    # Line 2111
    li	$a2,2
    # Line 2110
    lui	$at,0x10
    or	$a1,$a1,$at
    # Line 2111
    b	.L0db2d85c
    # Line 2110
    sw	$a1,1696($s0)
.L0db2dfe0:
    # Line 2013
    sltiu	$v0,$a0,3475
    bnez	$v0,.L0db2e2a8
    sltiu	$v1,$a0,3476
    beqz	$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2da74
    # Line 2138
    li	$a2,2
.L0db2dffc:
    # Line 2013
    sltiu	$a1,$a0,3480
    bnez	$a1,.L0db2e2bc
    sltiu	$at,$a0,3481
    beqz	$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2da74
    # Line 2138
    li	$a2,2
.L0db2e018:
    # Line 2013
    sltiu	$v0,$a0,12288
    bnez	$v0,.L0db2e2e4
    sltiu	$v1,$a0,12289
    beqz	$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d9f8
    # Line 2121
    li	$a2,2
.L0db2e034:
    # Line 2013
    li	$a2,0x8077
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db2e314
    sltu	$at,$a2,$a0
    bnez	$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2173
    lw	$v0,4944($s0)
    # Line 2174
    lw	$a0,4948($s0)
    # Line 2173
    lui	$v1,0xf000
    or	$v0,$v0,$v1
    # Line 2174
    ori	$a0,$a0,0x8
    sw	$a0,4948($s0)
    # Line 2173
    sw	$v0,4944($s0)
    # Line 2175
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e078:
    # Line 2013
    li	$a1,3511
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d844
    # Line 2147
    li	$a2,2
.L0db2e08c:
    # Line 2013
    sltiu	$at,$a0,12293
    bnez	$at,.L0db2e350
    sltiu	$v0,$a0,12294
    beqz	$v0,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d9f8
    # Line 2121
    li	$a2,2
.L0db2e0a8:
    # Line 2015
    lw	$v1,1696($s0)
    # Line 2016
    li	$a2,2
    # Line 2015
    ori	$v1,$v1,0x1
    # Line 2016
    b	.L0db2d85c
    # Line 2015
    sw	$v1,1696($s0)
.L0db2e0bc:
    # Line 2101
    lw	$a1,1696($s0)
    # Line 2102
    li	$a2,2
    # Line 2101
    lui	$at,0x80
    or	$a1,$a1,$at
    # Line 2102
    b	.L0db2d85c
    # Line 2101
    sw	$a1,1696($s0)
.L0db2e0d4:
    # Line 2208
    lw	$v0,1696($s0)
    # Line 2209
    li	$a2,2
    # Line 2208
    lui	$v1,0x8000
    or	$v0,$v0,$v1
    # Line 2209
    b	.L0db2d85c
    # Line 2208
    sw	$v0,1696($s0)
.L0db2e0ec:
    # Line 2050
    lw	$at,1696($s0)
    # Line 2051
    li	$a1,2
    # Line 2050
    ori	$at,$at,0x100
    sw	$at,1696($s0)
    # Line 2051
    sw	$a1,__glBeginMode
    lw	$a0,11828($s0)
    ld	$gp,0($sp)
    ori	$a0,$a0,0x2
    sw	$a0,11828($s0)
    # Line 2052
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e11c:
    # Line 2095
    lw	$v0,1696($s0)
    # Line 2096
    li	$a2,2
    # Line 2095
    lui	$v1,0x1
    or	$v0,$v0,$v1
    # Line 2096
    b	.L0db2d85c
    # Line 2095
    sw	$v0,1696($s0)
.L0db2e134:
    # Line 2013
    li	$a2,0x8037
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db2e364
    sltu	$at,$a2,$a0
    bnez	$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2149
    lw	$v1,1696($s0)
    # Line 2150
    li	$a2,2
    # Line 2149
    lui	$a1,0x100
    or	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2150
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x4
    # Line 2151
    b	.L0db2d85c
    # Line 2150
    sw	$v0,11828($s0)
.L0db2e174:
    # Line 2013
    li	$at,16391
    bne	$a0,$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2dbbc
    # Line 2128
    li	$v0,2
.L0db2e188:
    # Line 2189
    lw	$v1,1696($s0)
    # Line 2190
    li	$a2,2
    # Line 2189
    lui	$a1,0x400
    or	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2190
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x10
    # Line 2191
    b	.L0db2d85c
    # Line 2190
    sw	$v0,11828($s0)
.L0db2e1b0:
    # Line 2013
    li	$at,3057
    bne	$a0,$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2054
    lw	$v0,1696($s0)
    # Line 2055
    li	$a2,2
    # Line 2054
    ori	$v0,$v0,0x4
    # Line 2055
    b	.L0db2d85c
    # Line 2054
    sw	$v0,1696($s0)
.L0db2e1d0:
    # Line 2013
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2104
    lw	$a1,1696($s0)
    # Line 2105
    li	$a2,2
    # Line 2104
    lui	$at,0x4
    or	$a1,$a1,$at
    # Line 2105
    b	.L0db2d85c
    # Line 2104
    sw	$a1,1696($s0)
.L0db2e1f0:
    # Line 2013
    li	$v0,0x80d0
    bne	$a0,$v0,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2211
    lw	$a1,1700($s0)
    # Line 2212
    li	$a2,2
    # Line 2211
    ori	$a1,$a1,0x1
    sw	$a1,1700($s0)
    # Line 2212
    sw	$a2,__glBeginMode
    lw	$v1,11828($s0)
    ori	$v1,$v1,0x10
    # Line 2213
    b	.L0db2d85c
    # Line 2212
    sw	$v1,11828($s0)
.L0db2e220:
    # Line 2022
    move	$a0,$s0
    # Line 2021
    lw	$a2,1696($s0)
    # Line 2022
    lw	$t9,11864($s0)
    sd	$ra,16($sp)
    # Line 2021
    ori	$a2,$a2,0x80
    # Line 2022
    jal	__glSetError
    # Line 2021
    sw	$a2,1696($s0)
    # Line 2023
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2024
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e25c:
    # Line 2041
    lw	$a5,1696($s0)
    # Line 2042
    li	$a4,2
    # Line 2041
    ori	$a5,$a5,0x40
    sw	$a5,1696($s0)
    # Line 2042
    sw	$a4,__glBeginMode
    lw	$a3,11828($s0)
    # Line 2043
    lw	$t9,11864($s0)
    move	$a0,$s0
    # Line 2042
    ori	$a3,$a3,0x20
    # Line 2043
    jalr	$t9
    # Line 2042
    sw	$a3,11828($s0)
    # Line 2044
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2045
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e2a8:
    # Line 2013
    li	$at,3474
    bne	$a0,$at,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2da74
    # Line 2138
    li	$a2,2
.L0db2e2bc:
    # Line 2013
    li	$v0,3479
    bne	$a0,$v0,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2da74
    # Line 2138
    li	$a2,2
.L0db2e2d0:
    # Line 2013
    li	$v1,3507
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d844
    # Line 2147
    li	$a2,2
.L0db2e2e4:
    # Line 2013
    li	$a1,10754
    bne	$a0,$a1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2157
    lw	$v0,1700($s0)
    # Line 2158
    li	$a2,2
    # Line 2157
    ori	$v0,$v0,0x400
    sw	$v0,1700($s0)
    # Line 2158
    sw	$a2,__glBeginMode
    lw	$at,11828($s0)
    ori	$at,$at,0x4
    # Line 2159
    b	.L0db2d85c
    # Line 2158
    sw	$at,11828($s0)
.L0db2e314:
    # Line 2013
    li	$v1,0x8076
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2169
    lui	$a1,0xf
    lw	$a0,4944($s0)
    # Line 2170
    lw	$at,4948($s0)
    # Line 2169
    ori	$a1,$a1,0xf000
    or	$a0,$a0,$a1
    # Line 2170
    ori	$at,$at,0x2
    sw	$at,4948($s0)
    # Line 2169
    sw	$a0,4944($s0)
    # Line 2171
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e350:
    # Line 2013
    li	$v0,12292
    bne	$a0,$v0,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2d9f8
    # Line 2121
    li	$a2,2
.L0db2e364:
    # Line 2013
    li	$v1,0x802e
    bne	$a0,$v1,.L0db2db30
    # Line 2223
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2201
    lw	$at,1696($s0)
    # Line 2202
    li	$a2,2
    # Line 2201
    lui	$v0,0x2000
    or	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2202
    sw	$a2,__glBeginMode
    lw	$a1,11828($s0)
    ori	$a1,$a1,0x10
    # Line 2203
    b	.L0db2d85c
    # Line 2202
    sw	$a1,11828($s0)
.L0db2e398:
    # Line 2205
    lw	$v1,1696($s0)
    # Line 2206
    li	$a2,2
    # Line 2205
    lui	$a1,0x4000
    or	$v1,$v1,$a1
    # Line 2206
    b	.L0db2d85c
    # Line 2205
    sw	$v1,1696($s0)
.L0db2e3b0:
    # Line 2215
    lw	$v0,1700($s0)
    # Line 2216
    li	$a2,2
    # Line 2215
    ori	$v0,$v0,0x2
    sw	$v0,1700($s0)
    # Line 2216
    sw	$a2,__glBeginMode
    lw	$at,11828($s0)
    ori	$at,$at,0x10
    # Line 2217
    b	.L0db2d85c
    # Line 2216
    sw	$at,11828($s0)
.L0db2e3d4:
    ld	$gp,0($sp)
    # Line 2177
    lw	$v1,4944($s0)
    # Line 2178
    lw	$a1,4948($s0)
    # Line 2177
    lui	$a0,0x7f0
    or	$v1,$v1,$a0
    # Line 2178
    ori	$a1,$a1,0x4
    sw	$a1,4948($s0)
    # Line 2177
    sw	$v1,4944($s0)
    # Line 2179
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e400:
    # Line 2076
    ori	$at,$a0,0x4000
    beqz	$v0,.L0db2e424
    sw	$at,1696($s0)
    lbu	$v1,3109($s0)
    beqzl	$v1,.L0db2e428
    # Line 2088
    lw	$t9,11988($s0)
    # Line 2079
    lw	$a1,31360($s0)
    sd	$ra,16($sp)
    sw	$a1,31364($s0)
.L0db2e424:
    # Line 2088
    lw	$t9,11988($s0)
.L0db2e428:
    sd	$ra,16($sp)
    jal	__glSetError
    move	$a0,$s0
    # Line 2089
    lw	$t9,11980($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2090
    li	$a2,2
    b	.L0db2d85c
    ld	$ra,16($sp)
.L0db2e44c:
    # Line 2028
    li	$v0,2
    # Line 2027
    ori	$v1,$a0,0x1000
    sw	$v1,1696($s0)
    # Line 2028
    sw	$v0,__glBeginMode
    lw	$at,11828($s0)
    ld	$gp,0($sp)
    ori	$at,$at,0x4
    sw	$at,11828($s0)
    # Line 2029
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Enable

# Function: __glim_Disable
# Declared: Line 2229 (Source lines: 2230-2432)
# Address: 0x0db2e478 - 0x0db2f130 (Size: 3256 bytes, Frame: 48)
.globl __glim_Disable
.ent __glim_Disable
__glim_Disable:
    # Line 2231
    li	$a3,1
    # Line 2230
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 2231
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 2230
    lui	$v0,0xd
    addiu	$v0,$v0,544
    # Line 2231
    beq	$at,$a3,.L0db2e974
    # Line 2230
    addu	$gp,$t9,$v0
    # Line 2231
    sltiu	$v1,$a0,3510
    bnez	$v1,.L0db2e4f0
    # Line 2233
    sltiu	$a1,$a0,3511
    beqz	$a1,.L0db2e598
.L0db2e4b0:
    # Line 2355
    li	$a2,2
.L0db2e4b4:
    # Line 2354
    lw	$at,1716($s0)
    addiu	$v0,$a0,-3504
    sllv	$v0,$a3,$v0
    nor	$v0,$v0,$zero
    andi	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1716($s0)
.L0db2e4d0:
    # Line 2431
    sw	$a2,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x1
    sw	$v1,11828($s0)
    # Line 2432
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e4f0:
    # Line 2233
    sltiu	$a1,$a0,3169
    bnez	$a1,.L0db2e544
    sltiu	$at,$a0,3170
    bnez	$at,.L0db2e67c
    sltiu	$v0,$a0,3478
    bnez	$v0,.L0db2e698
    sltiu	$v1,$a0,3479
    bnez	$v1,.L0db2e6a8
    sltiu	$a1,$a0,3506
    bnez	$a1,.L0db2ea14
    sltiu	$at,$a0,3507
    bnez	$at,.L0db2e4b0
    sltiu	$v0,$a0,3508
    bnez	$v0,.L0db2efa0
    sltiu	$v1,$a0,3509
    bnez	$v1,.L0db2e4b0
    li	$a1,3509
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e4b4
    # Line 2355
    li	$a2,2
.L0db2e544:
    # Line 2233
    sltiu	$at,$a0,2929
    bnez	$at,.L0db2e608
    sltiu	$v0,$a0,2930
    bnez	$v0,.L0db2e734
    sltiu	$v1,$a0,3042
    bnez	$v1,.L0db2e840
    sltiu	$a1,$a0,3043
    bnez	$a1,.L0db2eaf0
    sltiu	$at,$a0,3089
    bnez	$at,.L0db2ec48
    sltiu	$v0,$a0,3090
    bnez	$v0,.L0db2f0dc
    li	$v1,3168
    bne	$a0,$v1,.L0db2e770
    # Line 2313
    li	$a2,2
    # Line 2312
    lw	$a1,1696($s0)
    lui	$at,0x4
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 2313
    b	.L0db2e4d0
    # Line 2312
    sw	$a1,1696($s0)
.L0db2e598:
    # Line 2233
    sltiu	$v0,$a0,16390
    bnez	$v0,.L0db2e64c
    sltiu	$v1,$a0,16391
    bnez	$v1,.L0db2e804
    li	$a2,0x8075
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db2e794
    sltu	$at,$a2,$a0
    beqz	$at,.L0db2ebec
    li	$a2,0x80bc
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db2ea38
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0db2edc0
    li	$a2,0x80d1
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db2eed0
    sltu	$at,$a2,$a0
    beqz	$at,.L0db2f090
    li	$v0,0x80d2
    bne	$a0,$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2425
    lw	$v1,1700($s0)
    # Line 2426
    li	$a2,2
    # Line 2425
    li	$a1,-5
    and	$v1,$v1,$a1
    # Line 2426
    b	.L0db2e4d0
    # Line 2425
    sw	$v1,1700($s0)
.L0db2e608:
    # Line 2233
    sltiu	$at,$a0,2882
    bnez	$at,.L0db2e6cc
    sltiu	$v0,$a0,2883
    bnez	$v0,.L0db2eb08
    sltiu	$v1,$a0,2903
    bnez	$v1,.L0db2e75c
    sltiu	$a1,$a0,2904
    bnez	$a1,.L0db2eef4
    li	$at,2912
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2257
    lw	$v0,1696($s0)
    # Line 2258
    li	$a2,2
    # Line 2257
    li	$v1,-33
    and	$v0,$v0,$v1
    # Line 2258
    b	.L0db2e4d0
    # Line 2257
    sw	$v0,1696($s0)
.L0db2e64c:
    # Line 2233
    sltiu	$a1,$a0,12291
    bnez	$a1,.L0db2e700
    sltiu	$at,$a0,12292
    beqz	$at,.L0db2e8f8
.L0db2e65c:
    # Line 2329
    li	$a2,2
.L0db2e660:
    # Line 2328
    addiu	$v1,$a0,-12288
    lw	$v0,1708($s0)
    sllv	$v1,$a3,$v1
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 2329
    b	.L0db2e4d0
    # Line 2328
    sw	$v0,1708($s0)
.L0db2e67c:
    # Line 2316
    li	$a2,2
    # Line 2315
    lw	$a1,1696($s0)
    lui	$at,0x8
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 2316
    b	.L0db2e4d0
    # Line 2315
    sw	$a1,1696($s0)
.L0db2e698:
    # Line 2233
    sltiu	$v0,$a0,3473
    bnez	$v0,.L0db2e874
    sltiu	$v1,$a0,3474
    beqz	$v1,.L0db2e9f0
.L0db2e6a8:
    # Line 2346
    li	$a2,2
.L0db2e6ac:
    # Line 2345
    lw	$a1,1712($s0)
    addiu	$at,$a0,-3472
    sllv	$at,$a3,$at
    nor	$at,$at,$zero
    andi	$at,$at,0xffff
    and	$a1,$a1,$at
    # Line 2346
    b	.L0db2e4d0
    # Line 2345
    sw	$a1,1712($s0)
.L0db2e6cc:
    # Line 2233
    sltiu	$v0,$a0,2852
    bnez	$v0,.L0db2e898
    sltiu	$v1,$a0,2853
    bnez	$v1,.L0db2eddc
    li	$a1,2881
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2285
    lw	$at,1696($s0)
    # Line 2286
    li	$a2,2
    # Line 2285
    li	$v0,-2049
    and	$at,$at,$v0
    # Line 2286
    b	.L0db2e4d0
    # Line 2285
    sw	$at,1696($s0)
.L0db2e700:
    # Line 2233
    sltiu	$v1,$a0,10753
    bnez	$v1,.L0db2e8c4
    sltiu	$a1,$a0,10754
    bnez	$a1,.L0db2eb3c
    sltiu	$at,$a0,12289
    bnez	$at,.L0db2ecf4
    sltiu	$v0,$a0,12290
    bnez	$v0,.L0db2e65c
    li	$v1,12290
    bne	$a0,$v1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e660
    # Line 2329
    li	$a2,2
.L0db2e734:
    # Line 2250
    lw	$at,1696($s0)
    # Line 2251
    li	$a2,2
    # Line 2250
    li	$v0,-17
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2251
    sw	$a2,__glBeginMode
    lw	$a1,11828($s0)
    ori	$a1,$a1,0x80
    # Line 2252
    b	.L0db2e4d0
    # Line 2251
    sw	$a1,11828($s0)
.L0db2e75c:
    # Line 2233
    sltiu	$v1,$a0,2896
    bnez	$v1,.L0db2eb64
    sltiu	$a1,$a0,2897
    bnez	$a1,.L0db2ef28
    sd	$ra,16($sp)
.L0db2e770:
    # Line 2428
    # lw $t9, -27320($gp) # &__glSetError
.L0db2e774:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2429
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e794:
    # Line 2233
    li	$a2,0x8024
    sltu	$at,$a0,$a2
    bnez	$at,.L0db2e92c
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0db2ec1c
    li	$a2,0x806f
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db2ee2c
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0db2f074
    li	$at,0x8074
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2370
    li	$a1,-33
    # Line 2369
    lw	$v0,4944($s0)
    # Line 2370
    lw	$a0,4948($s0)
    # Line 2369
    li	$v1,-256
    and	$v0,$v0,$v1
    # Line 2370
    and	$a0,$a0,$a1
    sw	$a0,4948($s0)
    # Line 2369
    sw	$v0,4944($s0)
    # Line 2371
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e7f8:
    # Line 2233
    li	$at,16387
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db2e804:
    # Line 2336
    li	$v1,2
.L0db2e808:
    # Line 2335
    addiu	$a1,$a0,-16384
    lw	$a0,1704($s0)
    sllv	$a1,$a3,$a1
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    sw	$a0,1704($s0)
    # Line 2336
    sw	$v1,__glBeginMode
    lw	$v0,11828($s0)
    ld	$gp,0($sp)
    ori	$v0,$v0,0x20
    sw	$v0,11828($s0)
    # Line 2337
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e840:
    # Line 2233
    sltiu	$at,$a0,3008
    bnez	$at,.L0db2e998
    sltiu	$v0,$a0,3009
    bnez	$v0,.L0db2ed8c
    li	$v1,3024
    bne	$a0,$v1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2254
    lw	$a1,1696($s0)
    # Line 2255
    li	$a2,2
    # Line 2254
    li	$at,-9
    and	$a1,$a1,$at
    # Line 2255
    b	.L0db2e4d0
    # Line 2254
    sw	$a1,1696($s0)
.L0db2e874:
    # Line 2233
    sltiu	$v0,$a0,3456
    bnez	$v0,.L0db2e9c4
    sltiu	$v1,$a0,3457
    bnez	$v1,.L0db2eda4
    li	$a1,3472
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e6ac
    # Line 2346
    li	$a2,2
.L0db2e898:
    # Line 2233
    sltiu	$at,$a0,2848
    bnez	$at,.L0db2ea8c
    sltiu	$v0,$a0,2849
    beqz	$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2266
    lw	$v1,1696($s0)
    # Line 2267
    li	$a2,2
    # Line 2266
    li	$a1,-513
    and	$v1,$v1,$a1
    # Line 2267
    b	.L0db2e4d0
    # Line 2266
    sw	$v1,1696($s0)
.L0db2e8c4:
    # Line 2233
    sltiu	$at,$a0,3552
    bnez	$at,.L0db2eab0
    sltiu	$v0,$a0,3553
    bnez	$v0,.L0db2ee10
    li	$v1,3553
    bne	$a0,$v1,.L0db2e770
    # Line 2307
    li	$a2,2
    # Line 2306
    lw	$a1,1696($s0)
    lui	$at,0x2
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 2307
    b	.L0db2e4d0
    # Line 2306
    sw	$a1,1696($s0)
.L0db2e8f8:
    # Line 2233
    sltiu	$v0,$a0,16386
    bnez	$v0,.L0db2eacc
    sltiu	$v1,$a0,16387
    bnez	$v1,.L0db2e804
    sltiu	$a1,$a0,16388
    bnez	$a1,.L0db2e7f8
    sltiu	$at,$a0,16389
    bnez	$at,.L0db2e804
    li	$v0,16389
    bne	$a0,$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e808
    # Line 2336
    li	$v1,2
.L0db2e92c:
    # Line 2233
    li	$a2,0x8011
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db2ebac
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0db2ee80
    li	$at,0x8012
    bne	$a0,$at,.L0db2e770
    # Line 2402
    li	$a2,2
    # Line 2401
    lw	$v1,1696($s0)
    lui	$a1,0x800
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2402
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x10
    # Line 2403
    b	.L0db2e4d0
    # Line 2402
    sw	$v0,11828($s0)
.L0db2e974:
    # Line 2231
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2e998:
    # Line 2233
    sltiu	$at,$a0,2977
    bnez	$at,.L0db2ec74
    sltiu	$v0,$a0,2978
    beqz	$v0,.L0db2e770
    # Line 2280
    li	$a2,2
    # Line 2279
    lw	$v1,1696($s0)
    lui	$a1,0x40
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 2280
    b	.L0db2e4d0
    # Line 2279
    sw	$v1,1696($s0)
.L0db2e9c4:
    # Line 2233
    sltiu	$at,$a0,3171
    bnez	$at,.L0db2ec98
    sltiu	$v0,$a0,3172
    beqz	$v0,.L0db2e770
    # Line 2322
    li	$a2,2
    # Line 2321
    lw	$v1,1696($s0)
    lui	$a1,0x20
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 2322
    b	.L0db2e4d0
    # Line 2321
    sw	$v1,1696($s0)
.L0db2e9f0:
    # Line 2233
    sltiu	$at,$a0,3476
    bnez	$at,.L0db2ecbc
    sltiu	$v0,$a0,3477
    bnez	$v0,.L0db2e6a8
    li	$v1,3477
    bne	$a0,$v1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e6ac
    # Line 2346
    li	$a2,2
.L0db2ea14:
    # Line 2233
    sltiu	$a1,$a0,3504
    bnez	$a1,.L0db2ecd8
    sltiu	$at,$a0,3505
    bnez	$at,.L0db2e4b0
    li	$v0,3505
    bne	$a0,$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e4b4
    # Line 2355
    li	$a2,2
.L0db2ea38:
    # Line 2233
    li	$a2,0x8078
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db2ed10
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0db2f0a8
    li	$at,0x8079
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2390
    li	$a1,-17
    # Line 2389
    lui	$v1,0x800
    lw	$v0,4944($s0)
    # Line 2390
    lw	$a0,4948($s0)
    # Line 2389
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 2390
    and	$a0,$a0,$a1
    sw	$a0,4948($s0)
    # Line 2389
    sw	$v0,4944($s0)
    # Line 2391
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ea8c:
    # Line 2233
    li	$at,2832
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2282
    lw	$v0,1696($s0)
    # Line 2283
    li	$a2,2
    # Line 2282
    li	$v1,-1025
    and	$v0,$v0,$v1
    # Line 2283
    b	.L0db2e4d0
    # Line 2282
    sw	$v0,1696($s0)
.L0db2eab0:
    # Line 2233
    sltiu	$a1,$a0,3512
    bnez	$a1,.L0db2ed5c
    sltiu	$at,$a0,3513
    beqz	$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e4b4
    # Line 2355
    li	$a2,2
.L0db2eacc:
    # Line 2233
    sltiu	$v0,$a0,16384
    bnez	$v0,.L0db2ed70
    sltiu	$v1,$a0,16385
    bnez	$v1,.L0db2e804
    li	$a1,16385
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e808
    # Line 2336
    li	$v1,2
.L0db2eaf0:
    # Line 2238
    lw	$at,1696($s0)
    # Line 2239
    li	$a2,2
    # Line 2238
    li	$v0,-3
    and	$at,$at,$v0
    # Line 2239
    b	.L0db2e4d0
    # Line 2238
    sw	$at,1696($s0)
.L0db2eb08:
    # Line 2288
    lw	$a1,1696($s0)
    # Line 2289
    li	$a0,2
    # Line 2288
    li	$at,-8193
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 2289
    sw	$a0,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x4
    sw	$v1,11828($s0)
    # Line 2290
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2eb3c:
    # Line 2361
    lw	$v1,1700($s0)
    # Line 2362
    li	$a2,2
    # Line 2361
    li	$a1,-513
    and	$v1,$v1,$a1
    sw	$v1,1700($s0)
    # Line 2362
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x4
    # Line 2363
    b	.L0db2e4d0
    # Line 2362
    sw	$v0,11828($s0)
.L0db2eb64:
    # Line 2233
    li	$at,2884
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2245
    lw	$a0,1696($s0)
    andi	$v0,$a0,0x1000
    beqz	$v0,.L0db2f120
    # Line 2247
    li	$a1,2
    # Line 2246
    li	$at,-4097
    and	$at,$a0,$at
    sw	$at,1696($s0)
    # Line 2247
    sw	$a1,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x4
    sw	$v1,11828($s0)
    # Line 2248
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ebac:
    # Line 2233
    li	$a2,0x8010
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db2ee6c
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db2e770
    # Line 2394
    li	$a2,2
    # Line 2393
    lw	$at,1696($s0)
    lui	$v0,0x200
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2394
    sw	$a2,__glBeginMode
    lw	$a1,11828($s0)
    ori	$a1,$a1,0x10
    # Line 2395
    b	.L0db2e4d0
    # Line 2394
    sw	$a1,11828($s0)
.L0db2ebec:
    ld	$gp,0($sp)
    # Line 2374
    li	$at,-2
    # Line 2373
    lw	$v1,4944($s0)
    # Line 2374
    lw	$a1,4948($s0)
    # Line 2373
    li	$a0,-3841
    and	$v1,$v1,$a0
    # Line 2374
    and	$a1,$a1,$at
    sw	$a1,4948($s0)
    # Line 2373
    sw	$v1,4944($s0)
    # Line 2375
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ec1c:
    # Line 2406
    li	$a2,2
    # Line 2405
    lw	$v1,1696($s0)
    lui	$a1,0x1000
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2406
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x10
    # Line 2407
    b	.L0db2e4d0
    # Line 2406
    sw	$v0,11828($s0)
.L0db2ec48:
    # Line 2233
    sltiu	$at,$a0,3058
    bnez	$at,.L0db2eeac
    sltiu	$v0,$a0,3059
    beqz	$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2276
    lw	$v1,1700($s0)
    # Line 2277
    li	$a2,2
    # Line 2276
    li	$a1,-2049
    and	$v1,$v1,$a1
    # Line 2277
    b	.L0db2e4d0
    # Line 2276
    sw	$v1,1700($s0)
.L0db2ec74:
    # Line 2233
    li	$at,2960
    bne	$a0,$at,.L0db2e770
    # Line 2301
    li	$a2,2
    # Line 2300
    lw	$v0,1696($s0)
    li	$v1,0x8000
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 2301
    b	.L0db2e4d0
    # Line 2300
    sw	$v0,1696($s0)
.L0db2ec98:
    # Line 2233
    li	$a1,3170
    bne	$a0,$a1,.L0db2e770
    # Line 2319
    li	$a2,2
    # Line 2318
    lw	$at,1696($s0)
    lui	$v0,0x10
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 2319
    b	.L0db2e4d0
    # Line 2318
    sw	$at,1696($s0)
.L0db2ecbc:
    # Line 2233
    sltiu	$v1,$a0,3475
    bnez	$v1,.L0db2ef78
    sltiu	$a1,$a0,3476
    beqz	$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e6ac
    # Line 2346
    li	$a2,2
.L0db2ecd8:
    # Line 2233
    sltiu	$at,$a0,3480
    bnez	$at,.L0db2ef8c
    sltiu	$v0,$a0,3481
    beqz	$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e6ac
    # Line 2346
    li	$a2,2
.L0db2ecf4:
    # Line 2233
    sltiu	$v1,$a0,12288
    bnez	$v1,.L0db2efb4
    sltiu	$a1,$a0,12289
    beqz	$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e660
    # Line 2329
    li	$a2,2
.L0db2ed10:
    # Line 2233
    li	$a2,0x8077
    sltu	$at,$a0,$a2
    bnez	$at,.L0db2efe8
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2382
    li	$at,-9
    # Line 2381
    lui	$a0,0xfff
    lw	$v1,4944($s0)
    # Line 2382
    lw	$a1,4948($s0)
    # Line 2381
    ori	$a0,$a0,0xffff
    and	$v1,$v1,$a0
    # Line 2382
    and	$a1,$a1,$at
    sw	$a1,4948($s0)
    # Line 2381
    sw	$v1,4944($s0)
    # Line 2383
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ed5c:
    # Line 2233
    li	$v0,3511
    bne	$a0,$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e4b4
    # Line 2355
    li	$a2,2
.L0db2ed70:
    # Line 2233
    sltiu	$v1,$a0,12293
    bnez	$v1,.L0db2f02c
    sltiu	$a1,$a0,12294
    beqz	$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e660
    # Line 2329
    li	$a2,2
.L0db2ed8c:
    # Line 2235
    lw	$at,1696($s0)
    # Line 2236
    li	$a2,2
    # Line 2235
    li	$v0,-2
    and	$at,$at,$v0
    # Line 2236
    b	.L0db2e4d0
    # Line 2235
    sw	$at,1696($s0)
.L0db2eda4:
    # Line 2310
    li	$a2,2
    # Line 2309
    lw	$v1,1696($s0)
    lui	$a1,0x80
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 2310
    b	.L0db2e4d0
    # Line 2309
    sw	$v1,1696($s0)
.L0db2edc0:
    # Line 2417
    li	$a2,2
    # Line 2416
    lw	$at,1696($s0)
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    # Line 2417
    b	.L0db2e4d0
    # Line 2416
    sw	$at,1696($s0)
.L0db2eddc:
    # Line 2269
    lw	$a1,1696($s0)
    # Line 2270
    li	$a0,2
    # Line 2269
    li	$at,-257
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 2270
    sw	$a0,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x2
    sw	$v1,11828($s0)
    # Line 2271
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ee10:
    # Line 2304
    li	$a2,2
    # Line 2303
    lw	$v0,1696($s0)
    lui	$v1,0x1
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 2304
    b	.L0db2e4d0
    # Line 2303
    sw	$v0,1696($s0)
.L0db2ee2c:
    # Line 2233
    li	$a2,0x8037
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db2f040
    sltu	$at,$a2,$a0
    bnez	$at,.L0db2e770
    # Line 2358
    li	$a2,2
    # Line 2357
    lw	$v1,1696($s0)
    lui	$a1,0x100
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2358
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x4
    # Line 2359
    b	.L0db2e4d0
    # Line 2358
    sw	$v0,11828($s0)
.L0db2ee6c:
    # Line 2233
    li	$at,16391
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e808
    # Line 2336
    li	$v1,2
.L0db2ee80:
    # Line 2398
    li	$a2,2
    # Line 2397
    lw	$v1,1696($s0)
    lui	$a1,0x400
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2398
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x10
    # Line 2399
    b	.L0db2e4d0
    # Line 2398
    sw	$v0,11828($s0)
.L0db2eeac:
    # Line 2233
    li	$at,3057
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2273
    lw	$v0,1696($s0)
    # Line 2274
    li	$a2,2
    # Line 2273
    li	$v1,-5
    and	$v0,$v0,$v1
    # Line 2274
    b	.L0db2e4d0
    # Line 2273
    sw	$v0,1696($s0)
.L0db2eed0:
    # Line 2233
    li	$a1,0x80d0
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2419
    lw	$at,1700($s0)
    # Line 2420
    li	$a2,2
    # Line 2419
    li	$v0,-2
    and	$at,$at,$v0
    # Line 2420
    b	.L0db2e4d0
    # Line 2419
    sw	$at,1700($s0)
.L0db2eef4:
    # Line 2242
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 2241
    lw	$v1,1696($s0)
    # Line 2242
    lw	$t9,11864($s0)
    # Line 2241
    li	$a1,-129
    and	$v1,$v1,$a1
    # Line 2242
    jal	__glSetError
    # Line 2241
    sw	$v1,1696($s0)
    # Line 2243
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ef28:
    # Line 2260
    lw	$a4,1696($s0)
    # Line 2261
    li	$a3,2
    # Line 2260
    li	$a5,-65
    and	$a4,$a4,$a5
    sw	$a4,1696($s0)
    # Line 2261
    sw	$a3,__glBeginMode
    lw	$a2,11828($s0)
    # Line 2262
    lw	$t9,11864($s0)
    move	$a0,$s0
    # Line 2261
    ori	$a2,$a2,0x20
    # Line 2262
    jalr	$t9
    # Line 2261
    sw	$a2,11828($s0)
    # Line 2263
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2264
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2ef78:
    # Line 2233
    li	$at,3474
    bne	$a0,$at,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e6ac
    # Line 2346
    li	$a2,2
.L0db2ef8c:
    # Line 2233
    li	$v0,3479
    bne	$a0,$v0,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e6ac
    # Line 2346
    li	$a2,2
.L0db2efa0:
    # Line 2233
    li	$v1,3507
    bne	$a0,$v1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e4b4
    # Line 2355
    li	$a2,2
.L0db2efb4:
    # Line 2233
    li	$a1,10754
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2365
    lw	$v0,1700($s0)
    # Line 2366
    li	$a2,2
    # Line 2365
    li	$v1,-1025
    and	$v0,$v0,$v1
    sw	$v0,1700($s0)
    # Line 2366
    sw	$a2,__glBeginMode
    lw	$at,11828($s0)
    ori	$at,$at,0x4
    # Line 2367
    b	.L0db2e4d0
    # Line 2366
    sw	$at,11828($s0)
.L0db2efe8:
    # Line 2233
    li	$a1,0x8076
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2378
    li	$a0,-3
    lw	$v1,4948($s0)
    # Line 2377
    lw	$at,4944($s0)
    lui	$v0,0xf
    ori	$v0,$v0,0xf000
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 2378
    and	$v1,$v1,$a0
    sw	$v1,4948($s0)
    # Line 2377
    sw	$at,4944($s0)
    # Line 2379
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2f02c:
    # Line 2233
    li	$a1,12292
    bne	$a0,$a1,.L0db2e774
    # Line 2428
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2e660
    # Line 2329
    li	$a2,2
.L0db2f040:
    # Line 2233
    li	$at,0x802e
    bne	$a0,$at,.L0db2e770
    # Line 2410
    li	$a2,2
    # Line 2409
    lw	$v1,1696($s0)
    lui	$a1,0x2000
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2410
    sw	$a2,__glBeginMode
    lw	$v0,11828($s0)
    ori	$v0,$v0,0x10
    # Line 2411
    b	.L0db2e4d0
    # Line 2410
    sw	$v0,11828($s0)
.L0db2f074:
    # Line 2414
    li	$a2,2
    # Line 2413
    lw	$at,1696($s0)
    lui	$v0,0x4000
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 2414
    b	.L0db2e4d0
    # Line 2413
    sw	$at,1696($s0)
.L0db2f090:
    # Line 2422
    lw	$v1,1700($s0)
    # Line 2423
    li	$a2,2
    # Line 2422
    li	$a1,-3
    and	$v1,$v1,$a1
    # Line 2423
    b	.L0db2e4d0
    # Line 2422
    sw	$v1,1700($s0)
.L0db2f0a8:
    ld	$gp,0($sp)
    # Line 2386
    li	$a0,-5
    # Line 2385
    lui	$v0,0x7f0
    lw	$at,4944($s0)
    # Line 2386
    lw	$v1,4948($s0)
    # Line 2385
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 2386
    and	$v1,$v1,$a0
    sw	$v1,4948($s0)
    # Line 2385
    sw	$at,4944($s0)
    # Line 2387
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db2f0dc:
    # Line 2294
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 2292
    lw	$a1,1696($s0)
    # Line 2294
    # lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 2292
    li	$a2,-16385
    and	$a1,$a1,$a2
    # Line 2294
    jal	__glReadjustZCounts
    # Line 2292
    sw	$a1,1696($s0)
    # Line 2296
    lw	$t9,11988($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2297
    lw	$t9,11980($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2298
    li	$a2,2
    b	.L0db2e4d0
    ld	$ra,16($sp)
.L0db2f120:
    ld	$gp,0($sp)
    # Line 2245
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Disable

# Function: __glim_IsEnabled
# Declared: Line 2434 (Source lines: 2435-2613)
# Address: 0x0db2f130 - 0x0db2f994 (Size: 2148 bytes, Frame: 32)
.globl __glim_IsEnabled
.ent __glim_IsEnabled
__glim_IsEnabled:
    # Line 2437
    lw	$a2,__glCurrentContext
    li	$a4,1
    # Line 2435
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2437
    lw	$at,__glBeginMode
    # Line 2435
    lui	$v0,0xd
    addiu	$v0,$v0,-2712
    # Line 2437
    beq	$at,$a4,.L0db2f4cc
    # Line 2435
    addu	$gp,$t9,$v0
    # Line 2437
    sltiu	$v1,$a0,3510
    bnez	$v1,.L0db2f188
    # Line 2439
    sltiu	$a1,$a0,3511
    bnez	$a1,.L0db2f1f0
    sltiu	$at,$a0,16391
    bnez	$at,.L0db2f27c
    sltiu	$v0,$a0,16392
    beqz	$v0,.L0db2f35c
.L0db2f174:
    # Line 2527
    addiu	$at,$a0,-16384
.L0db2f178:
    lw	$a3,1704($a2)
    sllv	$at,$a4,$at
    # Line 2528
    b	.L0db2f200
    # Line 2527
    and	$a3,$a3,$at
.L0db2f188:
    # Line 2439
    sltiu	$v0,$a0,3169
    bnez	$v0,.L0db2f210
    sltiu	$v1,$a0,3170
    bnez	$v1,.L0db2f2a4
    sltiu	$a1,$a0,3478
    bnez	$a1,.L0db2f2dc
    sltiu	$at,$a0,3479
    bnez	$at,.L0db2f328
    sltiu	$v0,$a0,3506
    bnez	$v0,.L0db2f570
    sltiu	$v1,$a0,3507
    bnez	$v1,.L0db2f1f0
    sltiu	$a1,$a0,3508
    bnez	$a1,.L0db2f808
    sltiu	$at,$a0,3509
    bnez	$at,.L0db2f1f0
    li	$v0,3509
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f1f4
    # Line 2545
    lw	$a3,1716($a2)
.L0db2f1dc:
    # Line 2439
    sltiu	$v1,$a0,3512
    bnez	$v1,.L0db2f45c
    sltiu	$a1,$a0,3513
    beqz	$a1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db2f1f0:
    # Line 2545
    lw	$a3,1716($a2)
.L0db2f1f4:
    addiu	$at,$a0,-3504
    sllv	$at,$a4,$at
    and	$a3,$a3,$at
.L0db2f200:
    # Line 2613
    sltu	$v0,$zero,$a3
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2f210:
    # Line 2439
    sltiu	$v0,$a0,2929
    bnez	$v0,.L0db2f25c
    sltiu	$v1,$a0,2930
    bnez	$v1,.L0db2f388
    sltiu	$a1,$a0,3042
    bnez	$a1,.L0db2f3d8
    sltiu	$at,$a0,3043
    bnez	$at,.L0db2f63c
    sltiu	$v0,$a0,3089
    bnez	$v0,.L0db2f684
    sltiu	$v1,$a0,3090
    bnez	$v1,.L0db2f8d0
    li	$a1,3168
    bne	$a0,$a1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2504
    lw	$a3,1696($a2)
    lui	$at,0x4
    # Line 2505
    b	.L0db2f200
    # Line 2504
    and	$a3,$a3,$at
.L0db2f25c:
    # Line 2439
    sltiu	$v0,$a0,2882
    bnez	$v0,.L0db2f2b4
    sltiu	$v1,$a0,2883
    beqz	$v1,.L0db2f3b4
    sltiu	$at,$a0,2903
    # Line 2486
    lw	$a3,1696($a2)
    # Line 2487
    b	.L0db2f200
    # Line 2486
    andi	$a3,$a3,0x2000
.L0db2f27c:
    # Line 2439
    sltiu	$at,$a0,12291
    bnez	$at,.L0db2f33c
    sltiu	$v0,$a0,12292
    beqz	$v0,.L0db2f42c
    sltiu	$v0,$a0,16386
.L0db2f290:
    # Line 2520
    lw	$a3,1708($a2)
.L0db2f294:
    addiu	$at,$a0,-12288
    sllv	$at,$a4,$at
    # Line 2521
    b	.L0db2f200
    # Line 2520
    and	$a3,$a3,$at
.L0db2f2a4:
    # Line 2507
    lui	$at,0x8
    lw	$a3,1696($a2)
    # Line 2508
    b	.L0db2f200
    # Line 2507
    and	$a3,$a3,$at
.L0db2f2b4:
    # Line 2439
    sltiu	$v0,$a0,2852
    bnez	$v0,.L0db2f394
    sltiu	$v1,$a0,2853
    bnez	$v1,.L0db2f648
    li	$a1,2881
    bne	$a0,$a1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2483
    lw	$a3,1696($a2)
    # Line 2484
    b	.L0db2f200
    # Line 2483
    andi	$a3,$a3,0x800
.L0db2f2dc:
    # Line 2439
    sltiu	$at,$a0,3473
    bnez	$at,.L0db2f310
    sltiu	$v0,$a0,3474
    bnez	$v0,.L0db2f328
    sltiu	$v1,$a0,3476
    bnez	$v1,.L0db2f6c0
    sltiu	$a1,$a0,3477
    bnez	$a1,.L0db2f328
    li	$at,3477
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f32c
    # Line 2536
    addiu	$at,$a0,-3472
.L0db2f310:
    # Line 2439
    sltiu	$v0,$a0,3456
    bnez	$v0,.L0db2f54c
    sltiu	$v1,$a0,3457
    bnez	$v1,.L0db2f7a8
    li	$a1,3472
    bne	$a0,$a1,.L0db2f468
.L0db2f328:
    # Line 2536
    addiu	$at,$a0,-3472
.L0db2f32c:
    lw	$a3,1712($a2)
    sllv	$at,$a4,$at
    # Line 2537
    b	.L0db2f200
    # Line 2536
    and	$a3,$a3,$at
.L0db2f33c:
    # Line 2439
    sltiu	$v0,$a0,10753
    bnez	$v0,.L0db2f400
    sltiu	$v1,$a0,10754
    beqz	$v1,.L0db2f594
    sltiu	$at,$a0,12289
    # Line 2551
    lw	$a3,1700($a2)
    # Line 2552
    b	.L0db2f200
    # Line 2551
    andi	$a3,$a3,0x200
.L0db2f35c:
    # Line 2439
    li	$a3,0x8076
    sltu	$at,$a0,$a3
    bnez	$at,.L0db2f48c
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0db2f608
    li	$a3,0x80bc
    # Line 2563
    lw	$a3,4944($a2)
    lui	$at,0xf
    ori	$at,$at,0xf000
    # Line 2564
    b	.L0db2f200
    # Line 2563
    and	$a3,$a3,$at
.L0db2f388:
    # Line 2453
    lw	$a3,1696($a2)
    # Line 2454
    b	.L0db2f200
    # Line 2453
    andi	$a3,$a3,0x10
.L0db2f394:
    # Line 2439
    sltiu	$at,$a0,2848
    bnez	$at,.L0db2f4f0
    sltiu	$v0,$a0,2849
    beqz	$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2465
    lw	$a3,1696($a2)
    # Line 2466
    b	.L0db2f200
    # Line 2465
    andi	$a3,$a3,0x200
.L0db2f3b4:
    # Line 2439
    bnez	$at,.L0db2f508
    sltiu	$v0,$a0,2904
    bnez	$v0,.L0db2f78c
    li	$v1,2912
    bne	$a0,$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2459
    lw	$a3,1696($a2)
    # Line 2460
    b	.L0db2f200
    # Line 2459
    andi	$a3,$a3,0x20
.L0db2f3d8:
    # Line 2439
    sltiu	$at,$a0,3008
    bnez	$at,.L0db2f528
    sltiu	$v0,$a0,3009
    bnez	$v0,.L0db2f780
    li	$v1,3024
    bne	$a0,$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2456
    lw	$a3,1696($a2)
    # Line 2457
    b	.L0db2f200
    # Line 2456
    andi	$a3,$a3,0x8
.L0db2f400:
    # Line 2439
    sltiu	$at,$a0,3552
    bnez	$at,.L0db2f1dc
    sltiu	$v0,$a0,3553
    bnez	$v0,.L0db2f798
    li	$v1,3553
    bne	$a0,$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2498
    lw	$a3,1696($a2)
    lui	$at,0x2
    # Line 2499
    b	.L0db2f200
    # Line 2498
    and	$a3,$a3,$at
.L0db2f42c:
    # Line 2439
    bnez	$v0,.L0db2f5b4
    sltiu	$v1,$a0,16387
    bnez	$v1,.L0db2f174
    sltiu	$a1,$a0,16389
    bnez	$a1,.L0db2f848
    sltiu	$at,$a0,16390
    bnez	$at,.L0db2f174
    li	$v0,16390
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f178
    # Line 2527
    addiu	$at,$a0,-16384
.L0db2f45c:
    # Line 2439
    li	$v1,3511
    beql	$a0,$v1,.L0db2f1f4
    # Line 2545
    lw	$a3,1716($a2)
.L0db2f468:
    # Line 2610
    # lw $t9, -27320($gp) # &__glSetError
.L0db2f46c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2611
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2f48c:
    # Line 2439
    li	$a3,0x802e
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0db2f5d8
    sltu	$at,$a3,$a0
    beqz	$at,.L0db2f7b8
    li	$a3,0x8074
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db2f880
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0db2f974
    li	$a1,0x8075
    bne	$a0,$a1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2560
    lw	$a3,4944($a2)
    # Line 2561
    b	.L0db2f200
    # Line 2560
    andi	$a3,$a3,0xf00
.L0db2f4cc:
    # Line 2437
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2f4f0:
    # Line 2439
    li	$at,2832
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2480
    lw	$a3,1696($a2)
    # Line 2481
    b	.L0db2f200
    # Line 2480
    andi	$a3,$a3,0x400
.L0db2f508:
    # Line 2439
    sltiu	$at,$a0,2896
    bnez	$at,.L0db2f654
    sltiu	$v0,$a0,2897
    beqz	$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2462
    lw	$a3,1696($a2)
    # Line 2463
    b	.L0db2f200
    # Line 2462
    andi	$a3,$a3,0x40
.L0db2f528:
    # Line 2439
    sltiu	$at,$a0,2977
    bnez	$at,.L0db2f66c
    sltiu	$v0,$a0,2978
    beqz	$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2477
    lw	$a3,1696($a2)
    lui	$at,0x40
    # Line 2478
    b	.L0db2f200
    # Line 2477
    and	$a3,$a3,$at
.L0db2f54c:
    # Line 2439
    sltiu	$v0,$a0,3171
    bnez	$v0,.L0db2f6a4
    sltiu	$v1,$a0,3172
    beqz	$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2513
    lw	$a3,1696($a2)
    lui	$at,0x20
    # Line 2514
    b	.L0db2f200
    # Line 2513
    and	$a3,$a3,$at
.L0db2f570:
    # Line 2439
    sltiu	$v0,$a0,3504
    bnez	$v0,.L0db2f6dc
    sltiu	$v1,$a0,3505
    bnez	$v1,.L0db2f1f0
    li	$a1,3505
    bne	$a0,$a1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f1f4
    # Line 2545
    lw	$a3,1716($a2)
.L0db2f594:
    # Line 2439
    bnez	$at,.L0db2f6f8
    sltiu	$v0,$a0,12290
    bnez	$v0,.L0db2f290
    li	$v1,12290
    bne	$a0,$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f294
    # Line 2520
    lw	$a3,1708($a2)
.L0db2f5b4:
    # Line 2439
    sltiu	$a1,$a0,16384
    bnez	$a1,.L0db2f714
    sltiu	$at,$a0,16385
    bnez	$at,.L0db2f174
    li	$v0,16385
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f178
    # Line 2527
    addiu	$at,$a0,-16384
.L0db2f5d8:
    # Line 2439
    li	$a3,0x8012
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0db2f730
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0db2f8dc
    li	$at,0x8024
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2584
    lw	$a3,1696($a2)
    lui	$at,0x1000
    # Line 2585
    b	.L0db2f200
    # Line 2584
    and	$a3,$a3,$at
.L0db2f608:
    # Line 2439
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db2f758
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0db2f8ec
    li	$a3,0x80d1
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0db2f95c
    sltu	$at,$a3,$a0
    bnez	$at,.L0db2f980
    li	$at,0x80d2
    # Line 2599
    lw	$a3,1700($a2)
    # Line 2601
    b	.L0db2f200
    # Line 2599
    andi	$a3,$a3,0x2
.L0db2f63c:
    # Line 2444
    lw	$a3,1696($a2)
    # Line 2445
    b	.L0db2f200
    # Line 2444
    andi	$a3,$a3,0x2
.L0db2f648:
    # Line 2468
    lw	$a3,1696($a2)
    # Line 2469
    b	.L0db2f200
    # Line 2468
    andi	$a3,$a3,0x100
.L0db2f654:
    # Line 2439
    li	$at,2884
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2450
    lw	$a3,1696($a2)
    # Line 2451
    b	.L0db2f200
    # Line 2450
    andi	$a3,$a3,0x1000
.L0db2f66c:
    # Line 2439
    li	$at,2960
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2492
    lw	$a3,1696($a2)
    # Line 2493
    b	.L0db2f200
    # Line 2492
    andi	$a3,$a3,0x8000
.L0db2f684:
    # Line 2439
    sltiu	$at,$a0,3058
    bnez	$at,.L0db2f7c8
    sltiu	$v0,$a0,3059
    beqz	$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2474
    lw	$a3,1700($a2)
    # Line 2475
    b	.L0db2f200
    # Line 2474
    andi	$a3,$a3,0x800
.L0db2f6a4:
    # Line 2439
    li	$at,3170
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2510
    lw	$a3,1696($a2)
    lui	$at,0x10
    # Line 2511
    b	.L0db2f200
    # Line 2510
    and	$a3,$a3,$at
.L0db2f6c0:
    # Line 2439
    sltiu	$v0,$a0,3475
    bnez	$v0,.L0db2f7e0
    sltiu	$v1,$a0,3476
    beqz	$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f32c
    # Line 2536
    addiu	$at,$a0,-3472
.L0db2f6dc:
    # Line 2439
    sltiu	$a1,$a0,3480
    bnez	$a1,.L0db2f7f4
    sltiu	$at,$a0,3481
    beqz	$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f32c
    # Line 2536
    addiu	$at,$a0,-3472
.L0db2f6f8:
    # Line 2439
    sltiu	$v0,$a0,12288
    bnez	$v0,.L0db2f81c
    sltiu	$v1,$a0,12289
    beqz	$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f294
    # Line 2520
    lw	$a3,1708($a2)
.L0db2f714:
    # Line 2439
    sltiu	$a1,$a0,12293
    bnez	$a1,.L0db2f834
    sltiu	$at,$a0,12294
    beqz	$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f294
    # Line 2520
    lw	$a3,1708($a2)
.L0db2f730:
    # Line 2439
    li	$a3,0x8011
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db2f864
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2578
    lw	$a3,1696($a2)
    lui	$at,0x400
    # Line 2579
    b	.L0db2f200
    # Line 2578
    and	$a3,$a3,$at
.L0db2f758:
    # Line 2439
    li	$a3,0x8079
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db2f8a8
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0db2f948
    li	$v0,0x8094
    # Line 2572
    lw	$a3,4944($a2)
    lui	$at,0x800
    # Line 2573
    b	.L0db2f200
    # Line 2572
    and	$a3,$a3,$at
.L0db2f780:
    # Line 2441
    lw	$a3,1696($a2)
    # Line 2442
    b	.L0db2f200
    # Line 2441
    andi	$a3,$a3,0x1
.L0db2f78c:
    # Line 2447
    lw	$a3,1696($a2)
    # Line 2448
    b	.L0db2f200
    # Line 2447
    andi	$a3,$a3,0x80
.L0db2f798:
    # Line 2495
    lw	$a3,1696($a2)
    lui	$at,0x1
    # Line 2496
    b	.L0db2f200
    # Line 2495
    and	$a3,$a3,$at
.L0db2f7a8:
    # Line 2501
    lw	$a3,1696($a2)
    lui	$at,0x80
    # Line 2502
    b	.L0db2f200
    # Line 2501
    and	$a3,$a3,$at
.L0db2f7b8:
    # Line 2587
    lw	$a3,1696($a2)
    lui	$at,0x2000
    # Line 2588
    b	.L0db2f200
    # Line 2587
    and	$a3,$a3,$at
.L0db2f7c8:
    # Line 2439
    li	$v0,3057
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2471
    lw	$a3,1696($a2)
    # Line 2472
    b	.L0db2f200
    # Line 2471
    andi	$a3,$a3,0x4
.L0db2f7e0:
    # Line 2439
    li	$at,3474
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f32c
    # Line 2536
    addiu	$at,$a0,-3472
.L0db2f7f4:
    # Line 2439
    li	$v0,3479
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f32c
    # Line 2536
    addiu	$at,$a0,-3472
.L0db2f808:
    # Line 2439
    li	$v1,3507
    bne	$a0,$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f1f4
    # Line 2545
    lw	$a3,1716($a2)
.L0db2f81c:
    # Line 2439
    li	$a1,10754
    bne	$a0,$a1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2554
    lw	$a3,1700($a2)
    # Line 2555
    b	.L0db2f200
    # Line 2554
    andi	$a3,$a3,0x400
.L0db2f834:
    # Line 2439
    li	$at,12292
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f294
    # Line 2520
    lw	$a3,1708($a2)
.L0db2f848:
    # Line 2439
    sltiu	$v0,$a0,16388
    bnez	$v0,.L0db2f8fc
    sltiu	$v1,$a0,16389
    beqz	$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f178
    # Line 2527
    addiu	$at,$a0,-16384
.L0db2f864:
    # Line 2439
    li	$a1,0x8010
    bne	$a0,$a1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2575
    lw	$a3,1696($a2)
    lui	$at,0x200
    # Line 2576
    b	.L0db2f200
    # Line 2575
    and	$a3,$a3,$at
.L0db2f880:
    # Line 2439
    li	$a3,0x806f
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db2f910
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2590
    lw	$a3,1696($a2)
    lui	$at,0x4000
    # Line 2591
    b	.L0db2f200
    # Line 2590
    and	$a3,$a3,$at
.L0db2f8a8:
    # Line 2439
    li	$a3,0x8078
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db2f92c
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2569
    lw	$a3,4944($a2)
    lui	$at,0x7f0
    # Line 2570
    b	.L0db2f200
    # Line 2569
    and	$a3,$a3,$at
.L0db2f8d0:
    # Line 2489
    lw	$a3,1696($a2)
    # Line 2490
    b	.L0db2f200
    # Line 2489
    andi	$a3,$a3,0x4000
.L0db2f8dc:
    # Line 2581
    lw	$a3,1696($a2)
    lui	$at,0x800
    # Line 2582
    b	.L0db2f200
    # Line 2581
    and	$a3,$a3,$at
.L0db2f8ec:
    # Line 2593
    lw	$a3,1696($a2)
    lui	$at,0x8000
    # Line 2594
    b	.L0db2f200
    # Line 2593
    and	$a3,$a3,$at
.L0db2f8fc:
    # Line 2439
    li	$v0,16387
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db2f178
    # Line 2527
    addiu	$at,$a0,-16384
.L0db2f910:
    # Line 2439
    li	$v1,0x8037
    bne	$a0,$v1,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2548
    lw	$a3,1696($a2)
    lui	$at,0x100
    # Line 2549
    b	.L0db2f200
    # Line 2548
    and	$a3,$a3,$at
.L0db2f92c:
    # Line 2439
    li	$v0,0x8077
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2566
    lw	$a3,4944($a2)
    lui	$at,0xf000
    # Line 2567
    b	.L0db2f200
    # Line 2566
    and	$a3,$a3,$at
.L0db2f948:
    # Line 2439
    bne	$a0,$v0,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2607
    lw	$a3,1700($a2)
    # Line 2608
    b	.L0db2f200
    # Line 2607
    andi	$a3,$a3,0x20
.L0db2f95c:
    # Line 2439
    li	$at,0x80d0
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2596
    lw	$a3,1700($a2)
    # Line 2597
    b	.L0db2f200
    # Line 2596
    andi	$a3,$a3,0x1
.L0db2f974:
    # Line 2557
    lw	$a3,4944($a2)
    # Line 2558
    b	.L0db2f200
    # Line 2557
    andi	$a3,$a3,0xff
.L0db2f980:
    # Line 2439
    bne	$a0,$at,.L0db2f46c
    # Line 2610
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2603
    lw	$a3,1700($a2)
    # Line 2605
    b	.L0db2f200
    # Line 2603
    andi	$a3,$a3,0x4
.end __glim_IsEnabled

# Function: __glim_BlendColorEXT
# Declared: Line 2620 (Source lines: 2621-2641)
# Address: 0x0db2f994 - 0x0db2fa94 (Size: 256 bytes, Frame: 48)
.globl __glim_BlendColorEXT
.ent __glim_BlendColorEXT
__glim_BlendColorEXT:
    # Line 2624
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 2621
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 2624
    lw	$at,__glBeginMode
    # Line 2621
    lui	$v1,0xd
    addiu	$v1,$v1,-4860
    # Line 2624
    beq	$at,$v0,.L0db2fa74
    # Line 2621
    addu	$gp,$t9,$v1
    # Line 2627
    mtc1	$zero,$f5
    c.lt.s	$f12,$f5
    ld	$gp,0($sp)
    bc1f	.L0db2f9d0
    lwc1	$f4,3284($a1)
    # Line 2628
    mov.s	$f12,$f5
.L0db2f9d0:
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0db2f9e8
    # Line 2629
    c.lt.s	$f13,$f5
    mov.s	$f12,$f4
    c.lt.s	$f13,$f5
.L0db2f9e8:
    nop
    bc1fl	.L0db2f9fc
    # Line 2630
    c.lt.s	$f4,$f13
    mov.s	$f13,$f5
    c.lt.s	$f4,$f13
.L0db2f9fc:
    nop
    bc1fl	.L0db2fa10
    # Line 2631
    c.lt.s	$f14,$f5
    mov.s	$f13,$f4
    c.lt.s	$f14,$f5
.L0db2fa10:
    nop
    bc1fl	.L0db2fa24
    # Line 2632
    c.lt.s	$f4,$f14
    mov.s	$f14,$f5
    c.lt.s	$f4,$f14
.L0db2fa24:
    nop
    bc1fl	.L0db2fa38
    # Line 2633
    c.lt.s	$f15,$f5
    mov.s	$f14,$f4
    c.lt.s	$f15,$f5
.L0db2fa38:
    nop
    bc1fl	.L0db2fa4c
    # Line 2634
    c.lt.s	$f4,$f15
    mov.s	$f15,$f5
    c.lt.s	$f4,$f15
.L0db2fa4c:
    nop
    bc1fl	.L0db2fa60
    # Line 2640
    swc1	$f15,1752($a1)
    # Line 2635
    mov.s	$f15,$f4
    # Line 2640
    swc1	$f15,1752($a1)
.L0db2fa60:
    # Line 2639
    swc1	$f14,1748($a1)
    # Line 2638
    swc1	$f13,1744($a1)
    # Line 2637
    swc1	$f12,1740($a1)
    # Line 2641
    jr	$ra
    addiu	$sp,$sp,48
.L0db2fa74:
    # Line 2624
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_BlendColorEXT

# Function: __glim_PolygonOffsetEXT
# Declared: Line 2643 (Source lines: 2644-2650)
# Address: 0x0db2fa94 - 0x0db2fb00 (Size: 108 bytes, Frame: 32)
.globl __glim_PolygonOffsetEXT
.ent __glim_PolygonOffsetEXT
__glim_PolygonOffsetEXT:
    # Line 2645
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 2644
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2645
    lw	$at,__glBeginMode
    # Line 2644
    lui	$v1,0xd
    addiu	$v1,$v1,-5116
    # Line 2645
    beq	$at,$v0,.L0db2fae0
    # Line 2644
    addu	$gp,$t9,$v1
    # Line 2648
    swc1	$f13,480($a1)
    # Line 2647
    swc1	$f12,476($a1)
    # Line 2649
    li	$at,2
    sw	$at,__glBeginMode
    lw	$a0,11828($a1)
    ld	$gp,0($sp)
    # Line 2650
    addiu	$sp,$sp,32
    # Line 2649
    ori	$a0,$a0,0x4
    # Line 2650
    jr	$ra
    # Line 2649
    sw	$a0,11828($a1)
.L0db2fae0:
    # Line 2645
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PolygonOffsetEXT

# Function: __glim_PolygonOffset
# Declared: Line 2652 (Source lines: 2653-2660)
# Address: 0x0db2fb00 - 0x0db2fb74 (Size: 116 bytes, Frame: 32)
.globl __glim_PolygonOffset
.ent __glim_PolygonOffset
__glim_PolygonOffset:
    # Line 2654
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 2653
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2654
    lw	$at,__glBeginMode
    # Line 2653
    lui	$v1,0xd
    addiu	$v1,$v1,-5224
    # Line 2654
    beq	$at,$v0,.L0db2fb54
    # Line 2653
    addu	$gp,$t9,$v1
    # Line 2657
    lwc1	$f0,484($a1)
    mul.s	$f0,$f0,$f13
    # Line 2656
    swc1	$f12,476($a1)
    # Line 2659
    li	$at,2
    # Line 2657
    swc1	$f0,480($a1)
    # Line 2659
    sw	$at,__glBeginMode
    lw	$a0,11828($a1)
    ld	$gp,0($sp)
    # Line 2660
    addiu	$sp,$sp,32
    # Line 2659
    ori	$a0,$a0,0x4
    # Line 2660
    jr	$ra
    # Line 2659
    sw	$a0,11828($a1)
.L0db2fb54:
    # Line 2654
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PolygonOffset

# Function: __glFreeAttributeState
# Declared: Line 2666 (Source lines: 2667-2705)
# Address: 0x0db2fb74 - 0x0db2fce8 (Size: 372 bytes, Frame: 48)
.globl __glFreeAttributeState
.ent __glFreeAttributeState
__glFreeAttributeState:
    # Line 2667
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lw	$at,12732($a0)
    lw	$a3,12728($a0)
    lui	$v0,0xd
    addiu	$v0,$v0,-5340
    sltu	$at,$a3,$at
    beqz	$at,.L0db2fbcc
    addu	$gp,$t9,$v0
    sd	$ra,16($sp)
    # Line 2676
    # lw $t9, -27848($gp) # &__glim_PopAttrib
.L0db2fba8:
    bal __glim_PopAttrib
    nop
    lw	$v1,12732($s0)
    lw	$a3,12728($s0)
    sltu	$v1,$a3,$v1
    bnez	$v1,.L0db2fba8
    nop	# was lw $t9, -27848($gp) # &__glim_PopAttrib
    sd	$s1,24($sp)
    ld	$ra,16($sp)
.L0db2fbcc:
    # Line 2679
    lw	$a2,3480($s0)
    sd	$ra,16($sp)
    sd	$s1,24($sp)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    sltu	$a2,$a3,$a2
    beqz	$a2,.L0db2fc28
    move	$s1,$a3
    sd	$ra,16($sp)
    # Line 2682
    lw	$a1,0($s1)
.L0db2fbf4:
    beqz	$a1,.L0db2fc28
    nop
    # Line 2683
    lw	$t9,12($s0)
    jal	__glim_PopAttrib
    move	$a0,$s0
    # Line 2681
    addiu	$s1,$s1,4
    # Line 2685
    lw	$at,3480($s0)
    lw	$a3,12728($s0)
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    sltu	$at,$s1,$at
    bnezl	$at,.L0db2fbf4
    # Line 2682
    lw	$a1,0($s1)
.L0db2fc28:
    # Line 2687
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a3
    # Line 2688
    lw	$v0,12740($s0)
    lw	$a3,12736($s0)
    sltu	$v0,$a3,$v0
    beqz	$v0,.L0db2fc6c
    sw	$zero,12728($s0)
    # Line 2692
    # lw $t9, -27804($gp) # &__glim_PopClientAttrib
.L0db2fc50:
    bal __glim_PopClientAttrib
    nop
    lw	$v1,12740($s0)
    lw	$a3,12736($s0)
    sltu	$v1,$a3,$v1
    bnez	$v1,.L0db2fc50
    nop	# was lw $t9, -27804($gp) # &__glim_PopClientAttrib
.L0db2fc6c:
    # Line 2695
    lw	$a2,3484($s0)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    sltu	$a2,$a3,$a2
    beqz	$a2,.L0db2fcbc
    move	$s1,$a3
    # Line 2698
    lw	$a1,0($s1)
.L0db2fc88:
    beqz	$a1,.L0db2fcbc
    nop
    # Line 2699
    lw	$t9,12($s0)
    jal	__glim_PopClientAttrib
    move	$a0,$s0
    # Line 2697
    addiu	$s1,$s1,4
    # Line 2701
    lw	$at,3484($s0)
    lw	$a3,12736($s0)
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    sltu	$at,$s1,$at
    bnezl	$at,.L0db2fc88
    # Line 2698
    lw	$a1,0($s1)
.L0db2fcbc:
    # Line 2703
    lw	$t9,12($s0)
    move	$a0,$s0
    move	$a1,$a3
    jalr	$t9
    ld	$s1,24($sp)
    ld	$gp,0($sp)
    # Line 2705
    ld	$ra,16($sp)
    # Line 2704
    sw	$zero,12736($s0)
    # Line 2705
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFreeAttributeState

# Function: __glim_EnableClientState
# Declared: Line 2708 (Source lines: 2708-2737)
# Address: 0x0db2fce8 - 0x0db2fe68 (Size: 384 bytes, Frame: 32)
.globl __glim_EnableClientState
.ent __glim_EnableClientState
__glim_EnableClientState:
    # Line 2709
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 2708
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2709
    lw	$at,__glBeginMode
    # Line 2708
    lui	$v1,0xd
    addiu	$v1,$v1,-5712
    # Line 2709
    beq	$at,$v0,.L0db2fe48
    # Line 2708
    addu	$gp,$t9,$v1
    # Line 2710
    li	$a1,0x8074
    beq	$a0,$a1,.L0db2fd84
    li	$at,0x8075
    beq	$a0,$at,.L0db2fda8
    li	$v0,0x8076
    beq	$a0,$v0,.L0db2fdcc
    li	$v1,0x8077
    beq	$a0,$v1,.L0db2fdf8
    li	$a1,0x8078
    beq	$a0,$a1,.L0db2fe20
    li	$at,0x8079
    beq	$a0,$at,.L0db2fd5c
    # Line 2736
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2737
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2fd5c:
    # Line 2732
    lui	$v1,0x800
    ld	$gp,0($sp)
    lw	$v0,4944($a2)
    # Line 2733
    lw	$a0,4948($a2)
    # Line 2734
    addiu	$sp,$sp,32
    # Line 2732
    or	$v0,$v0,$v1
    # Line 2733
    ori	$a0,$a0,0x10
    sw	$a0,4948($a2)
    # Line 2734
    jr	$ra
    # Line 2732
    sw	$v0,4944($a2)
.L0db2fd84:
    ld	$gp,0($sp)
    # Line 2712
    lw	$a1,4944($a2)
    # Line 2713
    lw	$at,4948($a2)
    # Line 2714
    addiu	$sp,$sp,32
    # Line 2712
    ori	$a1,$a1,0xff
    # Line 2713
    ori	$at,$at,0x20
    sw	$at,4948($a2)
    # Line 2714
    jr	$ra
    # Line 2712
    sw	$a1,4944($a2)
.L0db2fda8:
    ld	$gp,0($sp)
    # Line 2716
    lw	$v0,4944($a2)
    # Line 2717
    lw	$v1,4948($a2)
    # Line 2718
    addiu	$sp,$sp,32
    # Line 2716
    ori	$v0,$v0,0xf00
    # Line 2717
    ori	$v1,$v1,0x1
    sw	$v1,4948($a2)
    # Line 2718
    jr	$ra
    # Line 2716
    sw	$v0,4944($a2)
.L0db2fdcc:
    # Line 2720
    lui	$a1,0xf
    ld	$gp,0($sp)
    # Line 2721
    lw	$at,4948($a2)
    # Line 2720
    lw	$a0,4944($a2)
    # Line 2722
    addiu	$sp,$sp,32
    # Line 2720
    ori	$a1,$a1,0xf000
    or	$a0,$a0,$a1
    # Line 2721
    ori	$at,$at,0x2
    sw	$at,4948($a2)
    # Line 2722
    jr	$ra
    # Line 2720
    sw	$a0,4944($a2)
.L0db2fdf8:
    ld	$gp,0($sp)
    # Line 2725
    lw	$a0,4948($a2)
    # Line 2724
    lw	$v0,4944($a2)
    # Line 2726
    addiu	$sp,$sp,32
    # Line 2724
    lui	$v1,0xf000
    or	$v0,$v0,$v1
    # Line 2725
    ori	$a0,$a0,0x8
    sw	$a0,4948($a2)
    # Line 2726
    jr	$ra
    # Line 2724
    sw	$v0,4944($a2)
.L0db2fe20:
    # Line 2728
    lui	$at,0x7f0
    ld	$gp,0($sp)
    lw	$a1,4944($a2)
    # Line 2729
    lw	$v0,4948($a2)
    # Line 2730
    addiu	$sp,$sp,32
    # Line 2728
    or	$a1,$a1,$at
    # Line 2729
    ori	$v0,$v0,0x4
    sw	$v0,4948($a2)
    # Line 2730
    jr	$ra
    # Line 2728
    sw	$a1,4944($a2)
.L0db2fe48:
    # Line 2709
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EnableClientState

# Function: __glim_DisableClientState
# Declared: Line 2742 (Source lines: 2742-2771)
# Address: 0x0db2fe68 - 0x0db30018 (Size: 432 bytes, Frame: 32)
.globl __glim_DisableClientState
.ent __glim_DisableClientState
__glim_DisableClientState:
    # Line 2743
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 2742
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2743
    lw	$at,__glBeginMode
    # Line 2742
    lui	$v1,0xd
    addiu	$v1,$v1,-6096
    # Line 2743
    beq	$at,$v0,.L0db2fff8
    # Line 2742
    addu	$gp,$t9,$v1
    # Line 2744
    li	$a1,0x8074
    beq	$a0,$a1,.L0db2ff0c
    li	$at,0x8075
    beq	$a0,$at,.L0db2ff38
    li	$v0,0x8076
    beq	$a0,$v0,.L0db2ff64
    li	$v1,0x8077
    beq	$a0,$v1,.L0db2ff98
    li	$a1,0x8078
    beq	$a0,$a1,.L0db2ffc8
    li	$at,0x8079
    # Line 2766
    lui	$v1,0x800
    # Line 2744
    beq	$a0,$at,.L0db2fee0
    # Line 2770
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2771
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db2fee0:
    # Line 2766
    nor	$v1,$v1,$zero
    ld	$gp,0($sp)
    # Line 2767
    lw	$a0,4948($a2)
    # Line 2766
    lw	$v0,4944($a2)
    # Line 2768
    addiu	$sp,$sp,32
    # Line 2767
    li	$a1,-17
    # Line 2766
    and	$v0,$v0,$v1
    # Line 2767
    and	$a0,$a0,$a1
    sw	$a0,4948($a2)
    # Line 2768
    jr	$ra
    # Line 2766
    sw	$v0,4944($a2)
.L0db2ff0c:
    # Line 2746
    li	$v0,-256
    ld	$gp,0($sp)
    # Line 2747
    lw	$v1,4948($a2)
    # Line 2746
    lw	$at,4944($a2)
    # Line 2748
    addiu	$sp,$sp,32
    # Line 2747
    li	$a0,-33
    # Line 2746
    and	$at,$at,$v0
    # Line 2747
    and	$v1,$v1,$a0
    sw	$v1,4948($a2)
    # Line 2748
    jr	$ra
    # Line 2746
    sw	$at,4944($a2)
.L0db2ff38:
    # Line 2751
    li	$v1,-2
    ld	$gp,0($sp)
    lw	$v0,4948($a2)
    # Line 2750
    lw	$a1,4944($a2)
    # Line 2752
    addiu	$sp,$sp,32
    # Line 2750
    li	$at,-3841
    and	$a1,$a1,$at
    # Line 2751
    and	$v0,$v0,$v1
    sw	$v0,4948($a2)
    # Line 2752
    jr	$ra
    # Line 2750
    sw	$a1,4944($a2)
.L0db2ff64:
    # Line 2754
    lui	$a1,0xf
    ld	$gp,0($sp)
    # Line 2755
    lw	$at,4948($a2)
    # Line 2754
    lw	$a0,4944($a2)
    # Line 2756
    addiu	$sp,$sp,32
    # Line 2755
    li	$v0,-3
    # Line 2754
    ori	$a1,$a1,0xf000
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    # Line 2755
    and	$at,$at,$v0
    sw	$at,4948($a2)
    # Line 2756
    jr	$ra
    # Line 2754
    sw	$a0,4944($a2)
.L0db2ff98:
    # Line 2759
    li	$at,-9
    ld	$gp,0($sp)
    lw	$a1,4948($a2)
    # Line 2758
    lw	$v1,4944($a2)
    # Line 2760
    addiu	$sp,$sp,32
    # Line 2758
    lui	$a0,0xfff
    ori	$a0,$a0,0xffff
    and	$v1,$v1,$a0
    # Line 2759
    and	$a1,$a1,$at
    sw	$a1,4948($a2)
    # Line 2760
    jr	$ra
    # Line 2758
    sw	$v1,4944($a2)
.L0db2ffc8:
    ld	$gp,0($sp)
    # Line 2763
    lw	$a0,4948($a2)
    # Line 2762
    lw	$v0,4944($a2)
    # Line 2764
    addiu	$sp,$sp,32
    # Line 2763
    li	$a1,-5
    # Line 2762
    lui	$v1,0x7f0
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 2763
    and	$a0,$a0,$a1
    sw	$a0,4948($a2)
    # Line 2764
    jr	$ra
    # Line 2762
    sw	$v0,4944($a2)
.L0db2fff8:
    # Line 2743
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_DisableClientState

# Function: __glim_PushClientAttrib
# Declared: Line 2776 (Source lines: 2776-2801)
# Address: 0x0db30018 - 0x0db301a4 (Size: 396 bytes, Frame: 192)
.globl __glim_PushClientAttrib
.ent __glim_PushClientAttrib
__glim_PushClientAttrib:
    # Line 2779
    li	$v0,1
    # Line 2776
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    # Line 2779
    lw	$s0,__glCurrentContext
    sd	$s1,0($sp)
    # Line 2776
    move	$s1,$a0
    sd	$gp,8($sp)
    # Line 2779
    lw	$at,__glBeginMode
    # Line 2776
    lui	$v1,0xd
    addiu	$v1,$v1,-6528
    # Line 2779
    beq	$at,$v0,.L0db3017c
    # Line 2776
    addu	$gp,$t9,$v1
    sd	$s5,24($sp)
    # Line 2781
    lw	$a2,3484($s0)
    lw	$a1,12736($s0)
    lw	$s5,12740($s0)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    sltu	$a1,$s5,$a1
    beqz	$a1,.L0db30130
    # Line 2798
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2783
    lw	$v0,0($s5)
    beqz	$v0,.L0db30158
.L0db30074:
    # Line 2789
    addiu	$v1,$s5,4
    ld	$s5,24($sp)
    # Line 2791
    addiu	$a5,$v0,4
    # Line 2788
    sw	$s1,0($v0)
    # Line 2789
    andi	$at,$s1,0x1
    beqz	$at,.L0db300e8
    sw	$v1,12740($s0)
    # Line 2791
    move	$a0,$zero
    li	$a3,9
    addiu	$a4,$s0,1072
    ld	$s5,24($sp)
.L0db300a0:
    addu	$a2,$a0,$a5
    addu	$a1,$a0,$a4
    addiu	$a0,$a0,4
    lw	$a1,0($a1)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0db300a0
    sw	$a1,0($a2)
    # Line 2792
    li	$a0,9
    move	$a3,$zero
    addiu	$a4,$v0,40
    addiu	$a5,$s0,1108
.L0db300cc:
    addu	$at,$a3,$a4
    addu	$a2,$a3,$a5
    addiu	$a3,$a3,4
    lw	$a2,0($a2)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db300cc
    sw	$a2,0($at)
.L0db300e8:
    # Line 2795
    li	$a3,41
    addiu	$a4,$v0,76
    # Line 2792
    andi	$at,$s1,0x2
    beqz	$at,.L0db30120
    # Line 2801
    ld	$s1,0($sp)
    # Line 2795
    addiu	$a5,$s0,4788
    move	$a0,$zero
.L0db30104:
    addu	$a1,$a0,$a4
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0db30104
    sw	$v1,0($a1)
.L0db30120:
    ld	$gp,8($sp)
    # Line 2801
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db30130:
    # Line 2798
    li	$a0,1283
    sd	$ra,32($sp)
    jal	__glSetError
    ld	$s5,24($sp)
    ld	$gp,8($sp)
    # Line 2799
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db30158:
    # Line 2784
    move	$a0,$s0
    lw	$t9,4($s0)
    li	$a2,240
    sd	$ra,32($sp)
    jalr	$t9
    li	$a1,1
    # Line 2786
    sw	$v0,0($s5)
    b	.L0db30074
    ld	$ra,32($sp)
.L0db3017c:
    # Line 2779
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_PushClientAttrib

# Function: __glim_PopClientAttrib
# Declared: Line 2804 (Source lines: 2804-2833)
# Address: 0x0db301a4 - 0x0db302cc (Size: 296 bytes, Frame: 16)
.globl __glim_PopClientAttrib
.ent __glim_PopClientAttrib
__glim_PopClientAttrib:
    # Line 2808
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 2804
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # Line 2808
    lw	$at,__glBeginMode
    # Line 2804
    lui	$v1,0xd
    addiu	$v1,$v1,-6924
    # Line 2808
    beq	$at,$v0,.L0db302ac
    # Line 2804
    addu	$gp,$t9,$v1
    # Line 2810
    lw	$a1,12740($a5)
    lw	$a0,12736($a5)
    sltu	$a0,$a0,$a1
    beqz	$a0,.L0db3028c
    # Line 2815
    addiu	$at,$a1,-4
    # Line 2813
    lw	$a6,-4($a1)
    # Line 2814
    lw	$a7,0($a6)
    # Line 2817
    addiu	$a4,$a6,4
    # Line 2815
    andi	$v0,$a7,0x1
    beqz	$v0,.L0db30248
    sw	$at,12740($a5)
    # Line 2817
    li	$a2,9
    move	$a1,$zero
    addiu	$a3,$a5,1072
.L0db30200:
    addu	$a0,$a1,$a3
    addu	$v1,$a1,$a4
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0db30200
    sw	$v1,0($a0)
    # Line 2818
    li	$a1,9
    move	$a2,$zero
    addiu	$a3,$a5,1108
    addiu	$a4,$a6,40
.L0db3022c:
    addu	$at,$a2,$a3
    addu	$a0,$a2,$a4
    addiu	$a2,$a2,4
    lw	$a0,0($a0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db3022c
    sw	$a0,0($at)
.L0db30248:
    # Line 2821
    addiu	$a3,$a5,4788
    # Line 2818
    andi	$at,$a7,0x2
    beqz	$at,.L0db3027c
    # Line 2821
    move	$a1,$zero
    addiu	$a4,$a6,76
    li	$a2,41
.L0db30260:
    addu	$v1,$a1,$a3
    addu	$v0,$a1,$a4
    addiu	$a1,$a1,4
    lw	$v0,0($v0)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0db30260
    sw	$v0,0($v1)
.L0db3027c:
    ld	$gp,0($sp)
    # Line 2828
    sw	$zero,0($a6)
    # Line 2833
    jr	$ra
    addiu	$sp,$sp,16
.L0db3028c:
    # Line 2830
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 2831
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0db302ac:
    # Line 2808
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_PopClientAttrib

.late_rodata
jtbl_0dbef020:
    .word .L0db29dd4
    .word .L0db29e34
    .word .L0db29df4
    .word .L0db29e54
    .word .L0db29e94
    .word .L0db29ed0
    .word .L0db29f00
    .word .L0db29f54
    .word .L0db29f94
    .word .L0db29fb0
jtbl_0dbef048:
    .word .L0db2a11c
    .word .L0db2a13c
    .word .L0db2a17c
    .word .L0db2a19c
    .word .L0db2a20c
    .word .L0db2a268
    .word .L0db2a290
    .word .L0db2a2b4
    .word .L0db2a2d4
    .word .L0db2a2f4

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3d800000:
    .word 0x3d800000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_41800000:
    .word 0x41800000
_lit_42b40000:
    .word 0x42b40000
_lit_43000000:
    .word 0x43000000
_lit_43340000:
    .word 0x43340000
_lit_bf800000:
    .word 0xbf800000

