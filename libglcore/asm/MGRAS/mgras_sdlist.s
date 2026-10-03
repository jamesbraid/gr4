# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/MGRAS/mgras_sdlist.s
# Category: MGRAS
# Compiler Options: 
# Total Functions: 3

.text

# Function: __glMgr_PushTokens
# Declared: Line 148 (Source lines: 148-178)
# Address: 0x0dbd85f8 - 0x0dbd8668 (Size: 112 bytes, Frame: 0)
.globl __glMgr_PushTokens
.ent __glMgr_PushTokens
__glMgr_PushTokens:
    # Line 148
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 149
    andi	$t0,$a0,0x4
    # Line 150
    bne	$zero,$t0,.L0dbd861c
    # Line 151
    lw	$t1,0($a0)
    # Line 153
    lw	$t3,4($a0)
    # Line 154
    addi	$t1,$t1,-1
    # Line 155
    sw	$t3,0($v1)
    # Line 156
    daddiu	$a0,$a0,4
.L0dbd861c:
    # Line 158
    li	$at,1
    beq	$t1,$at,.L0dbd8650
    # Line 159
    daddiu	$v0,$a0,4
    # Line 161
    beqz	$t1,.L0dbd8660
    # Line 162
    li	$t2,2
.L0dbd8630:
    # Line 164
    ld	$t3,0($v0)
    # Line 165
    daddiu	$v0,$v0,8
    # Line 166
    addi	$t1,$t1,-2
    # Line 167
    slt	$at,$t1,$t2
    beqz	$at,.L0dbd8630
    # Line 168
    sd	$t3,0($v1)
    # Line 170
    beq	$zero,$t1,.L0dbd8660
    # Line 171
    nop
.L0dbd8650:
    # Line 173
    lw	$t3,0($v0)
    # Line 174
    daddi	$v0,$v0,4
    # Line 175
    jr	$ra
    # Line 176
    sw	$t3,0($v1)
.L0dbd8660:
    # Line 177
    jr	$ra
    # Line 178
    nop
.end __glMgr_PushTokens

# Function: __glMgr_PushPixels
# Declared: Line 190 (Source lines: 190-220)
# Address: 0x0dbd8668 - 0x0dbd86d8 (Size: 112 bytes, Frame: 0)
.globl __glMgr_PushPixels
.ent __glMgr_PushPixels
__glMgr_PushPixels:
    # Line 190
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 191
    andi	$t0,$a1,0x4
    # Line 192
    beq	$zero,$t0,.L0dbd868c
    # Line 193
    nop
    # Line 195
    lw	$t1,0($a1)
    # Line 196
    addi	$a0,$a0,-1
    # Line 197
    sw	$t1,0($v1)
    # Line 198
    daddiu	$a1,$a1,4
.L0dbd868c:
    # Line 200
    li	$at,1
    beq	$a0,$at,.L0dbd86c0
    # Line 201
    daddiu	$v0,$a1,0
    # Line 203
    beqz	$a0,.L0dbd86d0
    # Line 204
    li	$t2,2
.L0dbd86a0:
    # Line 206
    ld	$t1,0($v0)
    # Line 207
    daddiu	$v0,$v0,8
    # Line 208
    addi	$a0,$a0,-2
    # Line 209
    slt	$at,$a0,$t2
    beqz	$at,.L0dbd86a0
    # Line 210
    sd	$t1,0($v1)
    # Line 212
    beq	$zero,$a0,.L0dbd86d0
    # Line 213
    nop
.L0dbd86c0:
    # Line 215
    lw	$t1,0($v0)
    # Line 216
    daddi	$v0,$v0,4
    # Line 217
    jr	$ra
    # Line 218
    sw	$t1,0($v1)
.L0dbd86d0:
    # Line 219
    jr	$ra
    # Line 220
    nop
.end __glMgr_PushPixels

# Function: __glMgrim_pipe
# Declared: Line 227 (Source lines: 227-234)
# Address: 0x0dbd86d8 - 0x0dbd86fc (Size: 36 bytes, Frame: 0)
.globl __glMgrim_pipe
.ent __glMgrim_pipe
__glMgrim_pipe:
    # Line 227
    dsll32	$v0,$a1,0x0
    # Line 228
    dsll32	$t0,$a0,0x0
    # Line 229
    dsrl32	$v1,$v0,0x0
    # Line 230
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 231
    or	$t0,$t0,$v1
    # Line 232
    sd	$t0,0($v0)
    # Line 233
    jr	$ra
    # Line 234
    nop
.end __glMgrim_pipe

