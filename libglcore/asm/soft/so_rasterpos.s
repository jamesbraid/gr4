# Source: ../soft/so_rasterpos.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_rasterpos.c
# Total Functions: 3

.text

# Function: __glRasterPos2
# Declared: Line 23 (Source lines: 24-72)
# Address: 0x0db6fea0 - 0x0db70018 (Size: 376 bytes, Frame: 192)
.globl __glRasterPos2
.ent __glRasterPos2
__glRasterPos2:
    # Line 24
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 35
    lw	$a2,29712($a0)
    # Line 33
    lwc1	$f0,3284($a0)
    sd	$gp,16($sp)
    # Line 24
    lui	$a3,0x9
    # Line 30
    lwc1	$f3,0($a1)
    # Line 24
    addiu	$a3,$a3,-6152
    addu	$gp,$t9,$a3
    # Line 30
    swc1	$f3,232($a0)
    # Line 32
    mtc1	$zero,$f1
    # Line 31
    lwc1	$f2,4($a1)
    # Line 33
    swc1	$f0,244($a0)
    # Line 32
    swc1	$f1,240($a0)
    # Line 31
    swc1	$f2,236($a0)
    # Line 36
    addiu	$a0,$a0,328
    lw	$t9,248($a2)
    sd	$ra,24($sp)
    addiu	$a1,$s0,232
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 41
    move	$a0,$s0
    # Line 39
    sw	$zero,216($s0)
    # Line 41
    addiu	$a1,$s0,216
    lw	$t9,11996($s0)
    # Line 40
    la	$a4,__glValidateVertex2
    sd	$a1,8($sp)
    # Line 41
    jalr	$t9
    # Line 40
    sw	$a4,224($s0)
    # Line 41
    beqz	$v0,.L0db6ff34
    # Line 43
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    # Line 42
    sb	$zero,428($s0)
    # Line 43
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db6ff34:
    # Line 45
    li	$v0,1
    sb	$v0,428($s0)
    # Line 48
    lwc1	$f0,184($s0)
    lbu	$at,3104($s0)
    lwc1	$f3,196($s0)
    lwc1	$f2,192($s0)
    lwc1	$f1,188($s0)
    swc1	$f3,260($s0)
    swc1	$f2,256($s0)
    swc1	$f1,252($s0)
    beqz	$at,.L0db6fff4
    swc1	$f0,248($s0)
    # Line 50
    lwc1	$f0,168($s0)
    lwc1	$f3,180($s0)
    lwc1	$f2,176($s0)
    lwc1	$f1,172($s0)
    swc1	$f3,372($s0)
    swc1	$f2,368($s0)
    swc1	$f1,364($s0)
    swc1	$f0,360($s0)
.L0db6ff84:
    ld	$a1,8($sp)
    # Line 66
    move	$a0,$s0
    # Line 54
    lwc1	$f4,200($s0)
    # Line 66
    lw	$t9,224($s0)
    # Line 54
    lwc1	$f5,204($s0)
    lwc1	$f6,208($s0)
    lwc1	$f7,212($s0)
    # Line 64
    lw	$a4,12076($s0)
    # Line 65
    lw	$a3,12084($s0)
    # Line 57
    lw	$a2,28132($s0)
    sd	$a4,0($sp)
    # Line 65
    sw	$a3,12076($s0)
    # Line 57
    ori	$a2,$a2,0x1d
    # Line 54
    swc1	$f7,276($s0)
    swc1	$f6,272($s0)
    swc1	$f5,268($s0)
    # Line 66
    jalr	$t9
    # Line 54
    swc1	$f4,264($s0)
    # Line 67
    lw	$at,3092($s0)
    ld	$v1,0($sp)
    li	$v0,7170
    beq	$at,$v0,.L0db70000
    sw	$v1,12076($s0)
    # Line 72
    ld	$ra,24($sp)
.L0db6ffe4:
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db6fff4:
    # Line 52
    lwc1	$f0,424($s0)
    b	.L0db6ff84
    swc1	$f0,360($s0)
.L0db70000:
    # Line 70
    # lw $t9, -25568($gp) # &__glSelectPoint
    move	$a0,$s0
    bal __glSelectPoint
    ld	$a1,8($sp)
    b	.L0db6ffe4
    # Line 72
    ld	$ra,24($sp)
.end __glRasterPos2

# Function: __glRasterPos3
# Declared: Line 74 (Source lines: 75-123)
# Address: 0x0db70018 - 0x0db70190 (Size: 376 bytes, Frame: 192)
.globl __glRasterPos3
.ent __glRasterPos3
__glRasterPos3:
    # Line 75
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 81
    lwc1	$f3,0($a1)
    # Line 75
    move	$s0,$a0
    # Line 87
    addiu	$a0,$a0,328
    # Line 81
    swc1	$f3,-96($a0)
    sd	$gp,16($sp)
    # Line 82
    lwc1	$f2,4($a1)
    # Line 75
    lui	$a3,0x9
    addiu	$a3,$a3,-6528
    # Line 82
    swc1	$f2,-92($a0)
    # Line 84
    lwc1	$f0,2956($a0)
    # Line 83
    lwc1	$f1,8($a1)
    # Line 86
    lw	$a2,29384($a0)
    # Line 84
    swc1	$f0,-84($a0)
    # Line 83
    swc1	$f1,-88($a0)
    # Line 75
    addu	$gp,$t9,$a3
    # Line 87
    lw	$t9,252($a2)
    sd	$ra,24($sp)
    addiu	$a1,$s0,232
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 92
    move	$a0,$s0
    # Line 90
    sw	$zero,216($s0)
    # Line 92
    addiu	$a1,$s0,216
    lw	$t9,12000($s0)
    # Line 91
    la	$a4,__glValidateVertex3
    sd	$a1,8($sp)
    # Line 92
    jalr	$t9
    # Line 91
    sw	$a4,224($s0)
    # Line 92
    beqz	$v0,.L0db700ac
    # Line 94
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    # Line 93
    sb	$zero,428($s0)
    # Line 94
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db700ac:
    # Line 96
    li	$v0,1
    sb	$v0,428($s0)
    # Line 99
    lwc1	$f0,184($s0)
    lbu	$at,3104($s0)
    lwc1	$f3,196($s0)
    lwc1	$f2,192($s0)
    lwc1	$f1,188($s0)
    swc1	$f3,260($s0)
    swc1	$f2,256($s0)
    swc1	$f1,252($s0)
    beqz	$at,.L0db7016c
    swc1	$f0,248($s0)
    # Line 101
    lwc1	$f0,168($s0)
    lwc1	$f3,180($s0)
    lwc1	$f2,176($s0)
    lwc1	$f1,172($s0)
    swc1	$f3,372($s0)
    swc1	$f2,368($s0)
    swc1	$f1,364($s0)
    swc1	$f0,360($s0)
.L0db700fc:
    ld	$a1,8($sp)
    # Line 117
    move	$a0,$s0
    # Line 105
    lwc1	$f4,200($s0)
    # Line 117
    lw	$t9,224($s0)
    # Line 105
    lwc1	$f5,204($s0)
    lwc1	$f6,208($s0)
    lwc1	$f7,212($s0)
    # Line 115
    lw	$a4,12076($s0)
    # Line 116
    lw	$a3,12084($s0)
    # Line 108
    lw	$a2,28132($s0)
    sd	$a4,0($sp)
    # Line 116
    sw	$a3,12076($s0)
    # Line 108
    ori	$a2,$a2,0x1d
    # Line 105
    swc1	$f7,276($s0)
    swc1	$f6,272($s0)
    swc1	$f5,268($s0)
    # Line 117
    jalr	$t9
    # Line 105
    swc1	$f4,264($s0)
    # Line 118
    lw	$at,3092($s0)
    ld	$v1,0($sp)
    li	$v0,7170
    beq	$at,$v0,.L0db70178
    sw	$v1,12076($s0)
    # Line 123
    ld	$ra,24($sp)
.L0db7015c:
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db7016c:
    # Line 103
    lwc1	$f0,424($s0)
    b	.L0db700fc
    swc1	$f0,360($s0)
.L0db70178:
    # Line 121
    # lw $t9, -25568($gp) # &__glSelectPoint
    move	$a0,$s0
    bal __glSelectPoint
    ld	$a1,8($sp)
    b	.L0db7015c
    # Line 123
    ld	$ra,24($sp)
.end __glRasterPos3

# Function: __glRasterPos4
# Declared: Line 125 (Source lines: 126-174)
# Address: 0x0db70190 - 0x0db70308 (Size: 376 bytes, Frame: 192)
.globl __glRasterPos4
.ent __glRasterPos4
__glRasterPos4:
    # Line 132
    lwc1	$f3,0($a1)
    swc1	$f3,232($a0)
    # Line 133
    lwc1	$f2,4($a1)
    # Line 126
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 133
    swc1	$f2,236($a0)
    # Line 126
    move	$s0,$a0
    # Line 134
    lwc1	$f1,8($a1)
    # Line 138
    addiu	$a0,$a0,328
    sd	$gp,16($sp)
    # Line 134
    swc1	$f1,-88($a0)
    # Line 126
    lui	$a3,0x9
    # Line 135
    lwc1	$f0,12($a1)
    # Line 126
    addiu	$a3,$a3,-6904
    # Line 137
    lw	$a2,29384($a0)
    # Line 135
    swc1	$f0,-84($a0)
    # Line 126
    addu	$gp,$t9,$a3
    # Line 138
    lw	$t9,256($a2)
    sd	$ra,24($sp)
    addiu	$a1,$s0,232
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 143
    move	$a0,$s0
    # Line 141
    sw	$zero,216($s0)
    # Line 143
    addiu	$a1,$s0,216
    lw	$t9,12004($s0)
    # Line 142
    la	$a4,__glValidateVertex4
    sd	$a1,8($sp)
    # Line 143
    jalr	$t9
    # Line 142
    sw	$a4,224($s0)
    # Line 143
    beqz	$v0,.L0db70224
    # Line 145
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    # Line 144
    sb	$zero,428($s0)
    # Line 145
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db70224:
    # Line 147
    li	$v0,1
    sb	$v0,428($s0)
    # Line 150
    lwc1	$f0,184($s0)
    lbu	$at,3104($s0)
    lwc1	$f3,196($s0)
    lwc1	$f2,192($s0)
    lwc1	$f1,188($s0)
    swc1	$f3,260($s0)
    swc1	$f2,256($s0)
    swc1	$f1,252($s0)
    beqz	$at,.L0db702e4
    swc1	$f0,248($s0)
    # Line 152
    lwc1	$f0,168($s0)
    lwc1	$f3,180($s0)
    lwc1	$f2,176($s0)
    lwc1	$f1,172($s0)
    swc1	$f3,372($s0)
    swc1	$f2,368($s0)
    swc1	$f1,364($s0)
    swc1	$f0,360($s0)
.L0db70274:
    ld	$a1,8($sp)
    # Line 168
    move	$a0,$s0
    # Line 156
    lwc1	$f4,200($s0)
    # Line 168
    lw	$t9,224($s0)
    # Line 156
    lwc1	$f5,204($s0)
    lwc1	$f6,208($s0)
    lwc1	$f7,212($s0)
    # Line 166
    lw	$a4,12076($s0)
    # Line 167
    lw	$a3,12084($s0)
    # Line 159
    lw	$a2,28132($s0)
    sd	$a4,0($sp)
    # Line 167
    sw	$a3,12076($s0)
    # Line 159
    ori	$a2,$a2,0x1d
    # Line 156
    swc1	$f7,276($s0)
    swc1	$f6,272($s0)
    swc1	$f5,268($s0)
    # Line 168
    jalr	$t9
    # Line 156
    swc1	$f4,264($s0)
    # Line 169
    lw	$at,3092($s0)
    ld	$v1,0($sp)
    li	$v0,7170
    beq	$at,$v0,.L0db702f0
    sw	$v1,12076($s0)
    # Line 174
    ld	$ra,24($sp)
.L0db702d4:
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db702e4:
    # Line 154
    lwc1	$f0,424($s0)
    b	.L0db70274
    swc1	$f0,360($s0)
.L0db702f0:
    # Line 172
    # lw $t9, -25568($gp) # &__glSelectPoint
    move	$a0,$s0
    bal __glSelectPoint
    ld	$a1,8($sp)
    b	.L0db702d4
    # Line 174
    ld	$ra,24($sp)
.end __glRasterPos4

