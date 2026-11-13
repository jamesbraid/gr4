# Source: ../soft/so_size.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_size.c
# Total Functions: 15

.text

# Function: __glFogiv_size
# Declared: Line 19 (Source lines: 21-29)
# Address: 0x0db71030 - 0x0db710ac (Size: 124 bytes, Frame: 0)
.globl __glFogiv_size
.ent __glFogiv_size
__glFogiv_size:
    # Line 21
    li	$at,2918
    beq	$a0,$at,.L0db71074
    li	$v0,2914
    beq	$a0,$v0,.L0db71080
    li	$v1,2916
    beq	$a0,$v1,.L0db71088
    li	$a1,2917
    beq	$a0,$a1,.L0db71094
    li	$at,2913
    beq	$a0,$at,.L0db710a0
    li	$v0,2915
    beq	$a0,$v0,.L0db7106c
    nop
    # Line 29
    jr	$ra
    li	$v0,-1
.L0db7106c:
    # Line 27
    jr	$ra
    li	$v0,1
.L0db71074:
    # Line 22
    li	$v0,4
    jr	$ra
    nop
.L0db71080:
    # Line 23
    jr	$ra
    li	$v0,1
.L0db71088:
    # Line 24
    li	$v0,1
    jr	$ra
    nop
.L0db71094:
    # Line 25
    li	$v0,1
    jr	$ra
    nop
.L0db710a0:
    # Line 26
    li	$v0,1
    jr	$ra
    nop
.end __glFogiv_size

# Function: __glFogfv_size
# Declared: Line 33 (Source lines: 34-35)
# Address: 0x0db710ac - 0x0db710e0 (Size: 52 bytes, Frame: 32)
.globl __glFogfv_size
.ent __glFogfv_size
__glFogfv_size:
    # Line 34
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x9
    addiu	$at,$at,-10772
    addu	$gp,$t9,$at
    # Line 35
    # lw $t9, -25564($gp) # &__glFogiv_size
    sd	$ra,0($sp)
    bal __glFogiv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFogfv_size

# Function: __glLightfv_size
# Declared: Line 38 (Source lines: 39-52)
# Address: 0x0db710e0 - 0x0db7116c (Size: 140 bytes, Frame: 0)
.globl __glLightfv_size
.ent __glLightfv_size
__glLightfv_size:
    # Line 39
    addiu	$a3,$a0,-4608
    lui	$v0,0x9
    addiu	$v0,$v0,-10824
    addu	$at,$t9,$v0
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$v0,$a3,10
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,-1880
    beqz	$v0,.L0db71114
    addu	$a3,$a3,$t9
    lw	$v1,%lo(jtbl_0dbef8a8)($a3)
    jr	$v1
    # Line 50
    li	$v0,1
.L0db71114:
    # Line 52
    jr	$ra
    li	$v0,-1
.L0db7111c:
    # Line 41
    jr	$ra
    li	$v0,1
.L0db71124:
    # Line 42
    jr	$ra
    li	$v0,1
.L0db7112c:
    # Line 43
    jr	$ra
    li	$v0,4
.L0db71134:
    # Line 44
    jr	$ra
    li	$v0,4
.L0db7113c:
    # Line 45
    jr	$ra
    li	$v0,4
.L0db71144:
    # Line 46
    jr	$ra
    li	$v0,4
.L0db7114c:
    # Line 47
    jr	$ra
    li	$v0,3
.L0db71154:
    # Line 48
    jr	$ra
    li	$v0,1
.L0db7115c:
    # Line 49
    jr	$ra
    li	$v0,1
.L0db71164:
    # Line 50
    jr	$ra
    nop
.end __glLightfv_size

# Function: __glLightiv_size
# Declared: Line 56 (Source lines: 57-58)
# Address: 0x0db7116c - 0x0db711a0 (Size: 52 bytes, Frame: 32)
.globl __glLightiv_size
.ent __glLightiv_size
__glLightiv_size:
    # Line 57
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x9
    addiu	$at,$at,-10964
    addu	$gp,$t9,$at
    # Line 58
    # lw $t9, -25556($gp) # &__glLightfv_size
    sd	$ra,0($sp)
    bal __glLightfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLightiv_size

# Function: __glLightModelfv_size
# Declared: Line 62 (Source lines: 64-69)
# Address: 0x0db711a0 - 0x0db711e4 (Size: 68 bytes, Frame: 0)
.globl __glLightModelfv_size
.ent __glLightModelfv_size
__glLightModelfv_size:
    # Line 64
    li	$at,2899
    beq	$a0,$at,.L0db711d0
    li	$v0,2897
    beq	$a0,$v0,.L0db711dc
    li	$v1,2898
    beq	$a0,$v1,.L0db711c4
    # Line 69
    li	$v0,-1
    jr	$ra
    nop
.L0db711c4:
    # Line 67
    li	$v0,1
    jr	$ra
    nop
.L0db711d0:
    # Line 65
    li	$v0,4
    jr	$ra
    nop
.L0db711dc:
    # Line 66
    jr	$ra
    li	$v0,1
.end __glLightModelfv_size

# Function: __glLightModeliv_size
# Declared: Line 73 (Source lines: 74-75)
# Address: 0x0db711e4 - 0x0db71218 (Size: 52 bytes, Frame: 32)
.globl __glLightModeliv_size
.ent __glLightModeliv_size
__glLightModeliv_size:
    # Line 74
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x9
    addiu	$at,$at,-11084
    addu	$gp,$t9,$at
    # Line 75
    # lw $t9, -25548($gp) # &__glLightModelfv_size
    sd	$ra,0($sp)
    bal __glLightModelfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLightModeliv_size

# Function: __glMaterialfv_size
# Declared: Line 78 (Source lines: 79-89)
# Address: 0x0db71218 - 0x0db712c0 (Size: 168 bytes, Frame: 0)
.globl __glMaterialfv_size
.ent __glMaterialfv_size
__glMaterialfv_size:
    # Line 79
    sltiu	$at,$a0,5632
    bnez	$at,.L0db7124c
    # Line 80
    sltiu	$v0,$a0,5633
    bnez	$v0,.L0db71298
    sltiu	$v1,$a0,5634
    bnez	$v1,.L0db71284
    sltiu	$a1,$a0,5635
    bnez	$a1,.L0db712ac
    li	$at,5635
    bne	$a0,$at,.L0db7127c
    # Line 87
    li	$v0,3
    jr	$ra
    nop
.L0db7124c:
    # Line 80
    sltiu	$v0,$a0,4609
    bnez	$v0,.L0db71270
    sltiu	$v1,$a0,4610
    bnez	$v1,.L0db712a0
    li	$a1,4610
    bne	$a0,$a1,.L0db7127c
    # Line 85
    li	$v0,4
    jr	$ra
    nop
.L0db71270:
    # Line 80
    li	$at,4608
    beq	$a0,$at,.L0db712b8
    # Line 83
    li	$v0,4
.L0db7127c:
    # Line 89
    jr	$ra
    li	$v0,-1
.L0db71284:
    # Line 80
    li	$v0,5633
    bne	$a0,$v0,.L0db7127c
    nop
    # Line 81
    jr	$ra
    li	$v0,1
.L0db71298:
    # Line 82
    jr	$ra
    li	$v0,4
.L0db712a0:
    # Line 84
    li	$v0,4
    jr	$ra
    nop
.L0db712ac:
    # Line 86
    li	$v0,4
    jr	$ra
    nop
.L0db712b8:
    # Line 83
    jr	$ra
    nop
.end __glMaterialfv_size

# Function: __glMaterialiv_size
# Declared: Line 93 (Source lines: 94-95)
# Address: 0x0db712c0 - 0x0db712f4 (Size: 52 bytes, Frame: 32)
.globl __glMaterialiv_size
.ent __glMaterialiv_size
__glMaterialiv_size:
    # Line 94
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x9
    addiu	$at,$at,-11304
    addu	$gp,$t9,$at
    # Line 95
    # lw $t9, -25540($gp) # &__glMaterialfv_size
    sd	$ra,0($sp)
    bal __glMaterialfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMaterialiv_size

# Function: __glColorTableParameterfvSGI_size
# Declared: Line 101 (Source lines: 102-107)
# Address: 0x0db712f4 - 0x0db71318 (Size: 36 bytes, Frame: 0)
.globl __glColorTableParameterfvSGI_size
.ent __glColorTableParameterfvSGI_size
__glColorTableParameterfvSGI_size:
    # Line 102
    li	$at,0x80d6
    beq	$a0,$at,.L0db71310
    li	$v0,0x80d7
    beq	$a0,$v0,.L0db71310
    nop
    # Line 107
    jr	$ra
    li	$v0,-1
.L0db71310:
    # Line 105
    jr	$ra
    li	$v0,4
.end __glColorTableParameterfvSGI_size

# Function: __glColorTableParameterivSGI_size
# Declared: Line 111 (Source lines: 112-113)
# Address: 0x0db71318 - 0x0db7134c (Size: 52 bytes, Frame: 32)
.globl __glColorTableParameterivSGI_size
.ent __glColorTableParameterivSGI_size
__glColorTableParameterivSGI_size:
    # Line 112
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x9
    addiu	$at,$at,-11392
    addu	$gp,$t9,$at
    # Line 113
    # lw $t9, -25532($gp) # &__glColorTableParameterfvSGI_size
    sd	$ra,0($sp)
    bal __glColorTableParameterfvSGI_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glColorTableParameterivSGI_size

# Function: __glSpriteParameterfvSGIX_size
# Declared: Line 117 (Source lines: 120-125)
# Address: 0x0db7134c - 0x0db71390 (Size: 68 bytes, Frame: 0)
.globl __glSpriteParameterfvSGIX_size
.ent __glSpriteParameterfvSGIX_size
__glSpriteParameterfvSGIX_size:
    # Line 120
    li	$at,0x8149
    beq	$a0,$at,.L0db7137c
    li	$v0,0x814a
    beq	$a0,$v0,.L0db71388
    li	$v1,0x814b
    beq	$a0,$v1,.L0db71370
    # Line 125
    li	$v0,-1
    jr	$ra
    nop
.L0db71370:
    # Line 123
    li	$v0,3
    jr	$ra
    nop
.L0db7137c:
    # Line 121
    li	$v0,1
    jr	$ra
    nop
.L0db71388:
    # Line 122
    jr	$ra
    li	$v0,3
.end __glSpriteParameterfvSGIX_size

# Function: __glSpriteParameterivSGIX_size
# Declared: Line 129 (Source lines: 130-131)
# Address: 0x0db71390 - 0x0db713c4 (Size: 52 bytes, Frame: 32)
.globl __glSpriteParameterivSGIX_size
.ent __glSpriteParameterivSGIX_size
__glSpriteParameterivSGIX_size:
    # Line 130
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x9
    addiu	$at,$at,-11512
    addu	$gp,$t9,$at
    # Line 131
    # lw $t9, -25524($gp) # &__glSpriteParameterfvSGIX_size
    sd	$ra,0($sp)
    bal __glSpriteParameterfvSGIX_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSpriteParameterivSGIX_size

# Function: __glPointParameterfvSGIS_size
# Declared: Line 134 (Source lines: 137-143)
# Address: 0x0db713c4 - 0x0db7141c (Size: 88 bytes, Frame: 0)
.globl __glPointParameterfvSGIS_size
.ent __glPointParameterfvSGIS_size
__glPointParameterfvSGIS_size:
    # Line 137
    li	$at,0x8126
    beq	$a0,$at,.L0db713fc
    li	$v0,0x8127
    beq	$a0,$v0,.L0db71408
    li	$v1,0x8128
    beq	$a0,$v1,.L0db71410
    li	$a1,0x8129
    beq	$a0,$a1,.L0db713f0
    # Line 143
    li	$v0,-1
    jr	$ra
    nop
.L0db713f0:
    # Line 141
    li	$v0,3
    jr	$ra
    nop
.L0db713fc:
    # Line 138
    li	$v0,1
    jr	$ra
    nop
.L0db71408:
    # Line 139
    jr	$ra
    li	$v0,1
.L0db71410:
    # Line 140
    li	$v0,1
    jr	$ra
    nop
.end __glPointParameterfvSGIS_size

# Function: __glPixelTransformParameterfvSGI_size
# Declared: Line 153 (Source lines: 154-171)
# Address: 0x0db7141c - 0x0db71508 (Size: 236 bytes, Frame: 0)
.globl __glPixelTransformParameterfvSGI_size
.ent __glPixelTransformParameterfvSGI_size
__glPixelTransformParameterfvSGI_size:
    # Line 154
    li	$a2,0x8019
    sltu	$at,$a0,$a2
    bnez	$at,.L0db71458
    # Line 155
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0db714a4
    li	$a2,0x81c9
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db7148c
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0db714a4
    li	$at,0x81ca
    beq	$a0,$at,.L0db714a4
    nop
.L0db71450:
    # Line 171
    jr	$ra
    li	$v0,-1
.L0db71458:
    # Line 155
    li	$a2,0x8015
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db714ac
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0db714c4
    li	$a2,0x8018
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db714e0
    sltu	$at,$a2,$a0
    bnez	$at,.L0db71450
    nop
    b	.L0db714a4
    nop
.L0db7148c:
    li	$a2,0x801b
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0db714f4
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db71450
    nop
.L0db714a4:
    # Line 164
    jr	$ra
    li	$v0,1
.L0db714ac:
    # Line 155
    li	$a2,0x8014
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db714cc
    sltu	$at,$a2,$a0
    bnez	$at,.L0db71450
    nop
.L0db714c4:
    # Line 168
    jr	$ra
    li	$v0,4
.L0db714cc:
    # Line 155
    li	$v0,0x8013
    bne	$a0,$v0,.L0db71450
    nop
    b	.L0db714a4
    nop
.L0db714e0:
    li	$v1,0x8017
    bne	$a0,$v1,.L0db71450
    nop
    b	.L0db714a4
    nop
.L0db714f4:
    li	$a1,0x801a
    bne	$a0,$a1,.L0db71450
    nop
    b	.L0db714a4
    nop
.end __glPixelTransformParameterfvSGI_size

# Function: __glPixelTransformParameterivSGI_size
# Declared: Line 175 (Source lines: 176-177)
# Address: 0x0db71508 - 0x0db7153c (Size: 52 bytes, Frame: 32)
.globl __glPixelTransformParameterivSGI_size
.ent __glPixelTransformParameterivSGI_size
__glPixelTransformParameterivSGI_size:
    # Line 176
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x9
    addiu	$at,$at,-11888
    addu	$gp,$t9,$at
    # Line 177
    # lw $t9, -25512($gp) # &__glPixelTransformParameterfvSGI_size
    sd	$ra,0($sp)
    bal __glPixelTransformParameterfvSGI_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPixelTransformParameterivSGI_size

.late_rodata
jtbl_0dbef8a8:
    .word .L0db7112c
    .word .L0db71134
    .word .L0db7113c
    .word .L0db71144
    .word .L0db7114c
    .word .L0db7111c
    .word .L0db71124
    .word .L0db71154
    .word .L0db7115c
    .word .L0db71164

