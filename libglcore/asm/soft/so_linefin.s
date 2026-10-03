# Source: ../soft/so_linefin.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linefin.c
# Total Functions: 12

.text

# Function: __glSecondLinesVertex
# Declared: Line 25 (Source lines: 26-32)
# Address: 0x0db512bc - 0x0db51304 (Size: 72 bytes, Frame: 32)
.globl __glSecondLinesVertex
.ent __glSecondLinesVertex
__glSecondLinesVertex:
    # Line 27
    sb	$zero,29900($a0)
    # Line 26
    move	$a2,$a1
    # Line 29
    addiu	$a1,$a1,-192
    sw	$a1,12744($a0)
    # Line 26
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$v0,0xb
    addiu	$v0,$v0,-11300
    addu	$gp,$t9,$v0
    # Line 31
    lw	$t9,12544($a0)
    # Line 30
    lw	$at,12032($a0)
    sd	$ra,0($sp)
    # Line 31
    jalr	$t9
    # Line 30
    sw	$at,12020($a0)
    # Line 32
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSecondLinesVertex

# Function: __glFirstLinesVertex
# Declared: Line 35 (Source lines: 37-39)
# Address: 0x0db51304 - 0x0db51318 (Size: 20 bytes, Frame: 0)
.globl __glFirstLinesVertex
.ent __glFirstLinesVertex
__glFirstLinesVertex:
    # Line 37
    addiu	$v0,$a1,192
    # Line 38
    lw	$at,12036($a0)
    # Line 37
    sw	$v0,12744($a0)
    # Line 39
    jr	$ra
    # Line 38
    sw	$at,12020($a0)
.end __glFirstLinesVertex

# Function: __glBeginLines
# Declared: Line 41 (Source lines: 42-46)
# Address: 0x0db51318 - 0x0db51340 (Size: 40 bytes, Frame: 0)
.globl __glBeginLines
.ent __glBeginLines
__glBeginLines:
    # Line 43
    addiu	$a1,$a0,12768
    sw	$a1,12744($a0)
    # Line 44
    lw	$v1,12032($a0)
    # Line 42
    lui	$a2,0xb
    addiu	$a2,$a2,-11392
    addu	$at,$t9,$a2
    # Line 45
    la	$v0,__glMatValidateVbuf0N
    # Line 44
    sw	$v1,12020($a0)
    # Line 46
    jr	$ra
    # Line 45
    sw	$v0,12092($a0)
.end __glBeginLines

# Function: __glOtherLStripVertex
# Declared: Line 58 (Source lines: 59-87)
# Address: 0x0db51340 - 0x0db513f8 (Size: 184 bytes, Frame: 192)
.globl __glOtherLStripVertex
.ent __glOtherLStripVertex
__glOtherLStripVertex:
    # Line 59
    move	$a2,$a1
    # Line 60
    lw	$a4,12748($a0)
    # Line 59
    addiu	$sp,$sp,-64
    # Line 63
    sw	$a1,12748($a0)
    # Line 62
    sw	$a4,12744($a0)
    sd	$gp,24($sp)
    # Line 63
    lw	$a6,12($a4)
    lw	$a5,12($a1)
    # Line 59
    lui	$v0,0xb
    addiu	$v0,$v0,-11432
    # Line 63
    or	$at,$a5,$a6
    beqz	$at,.L0db513a8
    # Line 59
    addu	$gp,$t9,$v0
    # Line 63
    and	$v1,$a5,$a6
    beqz	$v1,.L0db5138c
    # Line 78
    nop	# was lw $t9, -26616($gp) # &__glClipLine
    ld	$gp,24($sp)
    # Line 76
    jr	$ra
    addiu	$sp,$sp,64
.L0db5138c:
    sd	$ra,32($sp)
    # Line 78
    bal __glClipLine
    move	$a1,$a4
    # Line 79
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db513a8:
    sd	$a2,0($sp)
    # Line 83
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    sd	$a4,16($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    sd	$ra,32($sp)
    move	$a2,$a0
    jal	__glClipLine
    lw	$a2,28136($a2)
    ld	$t9,8($sp)
    # Line 86
    move	$a0,$t9
    lw	$t9,12532($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    # Line 87
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOtherLStripVertex

# Function: __glOtherLStripVertexFast
# Declared: Line 91 (Source lines: 92-103)
# Address: 0x0db513f8 - 0x0db51460 (Size: 104 bytes, Frame: 32)
.globl __glOtherLStripVertexFast
.ent __glOtherLStripVertexFast
__glOtherLStripVertexFast:
    # Line 92
    move	$a2,$a1
    addiu	$sp,$sp,-32
    # Line 93
    lw	$a4,12748($a0)
    sd	$ra,8($sp)
    # Line 96
    sw	$a1,12748($a0)
    # Line 95
    sw	$a4,12744($a0)
    sd	$gp,0($sp)
    # Line 96
    lw	$v1,12($a4)
    lw	$at,12($a1)
    # Line 92
    lui	$v0,0xb
    addiu	$v0,$v0,-11616
    # Line 96
    or	$at,$at,$v1
    beqz	$at,.L0db5144c
    # Line 92
    addu	$gp,$t9,$v0
    # Line 99
    lw	$t9,12544($a0)
    jalr	$t9
    move	$a1,$a4
    ld	$ra,8($sp)
.L0db51440:
    ld	$gp,0($sp)
    # Line 103
    jr	$ra
    addiu	$sp,$sp,32
.L0db5144c:
    # Line 101
    lw	$t9,12532($a0)
    jalr	$t9
    move	$a1,$a4
    b	.L0db51440
    ld	$ra,8($sp)
.end __glOtherLStripVertexFast

# Function: __glSecondLStripVertex
# Declared: Line 108 (Source lines: 109-139)
# Address: 0x0db51460 - 0x0db51528 (Size: 200 bytes, Frame: 192)
.globl __glSecondLStripVertex
.ent __glSecondLStripVertex
__glSecondLStripVertex:
    # Line 110
    lw	$a4,12748($a0)
    # Line 109
    move	$a2,$a1
    # Line 113
    sw	$a2,12748($a0)
    # Line 114
    lw	$v1,12028($a0)
    # Line 109
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$a1,0xb
    addiu	$a1,$a1,-11720
    addu	$gp,$t9,$a1
    # Line 115
    la	$v0,__glNop
    # Line 114
    sw	$v1,12020($a0)
    # Line 112
    sw	$a4,12744($a0)
    # Line 115
    sw	$v0,12092($a0)
    lw	$a6,12($a4)
    lw	$a5,12($a2)
    or	$at,$a5,$a6
    beqz	$at,.L0db514d8
    and	$a3,$a5,$a6
    beqz	$a3,.L0db514bc
    # Line 130
    nop	# was lw $t9, -26616($gp) # &__glClipLine
    ld	$gp,24($sp)
    # Line 128
    jr	$ra
    addiu	$sp,$sp,64
.L0db514bc:
    sd	$ra,32($sp)
    # Line 130
    bal __glClipLine
    move	$a1,$a4
    # Line 131
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db514d8:
    sd	$a2,0($sp)
    # Line 135
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    sd	$a4,16($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    sd	$ra,32($sp)
    move	$a2,$a0
    jal	__glClipLine
    lw	$a2,28136($a2)
    ld	$t9,8($sp)
    # Line 138
    move	$a0,$t9
    lw	$t9,12532($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    # Line 139
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSecondLStripVertex

# Function: __glFirstLStripVertex
# Declared: Line 142 (Source lines: 143-155)
# Address: 0x0db51528 - 0x0db51598 (Size: 112 bytes, Frame: 32)
.globl __glFirstLStripVertex
.ent __glFirstLStripVertex
__glFirstLStripVertex:
    # Line 145
    sw	$a1,12748($a0)
    # Line 143
    addiu	$sp,$sp,-32
    # Line 144
    addiu	$v1,$a1,192
    sw	$v1,12744($a0)
    sd	$gp,0($sp)
    # Line 145
    lw	$at,1696($a0)
    # Line 143
    lui	$v0,0xb
    addiu	$v0,$v0,-11920
    # Line 145
    andi	$at,$at,0x80
    beqz	$at,.L0db5158c
    # Line 143
    addu	$gp,$t9,$v0
    # Line 147
    la	$a3,__glSecondLStripVertex
    sw	$a3,12020($a0)
.L0db5155c:
    # Line 150
    lw	$a2,28136($a0)
    la	$at,__glMatValidateV1
    beqz	$a2,.L0db51580
    sw	$at,12092($a0)
    # Line 154
    lw	$t9,8($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0db51580:
    ld	$gp,0($sp)
    # Line 155
    jr	$ra
    addiu	$sp,$sp,32
.L0db5158c:
    # Line 149
    lw	$v0,12028($a0)
    b	.L0db5155c
    sw	$v0,12020($a0)
.end __glFirstLStripVertex

# Function: __glBeginLStrip
# Declared: Line 157 (Source lines: 158-164)
# Address: 0x0db51598 - 0x0db515c4 (Size: 44 bytes, Frame: 0)
.globl __glBeginLStrip
.ent __glBeginLStrip
__glBeginLStrip:
    # Line 159
    sb	$zero,29900($a0)
    # Line 161
    addiu	$a1,$a0,12768
    # Line 158
    lui	$a2,0xb
    addiu	$a2,$a2,-12032
    addu	$at,$t9,$a2
    # Line 163
    la	$v1,__glMatValidateVbuf0N
    # Line 161
    sw	$a1,12744($a0)
    # Line 162
    la	$v0,__glFirstLStripVertex
    # Line 163
    sw	$v1,12092($a0)
    # Line 164
    jr	$ra
    # Line 162
    sw	$v0,12020($a0)
.end __glBeginLStrip

# Function: __glSecondLLoopVertex
# Declared: Line 194 (Source lines: 195-201)
# Address: 0x0db515c4 - 0x0db51618 (Size: 84 bytes, Frame: 32)
.globl __glSecondLLoopVertex
.ent __glSecondLLoopVertex
__glSecondLLoopVertex:
    # Line 195
    move	$a2,$a1
    # Line 200
    addiu	$a1,$a1,-192
    # Line 197
    sw	$a2,12748($a0)
    # Line 195
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 196
    addiu	$a3,$a2,192
    sw	$a3,12744($a0)
    # Line 198
    lw	$v0,12028($a0)
    sd	$gp,8($sp)
    # Line 195
    lui	$v1,0xb
    addiu	$v1,$v1,-12076
    addu	$gp,$t9,$v1
    # Line 200
    lw	$t9,12544($a0)
    # Line 199
    la	$at,__glMatValidateVbuf0V1
    # Line 198
    sw	$v0,12020($a0)
    # Line 200
    jalr	$t9
    # Line 199
    sw	$at,12092($a0)
    # Line 201
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSecondLLoopVertex

# Function: FirstLLoopVertex
# Declared: Line 204 (Source lines: 205-208)
# Address: 0x0db51618 - 0x0db51638 (Size: 32 bytes, Frame: 0)
.ent FirstLLoopVertex
FirstLLoopVertex:
    # Line 206
    addiu	$v1,$a1,192
    # Line 205
    lui	$a2,0xb
    addiu	$a2,$a2,-12160
    addu	$at,$t9,$a2
    # Line 207
    la	$v0,__glSecondLLoopVertex
    # Line 206
    sw	$v1,12744($a0)
    # Line 208
    jr	$ra
    # Line 207
    sw	$v0,12020($a0)
.end FirstLLoopVertex

# Function: __glEndLLoop
# Declared: Line 210 (Source lines: 211-226)
# Address: 0x0db51638 - 0x0db516ac (Size: 116 bytes, Frame: 48)
.globl __glEndLLoop
.ent __glEndLLoop
__glEndLLoop:
    # Line 211
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0xb
    addiu	$v0,$v0,-12192
    addu	$gp,$t9,$v0
    la	$at,sub_0db50000
    lw	$a2,12020($a0)
    sd	$s0,8($sp)
    addiu	$at,$at,5656
    beq	$a2,$at,.L0db5166c
    move	$s0,$a0
    la	$v1,__glSecondLLoopVertex
    bne	$a2,$v1,.L0db5168c
.L0db5166c:
    # Line 225
    la	$a1,__glEndPrim
    # Line 224
    la	$a0,__glNop
    ld	$gp,0($sp)
    # Line 225
    sw	$a1,12140($s0)
    # Line 224
    sw	$a0,12020($s0)
    # Line 226
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5168c:
    # Line 222
    move	$a0,$s0
    lw	$t9,12544($s0)
    addiu	$a2,$s0,12768
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a1,12748($s0)
    b	.L0db5166c
    ld	$ra,16($sp)
.end __glEndLLoop

# Function: __glBeginLLoop
# Declared: Line 228 (Source lines: 229-236)
# Address: 0x0db516ac - 0x0db516e4 (Size: 56 bytes, Frame: 0)
.globl __glBeginLLoop
.ent __glBeginLLoop
__glBeginLLoop:
    # Line 230
    sb	$zero,29900($a0)
    # Line 232
    addiu	$v0,$a0,12768
    sw	$v0,12744($a0)
    # Line 229
    lui	$a2,0xb
    addiu	$a2,$a2,-12308
    addu	$at,$t9,$a2
    # Line 235
    la	$a1,__glMatValidateVbuf0N
    # Line 234
    la	$v1,__glEndLLoop
    # Line 233
    la	$v0,sub_0db50000
    # Line 235
    sw	$a1,12092($a0)
    # Line 234
    sw	$v1,12140($a0)
    # Line 233
    addiu	$v0,$v0,5656
    # Line 236
    jr	$ra
    # Line 233
    sw	$v0,12020($a0)
.end __glBeginLLoop

