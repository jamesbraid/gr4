# Source: ../MGRAS/mgras_pick.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_pick.c
# Total Functions: 49

.text

# Function: __glMgrGetAccum
# Declared: Line 106 (Source lines: 106-115)
# Address: 0x0daf66c8 - 0x0daf672c (Size: 100 bytes, Frame: 192)
.globl __glMgrGetAccum
.ent __glMgrGetAccum
__glMgrGetAccum:
    # Line 110
    li	$a0,2944
    # Line 106
    addiu	$sp,$sp,-64
    # Line 110
    addiu	$a1,$sp,0
    sd	$gp,32($sp)
    # Line 106
    lui	$at,0x10
    addiu	$at,$at,32720
    addu	$gp,$t9,$at
    # Line 110
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    sd	$s8,24($sp)
    sd	$ra,16($sp)
    jal	__glMgrim_GetFloatv
    # Line 108
    lw	$s8,__glCurrentContext
    # Line 111
    lwc1	$f3,0($sp)
    swc1	$f3,1552($s8)
    # Line 112
    lwc1	$f2,4($sp)
    swc1	$f2,1556($s8)
    # Line 113
    lwc1	$f1,8($sp)
    swc1	$f1,1560($s8)
    # Line 114
    lwc1	$f0,12($sp)
    ld	$gp,32($sp)
    # Line 115
    ld	$ra,16($sp)
    # Line 114
    swc1	$f0,1564($s8)
    # Line 115
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrGetAccum

# Function: __glMgrGetColorBuffer
# Declared: Line 119 (Source lines: 119-161)
# Address: 0x0daf672c - 0x0daf694c (Size: 544 bytes, Frame: 192)
.globl __glMgrGetColorBuffer
.ent __glMgrGetColorBuffer
__glMgrGetColorBuffer:
    # Line 124
    li	$a0,3008
    # Line 119
    addiu	$sp,$sp,-64
    sd	$gp,40($sp)
    lui	$at,0x10
    addiu	$at,$at,32620
    addu	$gp,$t9,$at
    # Line 124
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,32($sp)
    sd	$ra,24($sp)
    jal	__glMgrim_IsEnabled
    # Line 122
    lw	$s7,__glCurrentContext
    # Line 124
    beqz	$v0,.L0daf68fc
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x1
    sw	$v0,1696($s7)
.L0daf6768:
    # Line 125
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3042
    beqz	$v0,.L0daf690c
    lw	$a2,1696($s7)
    ori	$v1,$a2,0x2
    sw	$v1,1696($s7)
.L0daf6784:
    # Line 126
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3024
    beqz	$v0,.L0daf691c
    lw	$a2,1696($s7)
    ori	$a0,$a2,0x8
    sw	$a0,1696($s7)
.L0daf67a0:
    # Line 127
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3057
    beqz	$v0,.L0daf692c
    lw	$a2,1696($s7)
    ori	$at,$a2,0x4
    sw	$at,1696($s7)
.L0daf67bc:
    # Line 128
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3058
    beqz	$v0,.L0daf693c
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x800
    sw	$v0,1696($s7)
.L0daf67d8:
    # Line 130
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1720
    jal	__glMgrim_GetIntegerv
    li	$a0,3009
    # Line 132
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,1724
    jal	__glMgrim_GetFloatv
    li	$a0,3010
    # Line 135
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1728
    jal	__glMgrim_GetIntegerv
    li	$a0,3041
    # Line 137
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1732
    jal	__glMgrim_GetIntegerv
    li	$a0,3040
    # Line 139
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1736
    jal	__glMgrim_GetIntegerv
    li	$a0,0x8009
    # Line 142
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1756
    jal	__glMgrim_GetIntegerv
    li	$a0,3056
    # Line 145
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,0
    jal	__glMgrim_GetIntegerv
    li	$a0,3106
    # Line 146
    lw	$a2,0($sp)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,1760($s7)
    # Line 147
    lw	$a1,4($sp)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,1764($s7)
    # Line 148
    lw	$a0,8($sp)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,1768($s7)
    # Line 149
    lw	$v1,12($sp)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 151
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,1776
    li	$a0,3104
    jal	__glMgrim_GetFloatv
    # Line 149
    swc1	$f0,1772($s7)
    # Line 153
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$sp,16
    jal	__glMgrim_GetBooleanv
    li	$a0,3107
    # Line 154
    lbu	$a6,16($sp)
    sb	$a6,1784($s7)
    # Line 155
    lbu	$a5,17($sp)
    sb	$a5,1785($s7)
    # Line 156
    lbu	$a4,18($sp)
    # Line 159
    addiu	$a1,$s7,1780
    # Line 156
    sb	$a4,1786($s7)
    # Line 159
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 157
    lbu	$a3,19($sp)
    # Line 159
    li	$a0,3105
    jal	__glMgrim_GetIntegerv
    # Line 157
    sb	$a3,1787($s7)
    # Line 161
    ld	$ra,24($sp)
    ld	$gp,40($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf68fc:
    # Line 124
    li	$at,-2
    and	$at,$a2,$at
    b	.L0daf6768
    sw	$at,1696($s7)
.L0daf690c:
    # Line 125
    li	$v0,-3
    and	$v0,$a2,$v0
    b	.L0daf6784
    sw	$v0,1696($s7)
.L0daf691c:
    # Line 126
    li	$v1,-9
    and	$v1,$a2,$v1
    b	.L0daf67a0
    sw	$v1,1696($s7)
.L0daf692c:
    # Line 127
    li	$a0,-5
    and	$a0,$a2,$a0
    b	.L0daf67bc
    sw	$a0,1696($s7)
.L0daf693c:
    # Line 128
    li	$at,-2049
    and	$at,$a2,$at
    b	.L0daf67d8
    sw	$at,1696($s7)
.end __glMgrGetColorBuffer

# Function: __glMgrGetCurrentBuffer
# Declared: Line 165 (Source lines: 165-196)
# Address: 0x0daf694c - 0x0daf6a50 (Size: 260 bytes, Frame: 48)
.globl __glMgrGetCurrentBuffer
.ent __glMgrGetCurrentBuffer
__glMgrGetCurrentBuffer:
    # Line 168
    li	$a0,2823
    # Line 165
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,32076
    addu	$gp,$t9,$at
    # Line 168
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 166
    lw	$s0,__glCurrentContext
    sd	$ra,8($sp)
    # Line 168
    jal	__glMgrim_GetFloatv
    addiu	$a1,$s0,344
    # Line 176
    addiu	$s8,$s0,360
    # Line 174
    lw	$v1,3376($s0)
    mtc1	$v1,$f3
    # Line 173
    lw	$v0,3372($s0)
    # Line 174
    cvt.s.w	$f3,$f3
    # Line 173
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 174
    lwc1	$f1,348($s0)
    # Line 173
    lwc1	$f0,344($s0)
    # Line 174
    add.s	$f1,$f1,$f3
    # Line 176
    li	$a0,2820
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 173
    add.s	$f0,$f0,$f2
    # Line 176
    move	$a1,$s8
    # Line 174
    swc1	$f1,348($s0)
    # Line 176
    jal	__glMgrim_GetFloatv
    # Line 173
    swc1	$f0,344($s0)
    # Line 182
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s0,428
    li	$a0,2824
    jal	__glMgrim_GetBooleanv
    # Line 179
    sw	$s8,220($s0)
    # Line 185
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s0,429
    li	$a0,2883
    jal	__glMgrim_GetBooleanv
    ld	$s8,24($sp)
    # Line 187
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,408
    jal	__glMgrim_GetFloatv
    li	$a0,2816
    # Line 188
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 190
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,424
    jal	__glMgrim_GetFloatv
    li	$a0,2817
    # Line 193
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,184
    jal	__glMgrim_GetFloatv
    li	$a0,2818
    # Line 195
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,200
    jal	__glMgrim_GetFloatv
    li	$a0,2819
    # Line 196
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrGetCurrentBuffer

# Function: __glMgrGetDepthBuffer
# Declared: Line 200 (Source lines: 200-207)
# Address: 0x0daf6a50 - 0x0daf6ae0 (Size: 144 bytes, Frame: 48)
.globl __glMgrGetDepthBuffer
.ent __glMgrGetDepthBuffer
__glMgrGetDepthBuffer:
    # Line 203
    li	$a0,2929
    # Line 200
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,31816
    addu	$gp,$t9,$at
    # Line 203
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,8($sp)
    sd	$ra,0($sp)
    jal	__glMgrim_IsEnabled
    # Line 201
    lw	$s7,__glCurrentContext
    # Line 203
    beqz	$v0,.L0daf6ad0
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x10
    sw	$v0,1696($s7)
.L0daf6a8c:
    # Line 204
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1536
    jal	__glMgrim_GetIntegerv
    li	$a0,2932
    # Line 205
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s7,1540
    jal	__glMgrim_GetBooleanv
    li	$a0,2930
    # Line 206
    # lw $t9, -30884($gp) # &__glMgrim_GetDoublev
    addiu	$a1,$s7,1544
    jal	__glMgrim_GetDoublev
    li	$a0,2931
    # Line 207
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf6ad0:
    # Line 203
    li	$v1,-17
    and	$v1,$a2,$v1
    b	.L0daf6a8c
    sw	$v1,1696($s7)
.end __glMgrGetDepthBuffer

# Function: __glMgrGetEnables
# Declared: Line 211 (Source lines: 211-281)
# Address: 0x0daf6ae0 - 0x0daf765c (Size: 2940 bytes, Frame: 48)
.globl __glMgrGetEnables
.ent __glMgrGetEnables
__glMgrGetEnables:
    # Line 214
    li	$a0,3008
    # Line 211
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,31672
    addu	$gp,$t9,$at
    # Line 214
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,8($sp)
    sd	$ra,0($sp)
    jal	__glMgrim_IsEnabled
    # Line 212
    lw	$s7,__glCurrentContext
    # Line 214
    beqz	$v0,.L0daf7230
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x1
    sw	$v0,1696($s7)
.L0daf6b1c:
    # Line 215
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3456
    beqz	$v0,.L0daf7240
    lw	$a2,1696($s7)
    lui	$v1,0x80
    or	$v1,$a2,$v1
    sw	$v1,1696($s7)
.L0daf6b3c:
    # Line 216
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3042
    beqz	$v0,.L0daf7254
    lw	$a2,1696($s7)
    ori	$a0,$a2,0x2
    sw	$a0,1696($s7)
.L0daf6b58:
    # Line 217
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2903
    beqz	$v0,.L0daf7264
    lw	$a2,1696($s7)
    ori	$at,$a2,0x80
    sw	$at,1696($s7)
.L0daf6b74:
    # Line 218
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2884
    beqz	$v0,.L0daf7274
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x1000
    sw	$v0,1696($s7)
.L0daf6b90:
    # Line 219
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2929
    beqz	$v0,.L0daf7284
    lw	$a2,1696($s7)
    ori	$v1,$a2,0x10
    sw	$v1,1696($s7)
.L0daf6bac:
    # Line 220
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3024
    beqz	$v0,.L0daf7294
    lw	$a2,1696($s7)
    ori	$a0,$a2,0x8
    sw	$a0,1696($s7)
.L0daf6bc8:
    # Line 221
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2912
    beqz	$v0,.L0daf72a4
    lw	$a2,1696($s7)
    ori	$at,$a2,0x20
    sw	$at,1696($s7)
.L0daf6be4:
    # Line 222
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2848
    beqz	$v0,.L0daf72b4
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x200
    sw	$v0,1696($s7)
.L0daf6c00:
    # Line 223
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2852
    beqz	$v0,.L0daf72c4
    lw	$a2,1696($s7)
    ori	$v1,$a2,0x100
    sw	$v1,1696($s7)
.L0daf6c1c:
    # Line 224
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3057
    beqz	$v0,.L0daf72d4
    lw	$a2,1696($s7)
    ori	$a0,$a2,0x4
    sw	$a0,1696($s7)
.L0daf6c38:
    # Line 225
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3058
    beqz	$v0,.L0daf72e4
    lw	$a2,1696($s7)
    ori	$at,$a2,0x800
    sw	$at,1696($s7)
.L0daf6c54:
    # Line 226
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2977
    beqz	$v0,.L0daf72f4
    lw	$a2,1696($s7)
    lui	$v0,0x40
    or	$v0,$a2,$v0
    sw	$v0,1696($s7)
.L0daf6c74:
    # Line 227
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2832
    beqz	$v0,.L0daf7308
    lw	$a2,1696($s7)
    ori	$v1,$a2,0x400
    sw	$v1,1696($s7)
.L0daf6c90:
    # Line 228
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2881
    beqz	$v0,.L0daf7318
    lw	$a2,1696($s7)
    ori	$a0,$a2,0x800
    sw	$a0,1696($s7)
.L0daf6cac:
    # Line 229
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2882
    beqz	$v0,.L0daf7328
    lw	$a2,1696($s7)
    ori	$at,$a2,0x2000
    sw	$at,1696($s7)
.L0daf6cc8:
    # Line 230
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3089
    beqz	$v0,.L0daf7338
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x4000
    sw	$v0,1696($s7)
.L0daf6ce4:
    # Line 231
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2960
    beqz	$v0,.L0daf7348
    lw	$a2,1696($s7)
    ori	$v1,$a2,0x8000
    sw	$v1,1696($s7)
.L0daf6d00:
    # Line 232
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3552
    beqz	$v0,.L0daf735c
    lw	$a2,1696($s7)
    lui	$a0,0x1
    or	$a0,$a2,$a0
    sw	$a0,1696($s7)
.L0daf6d20:
    # Line 233
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3553
    beqz	$v0,.L0daf7370
    lw	$a2,1696($s7)
    lui	$at,0x2
    or	$at,$a2,$at
    sw	$at,1696($s7)
.L0daf6d40:
    # Line 234
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3168
    beqz	$v0,.L0daf7384
    lw	$a2,1696($s7)
    lui	$v0,0x4
    or	$v0,$a2,$v0
    sw	$v0,1696($s7)
.L0daf6d60:
    # Line 235
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3169
    beqz	$v0,.L0daf7398
    lw	$a2,1696($s7)
    lui	$v1,0x8
    or	$v1,$a2,$v1
    sw	$v1,1696($s7)
.L0daf6d80:
    # Line 236
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3170
    beqz	$v0,.L0daf73ac
    lw	$a2,1696($s7)
    lui	$a0,0x10
    or	$a0,$a2,$a0
    sw	$a0,1696($s7)
.L0daf6da0:
    # Line 237
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3171
    beqz	$v0,.L0daf73c0
    lw	$a2,1696($s7)
    lui	$at,0x20
    or	$at,$a2,$at
    sw	$at,1696($s7)
.L0daf6dc0:
    # Line 238
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8037
    beqz	$v0,.L0daf73d4
    lw	$a2,1696($s7)
    lui	$v0,0x100
    or	$v0,$a2,$v0
    sw	$v0,1696($s7)
.L0daf6de0:
    # Line 239
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12288
    beqz	$v0,.L0daf73e8
    lw	$a2,1708($s7)
    ori	$v1,$a2,0x1
    sw	$v1,1708($s7)
.L0daf6dfc:
    # Line 240
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12289
    beqz	$v0,.L0daf73f8
    lw	$a2,1708($s7)
    ori	$a0,$a2,0x2
    sw	$a0,1708($s7)
.L0daf6e18:
    # Line 241
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12290
    beqz	$v0,.L0daf7408
    lw	$a2,1708($s7)
    ori	$at,$a2,0x4
    sw	$at,1708($s7)
.L0daf6e34:
    # Line 242
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12291
    beqz	$v0,.L0daf7418
    lw	$a2,1708($s7)
    ori	$v0,$a2,0x8
    sw	$v0,1708($s7)
.L0daf6e50:
    # Line 243
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12292
    beqz	$v0,.L0daf7428
    lw	$a2,1708($s7)
    ori	$v1,$a2,0x10
    sw	$v1,1708($s7)
.L0daf6e6c:
    # Line 244
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12293
    beqz	$v0,.L0daf7438
    lw	$a2,1708($s7)
    ori	$a0,$a2,0x20
    sw	$a0,1708($s7)
.L0daf6e88:
    # Line 246
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2896
    beqz	$v0,.L0daf7448
    lw	$a2,1696($s7)
    ori	$at,$a2,0x40
    sw	$at,1696($s7)
.L0daf6ea4:
    # Line 247
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16384
    beqz	$v0,.L0daf7458
    lw	$a2,1704($s7)
    ori	$v0,$a2,0x1
    sw	$v0,1704($s7)
.L0daf6ec0:
    # Line 248
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16385
    beqz	$v0,.L0daf7468
    lw	$a2,1704($s7)
    ori	$v1,$a2,0x2
    sw	$v1,1704($s7)
.L0daf6edc:
    # Line 249
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16386
    beqz	$v0,.L0daf7478
    lw	$a2,1704($s7)
    ori	$a0,$a2,0x4
    sw	$a0,1704($s7)
.L0daf6ef8:
    # Line 250
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16387
    beqz	$v0,.L0daf7488
    lw	$a2,1704($s7)
    ori	$at,$a2,0x8
    sw	$at,1704($s7)
.L0daf6f14:
    # Line 251
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16388
    beqz	$v0,.L0daf7498
    lw	$a2,1704($s7)
    ori	$v0,$a2,0x10
    sw	$v0,1704($s7)
.L0daf6f30:
    # Line 252
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16389
    beqz	$v0,.L0daf74a8
    lw	$a2,1704($s7)
    ori	$v1,$a2,0x20
    sw	$v1,1704($s7)
.L0daf6f4c:
    # Line 253
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16390
    beqz	$v0,.L0daf74b8
    lw	$a2,1704($s7)
    ori	$a0,$a2,0x40
    sw	$a0,1704($s7)
.L0daf6f68:
    # Line 254
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16391
    beqz	$v0,.L0daf74c8
    lw	$a2,1704($s7)
    ori	$at,$a2,0x80
    sw	$at,1704($s7)
.L0daf6f84:
    # Line 256
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8024
    beqz	$v0,.L0daf74d8
    lw	$a2,1696($s7)
    lui	$v0,0x1000
    or	$v0,$a2,$v0
    sw	$v0,1696($s7)
.L0daf6fa4:
    # Line 257
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x802e
    beqz	$v0,.L0daf74ec
    lw	$a2,1696($s7)
    lui	$v1,0x2000
    or	$v1,$a2,$v1
    sw	$v1,1696($s7)
.L0daf6fc4:
    # Line 258
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8010
    beqz	$v0,.L0daf7500
    lw	$a2,1696($s7)
    lui	$a0,0x200
    or	$a0,$a2,$a0
    sw	$a0,1696($s7)
.L0daf6fe4:
    # Line 259
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8011
    beqz	$v0,.L0daf7514
    lw	$a2,1696($s7)
    lui	$at,0x400
    or	$at,$a2,$at
    sw	$at,1696($s7)
.L0daf7004:
    # Line 260
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8012
    beqz	$v0,.L0daf7528
    lw	$a2,1696($s7)
    lui	$v0,0x800
    or	$v0,$a2,$v0
    sw	$v0,1696($s7)
.L0daf7024:
    # Line 262
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3479
    beqz	$v0,.L0daf753c
    lw	$a2,1712($s7)
    ori	$v1,$a2,0x80
    sw	$v1,1712($s7)
.L0daf7040:
    # Line 263
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3480
    beqz	$v0,.L0daf754c
    lw	$a2,1712($s7)
    ori	$a0,$a2,0x100
    sw	$a0,1712($s7)
.L0daf705c:
    # Line 264
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3473
    beqz	$v0,.L0daf755c
    lw	$a2,1712($s7)
    ori	$at,$a2,0x2
    sw	$at,1712($s7)
.L0daf7078:
    # Line 265
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3472
    beqz	$v0,.L0daf756c
    lw	$a2,1712($s7)
    ori	$v0,$a2,0x1
    sw	$v0,1712($s7)
.L0daf7094:
    # Line 266
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3474
    beqz	$v0,.L0daf757c
    lw	$a2,1712($s7)
    ori	$v1,$a2,0x4
    sw	$v1,1712($s7)
.L0daf70b0:
    # Line 267
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3475
    beqz	$v0,.L0daf758c
    lw	$a2,1712($s7)
    ori	$a0,$a2,0x8
    sw	$a0,1712($s7)
.L0daf70cc:
    # Line 268
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3476
    beqz	$v0,.L0daf759c
    lw	$a2,1712($s7)
    ori	$at,$a2,0x10
    sw	$at,1712($s7)
.L0daf70e8:
    # Line 269
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3477
    beqz	$v0,.L0daf75ac
    lw	$a2,1712($s7)
    ori	$v0,$a2,0x20
    sw	$v0,1712($s7)
.L0daf7104:
    # Line 270
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3478
    beqz	$v0,.L0daf75bc
    lw	$a2,1712($s7)
    ori	$v1,$a2,0x40
    sw	$v1,1712($s7)
.L0daf7120:
    # Line 272
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3511
    beqz	$v0,.L0daf75cc
    lw	$a2,1716($s7)
    ori	$a0,$a2,0x80
    sw	$a0,1716($s7)
.L0daf713c:
    # Line 273
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3512
    beqz	$v0,.L0daf75dc
    lw	$a2,1716($s7)
    ori	$at,$a2,0x100
    sw	$at,1716($s7)
.L0daf7158:
    # Line 274
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3505
    beqz	$v0,.L0daf75ec
    lw	$a2,1716($s7)
    ori	$v0,$a2,0x2
    sw	$v0,1716($s7)
.L0daf7174:
    # Line 275
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3504
    beqz	$v0,.L0daf75fc
    lw	$a2,1716($s7)
    ori	$v1,$a2,0x1
    sw	$v1,1716($s7)
.L0daf7190:
    # Line 276
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3506
    beqz	$v0,.L0daf760c
    lw	$a2,1716($s7)
    ori	$a0,$a2,0x4
    sw	$a0,1716($s7)
.L0daf71ac:
    # Line 277
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3507
    beqz	$v0,.L0daf761c
    lw	$a2,1716($s7)
    ori	$at,$a2,0x8
    sw	$at,1716($s7)
.L0daf71c8:
    # Line 278
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3508
    beqz	$v0,.L0daf762c
    lw	$a2,1716($s7)
    ori	$v0,$a2,0x10
    sw	$v0,1716($s7)
.L0daf71e4:
    # Line 279
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3509
    beqz	$v0,.L0daf763c
    lw	$a2,1716($s7)
    ori	$v1,$a2,0x20
    sw	$v1,1716($s7)
.L0daf7200:
    # Line 280
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3510
    lw	$a2,1716($s7)
    beqz	$v0,.L0daf764c
    ld	$ra,0($sp)
    ori	$a0,$a2,0x40
    sw	$a0,1716($s7)
.L0daf7220:
    ld	$gp,16($sp)
    # Line 281
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf7230:
    # Line 214
    li	$at,-2
    and	$at,$a2,$at
    b	.L0daf6b1c
    sw	$at,1696($s7)
.L0daf7240:
    # Line 215
    lui	$v0,0x80
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    b	.L0daf6b3c
    sw	$v0,1696($s7)
.L0daf7254:
    # Line 216
    li	$v1,-3
    and	$v1,$a2,$v1
    b	.L0daf6b58
    sw	$v1,1696($s7)
.L0daf7264:
    # Line 217
    li	$a0,-129
    and	$a0,$a2,$a0
    b	.L0daf6b74
    sw	$a0,1696($s7)
.L0daf7274:
    # Line 218
    li	$at,-4097
    and	$at,$a2,$at
    b	.L0daf6b90
    sw	$at,1696($s7)
.L0daf7284:
    # Line 219
    li	$v0,-17
    and	$v0,$a2,$v0
    b	.L0daf6bac
    sw	$v0,1696($s7)
.L0daf7294:
    # Line 220
    li	$v1,-9
    and	$v1,$a2,$v1
    b	.L0daf6bc8
    sw	$v1,1696($s7)
.L0daf72a4:
    # Line 221
    li	$a0,-33
    and	$a0,$a2,$a0
    b	.L0daf6be4
    sw	$a0,1696($s7)
.L0daf72b4:
    # Line 222
    li	$at,-513
    and	$at,$a2,$at
    b	.L0daf6c00
    sw	$at,1696($s7)
.L0daf72c4:
    # Line 223
    li	$v0,-257
    and	$v0,$a2,$v0
    b	.L0daf6c1c
    sw	$v0,1696($s7)
.L0daf72d4:
    # Line 224
    li	$v1,-5
    and	$v1,$a2,$v1
    b	.L0daf6c38
    sw	$v1,1696($s7)
.L0daf72e4:
    # Line 225
    li	$a0,-2049
    and	$a0,$a2,$a0
    b	.L0daf6c54
    sw	$a0,1696($s7)
.L0daf72f4:
    # Line 226
    lui	$at,0x40
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0daf6c74
    sw	$at,1696($s7)
.L0daf7308:
    # Line 227
    li	$v0,-1025
    and	$v0,$a2,$v0
    b	.L0daf6c90
    sw	$v0,1696($s7)
.L0daf7318:
    # Line 228
    li	$v1,-2049
    and	$v1,$a2,$v1
    b	.L0daf6cac
    sw	$v1,1696($s7)
.L0daf7328:
    # Line 229
    li	$a0,-8193
    and	$a0,$a2,$a0
    b	.L0daf6cc8
    sw	$a0,1696($s7)
.L0daf7338:
    # Line 230
    li	$at,-16385
    and	$at,$a2,$at
    b	.L0daf6ce4
    sw	$at,1696($s7)
.L0daf7348:
    # Line 231
    li	$v0,0x8000
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    b	.L0daf6d00
    sw	$v0,1696($s7)
.L0daf735c:
    # Line 232
    lui	$v1,0x1
    nor	$v1,$v1,$zero
    and	$v1,$a2,$v1
    b	.L0daf6d20
    sw	$v1,1696($s7)
.L0daf7370:
    # Line 233
    lui	$a0,0x2
    nor	$a0,$a0,$zero
    and	$a0,$a2,$a0
    b	.L0daf6d40
    sw	$a0,1696($s7)
.L0daf7384:
    # Line 234
    lui	$at,0x4
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0daf6d60
    sw	$at,1696($s7)
.L0daf7398:
    # Line 235
    lui	$v0,0x8
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    b	.L0daf6d80
    sw	$v0,1696($s7)
.L0daf73ac:
    # Line 236
    lui	$v1,0x10
    nor	$v1,$v1,$zero
    and	$v1,$a2,$v1
    b	.L0daf6da0
    sw	$v1,1696($s7)
.L0daf73c0:
    # Line 237
    lui	$a0,0x20
    nor	$a0,$a0,$zero
    and	$a0,$a2,$a0
    b	.L0daf6dc0
    sw	$a0,1696($s7)
.L0daf73d4:
    # Line 238
    lui	$at,0x100
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0daf6de0
    sw	$at,1696($s7)
.L0daf73e8:
    # Line 239
    li	$v0,-2
    and	$v0,$a2,$v0
    b	.L0daf6dfc
    sw	$v0,1708($s7)
.L0daf73f8:
    # Line 240
    li	$v1,-3
    and	$v1,$a2,$v1
    b	.L0daf6e18
    sw	$v1,1708($s7)
.L0daf7408:
    # Line 241
    li	$a0,-5
    and	$a0,$a2,$a0
    b	.L0daf6e34
    sw	$a0,1708($s7)
.L0daf7418:
    # Line 242
    li	$at,-9
    and	$at,$a2,$at
    b	.L0daf6e50
    sw	$at,1708($s7)
.L0daf7428:
    # Line 243
    li	$v0,-17
    and	$v0,$a2,$v0
    b	.L0daf6e6c
    sw	$v0,1708($s7)
.L0daf7438:
    # Line 244
    li	$v1,-33
    and	$v1,$a2,$v1
    b	.L0daf6e88
    sw	$v1,1708($s7)
.L0daf7448:
    # Line 246
    li	$a0,-65
    and	$a0,$a2,$a0
    b	.L0daf6ea4
    sw	$a0,1696($s7)
.L0daf7458:
    # Line 247
    li	$at,-2
    and	$at,$a2,$at
    b	.L0daf6ec0
    sw	$at,1704($s7)
.L0daf7468:
    # Line 248
    li	$v0,-3
    and	$v0,$a2,$v0
    b	.L0daf6edc
    sw	$v0,1704($s7)
.L0daf7478:
    # Line 249
    li	$v1,-5
    and	$v1,$a2,$v1
    b	.L0daf6ef8
    sw	$v1,1704($s7)
.L0daf7488:
    # Line 250
    li	$a0,-9
    and	$a0,$a2,$a0
    b	.L0daf6f14
    sw	$a0,1704($s7)
.L0daf7498:
    # Line 251
    li	$at,-17
    and	$at,$a2,$at
    b	.L0daf6f30
    sw	$at,1704($s7)
.L0daf74a8:
    # Line 252
    li	$v0,-33
    and	$v0,$a2,$v0
    b	.L0daf6f4c
    sw	$v0,1704($s7)
.L0daf74b8:
    # Line 253
    li	$v1,-65
    and	$v1,$a2,$v1
    b	.L0daf6f68
    sw	$v1,1704($s7)
.L0daf74c8:
    # Line 254
    li	$a0,-129
    and	$a0,$a2,$a0
    b	.L0daf6f84
    sw	$a0,1704($s7)
.L0daf74d8:
    # Line 256
    lui	$at,0x1000
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0daf6fa4
    sw	$at,1696($s7)
.L0daf74ec:
    # Line 257
    lui	$v0,0x2000
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    b	.L0daf6fc4
    sw	$v0,1696($s7)
.L0daf7500:
    # Line 258
    lui	$v1,0x200
    nor	$v1,$v1,$zero
    and	$v1,$a2,$v1
    b	.L0daf6fe4
    sw	$v1,1696($s7)
.L0daf7514:
    # Line 259
    lui	$a0,0x400
    nor	$a0,$a0,$zero
    and	$a0,$a2,$a0
    b	.L0daf7004
    sw	$a0,1696($s7)
.L0daf7528:
    # Line 260
    lui	$at,0x800
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0daf7024
    sw	$at,1696($s7)
.L0daf753c:
    # Line 262
    li	$v0,-129
    and	$v0,$a2,$v0
    b	.L0daf7040
    sw	$v0,1712($s7)
.L0daf754c:
    # Line 263
    li	$v1,-257
    and	$v1,$a2,$v1
    b	.L0daf705c
    sw	$v1,1712($s7)
.L0daf755c:
    # Line 264
    li	$a0,-3
    and	$a0,$a2,$a0
    b	.L0daf7078
    sw	$a0,1712($s7)
.L0daf756c:
    # Line 265
    li	$at,-2
    and	$at,$a2,$at
    b	.L0daf7094
    sw	$at,1712($s7)
.L0daf757c:
    # Line 266
    li	$v0,-5
    and	$v0,$a2,$v0
    b	.L0daf70b0
    sw	$v0,1712($s7)
.L0daf758c:
    # Line 267
    li	$v1,-9
    and	$v1,$a2,$v1
    b	.L0daf70cc
    sw	$v1,1712($s7)
.L0daf759c:
    # Line 268
    li	$a0,-17
    and	$a0,$a2,$a0
    b	.L0daf70e8
    sw	$a0,1712($s7)
.L0daf75ac:
    # Line 269
    li	$at,-33
    and	$at,$a2,$at
    b	.L0daf7104
    sw	$at,1712($s7)
.L0daf75bc:
    # Line 270
    li	$v0,-65
    and	$v0,$a2,$v0
    b	.L0daf7120
    sw	$v0,1712($s7)
.L0daf75cc:
    # Line 272
    li	$v1,-129
    and	$v1,$a2,$v1
    b	.L0daf713c
    sw	$v1,1716($s7)
.L0daf75dc:
    # Line 273
    li	$a0,-257
    and	$a0,$a2,$a0
    b	.L0daf7158
    sw	$a0,1716($s7)
.L0daf75ec:
    # Line 274
    li	$at,-3
    and	$at,$a2,$at
    b	.L0daf7174
    sw	$at,1716($s7)
.L0daf75fc:
    # Line 275
    li	$v0,-2
    and	$v0,$a2,$v0
    b	.L0daf7190
    sw	$v0,1716($s7)
.L0daf760c:
    # Line 276
    li	$v1,-5
    and	$v1,$a2,$v1
    b	.L0daf71ac
    sw	$v1,1716($s7)
.L0daf761c:
    # Line 277
    li	$a0,-9
    and	$a0,$a2,$a0
    b	.L0daf71c8
    sw	$a0,1716($s7)
.L0daf762c:
    # Line 278
    li	$at,-17
    and	$at,$a2,$at
    b	.L0daf71e4
    sw	$at,1716($s7)
.L0daf763c:
    # Line 279
    li	$v0,-33
    and	$v0,$a2,$v0
    b	.L0daf7200
    sw	$v0,1716($s7)
.L0daf764c:
    # Line 280
    li	$v1,-65
    and	$v1,$a2,$v1
    b	.L0daf7220
    sw	$v1,1716($s7)
.end __glMgrGetEnables

# Function: __glMgrGetEval
# Declared: Line 285 (Source lines: 285-327)
# Address: 0x0daf765c - 0x0daf7a84 (Size: 1064 bytes, Frame: 192)
.globl __glMgrGetEval
.ent __glMgrGetEval
__glMgrGetEval:
    # Line 289
    li	$a0,3456
    # Line 285
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x10
    addiu	$at,$at,28732
    addu	$gp,$t9,$at
    # Line 289
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,32($sp)
    sd	$ra,16($sp)
    jal	__glMgrim_IsEnabled
    # Line 287
    lw	$s7,__glCurrentContext
    # Line 289
    beqz	$v0,.L0daf7950
    lw	$a2,1696($s7)
    lui	$v0,0x80
    or	$v0,$a2,$v0
    sw	$v0,1696($s7)
.L0daf769c:
    # Line 291
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3479
    beqz	$v0,.L0daf7964
    lw	$a2,1712($s7)
    ori	$v1,$a2,0x80
    sw	$v1,1712($s7)
.L0daf76b8:
    # Line 292
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3480
    beqz	$v0,.L0daf7974
    lw	$a2,1712($s7)
    ori	$a0,$a2,0x100
    sw	$a0,1712($s7)
.L0daf76d4:
    # Line 293
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3473
    beqz	$v0,.L0daf7984
    lw	$a2,1712($s7)
    ori	$at,$a2,0x2
    sw	$at,1712($s7)
.L0daf76f0:
    # Line 294
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3472
    beqz	$v0,.L0daf7994
    lw	$a2,1712($s7)
    ori	$v0,$a2,0x1
    sw	$v0,1712($s7)
.L0daf770c:
    # Line 295
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3474
    beqz	$v0,.L0daf79a4
    lw	$a2,1712($s7)
    ori	$v1,$a2,0x4
    sw	$v1,1712($s7)
.L0daf7728:
    # Line 296
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3475
    beqz	$v0,.L0daf79b4
    lw	$a2,1712($s7)
    ori	$a0,$a2,0x8
    sw	$a0,1712($s7)
.L0daf7744:
    # Line 297
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3476
    beqz	$v0,.L0daf79c4
    lw	$a2,1712($s7)
    ori	$at,$a2,0x10
    sw	$at,1712($s7)
.L0daf7760:
    # Line 298
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3477
    beqz	$v0,.L0daf79d4
    lw	$a2,1712($s7)
    ori	$v0,$a2,0x20
    sw	$v0,1712($s7)
.L0daf777c:
    # Line 299
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3478
    beqz	$v0,.L0daf79e4
    lw	$a2,1712($s7)
    ori	$v1,$a2,0x40
    sw	$v1,1712($s7)
.L0daf7798:
    # Line 301
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3511
    beqz	$v0,.L0daf79f4
    lw	$a2,1716($s7)
    ori	$a0,$a2,0x80
    sw	$a0,1716($s7)
.L0daf77b4:
    # Line 302
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3512
    beqz	$v0,.L0daf7a04
    lw	$a2,1716($s7)
    ori	$at,$a2,0x100
    sw	$at,1716($s7)
.L0daf77d0:
    # Line 303
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3505
    beqz	$v0,.L0daf7a14
    lw	$a2,1716($s7)
    ori	$v0,$a2,0x2
    sw	$v0,1716($s7)
.L0daf77ec:
    # Line 304
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3504
    beqz	$v0,.L0daf7a24
    lw	$a2,1716($s7)
    ori	$v1,$a2,0x1
    sw	$v1,1716($s7)
.L0daf7808:
    # Line 305
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3506
    beqz	$v0,.L0daf7a34
    lw	$a2,1716($s7)
    ori	$a0,$a2,0x4
    sw	$a0,1716($s7)
.L0daf7824:
    # Line 306
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3507
    beqz	$v0,.L0daf7a44
    lw	$a2,1716($s7)
    ori	$at,$a2,0x8
    sw	$at,1716($s7)
.L0daf7840:
    # Line 307
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3508
    beqz	$v0,.L0daf7a54
    lw	$a2,1716($s7)
    ori	$v0,$a2,0x10
    sw	$v0,1716($s7)
.L0daf785c:
    # Line 308
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3509
    beqz	$v0,.L0daf7a64
    lw	$a2,1716($s7)
    ori	$v1,$a2,0x20
    sw	$v1,1716($s7)
.L0daf7878:
    # Line 309
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3510
    beqz	$v0,.L0daf7a74
    lw	$a2,1716($s7)
    ori	$a0,$a2,0x40
    sw	$a0,1716($s7)
.L0daf7894:
    # Line 311
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,0
    jal	__glMgrim_GetFloatv
    li	$a0,3536
    # Line 312
    lwc1	$f1,0($sp)
    # Line 315
    addiu	$a1,$sp,0
    # Line 312
    swc1	$f1,1824($s7)
    # Line 315
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 313
    lwc1	$f0,4($sp)
    # Line 315
    li	$a0,3537
    jal	__glMgrim_GetFloatv
    # Line 313
    swc1	$f0,1828($s7)
    # Line 316
    lwc1	$f2,0($sp)
    trunc.w.s	$f2,$f2
    # Line 318
    addiu	$a1,$sp,0
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 316
    mfc1	$a2,$f2
    # Line 318
    li	$a0,3538
    jal	__glMgrim_GetFloatv
    # Line 316
    sw	$a2,1836($s7)
    # Line 319
    lwc1	$f6,0($sp)
    swc1	$f6,1840($s7)
    # Line 320
    lwc1	$f5,4($sp)
    swc1	$f5,1844($s7)
    # Line 321
    lwc1	$f4,8($sp)
    # Line 324
    addiu	$a1,$sp,0
    # Line 321
    swc1	$f4,1856($s7)
    # Line 324
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 322
    lwc1	$f3,12($sp)
    # Line 324
    li	$a0,3539
    jal	__glMgrim_GetFloatv
    # Line 322
    swc1	$f3,1860($s7)
    # Line 325
    lwc1	$f1,0($sp)
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sw	$at,1852($s7)
    # Line 326
    lwc1	$f0,4($sp)
    trunc.w.s	$f0,$f0
    mfc1	$ra,$f0
    nop
    sw	$ra,1868($s7)
    # Line 327
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf7950:
    # Line 289
    lui	$v0,0x80
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    b	.L0daf769c
    sw	$v0,1696($s7)
.L0daf7964:
    # Line 291
    li	$v1,-129
    and	$v1,$a2,$v1
    b	.L0daf76b8
    sw	$v1,1712($s7)
.L0daf7974:
    # Line 292
    li	$a0,-257
    and	$a0,$a2,$a0
    b	.L0daf76d4
    sw	$a0,1712($s7)
.L0daf7984:
    # Line 293
    li	$at,-3
    and	$at,$a2,$at
    b	.L0daf76f0
    sw	$at,1712($s7)
.L0daf7994:
    # Line 294
    li	$v0,-2
    and	$v0,$a2,$v0
    b	.L0daf770c
    sw	$v0,1712($s7)
.L0daf79a4:
    # Line 295
    li	$v1,-5
    and	$v1,$a2,$v1
    b	.L0daf7728
    sw	$v1,1712($s7)
.L0daf79b4:
    # Line 296
    li	$a0,-9
    and	$a0,$a2,$a0
    b	.L0daf7744
    sw	$a0,1712($s7)
.L0daf79c4:
    # Line 297
    li	$at,-17
    and	$at,$a2,$at
    b	.L0daf7760
    sw	$at,1712($s7)
.L0daf79d4:
    # Line 298
    li	$v0,-33
    and	$v0,$a2,$v0
    b	.L0daf777c
    sw	$v0,1712($s7)
.L0daf79e4:
    # Line 299
    li	$v1,-65
    and	$v1,$a2,$v1
    b	.L0daf7798
    sw	$v1,1712($s7)
.L0daf79f4:
    # Line 301
    li	$a0,-129
    and	$a0,$a2,$a0
    b	.L0daf77b4
    sw	$a0,1716($s7)
.L0daf7a04:
    # Line 302
    li	$at,-257
    and	$at,$a2,$at
    b	.L0daf77d0
    sw	$at,1716($s7)
.L0daf7a14:
    # Line 303
    li	$v0,-3
    and	$v0,$a2,$v0
    b	.L0daf77ec
    sw	$v0,1716($s7)
.L0daf7a24:
    # Line 304
    li	$v1,-2
    and	$v1,$a2,$v1
    b	.L0daf7808
    sw	$v1,1716($s7)
.L0daf7a34:
    # Line 305
    li	$a0,-5
    and	$a0,$a2,$a0
    b	.L0daf7824
    sw	$a0,1716($s7)
.L0daf7a44:
    # Line 306
    li	$at,-9
    and	$at,$a2,$at
    b	.L0daf7840
    sw	$at,1716($s7)
.L0daf7a54:
    # Line 307
    li	$v0,-17
    and	$v0,$a2,$v0
    b	.L0daf785c
    sw	$v0,1716($s7)
.L0daf7a64:
    # Line 308
    li	$v1,-33
    and	$v1,$a2,$v1
    b	.L0daf7878
    sw	$v1,1716($s7)
.L0daf7a74:
    # Line 309
    li	$a0,-65
    and	$a0,$a2,$a0
    b	.L0daf7894
    sw	$a0,1716($s7)
.end __glMgrGetEval

# Function: __glMgrGetFog
# Declared: Line 331 (Source lines: 331-356)
# Address: 0x0daf7a84 - 0x0daf7b80 (Size: 252 bytes, Frame: 48)
.globl __glMgrGetFog
.ent __glMgrGetFog
__glMgrGetFog:
    # Line 334
    li	$a0,2912
    # Line 331
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,27668
    addu	$gp,$t9,$at
    # Line 334
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,8($sp)
    sd	$ra,0($sp)
    jal	__glMgrim_IsEnabled
    # Line 332
    lw	$s7,__glCurrentContext
    # Line 334
    beqz	$v0,.L0daf7b70
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x20
    sw	$v0,1696($s7)
.L0daf7ac0:
    # Line 335
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,1528
    jal	__glMgrim_GetFloatv
    li	$a0,2913
    # Line 336
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,1512
    jal	__glMgrim_GetFloatv
    li	$a0,2914
    # Line 337
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,1516
    jal	__glMgrim_GetFloatv
    li	$a0,2915
    # Line 338
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,1520
    jal	__glMgrim_GetFloatv
    li	$a0,2916
    # Line 339
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1492
    jal	__glMgrim_GetIntegerv
    li	$a0,2917
    # Line 340
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,1496
    jal	__glMgrim_GetFloatv
    li	$a0,2918
    lw	$v1,1492($s7)
    li	$a0,9729
    bne	$v1,$a0,.L0daf7b58
    ld	$ra,0($sp)
    lwc1	$f4,1520($s7)
    lwc1	$f5,1516($s7)
    c.eq.s	$f5,$f4
    nop
    bc1t	.L0daf7b68
    # Line 353
    mtc1	$zero,$f2
    # Line 347
    sub.s	$f1,$f4,$f5
    lwc1	$f0,3284($s7)
    div.s	$f0,$f0,$f1
    swc1	$f0,1524($s7)
.L0daf7b58:
    ld	$gp,16($sp)
    # Line 356
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf7b68:
    b	.L0daf7b58
    # Line 353
    swc1	$f2,1524($s7)
.L0daf7b70:
    # Line 334
    li	$at,-33
    and	$at,$a2,$at
    b	.L0daf7ac0
    sw	$at,1696($s7)
.end __glMgrGetFog

# Function: __glMgrGetLighting
# Declared: Line 360 (Source lines: 360-456)
# Address: 0x0daf7b80 - 0x0daf80d8 (Size: 1368 bytes, Frame: 160)
.globl __glMgrGetLighting
.ent __glMgrGetLighting
__glMgrGetLighting:
    # Line 368
    li	$a0,2903
    # Line 360
    addiu	$sp,$sp,-160
    sd	$gp,32($sp)
    lui	$at,0x10
    addiu	$at,$at,27416
    addu	$gp,$t9,$at
    # Line 368
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s1,24($sp)
    sd	$ra,16($sp)
    jal	__glMgrim_IsEnabled
    # Line 366
    lw	$s1,__glCurrentContext
    # Line 368
    beqz	$v0,.L0daf8038
    lw	$a0,1696($s1)
    ori	$v0,$a0,0x80
    sw	$v0,1696($s1)
.L0daf7bbc:
    # Line 369
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2896
    beqz	$v0,.L0daf8048
    lw	$a0,1696($s1)
    ori	$v1,$a0,0x40
    sw	$v1,1696($s1)
.L0daf7bd8:
    # Line 370
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16384
    beqz	$v0,.L0daf8058
    lw	$a0,1704($s1)
    ori	$a3,$a0,0x1
    sw	$a3,1704($s1)
.L0daf7bf4:
    # Line 371
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16385
    beqz	$v0,.L0daf8068
    lw	$a0,1704($s1)
    ori	$at,$a0,0x2
    sw	$at,1704($s1)
.L0daf7c10:
    # Line 372
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16386
    beqz	$v0,.L0daf8078
    lw	$a0,1704($s1)
    ori	$v0,$a0,0x4
    sw	$v0,1704($s1)
.L0daf7c2c:
    # Line 373
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16387
    beqz	$v0,.L0daf8088
    lw	$a0,1704($s1)
    ori	$v1,$a0,0x8
    sw	$v1,1704($s1)
.L0daf7c48:
    # Line 374
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16388
    beqz	$v0,.L0daf8098
    lw	$a0,1704($s1)
    ori	$a3,$a0,0x10
    sw	$a3,1704($s1)
.L0daf7c64:
    # Line 375
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16389
    beqz	$v0,.L0daf80a8
    lw	$a0,1704($s1)
    ori	$at,$a0,0x20
    sw	$at,1704($s1)
.L0daf7c80:
    # Line 376
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16390
    beqz	$v0,.L0daf80b8
    lw	$a0,1704($s1)
    ori	$v0,$a0,0x40
    sw	$v0,1704($s1)
.L0daf7c9c:
    # Line 377
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16391
    beqz	$v0,.L0daf80c8
    lw	$a0,1704($s1)
    ori	$v1,$a0,0x80
    sw	$v1,1704($s1)
.L0daf7cb8:
    # Line 379
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s1,1296
    jal	__glMgrim_GetIntegerv
    li	$a0,2901
    # Line 381
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s1,1300
    jal	__glMgrim_GetIntegerv
    li	$a0,2902
    # Line 383
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s1,1304
    jal	__glMgrim_GetIntegerv
    li	$a0,2900
    # Line 385
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s1,1324
    jal	__glMgrim_GetBooleanv
    li	$a0,2897
    # Line 387
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s1,1325
    jal	__glMgrim_GetBooleanv
    li	$a0,2898
    # Line 390
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s1,1308
    jal	__glMgrim_GetFloatv
    li	$a0,2899
    # Line 393
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1328
    li	$a1,4608
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 395
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1344
    li	$a1,4609
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 397
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1360
    li	$a1,4610
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 400
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1376
    li	$a1,5632
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 403
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1392
    li	$a1,5633
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 405
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$sp,0
    li	$a1,5635
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 406
    lwc1	$f2,0($sp)
    swc1	$f2,1396($s1)
    # Line 407
    lwc1	$f1,4($sp)
    # Line 410
    addiu	$a2,$s1,1408
    li	$a1,4608
    # Line 407
    swc1	$f1,1404($s1)
    # Line 410
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    # Line 408
    lwc1	$f0,8($sp)
    # Line 410
    li	$a0,1029
    jal	__glMgrim_GetMaterialfv
    # Line 408
    swc1	$f0,1400($s1)
    # Line 412
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1424
    li	$a1,4609
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 414
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1440
    li	$a1,4610
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 417
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1456
    li	$a1,5632
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 420
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s1,1472
    li	$a1,5633
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    sd	$s0,80($sp)
    sd	$s3,72($sp)
    # Line 422
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$sp,0
    li	$a1,5635
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    sd	$s2,128($sp)
    sd	$s6,120($sp)
    sd	$s4,112($sp)
    sd	$s5,104($sp)
    sd	$s7,96($sp)
    # Line 423
    lwc1	$f1,0($sp)
    sd	$s8,88($sp)
    # Line 429
    li	$s0,16384
    # Line 423
    swc1	$f1,1476($s1)
    # Line 428
    lw	$a0,28152($s1)
    # Line 424
    lwc1	$f0,4($sp)
    # Line 429
    lw	$a3,3328($s1)
    # Line 427
    lw	$s3,1488($s1)
    # Line 424
    swc1	$f0,1484($s1)
    # Line 429
    addiu	$a3,$a3,16384
    # Line 425
    lwc1	$f3,8($sp)
    # Line 429
    sltiu	$a3,$a3,16385
    bnez	$a3,.L0daf7ffc
    # Line 425
    swc1	$f3,1480($s1)
    # Line 429
    addiu	$s4,$a0,132
    addiu	$s2,$s3,80
    addiu	$s5,$s3,64
    addiu	$s6,$s3,96
    addiu	$s8,$s3,112
    addiu	$s7,$s3,108
    sd	$s7,64($sp)
    addiu	$s7,$s3,104
    sd	$s8,56($sp)
    addiu	$s8,$s3,100
    sd	$s6,40($sp)
    addiu	$s6,$s3,32
    sd	$s5,48($sp)
    addiu	$s5,$s3,16
.L0daf7eac:
    # Line 430
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    move	$a2,$s3
    jal	__glMgrim_GetLightfv
    li	$a1,4608
    # Line 431
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    move	$a2,$s5
    jal	__glMgrim_GetLightfv
    li	$a1,4609
    # Line 432
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    move	$a2,$s6
    jal	__glMgrim_GetLightfv
    li	$a1,4610
    # Line 434
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    ld	$a2,48($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4611
    # Line 435
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    move	$a2,$s2
    jal	__glMgrim_GetLightfv
    li	$a1,4612
    # Line 437
    lw	$t9,11976($s1)
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s2
    # Line 440
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    ld	$a2,40($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4613
    # Line 450
    addiu	$s3,$s3,116
    # Line 442
    move	$a0,$s0
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a2,$s8
    # Line 450
    addiu	$s8,$s8,116
    # Line 442
    jal	__glMgrim_GetLightfv
    li	$a1,4614
    # Line 450
    addiu	$s2,$s2,116
    # Line 444
    move	$a0,$s0
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a2,$s7
    # Line 450
    addiu	$s7,$s7,116
    # Line 444
    jal	__glMgrim_GetLightfv
    li	$a1,4615
    # Line 450
    addiu	$s6,$s6,116
    # Line 446
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    ld	$a2,64($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4616
    # Line 450
    addiu	$s5,$s5,116
    # Line 448
    ld	$a2,56($sp)
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s0
    # Line 429
    addiu	$s0,$s0,1
    # Line 448
    jal	__glMgrim_GetLightfv
    li	$a1,4617
    # Line 451
    addiu	$s4,$s4,224
    # Line 450
    ld	$v0,56($sp)
    ld	$a3,40($sp)
    ld	$v1,64($sp)
    addiu	$v0,$v0,116
    ld	$at,48($sp)
    addiu	$v1,$v1,116
    addiu	$a3,$a3,116
    addiu	$at,$at,116
    sd	$at,48($sp)
    # Line 429
    lw	$at,3328($s1)
    sd	$a3,40($sp)
    sd	$v1,64($sp)
    addiu	$at,$at,16384
    sltu	$at,$s0,$at
    bnez	$at,.L0daf7eac
    sd	$v0,56($sp)
    ld	$s8,88($sp)
    ld	$s7,96($sp)
    ld	$s5,104($sp)
    ld	$s4,112($sp)
    ld	$s6,120($sp)
    ld	$s2,128($sp)
.L0daf7ffc:
    # Line 455
    move	$a0,$s1
    # Line 454
    li	$v1,2
    sw	$v1,__glBeginMode
    ld	$s0,80($sp)
    lw	$v0,11828($s1)
    # Line 455
    # lw $t9, -26624($gp) # &__glValidateLighting
    ld	$s3,72($sp)
    # Line 454
    ori	$v0,$v0,0x20
    # Line 455
    jal	__glValidateLighting
    # Line 454
    sw	$v0,11828($s1)
    # Line 456
    ld	$ra,16($sp)
    ld	$gp,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daf8038:
    # Line 368
    li	$a3,-129
    and	$a3,$a0,$a3
    b	.L0daf7bbc
    sw	$a3,1696($s1)
.L0daf8048:
    # Line 369
    li	$at,-65
    and	$at,$a0,$at
    b	.L0daf7bd8
    sw	$at,1696($s1)
.L0daf8058:
    # Line 370
    li	$v0,-2
    and	$v0,$a0,$v0
    b	.L0daf7bf4
    sw	$v0,1704($s1)
.L0daf8068:
    # Line 371
    li	$v1,-3
    and	$v1,$a0,$v1
    b	.L0daf7c10
    sw	$v1,1704($s1)
.L0daf8078:
    # Line 372
    li	$a3,-5
    and	$a3,$a0,$a3
    b	.L0daf7c2c
    sw	$a3,1704($s1)
.L0daf8088:
    # Line 373
    li	$at,-9
    and	$at,$a0,$at
    b	.L0daf7c48
    sw	$at,1704($s1)
.L0daf8098:
    # Line 374
    li	$v0,-17
    and	$v0,$a0,$v0
    b	.L0daf7c64
    sw	$v0,1704($s1)
.L0daf80a8:
    # Line 375
    li	$v1,-33
    and	$v1,$a0,$v1
    b	.L0daf7c80
    sw	$v1,1704($s1)
.L0daf80b8:
    # Line 376
    li	$a3,-65
    and	$a3,$a0,$a3
    b	.L0daf7c9c
    sw	$a3,1704($s1)
.L0daf80c8:
    # Line 377
    li	$at,-129
    and	$at,$a0,$at
    b	.L0daf7cb8
    sw	$at,1704($s1)
.end __glMgrGetLighting

# Function: __glMgrGetLine
# Declared: Line 460 (Source lines: 460-477)
# Address: 0x0daf80d8 - 0x0daf81b0 (Size: 216 bytes, Frame: 48)
.globl __glMgrGetLine
.ent __glMgrGetLine
__glMgrGetLine:
    # Line 464
    li	$a0,2848
    # Line 460
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,26048
    addu	$gp,$t9,$at
    # Line 464
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,24($sp)
    sd	$ra,8($sp)
    jal	__glMgrim_IsEnabled
    # Line 462
    lw	$s7,__glCurrentContext
    # Line 464
    beqz	$v0,.L0daf8190
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x200
    sw	$v0,1696($s7)
.L0daf8114:
    # Line 465
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2852
    beqz	$v0,.L0daf81a0
    lw	$a2,1696($s7)
    ori	$v1,$a2,0x100
    sw	$v1,1696($s7)
.L0daf8130:
    # Line 466
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,444
    jal	__glMgrim_GetFloatv
    li	$a0,2849
    # Line 471
    # lw $t9, -27912($gp) # &__glim_LineWidth
    jal	__glim_LineWidth
    lwc1	$f12,444($s7)
    # Line 473
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,0
    jal	__glMgrim_GetIntegerv
    li	$a0,2853
    # Line 475
    addiu	$a1,$sp,0
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 474
    lw	$a2,0($sp)
    # Line 475
    li	$a0,2854
    jal	__glMgrim_GetIntegerv
    # Line 474
    sh	$a2,456($s7)
    # Line 476
    lw	$ra,0($sp)
    sh	$ra,458($s7)
    # Line 477
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf8190:
    # Line 464
    li	$at,-513
    and	$at,$a2,$at
    b	.L0daf8114
    sw	$at,1696($s7)
.L0daf81a0:
    # Line 465
    li	$v0,-257
    and	$v0,$a2,$v0
    b	.L0daf8130
    sw	$v0,1696($s7)
.end __glMgrGetLine

# Function: __glMgrGetPixel
# Declared: Line 481 (Source lines: 481-560)
# Address: 0x0daf81b0 - 0x0daf84f4 (Size: 836 bytes, Frame: 48)
.globl __glMgrGetPixel
.ent __glMgrGetPixel
__glMgrGetPixel:
    # Line 485
    li	$a0,3312
    # Line 481
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,25832
    addu	$gp,$t9,$at
    # Line 485
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    # Line 483
    lw	$s7,__glCurrentContext
    sd	$ra,0($sp)
    # Line 485
    jal	__glMgrim_GetBooleanv
    addiu	$a1,$s7,1108
    # Line 487
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s7,1109
    jal	__glMgrim_GetBooleanv
    li	$a0,3313
    # Line 489
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1112
    jal	__glMgrim_GetIntegerv
    li	$a0,3314
    # Line 491
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1116
    jal	__glMgrim_GetIntegerv
    li	$a0,3315
    # Line 493
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1120
    jal	__glMgrim_GetIntegerv
    li	$a0,3316
    # Line 495
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1124
    jal	__glMgrim_GetIntegerv
    li	$a0,3317
    # Line 498
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s7,1072
    jal	__glMgrim_GetBooleanv
    li	$a0,3328
    # Line 500
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s7,1073
    jal	__glMgrim_GetBooleanv
    li	$a0,3329
    # Line 502
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1076
    jal	__glMgrim_GetIntegerv
    li	$a0,3330
    # Line 504
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1080
    jal	__glMgrim_GetIntegerv
    li	$a0,3331
    # Line 506
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1084
    jal	__glMgrim_GetIntegerv
    li	$a0,3332
    # Line 508
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1088
    jal	__glMgrim_GetIntegerv
    li	$a0,3333
    # Line 511
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s7,736
    jal	__glMgrim_GetBooleanv
    li	$a0,3344
    # Line 513
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s7,737
    jal	__glMgrim_GetBooleanv
    li	$a0,3345
    # Line 515
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,728
    jal	__glMgrim_GetIntegerv
    li	$a0,3346
    # Line 517
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,732
    jal	__glMgrim_GetIntegerv
    li	$a0,3347
    # Line 519
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,616
    jal	__glMgrim_GetFloatv
    li	$a0,3348
    # Line 520
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,620
    jal	__glMgrim_GetFloatv
    li	$a0,3352
    # Line 522
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,624
    jal	__glMgrim_GetFloatv
    li	$a0,3354
    # Line 523
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,628
    jal	__glMgrim_GetFloatv
    li	$a0,3356
    # Line 525
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,632
    jal	__glMgrim_GetFloatv
    li	$a0,3358
    # Line 527
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,636
    jal	__glMgrim_GetFloatv
    li	$a0,3349
    # Line 528
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,640
    jal	__glMgrim_GetFloatv
    li	$a0,3353
    # Line 529
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,644
    jal	__glMgrim_GetFloatv
    li	$a0,3355
    # Line 530
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,648
    jal	__glMgrim_GetFloatv
    li	$a0,3357
    # Line 531
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,652
    jal	__glMgrim_GetFloatv
    li	$a0,3359
    # Line 532
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,720
    jal	__glMgrim_GetFloatv
    li	$a0,3350
    # Line 533
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,724
    jal	__glMgrim_GetFloatv
    li	$a0,3351
    # Line 536
    # lw $t9, -26844($gp) # &__glim_GetPixelMapuiv
    lw	$a1,960($s7)
    jal	__glim_GetPixelMapuiv
    li	$a0,3184
    # Line 537
    # lw $t9, -26844($gp) # &__glim_GetPixelMapuiv
    lw	$a1,972($s7)
    jal	__glim_GetPixelMapuiv
    li	$a0,3185
    # Line 538
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,984($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3186
    # Line 539
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,996($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3187
    # Line 540
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,1008($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3188
    # Line 541
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,1020($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3189
    # Line 542
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,1032($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3190
    # Line 543
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,1044($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3191
    # Line 544
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,1056($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3192
    # Line 545
    # lw $t9, -26848($gp) # &__glim_GetPixelMapfv
    lw	$a1,1068($s7)
    jal	__glim_GetPixelMapfv
    li	$a0,3193
    # Line 547
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,952
    jal	__glMgrim_GetIntegerv
    li	$a0,3248
    # Line 548
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,964
    jal	__glMgrim_GetIntegerv
    li	$a0,3249
    # Line 549
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,976
    jal	__glMgrim_GetIntegerv
    li	$a0,3250
    # Line 550
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,988
    jal	__glMgrim_GetIntegerv
    li	$a0,3251
    # Line 551
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1000
    jal	__glMgrim_GetIntegerv
    li	$a0,3252
    # Line 552
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1012
    jal	__glMgrim_GetIntegerv
    li	$a0,3253
    # Line 553
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1024
    jal	__glMgrim_GetIntegerv
    li	$a0,3254
    # Line 554
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1036
    jal	__glMgrim_GetIntegerv
    li	$a0,3255
    # Line 555
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1048
    jal	__glMgrim_GetIntegerv
    li	$a0,3256
    # Line 556
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1060
    jal	__glMgrim_GetIntegerv
    li	$a0,3257
    # Line 558
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1152
    jal	__glMgrim_GetIntegerv
    li	$a0,3074
    # Line 560
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrGetPixel

# Function: __glMgrGetPoint
# Declared: Line 564 (Source lines: 564-571)
# Address: 0x0daf84f4 - 0x0daf8570 (Size: 124 bytes, Frame: 48)
.globl __glMgrGetPoint
.ent __glMgrGetPoint
__glMgrGetPoint:
    # Line 567
    li	$a0,2832
    # Line 564
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,24996
    addu	$gp,$t9,$at
    # Line 567
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,8($sp)
    sd	$ra,0($sp)
    jal	__glMgrim_IsEnabled
    # Line 565
    lw	$s7,__glCurrentContext
    # Line 567
    beqz	$v0,.L0daf8560
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x400
    sw	$v0,1696($s7)
.L0daf8530:
    # Line 568
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,432
    jal	__glMgrim_GetFloatv
    li	$a0,2833
    # Line 570
    # lw $t9, -27884($gp) # &__glim_PointSize
    jal	__glim_PointSize
    lwc1	$f12,432($s7)
    # Line 571
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf8560:
    # Line 567
    li	$v1,-1025
    and	$v1,$a2,$v1
    b	.L0daf8530
    sw	$v1,1696($s7)
.end __glMgrGetPoint

# Function: __glMgrGetPolygon
# Declared: Line 575 (Source lines: 575-593)
# Address: 0x0daf8570 - 0x0daf8690 (Size: 288 bytes, Frame: 48)
.globl __glMgrGetPolygon
.ent __glMgrGetPolygon
__glMgrGetPolygon:
    # Line 579
    li	$a0,2885
    # Line 575
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x10
    addiu	$at,$at,24872
    addu	$gp,$t9,$at
    # Line 579
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 577
    lw	$s7,__glCurrentContext
    sd	$ra,8($sp)
    # Line 579
    jal	__glMgrim_GetIntegerv
    addiu	$a1,$s7,468
    # Line 581
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,472
    jal	__glMgrim_GetIntegerv
    li	$a0,2886
    # Line 583
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,0
    jal	__glMgrim_GetIntegerv
    li	$a0,2880
    # Line 584
    lw	$v1,0($sp)
    sw	$v1,460($s7)
    # Line 587
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 585
    lw	$v0,4($sp)
    # Line 587
    li	$a0,0x8037
    jal	__glMgrim_IsEnabled
    # Line 585
    sw	$v0,464($s7)
    # Line 587
    beqz	$v0,.L0daf865c
    lw	$a2,1696($s7)
    lui	$a0,0x100
    or	$a0,$a2,$a0
    sw	$a0,1696($s7)
.L0daf85f0:
    # Line 588
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10754
    beqz	$v0,.L0daf8670
    lw	$a2,1700($s7)
    ori	$at,$a2,0x400
    sw	$at,1700($s7)
.L0daf860c:
    # Line 589
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10753
    beqz	$v0,.L0daf8680
    lw	$a2,1700($s7)
    ori	$v0,$a2,0x200
    sw	$v0,1700($s7)
.L0daf8628:
    # Line 590
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,476
    jal	__glMgrim_GetFloatv
    li	$a0,0x8038
    # Line 592
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s7,480
    jal	__glMgrim_GetFloatv
    li	$a0,0x8039
    # Line 593
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf865c:
    # Line 587
    lui	$v1,0x100
    nor	$v1,$v1,$zero
    and	$v1,$a2,$v1
    b	.L0daf85f0
    sw	$v1,1696($s7)
.L0daf8670:
    # Line 588
    li	$a0,-1025
    and	$a0,$a2,$a0
    b	.L0daf860c
    sw	$a0,1700($s7)
.L0daf8680:
    # Line 589
    li	$at,-513
    and	$at,$a2,$at
    b	.L0daf8628
    sw	$at,1700($s7)
.end __glMgrGetPolygon

# Function: __glMgrGetScissor
# Declared: Line 597 (Source lines: 597-608)
# Address: 0x0daf8690 - 0x0daf8720 (Size: 144 bytes, Frame: 192)
.globl __glMgrGetScissor
.ent __glMgrGetScissor
__glMgrGetScissor:
    # Line 601
    li	$a0,3089
    # Line 597
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x10
    addiu	$at,$at,24584
    addu	$gp,$t9,$at
    # Line 601
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,32($sp)
    sd	$ra,16($sp)
    jal	__glMgrim_IsEnabled
    # Line 599
    lw	$s7,__glCurrentContext
    # Line 601
    beqz	$v0,.L0daf8710
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x4000
    sw	$v0,1696($s7)
.L0daf86cc:
    # Line 603
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,0
    jal	__glMgrim_GetIntegerv
    li	$a0,3088
    # Line 604
    lw	$ra,0($sp)
    sw	$ra,2412($s7)
    # Line 605
    lw	$a1,4($sp)
    sw	$a1,2416($s7)
    # Line 606
    lw	$a0,8($sp)
    sw	$a0,2420($s7)
    # Line 607
    lw	$v1,12($sp)
    ld	$gp,24($sp)
    # Line 608
    ld	$ra,16($sp)
    # Line 607
    sw	$v1,2424($s7)
    # Line 608
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf8710:
    # Line 601
    li	$at,-16385
    and	$at,$a2,$at
    b	.L0daf86cc
    sw	$at,1696($s7)
.end __glMgrGetScissor

# Function: __glMgrGetStencil
# Declared: Line 612 (Source lines: 612-633)
# Address: 0x0daf8720 - 0x0daf881c (Size: 252 bytes, Frame: 48)
.globl __glMgrGetStencil
.ent __glMgrGetStencil
__glMgrGetStencil:
    # Line 616
    li	$a0,2960
    # Line 612
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    lui	$at,0x10
    addiu	$at,$at,24440
    addu	$gp,$t9,$at
    # Line 616
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,16($sp)
    sd	$ra,8($sp)
    jal	__glMgrim_IsEnabled
    # Line 614
    lw	$s7,__glCurrentContext
    # Line 616
    beqz	$v0,.L0daf8808
    lw	$a2,1696($s7)
    ori	$v0,$a2,0x8000
    sw	$v0,1696($s7)
.L0daf875c:
    # Line 617
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1568
    jal	__glMgrim_GetIntegerv
    li	$a0,2962
    # Line 619
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1572
    jal	__glMgrim_GetIntegerv
    li	$a0,2961
    # Line 621
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,0
    jal	__glMgrim_GetIntegerv
    li	$a0,2967
    # Line 623
    addiu	$a1,$sp,0
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 622
    lw	$v1,0($sp)
    # Line 623
    li	$a0,2963
    jal	__glMgrim_GetIntegerv
    # Line 622
    sh	$v1,1574($s7)
    # Line 625
    addiu	$a1,$sp,0
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 624
    lw	$a2,0($sp)
    # Line 625
    li	$a0,2968
    jal	__glMgrim_GetIntegerv
    # Line 624
    sh	$a2,1576($s7)
    # Line 627
    addiu	$a1,$s7,1580
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 626
    lw	$a3,0($sp)
    # Line 627
    li	$a0,2964
    jal	__glMgrim_GetIntegerv
    # Line 626
    sh	$a3,1578($s7)
    # Line 629
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1584
    jal	__glMgrim_GetIntegerv
    li	$a0,2965
    # Line 631
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s7,1588
    jal	__glMgrim_GetIntegerv
    li	$a0,2966
    # Line 633
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf8808:
    # Line 616
    li	$at,0x8000
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0daf875c
    sw	$at,1696($s7)
.end __glMgrGetStencil

# Function: __glMgrGetTransform
# Declared: Line 637 (Source lines: 637-765)
# Address: 0x0daf881c - 0x0daf8d0c (Size: 1264 bytes, Frame: 240)
.globl __glMgrGetTransform
.ent __glMgrGetTransform
__glMgrGetTransform:
    # Line 646
    li	$a0,2977
    # Line 637
    addiu	$sp,$sp,-112
    sd	$s1,40($sp)
    sd	$gp,64($sp)
    lui	$t8,0x10
    addiu	$t8,$t8,24188
    sd	$s0,56($sp)
    # Line 641
    lw	$s0,__glCurrentContext
    # Line 637
    addu	$gp,$t9,$t8
    # Line 646
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 643
    lw	$s1,3332($s0)
    sd	$ra,48($sp)
    # Line 646
    jal	__glMgrim_IsEnabled
    # Line 643
    sll	$s1,$s1,0x4
    # Line 646
    beqz	$v0,.L0daf8c84
    lw	$a0,1696($s0)
    lui	$at,0x40
    or	$at,$a0,$at
    sw	$at,1696($s0)
.L0daf8868:
    # Line 647
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12288
    beqz	$v0,.L0daf8c98
    lw	$a0,1708($s0)
    ori	$v0,$a0,0x1
    sw	$v0,1708($s0)
.L0daf8884:
    # Line 648
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12289
    beqz	$v0,.L0daf8ca8
    lw	$a0,1708($s0)
    ori	$v1,$a0,0x2
    sw	$v1,1708($s0)
.L0daf88a0:
    # Line 649
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12290
    beqz	$v0,.L0daf8cb8
    lw	$a0,1708($s0)
    ori	$a2,$a0,0x4
    sw	$a2,1708($s0)
.L0daf88bc:
    # Line 650
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12291
    beqz	$v0,.L0daf8cc8
    lw	$a0,1708($s0)
    ori	$at,$a0,0x8
    sw	$at,1708($s0)
.L0daf88d8:
    # Line 651
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12292
    beqz	$v0,.L0daf8cd8
    lw	$a0,1708($s0)
    ori	$v0,$a0,0x10
    sw	$v0,1708($s0)
.L0daf88f4:
    # Line 652
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12293
    beqz	$v0,.L0daf8ce8
    lw	$a0,1708($s0)
    ori	$v1,$a0,0x20
    sw	$v1,1708($s0)
.L0daf8910:
    # Line 654
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1648
    jal	__glMgrim_GetIntegerv
    li	$a0,2976
    # Line 656
    lw	$t9,0($s0)
    sd	$s4,72($sp)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 659
    lw	$a2,3332($s0)
    sd	$s5,80($sp)
    move	$s4,$zero
    blez	$a2,.L0daf89cc
    # Line 656
    sw	$v0,1652($s0)
    # Line 659
    li	$s1,12288
    move	$s5,$zero
.L0daf8950:
    # Line 660
    # lw $t9, -30864($gp) # &__glMgrim_GetClipPlane
    move	$a0,$s1
    # Line 659
    addiu	$s4,$s4,1
    # Line 660
    jal	__glMgrim_GetClipPlane
    addiu	$a1,$sp,0
    # Line 661
    ldc1	$f3,0($sp)
    lw	$at,1652($s0)
    cvt.s.d	$f3,$f3
    addu	$at,$at,$s5
    swc1	$f3,0($at)
    # Line 662
    ldc1	$f2,8($sp)
    lw	$a2,1652($s0)
    cvt.s.d	$f2,$f2
    addu	$a2,$a2,$s5
    swc1	$f2,4($a2)
    # Line 663
    ldc1	$f1,16($sp)
    lw	$v1,1652($s0)
    cvt.s.d	$f1,$f1
    addu	$v1,$v1,$s5
    swc1	$f1,8($v1)
    # Line 664
    ldc1	$f0,24($sp)
    lw	$v0,1652($s0)
    cvt.s.d	$f0,$f0
    addu	$v0,$v0,$s5
    swc1	$f0,12($v0)
    # Line 659
    lw	$at,3332($s0)
    addiu	$s1,$s1,1
    slt	$at,$s4,$at
    bnez	$at,.L0daf8950
    addiu	$s5,$s5,16
    ld	$s5,80($sp)
.L0daf89cc:
    # Line 675
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    jal	__glMgrim_MatrixMode
    li	$a0,5888
    # Line 676
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,32
    jal	__glMgrim_GetIntegerv
    li	$a0,2979
    # Line 682
    li	$a0,2982
    # Line 677
    lw	$a3,32($sp)
    # Line 682
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 677
    lw	$a1,29708($s0)
    sll	$a2,$a3,0x4
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x4
    addu	$a1,$a1,$a2
    addiu	$a1,$a1,-272
    # Line 682
    jal	__glMgrim_GetFloatv
    # Line 677
    sw	$a1,29712($s0)
    # Line 684
    lw	$a6,29712($s0)
    sw	$zero,64($a6)
    # Line 685
    lw	$a5,29712($s0)
    li	$a4,1
    sb	$a4,268($a5)
    # Line 686
    lw	$t9,11924($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,29712($s0)
    # Line 689
    lw	$a7,29720($s0)
    lw	$t0,29712($s0)
    lw	$a7,264($a7)
    sw	$a7,264($t0)
    # Line 690
    lw	$t9,11956($s0)
    lw	$a1,29712($s0)
    lw	$a2,29720($s0)
    jalr	$t9
    addiu	$a0,$a1,176
    # Line 693
    lw	$t9,11932($s0)
    lw	$a1,29712($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,176
    # Line 699
    lw	$at,32($sp)
    li	$s4,1
    # Line 698
    lw	$s1,29712($s0)
    # Line 699
    slti	$at,$at,2
    bnez	$at,.L0daf8ab8
    # Line 698
    addiu	$s1,$s1,-272
    # Line 700
    # lw $t9, -31244($gp) # &__glMgrim_PopMatrix
.L0daf8a8c:
    jal	__glMgrim_PopMatrix
    # Line 699
    addiu	$s4,$s4,1
    # Line 701
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    move	$a1,$s1
    # Line 699
    addiu	$s1,$s1,-272
    # Line 701
    jal	__glMgrim_GetFloatv
    li	$a0,2982
    # Line 699
    lw	$v0,32($sp)
    slt	$v0,$s4,$v0
    bnez	$v0,.L0daf8a8c
    # Line 700
    nop	# was lw $t9, -31244($gp) # &__glMgrim_PopMatrix
.L0daf8ab8:
    # Line 707
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    jal	__glMgrim_MatrixMode
    li	$a0,5889
    # Line 708
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,32
    jal	__glMgrim_GetIntegerv
    li	$a0,2980
    # Line 714
    li	$a0,2983
    # Line 709
    lw	$a3,32($sp)
    # Line 714
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 709
    lw	$a1,29716($s0)
    sll	$a2,$a3,0x4
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x4
    addu	$a1,$a1,$a2
    addiu	$a1,$a1,-272
    # Line 714
    jal	__glMgrim_GetFloatv
    # Line 709
    sw	$a1,29720($s0)
    # Line 716
    lw	$a4,29720($s0)
    sw	$zero,64($a4)
    # Line 717
    lw	$t9,11924($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,29720($s0)
    # Line 718
    lw	$a0,29724($s0)
    addiu	$a0,$a0,1
    beqz	$a0,.L0daf8cf8
    sw	$a0,29724($s0)
    # Line 721
    lw	$a2,29720($s0)
    sw	$a0,264($a2)
    # Line 725
    lw	$a3,29720($s0)
.L0daf8b34:
    lw	$a4,29712($s0)
    lw	$a3,264($a3)
    sw	$a3,264($a4)
    # Line 726
    lw	$t9,11956($s0)
    lw	$a1,29712($s0)
    lw	$a2,29720($s0)
    jalr	$t9
    addiu	$a0,$a1,176
    # Line 729
    lw	$t9,11932($s0)
    lw	$a1,29712($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,176
    # Line 735
    lw	$at,32($sp)
    li	$s4,1
    # Line 734
    lw	$s1,29720($s0)
    # Line 735
    slti	$at,$at,2
    bnez	$at,.L0daf8bb0
    # Line 734
    addiu	$s1,$s1,-272
    # Line 736
    # lw $t9, -31244($gp) # &__glMgrim_PopMatrix
.L0daf8b84:
    jal	__glMgrim_PopMatrix
    # Line 735
    addiu	$s4,$s4,1
    # Line 737
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    move	$a1,$s1
    # Line 735
    addiu	$s1,$s1,-272
    # Line 737
    jal	__glMgrim_GetFloatv
    li	$a0,2983
    # Line 735
    lw	$v0,32($sp)
    slt	$v0,$s4,$v0
    bnez	$v0,.L0daf8b84
    # Line 736
    nop	# was lw $t9, -31244($gp) # &__glMgrim_PopMatrix
.L0daf8bb0:
    # Line 743
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    jal	__glMgrim_MatrixMode
    li	$a0,5890
    # Line 744
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,32
    jal	__glMgrim_GetIntegerv
    li	$a0,2981
    # Line 750
    li	$a0,2984
    # Line 745
    lw	$a3,32($sp)
    # Line 750
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 745
    lw	$a1,29728($s0)
    sll	$a2,$a3,0x4
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x4
    addu	$a1,$a1,$a2
    addiu	$a1,$a1,-272
    # Line 750
    jal	__glMgrim_GetFloatv
    # Line 745
    sw	$a1,29732($s0)
    # Line 752
    lw	$a4,29732($s0)
    sw	$zero,64($a4)
    # Line 753
    lw	$t9,11924($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,29732($s0)
    # Line 759
    li	$s4,1
    lw	$at,32($sp)
    # Line 758
    lw	$s1,29732($s0)
    ld	$s0,56($sp)
    # Line 759
    slti	$at,$at,2
    bnez	$at,.L0daf8c60
    # Line 758
    addiu	$s1,$s1,-272
    ld	$s0,56($sp)
    # Line 760
    # lw $t9, -31244($gp) # &__glMgrim_PopMatrix
.L0daf8c34:
    jal	__glMgrim_PopMatrix
    # Line 759
    addiu	$s4,$s4,1
    # Line 761
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    move	$a1,$s1
    # Line 759
    addiu	$s1,$s1,-272
    # Line 761
    jal	__glMgrim_GetFloatv
    li	$a0,2984
    # Line 759
    lw	$v0,32($sp)
    slt	$v0,$s4,$v0
    bnez	$v0,.L0daf8c34
    # Line 760
    nop	# was lw $t9, -31244($gp) # &__glMgrim_PopMatrix
.L0daf8c60:
    # Line 764
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    li	$a0,5888
    ld	$s1,40($sp)
    jal	__glMgrim_MatrixMode
    ld	$s4,72($sp)
    # Line 765
    ld	$ra,48($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daf8c84:
    # Line 646
    lui	$v1,0x40
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daf8868
    sw	$v1,1696($s0)
.L0daf8c98:
    # Line 647
    li	$a2,-2
    and	$a2,$a0,$a2
    b	.L0daf8884
    sw	$a2,1708($s0)
.L0daf8ca8:
    # Line 648
    li	$at,-3
    and	$at,$a0,$at
    b	.L0daf88a0
    sw	$at,1708($s0)
.L0daf8cb8:
    # Line 649
    li	$v0,-5
    and	$v0,$a0,$v0
    b	.L0daf88bc
    sw	$v0,1708($s0)
.L0daf8cc8:
    # Line 650
    li	$v1,-9
    and	$v1,$a0,$v1
    b	.L0daf88d8
    sw	$v1,1708($s0)
.L0daf8cd8:
    # Line 651
    li	$a2,-17
    and	$a2,$a0,$a2
    b	.L0daf88f4
    sw	$a2,1708($s0)
.L0daf8ce8:
    # Line 652
    li	$at,-33
    and	$at,$a0,$at
    b	.L0daf8910
    sw	$at,1708($s0)
.L0daf8cf8:
    # Line 719
    # lw $t9, -24232($gp) # &__glInvalidateSequenceNumbers
    jal	__glInvalidateSequenceNumbers
    move	$a0,$s0
    b	.L0daf8b34
    # Line 725
    lw	$a3,29720($s0)
.end __glMgrGetTransform

# Function: __glMgrGetViewport
# Declared: Line 769 (Source lines: 769-790)
# Address: 0x0daf8d0c - 0x0daf8dc8 (Size: 188 bytes, Frame: 192)
.globl __glMgrGetViewport
.ent __glMgrGetViewport
__glMgrGetViewport:
    # Line 774
    li	$a0,2978
    # Line 769
    addiu	$sp,$sp,-64
    # Line 774
    addiu	$a1,$sp,0
    sd	$gp,40($sp)
    # Line 769
    lui	$at,0x10
    addiu	$at,$at,22924
    addu	$gp,$t9,$at
    # Line 774
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    sd	$s0,24($sp)
    sd	$ra,32($sp)
    jal	__glMgrim_GetIntegerv
    # Line 772
    lw	$s0,__glCurrentContext
    # Line 775
    lw	$a1,0($sp)
    sw	$a1,1592($s0)
    # Line 776
    lw	$a0,4($sp)
    sw	$a0,1596($s0)
    # Line 777
    lw	$v1,8($sp)
    sw	$v1,1600($s0)
    # Line 780
    # lw $t9, -24164($gp) # &__glUpdateViewport
    # Line 778
    lw	$v0,12($sp)
    # Line 780
    move	$a0,$s0
    jal	__glUpdateViewport
    # Line 778
    sw	$v0,1604($s0)
    # Line 782
    lw	$t9,11984($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 784
    # lw $t9, -24160($gp) # &__glUpdateViewportTransform
    jal	__glUpdateViewportTransform
    move	$a0,$s0
    # Line 786
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,16
    jal	__glMgrim_GetFloatv
    li	$a0,2928
    # Line 787
    lwc1	$f1,16($sp)
    cvt.d.s	$f1,$f1
    sdc1	$f1,1608($s0)
    # Line 788
    lwc1	$f0,20($sp)
    # Line 789
    # lw $t9, -24244($gp) # &__glUpdateDepthRange
    move	$a0,$s0
    # Line 788
    cvt.d.s	$f0,$f0
    # Line 789
    jal	__glUpdateDepthRange
    # Line 788
    sdc1	$f0,1616($s0)
    # Line 790
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrGetViewport

# Function: __glMgrGetMachineState
# Declared: Line 793 (Source lines: 793-810)
# Address: 0x0daf8dc8 - 0x0daf8ea4 (Size: 220 bytes, Frame: 32)
.ent __glMgrGetMachineState
__glMgrGetMachineState:
    # Line 793
    addiu	$sp,$sp,-32
    # Line 794
    # lw $t9, -29764($gp) # &__glMgrGetAccum
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    bal __glMgrGetAccum
    # Line 793
    move	$s0,$a0
    # Line 795
    # lw $t9, -29760($gp) # &__glMgrGetColorBuffer
    bal __glMgrGetColorBuffer
    move	$a0,$s0
    # Line 796
    # lw $t9, -29756($gp) # &__glMgrGetCurrentBuffer
    bal __glMgrGetCurrentBuffer
    move	$a0,$s0
    # Line 797
    # lw $t9, -29752($gp) # &__glMgrGetDepthBuffer
    bal __glMgrGetDepthBuffer
    move	$a0,$s0
    # Line 798
    # lw $t9, -29748($gp) # &__glMgrGetEnables
    bal __glMgrGetEnables
    move	$a0,$s0
    # Line 799
    # lw $t9, -29744($gp) # &__glMgrGetEval
    bal __glMgrGetEval
    move	$a0,$s0
    # Line 800
    # lw $t9, -29740($gp) # &__glMgrGetFog
    bal __glMgrGetFog
    move	$a0,$s0
    # Line 801
    # lw $t9, -29736($gp) # &__glMgrGetLighting
    bal __glMgrGetLighting
    move	$a0,$s0
    # Line 802
    # lw $t9, -29732($gp) # &__glMgrGetLine
    bal __glMgrGetLine
    move	$a0,$s0
    # Line 803
    # lw $t9, -29728($gp) # &__glMgrGetPixel
    bal __glMgrGetPixel
    move	$a0,$s0
    # Line 804
    # lw $t9, -29724($gp) # &__glMgrGetPoint
    bal __glMgrGetPoint
    move	$a0,$s0
    # Line 805
    # lw $t9, -29720($gp) # &__glMgrGetPolygon
    bal __glMgrGetPolygon
    move	$a0,$s0
    # Line 806
    # lw $t9, -29716($gp) # &__glMgrGetScissor
    bal __glMgrGetScissor
    move	$a0,$s0
    # Line 807
    # lw $t9, -29712($gp) # &__glMgrGetStencil
    bal __glMgrGetStencil
    move	$a0,$s0
    # Line 808
    # lw $t9, -29708($gp) # &__glMgrGetTransform
    bal __glMgrGetTransform
    move	$a0,$s0
    # Line 809
    # lw $t9, -29704($gp) # &__glMgrGetViewport
    bal __glMgrGetViewport
    move	$a0,$s0
    ld	$ra,8($sp)
    # Line 810
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrGetMachineState

# Function: __glMgrPickAllProcs
# Declared: Line 825 (Source lines: 825-1068)
# Address: 0x0daf8ea4 - 0x0daf9370 (Size: 1228 bytes, Frame: 192)
.globl __glMgrPickAllProcs
.ent __glMgrPickAllProcs
__glMgrPickAllProcs:
    # Line 825
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    # Line 827
    move	$s1,$zero
    sd	$s0,0($sp)
    # Line 825
    move	$s0,$a0
    sd	$s4,16($sp)
    # Line 826
    lw	$s4,1696($a0)
    sd	$gp,24($sp)
    # Line 827
    lw	$a2,11828($a0)
    # Line 825
    lui	$at,0x10
    addiu	$at,$at,22516
    # Line 827
    andi	$a3,$a2,0x21
    beqz	$a3,.L0daf8f20
    # Line 825
    addu	$gp,$t9,$at
    # Line 834
    lw	$t9,11868($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lbu	$a0,3104($s0)
    beqz	$a0,.L0daf8f0c
    ld	$ra,32($sp)
    lw	$v0,28264($s0)
    beqz	$v0,.L0daf8f10
    # Line 835
    move	$a4,$zero
    b	.L0daf8f10
    li	$a4,1
.L0daf8f0c:
    move	$a4,$zero
.L0daf8f10:
    lw	$a2,11828($s0)
    sb	$a4,28268($s0)
    b	.L0daf8f24
    andi	$a3,$a2,0x21
.L0daf8f20:
    lbu	$a0,3104($s0)
.L0daf8f24:
    # Line 843
    li	$t3,7425
    # Line 835
    beqz	$a0,.L0daf8f40
    # Line 865
    andi	$t0,$s4,0x40
    # Line 841
    lbu	$v1,28268($s0)
    beqz	$v1,.L0daf8f40
    li	$s1,1
    # Line 843
    li	$s1,9
.L0daf8f40:
    lw	$t2,1304($s0)
    beq	$t3,$t2,.L0daf92b4
.L0daf8f48:
    # Line 847
    andi	$a1,$s4,0x10
    beqz	$a1,.L0daf8fa8
    # Line 852
    andi	$a1,$s4,0x1000
    # Line 847
    lbu	$at,3109($s0)
    beqz	$at,.L0daf8fa4
    # Line 850
    lui	$v0,0x100
    and	$v0,$s4,$v0
    beqz	$v0,.L0daf8fa4
    ori	$s1,$s1,0x4000
    # Line 852
    lwc1	$f0,476($s0)
    dmtc1	$zero,$f4
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1f	.L0daf8fa0
    # Line 855
    lui	$v1,0x4
    # Line 852
    lwc1	$f1,480($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1t	.L0daf8fa4
    # Line 855
    lui	$v1,0x4
.L0daf8fa0:
    or	$s1,$s1,$v1
.L0daf8fa4:
    # Line 852
    andi	$a1,$s4,0x1000
.L0daf8fa8:
    beqz	$a1,.L0daf8fb4
    # Line 859
    lui	$at,0x1
    or	$s1,$s1,$at
.L0daf8fb4:
    andi	$v0,$s4,0x2000
    beqz	$v0,.L0daf8fc8
    # Line 862
    andi	$v1,$s4,0x100
    ori	$s1,$s1,0x10
    andi	$v1,$s4,0x100
.L0daf8fc8:
    beqz	$v1,.L0daf8fd4
    nop
    # Line 865
    ori	$s1,$s1,0x8000
.L0daf8fd4:
    beqz	$t0,.L0daf8ff0
    # Line 868
    andi	$t1,$s4,0x20
    # Line 865
    lbu	$a1,1325($s0)
    beqz	$a1,.L0daf8ff0
    # Line 868
    andi	$t1,$s4,0x20
    ori	$s1,$s1,0x400
    andi	$t1,$s4,0x20
.L0daf8ff0:
    beqz	$t1,.L0daf9004
    andi	$at,$s1,0x8
    beqzl	$at,.L0daf92e0
    lw	$v0,1812($s0)
    # Line 884
    ori	$s1,$s1,0x1000
.L0daf9004:
    # Line 888
    beqz	$a3,.L0daf91ac
    sw	$s1,30488($s0)
    # Line 897
    move	$a7,$zero
    # Line 900
    lw	$a0,1876($s0)
    li	$a2,9216
    beq	$a2,$a0,.L0daf92f4
    # Line 899
    li	$a3,4
    # Line 900
    li	$v0,9218
    beq	$a0,$v0,.L0daf9304
    nop
.L0daf902c:
    # Line 912
    lw	$a0,2000($s0)
    beq	$a2,$a0,.L0daf92fc
    # Line 911
    ori	$a3,$a3,0x4
    # Line 912
    li	$v1,9218
    beq	$a0,$v1,.L0daf930c
    nop
.L0daf9044:
    # Line 920
    beqz	$t0,.L0daf905c
    nop
    # Line 924
    lbu	$a1,1324($s0)
    beqz	$a1,.L0daf9314
    li	$a7,8
    # Line 926
    li	$a7,24
.L0daf905c:
    # Line 940
    beqz	$t1,.L0daf9070
    # Line 944
    andi	$at,$s1,0x2000
    beqz	$at,.L0daf9070
    ori	$a3,$a3,0x10
    # Line 948
    ori	$a3,$a3,0x40
.L0daf9070:
    lw	$v0,1708($s0)
    beqzl	$v0,.L0daf9084
    # Line 956
    sw	$a3,28132($s0)
    # Line 954
    ori	$a3,$a3,0x10
    # Line 956
    sw	$a3,28132($s0)
.L0daf9084:
    # Line 957
    or	$a0,$a3,$a7
    # Line 958
    move	$a2,$a0
    sw	$a0,28140($s0)
    # Line 957
    move	$a4,$a0
    # Line 959
    beqz	$t0,.L0daf92c4
    # Line 957
    sw	$a0,28136($s0)
    # Line 961
    lbu	$v1,1325($s0)
.L0daf90a0:
    ori	$a3,$a0,0x1
    move	$a4,$a3
    beqz	$v1,.L0daf9294
    sw	$a3,28136($s0)
    # Line 963
    ori	$a2,$a0,0x2
    # Line 962
    beq	$t3,$t2,.L0daf92a4
    # Line 963
    sw	$a2,28140($s0)
    sd	$ra,32($sp)
.L0daf90c0:
    # Line 977
    sw	$zero,28144($s0)
.L0daf90c4:
    # Line 980
    lw	$a1,30708($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
    lbu	$a1,3106($s0)
    beqzl	$a1,.L0daf90f4
    # Line 988
    lw	$at,3180($s0)
    # Line 982
    lw	$a1,30712($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
    # Line 988
    lw	$at,3180($s0)
.L0daf90f4:
    blez	$at,.L0daf912c
    move	$s4,$zero
    move	$s1,$zero
    # Line 989
    lw	$a1,31156($s0)
.L0daf9104:
    addu	$a1,$a1,$s1
    lw	$t9,160($a1)
    # Line 988
    addiu	$s4,$s4,1
    # Line 989
    move	$a0,$s0
    jalr	$t9
    # Line 988
    addiu	$s1,$s1,220
    lw	$at,3180($s0)
    slt	$at,$s4,$at
    bnezl	$at,.L0daf9104
    # Line 989
    lw	$a1,31156($s0)
.L0daf912c:
    # Line 993
    lw	$t9,11908($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1001
    lw	$t9,11912($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1003
    lw	$t9,11876($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1005
    # lw $t9, -26624($gp) # &__glValidateLighting
    jal	__glValidateLighting
    move	$a0,$s0
    # Line 1011
    lw	$t9,11864($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1013
    lw	$t9,11872($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1015
    lw	$t9,11904($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1016
    lw	$t9,11900($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1021
    lw	$t9,11892($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1023
    lw	$t9,11988($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11828($s0)
    ld	$ra,32($sp)
.L0daf91ac:
    andi	$v0,$a2,0x40
    beqz	$v0,.L0daf91d4
    # Line 1034
    andi	$v1,$a2,0x25
    lw	$t9,12716($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11828($s0)
    ld	$ra,32($sp)
    andi	$v1,$a2,0x25
.L0daf91d4:
    beqz	$v1,.L0daf9210
    # Line 1048
    andi	$a1,$a2,0x29
    # Line 1045
    lw	$t9,11920($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 1047
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1048
    lw	$t9,11888($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11828($s0)
    ld	$ra,32($sp)
    andi	$a1,$a2,0x29
.L0daf9210:
    beqz	$a1,.L0daf9234
    # Line 1053
    andi	$at,$a2,0x23
    lw	$t9,11880($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11828($s0)
    ld	$ra,32($sp)
    andi	$at,$a2,0x23
.L0daf9234:
    beqz	$at,.L0daf9258
    # Line 1058
    andi	$v0,$a2,0x31
    lw	$t9,11884($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11828($s0)
    ld	$ra,32($sp)
    andi	$v0,$a2,0x31
.L0daf9258:
    beqzl	$v0,.L0daf9278
    ld	$gp,24($sp)
    # Line 1063
    lw	$t9,11896($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$gp,24($sp)
.L0daf9278:
    # Line 1067
    sw	$zero,11828($s0)
    # Line 1066
    sw	$zero,11824($s0)
    # Line 1068
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf9294:
    # Line 965
    move	$a2,$a3
    sw	$a3,28140($s0)
.L0daf929c:
    # Line 962
    bnel	$t3,$t2,.L0daf90c0
    sd	$ra,32($sp)
.L0daf92a4:
    sd	$ra,32($sp)
    # Line 970
    or	$v1,$a4,$a2
    b	.L0daf90c4
    sw	$v1,28144($s0)
.L0daf92b4:
    # Line 847
    lui	$a1,0x2
    ori	$a1,$a1,0x2
    b	.L0daf8f48
    or	$s1,$s1,$a1
.L0daf92c4:
    # Line 959
    lui	$at,0x2
    ori	$at,$at,0x2000
    and	$at,$s1,$at
    beqz	$at,.L0daf929c
    nop
    b	.L0daf90a0
    # Line 961
    lbu	$v1,1325($s0)
.L0daf92e0:
    # Line 868
    li	$v1,4354
    beql	$v0,$v1,.L0daf9004
    # Line 884
    ori	$s1,$s1,0x1000
    # Line 881
    b	.L0daf9004
    ori	$s1,$s1,0x2002
.L0daf92f4:
    # Line 903
    b	.L0daf902c
    # Line 902
    li	$a3,20
.L0daf92fc:
    # Line 915
    b	.L0daf9044
    # Line 914
    ori	$a3,$a3,0x10
.L0daf9304:
    b	.L0daf902c
    # Line 906
    li	$a3,28
.L0daf930c:
    b	.L0daf9044
    # Line 918
    ori	$a3,$a3,0x18
.L0daf9314:
    # Line 931
    lw	$a5,3328($s0)
    move	$a0,$zero
    beqz	$a5,.L0daf905c
    # Line 929
    lw	$a2,1488($s0)
    # Line 931
    mtc1	$zero,$f4
    li	$a6,1
    b	.L0daf9344
    lw	$a4,1704($s0)
    addiu	$a0,$a0,1
.L0daf9338:
    sltu	$a1,$a0,$a5
    beqz	$a1,.L0daf905c
    addiu	$a2,$a2,116
.L0daf9344:
    sllv	$at,$a6,$a0
    and	$at,$at,$a4
    beqzl	$at,.L0daf9338
    addiu	$a0,$a0,1
    lwc1	$f2,76($a2)
    c.eq.s	$f2,$f4
    nop
    bc1t	.L0daf9338
    addiu	$a0,$a0,1
    # Line 938
    b	.L0daf905c
    # Line 937
    li	$a7,24
.end __glMgrPickAllProcs

# Function: __glMgrPickLineProcs
# Declared: Line 1071 (Source lines: 1071-1211)
# Address: 0x0daf9370 - 0x0daf963c (Size: 716 bytes, Frame: 0)
.globl __glMgrPickLineProcs
.ent __glMgrPickLineProcs
__glMgrPickLineProcs:
    # Line 1072
    lw	$a5,30488($a0)
    lw	$v0,28136($a0)
    # Line 1071
    lui	$v1,0x10
    addiu	$v1,$v1,21288
    # Line 1072
    beqz	$v0,.L0daf956c
    # Line 1071
    addu	$at,$t9,$v1
    # Line 1083
    la	$a1,__glOtherLStripVertex
    sw	$a1,12028($a0)
.L0daf9390:
    # Line 1105
    addiu	$a4,$a0,12372
    # Line 1095
    move	$t0,$zero
    # Line 1085
    lw	$a3,3092($a0)
    la	$a2,__glSecondLinesVertex
    li	$v0,7169
    beq	$a3,$v0,.L0daf9584
    sw	$a2,12036($a0)
    # Line 1091
    li	$v1,7170
    beq	$a3,$v1,.L0daf95f0
    # Line 1093
    la	$v1,__glSelectLine
    # Line 1097
    lw	$a7,1696($a0)
    # Line 1116
    andi	$t1,$a5,0x2
    # Line 1097
    andi	$a7,$a7,0x200
    beqz	$a7,.L0daf9590
    # Line 1095
    move	$a6,$zero
    # Line 1099
    la	$v0,__glRenderAntiAliasLine
    sw	$v0,12532($a0)
.L0daf93d4:
    # Line 1104
    addiu	$a3,$a0,12308
    # Line 1105
    beqz	$a7,.L0daf959c
.L0daf93dc:
    # Line 1116
    andi	$a1,$a5,0x1
.L0daf93e0:
    subu	$v1,$a3,$a0
    addiu	$v1,$v1,-12308
    sra	$v1,$v1,0x2
    beqz	$a1,.L0daf95dc
    sw	$v1,12436($a0)
    beqz	$t1,.L0daf95f8
    # Line 1121
    la	$a1,__glShadeRGBASpan
    sw	$a1,0($a3)
    # Line 1122
    sw	$a1,0($a4)
.L0daf9404:
    # Line 1137
    addiu	$a4,$a4,4
    andi	$a2,$a5,0x8
    beqz	$a2,.L0daf942c
    # Line 1136
    addiu	$a3,$a3,4
    # Line 1140
    addiu	$a4,$a4,4
    # Line 1139
    la	$v1,__glTextureSpan
    # Line 1140
    la	$v0,__glTextureStippledSpan
    # Line 1139
    addiu	$a3,$a3,4
    sw	$v1,-4($a3)
    # Line 1140
    sw	$v0,-4($a4)
.L0daf942c:
    andi	$a1,$a5,0x1000
    beqz	$a1,.L0daf9458
    li	$v0,4354
    lw	$a2,1812($a0)
    beq	$a2,$v0,.L0daf9608
    # Line 1147
    la	$a1,__glFogSpan
    # Line 1148
    la	$v1,__glFogStippledSpan
    # Line 1147
    sw	$a1,0($a3)
    # Line 1148
    sw	$v1,0($a4)
.L0daf9450:
    # Line 1151
    addiu	$a4,$a4,4
    # Line 1150
    addiu	$a3,$a3,4
.L0daf9458:
    # Line 1151
    beqz	$a7,.L0daf947c
    # Line 1166
    la	$v0,__glMgrStoreStippledLine
    # Line 1156
    addiu	$a4,$a4,4
    # Line 1155
    la	$v0,__glAntiAliasLine
    # Line 1156
    la	$a2,__glAntiAliasStippledLine
    # Line 1155
    addiu	$a3,$a3,4
    sw	$v0,-4($a3)
    # Line 1156
    sw	$a2,-4($a4)
    # Line 1166
    la	$v0,__glMgrStoreStippledLine
.L0daf947c:
    # Line 1163
    subu	$a7,$a3,$a0
    # Line 1156
    lbu	$v1,30704($a0)
    # Line 1163
    addiu	$a1,$a7,-12308
    # Line 1168
    addiu	$a7,$a7,-12304
    # Line 1156
    beqz	$v1,.L0daf9498
    # Line 1168
    sra	$a7,$a7,0x2
    # Line 1160
    li	$t0,1
.L0daf9498:
    # Line 1165
    la	$v1,__glMgrStoreLine
    # Line 1163
    sra	$a1,$a1,0x2
    sw	$a1,12440($a0)
    # Line 1165
    sw	$v1,0($a3)
    # Line 1171
    addiu	$a3,$a0,12452
    # Line 1166
    sw	$v0,0($a4)
    # Line 1172
    addiu	$a4,$a0,12456
    beqz	$a6,.L0daf94d4
    # Line 1169
    sw	$a7,12444($a0)
    # Line 1177
    addiu	$a4,$a0,12464
    # Line 1175
    la	$v0,__glWideStippleLineRep
    # Line 1174
    la	$a2,__glWideLineRep
    # Line 1176
    addiu	$a3,$a0,12460
    # Line 1175
    sw	$v0,12456($a0)
    # Line 1174
    sw	$a2,12452($a0)
.L0daf94d4:
    # Line 1177
    beqz	$t0,.L0daf9528
    # Line 1181
    la	$v1,__glDrawBothStippledLine
    # Line 1180
    la	$a1,__glDrawBothLine
    sw	$a1,0($a3)
    # Line 1185
    beqz	$a6,.L0daf9540
    # Line 1181
    sw	$v1,0($a4)
.L0daf94ec:
    # Line 1194
    la	$a2,__glProcessLine
.L0daf94f0:
    sw	$a2,12448($a0)
.L0daf94f4:
    andi	$v0,$a5,0x2000
    beqz	$v0,.L0daf950c
    lui	$v1,0x2
    and	$v1,$a5,$v1
    beqz	$v1,.L0daf961c
    # Line 1199
    la	$a1,__glRenderFlatFogLine
.L0daf950c:
    lw	$a1,1700($a0)
    andi	$a1,$a1,0x400
    beqz	$a1,.L0daf9578
    # Line 1206
    la	$a2,__glPolygonOffsetLine
    sw	$a2,12540($a0)
    # Line 1211
    jr	$ra
    nop
.L0daf9528:
    # Line 1181
    la	$v1,__glNop
    # Line 1183
    sw	$v1,0($a3)
    # Line 1184
    sw	$v1,0($a4)
    # Line 1185
    lw	$v0,12444($a0)
    bnez	$a6,.L0daf94ec
    sw	$v0,12440($a0)
.L0daf9540:
    # Line 1188
    lw	$a1,12440($a0)
    bnez	$a6,.L0daf94ec
    sw	$a1,12436($a0)
    bnez	$t0,.L0daf94f0
    # Line 1194
    la	$a2,__glProcessLine
    # Line 1191
    li	$a2,3
    bne	$a7,$a2,.L0daf94f0
    # Line 1194
    la	$a2,__glProcessLine
    # Line 1192
    la	$v0,__glProcessLine3NW
    b	.L0daf94f4
    sw	$v0,12448($a0)
.L0daf956c:
    # Line 1081
    la	$v1,__glOtherLStripVertexFast
    b	.L0daf9390
    sw	$v1,12028($a0)
.L0daf9578:
    # Line 1209
    lw	$a1,12532($a0)
    # Line 1211
    jr	$ra
    # Line 1209
    sw	$a1,12540($a0)
.L0daf9584:
    # Line 1091
    la	$a2,__glFeedbackLine
    b	.L0daf950c
    sw	$a2,12532($a0)
.L0daf9590:
    # Line 1101
    la	$v0,__glRenderAliasLine
    b	.L0daf93d4
    sw	$v0,12532($a0)
.L0daf959c:
    # Line 1105
    andi	$v1,$a5,0x8000
    beqz	$v1,.L0daf95bc
    nop
    # Line 1109
    sw	$zero,12372($a0)
    # Line 1108
    la	$a1,__glStippleLine
    # Line 1109
    addiu	$a4,$a0,12376
    # Line 1108
    addiu	$a3,$a0,12312
    sw	$a1,12308($a0)
.L0daf95bc:
    # Line 1109
    bnez	$a7,.L0daf93e0
    # Line 1116
    andi	$a1,$a5,0x1
    # Line 1109
    lw	$a2,452($a0)
    slti	$a2,$a2,2
    bnez	$a2,.L0daf93e0
    # Line 1116
    andi	$a1,$a5,0x1
    b	.L0daf93dc
    # Line 1113
    li	$a6,1
.L0daf95dc:
    # Line 1125
    beqz	$t1,.L0daf962c
    # Line 1129
    la	$v0,__glShadeCISpan
    sw	$v0,0($a3)
    # Line 1130
    b	.L0daf9404
    sw	$v0,0($a4)
.L0daf95f0:
    # Line 1093
    b	.L0daf950c
    sw	$v1,12532($a0)
.L0daf95f8:
    # Line 1122
    la	$a1,__glFlatRGBASpan
    # Line 1124
    sw	$a1,0($a3)
    b	.L0daf9404
    # Line 1125
    sw	$a1,0($a4)
.L0daf9608:
    # Line 1144
    la	$v0,__glFogSpanSlow
    # Line 1145
    la	$a2,__glFogStippledSpanSlow
    # Line 1144
    sw	$v0,0($a3)
    # Line 1145
    b	.L0daf9450
    sw	$a2,0($a4)
.L0daf961c:
    # Line 1198
    lw	$v1,12532($a0)
    # Line 1199
    sw	$a1,12532($a0)
    b	.L0daf950c
    # Line 1198
    sw	$v1,12536($a0)
.L0daf962c:
    # Line 1130
    la	$a2,__glFlatCISpan
    # Line 1132
    sw	$a2,0($a3)
    b	.L0daf9404
    # Line 1133
    sw	$a2,0($a4)
.end __glMgrPickLineProcs

# Function: __glMgrPickPixelProcs
# Declared: Line 1214 (Source lines: 1214-1426)
# Address: 0x0daf963c - 0x0daf9d2c (Size: 1776 bytes, Frame: 0)
.globl __glMgrPickPixelProcs
.ent __glMgrPickPixelProcs
__glMgrPickPixelProcs:
    # Line 1227
    lw	$v0,740($a0)
    # Line 1214
    lui	$v1,0x10
    addiu	$v1,$v1,20572
    # Line 1227
    lw	$v0,0($v0)
    # Line 1220
    lw	$a4,1696($a0)
    # Line 1214
    addu	$at,$t9,$v1
    # Line 1227
    beqz	$v0,.L0daf9b5c
    # Line 1220
    move	$a7,$a4
    # Line 1227
    li	$t1,1
.L0daf9660:
    # Line 1247
    lw	$a5,1148($a0)
    li	$a1,1028
    beq	$a5,$a1,.L0daf9c68
    move	$a3,$a5
    li	$a2,1029
    beq	$a3,$a2,.L0daf9c98
    li	$v0,1033
    beq	$a3,$v0,.L0daf9a10
    li	$v1,1034
    beq	$a3,$v1,.L0daf9a10
    li	$a1,1035
    beq	$a3,$a1,.L0daf9a10
    li	$a2,1036
    beql	$a3,$a2,.L0daf9a14
    # Line 1263
    lw	$v0,31156($a0)
.L0daf969c:
    # Line 1269
    lbu	$a6,28268($a0)
    beqz	$a6,.L0daf9a48
    # Line 1271
    la	$v0,__glSlowDrawPixelsStore
    sw	$v0,12640($a0)
.L0daf96ac:
    # Line 1278
    lbu	$a3,736($a0)
    # Line 1279
    beqzl	$a3,.L0daf9a60
    lbu	$v0,3104($a0)
    # Line 1281
    sb	$zero,30668($a0)
.L0daf96bc:
    # Line 1280
    sb	$zero,30660($a0)
    # Line 1282
    li	$v1,1
    sb	$v1,30577($a0)
.L0daf96c8:
    # Line 1286
    lbu	$a1,737($a0)
    beqz	$a1,.L0daf9a88
    # Line 1287
    li	$a2,1
.L0daf96d4:
    sb	$a2,30579($a0)
.L0daf96d8:
    # Line 1291
    lwc1	$f8,3284($a0)
    lwc1	$f0,632($a0)
    c.eq.s	$f0,$f8
    nop
    bc1f	.L0daf9708
    # Line 1292
    li	$v0,1
    # Line 1291
    lwc1	$f1,652($a0)
    mtc1	$zero,$f2
    c.eq.s	$f1,$f2
    nop
    bc1t	.L0daf9a40
    # Line 1292
    li	$v0,1
.L0daf9708:
    sb	$v0,30578($a0)
.L0daf970c:
    # Line 1296
    beqz	$a3,.L0daf9aa8
.L0daf9710:
    # Line 1299
    li	$a5,1
.L0daf9714:
    # Line 1300
    sb	$zero,30640($a0)
    # Line 1299
    sb	$a5,30576($a0)
.L0daf971c:
    # Line 1302
    beqz	$a5,.L0daf9c74
    lwc1	$f9,30844($a0)
    # Line 1311
    lwc1	$f5,644($a0)
    # Line 1310
    lwc1	$f7,640($a0)
    # Line 1312
    lwc1	$f0,648($a0)
    lwc1	$f4,628($a0)
    # Line 1309
    lwc1	$f6,636($a0)
    # Line 1312
    beqz	$a3,.L0daf9c14
    add.s	$f4,$f4,$f0
    # Line 1317
    lw	$a5,1024($a0)
    addiu	$t0,$a5,-1
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f6
    lwc1	$f8,3280($a0)
    add.s	$f1,$f1,$f8
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    nop
    bltz	$a3,.L0daf9ca4
    # Line 1318
    slt	$v1,$a3,$a5
    bnezl	$v1,.L0daf9784
    # Line 1324
    lw	$a5,1036($a0)
    # Line 1319
    move	$a3,$t0
.L0daf9780:
    # Line 1324
    lw	$a5,1036($a0)
.L0daf9784:
    addiu	$t0,$a5,-1
    mtc1	$t0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f7
    add.s	$f2,$f2,$f8
    trunc.w.s	$f2,$f2
    # Line 1320
    lw	$a1,1032($a0)
    sll	$a2,$a3,0x2
    # Line 1324
    mfc1	$a3,$f2
    # Line 1320
    addu	$a1,$a1,$a2
    # Line 1324
    bltz	$a3,.L0daf9cac
    # Line 1320
    lwc1	$f6,0($a1)
    # Line 1325
    slt	$v0,$a3,$a5
    bnezl	$v0,.L0daf97cc
    # Line 1331
    lw	$a5,1048($a0)
    # Line 1326
    move	$a3,$t0
.L0daf97c8:
    # Line 1331
    lw	$a5,1048($a0)
.L0daf97cc:
    addiu	$t0,$a5,-1
    mtc1	$t0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    add.s	$f3,$f3,$f8
    trunc.w.s	$f3,$f3
    # Line 1327
    lw	$v1,1044($a0)
    sll	$a1,$a3,0x2
    # Line 1331
    mfc1	$a3,$f3
    # Line 1327
    addu	$v1,$v1,$a1
    # Line 1331
    bltz	$a3,.L0daf9cb4
    # Line 1327
    lwc1	$f7,0($v1)
    # Line 1332
    slt	$a2,$a3,$a5
    bnezl	$a2,.L0daf9814
    # Line 1338
    lw	$a5,1060($a0)
    # Line 1333
    move	$a3,$t0
.L0daf9810:
    # Line 1338
    lw	$a5,1060($a0)
.L0daf9814:
    addiu	$t0,$a5,-1
    mtc1	$t0,$f5
    nop
    cvt.s.w	$f5,$f5
    mul.s	$f5,$f5,$f4
    add.s	$f5,$f5,$f8
    trunc.w.s	$f5,$f5
    # Line 1334
    lw	$v0,1056($a0)
    sll	$v1,$a3,0x2
    # Line 1338
    mfc1	$a3,$f5
    # Line 1334
    addu	$v0,$v0,$v1
    # Line 1338
    bltz	$a3,.L0daf9cbc
    # Line 1334
    lwc1	$f5,0($v0)
    # Line 1339
    slt	$a1,$a3,$a5
    bnezl	$a1,.L0daf985c
    # Line 1341
    lw	$a2,1068($a0)
    # Line 1340
    move	$a3,$t0
.L0daf9858:
    # Line 1341
    lw	$a2,1068($a0)
.L0daf985c:
    sll	$v0,$a3,0x2
    addu	$a2,$a2,$v0
    lwc1	$f4,0($a2)
.L0daf9868:
    # Line 1355
    mul.s	$f3,$f9,$f4
.L0daf986c:
    # Line 1353
    lwc1	$f1,30808($a0)
    # Line 1354
    lwc1	$f2,30812($a0)
    # Line 1353
    mul.s	$f1,$f1,$f7
    # Line 1352
    lwc1	$f0,30804($a0)
    # Line 1354
    mul.s	$f2,$f2,$f5
    # Line 1352
    mul.s	$f0,$f0,$f6
    # Line 1355
    swc1	$f3,30596($a0)
    # Line 1354
    swc1	$f2,30592($a0)
    # Line 1353
    swc1	$f1,30588($a0)
    # Line 1352
    swc1	$f0,30584($a0)
.L0daf9894:
    # Line 1363
    lw	$a3,1788($a0)
    # Line 1373
    lui	$v0,0x200
    # Line 1363
    beqz	$a3,.L0daf98b8
    # Line 1400
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 1363
    li	$v1,1032
    beql	$a3,$v1,.L0daf98bc
    # Line 1368
    sb	$zero,30580($a0)
    # Line 1363
    beqz	$a6,.L0daf9bf8
    andi	$a1,$a7,0x20
.L0daf98b8:
    # Line 1368
    sb	$zero,30580($a0)
.L0daf98bc:
    # Line 1373
    lui	$a3,0xe00
    and	$a3,$a4,$a3
    beqz	$a3,.L0daf9c8c
    # Line 1392
    la	$a4,dummyFilter
    # Line 1373
    beq	$a3,$v0,.L0daf98ec
    lui	$v1,0x400
    beq	$a3,$v1,.L0daf9a04
    lui	$a1,0x600
    beq	$a3,$a1,.L0daf9a04
    # Line 1390
    addiu	$a3,$a0,880
    b	.L0daf98f4
    sw	$a3,740($a0)
.L0daf98ec:
    # Line 1381
    addiu	$a3,$a0,744
    sw	$a3,740($a0)
.L0daf98f4:
    # Line 1400
    lwc1	$f3,688($a0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1f	.L0daf99b8
    # Line 1408
    li	$a2,1
    # Line 1400
    lwc1	$f0,692($a0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1fl	.L0daf99bc
    # Line 1408
    sb	$a2,30697($a0)
    # Line 1400
    lwc1	$f1,696($a0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1fl	.L0daf99bc
    # Line 1408
    sb	$a2,30697($a0)
    # Line 1400
    lwc1	$f2,700($a0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1fl	.L0daf99bc
    # Line 1408
    sb	$a2,30697($a0)
    # Line 1400
    lwc1	$f3,704($a0)
    dmtc1	$zero,$f4
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1fl	.L0daf99bc
    # Line 1408
    sb	$a2,30697($a0)
    # Line 1400
    lwc1	$f0,708($a0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1fl	.L0daf99bc
    # Line 1408
    sb	$a2,30697($a0)
    # Line 1400
    lwc1	$f1,712($a0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1fl	.L0daf99bc
    # Line 1408
    sb	$a2,30697($a0)
    # Line 1400
    lwc1	$f2,716($a0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1t	.L0daf9d24
    nop
.L0daf99b8:
    # Line 1408
    sb	$a2,30697($a0)
.L0daf99bc:
    # Line 1416
    lw	$v0,48($a3)
    # Line 1424
    la	$a1,__glSlowPickCopyConvolutionFilter1D
    # Line 1416
    beqz	$v0,.L0daf9b54
    # Line 1425
    la	$a2,__glSlowPickCopyConvolutionFilter2D
    # Line 1416
    lw	$v1,52($a3)
    beqz	$v1,.L0daf9b54
    nop
.L0daf99d8:
    # Line 1424
    sw	$a1,12660($a0)
    # Line 1420
    la	$a1,__glSlowPickConvolutionFilter
    # Line 1422
    la	$v0,__glSlowPickGetConvolutionFilter
    # Line 1423
    la	$v1,__glSlowPickGetSeparableFilter
    # Line 1425
    sw	$a2,12664($a0)
    # Line 1421
    la	$a2,__glSlowPickSeparableFilter
    # Line 1423
    sw	$v1,12656($a0)
    # Line 1422
    sw	$v0,12652($a0)
    # Line 1421
    sw	$a2,12648($a0)
    # Line 1426
    jr	$ra
    # Line 1420
    sw	$a1,12644($a0)
.L0daf9a04:
    # Line 1386
    addiu	$a3,$a0,812
    # Line 1387
    b	.L0daf98f4
    # Line 1386
    sw	$a3,740($a0)
.L0daf9a10:
    # Line 1263
    lw	$v0,31156($a0)
.L0daf9a14:
    sll	$v1,$a5,0x3
    subu	$v1,$v1,$a5
    sll	$v1,$v1,0x3
    subu	$v1,$v1,$a5
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lui	$v1,0x3
    ori	$v1,$v1,0x77bc
    subu	$v0,$v0,$v1
    b	.L0daf969c
    sw	$v0,11836($a0)
.L0daf9a40:
    b	.L0daf970c
    # Line 1294
    sb	$zero,30578($a0)
.L0daf9a48:
    # Line 1269
    andi	$a1,$a7,0x20
    bnezl	$a1,.L0daf96ac
    # Line 1271
    sw	$v0,12640($a0)
    # Line 1273
    lw	$a2,12668($a0)
    b	.L0daf96ac
    sw	$a2,12640($a0)
.L0daf9a60:
    # Line 1279
    bnezl	$v0,.L0daf96bc
    # Line 1281
    sb	$zero,30668($a0)
    # Line 1279
    lw	$v1,728($a0)
    bnezl	$v1,.L0daf96bc
    # Line 1281
    sb	$zero,30668($a0)
    # Line 1279
    lw	$a1,732($a0)
    bnezl	$a1,.L0daf96bc
    # Line 1281
    sb	$zero,30668($a0)
    b	.L0daf96c8
    # Line 1284
    sb	$zero,30577($a0)
.L0daf9a88:
    # Line 1286
    lw	$a2,728($a0)
    bnez	$a2,.L0daf96d4
    # Line 1287
    li	$a2,1
    # Line 1286
    lw	$v0,732($a0)
    bnez	$v0,.L0daf96d4
    # Line 1287
    li	$a2,1
    b	.L0daf96d8
    # Line 1289
    sb	$zero,30579($a0)
.L0daf9aa8:
    # Line 1296
    lwc1	$f3,636($a0)
    mtc1	$zero,$f10
    c.eq.s	$f3,$f10
    nop
    bc1f	.L0daf9714
    # Line 1299
    li	$a5,1
    # Line 1296
    lwc1	$f0,640($a0)
    c.eq.s	$f0,$f10
    nop
    bc1f	.L0daf9714
    # Line 1299
    li	$a5,1
    # Line 1296
    lwc1	$f1,644($a0)
    c.eq.s	$f1,$f10
    nop
    bc1f	.L0daf9714
    # Line 1299
    li	$a5,1
    # Line 1296
    lwc1	$f2,648($a0)
    c.eq.s	$f2,$f10
    nop
    bc1f	.L0daf9714
    # Line 1299
    li	$a5,1
    # Line 1296
    lwc1	$f3,616($a0)
    c.eq.s	$f3,$f8
    nop
    bc1f	.L0daf9714
    # Line 1299
    li	$a5,1
    # Line 1296
    lwc1	$f0,620($a0)
    c.eq.s	$f0,$f8
    nop
    bc1f	.L0daf9714
    # Line 1299
    li	$a5,1
    # Line 1296
    lwc1	$f1,624($a0)
    c.eq.s	$f1,$f8
    nop
    bc1f	.L0daf9714
    # Line 1299
    li	$a5,1
    # Line 1296
    lwc1	$f2,628($a0)
    c.eq.s	$f2,$f8
    nop
    bc1f	.L0daf9710
    # Line 1302
    move	$a5,$zero
    b	.L0daf971c
    sb	$zero,30576($a0)
.L0daf9b54:
    b	.L0daf99d8
    # Line 1418
    sw	$a4,740($a0)
.L0daf9b5c:
    # Line 1227
    lui	$v1,0x3000
    and	$v1,$a4,$v1
    beqzl	$v1,.L0daf9b88
    lw	$v0,30688($a0)
    lw	$a1,1160($a0)
    bnez	$a1,.L0daf9660
    li	$t1,1
    lbu	$a2,1276($a0)
    bnez	$a2,.L0daf9660
    li	$t1,1
    lw	$v0,30688($a0)
.L0daf9b88:
    li	$v1,0x8421
    bne	$v0,$v1,.L0daf9660
    li	$t1,1
    lbu	$a1,30697($a0)
    li	$a2,1
    beq	$a1,$a2,.L0daf9660
    li	$t1,1
    lw	$a3,1700($a0)
    andi	$v0,$a3,0x1
    beqz	$v0,.L0daf9bc4
    andi	$a1,$a3,0x2
    lw	$v1,4964($a0)
    bnez	$v1,.L0daf9660
    li	$t1,1
    andi	$a1,$a3,0x2
.L0daf9bc4:
    beqz	$a1,.L0daf9bdc
    andi	$v0,$a3,0x4
    lw	$a2,5124($a0)
    bnez	$a2,.L0daf9660
    li	$t1,1
    andi	$v0,$a3,0x4
.L0daf9bdc:
    beqz	$v0,.L0daf9bf0
    nop
    lw	$v1,5284($a0)
    bnez	$v1,.L0daf9660
    li	$t1,1
.L0daf9bf0:
    b	.L0daf9660
    move	$t1,$zero
.L0daf9bf8:
    # Line 1363
    bnezl	$a1,.L0daf98bc
    # Line 1368
    sb	$zero,30580($a0)
    # Line 1363
    bnezl	$t1,.L0daf98bc
    # Line 1368
    sb	$zero,30580($a0)
    # Line 1370
    li	$a2,1
    b	.L0daf98bc
    sb	$a2,30580($a0)
.L0daf9c14:
    # Line 1341
    c.lt.s	$f8,$f6
    nop
    bc1f	.L0daf9cc4
    # Line 1343
    mtc1	$zero,$f10
    mov.s	$f6,$f8
.L0daf9c28:
    # Line 1344
    c.lt.s	$f8,$f7
.L0daf9c2c:
    nop
    bc1f	.L0daf9cdc
    # Line 1345
    mtc1	$zero,$f10
    mov.s	$f7,$f8
.L0daf9c3c:
    # Line 1346
    c.lt.s	$f8,$f5
.L0daf9c40:
    nop
    bc1f	.L0daf9cf4
    # Line 1347
    mtc1	$zero,$f10
    mov.s	$f5,$f8
.L0daf9c50:
    # Line 1348
    c.lt.s	$f8,$f4
.L0daf9c54:
    nop
    bc1f	.L0daf9d0c
    # Line 1349
    mtc1	$zero,$f10
    b	.L0daf9868
    mov.s	$f4,$f8
.L0daf9c68:
    # Line 1249
    lw	$v0,30708($a0)
    # Line 1250
    b	.L0daf969c
    # Line 1249
    sw	$v0,11836($a0)
.L0daf9c74:
    # Line 1357
    mtc1	$zero,$f3
    # Line 1360
    swc1	$f9,30596($a0)
    # Line 1359
    swc1	$f3,30592($a0)
    # Line 1358
    swc1	$f3,30588($a0)
    b	.L0daf9894
    # Line 1357
    swc1	$f3,30584($a0)
.L0daf9c8c:
    # Line 1377
    la	$a3,dummyFilter
    # Line 1378
    b	.L0daf98f4
    # Line 1377
    sw	$a3,740($a0)
.L0daf9c98:
    # Line 1253
    lw	$v1,30712($a0)
    # Line 1254
    b	.L0daf969c
    # Line 1253
    sw	$v1,11836($a0)
.L0daf9ca4:
    # Line 1318
    b	.L0daf9780
    move	$a3,$zero
.L0daf9cac:
    # Line 1325
    b	.L0daf97c8
    move	$a3,$zero
.L0daf9cb4:
    # Line 1332
    b	.L0daf9810
    move	$a3,$zero
.L0daf9cbc:
    # Line 1339
    b	.L0daf9858
    move	$a3,$zero
.L0daf9cc4:
    # Line 1343
    c.lt.s	$f6,$f10
    nop
    bc1fl	.L0daf9c2c
    # Line 1344
    c.lt.s	$f8,$f7
    b	.L0daf9c28
    mov.s	$f6,$f10
.L0daf9cdc:
    # Line 1345
    c.lt.s	$f7,$f10
    nop
    bc1fl	.L0daf9c40
    # Line 1346
    c.lt.s	$f8,$f5
    b	.L0daf9c3c
    mov.s	$f7,$f10
.L0daf9cf4:
    # Line 1347
    c.lt.s	$f5,$f10
    nop
    bc1fl	.L0daf9c54
    # Line 1348
    c.lt.s	$f8,$f4
    b	.L0daf9c50
    mov.s	$f5,$f10
.L0daf9d0c:
    # Line 1349
    c.lt.s	$f4,$f10
    nop
    bc1fl	.L0daf986c
    # Line 1355
    mul.s	$f3,$f9,$f4
    b	.L0daf9868
    # Line 1350
    mov.s	$f4,$f10
.L0daf9d24:
    b	.L0daf99bc
    # Line 1410
    sb	$zero,30697($a0)
.end __glMgrPickPixelProcs

# Function: __glMgrPickPointProcs
# Declared: Line 1429 (Source lines: 1429-1466)
# Address: 0x0daf9d2c - 0x0daf9e18 (Size: 236 bytes, Frame: 0)
.globl __glMgrPickPointProcs
.ent __glMgrPickPointProcs
__glMgrPickPointProcs:
    # Line 1430
    lw	$a3,30488($a0)
    lw	$v0,28136($a0)
    # Line 1429
    lui	$v1,0x10
    addiu	$v1,$v1,18796
    # Line 1430
    beqz	$v0,.L0daf9db8
    # Line 1429
    addu	$at,$t9,$v1
    # Line 1435
    la	$a1,__glPoint
    sw	$a1,12024($a0)
.L0daf9d4c:
    lw	$a4,3092($a0)
    # Line 1439
    la	$a1,__glFeedbackPoint
    # Line 1435
    li	$a2,7169
    beq	$a4,$a2,.L0daf9de4
    # Line 1440
    li	$v0,7170
    beq	$a4,$v0,.L0daf9dec
    # Line 1457
    andi	$a2,$a3,0x2000
    # Line 1444
    lw	$v1,1696($a0)
    andi	$v1,$v1,0x400
    beqz	$v1,.L0daf9dc4
    # Line 1448
    la	$a4,__glRenderAntiAliasedCIPoint
    # Line 1444
    lbu	$a1,3105($a0)
    beqzl	$a1,.L0daf9ddc
    # Line 1450
    la	$a4,__glRenderAntiAliasedRGBPoint
    # Line 1448
    sw	$a4,12556($a0)
.L0daf9d88:
    # Line 1460
    lui	$v0,0x2
    # Line 1457
    beqz	$a2,.L0daf9da0
    # Line 1460
    andi	$v1,$a3,0x1000
    and	$v0,$a3,$v0
    beqz	$v0,.L0daf9da8
    # Line 1464
    la	$a1,__glRenderFlatFogPoint
.L0daf9da0:
    # Line 1460
    beqz	$v1,.L0daf9db0
    # Line 1464
    la	$a1,__glRenderFlatFogPoint
.L0daf9da8:
    # Line 1463
    sw	$a4,12560($a0)
    # Line 1464
    sw	$a1,12556($a0)
.L0daf9db0:
    # Line 1466
    jr	$ra
    nop
.L0daf9db8:
    # Line 1433
    la	$a2,__glPointFast
    b	.L0daf9d4c
    sw	$a2,12024($a0)
.L0daf9dc4:
    # Line 1450
    lw	$v0,440($a0)
    li	$v1,1
    beq	$v0,$v1,.L0daf9df8
    # Line 1453
    la	$a4,__glRenderAliasedPointN
    b	.L0daf9d88
    sw	$a4,12556($a0)
.L0daf9ddc:
    b	.L0daf9d88
    # Line 1450
    sw	$a4,12556($a0)
.L0daf9de4:
    # Line 1440
    jr	$ra
    # Line 1439
    sw	$a1,12556($a0)
.L0daf9dec:
    # Line 1443
    la	$a2,__glSelectPoint
    # Line 1444
    jr	$ra
    # Line 1443
    sw	$a2,12556($a0)
.L0daf9df8:
    # Line 1453
    lbu	$v0,28268($a0)
    beqz	$v0,.L0daf9e0c
    # Line 1455
    la	$a4,__glRenderAliasedPoint1
    b	.L0daf9d88
    sw	$a4,12556($a0)
.L0daf9e0c:
    # Line 1457
    la	$a4,__glRenderAliasedPoint1_NoTex
    b	.L0daf9d88
    sw	$a4,12556($a0)
.end __glMgrPickPointProcs

# Function: __glMgrPickRenderBitmapProcs
# Declared: Line 1469 (Source lines: 1469-1480)
# Address: 0x0daf9e18 - 0x0daf9e60 (Size: 72 bytes, Frame: 0)
.globl __glMgrPickRenderBitmapProcs
.ent __glMgrPickRenderBitmapProcs
__glMgrPickRenderBitmapProcs:
    # Line 1469
    li	$v0,0x9ca5
    addu	$v0,$v0,$a0
    lbu	$v0,0($v0)
    lui	$v1,0x10
    addiu	$v1,$v1,18560
    bnez	$v0,.L0daf9e50
    addu	$at,$t9,$v1
    lw	$v1,1696($a0)
    lui	$a1,0x4003
    and	$v1,$v1,$a1
    beqz	$v1,.L0daf9e50
    # Line 1476
    la	$a2,__glRenderBitmap
    # Line 1480
    jr	$ra
    # Line 1476
    sw	$a2,12572($a0)
.L0daf9e50:
    # Line 1478
    la	$v0,__glMgrRenderBitmap
    sw	$v0,12572($a0)
    # Line 1480
    jr	$ra
    nop
.end __glMgrPickRenderBitmapProcs

# Function: __glMgrPickSpanProcs
# Declared: Line 1483 (Source lines: 1483-1612)
# Address: 0x0daf9e60 - 0x0dafa1c8 (Size: 872 bytes, Frame: 224)
.globl __glMgrPickSpanProcs
.ent __glMgrPickSpanProcs
__glMgrPickSpanProcs:
    # Line 1483
    addiu	$sp,$sp,-96
    sd	$s4,16($sp)
    # Line 1491
    move	$s4,$zero
    sd	$s2,40($sp)
    # Line 1483
    move	$s2,$a0
    sd	$s1,32($sp)
    # Line 1493
    addiu	$s1,$a0,12236
    sd	$s0,24($sp)
    # Line 1492
    addiu	$s0,$a0,12176
    sd	$s5,48($sp)
    # Line 1485
    lw	$s5,11832($a0)
    sd	$s3,8($sp)
    # Line 1484
    lw	$s3,30488($a0)
    sd	$gp,56($sp)
    # Line 1493
    lbu	$at,29888($a0)
    # Line 1483
    lui	$v0,0x10
    addiu	$v0,$v0,18488
    # Line 1493
    beqz	$at,.L0dafa000
    # Line 1483
    addu	$gp,$t9,$v0
.L0daf9eac:
    # Line 1505
    andi	$v0,$s3,0x2
    # Line 1500
    andi	$v1,$s3,0x10
    beqz	$v1,.L0daf9ed4
    # Line 1505
    andi	$at,$s3,0x1
    # Line 1504
    la	$a2,__glStippleSpan
    # Line 1505
    addiu	$s1,$s1,4
    la	$a1,__glStippleStippledSpan
    # Line 1504
    addiu	$s0,$s0,4
    sw	$a2,-4($s0)
    # Line 1505
    sw	$a1,-4($s1)
.L0daf9ed4:
    # Line 1513
    la	$v1,__glShadeRGBASpan
    # Line 1505
    beqz	$at,.L0daf9fd0
    # Line 1529
    andi	$a1,$s3,0x8
    # Line 1505
    beqz	$v0,.L0dafa018
    # Line 1514
    la	$a2,__glFlatRGBASpan
    # Line 1513
    sw	$v1,0($s0)
    # Line 1514
    sw	$v1,0($s1)
.L0daf9ef0:
    # Line 1529
    addiu	$s1,$s1,4
    # Line 1533
    lui	$a2,0x2
    # Line 1529
    beqz	$a1,.L0daf9f34
    # Line 1528
    addiu	$s0,$s0,4
    # Line 1532
    la	$v0,__glTextureSpan
    # Line 1533
    la	$at,__glTextureStippledSpan
    # Line 1532
    sw	$v0,0($s0)
    # Line 1533
    sw	$at,0($s1)
    lw	$v0,1696($s2)
    and	$a2,$v0,$a2
    beqz	$a2,.L0daf9f2c
    lui	$v1,0x4000
    and	$v1,$v0,$v1
    beqz	$v1,.L0dafa038
    # Line 1541
    nop	# was lw $t9, -25296($gp) # &__glLookUpTextureParams
.L0daf9f2c:
    # Line 1578
    addiu	$s1,$s1,4
.L0daf9f30:
    # Line 1577
    addiu	$s0,$s0,4
.L0daf9f34:
    # Line 1578
    andi	$a1,$s3,0x1000
    beqz	$a1,.L0daf9f68
    ld	$s3,8($sp)
    # Line 1585
    la	$a1,__glFogSpan
    # Line 1578
    lw	$a2,1812($s2)
    li	$at,4354
    beq	$a2,$at,.L0dafa024
    ld	$s3,8($sp)
    # Line 1586
    la	$v1,__glFogStippledSpan
    # Line 1585
    sw	$a1,0($s0)
    # Line 1586
    sw	$v1,0($s1)
.L0daf9f60:
    # Line 1589
    addiu	$s1,$s1,4
    # Line 1588
    addiu	$s0,$s0,4
.L0daf9f68:
    # Line 1589
    lbu	$a2,30704($s2)
    beqz	$a2,.L0daf9f84
    subu	$v0,$s0,$s2
    # Line 1595
    li	$s4,1
    # Line 1594
    addiu	$at,$v0,-12176
    sra	$at,$at,0x2
    sw	$at,12296($s2)
.L0daf9f84:
    # Line 1601
    lw	$a1,184($s5)
    # Line 1607
    la	$a2,__glProcessReplicateSpan
    # Line 1605
    addiu	$a0,$v0,-12172
    # Line 1601
    sw	$a1,0($s0)
    # Line 1605
    sra	$a0,$a0,0x2
    # Line 1602
    lw	$v1,188($s5)
    ld	$s0,24($sp)
    ld	$s5,48($sp)
    sw	$v1,0($s1)
    # Line 1609
    la	$v1,__glProcessSpan
    # Line 1605
    beqz	$s4,.L0daf9fe4
    sw	$a0,12300($s2)
    ld	$s1,32($sp)
    ld	$s4,16($sp)
    # Line 1607
    sw	$a2,12304($s2)
.L0daf9fc0:
    ld	$gp,56($sp)
    # Line 1612
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf9fd0:
    # Line 1517
    beqz	$v0,.L0dafa0e0
    # Line 1521
    la	$at,__glShadeCISpan
    sw	$at,0($s0)
    # Line 1522
    b	.L0daf9ef0
    sw	$at,0($s1)
.L0daf9fe4:
    ld	$s1,32($sp)
    # Line 1610
    sw	$a0,12296($s2)
    ld	$s5,48($sp)
    ld	$s0,24($sp)
    ld	$s4,16($sp)
    b	.L0daf9fc0
    # Line 1609
    sw	$v1,12304($s2)
.L0dafa000:
    # Line 1500
    sw	$zero,12236($s2)
    addiu	$s1,$s2,12240
    # Line 1499
    la	$a1,__glClipSpan
    addiu	$s0,$s2,12180
    b	.L0daf9eac
    sw	$a1,12176($s2)
.L0dafa018:
    # Line 1516
    sw	$a2,0($s0)
    b	.L0daf9ef0
    # Line 1517
    sw	$a2,0($s1)
.L0dafa024:
    # Line 1582
    la	$v1,__glFogSpanSlow
    # Line 1583
    la	$at,__glFogStippledSpanSlow
    # Line 1582
    sw	$v1,0($s0)
    # Line 1583
    b	.L0daf9f60
    sw	$at,0($s1)
.L0dafa038:
    # Line 1541
    move	$a0,$s2
    sd	$ra,64($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 1542
    # lw $t9, -25288($gp) # &__glLookUpTexture
    sd	$v0,0($sp)
    move	$a0,$s2
    jal	__glLookUpTexture
    li	$a1,3553
    lw	$a0,228($v0)
    lw	$a1,64($a0)
    li	$a2,6407
    bne	$a1,$a2,.L0daf9f2c
    ld	$ra,64($sp)
    lw	$at,56($a0)
    bnezl	$at,.L0daf9f30
    # Line 1578
    addiu	$s1,$s1,4
    ld	$v0,0($sp)
    # Line 1543
    lw	$v0,12($v0)
    li	$v1,9986
    beq	$v0,$v1,.L0dafa0f0
.L0dafa08c:
    # Line 1548
    li	$a0,9987
.L0dafa090:
    beq	$a0,$v0,.L0dafa120
.L0dafa094:
    # Line 1553
    li	$a3,9728
.L0dafa098:
    beq	$a3,$v0,.L0dafa150
.L0dafa09c:
    # Line 1558
    li	$v1,9984
.L0dafa0a0:
    beq	$v0,$v1,.L0dafa17c
    ld	$a2,0($sp)
.L0dafa0a8:
    # Line 1563
    li	$a3,0x8146
.L0dafa0ac:
    beq	$a3,$v0,.L0dafa1a4
    ld	$a2,0($sp)
.L0dafa0b4:
    # Line 1568
    bnel	$a0,$v0,.L0daf9f30
    # Line 1578
    addiu	$s1,$s1,4
    ld	$a1,0($sp)
    # Line 1568
    lw	$a1,16($a1)
    bnel	$a1,$a3,.L0daf9f30
    # Line 1578
    addiu	$s1,$s1,4
    # Line 1572
    la	$at,__glTextureRGB_F_LML_Span
    # Line 1573
    la	$a2,__glTextureRGB_F_LML_StippledSpan
    # Line 1572
    sw	$at,0($s0)
    b	.L0daf9f2c
    # Line 1573
    sw	$a2,0($s1)
.L0dafa0e0:
    # Line 1522
    la	$v1,__glFlatCISpan
    # Line 1524
    sw	$v1,0($s0)
    b	.L0daf9ef0
    # Line 1525
    sw	$v1,0($s1)
.L0dafa0f0:
    ld	$a1,0($sp)
    # Line 1543
    lw	$a1,16($a1)
    li	$a2,9729
    bne	$a1,$a2,.L0dafa090
    # Line 1548
    li	$a0,9987
    # Line 1547
    la	$a1,__glTextureRGB_L_NML_Span
    # Line 1548
    la	$v1,__glTextureRGB_L_NML_StippledSpan
    ld	$v0,0($sp)
    # Line 1547
    sw	$a1,0($s0)
    # Line 1548
    sw	$v1,0($s1)
    b	.L0dafa08c
    lw	$v0,12($v0)
.L0dafa120:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0dafa098
    # Line 1553
    li	$a3,9728
    # Line 1552
    la	$a1,__glTextureRGB_L_LML_Span
    # Line 1553
    la	$v1,__glTextureRGB_L_LML_StippledSpan
    ld	$v0,0($sp)
    # Line 1552
    sw	$a1,0($s0)
    # Line 1553
    sw	$v1,0($s1)
    b	.L0dafa094
    lw	$v0,12($v0)
.L0dafa150:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    bne	$a2,$a3,.L0dafa0a0
    # Line 1558
    li	$v1,9984
    # Line 1557
    la	$a1,__glTextureRGB_N_N_Span
    # Line 1558
    la	$v1,__glTextureRGB_N_N_StippledSpan
    ld	$v0,0($sp)
    # Line 1557
    sw	$a1,0($s0)
    # Line 1558
    sw	$v1,0($s1)
    b	.L0dafa09c
    lw	$v0,12($v0)
.L0dafa17c:
    lw	$a2,16($a2)
    bne	$a2,$a3,.L0dafa0ac
    # Line 1563
    li	$a3,0x8146
    # Line 1562
    la	$a1,__glTextureRGB_N_NMN_Span
    # Line 1563
    la	$v1,__glTextureRGB_N_NMN_StippledSpan
    ld	$v0,0($sp)
    # Line 1562
    sw	$a1,0($s0)
    # Line 1563
    sw	$v1,0($s1)
    b	.L0dafa0a8
    lw	$v0,12($v0)
.L0dafa1a4:
    lw	$a2,16($a2)
    bne	$a2,$a3,.L0dafa0b4
    # Line 1567
    la	$a1,__glTextureRGB_F_F_Span
    # Line 1568
    la	$v1,__glTextureRGB_F_F_StippledSpan
    ld	$v0,0($sp)
    # Line 1567
    sw	$a1,0($s0)
    # Line 1568
    sw	$v1,0($s1)
    b	.L0dafa0b4
    lw	$v0,12($v0)
.end __glMgrPickSpanProcs

# Function: __glMgrPickSoftProcs
# Declared: Line 1616 (Source lines: 1617-1636)
# Address: 0x0dafa1c8 - 0x0dafa250 (Size: 136 bytes, Frame: 0)
.ent __glMgrPickSoftProcs
__glMgrPickSoftProcs:
    # Line 1617
    lw	$a1,__glCurrentContext
    lw	$at,3092($a1)
    # Line 1621
    la	$v1,__glFeedbackPoint
    # Line 1617
    li	$v0,7169
    beq	$at,$v0,.L0dafa23c
    # Line 1622
    la	$a0,__glFeedbackTriangle
.L0dafa1e0:
    # Line 1632
    la	$v0,__glBeginTriangles
    sw	$v0,12116($a1)
    # Line 1628
    la	$v0,__glBeginPoints
    sw	$v0,12100($a1)
    # Line 1633
    la	$v1,__glBeginQStrip
    # Line 1635
    la	$at,__glEndPrim
    # Line 1634
    la	$a0,__glBeginQuads
    # Line 1633
    sw	$v1,12132($a1)
    # Line 1629
    la	$v1,__glBeginPolygon
    # Line 1634
    sw	$a0,12128($a1)
    # Line 1630
    la	$a0,__glBeginTStrip
    # Line 1635
    sw	$at,12140($a1)
    # Line 1631
    la	$at,__glBeginTFan
    # Line 1630
    sw	$a0,12120($a1)
    # Line 1626
    la	$a0,__glBeginLStrip
    # Line 1631
    sw	$at,12124($a1)
    # Line 1627
    la	$at,__glBeginLines
    # Line 1629
    sw	$v1,12136($a1)
    # Line 1625
    la	$v1,__glBeginLLoop
    # Line 1627
    sw	$at,12104($a1)
    # Line 1626
    sw	$a0,12112($a1)
    # Line 1636
    jr	$ra
    # Line 1625
    sw	$v1,12108($a1)
.L0dafa23c:
    # Line 1622
    sw	$a0,12144($a1)
    # Line 1620
    la	$v0,__glFeedbackLine
    # Line 1621
    sw	$v1,12556($a1)
    b	.L0dafa1e0
    # Line 1620
    sw	$v0,12532($a1)
.end __glMgrPickSoftProcs

# Function: __glMgrPickStoreProcs
# Declared: Line 1639 (Source lines: 1639-1670)
# Address: 0x0dafa250 - 0x0dafa320 (Size: 208 bytes, Frame: 0)
.globl __glMgrPickStoreProcs
.ent __glMgrPickStoreProcs
__glMgrPickStoreProcs:
    # Line 1640
    lw	$a3,1788($a0)
    # Line 1639
    lui	$v1,0x10
    addiu	$v1,$v1,17480
    # Line 1640
    sltiu	$v0,$a3,1033
    bnez	$v0,.L0dafa294
    # Line 1639
    addu	$at,$t9,$v1
    # Line 1640
    sltiu	$a1,$a3,1034
    bnez	$a1,.L0dafa2e0
    sltiu	$a2,$a3,1035
    bnez	$a2,.L0dafa30c
    sltiu	$v0,$a3,1036
    bnez	$v0,.L0dafa2e0
    li	$v1,1036
    bne	$a3,$v1,.L0dafa2ec
    nop
    b	.L0dafa2e4
    # Line 1667
    lw	$a1,11832($a0)
.L0dafa294:
    # Line 1640
    sltiu	$a1,$a3,1029
    bnez	$a1,.L0dafa2cc
    sltiu	$a2,$a3,1030
    bnez	$a2,.L0dafa2e0
    li	$v0,1032
    bne	$a3,$v0,.L0dafa2ec
    nop
    # Line 1647
    lbu	$v1,30704($a0)
    # Line 1648
    la	$a1,__glDoStore
    # Line 1647
    beqz	$v1,.L0dafa2e0
    # Line 1649
    la	$a2,__glDoDoubleStore
    sw	$a2,12672($a0)
    # Line 1670
    jr	$ra
    # Line 1648
    sw	$a1,12668($a0)
.L0dafa2cc:
    # Line 1640
    sltiu	$v0,$a3,1028
    bnez	$v0,.L0dafa2f4
    sltiu	$v1,$a3,1029
    beqz	$v1,.L0dafa2ec
    nop
.L0dafa2e0:
    # Line 1667
    lw	$a1,11832($a0)
.L0dafa2e4:
    lw	$a1,164($a1)
    sw	$a1,12668($a0)
.L0dafa2ec:
    # Line 1670
    jr	$ra
    nop
.L0dafa2f4:
    # Line 1640
    bnez	$a3,.L0dafa2ec
    # Line 1642
    la	$a2,__glDoStore
    # Line 1643
    la	$v0,__glDoNullStore
    # Line 1642
    sw	$a2,12668($a0)
    # Line 1670
    jr	$ra
    # Line 1643
    sw	$v0,12672($a0)
.L0dafa30c:
    # Line 1640
    li	$v1,1034
    bne	$a3,$v1,.L0dafa2ec
    nop
    b	.L0dafa2e4
    # Line 1667
    lw	$a1,11832($a0)
.end __glMgrPickStoreProcs

# Function: LoadSoftDispatchVectors
# Declared: Line 1673 (Source lines: 1673-1693)
# Address: 0x0dafa320 - 0x0dafa4c8 (Size: 424 bytes, Frame: 32)
.ent LoadSoftDispatchVectors
LoadSoftDispatchVectors:
    # Line 1673
    addiu	$sp,$sp,-32
    # Line 1674
    li	$a3,371
    move	$a2,$zero
    lw	$a4,5640($a0)
    la	$a5,__glSoftim_dispatchTable
.L0dafa334:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a5
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa334
    sw	$at,0($v0)
    # Line 1682
    move	$a3,$zero
    # Line 1674
    lbu	$v0,3104($a0)
    # Line 1682
    la	$a4,__glSoftim_vertexDispatchTable
    # Line 1674
    beqz	$v0,.L0dafa4b0
    lw	$a2,5640($a0)
    # Line 1676
    la	$at,__glMgrim_ColorMask
    sw	$at,288($a2)
    # Line 1677
    la	$v1,__glim_IndexMask
    lw	$a1,5640($a0)
    sw	$v1,296($a1)
.L0dafa378:
    # Line 1682
    lw	$a5,5640($a0)
    li	$a2,24
    addiu	$a5,$a5,1484
.L0dafa384:
    addu	$v0,$a3,$a5
    addu	$at,$a3,$a4
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafa384
    sw	$at,0($v0)
    # Line 1683
    li	$a2,42
    lw	$a4,5640($a0)
    move	$a3,$zero
    la	$a5,__glSoftim_colorDispatchTable
    addiu	$a4,$a4,1580
.L0dafa3b4:
    addu	$v0,$a3,$a4
    addu	$at,$a3,$a5
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafa3b4
    sw	$at,0($v0)
    # Line 1684
    li	$a3,10
    lw	$a5,5640($a0)
    move	$a2,$zero
    la	$a4,__glSoftim_normalDispatchTable
    addiu	$a5,$a5,1748
.L0dafa3e4:
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a4
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa3e4
    sw	$at,0($v0)
    # Line 1685
    li	$a3,32
    lw	$a4,5640($a0)
    move	$a2,$zero
    la	$a5,__glSoftim_texCoordDispatchTable
    addiu	$a4,$a4,1788
.L0dafa414:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a5
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa414
    sw	$at,0($v0)
    # Line 1689
    li	$a2,24
    lw	$a4,5640($a0)
    move	$a3,$zero
    la	$a5,__glMG10im_rasterPosDispatchTable
    addiu	$a4,$a4,1916
.L0dafa444:
    addu	$v0,$a3,$a4
    addu	$at,$a3,$a5
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafa444
    sw	$at,0($v0)
    # Line 1690
    li	$a3,8
    lw	$a4,5640($a0)
    move	$a2,$zero
    la	$a5,__glSoftim_rectDispatchTable
    addiu	$a4,$a4,2012
.L0dafa474:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a5
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa474
    sw	$at,0($v0)
    # Line 1692
    # lw $t9, -32708($gp) # &sub_0db00000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-24120
    bal __glMgrPickSpanProcs
    nop
    ld	$ra,0($sp)
    # Line 1693
    jr	$ra
    addiu	$sp,$sp,32
.L0dafa4b0:
    # Line 1680
    la	$at,__glMgrim_IndexMask
    # Line 1679
    la	$v1,__glim_ColorMask
    sw	$v1,288($a2)
    # Line 1680
    lw	$v0,5640($a0)
    b	.L0dafa378
    sw	$at,296($v0)
.end LoadSoftDispatchVectors

# Function: __glMgrSetSoftHardwareState
# Declared: Line 1696 (Source lines: 1696-1743)
# Address: 0x0dafa4c8 - 0x0dafa5dc (Size: 276 bytes, Frame: 0)
.globl __glMgrSetSoftHardwareState
.ent __glMgrSetSoftHardwareState
__glMgrSetSoftHardwareState:
    # Line 1742
    li	$a2,26628
    # Line 1740
    li	$a3,3584
    # Line 1738
    li	$a4,27652
    # Line 1737
    li	$a5,19716
    # Line 1735
    li	$a6,12293
    # Line 1734
    li	$t0,12292
    # Line 1733
    li	$t1,12291
    # Line 1732
    li	$t2,12290
    # Line 1706
    lw	$v0,3416($a0)
    # Line 1731
    li	$t3,12289
    # Line 1730
    li	$t8,12288
    # Line 1717
    mtc1	$v0,$f2
    # Line 1705
    lw	$v1,3412($a0)
    # Line 1703
    li	$a0,13072
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$a0,0($a1)
    sw	$zero,0($a1)
    # Line 1704
    sw	$zero,0($a1)
    # Line 1705
    sw	$v1,0($a1)
    # Line 1706
    sw	$v0,0($a1)
    # Line 1722
    li	$v0,5888
    # Line 1696
    lui	$a7,0x10
    addiu	$a7,$a7,16848
    addu	$at,$t9,$a7
    # Line 1709
    li	$a7,5889
    # Line 1715
    mtc1	$v1,$f4
    # Line 1708
    li	$v1,10756
    sw	$v1,0($a1)
    # Line 1709
    sw	$a7,0($a1)
    # Line 1730
    li	$a7,0xa704
    # Line 1719
    lwc1	$f1,_lit_bf800000
    # Line 1715
    cvt.s.w	$f4,$f4
    # Line 1718
    lwc1	$f0,_lit_3f800000
    # Line 1713
    li	$a0,13592
    # Line 1711
    li	$t9,11264
    # Line 1714
    mtc1	$zero,$f3
    # Line 1717
    cvt.s.w	$f2,$f2
    # Line 1711
    sw	$t9,0($a1)
    # Line 1713
    sw	$a0,0($a1)
    # Line 1714
    swc1	$f3,0($a1)
    # Line 1715
    swc1	$f4,0($a1)
    # Line 1716
    swc1	$f3,0($a1)
    # Line 1717
    swc1	$f2,0($a1)
    # Line 1718
    swc1	$f0,0($a1)
    # Line 1719
    swc1	$f1,0($a1)
    # Line 1721
    sw	$v1,0($a1)
    # Line 1722
    sw	$v0,0($a1)
    # Line 1724
    sw	$t9,0($a1)
    # Line 1730
    sw	$a7,0($a1)
    sw	$t8,0($a1)
    # Line 1731
    sw	$a7,0($a1)
    sw	$t3,0($a1)
    # Line 1732
    sw	$a7,0($a1)
    sw	$t2,0($a1)
    # Line 1733
    sw	$a7,0($a1)
    sw	$t1,0($a1)
    # Line 1734
    sw	$a7,0($a1)
    sw	$t0,0($a1)
    # Line 1735
    sw	$a7,0($a1)
    sw	$a6,0($a1)
    # Line 1737
    sw	$a5,0($a1)
    swc1	$f0,0($a1)
    # Line 1738
    sw	$a4,0($a1)
    sw	$zero,0($a1)
    # Line 1740
    sw	$a3,0($a1)
    # Line 1742
    sw	$a2,0($a1)
    # Line 1743
    jr	$ra
    # Line 1742
    sw	$zero,0($a1)
.end __glMgrSetSoftHardwareState

# Function: __glMgrEnterSoftPath
# Declared: Line 1746 (Source lines: 1746-1815)
# Address: 0x0dafa5dc - 0x0dafa6dc (Size: 256 bytes, Frame: 48)
.globl __glMgrEnterSoftPath
.ent __glMgrEnterSoftPath
__glMgrEnterSoftPath:
    # Line 1746
    li	$a2,1
    li	$v0,7170
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lw	$at,3092($a0)
    lui	$v1,0x10
    addiu	$v1,$v1,16572
    beq	$at,$v0,.L0dafa6c0
    addu	$gp,$t9,$v1
    # Line 1770
    # lw $t9, -32708($gp) # &sub_0db00000
    sd	$ra,16($sp)
    addiu	$t9,$t9,-23776
    bal __glMgrPickStoreProcs
    move	$a0,$s0
    # Line 1791
    lwc1	$f1,_lit_46fffe00
    li	$v0,1
    # Line 1778
    sw	$v0,30848($s0)
    # Line 1777
    sw	$v0,30824($s0)
    # Line 1776
    sw	$v0,30820($s0)
    # Line 1775
    lwc1	$f0,_lit_3f800000
    sw	$v0,30816($s0)
    # Line 1783
    lbu	$at,3104($s0)
    swc1	$f0,30864($s0)
    # Line 1782
    swc1	$f0,30860($s0)
    # Line 1781
    swc1	$f0,30856($s0)
    # Line 1780
    swc1	$f0,30852($s0)
    # Line 1778
    swc1	$f0,30844($s0)
    # Line 1777
    swc1	$f0,30812($s0)
    # Line 1776
    swc1	$f0,30808($s0)
    # Line 1783
    beqz	$at,.L0dafa684
    # Line 1775
    swc1	$f0,30804($s0)
    # Line 1794
    swc1	$f1,31496($s0)
    # Line 1793
    swc1	$f1,31488($s0)
    # Line 1796
    lwc1	$f2,_lit_38000100
    # Line 1792
    swc1	$f1,31492($s0)
    # Line 1791
    swc1	$f1,31484($s0)
    # Line 1799
    swc1	$f2,31512($s0)
    # Line 1798
    swc1	$f2,31508($s0)
    # Line 1797
    swc1	$f2,31504($s0)
    # Line 1796
    swc1	$f2,31500($s0)
.L0dafa684:
    # Line 1805
    # lw $t9, -32708($gp) # &sub_0db00000
    addiu	$t9,$t9,-29240
    bal __glMgrGetViewport
    move	$a0,$s0
    # Line 1807
    # lw $t9, -29676($gp) # &__glMgrSetSoftHardwareState
    bal __glMgrSetSoftHardwareState
    move	$a0,$s0
    # Line 1809
    lw	$t9,11856($s0)
    jal	__glMgrSetSoftHardwareState
    move	$a0,$s0
    # Line 1815
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafa6c0:
    ld	$gp,0($sp)
    # Line 1759
    li	$at,0x9260
    addu	$at,$at,$s0
    # Line 1760
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1759
    sb	$a2,0($at)
.end __glMgrEnterSoftPath

# Function: LoadHardDispatchVectors
# Declared: Line 1818 (Source lines: 1819-1878)
# Address: 0x0dafa6dc - 0x0dafab58 (Size: 1148 bytes, Frame: 0)
.ent LoadHardDispatchVectors
LoadHardDispatchVectors:
    # Line 1819
    lw	$t0,5640($a0)
    lui	$a6,0x1
    addu	$a6,$a0,$a6
    lbu	$at,-25435($a6)
    # Line 1825
    move	$a2,$zero
    la	$a5,__glMgrim_dispatchTable
    # Line 1819
    beqz	$at,.L0dafaa24
    lw	$a4,__glCurrentContext
    # Line 1825
    move	$a7,$t0
    li	$a3,371
.L0dafa704:
    addu	$v0,$a2,$a7
    addu	$at,$a2,$a5
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa704
    sw	$at,0($v0)
    # Line 1826
    li	$a2,24
    lw	$a5,5640($a0)
    move	$a3,$zero
    la	$a7,__glMgrim_rasterPosDispatchTable
    addiu	$a5,$a5,1916
.L0dafa734:
    addu	$v0,$a3,$a5
    addu	$at,$a3,$a7
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafa734
    sw	$at,0($v0)
    # Line 1831
    li	$a3,24
.L0dafa754:
    lw	$a5,5640($a0)
    move	$a2,$zero
    la	$a7,__glMgrim_vertexDispatchTable
    addiu	$a5,$a5,1484
.L0dafa764:
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a7
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa764
    sw	$at,0($v0)
    # Line 1832
    li	$a3,10
    lw	$a5,5640($a0)
    move	$a2,$zero
    la	$a7,__glMgrim_normalDispatchTable
    addiu	$a5,$a5,1748
.L0dafa794:
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a7
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa794
    sw	$at,0($v0)
    # Line 1833
    li	$a3,32
    lw	$a5,5640($a0)
    move	$a2,$zero
    la	$a7,__glMgrim_texCoordDispatchTable
    addiu	$a5,$a5,1788
.L0dafa7c4:
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a7
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa7c4
    sw	$at,0($v0)
    # Line 1834
    li	$a3,8
    lw	$a5,5640($a0)
    move	$a2,$zero
    la	$a7,__glMgrim_rectDispatchTable
    addiu	$a5,$a5,2012
.L0dafa7f4:
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a7
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa7f4
    sw	$at,0($v0)
    # Line 1837
    move	$a3,$zero
    # Line 1834
    lbu	$v0,-25435($a6)
    # Line 1837
    la	$a6,__glmglc_dispatchTable
    # Line 1834
    beqz	$v0,.L0dafaa88
    # Line 1837
    li	$a2,371
    addiu	$a5,$a0,5648
.L0dafa828:
    addu	$a1,$a3,$a5
    addu	$v1,$a3,$a6
    addiu	$a3,$a3,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafa828
    sw	$v1,0($a1)
    # Line 1841
    li	$a3,24
.L0dafa848:
    move	$a2,$zero
    addiu	$a5,$a0,7132
    la	$a6,__glmglc_vertexDispatchTable
.L0dafa854:
    addu	$at,$a2,$a5
    addu	$a1,$a2,$a6
    addiu	$a2,$a2,4
    lw	$a1,0($a1)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa854
    sw	$a1,0($at)
    # Line 1842
    li	$a2,10
    move	$a3,$zero
    addiu	$a5,$a0,7396
    la	$a6,__glmglc_normalDispatchTable
.L0dafa880:
    addu	$v0,$a3,$a5
    addu	$at,$a3,$a6
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafa880
    sw	$at,0($v0)
    # Line 1843
    li	$a3,24
    move	$a2,$zero
    addiu	$a5,$a0,7564
    la	$a6,__glmglc_rasterPosDispatchTable
.L0dafa8ac:
    addu	$v1,$a2,$a5
    addu	$v0,$a2,$a6
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa8ac
    sw	$v0,0($v1)
    # Line 1844
    li	$a3,8
    move	$a2,$zero
    addiu	$a5,$a0,7660
    la	$a6,__glmglc_rectDispatchTable
.L0dafa8d8:
    addu	$a1,$a2,$a5
    addu	$v1,$a2,$a6
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa8d8
    sw	$v1,0($a1)
    # Line 1845
    li	$a2,32
    move	$a3,$zero
    addiu	$a5,$a0,7436
    la	$a6,__glmglc_texCoordDispatchTable
.L0dafa904:
    addu	$at,$a3,$a5
    addu	$a1,$a3,$a6
    addiu	$a3,$a3,4
    lw	$a1,0($a1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafa904
    sw	$a1,0($at)
    # Line 1848
    li	$a3,42
    move	$a2,$zero
    # Line 1845
    lbu	$t0,3104($a0)
    # Line 1849
    la	$a1,__glMgrim_ColorMask
    # Line 1845
    beqz	$t0,.L0dafaabc
    lw	$t0,5640($a0)
    # Line 1848
    la	$a6,__glMgrim_shadowIndexcolorDispatchTable
    addiu	$a5,$t0,1580
.L0dafa940:
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a6
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa940
    sw	$at,0($v0)
    # Line 1849
    lw	$a5,5640($a0)
    # Line 1851
    li	$a3,42
    move	$a2,$zero
    # Line 1849
    sw	$a1,288($a5)
    # Line 1850
    la	$v0,__glim_IndexMask
    lw	$v1,5640($a0)
    # Line 1851
    la	$a6,__glmglc_shadowIndexcolorDispatchTable
    addiu	$a5,$a0,7228
    # Line 1850
    sw	$v0,296($v1)
    # Line 1853
    la	$v1,__glsplc_IndexMask
.L0dafa984:
    # Line 1851
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a6
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafa984
    sw	$at,0($v0)
    # Line 1852
    la	$v0,__glMgrlc_ColorMask
    # Line 1853
    sw	$v1,5944($a0)
    # Line 1852
    sw	$v0,5936($a0)
.L0dafa9ac:
    # Line 1865
    la	$a1,__glMgrBeginPoints
    sw	$a1,12100($a4)
    # Line 1869
    la	$a1,__glMgrBeginTriangles
    sw	$a1,12116($a4)
    # Line 1862
    la	$v1,__glMgrBeginLLoop
    # Line 1864
    la	$at,__glMgrBeginLines
    # Line 1863
    la	$v0,__glMgrBeginLStrip
    # Line 1862
    sw	$v1,12108($a4)
    # Line 1866
    la	$v1,__glMgrBeginPolygon
    # Line 1863
    sw	$v0,12112($a4)
    # Line 1867
    la	$v0,__glMgrBeginTStrip
    # Line 1864
    sw	$at,12104($a4)
    # Line 1868
    la	$at,__glMgrBeginTFan
    # Line 1867
    sw	$v0,12120($a4)
    # Line 1871
    la	$v0,__glMgrBeginQuads
    # Line 1868
    sw	$at,12124($a4)
    # Line 1872
    la	$at,__glEndPrim
    # Line 1866
    sw	$v1,12136($a4)
    # Line 1870
    la	$v1,__glMgrBeginQStrip
    # Line 1872
    sw	$at,12140($a4)
    # Line 1871
    sw	$v0,12128($a4)
    # Line 1870
    sw	$v1,12132($a4)
    # Line 1872
    lbu	$a1,3108($a0)
    beqz	$a1,.L0dafaa1c
    nop
    lbu	$a1,31613($a0)
    beqz	$a1,.L0dafab40
    # Line 1875
    la	$at,__glMgrim_SoftAccum
.L0dafaa1c:
    # Line 1878
    jr	$ra
    nop
.L0dafaa24:
    # Line 1828
    li	$a2,371
    move	$a3,$zero
    move	$a7,$t0
    la	$a5,__glMG10im_dispatchTable
.L0dafaa34:
    addu	$v0,$a3,$a7
    addu	$at,$a3,$a5
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafaa34
    sw	$at,0($v0)
    # Line 1829
    li	$a3,24
    lw	$a5,5640($a0)
    move	$a2,$zero
    la	$a7,__glMG10im_rasterPosDispatchTable
    addiu	$a5,$a5,1916
.L0dafaa64:
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a7
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafaa64
    sw	$at,0($v0)
    b	.L0dafa754
    # Line 1831
    li	$a3,24
.L0dafaa88:
    # Line 1839
    addiu	$a5,$a0,5648
    li	$a2,371
    move	$a3,$zero
    la	$a6,__glMG10splc_dispatchTable
.L0dafaa98:
    addu	$v1,$a3,$a5
    addu	$v0,$a3,$a6
    addiu	$a3,$a3,4
    lw	$v0,0($v0)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafaa98
    sw	$v0,0($v1)
    b	.L0dafa848
    # Line 1841
    li	$a3,24
.L0dafaabc:
    # Line 1855
    la	$a6,__glMgrim_shadowRGBcolorDispatchTable
    li	$a2,42
    move	$a3,$zero
    addiu	$a5,$t0,1580
.L0dafaacc:
    addu	$a1,$a3,$a5
    addu	$v1,$a3,$a6
    addiu	$a3,$a3,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0dafaacc
    sw	$v1,0($a1)
    # Line 1856
    la	$v0,__glim_ColorMask
    lw	$v1,5640($a0)
    # Line 1858
    li	$a3,42
    move	$a2,$zero
    # Line 1856
    sw	$v0,288($v1)
    # Line 1857
    la	$a1,__glMgrim_IndexMask
    lw	$at,5640($a0)
    # Line 1858
    addiu	$a5,$a0,7228
    la	$a6,__glmglc_shadowRGBcolorDispatchTable
    # Line 1857
    sw	$a1,296($at)
.L0dafab10:
    # Line 1858
    addu	$at,$a2,$a5
    addu	$a1,$a2,$a6
    addiu	$a2,$a2,4
    lw	$a1,0($a1)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0dafab10
    sw	$a1,0($at)
    # Line 1860
    la	$v0,__glMgrlc_IndexMask
    # Line 1859
    la	$at,__glsplc_ColorMask
    # Line 1860
    sw	$v0,5944($a0)
    b	.L0dafa9ac
    # Line 1859
    sw	$at,5936($a0)
.L0dafab40:
    # Line 1875
    lw	$v0,5640($a0)
    sw	$at,300($v0)
    # Line 1876
    la	$v1,__glim_ClearAccum
    lw	$a1,5640($a0)
    # Line 1878
    jr	$ra
    # Line 1876
    sw	$v1,264($a1)
.end LoadHardDispatchVectors

# Function: __glMgrPassAccum
# Declared: Line 1882 (Source lines: 1882-1886)
# Address: 0x0dafab58 - 0x0dafab9c (Size: 68 bytes, Frame: 32)
.globl __glMgrPassAccum
.ent __glMgrPassAccum
__glMgrPassAccum:
    # Line 1883
    lw	$at,__glCurrentContext
    # Line 1882
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 1884
    lwc1	$f15,1564($at)
    sd	$gp,8($sp)
    # Line 1882
    lui	$v0,0x10
    addiu	$v0,$v0,15168
    addu	$gp,$t9,$v0
    # Line 1884
    # lw $t9, -31168($gp) # &__glMgrim_ClearAccum
    lwc1	$f14,1560($at)
    lwc1	$f13,1556($at)
    jal	__glMgrim_ClearAccum
    lwc1	$f12,1552($at)
    # Line 1886
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrPassAccum

# Function: __glMgrPassColorBuffer
# Declared: Line 1890 (Source lines: 1890-1917)
# Address: 0x0dafab9c - 0x0dafad44 (Size: 424 bytes, Frame: 48)
.globl __glMgrPassColorBuffer
.ent __glMgrPassColorBuffer
__glMgrPassColorBuffer:
    # Line 1890
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s3,8($sp)
    # Line 1891
    lw	$s3,__glCurrentContext
    sd	$a1,0($sp)
    sd	$gp,16($sp)
    lw	$at,1696($s3)
    # Line 1890
    lui	$v0,0x10
    addiu	$v0,$v0,15100
    # Line 1891
    andi	$at,$at,0x1
    beqz	$at,.L0daface0
    # Line 1890
    addu	$gp,$t9,$v0
    # Line 1893
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3008
    lw	$v1,1696($s3)
.L0dafabdc:
    andi	$v1,$v1,0x2
    beqz	$v1,.L0dafacf4
    # Line 1894
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3042
    lw	$a0,1696($s3)
.L0dafabf4:
    andi	$a0,$a0,0x8
    beqz	$a0,.L0dafad08
    # Line 1895
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3024
    lw	$at,1696($s3)
.L0dafac0c:
    andi	$at,$at,0x4
    beqz	$at,.L0dafad1c
    # Line 1896
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3057
    lw	$v0,1696($s3)
.L0dafac24:
    andi	$v0,$v0,0x800
    beqz	$v0,.L0dafad30
    # Line 1897
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3058
    ld	$v1,0($sp)
.L0dafac3c:
    beqz	$v1,.L0dafacc0
    # Line 1900
    nop	# was lw $t9, -32104($gp) # &__glMgrim_AlphaFunc
    lwc1	$f13,1724($s3)
    jal	__glMgrim_AlphaFunc
    lw	$a0,1720($s3)
    # Line 1902
    # lw $t9, -32096($gp) # &__glMgrim_BlendFunc
    lw	$a1,1732($s3)
    jal	__glMgrim_BlendFunc
    lw	$a0,1728($s3)
    # Line 1904
    # lw $t9, -32100($gp) # &__glMgrim_BlendEquationEXT
    jal	__glMgrim_BlendEquationEXT
    lw	$a0,1736($s3)
    # Line 1905
    # lw $t9, -32092($gp) # &__glMgrim_LogicOp
    jal	__glMgrim_LogicOp
    lw	$a0,1756($s3)
    # Line 1906
    lbu	$a3,1787($s3)
    # lw $t9, -32116($gp) # &__glMgrim_ColorMask
    lbu	$a2,1786($s3)
    lbu	$a1,1785($s3)
    jal	__glMgrim_ColorMask
    lbu	$a0,1784($s3)
    # Line 1908
    # lw $t9, -32108($gp) # &__glMgrim_IndexMask
    jal	__glMgrim_IndexMask
    lw	$a0,1780($s3)
    # Line 1909
    lwc1	$f15,1772($s3)
    # lw $t9, -31172($gp) # &__glMgrim_ClearColor
    lwc1	$f14,1768($s3)
    lwc1	$f13,1764($s3)
    jal	__glMgrim_ClearColor
    lwc1	$f12,1760($s3)
    # Line 1913
    # lw $t9, -31160($gp) # &__glMgrim_ClearIndex
    jal	__glMgrim_ClearIndex
    lwc1	$f12,1776($s3)
.L0dafacc0:
    # Line 1916
    # lw $t9, -32052($gp) # &__glMgrim_DrawBuffer
    jal	__glMgrim_DrawBuffer
    lw	$a0,1792($s3)
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    # Line 1917
    jr	$ra
    addiu	$sp,$sp,48
.L0daface0:
    # Line 1893
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3008
    b	.L0dafabdc
    lw	$v1,1696($s3)
.L0dafacf4:
    # Line 1894
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3042
    b	.L0dafabf4
    lw	$a0,1696($s3)
.L0dafad08:
    # Line 1895
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3024
    b	.L0dafac0c
    lw	$at,1696($s3)
.L0dafad1c:
    # Line 1896
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3057
    b	.L0dafac24
    lw	$v0,1696($s3)
.L0dafad30:
    # Line 1897
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3058
    b	.L0dafac3c
    ld	$v1,0($sp)
.end __glMgrPassColorBuffer

# Function: __glMgrPassCurrentBuffer
# Declared: Line 1921 (Source lines: 1921-1943)
# Address: 0x0dafad44 - 0x0dafadec (Size: 168 bytes, Frame: 48)
.globl __glMgrPassCurrentBuffer
.ent __glMgrPassCurrentBuffer
__glMgrPassCurrentBuffer:
    # Line 1921
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    # Line 1922
    lw	$s7,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1921
    lui	$at,0x10
    addiu	$at,$at,14676
    addu	$gp,$t9,$at
    # Line 1924
    # lw $t9, -31136($gp) # &__glMgrRestoreRasterPosition
    sd	$ra,0($sp)
    lbu	$a1,428($s7)
    jal	__glMgrRestoreRasterPosition
    addiu	$a0,$s7,216
    # Line 1927
    lw	$t9,5640($s7)
    lwc1	$f15,420($s7)
    lw	$t9,1660($t9)
    lwc1	$f14,416($s7)
    lwc1	$f13,412($s7)
    jalr	$t9
    lwc1	$f12,408($s7)
    # Line 1931
    lw	$t9,5640($s7)
    lw	$t9,1716($t9)
    jalr	$t9
    lwc1	$f12,424($s7)
    # Line 1933
    # lw $t9, -18488($gp) # &__glMgrim_Normal3f
    lwc1	$f14,192($s7)
    lwc1	$f13,188($s7)
    jal	__glMgrim_Normal3f
    lwc1	$f12,184($s7)
    # Line 1937
    lwc1	$f15,212($s7)
    # lw $t9, -18264($gp) # &__glMgrim_TexCoord4f
    lwc1	$f14,208($s7)
    lwc1	$f13,204($s7)
    jal	__glMgrim_TexCoord4f
    lwc1	$f12,200($s7)
    # Line 1942
    # lw $t9, -31292($gp) # &__glMgrim_EdgeFlag
    jal	__glMgrim_EdgeFlag
    lbu	$a0,429($s7)
    # Line 1943
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrPassCurrentBuffer

# Function: __glMgrPassDepthBuffer
# Declared: Line 1947 (Source lines: 1947-1957)
# Address: 0x0dafadec - 0x0dafae80 (Size: 148 bytes, Frame: 48)
.globl __glMgrPassDepthBuffer
.ent __glMgrPassDepthBuffer
__glMgrPassDepthBuffer:
    # Line 1947
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s4,8($sp)
    # Line 1948
    lw	$s4,__glCurrentContext
    sd	$a1,0($sp)
    sd	$gp,16($sp)
    lw	$at,1696($s4)
    # Line 1947
    lui	$v0,0x10
    addiu	$v0,$v0,14508
    # Line 1948
    andi	$at,$at,0x10
    beqz	$at,.L0dafae6c
    # Line 1947
    addu	$gp,$t9,$v0
    # Line 1950
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2929
    ld	$ra,24($sp)
.L0dafae2c:
    ld	$v1,0($sp)
    beqz	$v1,.L0dafae5c
    # Line 1953
    nop	# was lw $t9, -32080($gp) # &__glMgrim_DepthFunc
    jal	__glMgrim_DepthFunc
    lw	$a0,1536($s4)
    # Line 1954
    # lw $t9, -32112($gp) # &__glMgrim_DepthMask
    jal	__glMgrim_DepthMask
    lbu	$a0,1540($s4)
    # Line 1955
    # lw $t9, -31164($gp) # &__glMgrim_ClearDepth
    jal	__glMgrim_ClearDepth
    ldc1	$f12,1544($s4)
    ld	$ra,24($sp)
.L0dafae5c:
    ld	$gp,16($sp)
    # Line 1957
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafae6c:
    # Line 1950
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2929
    b	.L0dafae2c
    ld	$ra,24($sp)
.end __glMgrPassDepthBuffer

# Function: __glMgrPassEnables
# Declared: Line 1961 (Source lines: 1961-2031)
# Address: 0x0dafae80 - 0x0dafb9f0 (Size: 2928 bytes, Frame: 48)
.globl __glMgrPassEnables
.ent __glMgrPassEnables
__glMgrPassEnables:
    # Line 1961
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    # Line 1962
    lw	$s7,__glCurrentContext
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    lw	$at,1696($s7)
    # Line 1961
    lui	$v0,0x10
    addiu	$v0,$v0,14360
    # Line 1962
    andi	$at,$at,0x1
    beqz	$at,.L0dafb4ec
    # Line 1961
    addu	$gp,$t9,$v0
    # Line 1964
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3008
    lw	$v1,1696($s7)
.L0dafaebc:
    lui	$a0,0x80
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafb500
    # Line 1965
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3456
    lw	$at,1696($s7)
.L0dafaed8:
    andi	$at,$at,0x2
    beqz	$at,.L0dafb514
    # Line 1966
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3042
    lw	$v0,1696($s7)
.L0dafaef0:
    andi	$v0,$v0,0x1000
    beqz	$v0,.L0dafb528
    # Line 1967
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2884
    lw	$v1,1696($s7)
.L0dafaf08:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0dafb53c
    # Line 1968
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3057
    lw	$a0,1696($s7)
.L0dafaf20:
    andi	$a0,$a0,0x800
    beqz	$a0,.L0dafb550
    # Line 1969
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3058
    lw	$at,1696($s7)
.L0dafaf38:
    andi	$at,$at,0x10
    beqz	$at,.L0dafb564
    # Line 1970
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2929
    lw	$v0,1696($s7)
.L0dafaf50:
    andi	$v0,$v0,0x8
    beqz	$v0,.L0dafb578
    # Line 1971
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3024
    lw	$v1,1696($s7)
.L0dafaf68:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0dafb58c
    # Line 1972
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2903
    lw	$a0,1696($s7)
.L0dafaf80:
    andi	$a0,$a0,0x20
    beqz	$a0,.L0dafb5a0
    # Line 1973
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2912
    lw	$at,1696($s7)
.L0dafaf98:
    andi	$at,$at,0x200
    beqz	$at,.L0dafb5b4
    # Line 1974
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2848
    lw	$v0,1696($s7)
.L0dafafb0:
    andi	$v0,$v0,0x100
    beqz	$v0,.L0dafb5c8
    # Line 1975
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2852
    lw	$v1,1696($s7)
.L0dafafc8:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0dafb5dc
    # Line 1976
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3057
    lw	$a0,1696($s7)
.L0dafafe0:
    lui	$at,0x40
    and	$a0,$a0,$at
    beqz	$a0,.L0dafb5f0
    # Line 1977
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2977
    lw	$v0,1696($s7)
.L0dafaffc:
    andi	$v0,$v0,0x400
    beqz	$v0,.L0dafb604
    # Line 1978
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2832
    lw	$v1,1696($s7)
.L0dafb014:
    andi	$v1,$v1,0x800
    beqz	$v1,.L0dafb618
    # Line 1979
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2881
    lw	$a0,1696($s7)
.L0dafb02c:
    andi	$a0,$a0,0x2000
    beqz	$a0,.L0dafb62c
    # Line 1980
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2882
    lw	$at,1696($s7)
.L0dafb044:
    andi	$at,$at,0x4000
    beqz	$at,.L0dafb640
    # Line 1981
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3089
    lw	$v0,1696($s7)
.L0dafb05c:
    andi	$v0,$v0,0x8000
    beqz	$v0,.L0dafb654
    # Line 1982
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2960
    lw	$v1,1696($s7)
.L0dafb074:
    lui	$a0,0x1
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafb668
    # Line 1983
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3552
    lw	$at,1696($s7)
.L0dafb090:
    lui	$v0,0x2
    and	$at,$at,$v0
    beqz	$at,.L0dafb67c
    # Line 1984
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3553
    lw	$v1,1696($s7)
.L0dafb0ac:
    lui	$a0,0x4
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafb690
    # Line 1985
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3168
    lw	$at,1696($s7)
.L0dafb0c8:
    lui	$v0,0x8
    and	$at,$at,$v0
    beqz	$at,.L0dafb6a4
    # Line 1986
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3169
    lw	$v1,1696($s7)
.L0dafb0e4:
    lui	$a0,0x10
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafb6b8
    # Line 1987
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3170
    lw	$at,1696($s7)
.L0dafb100:
    lui	$v0,0x20
    and	$at,$at,$v0
    beqz	$at,.L0dafb6cc
    # Line 1988
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3171
    lw	$v1,1696($s7)
.L0dafb11c:
    lui	$a0,0x100
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafb6e0
    # Line 1989
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8037
    lw	$at,1708($s7)
.L0dafb138:
    andi	$at,$at,0x1
    beqz	$at,.L0dafb6f4
    # Line 1990
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12288
    lw	$v0,1708($s7)
.L0dafb150:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0dafb708
    # Line 1991
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12289
    lw	$v1,1708($s7)
.L0dafb168:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0dafb71c
    # Line 1992
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12290
    lw	$a0,1708($s7)
.L0dafb180:
    andi	$a0,$a0,0x8
    beqz	$a0,.L0dafb730
    # Line 1993
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12291
    lw	$at,1708($s7)
.L0dafb198:
    andi	$at,$at,0x10
    beqz	$at,.L0dafb744
    # Line 1994
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12292
    lw	$v0,1708($s7)
.L0dafb1b0:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0dafb758
    # Line 1995
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12293
    lw	$v1,1696($s7)
.L0dafb1c8:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0dafb76c
    # Line 1996
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2896
    lw	$a0,1704($s7)
.L0dafb1e0:
    andi	$a0,$a0,0x1
    beqz	$a0,.L0dafb780
    # Line 1997
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16384
    lw	$at,1704($s7)
.L0dafb1f8:
    andi	$at,$at,0x2
    beqz	$at,.L0dafb794
    # Line 1998
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16385
    lw	$v0,1704($s7)
.L0dafb210:
    andi	$v0,$v0,0x4
    beqz	$v0,.L0dafb7a8
    # Line 1999
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16386
    lw	$v1,1704($s7)
.L0dafb228:
    andi	$v1,$v1,0x8
    beqz	$v1,.L0dafb7bc
    # Line 2000
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16387
    lw	$a0,1704($s7)
.L0dafb240:
    andi	$a0,$a0,0x10
    beqz	$a0,.L0dafb7d0
    # Line 2001
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16388
    lw	$at,1704($s7)
.L0dafb258:
    andi	$at,$at,0x20
    beqz	$at,.L0dafb7e4
    # Line 2002
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16389
    lw	$v0,1704($s7)
.L0dafb270:
    andi	$v0,$v0,0x40
    beqz	$v0,.L0dafb7f8
    # Line 2003
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16390
    lw	$v1,1704($s7)
.L0dafb288:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0dafb80c
    # Line 2004
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16391
    lw	$a0,1696($s7)
.L0dafb2a0:
    lui	$at,0x1000
    and	$a0,$a0,$at
    beqz	$a0,.L0dafb820
    # Line 2006
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8024
    lw	$v0,1696($s7)
.L0dafb2bc:
    lui	$v1,0x2000
    and	$v0,$v0,$v1
    beqz	$v0,.L0dafb834
    # Line 2007
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x802e
    lw	$a0,1696($s7)
.L0dafb2d8:
    lui	$at,0x200
    and	$a0,$a0,$at
    beqz	$a0,.L0dafb848
    # Line 2008
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8010
    lw	$v0,1696($s7)
.L0dafb2f4:
    lui	$v1,0x400
    and	$v0,$v0,$v1
    beqz	$v0,.L0dafb85c
    # Line 2009
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8011
    lw	$a0,1696($s7)
.L0dafb310:
    lui	$at,0x800
    and	$a0,$a0,$at
    beqz	$a0,.L0dafb870
    # Line 2010
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8012
    lw	$v0,1712($s7)
.L0dafb32c:
    andi	$v0,$v0,0x80
    beqz	$v0,.L0dafb884
    # Line 2012
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3479
    lw	$v1,1712($s7)
.L0dafb344:
    andi	$v1,$v1,0x100
    beqz	$v1,.L0dafb898
    # Line 2013
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3480
    lw	$a0,1712($s7)
.L0dafb35c:
    andi	$a0,$a0,0x2
    beqz	$a0,.L0dafb8ac
    # Line 2014
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3473
    lw	$at,1712($s7)
.L0dafb374:
    andi	$at,$at,0x1
    beqz	$at,.L0dafb8c0
    # Line 2015
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3472
    lw	$v0,1712($s7)
.L0dafb38c:
    andi	$v0,$v0,0x4
    beqz	$v0,.L0dafb8d4
    # Line 2016
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3474
    lw	$v1,1712($s7)
.L0dafb3a4:
    andi	$v1,$v1,0x8
    beqz	$v1,.L0dafb8e8
    # Line 2017
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3475
    lw	$a0,1712($s7)
.L0dafb3bc:
    andi	$a0,$a0,0x10
    beqz	$a0,.L0dafb8fc
    # Line 2018
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3476
    lw	$at,1712($s7)
.L0dafb3d4:
    andi	$at,$at,0x20
    beqz	$at,.L0dafb910
    # Line 2019
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3477
    lw	$v0,1712($s7)
.L0dafb3ec:
    andi	$v0,$v0,0x40
    beqz	$v0,.L0dafb924
    # Line 2020
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3478
    lw	$v1,1716($s7)
.L0dafb404:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0dafb938
    # Line 2022
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3511
    lw	$a0,1716($s7)
.L0dafb41c:
    andi	$a0,$a0,0x100
    beqz	$a0,.L0dafb94c
    # Line 2023
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3512
    lw	$at,1716($s7)
.L0dafb434:
    andi	$at,$at,0x2
    beqz	$at,.L0dafb960
    # Line 2024
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3505
    lw	$v0,1716($s7)
.L0dafb44c:
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dafb974
    # Line 2025
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3504
    lw	$v1,1716($s7)
.L0dafb464:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0dafb988
    # Line 2026
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3506
    lw	$a0,1716($s7)
.L0dafb47c:
    andi	$a0,$a0,0x8
    beqz	$a0,.L0dafb99c
    # Line 2027
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3507
    lw	$at,1716($s7)
.L0dafb494:
    andi	$at,$at,0x10
    beqz	$at,.L0dafb9b0
    # Line 2028
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3508
    lw	$v0,1716($s7)
.L0dafb4ac:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0dafb9c4
    # Line 2029
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3509
    lw	$v1,1716($s7)
.L0dafb4c4:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0dafb9d8
    # Line 2030
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    li	$a0,3510
    jal	__glMgrim_Enable
    ld	$s7,0($sp)
    ld	$ra,16($sp)
.L0dafb4e0:
    ld	$gp,8($sp)
    # Line 2031
    jr	$ra
    addiu	$sp,$sp,48
.L0dafb4ec:
    # Line 1964
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3008
    b	.L0dafaebc
    lw	$v1,1696($s7)
.L0dafb500:
    # Line 1965
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3456
    b	.L0dafaed8
    lw	$at,1696($s7)
.L0dafb514:
    # Line 1966
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3042
    b	.L0dafaef0
    lw	$v0,1696($s7)
.L0dafb528:
    # Line 1967
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2884
    b	.L0dafaf08
    lw	$v1,1696($s7)
.L0dafb53c:
    # Line 1968
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3057
    b	.L0dafaf20
    lw	$a0,1696($s7)
.L0dafb550:
    # Line 1969
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3058
    b	.L0dafaf38
    lw	$at,1696($s7)
.L0dafb564:
    # Line 1970
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2929
    b	.L0dafaf50
    lw	$v0,1696($s7)
.L0dafb578:
    # Line 1971
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3024
    b	.L0dafaf68
    lw	$v1,1696($s7)
.L0dafb58c:
    # Line 1972
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2903
    b	.L0dafaf80
    lw	$a0,1696($s7)
.L0dafb5a0:
    # Line 1973
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2912
    b	.L0dafaf98
    lw	$at,1696($s7)
.L0dafb5b4:
    # Line 1974
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2848
    b	.L0dafafb0
    lw	$v0,1696($s7)
.L0dafb5c8:
    # Line 1975
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2852
    b	.L0dafafc8
    lw	$v1,1696($s7)
.L0dafb5dc:
    # Line 1976
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3057
    b	.L0dafafe0
    lw	$a0,1696($s7)
.L0dafb5f0:
    # Line 1977
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2977
    b	.L0dafaffc
    lw	$v0,1696($s7)
.L0dafb604:
    # Line 1978
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2832
    b	.L0dafb014
    lw	$v1,1696($s7)
.L0dafb618:
    # Line 1979
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2881
    b	.L0dafb02c
    lw	$a0,1696($s7)
.L0dafb62c:
    # Line 1980
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2882
    b	.L0dafb044
    lw	$at,1696($s7)
.L0dafb640:
    # Line 1981
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3089
    b	.L0dafb05c
    lw	$v0,1696($s7)
.L0dafb654:
    # Line 1982
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2960
    b	.L0dafb074
    lw	$v1,1696($s7)
.L0dafb668:
    # Line 1983
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3552
    b	.L0dafb090
    lw	$at,1696($s7)
.L0dafb67c:
    # Line 1984
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3553
    b	.L0dafb0ac
    lw	$v1,1696($s7)
.L0dafb690:
    # Line 1985
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3168
    b	.L0dafb0c8
    lw	$at,1696($s7)
.L0dafb6a4:
    # Line 1986
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3169
    b	.L0dafb0e4
    lw	$v1,1696($s7)
.L0dafb6b8:
    # Line 1987
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3170
    b	.L0dafb100
    lw	$at,1696($s7)
.L0dafb6cc:
    # Line 1988
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3171
    b	.L0dafb11c
    lw	$v1,1696($s7)
.L0dafb6e0:
    # Line 1989
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8037
    b	.L0dafb138
    lw	$at,1708($s7)
.L0dafb6f4:
    # Line 1990
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12288
    b	.L0dafb150
    lw	$v0,1708($s7)
.L0dafb708:
    # Line 1991
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12289
    b	.L0dafb168
    lw	$v1,1708($s7)
.L0dafb71c:
    # Line 1992
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12290
    b	.L0dafb180
    lw	$a0,1708($s7)
.L0dafb730:
    # Line 1993
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12291
    b	.L0dafb198
    lw	$at,1708($s7)
.L0dafb744:
    # Line 1994
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12292
    b	.L0dafb1b0
    lw	$v0,1708($s7)
.L0dafb758:
    # Line 1995
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12293
    b	.L0dafb1c8
    lw	$v1,1696($s7)
.L0dafb76c:
    # Line 1996
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2896
    b	.L0dafb1e0
    lw	$a0,1704($s7)
.L0dafb780:
    # Line 1997
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16384
    b	.L0dafb1f8
    lw	$at,1704($s7)
.L0dafb794:
    # Line 1998
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16385
    b	.L0dafb210
    lw	$v0,1704($s7)
.L0dafb7a8:
    # Line 1999
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16386
    b	.L0dafb228
    lw	$v1,1704($s7)
.L0dafb7bc:
    # Line 2000
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16387
    b	.L0dafb240
    lw	$a0,1704($s7)
.L0dafb7d0:
    # Line 2001
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16388
    b	.L0dafb258
    lw	$at,1704($s7)
.L0dafb7e4:
    # Line 2002
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16389
    b	.L0dafb270
    lw	$v0,1704($s7)
.L0dafb7f8:
    # Line 2003
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16390
    b	.L0dafb288
    lw	$v1,1704($s7)
.L0dafb80c:
    # Line 2004
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16391
    b	.L0dafb2a0
    lw	$a0,1696($s7)
.L0dafb820:
    # Line 2006
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8024
    b	.L0dafb2bc
    lw	$v0,1696($s7)
.L0dafb834:
    # Line 2007
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x802e
    b	.L0dafb2d8
    lw	$a0,1696($s7)
.L0dafb848:
    # Line 2008
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8010
    b	.L0dafb2f4
    lw	$v0,1696($s7)
.L0dafb85c:
    # Line 2009
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8011
    b	.L0dafb310
    lw	$a0,1696($s7)
.L0dafb870:
    # Line 2010
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8012
    b	.L0dafb32c
    lw	$v0,1712($s7)
.L0dafb884:
    # Line 2012
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3479
    b	.L0dafb344
    lw	$v1,1712($s7)
.L0dafb898:
    # Line 2013
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3480
    b	.L0dafb35c
    lw	$a0,1712($s7)
.L0dafb8ac:
    # Line 2014
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3473
    b	.L0dafb374
    lw	$at,1712($s7)
.L0dafb8c0:
    # Line 2015
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3472
    b	.L0dafb38c
    lw	$v0,1712($s7)
.L0dafb8d4:
    # Line 2016
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3474
    b	.L0dafb3a4
    lw	$v1,1712($s7)
.L0dafb8e8:
    # Line 2017
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3475
    b	.L0dafb3bc
    lw	$a0,1712($s7)
.L0dafb8fc:
    # Line 2018
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3476
    b	.L0dafb3d4
    lw	$at,1712($s7)
.L0dafb910:
    # Line 2019
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3477
    b	.L0dafb3ec
    lw	$v0,1712($s7)
.L0dafb924:
    # Line 2020
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3478
    b	.L0dafb404
    lw	$v1,1716($s7)
.L0dafb938:
    # Line 2022
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3511
    b	.L0dafb41c
    lw	$a0,1716($s7)
.L0dafb94c:
    # Line 2023
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3512
    b	.L0dafb434
    lw	$at,1716($s7)
.L0dafb960:
    # Line 2024
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3505
    b	.L0dafb44c
    lw	$v0,1716($s7)
.L0dafb974:
    # Line 2025
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3504
    b	.L0dafb464
    lw	$v1,1716($s7)
.L0dafb988:
    # Line 2026
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3506
    b	.L0dafb47c
    lw	$a0,1716($s7)
.L0dafb99c:
    # Line 2027
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3507
    b	.L0dafb494
    lw	$at,1716($s7)
.L0dafb9b0:
    # Line 2028
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3508
    b	.L0dafb4ac
    lw	$v0,1716($s7)
.L0dafb9c4:
    # Line 2029
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3509
    b	.L0dafb4c4
    lw	$v1,1716($s7)
.L0dafb9d8:
    # Line 2030
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    li	$a0,3510
    jal	__glMgrim_Disable
    ld	$s7,0($sp)
    b	.L0dafb4e0
    ld	$ra,16($sp)
.end __glMgrPassEnables

# Function: __glMgrPassEval
# Declared: Line 2035 (Source lines: 2035-2061)
# Address: 0x0dafb9f0 - 0x0dafbd78 (Size: 904 bytes, Frame: 48)
.globl __glMgrPassEval
.ent __glMgrPassEval
__glMgrPassEval:
    # Line 2035
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s7,0($sp)
    # Line 2036
    lw	$s7,__glCurrentContext
    sd	$gp,8($sp)
    lui	$v1,0x80
    lw	$at,1696($s7)
    # Line 2035
    lui	$v0,0x10
    addiu	$v0,$v0,11432
    # Line 2036
    and	$at,$at,$v1
    beqz	$at,.L0dafbbfc
    # Line 2035
    addu	$gp,$t9,$v0
    # Line 2038
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3456
    lw	$v1,1712($s7)
.L0dafba30:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0dafbc10
    # Line 2040
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3479
    lw	$a1,1712($s7)
.L0dafba48:
    andi	$a1,$a1,0x100
    beqz	$a1,.L0dafbc24
    # Line 2041
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3480
    lw	$at,1712($s7)
.L0dafba60:
    andi	$at,$at,0x2
    beqz	$at,.L0dafbc38
    # Line 2042
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3473
    lw	$v0,1712($s7)
.L0dafba78:
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dafbc4c
    # Line 2043
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3472
    lw	$v1,1712($s7)
.L0dafba90:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0dafbc60
    # Line 2044
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3474
    lw	$a1,1712($s7)
.L0dafbaa8:
    andi	$a1,$a1,0x8
    beqz	$a1,.L0dafbc74
    # Line 2045
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3475
    lw	$at,1712($s7)
.L0dafbac0:
    andi	$at,$at,0x10
    beqz	$at,.L0dafbc88
    # Line 2046
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3476
    lw	$v0,1712($s7)
.L0dafbad8:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0dafbc9c
    # Line 2047
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3477
    lw	$v1,1712($s7)
.L0dafbaf0:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0dafbcb0
    # Line 2048
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3478
    lw	$a1,1716($s7)
.L0dafbb08:
    andi	$a1,$a1,0x80
    beqz	$a1,.L0dafbcc4
    # Line 2050
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3511
    lw	$at,1716($s7)
.L0dafbb20:
    andi	$at,$at,0x100
    beqz	$at,.L0dafbcd8
    # Line 2051
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3512
    lw	$v0,1716($s7)
.L0dafbb38:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0dafbcec
    # Line 2052
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3505
    lw	$v1,1716($s7)
.L0dafbb50:
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dafbd00
    # Line 2053
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3504
    lw	$a1,1716($s7)
.L0dafbb68:
    andi	$a1,$a1,0x4
    beqz	$a1,.L0dafbd14
    # Line 2054
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3506
    lw	$at,1716($s7)
.L0dafbb80:
    andi	$at,$at,0x8
    beqz	$at,.L0dafbd28
    # Line 2055
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3507
    lw	$v0,1716($s7)
.L0dafbb98:
    andi	$v0,$v0,0x10
    beqz	$v0,.L0dafbd3c
    # Line 2056
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3508
    lw	$v1,1716($s7)
.L0dafbbb0:
    andi	$v1,$v1,0x20
    beqz	$v1,.L0dafbd50
    # Line 2057
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3509
    lw	$a1,1716($s7)
.L0dafbbc8:
    andi	$a1,$a1,0x40
    beqz	$a1,.L0dafbd64
    # Line 2058
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3510
    # Line 2060
    # lw $t9, -30904($gp) # &__glMgrUpdateEvalAttributes
.L0dafbbe0:
    jal	__glMgrUpdateEvalAttributes
    move	$a0,$s7
    ld	$s7,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2061
    jr	$ra
    addiu	$sp,$sp,48
.L0dafbbfc:
    # Line 2038
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3456
    b	.L0dafba30
    lw	$v1,1712($s7)
.L0dafbc10:
    # Line 2040
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3479
    b	.L0dafba48
    lw	$a1,1712($s7)
.L0dafbc24:
    # Line 2041
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3480
    b	.L0dafba60
    lw	$at,1712($s7)
.L0dafbc38:
    # Line 2042
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3473
    b	.L0dafba78
    lw	$v0,1712($s7)
.L0dafbc4c:
    # Line 2043
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3472
    b	.L0dafba90
    lw	$v1,1712($s7)
.L0dafbc60:
    # Line 2044
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3474
    b	.L0dafbaa8
    lw	$a1,1712($s7)
.L0dafbc74:
    # Line 2045
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3475
    b	.L0dafbac0
    lw	$at,1712($s7)
.L0dafbc88:
    # Line 2046
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3476
    b	.L0dafbad8
    lw	$v0,1712($s7)
.L0dafbc9c:
    # Line 2047
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3477
    b	.L0dafbaf0
    lw	$v1,1712($s7)
.L0dafbcb0:
    # Line 2048
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3478
    b	.L0dafbb08
    lw	$a1,1716($s7)
.L0dafbcc4:
    # Line 2050
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3511
    b	.L0dafbb20
    lw	$at,1716($s7)
.L0dafbcd8:
    # Line 2051
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3512
    b	.L0dafbb38
    lw	$v0,1716($s7)
.L0dafbcec:
    # Line 2052
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3505
    b	.L0dafbb50
    lw	$v1,1716($s7)
.L0dafbd00:
    # Line 2053
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3504
    b	.L0dafbb68
    lw	$a1,1716($s7)
.L0dafbd14:
    # Line 2054
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3506
    b	.L0dafbb80
    lw	$at,1716($s7)
.L0dafbd28:
    # Line 2055
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3507
    b	.L0dafbb98
    lw	$v0,1716($s7)
.L0dafbd3c:
    # Line 2056
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3508
    b	.L0dafbbb0
    lw	$v1,1716($s7)
.L0dafbd50:
    # Line 2057
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3509
    b	.L0dafbbc8
    lw	$a1,1716($s7)
.L0dafbd64:
    # Line 2058
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3510
    b	.L0dafbbe0
    # Line 2060
    nop	# was lw $t9, -30904($gp) # &__glMgrUpdateEvalAttributes
.end __glMgrPassEval

# Function: __glMgrPassFog
# Declared: Line 2065 (Source lines: 2065-2075)
# Address: 0x0dafbd78 - 0x0dafbe38 (Size: 192 bytes, Frame: 48)
.globl __glMgrPassFog
.ent __glMgrPassFog
__glMgrPassFog:
    # Line 2065
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    # Line 2066
    lw	$s7,__glCurrentContext
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    lw	$at,1696($s7)
    # Line 2065
    lui	$v0,0x10
    addiu	$v0,$v0,10528
    # Line 2066
    andi	$at,$at,0x20
    beqz	$at,.L0dafbe24
    # Line 2065
    addu	$gp,$t9,$v0
    # Line 2068
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2912
    # Line 2069
    # lw $t9, -31976($gp) # &__glMgrim_Fogi
.L0dafbdb4:
    lw	$a1,1492($s7)
    jal	__glMgrim_Fogi
    li	$a0,2917
    # Line 2070
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1512($s7)
    jal	__glMgrim_Fogf
    li	$a0,2914
    # Line 2071
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1528($s7)
    jal	__glMgrim_Fogf
    li	$a0,2913
    # Line 2072
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1516($s7)
    jal	__glMgrim_Fogf
    li	$a0,2915
    # Line 2073
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1520($s7)
    jal	__glMgrim_Fogf
    li	$a0,2916
    # Line 2074
    # lw $t9, -31988($gp) # &__glMgrim_Fogfv
    addiu	$a1,$s7,1496
    jal	__glMgrim_Fogfv
    li	$a0,2918
    ld	$s7,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2075
    jr	$ra
    addiu	$sp,$sp,48
.L0dafbe24:
    # Line 2068
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2912
    b	.L0dafbdb4
    # Line 2069
    nop	# was lw $t9, -31976($gp) # &__glMgrim_Fogi
.end __glMgrPassFog

# Function: __glMgrPassLighting
# Declared: Line 2079 (Source lines: 2079-2161)
# Address: 0x0dafbe38 - 0x0dafc2ec (Size: 1204 bytes, Frame: 240)
.globl __glMgrPassLighting
.ent __glMgrPassLighting
__glMgrPassLighting:
    # Line 2079
    addiu	$sp,$sp,-112
    sd	$s6,16($sp)
    # Line 2083
    lw	$s6,__glCurrentContext
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    lw	$at,1696($s6)
    # Line 2079
    lui	$v0,0x10
    addiu	$v0,$v0,10336
    # Line 2083
    andi	$at,$at,0x80
    beqz	$at,.L0dafc224
    # Line 2079
    addu	$gp,$t9,$v0
    # Line 2085
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2903
    lw	$v1,1696($s6)
.L0dafbe74:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0dafc238
    # Line 2086
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2896
    lw	$a1,1704($s6)
.L0dafbe8c:
    andi	$a1,$a1,0x1
    beqz	$a1,.L0dafc24c
    # Line 2087
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16384
    lw	$at,1704($s6)
.L0dafbea4:
    andi	$at,$at,0x2
    beqz	$at,.L0dafc260
    # Line 2088
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16385
    lw	$v0,1704($s6)
.L0dafbebc:
    andi	$v0,$v0,0x4
    beqz	$v0,.L0dafc274
    # Line 2089
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16386
    lw	$v1,1704($s6)
.L0dafbed4:
    andi	$v1,$v1,0x8
    beqz	$v1,.L0dafc288
    # Line 2090
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16387
    lw	$a1,1704($s6)
.L0dafbeec:
    andi	$a1,$a1,0x10
    beqz	$a1,.L0dafc29c
    # Line 2091
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16388
    lw	$at,1704($s6)
.L0dafbf04:
    andi	$at,$at,0x20
    beqz	$at,.L0dafc2b0
    # Line 2092
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16389
    lw	$v0,1704($s6)
.L0dafbf1c:
    andi	$v0,$v0,0x40
    beqz	$v0,.L0dafc2c4
    # Line 2093
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16390
    lw	$v1,1704($s6)
.L0dafbf34:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0dafc2d8
    # Line 2094
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16391
    # Line 2096
    # lw $t9, -31152($gp) # &__glMgrim_ColorMaterial
.L0dafbf4c:
    lw	$a1,1300($s6)
    jal	__glMgrim_ColorMaterial
    lw	$a0,1296($s6)
    # Line 2098
    # lw $t9, -32036($gp) # &__glMgrim_ShadeModel
    jal	__glMgrim_ShadeModel
    lw	$a0,1304($s6)
    # Line 2100
    # lw $t9, -32520($gp) # &__glMgrim_LightModelfv
    addiu	$a1,$s6,1308
    jal	__glMgrim_LightModelfv
    li	$a0,2899
    # Line 2103
    lbu	$a0,1324($s6)
    # lw $t9, -32524($gp) # &__glMgrim_LightModelf
    mtc1	$a0,$f13
    li	$a0,2897
    jal	__glMgrim_LightModelf
    cvt.s.w	$f13,$f13
    # Line 2105
    lbu	$a1,1325($s6)
    # lw $t9, -32524($gp) # &__glMgrim_LightModelf
    mtc1	$a1,$f13
    li	$a0,2898
    jal	__glMgrim_LightModelf
    cvt.s.w	$f13,$f13
    # Line 2107
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1328
    li	$a1,4608
    jal	__glMgrim_Materialfv
    li	$a0,1028
    # Line 2109
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1344
    li	$a1,4609
    jal	__glMgrim_Materialfv
    li	$a0,1028
    # Line 2111
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1360
    li	$a1,4610
    jal	__glMgrim_Materialfv
    li	$a0,1028
    # Line 2114
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1376
    li	$a1,5632
    jal	__glMgrim_Materialfv
    li	$a0,1028
    # Line 2117
    # lw $t9, -32508($gp) # &__glMgrim_Materialf
    lwc1	$f14,1392($s6)
    li	$a1,5633
    jal	__glMgrim_Materialf
    li	$a0,1028
    # Line 2120
    lwc1	$f16,1396($s6)
    swc1	$f16,0($sp)
    # Line 2121
    lwc1	$f15,1404($s6)
    # Line 2123
    addiu	$a2,$sp,0
    li	$a1,5635
    # Line 2121
    swc1	$f15,4($sp)
    # Line 2123
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    # Line 2122
    lwc1	$f14,1400($s6)
    # Line 2123
    li	$a0,1028
    jal	__glMgrim_Materialfv
    # Line 2122
    swc1	$f14,8($sp)
    # Line 2125
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1408
    li	$a1,4608
    jal	__glMgrim_Materialfv
    li	$a0,1029
    # Line 2127
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1424
    li	$a1,4609
    jal	__glMgrim_Materialfv
    li	$a0,1029
    # Line 2129
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1440
    li	$a1,4610
    jal	__glMgrim_Materialfv
    li	$a0,1029
    # Line 2132
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    addiu	$a2,$s6,1456
    li	$a1,5632
    jal	__glMgrim_Materialfv
    li	$a0,1029
    # Line 2135
    # lw $t9, -32508($gp) # &__glMgrim_Materialf
    lwc1	$f14,1472($s6)
    li	$a1,5633
    jal	__glMgrim_Materialf
    li	$a0,1029
    # Line 2137
    lwc1	$f19,1476($s6)
    swc1	$f19,0($sp)
    # Line 2138
    lwc1	$f18,1484($s6)
    # Line 2140
    addiu	$a2,$sp,0
    li	$a1,5635
    # Line 2138
    swc1	$f18,4($sp)
    # Line 2140
    # lw $t9, -32504($gp) # &__glMgrim_Materialfv
    # Line 2139
    lwc1	$f17,1480($s6)
    # Line 2140
    li	$a0,1029
    jal	__glMgrim_Materialfv
    # Line 2139
    swc1	$f17,8($sp)
    ld	$ra,32($sp)
    sd	$s0,40($sp)
    # Line 2143
    li	$s0,16384
    sd	$s1,48($sp)
    # Line 2142
    lw	$s1,1488($s6)
    sd	$s2,80($sp)
    # Line 2143
    lw	$at,3328($s6)
    sd	$s3,72($sp)
    sd	$s4,64($sp)
    addiu	$at,$at,16384
    sltiu	$at,$at,16385
    bnez	$at,.L0dafc20c
    sd	$s5,56($sp)
    addiu	$s5,$s1,80
    addiu	$s2,$s1,64
    addiu	$s4,$s1,32
    addiu	$s3,$s1,16
.L0dafc108:
    # Line 2144
    # lw $t9, -32536($gp) # &__glMgrim_Lightfv
    move	$a0,$s0
    move	$a2,$s1
    jal	__glMgrim_Lightfv
    li	$a1,4608
    # Line 2145
    # lw $t9, -32536($gp) # &__glMgrim_Lightfv
    move	$a0,$s0
    move	$a2,$s3
    jal	__glMgrim_Lightfv
    li	$a1,4609
    # Line 2146
    # lw $t9, -32536($gp) # &__glMgrim_Lightfv
    move	$a0,$s0
    move	$a2,$s4
    jal	__glMgrim_Lightfv
    li	$a1,4610
    # Line 2148
    # lw $t9, -32536($gp) # &__glMgrim_Lightfv
    move	$a0,$s0
    move	$a2,$s2
    jal	__glMgrim_Lightfv
    li	$a1,4611
    # Line 2149
    # lw $t9, -32536($gp) # &__glMgrim_Lightfv
    move	$a0,$s0
    move	$a2,$s5
    jal	__glMgrim_Lightfv
    li	$a1,4612
    # Line 2151
    # lw $t9, -32540($gp) # &__glMgrim_Lightf
    move	$a0,$s0
    lwc1	$f14,96($s1)
    jal	__glMgrim_Lightf
    li	$a1,4613
    # Line 2152
    # lw $t9, -32540($gp) # &__glMgrim_Lightf
    move	$a0,$s0
    lwc1	$f14,100($s1)
    jal	__glMgrim_Lightf
    li	$a1,4614
    # Line 2159
    addiu	$s5,$s5,116
    # Line 2153
    # lw $t9, -32540($gp) # &__glMgrim_Lightf
    move	$a0,$s0
    lwc1	$f14,104($s1)
    jal	__glMgrim_Lightf
    li	$a1,4615
    # Line 2159
    addiu	$s2,$s2,116
    # Line 2155
    # lw $t9, -32540($gp) # &__glMgrim_Lightf
    move	$a0,$s0
    lwc1	$f14,108($s1)
    jal	__glMgrim_Lightf
    li	$a1,4616
    # Line 2159
    addiu	$s4,$s4,116
    # Line 2157
    lwc1	$f14,112($s1)
    # lw $t9, -32540($gp) # &__glMgrim_Lightf
    move	$a0,$s0
    # Line 2159
    addiu	$s1,$s1,116
    # Line 2157
    jal	__glMgrim_Lightf
    li	$a1,4617
    # Line 2143
    lw	$v0,3328($s6)
    addiu	$s0,$s0,1
    addiu	$v0,$v0,16384
    sltu	$v0,$s0,$v0
    bnez	$v0,.L0dafc108
    # Line 2159
    addiu	$s3,$s3,116
    ld	$s5,56($sp)
    ld	$s4,64($sp)
    ld	$ra,32($sp)
    ld	$s3,72($sp)
    ld	$s2,80($sp)
.L0dafc20c:
    ld	$gp,24($sp)
    # Line 2161
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafc224:
    # Line 2085
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2903
    b	.L0dafbe74
    lw	$v1,1696($s6)
.L0dafc238:
    # Line 2086
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2896
    b	.L0dafbe8c
    lw	$a1,1704($s6)
.L0dafc24c:
    # Line 2087
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16384
    b	.L0dafbea4
    lw	$at,1704($s6)
.L0dafc260:
    # Line 2088
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16385
    b	.L0dafbebc
    lw	$v0,1704($s6)
.L0dafc274:
    # Line 2089
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16386
    b	.L0dafbed4
    lw	$v1,1704($s6)
.L0dafc288:
    # Line 2090
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16387
    b	.L0dafbeec
    lw	$a1,1704($s6)
.L0dafc29c:
    # Line 2091
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16388
    b	.L0dafbf04
    lw	$at,1704($s6)
.L0dafc2b0:
    # Line 2092
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16389
    b	.L0dafbf1c
    lw	$v0,1704($s6)
.L0dafc2c4:
    # Line 2093
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16390
    b	.L0dafbf34
    lw	$v1,1704($s6)
.L0dafc2d8:
    # Line 2094
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16391
    b	.L0dafbf4c
    # Line 2096
    nop	# was lw $t9, -31152($gp) # &__glMgrim_ColorMaterial
.end __glMgrPassLighting

# Function: __glMgrPassLine
# Declared: Line 2165 (Source lines: 2165-2173)
# Address: 0x0dafc2ec - 0x0dafc394 (Size: 168 bytes, Frame: 48)
.globl __glMgrPassLine
.ent __glMgrPassLine
__glMgrPassLine:
    # Line 2165
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    # Line 2166
    lw	$s7,__glCurrentContext
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    lw	$at,1696($s7)
    # Line 2165
    lui	$v0,0x10
    addiu	$v0,$v0,9132
    # Line 2166
    andi	$at,$at,0x200
    beqz	$at,.L0dafc36c
    # Line 2165
    addu	$gp,$t9,$v0
    # Line 2168
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2848
    lw	$v1,1696($s7)
.L0dafc328:
    andi	$v1,$v1,0x100
    beqz	$v1,.L0dafc380
    # Line 2169
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2852
    # Line 2170
    # lw $t9, -32044($gp) # &__glMgrim_LineWidth
.L0dafc340:
    jal	__glMgrim_LineWidth
    lwc1	$f12,444($s7)
    # Line 2171
    # lw $t9, -32048($gp) # &__glMgrim_LineStipple
    lhu	$a1,456($s7)
    jal	__glMgrim_LineStipple
    lh	$a0,458($s7)
    ld	$s7,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2173
    jr	$ra
    addiu	$sp,$sp,48
.L0dafc36c:
    # Line 2168
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2848
    b	.L0dafc328
    lw	$v1,1696($s7)
.L0dafc380:
    # Line 2169
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2852
    b	.L0dafc340
    # Line 2170
    nop	# was lw $t9, -32044($gp) # &__glMgrim_LineWidth
.end __glMgrPassLine

# Function: __glMgrPassPixel
# Declared: Line 2177 (Source lines: 2177-2262)
# Address: 0x0dafc394 - 0x0dafc64c (Size: 696 bytes, Frame: 48)
.globl __glMgrPassPixel
.ent __glMgrPassPixel
__glMgrPassPixel:
    # Line 2181
    li	$a0,3312
    # Line 2177
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,8964
    addu	$gp,$t9,$at
    # Line 2181
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    # Line 2179
    lw	$s7,__glCurrentContext
    sd	$ra,0($sp)
    # Line 2181
    jal	__glMgrim_PixelStorei
    lbu	$a1,1108($s7)
    # Line 2183
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lbu	$a1,1109($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3313
    # Line 2185
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1112($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3314
    # Line 2187
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1116($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3315
    # Line 2189
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1120($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3316
    # Line 2191
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1124($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3317
    # Line 2194
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lbu	$a1,1072($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3328
    # Line 2196
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lbu	$a1,1073($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3329
    # Line 2198
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1076($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3330
    # Line 2200
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1080($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3331
    # Line 2202
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1084($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3332
    # Line 2204
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    lw	$a1,1088($s7)
    jal	__glMgrim_PixelStorei
    li	$a0,3333
    # Line 2208
    # lw $t9, -31824($gp) # &__glMgrim_PixelTransferi
    lbu	$a1,736($s7)
    jal	__glMgrim_PixelTransferi
    li	$a0,3344
    # Line 2210
    # lw $t9, -31824($gp) # &__glMgrim_PixelTransferi
    lbu	$a1,737($s7)
    jal	__glMgrim_PixelTransferi
    li	$a0,3345
    # Line 2212
    # lw $t9, -31824($gp) # &__glMgrim_PixelTransferi
    lw	$a1,728($s7)
    jal	__glMgrim_PixelTransferi
    li	$a0,3346
    # Line 2214
    # lw $t9, -31824($gp) # &__glMgrim_PixelTransferi
    lw	$a1,732($s7)
    jal	__glMgrim_PixelTransferi
    li	$a0,3347
    # Line 2216
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,616($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3348
    # Line 2218
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,620($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3352
    # Line 2220
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,624($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3354
    # Line 2222
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,628($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3356
    # Line 2224
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,632($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3358
    # Line 2226
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,636($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3349
    # Line 2228
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,640($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3353
    # Line 2230
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,644($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3355
    # Line 2232
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,648($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3357
    # Line 2234
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    lwc1	$f13,652($s7)
    jal	__glMgrim_PixelTransferf
    li	$a0,3359
    # Line 2236
    # lw $t9, -31808($gp) # &__glMgrim_PixelZoom
    lwc1	$f13,724($s7)
    jal	__glMgrim_PixelZoom
    lwc1	$f12,720($s7)
    # Line 2240
    # lw $t9, -31816($gp) # &__glMgrim_PixelMapuiv
    lw	$a2,960($s7)
    lw	$a1,952($s7)
    jal	__glMgrim_PixelMapuiv
    li	$a0,3184
    # Line 2242
    # lw $t9, -31816($gp) # &__glMgrim_PixelMapuiv
    lw	$a2,972($s7)
    lw	$a1,964($s7)
    jal	__glMgrim_PixelMapuiv
    li	$a0,3185
    # Line 2244
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,984($s7)
    lw	$a1,976($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3186
    # Line 2246
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,996($s7)
    lw	$a1,988($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3187
    # Line 2248
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,1008($s7)
    lw	$a1,1000($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3188
    # Line 2250
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,1020($s7)
    lw	$a1,1012($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3189
    # Line 2252
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,1032($s7)
    lw	$a1,1024($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3190
    # Line 2254
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,1044($s7)
    lw	$a1,1036($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3191
    # Line 2256
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,1056($s7)
    lw	$a1,1048($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3192
    # Line 2258
    # lw $t9, -31820($gp) # &__glMgrim_PixelMapfv
    lw	$a2,1068($s7)
    lw	$a1,1060($s7)
    jal	__glMgrim_PixelMapfv
    li	$a0,3193
    # Line 2261
    # lw $t9, -32060($gp) # &__glMgrim_ReadBuffer
    jal	__glMgrim_ReadBuffer
    lw	$a0,1152($s7)
    # Line 2262
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrPassPixel

# Function: __glMgrPassPoint
# Declared: Line 2266 (Source lines: 2266-2271)
# Address: 0x0dafc64c - 0x0dafc6b8 (Size: 108 bytes, Frame: 48)
.globl __glMgrPassPoint
.ent __glMgrPassPoint
__glMgrPassPoint:
    # Line 2266
    addiu	$sp,$sp,-48
    # Line 2267
    lw	$at,__glCurrentContext
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    sd	$at,0($sp)
    lw	$at,1696($at)
    # Line 2266
    lui	$v0,0x10
    addiu	$v0,$v0,8268
    # Line 2267
    andi	$at,$at,0x400
    beqz	$at,.L0dafc6a4
    # Line 2266
    addu	$gp,$t9,$v0
    # Line 2269
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2832
    # Line 2270
    # lw $t9, -32040($gp) # &__glMgrim_PointSize
.L0dafc688:
    ld	$v0,0($sp)
    jal	__glMgrim_PointSize
    lwc1	$f12,432($v0)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2271
    jr	$ra
    addiu	$sp,$sp,48
.L0dafc6a4:
    # Line 2269
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2832
    b	.L0dafc688
    # Line 2270
    nop	# was lw $t9, -32040($gp) # &__glMgrim_PointSize
.end __glMgrPassPoint

# Function: __glMgrPassPolygon
# Declared: Line 2275 (Source lines: 2275-2288)
# Address: 0x0dafc6b8 - 0x0dafc7bc (Size: 260 bytes, Frame: 48)
.globl __glMgrPassPolygon
.ent __glMgrPassPolygon
__glMgrPassPolygon:
    # Line 2275
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,8160
    addu	$gp,$t9,$at
    # Line 2278
    # lw $t9, -32076($gp) # &__glMgrim_CullFace
    # Line 2276
    lw	$s7,__glCurrentContext
    sd	$ra,0($sp)
    # Line 2278
    jal	__glMgrim_CullFace
    lw	$a0,468($s7)
    # Line 2279
    # lw $t9, -32072($gp) # &__glMgrim_PolygonMode
    lw	$a1,460($s7)
    jal	__glMgrim_PolygonMode
    li	$a0,1028
    # Line 2280
    # lw $t9, -32072($gp) # &__glMgrim_PolygonMode
    lw	$a1,464($s7)
    jal	__glMgrim_PolygonMode
    li	$a0,1029
    # Line 2281
    # lw $t9, -32544($gp) # &__glMgrim_FrontFace
    jal	__glMgrim_FrontFace
    lw	$a0,472($s7)
    lw	$v0,1696($s7)
    lui	$v1,0x100
    and	$v0,$v0,$v1
    beqz	$v0,.L0dafc780
    # Line 2283
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8037
    lw	$a0,1700($s7)
.L0dafc730:
    andi	$a0,$a0,0x400
    beqz	$a0,.L0dafc794
    # Line 2284
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,10754
    lw	$at,1700($s7)
.L0dafc748:
    andi	$at,$at,0x200
    beqz	$at,.L0dafc7a8
    # Line 2285
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,10753
    # Line 2286
    # lw $t9, -31972($gp) # &__glMgrim_PolygonOffsetEXT
.L0dafc760:
    lwc1	$f13,480($s7)
    jal	__glMgrim_PolygonOffsetEXT
    lwc1	$f12,476($s7)
    ld	$s7,8($sp)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    # Line 2288
    jr	$ra
    addiu	$sp,$sp,48
.L0dafc780:
    # Line 2283
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8037
    b	.L0dafc730
    lw	$a0,1700($s7)
.L0dafc794:
    # Line 2284
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,10754
    b	.L0dafc748
    lw	$at,1700($s7)
.L0dafc7a8:
    # Line 2285
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,10753
    b	.L0dafc760
    # Line 2286
    nop	# was lw $t9, -31972($gp) # &__glMgrim_PolygonOffsetEXT
.end __glMgrPassPolygon

# Function: __glMgrPassScissor
# Declared: Line 2292 (Source lines: 2292-2299)
# Address: 0x0dafc7bc - 0x0dafc834 (Size: 120 bytes, Frame: 48)
.globl __glMgrPassScissor
.ent __glMgrPassScissor
__glMgrPassScissor:
    # Line 2292
    addiu	$sp,$sp,-48
    # Line 2293
    lw	$at,__glCurrentContext
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    sd	$at,0($sp)
    lw	$at,1696($at)
    # Line 2292
    lui	$v0,0x10
    addiu	$v0,$v0,7900
    # Line 2293
    andi	$at,$at,0x4000
    beqz	$at,.L0dafc820
    # Line 2292
    addu	$gp,$t9,$v0
    # Line 2295
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3089
    ld	$a0,0($sp)
.L0dafc7f8:
    # Line 2296
    # lw $t9, -31284($gp) # &__glMgrim_Scissor
    lw	$a3,2424($a0)
    lw	$a2,2420($a0)
    lw	$a1,2416($a0)
    jal	__glMgrim_Scissor
    lw	$a0,2412($a0)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2299
    jr	$ra
    addiu	$sp,$sp,48
.L0dafc820:
    # Line 2295
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3089
    b	.L0dafc7f8
    ld	$a0,0($sp)
.end __glMgrPassScissor

# Function: __glMgrPassStencil
# Declared: Line 2303 (Source lines: 2303-2317)
# Address: 0x0dafc834 - 0x0dafc8d8 (Size: 164 bytes, Frame: 48)
.globl __glMgrPassStencil
.ent __glMgrPassStencil
__glMgrPassStencil:
    # Line 2303
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s4,8($sp)
    # Line 2304
    lw	$s4,__glCurrentContext
    sd	$a1,0($sp)
    sd	$gp,16($sp)
    lw	$at,1696($s4)
    # Line 2303
    lui	$v0,0x10
    addiu	$v0,$v0,7780
    # Line 2304
    andi	$at,$at,0x8000
    beqz	$at,.L0dafc8c4
    # Line 2303
    addu	$gp,$t9,$v0
    # Line 2306
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2960
    ld	$ra,24($sp)
.L0dafc874:
    ld	$v1,0($sp)
    beqz	$v1,.L0dafc8b4
    # Line 2309
    nop	# was lw $t9, -32120($gp) # &__glMgrim_StencilMask
    jal	__glMgrim_StencilMask
    lh	$a0,1578($s4)
    # Line 2310
    # lw $t9, -32088($gp) # &__glMgrim_StencilFunc
    lh	$a2,1576($s4)
    lh	$a1,1574($s4)
    jal	__glMgrim_StencilFunc
    lw	$a0,1568($s4)
    # Line 2313
    # lw $t9, -32084($gp) # &__glMgrim_StencilOp
    lw	$a2,1588($s4)
    lw	$a1,1584($s4)
    jal	__glMgrim_StencilOp
    lw	$a0,1580($s4)
    ld	$ra,24($sp)
.L0dafc8b4:
    ld	$gp,16($sp)
    # Line 2317
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafc8c4:
    # Line 2306
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2960
    b	.L0dafc874
    ld	$ra,24($sp)
.end __glMgrPassStencil

# Function: __glMgrPassTransform
# Declared: Line 2321 (Source lines: 2321-2377)
# Address: 0x0dafc8d8 - 0x0dafcc20 (Size: 840 bytes, Frame: 192)
.globl __glMgrPassTransform
.ent __glMgrPassTransform
__glMgrPassTransform:
    # Line 2321
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 2324
    lw	$s0,__glCurrentContext
    sd	$ra,40($sp)
    sd	$gp,8($sp)
    lw	$at,1708($s0)
    # Line 2321
    lui	$v0,0x10
    addiu	$v0,$v0,7616
    # Line 2324
    andi	$at,$at,0x1
    beqz	$at,.L0dafcb94
    # Line 2321
    addu	$gp,$t9,$v0
    # Line 2326
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12288
    lw	$v1,1708($s0)
.L0dafc914:
    andi	$v1,$v1,0x2
    beqz	$v1,.L0dafcba8
    # Line 2327
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12289
    lw	$a2,1708($s0)
.L0dafc92c:
    andi	$a2,$a2,0x4
    beqz	$a2,.L0dafcbbc
    # Line 2328
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12290
    lw	$at,1708($s0)
.L0dafc944:
    andi	$at,$at,0x8
    beqz	$at,.L0dafcbd0
    # Line 2329
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12291
    lw	$v0,1708($s0)
.L0dafc95c:
    andi	$v0,$v0,0x10
    beqz	$v0,.L0dafcbe4
    # Line 2330
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12292
    lw	$v1,1708($s0)
.L0dafc974:
    andi	$v1,$v1,0x20
    beqz	$v1,.L0dafcbf8
    # Line 2331
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12293
    lw	$a2,1696($s0)
.L0dafc98c:
    lui	$at,0x40
    and	$a2,$a2,$at
    beqz	$a2,.L0dafcc0c
    # Line 2332
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2977
    lw	$a1,1652($s0)
.L0dafc9a8:
    beqzl	$a1,.L0dafca34
    # Line 2343
    lw	$a5,29708($s0)
    sd	$s1,32($sp)
    # Line 2335
    lw	$v0,3332($s0)
    sd	$s2,16($sp)
    sd	$s4,24($sp)
    blez	$v0,.L0dafca18
    move	$s4,$zero
    li	$s2,12288
    move	$s1,$zero
.L0dafc9d0:
    # Line 2336
    move	$a0,$s2
    lw	$v1,1652($s0)
    # Line 2335
    addiu	$s4,$s4,1
    # Line 2336
    # lw $t9, -31276($gp) # &__glMgrim_PassClipPlane
    addu	$v1,$v1,$s1
    # Line 2335
    addiu	$s1,$s1,16
    # Line 2336
    ldl	$a1,0($v1)
    ldl	$a2,8($v1)
    ldr	$a2,15($v1)
    jal	__glMgrim_PassClipPlane
    ldr	$a1,7($v1)
    # Line 2335
    lw	$a2,3332($s0)
    slt	$a2,$s4,$a2
    bnez	$a2,.L0dafc9d0
    addiu	$s2,$s2,1
    lw	$a1,1652($s0)
    ld	$s2,16($sp)
    ld	$s1,32($sp)
.L0dafca18:
    # Line 2339
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    ld	$s4,24($sp)
    sd	$s2,16($sp)
    # Line 2340
    sw	$zero,1652($s0)
    # Line 2343
    lw	$a5,29708($s0)
.L0dafca34:
    lw	$a4,29712($s0)
    li	$a3,272
    subu	$a4,$a4,$a5
    div	$zero,$a4,$a3
    sd	$s1,32($sp)
    # Line 2344
    li	$a0,5888
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    sd	$s2,16($sp)
    # Line 2343
    mflo	$s2
    # Line 2344
    jal	__glMgrim_MatrixMode
    # Line 2343
    teq	$a3,$zero,0x7
    # Line 2347
    # lw $t9, -31264($gp) # &__glMgrim_LoadMatrixf
    # Line 2346
    lw	$s1,29708($s0)
    sd	$s4,24($sp)
    # Line 2347
    jal	__glMgrim_LoadMatrixf
    move	$a0,$s1
    # Line 2348
    blez	$s2,.L0dafcaa0
    move	$s4,$zero
    # Line 2350
    # lw $t9, -31240($gp) # &__glMgrim_PushMatrix
.L0dafca80:
    jal	__glMgrim_PushMatrix
    # Line 2349
    addiu	$s1,$s1,272
    # Line 2351
    # lw $t9, -31264($gp) # &__glMgrim_LoadMatrixf
    jal	__glMgrim_LoadMatrixf
    move	$a0,$s1
    # Line 2348
    addiu	$s4,$s4,1
    bne	$s2,$s4,.L0dafca80
    # Line 2350
    nop	# was lw $t9, -31240($gp) # &__glMgrim_PushMatrix
.L0dafcaa0:
    # Line 2354
    lw	$t0,29716($s0)
    lw	$a7,29720($s0)
    li	$a6,272
    subu	$a7,$a7,$t0
    div	$zero,$a7,$a6
    # Line 2355
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    li	$a0,5889
    # Line 2354
    mflo	$s2
    # Line 2355
    jal	__glMgrim_MatrixMode
    # Line 2354
    teq	$a6,$zero,0x7
    # Line 2358
    # lw $t9, -31264($gp) # &__glMgrim_LoadMatrixf
    # Line 2357
    lw	$s1,29716($s0)
    # Line 2358
    jal	__glMgrim_LoadMatrixf
    move	$a0,$s1
    # Line 2359
    blez	$s2,.L0dafcb04
    move	$s4,$zero
    # Line 2361
    # lw $t9, -31240($gp) # &__glMgrim_PushMatrix
.L0dafcae4:
    jal	__glMgrim_PushMatrix
    # Line 2360
    addiu	$s1,$s1,272
    # Line 2362
    # lw $t9, -31264($gp) # &__glMgrim_LoadMatrixf
    jal	__glMgrim_LoadMatrixf
    move	$a0,$s1
    # Line 2359
    addiu	$s4,$s4,1
    bne	$s2,$s4,.L0dafcae4
    # Line 2361
    nop	# was lw $t9, -31240($gp) # &__glMgrim_PushMatrix
.L0dafcb04:
    # Line 2365
    lw	$t3,29728($s0)
    lw	$t2,29732($s0)
    li	$t1,272
    subu	$t2,$t2,$t3
    div	$zero,$t2,$t1
    # Line 2366
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    li	$a0,5890
    # Line 2365
    mflo	$s2
    # Line 2366
    jal	__glMgrim_MatrixMode
    # Line 2365
    teq	$t1,$zero,0x7
    # Line 2369
    # lw $t9, -31264($gp) # &__glMgrim_LoadMatrixf
    # Line 2368
    lw	$s1,29728($s0)
    # Line 2369
    jal	__glMgrim_LoadMatrixf
    move	$a0,$s1
    # Line 2370
    blez	$s2,.L0dafcb68
    move	$s4,$zero
    # Line 2372
    # lw $t9, -31240($gp) # &__glMgrim_PushMatrix
.L0dafcb48:
    jal	__glMgrim_PushMatrix
    # Line 2371
    addiu	$s1,$s1,272
    # Line 2373
    # lw $t9, -31264($gp) # &__glMgrim_LoadMatrixf
    jal	__glMgrim_LoadMatrixf
    move	$a0,$s1
    # Line 2370
    addiu	$s4,$s4,1
    bne	$s2,$s4,.L0dafcb48
    # Line 2372
    nop	# was lw $t9, -31240($gp) # &__glMgrim_PushMatrix
.L0dafcb68:
    # Line 2376
    lw	$a0,1648($s0)
    # lw $t9, -31208($gp) # &__glMgrim_MatrixMode
    ld	$s1,32($sp)
    ld	$s4,24($sp)
    jal	__glMgrim_MatrixMode
    ld	$s2,16($sp)
    # Line 2377
    ld	$ra,40($sp)
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafcb94:
    # Line 2326
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12288
    b	.L0dafc914
    lw	$v1,1708($s0)
.L0dafcba8:
    # Line 2327
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12289
    b	.L0dafc92c
    lw	$a2,1708($s0)
.L0dafcbbc:
    # Line 2328
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12290
    b	.L0dafc944
    lw	$at,1708($s0)
.L0dafcbd0:
    # Line 2329
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12291
    b	.L0dafc95c
    lw	$v0,1708($s0)
.L0dafcbe4:
    # Line 2330
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12292
    b	.L0dafc974
    lw	$v1,1708($s0)
.L0dafcbf8:
    # Line 2331
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12293
    b	.L0dafc98c
    lw	$a2,1696($s0)
.L0dafcc0c:
    # Line 2332
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2977
    b	.L0dafc9a8
    lw	$a1,1652($s0)
.end __glMgrPassTransform

# Function: __glMgrPassViewport
# Declared: Line 2381 (Source lines: 2381-2391)
# Address: 0x0dafcc20 - 0x0dafcc98 (Size: 120 bytes, Frame: 48)
.globl __glMgrPassViewport
.ent __glMgrPassViewport
__glMgrPassViewport:
    # Line 2381
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 2382
    lw	$a0,__glCurrentContext
    sd	$s3,8($sp)
    # Line 2381
    move	$s3,$a1
    sd	$a0,16($sp)
    # Line 2384
    lw	$a3,1604($a0)
    sd	$gp,24($sp)
    # Line 2381
    lui	$a4,0x10
    addiu	$a4,$a4,6776
    addu	$gp,$t9,$a4
    # Line 2384
    # lw $t9, -31212($gp) # &__glMgrim_Viewport
    lw	$a2,1600($a0)
    lw	$a1,1596($a0)
    jal	__glMgrim_Viewport
    lw	$a0,1592($a0)
    move	$at,$s3
    ld	$s3,8($sp)
    beqz	$at,.L0dafcc8c
    ld	$ra,0($sp)
    # Line 2388
    ld	$v0,16($sp)
    # lw $t9, -32032($gp) # &__glMgrim_DepthRange
    ld	$s3,8($sp)
    ldc1	$f13,1616($v0)
    jal	__glMgrim_DepthRange
    ldc1	$f12,1608($v0)
    ld	$ra,0($sp)
.L0dafcc8c:
    ld	$gp,24($sp)
    # Line 2391
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrPassViewport

# Function: __glMgrPassMachineState
# Declared: Line 2394 (Source lines: 2394-2411)
# Address: 0x0dafcc98 - 0x0dafcd84 (Size: 236 bytes, Frame: 32)
.ent __glMgrPassMachineState
__glMgrPassMachineState:
    # Line 2394
    addiu	$sp,$sp,-32
    # Line 2395
    # lw $t9, -29668($gp) # &__glMgrPassAccum
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    bal __glMgrPassAccum
    # Line 2394
    move	$s0,$a0
    # Line 2396
    # lw $t9, -29664($gp) # &__glMgrPassColorBuffer
    move	$a0,$s0
    bal __glMgrPassColorBuffer
    move	$a1,$zero
    # Line 2397
    # lw $t9, -29660($gp) # &__glMgrPassCurrentBuffer
    bal __glMgrPassCurrentBuffer
    move	$a0,$s0
    # Line 2398
    # lw $t9, -29656($gp) # &__glMgrPassDepthBuffer
    move	$a0,$s0
    bal __glMgrPassDepthBuffer
    move	$a1,$zero
    # Line 2399
    # lw $t9, -29652($gp) # &__glMgrPassEnables
    bal __glMgrPassEnables
    move	$a0,$s0
    # Line 2400
    # lw $t9, -29648($gp) # &__glMgrPassEval
    bal __glMgrPassEval
    move	$a0,$s0
    # Line 2401
    # lw $t9, -29644($gp) # &__glMgrPassFog
    bal __glMgrPassFog
    move	$a0,$s0
    # Line 2402
    # lw $t9, -29640($gp) # &__glMgrPassLighting
    bal __glMgrPassLighting
    move	$a0,$s0
    # Line 2403
    # lw $t9, -29636($gp) # &__glMgrPassLine
    bal __glMgrPassLine
    move	$a0,$s0
    # Line 2404
    # lw $t9, -29632($gp) # &__glMgrPassPixel
    bal __glMgrPassPixel
    move	$a0,$s0
    # Line 2405
    # lw $t9, -29628($gp) # &__glMgrPassPoint
    bal __glMgrPassPoint
    move	$a0,$s0
    # Line 2406
    # lw $t9, -29624($gp) # &__glMgrPassPolygon
    bal __glMgrPassPolygon
    move	$a0,$s0
    # Line 2407
    # lw $t9, -29620($gp) # &__glMgrPassScissor
    bal __glMgrPassScissor
    move	$a0,$s0
    # Line 2408
    # lw $t9, -29616($gp) # &__glMgrPassStencil
    move	$a0,$s0
    bal __glMgrPassStencil
    move	$a1,$zero
    # Line 2409
    # lw $t9, -29612($gp) # &__glMgrPassTransform
    bal __glMgrPassTransform
    move	$a0,$s0
    # Line 2410
    # lw $t9, -29608($gp) # &__glMgrPassViewport
    move	$a0,$s0
    bal __glMgrPassViewport
    move	$a1,$zero
    ld	$ra,8($sp)
    # Line 2411
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrPassMachineState

# Function: __glMgrExitSoftPath
# Declared: Line 2414 (Source lines: 2414-2494)
# Address: 0x0dafcd84 - 0x0dafcf70 (Size: 492 bytes, Frame: 48)
.globl __glMgrExitSoftPath
.ent __glMgrExitSoftPath
__glMgrExitSoftPath:
    # Line 2414
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lbu	$at,-28064($a2)
    lui	$v1,0x10
    addiu	$v1,$v1,6420
    beq	$at,$v0,.L0dafcf18
    addu	$gp,$t9,$v1
    # Line 2434
    # lw $t9, -32708($gp) # &sub_0db00000
    sd	$ra,16($sp)
    addiu	$t9,$t9,-22820
    bal __glMgrEnterSoftPath
    move	$a0,$s0
    lbu	$at,3104($s0)
    li	$v0,1
    # Line 2452
    ldc1	$f12,_lit8_3ff0000000000000
    # Line 2434
    beqz	$at,.L0dafcf2c
    lwc1	$f16,_lit_3f800000
    # Line 2444
    lw	$v1,3144($s0)
    sllv	$v1,$v0,$v1
    addiu	$v1,$v1,-1
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 2453
    cvt.d.s	$f13,$f6
    div.d	$f13,$f12,$f13
    # Line 2445
    lw	$a1,3148($s0)
    # Line 2450
    lwc1	$f4,_lit_437f0000
    li	$at,1
    # Line 2445
    sllv	$a1,$v0,$a1
    addiu	$a1,$a1,-1
    sw	$a1,30824($s0)
    # Line 2443
    lw	$a0,3140($s0)
    # Line 2445
    mtc1	$a1,$f5
    # Line 2444
    sw	$v1,30820($s0)
    # Line 2443
    sllv	$v0,$v0,$a0
    # Line 2445
    cvt.s.w	$f5,$f5
    # Line 2443
    addiu	$v0,$v0,-1
    mtc1	$v0,$f7
    sw	$v0,30816($s0)
    # Line 2445
    lw	$a0,3152($s0)
    # Line 2443
    cvt.s.w	$f7,$f7
    # Line 2450
    li	$v0,255
    # Line 2448
    sllv	$at,$at,$a0
    addiu	$at,$at,-1
    # Line 2445
    swc1	$f5,30812($s0)
    # Line 2444
    swc1	$f6,30808($s0)
    # Line 2443
    swc1	$f7,30804($s0)
    # Line 2454
    cvt.d.s	$f14,$f5
    # Line 2445
    beqz	$a0,.L0dafcf64
    # Line 2454
    div.d	$f14,$f12,$f14
    # Line 2448
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    sw	$at,30848($s0)
    swc1	$f4,30844($s0)
.L0dafce74:
    # Line 2453
    cvt.s.d	$f13,$f13
    # Line 2455
    cvt.d.s	$f15,$f4
    div.d	$f15,$f12,$f15
    # Line 2452
    cvt.d.s	$f0,$f7
    div.d	$f12,$f12,$f0
    # Line 2462
    lwc1	$f0,_lit_46fffe00
    # Line 2465
    div.s	$f3,$f0,$f4
    # Line 2463
    div.s	$f1,$f0,$f5
    # Line 2464
    div.s	$f2,$f0,$f6
    # Line 2462
    div.s	$f0,$f0,$f7
    # Line 2468
    div.s	$f9,$f16,$f2
    # Line 2469
    div.s	$f10,$f16,$f1
    # Line 2470
    div.s	$f11,$f16,$f3
    # Line 2467
    div.s	$f8,$f16,$f0
    # Line 2454
    cvt.s.d	$f14,$f14
    # Line 2453
    swc1	$f13,30856($s0)
    # Line 2454
    swc1	$f14,30860($s0)
    # Line 2455
    cvt.s.d	$f15,$f15
    # Line 2465
    swc1	$f3,31496($s0)
    # Line 2464
    swc1	$f2,31488($s0)
    # Line 2452
    cvt.s.d	$f12,$f12
    # Line 2463
    swc1	$f1,31492($s0)
    # Line 2462
    swc1	$f0,31484($s0)
    # Line 2455
    swc1	$f15,30864($s0)
    # Line 2452
    swc1	$f12,30852($s0)
    # Line 2470
    swc1	$f11,31512($s0)
    # Line 2469
    swc1	$f10,31508($s0)
    # Line 2468
    swc1	$f9,31504($s0)
    # Line 2467
    swc1	$f8,31500($s0)
.L0dafcee8:
    # Line 2486
    # lw $t9, -32708($gp) # &sub_0db00000
    addiu	$t9,$t9,-13160
    bal __glMgrPassViewport
    move	$a0,$s0
    # Line 2488
    lw	$t9,11856($s0)
    jal	sub_0db00000
    move	$a0,$s0
    # Line 2494
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafcf18:
    # Line 2422
    sb	$zero,-28064($a2)
    ld	$gp,0($sp)
    # Line 2423
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafcf2c:
    # Line 2480
    swc1	$f16,30864($s0)
    # Line 2479
    swc1	$f16,30860($s0)
    # Line 2478
    swc1	$f16,30856($s0)
    # Line 2477
    swc1	$f16,30852($s0)
    # Line 2475
    swc1	$f16,30844($s0)
    # Line 2474
    swc1	$f16,30812($s0)
    # Line 2473
    swc1	$f16,30808($s0)
    # Line 2472
    swc1	$f16,30804($s0)
    li	$at,1
    # Line 2475
    sw	$at,30848($s0)
    # Line 2474
    sw	$at,30824($s0)
    # Line 2473
    sw	$at,30820($s0)
    b	.L0dafcee8
    # Line 2472
    sw	$at,30816($s0)
.L0dafcf64:
    # Line 2450
    sw	$v0,30848($s0)
    b	.L0dafce74
    swc1	$f4,30844($s0)
.end __glMgrExitSoftPath

# Function: __glMgrGetTexture
# Declared: Line 2497 (Source lines: 2497-2528)
# Address: 0x0dafcf70 - 0x0dafd1ac (Size: 572 bytes, Frame: 192)
.globl __glMgrGetTexture
.ent __glMgrGetTexture
__glMgrGetTexture:
    # Line 2500
    li	$a0,3552
    # Line 2497
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,5928
    addu	$gp,$t9,$at
    # Line 2500
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s5,8($sp)
    sd	$ra,0($sp)
    jal	__glMgrim_IsEnabled
    # Line 2498
    lw	$s5,__glCurrentContext
    # Line 2500
    beqz	$v0,.L0dafd130
    lw	$a2,1696($s5)
    lui	$v0,0x1
    or	$v0,$a2,$v0
    sw	$v0,1696($s5)
.L0dafcfb0:
    # Line 2501
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3553
    beqz	$v0,.L0dafd144
    lw	$a2,1696($s5)
    lui	$v1,0x2
    or	$v1,$a2,$v1
    sw	$v1,1696($s5)
.L0dafcfd0:
    # Line 2502
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3168
    beqz	$v0,.L0dafd158
    lw	$a2,1696($s5)
    lui	$a0,0x4
    or	$a0,$a2,$a0
    sw	$a0,1696($s5)
.L0dafcff0:
    # Line 2503
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3169
    beqz	$v0,.L0dafd16c
    lw	$a2,1696($s5)
    lui	$at,0x8
    or	$at,$a2,$at
    sw	$at,1696($s5)
.L0dafd010:
    # Line 2504
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3170
    beqz	$v0,.L0dafd180
    lw	$a2,1696($s5)
    lui	$v0,0x10
    or	$v0,$a2,$v0
    sw	$v0,1696($s5)
.L0dafd030:
    # Line 2505
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3171
    beqz	$v0,.L0dafd194
    lw	$a2,1696($s5)
    lui	$v1,0x20
    sd	$s7,24($sp)
    or	$v1,$a2,$v1
    sw	$v1,1696($s5)
.L0dafd054:
    # Line 2515
    li	$a1,10242
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    # Line 2513
    lw	$s7,2372($s5)
    # Line 2515
    li	$a0,3553
    jal	__glMgrim_GetTexParameteriv
    move	$a2,$s7
    # Line 2516
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    addiu	$a2,$s7,4
    li	$a1,10243
    jal	__glMgrim_GetTexParameteriv
    li	$a0,3553
    # Line 2517
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    addiu	$a2,$s7,8
    li	$a1,0x8072
    jal	__glMgrim_GetTexParameteriv
    li	$a0,3553
    # Line 2518
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    addiu	$a2,$s7,12
    li	$a1,10241
    jal	__glMgrim_GetTexParameteriv
    li	$a0,3553
    # Line 2519
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    addiu	$a2,$s7,16
    li	$a1,10240
    jal	__glMgrim_GetTexParameteriv
    li	$a0,3553
    # Line 2520
    # lw $t9, -30820($gp) # &__glMgrim_GetTexParameterfv
    addiu	$a2,$s7,152
    li	$a1,4100
    jal	__glMgrim_GetTexParameterfv
    li	$a0,3553
    sd	$s8,32($sp)
    # Line 2521
    # lw $t9, -30820($gp) # &__glMgrim_GetTexParameterfv
    addiu	$a2,$s7,220
    li	$a1,0x8066
    jal	__glMgrim_GetTexParameterfv
    li	$a0,3553
    # Line 2525
    li	$a1,8704
    li	$a0,8960
    # lw $t9, -30824($gp) # &__glMgrim_GetTexEnviv
    # Line 2523
    lw	$s8,2376($s5)
    ld	$s7,24($sp)
    # Line 2525
    jal	__glMgrim_GetTexEnviv
    move	$a2,$s8
    # Line 2526
    addiu	$a2,$s8,4
    # lw $t9, -30828($gp) # &__glMgrim_GetTexEnvfv
    li	$a1,8705
    li	$a0,8960
    jal	__glMgrim_GetTexEnvfv
    ld	$s5,8($sp)
    # Line 2528
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafd130:
    # Line 2500
    lui	$a0,0x1
    nor	$a0,$a0,$zero
    and	$a0,$a2,$a0
    b	.L0dafcfb0
    sw	$a0,1696($s5)
.L0dafd144:
    # Line 2501
    lui	$at,0x2
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0dafcfd0
    sw	$at,1696($s5)
.L0dafd158:
    # Line 2502
    lui	$v0,0x4
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    b	.L0dafcff0
    sw	$v0,1696($s5)
.L0dafd16c:
    # Line 2503
    lui	$v1,0x8
    nor	$v1,$v1,$zero
    and	$v1,$a2,$v1
    b	.L0dafd010
    sw	$v1,1696($s5)
.L0dafd180:
    # Line 2504
    lui	$a0,0x10
    nor	$a0,$a0,$zero
    and	$a0,$a2,$a0
    b	.L0dafd030
    sw	$a0,1696($s5)
.L0dafd194:
    sd	$s7,24($sp)
    # Line 2505
    lui	$at,0x20
    nor	$at,$at,$zero
    and	$at,$a2,$at
    b	.L0dafd054
    sw	$at,1696($s5)
.end __glMgrGetTexture

# Function: __glMgrPassTexture
# Declared: Line 2534 (Source lines: 2534-2588)
# Address: 0x0dafd1ac - 0x0dafd4bc (Size: 784 bytes, Frame: 192)
.globl __glMgrPassTexture
.ent __glMgrPassTexture
__glMgrPassTexture:
    # Line 2534
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s3,8($sp)
    # Line 2535
    lw	$s3,__glCurrentContext
    sd	$gp,16($sp)
    lui	$v1,0x1
    lw	$at,1696($s3)
    # Line 2534
    lui	$v0,0x10
    addiu	$v0,$v0,5356
    # Line 2535
    and	$at,$at,$v1
    beqz	$at,.L0dafd444
    # Line 2534
    addu	$gp,$t9,$v0
    # Line 2537
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3552
    lw	$v1,1696($s3)
.L0dafd1ec:
    lui	$a0,0x2
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafd458
    # Line 2538
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3553
    lw	$at,1696($s3)
.L0dafd208:
    lui	$v0,0x4
    and	$at,$at,$v0
    beqz	$at,.L0dafd46c
    # Line 2539
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3168
    lw	$v1,1696($s3)
.L0dafd224:
    lui	$a0,0x8
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafd480
    # Line 2540
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3169
    lw	$at,1696($s3)
.L0dafd240:
    lui	$v0,0x10
    and	$at,$at,$v0
    beqz	$at,.L0dafd494
    # Line 2541
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3170
    lw	$v1,1696($s3)
.L0dafd25c:
    lui	$a0,0x20
    and	$v1,$v1,$a0
    beqz	$v1,.L0dafd4a8
    # Line 2542
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3171
    # Line 2545
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
.L0dafd278:
    addiu	$a2,$s3,1876
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8192
    # Line 2546
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,1896
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8192
    # Line 2547
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,1880
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8192
    # Line 2550
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
    addiu	$a2,$s3,2000
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8193
    # Line 2551
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2020
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8193
    # Line 2552
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2004
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8193
    # Line 2554
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
    addiu	$a2,$s3,2124
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8194
    # Line 2555
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2144
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8194
    # Line 2556
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2128
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8194
    # Line 2558
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
    addiu	$a2,$s3,2248
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8195
    # Line 2559
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2268
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8195
    # Line 2560
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2252
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8195
    sd	$s5,24($sp)
    # Line 2566
    li	$a1,10242
    li	$a0,3553
    # Line 2564
    lw	$a2,2376($s3)
    # Line 2566
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    # Line 2563
    lw	$s5,2372($s3)
    sd	$a2,0($sp)
    # Line 2566
    jal	__glMgrim_TexParameteriv
    move	$a2,$s5
    ld	$s3,8($sp)
    # Line 2567
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    addiu	$a2,$s5,4
    li	$a1,10243
    jal	__glMgrim_TexParameteriv
    li	$a0,3553
    # Line 2568
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    addiu	$a2,$s5,8
    li	$a1,0x8072
    jal	__glMgrim_TexParameteriv
    li	$a0,3553
    # Line 2569
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    addiu	$a2,$s5,12
    li	$a1,10241
    jal	__glMgrim_TexParameteriv
    li	$a0,3553
    # Line 2570
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    addiu	$a2,$s5,16
    li	$a1,10240
    jal	__glMgrim_TexParameteriv
    li	$a0,3553
    # Line 2571
    # lw $t9, -31428($gp) # &__glMgrim_TexParameterfv
    addiu	$a2,$s5,152
    li	$a1,4100
    jal	__glMgrim_TexParameterfv
    li	$a0,3553
    # Line 2572
    # lw $t9, -31428($gp) # &__glMgrim_TexParameterfv
    addiu	$a2,$s5,220
    li	$a1,0x8066
    jal	__glMgrim_TexParameterfv
    li	$a0,3553
    ld	$s5,24($sp)
    # Line 2579
    # lw $t9, -31392($gp) # &__glMgrim_TexEnviv
    ld	$a2,0($sp)
    li	$a1,8704
    jal	__glMgrim_TexEnviv
    li	$a0,8960
    # Line 2580
    li	$a1,8705
    # lw $t9, -31400($gp) # &__glMgrim_TexEnvfv
    ld	$a2,0($sp)
    li	$a0,8960
    jal	__glMgrim_TexEnvfv
    addiu	$a2,$a2,4
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    # Line 2588
    jr	$ra
    addiu	$sp,$sp,64
.L0dafd444:
    # Line 2537
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3552
    b	.L0dafd1ec
    lw	$v1,1696($s3)
.L0dafd458:
    # Line 2538
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3553
    b	.L0dafd208
    lw	$at,1696($s3)
.L0dafd46c:
    # Line 2539
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3168
    b	.L0dafd224
    lw	$v1,1696($s3)
.L0dafd480:
    # Line 2540
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3169
    b	.L0dafd240
    lw	$at,1696($s3)
.L0dafd494:
    # Line 2541
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3170
    b	.L0dafd25c
    lw	$v1,1696($s3)
.L0dafd4a8:
    # Line 2542
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3171
    b	.L0dafd278
    # Line 2545
    nop	# was lw $t9, -32008($gp) # &__glMgrim_TexGeniv
.end __glMgrPassTexture

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_38000100:
    .word 0x38000100
_lit_3f800000:
    .word 0x3f800000
_lit_437f0000:
    .word 0x437f0000
_lit_46fffe00:
    .word 0x46fffe00
_lit_bf800000:
    .word 0xbf800000

