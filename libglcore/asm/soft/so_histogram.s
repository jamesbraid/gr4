# Source: ../soft/so_histogram.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_histogram.c
# Total Functions: 20

.text

# Function: __glProcessHistogramArguments
# Declared: Line 37 (Source lines: 39-146)
# Address: 0x0db4a6bc - 0x0db4aacc (Size: 1040 bytes, Frame: 0)
.globl __glProcessHistogramArguments
.ent __glProcessHistogramArguments
__glProcessHistogramArguments:
    # Line 39
    li	$a5,0x8046
    sltu	$at,$a1,$a5
    bnez	$at,.L0db4a728
    # Line 47
    sltu	$v0,$a5,$a1
    beqz	$v0,.L0db4a788
    li	$a5,0x8054
    sltu	$v1,$a1,$a5
    bnez	$v1,.L0db4a848
    sltu	$a4,$a5,$a1
    beqz	$a4,.L0db4a860
    li	$a5,0x8058
    sltu	$at,$a1,$a5
    bnez	$at,.L0db4a9e8
    sltu	$v0,$a5,$a1
    bnez	$v0,.L0db4aa94
    li	$a5,0x805a
.L0db4a6fc:
    # Line 118
    sw	$zero,16($a2)
.L0db4a700:
    # Line 120
    li	$v1,6408
    # Line 114
    li	$at,32
    # Line 119
    li	$a4,4
    sw	$a4,20($a2)
    # Line 117
    sw	$at,12($a2)
    # Line 116
    sw	$at,8($a2)
    # Line 115
    sw	$at,4($a2)
    # Line 114
    sw	$at,0($a2)
    # Line 121
    b	.L0db4a7b0
    # Line 120
    sw	$v1,0($a3)
.L0db4a728:
    # Line 47
    li	$a5,0x803d
    sltu	$v0,$a1,$a5
    bnez	$v0,.L0db4a810
    sltu	$v1,$a5,$a1
    bnez	$v1,.L0db4a8b0
    li	$a5,6406
.L0db4a740:
    # Line 57
    sw	$zero,16($a2)
.L0db4a744:
    # Line 55
    sw	$zero,8($a2)
    # Line 54
    sw	$zero,4($a2)
    # Line 53
    sw	$zero,0($a2)
    # Line 56
    li	$at,32
    # Line 58
    li	$a4,1
    sw	$a4,20($a2)
    # Line 56
    sw	$at,12($a2)
    # Line 124
    bgez	$a0,.L0db4a7b8
    # Line 59
    sw	$a5,0($a3)
.L0db4a768:
    # Line 127
    jr	$ra
    li	$v0,1281
.L0db4a770:
    # Line 47
    li	$a5,0x8048
    sltu	$v0,$a1,$a5
    bnez	$v0,.L0db4aa58
    sltu	$v1,$a5,$a1
    bnez	$v1,.L0db4a918
    nop
.L0db4a788:
    # Line 83
    sw	$zero,8($a2)
.L0db4a78c:
    # Line 82
    sw	$zero,4($a2)
    # Line 81
    sw	$zero,0($a2)
    # Line 87
    li	$a4,6410
    # Line 84
    li	$v0,32
    # Line 86
    li	$at,2
    sw	$at,20($a2)
    # Line 85
    sw	$v0,16($a2)
    # Line 84
    sw	$v0,12($a2)
    # Line 87
    sw	$a4,0($a3)
.L0db4a7b0:
    # Line 124
    bltz	$a0,.L0db4a768
    nop
.L0db4a7b8:
    # Line 127
    lw	$v1,20($a2)
    li	$at,0x8000
    sll	$v1,$v1,0x2
    divu	$zero,$at,$v1
    # Line 142
    li	$v0,1281
    # Line 127
    mflo	$a4
    sltu	$a4,$a4,$a0
    bnez	$a4,.L0db4a840
    teq	$v1,$zero,0x7
    # Line 135
    beqz	$a0,.L0db4a808
    nop
.L0db4a7e4:
    andi	$a1,$a0,0x1
    beqz	$a1,.L0db4a800
    sra	$a1,$a0,0x1
    beqz	$a1,.L0db4a800
    nop
    # Line 142
    jr	$ra
    nop
.L0db4a800:
    # Line 140
    bnez	$a1,.L0db4a7e4
    move	$a0,$a1
.L0db4a808:
    # Line 146
    jr	$ra
    move	$v0,$zero
.L0db4a810:
    # Line 47
    sltiu	$a4,$a1,6410
    bnez	$a4,.L0db4a88c
    sltiu	$at,$a1,6411
    bnez	$at,.L0db4a788
    li	$a5,0x803b
    sltu	$v0,$a1,$a5
    bnez	$v0,.L0db4a968
    sltu	$v1,$a5,$a1
    bnez	$v1,.L0db4aa10
    li	$v0,0x803c
    b	.L0db4a740
    li	$a5,6406
.L0db4a840:
    # Line 135
    jr	$ra
    li	$v0,0x8031
.L0db4a848:
    # Line 47
    li	$a5,0x8050
    sltu	$a4,$a1,$a5
    bnez	$a4,.L0db4a940
    sltu	$at,$a5,$a1
    bnez	$at,.L0db4a9c4
    li	$a5,0x8052
.L0db4a860:
    # Line 101
    sw	$zero,16($a2)
.L0db4a864:
    # Line 100
    sw	$zero,12($a2)
    # Line 103
    li	$v0,6407
    # Line 97
    li	$a4,32
    # Line 102
    li	$v1,3
    sw	$v1,20($a2)
    # Line 99
    sw	$a4,8($a2)
    # Line 98
    sw	$a4,4($a2)
    # Line 97
    sw	$a4,0($a2)
    # Line 104
    b	.L0db4a7b0
    # Line 103
    sw	$v0,0($a3)
.L0db4a88c:
    # Line 47
    sltiu	$at,$a1,6408
    bnez	$at,.L0db4a8f0
    sltiu	$v0,$a1,6409
    bnez	$v0,.L0db4a6fc
    li	$a5,6409
    bne	$a5,$a1,.L0db4a918
    nop
    b	.L0db4a8cc
    # Line 69
    sw	$zero,12($a2)
.L0db4a8b0:
    # Line 47
    li	$a5,0x8042
    sltu	$v1,$a1,$a5
    bnez	$v1,.L0db4a920
    sltu	$a4,$a5,$a1
    bnez	$a4,.L0db4a99c
    li	$a5,6409
.L0db4a8c8:
    # Line 69
    sw	$zero,12($a2)
.L0db4a8cc:
    # Line 68
    sw	$zero,8($a2)
    # Line 67
    sw	$zero,4($a2)
    # Line 66
    sw	$zero,0($a2)
    # Line 70
    li	$v0,32
    # Line 71
    li	$at,1
    sw	$at,20($a2)
    # Line 70
    sw	$v0,16($a2)
    # Line 73
    b	.L0db4a7b0
    # Line 72
    sw	$a5,0($a3)
.L0db4a8f0:
    # Line 47
    sltiu	$v1,$a1,6407
    bnez	$v1,.L0db4a90c
    sltiu	$a4,$a1,6408
    beqz	$a4,.L0db4a918
    nop
    b	.L0db4a864
    # Line 101
    sw	$zero,16($a2)
.L0db4a90c:
    # Line 47
    li	$a5,6406
    beql	$a5,$a1,.L0db4a744
    # Line 57
    sw	$zero,16($a2)
.L0db4a918:
    # Line 123
    jr	$ra
    li	$v0,1280
.L0db4a920:
    # Line 47
    li	$a5,0x8040
    sltu	$at,$a1,$a5
    bnez	$at,.L0db4a97c
    sltu	$v0,$a5,$a1
    bnez	$v0,.L0db4aa34
    li	$a4,0x8041
    b	.L0db4a8c8
    li	$a5,6409
.L0db4a940:
    li	$a5,0x804e
    sltu	$v1,$a1,$a5
    bnez	$v1,.L0db4a770
    sltu	$a4,$a5,$a1
    beqz	$a4,.L0db4a860
    li	$at,0x804f
    bne	$a1,$at,.L0db4a918
    nop
    b	.L0db4a864
    # Line 101
    sw	$zero,16($a2)
.L0db4a968:
    # Line 47
    li	$v0,0x8000
    bne	$a1,$v0,.L0db4a918
    nop
    b	.L0db4a700
    # Line 118
    sw	$zero,16($a2)
.L0db4a97c:
    # Line 47
    li	$a5,0x803f
    sltu	$v1,$a1,$a5
    bnez	$v1,.L0db4aa20
    sltu	$a4,$a5,$a1
    bnez	$a4,.L0db4a918
    nop
    b	.L0db4a8c8
    li	$a5,6409
.L0db4a99c:
    li	$a5,0x8044
    sltu	$at,$a1,$a5
    bnez	$at,.L0db4aa44
    sltu	$v0,$a5,$a1
    beqz	$v0,.L0db4a788
    li	$v1,0x8045
    bne	$a1,$v1,.L0db4a918
    nop
    b	.L0db4a78c
    # Line 83
    sw	$zero,8($a2)
.L0db4a9c4:
    # Line 47
    sltu	$a4,$a1,$a5
    bnez	$a4,.L0db4aa6c
    sltu	$at,$a5,$a1
    beqz	$at,.L0db4a860
    li	$v0,0x8053
    bne	$a1,$v0,.L0db4a918
    nop
    b	.L0db4a864
    # Line 101
    sw	$zero,16($a2)
.L0db4a9e8:
    # Line 47
    li	$a5,0x8056
    sltu	$v1,$a1,$a5
    bnez	$v1,.L0db4aa80
    sltu	$a4,$a5,$a1
    beqz	$a4,.L0db4a6fc
    li	$at,0x8057
    bne	$a1,$at,.L0db4a918
    nop
    b	.L0db4a700
    # Line 118
    sw	$zero,16($a2)
.L0db4aa10:
    # Line 47
    bne	$a1,$v0,.L0db4a918
    nop
    b	.L0db4a740
    li	$a5,6406
.L0db4aa20:
    li	$v1,0x803e
    bne	$a1,$v1,.L0db4a918
    nop
    b	.L0db4a740
    li	$a5,6406
.L0db4aa34:
    bne	$a1,$a4,.L0db4a918
    nop
    b	.L0db4a8c8
    li	$a5,6409
.L0db4aa44:
    li	$at,0x8043
    bne	$a1,$at,.L0db4a918
    nop
    b	.L0db4a78c
    # Line 83
    sw	$zero,8($a2)
.L0db4aa58:
    # Line 47
    li	$v0,0x8047
    bne	$a1,$v0,.L0db4a918
    nop
    b	.L0db4a78c
    # Line 83
    sw	$zero,8($a2)
.L0db4aa6c:
    # Line 47
    li	$v1,0x8051
    bne	$a1,$v1,.L0db4a918
    nop
    b	.L0db4a864
    # Line 101
    sw	$zero,16($a2)
.L0db4aa80:
    # Line 47
    li	$a4,0x8055
    bne	$a1,$a4,.L0db4a918
    nop
    b	.L0db4a700
    # Line 118
    sw	$zero,16($a2)
.L0db4aa94:
    # Line 47
    sltu	$at,$a1,$a5
    bnez	$at,.L0db4aab8
    sltu	$v0,$a5,$a1
    beqz	$v0,.L0db4a6fc
    li	$v1,0x805b
    bne	$a1,$v1,.L0db4a918
    nop
    b	.L0db4a700
    # Line 118
    sw	$zero,16($a2)
.L0db4aab8:
    # Line 47
    li	$a4,0x8059
    bne	$a1,$a4,.L0db4a918
    nop
    b	.L0db4a700
    # Line 118
    sw	$zero,16($a2)
.end __glProcessHistogramArguments

# Function: __glInitHistogramStore
# Declared: Line 150 (Source lines: 153-186)
# Address: 0x0db4aacc - 0x0db4ab90 (Size: 196 bytes, Frame: 0)
.globl __glInitHistogramStore
.ent __glInitHistogramStore
__glInitHistogramStore:
    # Line 156
    sw	$zero,120($a1)
    # Line 155
    sw	$zero,132($a1)
    # Line 154
    sw	$zero,128($a1)
    # Line 160
    li	$at,6409
    # Line 153
    li	$v1,4
    # Line 157
    li	$a3,1
    sw	$a3,124($a1)
    # Line 158
    lw	$v0,168($a1)
    # Line 153
    sw	$v1,148($a1)
    # Line 160
    beq	$a2,$at,.L0db4ab48
    # Line 158
    sw	$v0,140($a1)
    # Line 160
    li	$a0,6410
    beq	$a2,$a0,.L0db4ab5c
    # Line 167
    li	$v0,5126
    # Line 160
    li	$a3,6407
    beq	$a3,$a2,.L0db4ab68
    # Line 171
    li	$v1,5126
    # Line 160
    li	$a3,6408
    beq	$a3,$a2,.L0db4ab74
    # Line 175
    li	$a0,5126
    # Line 160
    li	$a3,6406
    beq	$a3,$a2,.L0db4ab80
    li	$at,0x8049
    beq	$a2,$at,.L0db4ab38
    # Line 183
    li	$v1,5126
    # Line 186
    jr	$ra
    nop
.L0db4ab38:
    # Line 183
    sw	$v1,84($a1)
    # Line 182
    li	$v0,6403
    # Line 186
    jr	$ra
    # Line 182
    sw	$v0,80($a1)
.L0db4ab48:
    # Line 162
    li	$a0,6403
    sw	$a0,80($a1)
    # Line 163
    li	$at,5126
    # Line 186
    jr	$ra
    # Line 163
    sw	$at,84($a1)
.L0db4ab5c:
    # Line 166
    sw	$a3,80($a1)
    # Line 186
    jr	$ra
    # Line 167
    sw	$v0,84($a1)
.L0db4ab68:
    # Line 170
    sw	$a3,80($a1)
    # Line 186
    jr	$ra
    # Line 171
    sw	$v1,84($a1)
.L0db4ab74:
    # Line 174
    sw	$a3,80($a1)
    # Line 186
    jr	$ra
    # Line 175
    sw	$a0,84($a1)
.L0db4ab80:
    # Line 179
    li	$at,5126
    # Line 178
    sw	$a3,80($a1)
    # Line 186
    jr	$ra
    # Line 179
    sw	$at,84($a1)
.end __glInitHistogramStore

# Function: __glInitHistogramUnpack
# Declared: Line 193 (Source lines: 197-207)
# Address: 0x0db4ab90 - 0x0db4ac1c (Size: 140 bytes, Frame: 224)
.globl __glInitHistogramUnpack
.ent __glInitHistogramUnpack
__glInitHistogramUnpack:
    # Line 197
    move	$v0,$a7
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$v1,0xb
    addiu	$v1,$v1,15112
    addu	$gp,$t9,$v1
    # Line 198
    mtc1	$zero,$f1
    # Line 197
    move	$s8,$a0
    move	$at,$a1
    # Line 198
    swc1	$f1,196($at)
    # Line 205
    # lw $t9, -26796($gp) # &__glInitHistogramStore
    # Line 199
    lwc1	$f0,3284($s8)
    # Line 200
    sw	$a2,180($at)
    sw	$a2,184($at)
    sw	$a2,168($at)
    # Line 205
    move	$a2,$a7
    # Line 204
    sw	$a6,8($at)
    # Line 203
    sw	$a5,4($at)
    # Line 202
    sw	$a4,0($at)
    # Line 201
    sw	$a3,172($at)
    # Line 205
    bal __glInitHistogramStore
    # Line 199
    swc1	$f0,160($at)
    # Line 206
    # lw $t9, -28888($gp) # &__glLoadUnpackModes
    move	$a0,$s8
    ld	$a1,24($sp)
    jal	__glLoadUnpackModes
    lbu	$a2,103($sp)
    # Line 207
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glInitHistogramUnpack

# Function: __glim_ResetHistogramEXT
# Declared: Line 215 (Source lines: 216-231)
# Address: 0x0db4ac1c - 0x0db4acd0 (Size: 180 bytes, Frame: 48)
.globl __glim_ResetHistogramEXT
.ent __glim_ResetHistogramEXT
__glim_ResetHistogramEXT:
    # Line 218
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 216
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 218
    lw	$at,__glBeginMode
    # Line 216
    lui	$v1,0xb
    addiu	$v1,$v1,14972
    # Line 218
    beq	$at,$v0,.L0db4acb0
    # Line 216
    addu	$gp,$t9,$v1
    sd	$ra,16($sp)
    # Line 218
    li	$a1,0x8024
    beq	$a0,$a1,.L0db4ac6c
    sd	$a2,0($sp)
    # Line 221
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 222
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4ac6c:
    # Line 227
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    ld	$a0,0($sp)
    jal	__glElementsPerGroup
    lw	$a0,1188($a0)
    ld	$a0,0($sp)
    lw	$a1,1160($a0)
    mult	$a1,$v0
    # lw $t9, -17876($gp) # &memset
    lw	$a0,1156($a0)
    move	$a1,$zero
    mflo	$a2
    jal	memset
    sll	$a2,$a2,0x2
    # Line 231
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4acb0:
    # Line 218
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ResetHistogramEXT

# Function: __glim_HistogramEXT
# Declared: Line 237 (Source lines: 239-301)
# Address: 0x0db4acd0 - 0x0db4aed8 (Size: 520 bytes, Frame: 144)
.globl __glim_HistogramEXT
.ent __glim_HistogramEXT
__glim_HistogramEXT:
    # Line 244
    li	$v0,1
    # Line 239
    addiu	$sp,$sp,-144
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    sd	$s0,80($sp)
    move	$s0,$a0
    sd	$gp,72($sp)
    lui	$v1,0xb
    addiu	$v1,$v1,14792
    # Line 244
    lw	$at,__glBeginMode
    lw	$a4,__glCurrentContext
    # Line 239
    addu	$gp,$t9,$v1
    # Line 244
    beq	$at,$v0,.L0db4aeb4
    sd	$a4,40($sp)
    sd	$s1,96($sp)
    li	$a5,0x8024
    beq	$s0,$a5,.L0db4ad48
    li	$s1,0x8025
    beq	$s1,$s0,.L0db4ad48
    sd	$ra,88($sp)
    # Line 251
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1280
    jal	__glSetError
    ld	$s1,96($sp)
    # Line 252
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db4ad48:
    ld	$a0,64($sp)
    # Line 255
    ld	$a1,56($sp)
    # lw $t9, -26800($gp) # &__glProcessHistogramArguments
    addiu	$a3,$sp,24
    sd	$ra,88($sp)
    bal __glProcessHistogramArguments
    addiu	$a2,$sp,0
    beqz	$v0,.L0db4add8
    ld	$ra,88($sp)
    move	$at,$s1
    bne	$at,$s0,.L0db4adb8
    ld	$s1,96($sp)
    # Line 269
    ld	$s0,80($sp)
    # Line 255
    li	$v1,0x8031
    bne	$v0,$v1,.L0db4adb8
    ld	$s1,96($sp)
    ld	$a4,40($sp)
    ld	$gp,72($sp)
    # Line 269
    addiu	$sp,$sp,144
    # Line 268
    sw	$zero,1232($a4)
    # Line 267
    sw	$zero,1228($a4)
    # Line 266
    sw	$zero,1224($a4)
    # Line 265
    sw	$zero,1220($a4)
    # Line 264
    sw	$zero,1216($a4)
    # Line 263
    sw	$zero,1212($a4)
    # Line 262
    sw	$zero,1208($a4)
    # Line 269
    jr	$ra
    # Line 261
    sw	$zero,1204($a4)
.L0db4adb8:
    # Line 271
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    # Line 272
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db4add8:
    bne	$s1,$s0,.L0db4adf8
    # Line 280
    ld	$a3,40($sp)
    ld	$a5,40($sp)
    ld	$s1,96($sp)
    ld	$s0,64($sp)
    # Line 276
    addiu	$a5,$a5,1200
    b	.L0db4ae64
    sd	$a5,32($sp)
.L0db4adf8:
    # Line 280
    lw	$a6,24($sp)
    # Line 281
    ld	$s0,64($sp)
    # Line 280
    sw	$a6,1188($a3)
    # Line 281
    addiu	$a5,$s0,-1
    sw	$a5,1196($a3)
    # Line 283
    lw	$a4,20($sp)
    mult	$a4,$s0
    ld	$s1,96($sp)
    lw	$a1,1156($a3)
    move	$a0,$a3
    lw	$t9,8($a3)
    # Line 278
    addiu	$a3,$a3,1156
    sd	$a3,32($sp)
    # Line 283
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    ld	$a4,40($sp)
    sw	$v0,1156($a4)
    # Line 289
    lw	$a3,20($sp)
    mult	$a3,$s0
    # Line 283
    move	$a0,$v0
    # Line 289
    # lw $t9, -17876($gp) # &memset
    move	$a1,$zero
    mflo	$a2
    jal	memset
    sll	$a2,$a2,0x2
    ld	$ra,88($sp)
.L0db4ae64:
    ld	$at,32($sp)
    # Line 293
    ld	$v0,56($sp)
    # Line 292
    sw	$s0,4($at)
    # Line 294
    ld	$s0,48($sp)
    # Line 293
    sw	$v0,28($at)
    # Line 294
    sb	$s0,36($at)
    # Line 296
    lw	$a5,0($sp)
    sw	$a5,8($at)
    # Line 297
    lw	$a4,4($sp)
    sw	$a4,12($at)
    # Line 298
    lw	$v1,8($sp)
    sw	$v1,16($at)
    # Line 299
    lw	$v0,12($sp)
    ld	$gp,72($sp)
    sw	$v0,20($at)
    # Line 301
    ld	$s0,80($sp)
    # Line 300
    lw	$a5,16($sp)
    # Line 301
    addiu	$sp,$sp,144
    jr	$ra
    # Line 300
    sw	$a5,24($at)
.L0db4aeb4:
    # Line 244
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_HistogramEXT

# Function: __glCheckGetArguments
# Declared: Line 304 (Source lines: 305-357)
# Address: 0x0db4aed8 - 0x0db4b11c (Size: 580 bytes, Frame: 32)
.globl __glCheckGetArguments
.ent __glCheckGetArguments
__glCheckGetArguments:
    # Line 305
    sltiu	$at,$a0,6407
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xb
    addiu	$v0,$v0,14272
    bnez	$at,.L0db4af20
    addu	$gp,$t9,$v0
    # Line 306
    sltiu	$v1,$a0,6408
    bnez	$v1,.L0db4af70
    sltiu	$a2,$a0,6410
    bnez	$a2,.L0db4b090
    sltiu	$at,$a0,6411
    bnez	$at,.L0db4af70
    li	$v0,0x8000
    beq	$a0,$v0,.L0db4af74
    # Line 320
    sltiu	$a2,$a1,5126
    b	.L0db4af3c
    sd	$ra,8($sp)
.L0db4af20:
    # Line 306
    sltiu	$v1,$a0,6405
    bnez	$v1,.L0db4af60
    sltiu	$a2,$a0,6406
    bnez	$a2,.L0db4af70
    li	$at,6406
    beq	$a0,$at,.L0db4af74
    # Line 320
    sltiu	$a2,$a1,5126
.L0db4af3c:
    # Line 318
    # lw $t9, -27320($gp) # &__glSetError
.L0db4af40:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 319
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4af60:
    # Line 306
    sltiu	$v0,$a0,6404
    bnez	$v0,.L0db4b07c
    sltiu	$v1,$a0,6405
    beqz	$v1,.L0db4af3c
.L0db4af70:
    # Line 320
    sltiu	$a2,$a1,5126
.L0db4af74:
    bnez	$a2,.L0db4afb4
    # Line 322
    sltiu	$at,$a1,5127
    bnez	$at,.L0db4afd4
    li	$a3,0x8034
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0db4afe4
    sltu	$v1,$a3,$a1
    beqz	$v1,.L0db4aff8
    li	$a3,0x8036
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0db4b108
    sltu	$at,$a3,$a1
    bnez	$at,.L0db4b05c
    # Line 354
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4affc
    # Line 344
    li	$a2,6408
.L0db4afb4:
    # Line 322
    sltiu	$v0,$a1,5123
    bnez	$v0,.L0db4b02c
    sltiu	$v1,$a1,5124
    bnez	$v1,.L0db4afd4
    sltiu	$a2,$a1,5125
    bnez	$a2,.L0db4b0ac
    sltiu	$at,$a1,5126
    beqz	$at,.L0db4b058
.L0db4afd4:
    # Line 357
    move	$v0,$zero
.L0db4afd8:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4afe4:
    # Line 322
    li	$a3,0x8033
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0db4b0c0
    sltu	$v1,$a3,$a1
    bnez	$v1,.L0db4b058
.L0db4aff8:
    # Line 344
    li	$a2,6408
.L0db4affc:
    beq	$a0,$a2,.L0db4afd4
    li	$at,0x8000
    beq	$a0,$at,.L0db4afd4
    # Line 349
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 350
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4b02c:
    # Line 322
    sltiu	$v0,$a1,5121
    bnez	$v0,.L0db4b050
    sltiu	$v1,$a1,5122
    bnez	$v1,.L0db4afd4
    li	$a2,5122
    bne	$a1,$a2,.L0db4b05c
    # Line 354
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4afd8
    # Line 357
    move	$v0,$zero
.L0db4b050:
    # Line 322
    li	$at,5120
    beq	$a1,$at,.L0db4afd4
.L0db4b058:
    # Line 354
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db4b05c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 355
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4b07c:
    # Line 306
    li	$v0,6403
    bne	$a0,$v0,.L0db4af40
    # Line 318
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4af74
    # Line 320
    sltiu	$a2,$a1,5126
.L0db4b090:
    # Line 306
    sltiu	$v1,$a0,6409
    bnez	$v1,.L0db4b0f4
    sltiu	$a2,$a0,6410
    beqz	$a2,.L0db4af40
    # Line 318
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4af74
    # Line 320
    sltiu	$a2,$a1,5126
.L0db4b0ac:
    # Line 322
    li	$at,5124
    bne	$a1,$at,.L0db4b05c
    # Line 354
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4afd8
    # Line 357
    move	$v0,$zero
.L0db4b0c0:
    # Line 322
    li	$v0,0x8032
    bne	$a1,$v0,.L0db4b058
    # Line 332
    li	$v1,6407
    beq	$a0,$v1,.L0db4afd4
    # Line 336
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 337
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4b0f4:
    # Line 306
    li	$a2,6408
    bne	$a0,$a2,.L0db4af40
    # Line 318
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4af74
    # Line 320
    sltiu	$a2,$a1,5126
.L0db4b108:
    # Line 322
    li	$at,0x8035
    bne	$a1,$at,.L0db4b05c
    # Line 354
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4affc
    # Line 344
    li	$a2,6408
.end __glCheckGetArguments

# Function: __glSetValue
# Declared: Line 365 (Source lines: 369-381)
# Address: 0x0db4b11c - 0x0db4b150 (Size: 52 bytes, Frame: 0)
.globl __glSetValue
.ent __glSetValue
__glSetValue:
    # Line 369
    li	$at,5125
    beq	$a2,$at,.L0db4b140
    li	$v0,5126
    beq	$a2,$v0,.L0db4b138
    nop
    # Line 381
    jr	$ra
    nop
.L0db4b138:
    jr	$ra
    # Line 376
    swc1	$f13,0($a0)
.L0db4b140:
    # Line 372
    trunc.l.s	$f0,$f13
    dmfc1	$v1,$f0
    # Line 381
    jr	$ra
    # Line 372
    sw	$v1,0($a0)
.end __glSetValue

# Function: __glResetArray
# Declared: Line 417 (Source lines: 420-556)
# Address: 0x0db4b150 - 0x0db4b4ac (Size: 860 bytes, Frame: 176)
.globl __glResetArray
.ent __glResetArray
__glResetArray:
    # Line 438
    move	$a7,$zero
    # Line 437
    move	$t0,$zero
    # Line 442
    li	$at,5125
    # Line 420
    addiu	$sp,$sp,-176
    sdc1	$f20,8($sp)
    mov.s	$f20,$f18
    sd	$s3,32($sp)
    move	$s3,$a4
    sd	$s5,16($sp)
    move	$s5,$a5
    sd	$gp,24($sp)
    lui	$v0,0xb
    addiu	$v0,$v0,13640
    # Line 442
    beq	$a5,$at,.L0db4b3bc
    # Line 420
    addu	$gp,$t9,$v0
    # Line 442
    li	$v1,5126
    beq	$s5,$v1,.L0db4b420
.L0db4b194:
    # Line 454
    li	$a6,6409
    beq	$a0,$a6,.L0db4b3c8
    li	$at,6406
    beq	$a0,$at,.L0db4b42c
    li	$v0,6410
    beq	$a0,$v0,.L0db4b43c
    li	$v1,6407
    beq	$a0,$v1,.L0db4b44c
    li	$a6,6408
    beq	$a0,$a6,.L0db4b45c
.L0db4b1bc:
    # Line 478
    sltiu	$at,$a1,6407
    bnez	$at,.L0db4b1ec
    # Line 480
    sltiu	$v0,$a1,6408
    bnez	$v0,.L0db4b20c
    sltiu	$v1,$a1,6410
    bnez	$v1,.L0db4b3ec
    sltiu	$a6,$a1,6411
    beqz	$a6,.L0db4b49c
    li	$a6,0x8000
    sd	$s2,40($sp)
    b	.L0db4b214
    # Line 502
    li	$a7,57
.L0db4b1ec:
    # Line 480
    sltiu	$at,$a1,6405
    bnez	$at,.L0db4b39c
    sltiu	$v0,$a1,6406
    beqz	$v0,.L0db4b40c
    li	$at,6406
    sd	$s2,40($sp)
    # Line 490
    b	.L0db4b214
    # Line 489
    li	$a7,4
.L0db4b20c:
    sd	$s2,40($sp)
    # Line 495
    li	$a7,7
.L0db4b214:
    sd	$s2,40($sp)
.L0db4b218:
    # Line 507
    and	$s2,$t0,$a7
    beqzl	$s2,.L0db4b46c
    ld	$gp,24($sp)
    sd	$s6,48($sp)
    # Line 526
    lw	$s6,0($sp)
    sd	$s1,72($sp)
    lw	$s1,4($sp)
    mult	$s1,$s6
    sd	$s4,56($sp)
    mflo	$s4
    nop
    nop
    mult	$s4,$a3
    sd	$s8,96($sp)
    sd	$s7,80($sp)
    # Line 527
    slt	$v1,$a3,$s3
    sd	$s0,64($sp)
    move	$s1,$a3
    # Line 526
    mflo	$s0
    # Line 527
    beqz	$v1,.L0db4b370
    # Line 526
    addu	$s0,$s0,$a2
    sd	$ra,88($sp)
    # Line 527
    addu	$s8,$s6,$s6
    sll	$s7,$s6,0x2
    b	.L0db4b2d8
    subu	$s7,$s7,$s6
.L0db4b280:
    # Line 542
    move	$a2,$s5
    mov.s	$f13,$f20
    bal __glSetValue
    addu	$a0,$s7,$s0
.L0db4b290:
    # Line 544
    # lw $t9, -26780($gp) # &__glSetValue
    move	$a2,$s5
    mov.s	$f13,$f20
    bal __glSetValue
    addu	$a0,$s8,$s0
.L0db4b2a4:
    # Line 546
    # lw $t9, -26780($gp) # &__glSetValue
    move	$a2,$s5
    mov.s	$f13,$f20
    bal __glSetValue
    addu	$a0,$s6,$s0
.L0db4b2b8:
    # Line 549
    # lw $t9, -26780($gp) # &__glSetValue
    move	$a0,$s0
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s5
.L0db4b2cc:
    # Line 527
    addiu	$s1,$s1,1
.L0db4b2d0:
    beq	$s3,$s1,.L0db4b364
    # Line 554
    addu	$s0,$s4,$s0
.L0db4b2d8:
    # Line 527
    la	$a6,sub_0dbf0000
    sll	$a0,$s2,0x2
    sltiu	$at,$s2,40
    addiu	$a6,$a6,-2280
    beqz	$at,.L0db4b2cc
    addu	$a0,$a0,$a6
    lw	$at,%lo(jtbl_0dbef718)($a0)
    jr	$at
    # Line 542
    nop	# was lw $t9, -26780($gp) # &__glSetValue
.L0db4b2fc:
    # Line 537
    # lw $t9, -26780($gp) # &__glSetValue
    move	$a0,$s0
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s5
.L0db4b310:
    # Line 539
    # lw $t9, -26780($gp) # &__glSetValue
    move	$a2,$s5
    mov.s	$f13,$f20
    bal __glSetValue
    addu	$a0,$s7,$s0
    b	.L0db4b2d0
    # Line 527
    addiu	$s1,$s1,1
.L0db4b32c:
    # Line 531
    # lw $t9, -26780($gp) # &__glSetValue
    move	$a2,$s5
    mov.s	$f13,$f20
    bal __glSetValue
    addu	$a0,$s6,$s0
    b	.L0db4b2d0
    # Line 527
    addiu	$s1,$s1,1
.L0db4b348:
    # Line 534
    # lw $t9, -26780($gp) # &__glSetValue
    move	$a2,$s5
    mov.s	$f13,$f20
    bal __glSetValue
    addu	$a0,$s8,$s0
    b	.L0db4b2d0
    # Line 527
    addiu	$s1,$s1,1
.L0db4b364:
    ld	$s7,80($sp)
    ld	$ra,88($sp)
    ld	$s8,96($sp)
.L0db4b370:
    ld	$gp,24($sp)
    # Line 556
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$s4,56($sp)
    ld	$s5,16($sp)
    ld	$s6,48($sp)
    ldc1	$f20,8($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db4b39c:
    # Line 480
    sltiu	$v0,$a1,6404
    bnez	$v0,.L0db4b3d8
    sltiu	$v1,$a1,6405
    beqzl	$v1,.L0db4b218
    sd	$s2,40($sp)
    sd	$s2,40($sp)
    # Line 487
    b	.L0db4b214
    # Line 486
    li	$a7,2
.L0db4b3bc:
    # Line 444
    li	$a6,4
    # Line 445
    b	.L0db4b194
    # Line 444
    sw	$a6,0($sp)
.L0db4b3c8:
    # Line 457
    li	$at,1
    # Line 456
    li	$t0,1
    # Line 458
    b	.L0db4b1bc
    # Line 457
    sw	$at,4($sp)
.L0db4b3d8:
    # Line 480
    li	$v0,6403
    bnel	$a1,$v0,.L0db4b218
    sd	$s2,40($sp)
    b	.L0db4b404
    sd	$s2,40($sp)
.L0db4b3ec:
    sltiu	$v1,$a1,6409
    bnez	$v1,.L0db4b484
    sltiu	$a6,$a1,6410
    beqzl	$a6,.L0db4b218
    sd	$s2,40($sp)
    sd	$s2,40($sp)
.L0db4b404:
    # Line 484
    b	.L0db4b214
    # Line 483
    li	$a7,1
.L0db4b40c:
    # Line 480
    bnel	$a1,$at,.L0db4b218
    sd	$s2,40($sp)
    sd	$s2,40($sp)
    # Line 493
    b	.L0db4b214
    # Line 492
    li	$a7,56
.L0db4b420:
    # Line 447
    li	$v0,4
    b	.L0db4b194
    sw	$v0,0($sp)
.L0db4b42c:
    # Line 460
    li	$t0,8
    # Line 461
    li	$v1,1
    # Line 462
    b	.L0db4b1bc
    # Line 461
    sw	$v1,4($sp)
.L0db4b43c:
    # Line 464
    li	$t0,17
    # Line 465
    li	$a6,2
    # Line 466
    b	.L0db4b1bc
    # Line 465
    sw	$a6,4($sp)
.L0db4b44c:
    # Line 468
    li	$t0,7
    # Line 469
    li	$at,3
    # Line 470
    b	.L0db4b1bc
    # Line 469
    sw	$at,4($sp)
.L0db4b45c:
    # Line 472
    li	$t0,39
    # Line 473
    li	$v0,4
    b	.L0db4b1bc
    sw	$v0,4($sp)
.L0db4b46c:
    # Line 514
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$s5,16($sp)
    ldc1	$f20,8($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db4b484:
    # Line 480
    li	$v1,6408
    bnel	$a1,$v1,.L0db4b218
    sd	$s2,40($sp)
    sd	$s2,40($sp)
.L0db4b494:
    # Line 500
    b	.L0db4b214
    # Line 499
    li	$a7,63
.L0db4b49c:
    # Line 480
    bnel	$a1,$a6,.L0db4b218
    sd	$s2,40($sp)
    b	.L0db4b494
    sd	$s2,40($sp)
.end __glResetArray

# Function: __glim_GetHistogramEXT
# Declared: Line 561 (Source lines: 563-652)
# Address: 0x0db4b4ac - 0x0db4b8cc (Size: 1056 bytes, Frame: 240)
.globl __glim_GetHistogramEXT
.ent __glim_GetHistogramEXT
__glim_GetHistogramEXT:
    # Line 563
    addiu	$sp,$sp,-624
    sd	$a4,520($sp)
    sd	$s0,544($sp)
    move	$s0,$a2
    sd	$a1,512($sp)
    sd	$s1,528($sp)
    sd	$gp,536($sp)
    lui	$at,0xb
    addiu	$at,$at,12780
    # Line 566
    lw	$a5,__glBeginMode
    lw	$t1,__glCurrentContext
    # Line 563
    addu	$gp,$t9,$at
    # Line 566
    beqz	$a5,.L0db4b538
    move	$s1,$t1
    sd	$ra,552($sp)
    sd	$a3,504($sp)
    li	$v0,2
    beq	$a5,$v0,.L0db4b51c
    sd	$a0,560($sp)
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,536($sp)
    ld	$ra,552($sp)
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b51c:
    lw	$t9,11856($s1)
    jalr	$t9
    move	$a0,$t1
    sw	$zero,__glBeginMode
    ld	$a0,560($sp)
    ld	$a3,504($sp)
    ld	$ra,552($sp)
.L0db4b538:
    li	$v1,0x8024
    beq	$a0,$v1,.L0db4b56c
    # Line 571
    sltiu	$t0,$s0,6407
    # Line 570
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,552($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,536($sp)
    # Line 571
    ld	$ra,552($sp)
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b56c:
    bnez	$t0,.L0db4b67c
    # Line 574
    sltiu	$at,$s0,6408
    beqz	$at,.L0db4b6e8
.L0db4b578:
    # Line 588
    sltiu	$v0,$a3,5126
.L0db4b57c:
    bnez	$v0,.L0db4b6a0
    # Line 590
    sltiu	$v1,$a3,5127
    beqz	$v1,.L0db4b730
    li	$a0,0x8034
.L0db4b58c:
    # Line 624
    lw	$a5,1156($s1)
.L0db4b590:
    beqz	$a5,.L0db4b7b0
    sd	$a3,504($sp)
    # Line 632
    move	$a0,$s1
    lw	$a4,1188($s1)
    li	$a3,1
    # lw $t9, -28740($gp) # &__glInitMemGet
    lw	$a2,1160($s1)
    sd	$ra,552($sp)
    jal	__glInitMemGet
    addiu	$a1,$sp,0
    # Line 633
    move	$a0,$s1
    ld	$a7,520($sp)
    ld	$a6,504($sp)
    move	$a5,$s0
    move	$a4,$zero
    # lw $t9, -28732($gp) # &__glInitMemPack
    li	$a3,1
    lw	$a2,1160($s1)
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 636
    addiu	$a1,$sp,0
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s1
    # Line 634
    li	$a2,5125
    # Line 636
    jal	__glInitUnpacker
    # Line 634
    sw	$a2,4($sp)
    # Line 637
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 646
    move	$a2,$zero
    addiu	$a1,$sp,0
    move	$a0,$s1
    # Line 641
    sb	$zero,428($sp)
    # Line 639
    sb	$zero,425($sp)
    # Line 640
    li	$a3,1
    # Line 646
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    # Line 643
    sb	$a3,430($sp)
    # Line 642
    sb	$a3,429($sp)
    # Line 646
    jal	__glGenericPickCopyImage
    # Line 640
    sb	$a3,424($sp)
    ld	$t0,512($sp)
    # Line 646
    beqz	$t0,.L0db4b668
    ld	$ra,552($sp)
    # Line 649
    mtc1	$zero,$f18
    li	$a5,5125
    lw	$a4,1160($s1)
    move	$a3,$zero
    # lw $t9, -26776($gp) # &__glResetArray
    lw	$a2,1156($s1)
    move	$a1,$s0
    bal __glResetArray
    lw	$a0,1188($s1)
    ld	$ra,552($sp)
.L0db4b668:
    ld	$gp,536($sp)
    # Line 652
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b67c:
    # Line 574
    sltiu	$at,$s0,6405
    bnez	$at,.L0db4b6cc
    sltiu	$v0,$s0,6406
    bnez	$v0,.L0db4b578
    li	$v1,6406
    bne	$s0,$v1,.L0db4b78c
    # Line 586
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b57c
    # Line 588
    sltiu	$v0,$a3,5126
.L0db4b6a0:
    # Line 590
    sltiu	$t0,$a3,5123
    bnez	$t0,.L0db4b70c
    sltiu	$at,$a3,5124
    bnez	$at,.L0db4b58c
    sltiu	$v0,$a3,5125
    bnez	$v0,.L0db4b848
    sltiu	$v1,$a3,5126
    beqz	$v1,.L0db4b7d4
    # Line 622
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b590
    # Line 624
    lw	$a5,1156($s1)
.L0db4b6cc:
    # Line 574
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0db4b77c
    sltiu	$at,$s0,6405
    beqz	$at,.L0db4b78c
    # Line 586
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b57c
    # Line 588
    sltiu	$v0,$a3,5126
.L0db4b6e8:
    # Line 574
    sltiu	$v0,$s0,6410
    bnez	$v0,.L0db4b7f8
    sltiu	$v1,$s0,6411
    bnez	$v1,.L0db4b578
    li	$t0,0x8000
    beq	$s0,$t0,.L0db4b57c
    # Line 588
    sltiu	$v0,$a3,5126
    b	.L0db4b788
    sd	$ra,552($sp)
.L0db4b70c:
    # Line 590
    sltiu	$at,$a3,5121
    bnez	$at,.L0db4b7c4
    sltiu	$v0,$a3,5122
    bnez	$v0,.L0db4b58c
    li	$v1,5122
    bne	$a3,$v1,.L0db4b7d4
    # Line 622
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b590
    # Line 624
    lw	$a5,1156($s1)
.L0db4b730:
    # Line 590
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0db4b814
    sltu	$at,$a0,$a3
    bnez	$at,.L0db4b898
    # Line 612
    li	$v0,6408
.L0db4b744:
    beq	$s0,$v0,.L0db4b58c
    li	$v1,0x8000
    beql	$s0,$v1,.L0db4b590
    # Line 624
    lw	$a5,1156($s1)
    # Line 617
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,552($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,536($sp)
    # Line 618
    ld	$ra,552($sp)
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b77c:
    # Line 574
    li	$t0,6403
    beq	$s0,$t0,.L0db4b57c
    # Line 588
    sltiu	$v0,$a3,5126
.L0db4b788:
    # Line 586
    # lw $t9, -27320($gp) # &__glSetError
.L0db4b78c:
    sd	$ra,552($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,536($sp)
    # Line 587
    ld	$ra,552($sp)
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b7b0:
    ld	$gp,536($sp)
    # Line 629
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b7c4:
    # Line 590
    li	$at,5120
    beql	$a3,$at,.L0db4b590
    # Line 624
    lw	$a5,1156($s1)
.L0db4b7d0:
    # Line 622
    # lw $t9, -27320($gp) # &__glSetError
.L0db4b7d4:
    sd	$ra,552($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,536($sp)
    # Line 623
    ld	$ra,552($sp)
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b7f8:
    # Line 574
    sltiu	$v0,$s0,6409
    bnez	$v0,.L0db4b834
    sltiu	$v1,$s0,6410
    beqz	$v1,.L0db4b78c
    # Line 586
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b57c
    # Line 588
    sltiu	$v0,$a3,5126
.L0db4b814:
    # Line 590
    li	$a0,0x8033
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0db4b85c
    sltu	$at,$a0,$a3
    bnez	$at,.L0db4b7d4
    # Line 622
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b744
    # Line 612
    li	$v0,6408
.L0db4b834:
    # Line 574
    li	$v0,6408
    bne	$s0,$v0,.L0db4b78c
    # Line 586
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b57c
    # Line 588
    sltiu	$v0,$a3,5126
.L0db4b848:
    # Line 590
    li	$v1,5124
    bne	$a3,$v1,.L0db4b7d4
    # Line 622
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b590
    # Line 624
    lw	$a5,1156($s1)
.L0db4b85c:
    # Line 590
    li	$t0,0x8032
    bne	$a3,$t0,.L0db4b7d0
    # Line 600
    li	$at,6407
    beql	$s0,$at,.L0db4b590
    # Line 624
    lw	$a5,1156($s1)
    # Line 604
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,552($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,536($sp)
    # Line 605
    ld	$ra,552($sp)
    ld	$s0,544($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4b898:
    # Line 590
    li	$a0,0x8036
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0db4b8b8
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0db4b7d4
    # Line 622
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b744
    # Line 612
    li	$v0,6408
.L0db4b8b8:
    # Line 590
    li	$t0,0x8035
    bne	$a3,$t0,.L0db4b7d4
    # Line 622
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4b744
    # Line 612
    li	$v0,6408
.end __glim_GetHistogramEXT

# Function: __glGetHistogramParameters
# Declared: Line 654 (Source lines: 656-713)
# Address: 0x0db4b8cc - 0x0db4ba70 (Size: 420 bytes, Frame: 208)
.globl __glGetHistogramParameters
.ent __glGetHistogramParameters
__glGetHistogramParameters:
    # Line 659
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 656
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a3
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$gp,24($sp)
    # Line 659
    lw	$at,__glBeginMode
    # Line 656
    lui	$v1,0xb
    addiu	$v1,$v1,11724
    # Line 659
    beq	$at,$v0,.L0db4ba4c
    # Line 656
    addu	$gp,$t9,$v1
    # Line 661
    li	$a4,0x8024
    beq	$a0,$a4,.L0db4b9a0
    li	$at,0x8025
    beq	$a0,$at,.L0db4b95c
    # Line 669
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,40($sp)
.L0db4b924:
    # Line 671
    ld	$a0,16($sp)
    lui	$a4,0xffff
    ori	$a4,$a4,0x7fda
    addu	$a0,$a0,$a4
    la	$a4,sub_0dbf0000
    sltiu	$v0,$a0,8
    sll	$a0,$a0,0x2
    addiu	$a4,$a4,-2120
    beqz	$v0,.L0db4b968
    addu	$a0,$a0,$a4
    lw	$at,%lo(jtbl_0dbef7b8)($a0)
    # Line 696
    lw	$v1,0($sp)
    # Line 671
    jr	$at
    # Line 693
    lw	$v0,0($sp)
.L0db4b95c:
    # Line 666
    addiu	$v0,$a5,1200
    # Line 667
    b	.L0db4b924
    # Line 666
    sw	$v0,0($sp)
.L0db4b968:
    # Line 699
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,40($sp)
.L0db4b97c:
    # Line 703
    li	$v1,5124
    beq	$s0,$v1,.L0db4ba40
    # Line 705
    lw	$a4,4($sp)
    # Line 703
    li	$a4,5126
    beq	$s0,$a4,.L0db4b9ac
.L0db4b990:
    ld	$gp,24($sp)
    # Line 713
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db4b9a0:
    # Line 663
    addiu	$at,$a5,1156
    # Line 664
    b	.L0db4b924
    # Line 663
    sw	$at,0($sp)
.L0db4b9ac:
    # Line 708
    ld	$v0,8($sp)
    lw	$v1,4($sp)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0db4b990
    swc1	$f0,0($v0)
.L0db4b9c8:
    # Line 675
    lw	$a4,0($sp)
    lw	$a4,4($a4)
    # Line 676
    b	.L0db4b97c
    # Line 675
    sw	$a4,4($sp)
.L0db4b9d8:
    # Line 678
    lw	$at,0($sp)
    lw	$at,28($at)
    # Line 679
    b	.L0db4b97c
    # Line 678
    sw	$at,4($sp)
.L0db4b9e8:
    # Line 681
    lw	$v0,0($sp)
    lw	$v0,8($v0)
    # Line 682
    b	.L0db4b97c
    # Line 681
    sw	$v0,4($sp)
.L0db4b9f8:
    # Line 684
    lw	$v1,0($sp)
    lw	$v1,12($v1)
    # Line 685
    b	.L0db4b97c
    # Line 684
    sw	$v1,4($sp)
.L0db4ba08:
    # Line 687
    lw	$a4,0($sp)
    lw	$a4,16($a4)
    # Line 688
    b	.L0db4b97c
    # Line 687
    sw	$a4,4($sp)
.L0db4ba18:
    # Line 690
    lw	$at,0($sp)
    lw	$at,20($at)
    # Line 691
    b	.L0db4b97c
    # Line 690
    sw	$at,4($sp)
.L0db4ba28:
    # Line 693
    lw	$v0,24($v0)
    # Line 694
    b	.L0db4b97c
    # Line 693
    sw	$v0,4($sp)
.L0db4ba34:
    # Line 696
    lbu	$v1,36($v1)
    # Line 697
    b	.L0db4b97c
    # Line 696
    sw	$v1,4($sp)
.L0db4ba40:
    # Line 705
    ld	$at,8($sp)
    # Line 706
    b	.L0db4b990
    # Line 705
    sw	$a4,0($at)
.L0db4ba4c:
    # Line 659
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glGetHistogramParameters

# Function: __glim_GetHistogramParameterivEXT
# Declared: Line 715 (Source lines: 717-719)
# Address: 0x0db4ba70 - 0x0db4baa4 (Size: 52 bytes, Frame: 48)
.globl __glim_GetHistogramParameterivEXT
.ent __glim_GetHistogramParameterivEXT
__glim_GetHistogramParameterivEXT:
    # Line 717
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xb
    addiu	$at,$at,11304
    addu	$gp,$t9,$at
    # Line 718
    # lw $t9, -26768($gp) # &__glGetHistogramParameters
    sd	$ra,0($sp)
    bal __glGetHistogramParameters
    li	$a3,5124
    # Line 719
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetHistogramParameterivEXT

# Function: __glim_GetHistogramParameterfvEXT
# Declared: Line 721 (Source lines: 723-725)
# Address: 0x0db4baa4 - 0x0db4bad8 (Size: 52 bytes, Frame: 48)
.globl __glim_GetHistogramParameterfvEXT
.ent __glim_GetHistogramParameterfvEXT
__glim_GetHistogramParameterfvEXT:
    # Line 723
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xb
    addiu	$at,$at,11252
    addu	$gp,$t9,$at
    # Line 724
    # lw $t9, -26768($gp) # &__glGetHistogramParameters
    sd	$ra,0($sp)
    bal __glGetHistogramParameters
    li	$a3,5126
    # Line 725
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetHistogramParameterfvEXT

# Function: __glProcessMinmaxArguments
# Declared: Line 727 (Source lines: 728-781)
# Address: 0x0db4bad8 - 0x0db4bdf4 (Size: 796 bytes, Frame: 32)
.globl __glProcessMinmaxArguments
.ent __glProcessMinmaxArguments
__glProcessMinmaxArguments:
    # Line 728
    li	$at,0x802e
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xb
    addiu	$v0,$v0,11200
    beq	$a0,$at,.L0db4bb18
    addu	$gp,$t9,$v0
    # Line 733
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 734
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4bb18:
    # Line 735
    li	$a2,0x8046
    sltu	$v1,$a1,$a2
    bnez	$v1,.L0db4bb7c
    # Line 737
    sltu	$a0,$a2,$a1
    beqz	$a0,.L0db4bbdc
    li	$a2,0x8054
    sltu	$at,$a1,$a2
    bnez	$at,.L0db4bc24
    sltu	$v0,$a2,$a1
    beqz	$v0,.L0db4bbdc
    li	$a2,0x8058
    sltu	$v1,$a1,$a2
    bnez	$v1,.L0db4bcec
    sltu	$a0,$a2,$a1
    beqz	$a0,.L0db4bbdc
    li	$a2,0x805a
    sltu	$at,$a1,$a2
    bnez	$at,.L0db4bdb8
    sltu	$v0,$a2,$a1
    beqz	$v0,.L0db4bbdc
    li	$v1,0x805b
    beq	$a1,$v1,.L0db4bbe0
    # Line 781
    move	$v0,$zero
    b	.L0db4bc78
    sd	$ra,8($sp)
.L0db4bb7c:
    # Line 737
    li	$a2,0x803d
    sltu	$a0,$a1,$a2
    bnez	$a0,.L0db4bbec
    sltu	$at,$a2,$a1
    beqz	$at,.L0db4bbdc
    li	$a2,0x8042
    sltu	$v0,$a1,$a2
    bnez	$v0,.L0db4bc9c
    sltu	$v1,$a2,$a1
    beqz	$v1,.L0db4bbdc
    li	$a2,0x8044
    sltu	$a0,$a1,$a2
    bnez	$a0,.L0db4bd68
    sltu	$at,$a2,$a1
    beqz	$at,.L0db4bbdc
    li	$v0,0x8045
    bne	$a1,$v0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bbcc:
    # Line 737
    sltiu	$v1,$a1,6407
    bnez	$v1,.L0db4bda4
    sltiu	$a0,$a1,6408
    beqz	$a0,.L0db4bc78
.L0db4bbdc:
    # Line 781
    move	$v0,$zero
.L0db4bbe0:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4bbec:
    # Line 737
    sltiu	$at,$a1,6410
    bnez	$at,.L0db4bc60
    sltiu	$v0,$a1,6411
    bnez	$v0,.L0db4bbdc
    li	$a2,0x803b
    sltu	$v1,$a1,$a2
    bnez	$v1,.L0db4bd14
    sltu	$a0,$a2,$a1
    beqz	$a0,.L0db4bbdc
    li	$at,0x803c
    bne	$a1,$at,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bc24:
    # Line 737
    li	$a2,0x8050
    sltu	$v0,$a1,$a2
    bnez	$v0,.L0db4bcc4
    sltu	$v1,$a2,$a1
    beqz	$v1,.L0db4bbdc
    li	$a2,0x8052
    sltu	$a0,$a1,$a2
    bnez	$a0,.L0db4bd7c
    sltu	$at,$a2,$a1
    beqz	$at,.L0db4bbdc
    li	$v0,0x8053
    bne	$a1,$v0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bc60:
    # Line 737
    sltiu	$v1,$a1,6408
    bnez	$v1,.L0db4bbcc
    sltiu	$a0,$a1,6409
    bnez	$a0,.L0db4bbdc
    li	$at,6409
    beq	$a1,$at,.L0db4bbdc
.L0db4bc78:
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db4bc7c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 779
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4bc9c:
    # Line 737
    li	$a2,0x8040
    sltu	$v0,$a1,$a2
    bnez	$v0,.L0db4bd28
    sltu	$v1,$a2,$a1
    beqz	$v1,.L0db4bbdc
    li	$a0,0x8041
    bne	$a1,$a0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bcc4:
    # Line 737
    li	$a2,0x804e
    sltu	$at,$a1,$a2
    bnez	$at,.L0db4bd48
    sltu	$v0,$a2,$a1
    beqz	$v0,.L0db4bbdc
    li	$v1,0x804f
    bne	$a1,$v1,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bcec:
    # Line 737
    li	$a2,0x8056
    sltu	$a0,$a1,$a2
    bnez	$a0,.L0db4bd90
    sltu	$at,$a2,$a1
    beqz	$at,.L0db4bbdc
    li	$v0,0x8057
    bne	$a1,$v0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bd14:
    # Line 737
    li	$v1,0x8000
    bne	$a1,$v1,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bd28:
    # Line 737
    li	$a2,0x803f
    sltu	$a0,$a1,$a2
    bnez	$a0,.L0db4bdcc
    sltu	$at,$a2,$a1
    bnez	$at,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bd48:
    # Line 737
    li	$a2,0x8048
    sltu	$v0,$a1,$a2
    bnez	$v0,.L0db4bde0
    sltu	$v1,$a2,$a1
    bnez	$v1,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bd68:
    # Line 737
    li	$a0,0x8043
    bne	$a1,$a0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bd7c:
    # Line 737
    li	$at,0x8051
    bne	$a1,$at,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bd90:
    # Line 737
    li	$v0,0x8055
    bne	$a1,$v0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bda4:
    # Line 737
    li	$v1,6406
    bne	$a1,$v1,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bdb8:
    # Line 737
    li	$a0,0x8059
    bne	$a1,$a0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bdcc:
    # Line 737
    li	$at,0x803e
    bne	$a1,$at,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.L0db4bde0:
    # Line 737
    li	$v0,0x8047
    bne	$a1,$v0,.L0db4bc7c
    # Line 778
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db4bbe0
    # Line 781
    move	$v0,$zero
.end __glProcessMinmaxArguments

# Function: __glResetMinmax
# Declared: Line 786 (Source lines: 787-825)
# Address: 0x0db4bdf4 - 0x0db4bf2c (Size: 312 bytes, Frame: 32)
.globl __glResetMinmax
.ent __glResetMinmax
__glResetMinmax:
    # Line 793
    li	$v0,6406
    # Line 787
    addiu	$sp,$sp,-32
    # Line 793
    lw	$a7,0($sp)
    lw	$a3,1284($a0)
    # Line 787
    lui	$v1,0xb
    addiu	$v1,$v1,10404
    # Line 793
    beq	$a3,$v0,.L0db4befc
    # Line 787
    addu	$at,$t9,$v1
    # Line 793
    li	$a1,6409
    beq	$a3,$a1,.L0db4befc
    li	$a2,6410
    beq	$a3,$a2,.L0db4bf08
    li	$v0,6407
    beq	$a3,$v0,.L0db4bf14
    li	$v1,6408
    beq	$a3,$v1,.L0db4bf20
    lw	$a6,4($sp)
.L0db4be38:
    # Line 814
    move	$a5,$a0
    lwc1	$f4,_lit_7f7fffff
    sll	$a4,$a6,0x2
    blez	$a6,.L0db4be90
    addu	$a4,$a4,$a0
    andi	$a3,$a6,0x3
    beqz	$a3,.L0db4be68
    move	$t0,$a6
.L0db4be58:
    # Line 817
    addiu	$a5,$a5,4
    addi	$a3,$a3,-1
    bnez	$a3,.L0db4be58
    # Line 818
    swc1	$f4,1240($a5)
.L0db4be68:
    sra	$v0,$t0,0x2
    beqz	$v0,.L0db4be90
    move	$t1,$a5
    move	$a3,$t1
.L0db4be78:
    swc1	$f4,1256($a3)
    swc1	$f4,1252($a3)
    swc1	$f4,1248($a3)
    # Line 817
    addiu	$a3,$a3,16
    bne	$a3,$a4,.L0db4be78
    # Line 818
    swc1	$f4,1228($a3)
.L0db4be90:
    # Line 822
    sll	$a3,$a7,0x2
    subu	$t1,$a7,$a6
    slt	$v1,$a6,$a7
    beqz	$v1,.L0db4bef4
    move	$t0,$a6
    addu	$a3,$a3,$a0
    lwc1	$f4,_lit_ff7fffff
    sll	$a5,$t0,0x2
    andi	$a4,$t1,0x3
    beqz	$a4,.L0db4becc
    addu	$a5,$a5,$a0
.L0db4bebc:
    addiu	$a5,$a5,4
    addi	$a4,$a4,-1
    bnez	$a4,.L0db4bebc
    # Line 823
    swc1	$f4,1240($a5)
.L0db4becc:
    sra	$v0,$t1,0x2
    beqz	$v0,.L0db4bef4
    move	$a4,$a5
    move	$a0,$a4
.L0db4bedc:
    swc1	$f4,1256($a0)
    swc1	$f4,1252($a0)
    swc1	$f4,1248($a0)
    # Line 822
    addiu	$a0,$a0,16
    bne	$a0,$a3,.L0db4bedc
    # Line 823
    swc1	$f4,1228($a0)
.L0db4bef4:
    # Line 825
    jr	$ra
    addiu	$sp,$sp,32
.L0db4befc:
    # Line 796
    li	$a6,1
    # Line 798
    b	.L0db4be38
    # Line 797
    li	$a7,2
.L0db4bf08:
    # Line 800
    li	$a6,2
    # Line 802
    b	.L0db4be38
    # Line 801
    li	$a7,4
.L0db4bf14:
    # Line 804
    li	$a6,3
    # Line 806
    b	.L0db4be38
    # Line 805
    li	$a7,6
.L0db4bf20:
    # Line 808
    li	$a6,4
    b	.L0db4be38
    # Line 809
    li	$a7,8
.end __glResetMinmax

# Function: __glim_MinmaxEXT
# Declared: Line 831 (Source lines: 832-857)
# Address: 0x0db4bf2c - 0x0db4c010 (Size: 228 bytes, Frame: 240)
.globl __glim_MinmaxEXT
.ent __glim_MinmaxEXT
__glim_MinmaxEXT:
    # Line 836
    lw	$a4,__glCurrentContext
    li	$a5,1
    # Line 832
    addiu	$sp,$sp,-112
    sd	$gp,56($sp)
    # Line 836
    lw	$at,__glBeginMode
    # Line 832
    lui	$v0,0xb
    addiu	$v0,$v0,10092
    # Line 836
    beq	$at,$a5,.L0db4bfb0
    # Line 832
    addu	$gp,$t9,$v0
    sd	$ra,64($sp)
    sd	$a1,32($sp)
    sd	$a4,40($sp)
    # Line 836
    li	$v1,0x802e
    beq	$a0,$v1,.L0db4bf84
    sd	$a2,48($sp)
    # Line 839
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 840
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db4bf84:
    # Line 843
    addiu	$a3,$sp,24
    # lw $t9, -26800($gp) # &__glProcessHistogramArguments
    addiu	$a2,$sp,0
    ld	$a1,32($sp)
    bal __glProcessHistogramArguments
    li	$a0,2
    beqz	$v0,.L0db4bfd0
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    # Line 845
    jr	$ra
    addiu	$sp,$sp,112
.L0db4bfb0:
    # Line 836
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db4bfd0:
    li	$a4,1
    ld	$a2,40($sp)
    # Line 851
    ld	$a5,32($sp)
    # Line 856
    # lw $t9, -26756($gp) # &__glResetMinmax
    # Line 853
    ld	$a3,48($sp)
    # Line 851
    sw	$a5,1280($a2)
    # Line 856
    move	$a0,$a2
    # Line 852
    lw	$a1,24($sp)
    # Line 854
    sb	$a4,1276($a2)
    # Line 853
    sb	$a3,1288($a2)
    # Line 856
    bal __glResetMinmax
    # Line 852
    sw	$a1,1284($a2)
    # Line 857
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_MinmaxEXT

# Function: __glim_ResetMinmaxEXT
# Declared: Line 859 (Source lines: 860-868)
# Address: 0x0db4c010 - 0x0db4c094 (Size: 132 bytes, Frame: 32)
.globl __glim_ResetMinmaxEXT
.ent __glim_ResetMinmaxEXT
__glim_ResetMinmaxEXT:
    # Line 860
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xb
    addiu	$v1,$v1,9864
    beq	$at,$v0,.L0db4c074
    addu	$gp,$t9,$v1
    # Line 861
    li	$a1,0x802e
    beq	$a0,$a1,.L0db4c058
    sd	$ra,8($sp)
    # Line 864
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 865
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4c058:
    # Line 867
    # lw $t9, -26756($gp) # &__glResetMinmax
    bal __glResetMinmax
    lw	$a0,__glCurrentContext
    # Line 868
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4c074:
    # Line 861
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_ResetMinmaxEXT

# Function: __glim_GetMinmaxEXT
# Declared: Line 870 (Source lines: 872-918)
# Address: 0x0db4c094 - 0x0db4c284 (Size: 496 bytes, Frame: 240)
.globl __glim_GetMinmaxEXT
.ent __glim_GetMinmaxEXT
__glim_GetMinmaxEXT:
    # Line 872
    addiu	$sp,$sp,-624
    sd	$a4,544($sp)
    sd	$a3,528($sp)
    sd	$a2,520($sp)
    sd	$a1,536($sp)
    sd	$gp,552($sp)
    lui	$at,0xb
    addiu	$at,$at,9732
    # Line 875
    lw	$a5,__glBeginMode
    lw	$v0,__glCurrentContext
    # Line 872
    addu	$gp,$t9,$at
    # Line 875
    beqz	$a5,.L0db4c114
    sd	$v0,512($sp)
    sd	$ra,560($sp)
    li	$v1,2
    beq	$a5,$v1,.L0db4c0f4
    sd	$a0,568($sp)
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,560($sp)
    ld	$gp,552($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4c0f4:
    ld	$t9,512($sp)
    move	$a0,$t9
    lw	$t9,11856($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a0,568($sp)
    ld	$ra,560($sp)
.L0db4c114:
    li	$at,0x802e
    beq	$a0,$at,.L0db4c13c
    sd	$ra,560($sp)
    # Line 879
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 880
    ld	$ra,560($sp)
    ld	$gp,552($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4c13c:
    # Line 883
    # lw $t9, -26784($gp) # &__glCheckGetArguments
    ld	$a0,520($sp)
    bal __glCheckGetArguments
    ld	$a1,528($sp)
    beqz	$v0,.L0db4c160
    ld	$ra,560($sp)
    ld	$gp,552($sp)
    # Line 884
    jr	$ra
    addiu	$sp,$sp,624
.L0db4c160:
    ld	$v0,512($sp)
    lbu	$v0,1276($v0)
    beqz	$v0,.L0db4c278
    # Line 892
    li	$a3,1
    li	$a2,2
    ld	$a5,512($sp)
    addiu	$a1,$sp,0
    # lw $t9, -28740($gp) # &__glInitMemGet
    lw	$a4,1284($a5)
    move	$a0,$a5
    addiu	$a5,$a5,1244
    jal	__glInitMemGet
    sd	$a5,504($sp)
    ld	$a0,512($sp)
    # Line 893
    ld	$a7,544($sp)
    ld	$a6,528($sp)
    ld	$a5,520($sp)
    move	$a4,$zero
    # lw $t9, -28732($gp) # &__glInitMemPack
    li	$a3,1
    li	$a2,2
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 896
    addiu	$a1,$sp,0
    # lw $t9, -28576($gp) # &__glInitUnpacker
    ld	$a0,512($sp)
    # Line 894
    li	$a6,5126
    # Line 896
    jal	__glInitUnpacker
    # Line 894
    sw	$a6,4($sp)
    # Line 897
    # lw $t9, -29076($gp) # &__glInitPacker
    ld	$a0,512($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 905
    move	$a2,$zero
    addiu	$a1,$sp,0
    ld	$a0,512($sp)
    # Line 901
    sb	$zero,428($sp)
    # Line 899
    sb	$zero,425($sp)
    # Line 905
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    # Line 900
    li	$a7,1
    # Line 902
    sb	$a7,430($sp)
    # Line 905
    jal	__glGenericPickCopyImage
    # Line 900
    sb	$a7,424($sp)
    ld	$t0,536($sp)
    # Line 905
    beqz	$t0,.L0db4c26c
    ld	$ra,560($sp)
    # Line 909
    lwc1	$f18,_lit_7f7fffff
    li	$a5,5126
    li	$a4,1
    move	$a3,$zero
    ld	$a2,504($sp)
    # lw $t9, -26776($gp) # &__glResetArray
    ld	$a0,512($sp)
    ld	$a1,520($sp)
    bal __glResetArray
    lw	$a0,1284($a0)
    # Line 913
    lwc1	$f18,_lit_ff7fffff
    li	$a5,5126
    li	$a4,2
    li	$a3,1
    ld	$a2,504($sp)
    # lw $t9, -26776($gp) # &__glResetArray
    ld	$a0,512($sp)
    ld	$a1,520($sp)
    bal __glResetArray
    lw	$a0,1284($a0)
    ld	$ra,560($sp)
.L0db4c26c:
    ld	$gp,552($sp)
    # Line 918
    jr	$ra
    addiu	$sp,$sp,624
.L0db4c278:
    ld	$gp,552($sp)
    # Line 889
    jr	$ra
    addiu	$sp,$sp,624
.end __glim_GetMinmaxEXT

# Function: __glGetMinmaxParameters
# Declared: Line 920 (Source lines: 922-959)
# Address: 0x0db4c284 - 0x0db4c364 (Size: 224 bytes, Frame: 48)
.globl __glGetMinmaxParameters
.ent __glGetMinmaxParameters
__glGetMinmaxParameters:
    # Line 925
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 922
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 925
    lw	$at,__glBeginMode
    # Line 922
    lui	$v1,0xb
    addiu	$v1,$v1,9236
    # Line 925
    beq	$at,$v0,.L0db4c33c
    # Line 922
    addu	$gp,$t9,$v1
    # Line 925
    li	$a4,0x802e
    beq	$a0,$a4,.L0db4c2d4
    # Line 936
    li	$at,0x802f
    # Line 932
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 933
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4c2d4:
    # Line 936
    beq	$a1,$at,.L0db4c320
    li	$v0,0x8030
    beq	$a1,$v0,.L0db4c300
    # Line 944
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 945
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4c300:
    # Line 941
    lbu	$a0,1288($a5)
.L0db4c304:
    # Line 948
    li	$v1,5124
    beq	$a3,$v1,.L0db4c35c
    li	$a4,5126
    beq	$a3,$a4,.L0db4c328
.L0db4c314:
    ld	$gp,0($sp)
    # Line 959
    jr	$ra
    addiu	$sp,$sp,48
.L0db4c320:
    # Line 939
    b	.L0db4c304
    # Line 938
    lw	$a0,1280($a5)
.L0db4c328:
    # Line 953
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0db4c314
    swc1	$f0,0($a2)
.L0db4c33c:
    # Line 925
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4c35c:
    # Line 951
    b	.L0db4c314
    # Line 950
    sw	$a0,0($a2)
.end __glGetMinmaxParameters

# Function: __glim_GetMinmaxParameterivEXT
# Declared: Line 962 (Source lines: 964-966)
# Address: 0x0db4c364 - 0x0db4c398 (Size: 52 bytes, Frame: 48)
.globl __glim_GetMinmaxParameterivEXT
.ent __glim_GetMinmaxParameterivEXT
__glim_GetMinmaxParameterivEXT:
    # Line 964
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xb
    addiu	$at,$at,9012
    addu	$gp,$t9,$at
    # Line 965
    # lw $t9, -26740($gp) # &__glGetMinmaxParameters
    sd	$ra,0($sp)
    bal __glGetMinmaxParameters
    li	$a3,5124
    # Line 966
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetMinmaxParameterivEXT

# Function: __glim_GetMinmaxParameterfvEXT
# Declared: Line 968 (Source lines: 970-972)
# Address: 0x0db4c398 - 0x0db4c3cc (Size: 52 bytes, Frame: 48)
.globl __glim_GetMinmaxParameterfvEXT
.ent __glim_GetMinmaxParameterfvEXT
__glim_GetMinmaxParameterfvEXT:
    # Line 970
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xb
    addiu	$at,$at,8960
    addu	$gp,$t9,$at
    # Line 971
    # lw $t9, -26740($gp) # &__glGetMinmaxParameters
    sd	$ra,0($sp)
    bal __glGetMinmaxParameters
    li	$a3,5126
    # Line 972
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetMinmaxParameterfvEXT

.late_rodata
jtbl_0dbef718:
    .word .L0db4b2cc
    .word .L0db4b2b8
    .word .L0db4b32c
    .word .L0db4b2cc
    .word .L0db4b348
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b290
    .word .L0db4b2b8
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b32c
    .word .L0db4b2a4
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b310
    .word .L0db4b2fc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b2cc
    .word .L0db4b280
jtbl_0dbef7b8:
    .word .L0db4b9c8
    .word .L0db4b9d8
    .word .L0db4b9e8
    .word .L0db4b9f8
    .word .L0db4ba08
    .word .L0db4ba18
    .word .L0db4ba28
    .word .L0db4ba34

.rdata
_lit_7f7fffff:
    .word 0x7f7fffff
_lit_ff7fffff:
    .word 0xff7fffff

