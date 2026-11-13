# Source: ../MGRAS/mgras_getstate.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_getstate.c
# Total Functions: 5

.text

# Function: __Mgr_ReturnMode
# Declared: Line 63 (Source lines: 64-76)
# Address: 0x0daae884 - 0x0daae900 (Size: 124 bytes, Frame: 48)
.globl __Mgr_ReturnMode
.ent __Mgr_ReturnMode
__Mgr_ReturnMode:
    # Line 73
    li	$a3,0xa20c
    # Line 70
    lui	$a4,0x2
    # Line 73
    lui	$at,0x7
    ori	$at,$at,0x4080
    # Line 64
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 70
    lui	$a5,0x7
    sd	$ra,0($sp)
    # Line 64
    lui	$ra,0x15
    addiu	$ra,$ra,-492
    addu	$gp,$t9,$ra
    # Line 65
    lw	$v0,__glCurrentContext
    # Line 76
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 67
    li	$v1,0x9d48
    addu	$v1,$v1,$v0
    lw	$v1,0($v1)
    # Line 70
    ori	$a5,$a5,0xc
    # Line 76
    addiu	$t9,$t9,-3144
    # Line 70
    addu	$a5,$a5,$v1
    sw	$a4,0($a5)
    # Line 73
    sw	$a3,0($at)
    sw	$a0,0($at)
    # Line 76
    move	$a0,$v1
    # Line 74
    sw	$a1,0($at)
    # Line 76
    move	$a1,$v0
    bal __glMgrim_IsEnabled
    # Line 75
    sw	$a2,0($at)
    # Line 76
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __Mgr_ReturnMode

# Function: __glMgrim_IsEnabled
# Declared: Line 81 (Source lines: 82-300)
# Address: 0x0daae900 - 0x0daaf35c (Size: 2652 bytes, Frame: 48)
.globl __glMgrim_IsEnabled
.ent __glMgrim_IsEnabled
__glMgrim_IsEnabled:
    # Line 85
    lw	$a3,__glCurrentContext
    # Line 82
    move	$a5,$a0
    # Line 85
    li	$v0,1
    # Line 82
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # Line 85
    lw	$at,__glBeginMode
    # Line 82
    lui	$v1,0x15
    addiu	$v1,$v1,-616
    # Line 85
    beq	$at,$v0,.L0daaed0c
    # Line 82
    addu	$gp,$t9,$v1
    # Line 85
    sltiu	$a1,$a5,3512
    bnez	$a1,.L0daae95c
    # Line 89
    sltiu	$a2,$a5,3513
    beqz	$a2,.L0daae9c0
    li	$a0,0x8011
.L0daae93c:
    # Line 233
    lw	$a0,1716($a3)
.L0daae940:
    addiu	$a1,$a5,-3504
    sllv	$a1,$v0,$a1
    and	$a0,$a0,$a1
.L0daae94c:
    # Line 300
    sltu	$v0,$zero,$a0
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae95c:
    # Line 89
    sltiu	$a2,$a5,3170
    bnez	$a2,.L0daae97c
    sltiu	$at,$a5,3171
    beqz	$at,.L0daaea18
    # Line 193
    lui	$a1,0x10
    lw	$a0,1696($a3)
    # Line 194
    b	.L0daae94c
    # Line 193
    and	$a0,$a0,$a1
.L0daae97c:
    # Line 89
    sltiu	$a2,$a5,2960
    bnez	$a2,.L0daae9f8
    sltiu	$at,$a5,2961
    bnez	$at,.L0daaec78
    sltiu	$v1,$a5,3057
    bnez	$v1,.L0daaeb94
    sltiu	$a1,$a5,3058
    bnez	$a1,.L0daaed00
    sltiu	$a2,$a5,3168
    bnez	$a2,.L0daaee90
    sltiu	$at,$a5,3169
    beqz	$at,.L0daaf068
    li	$a1,3169
    # Line 187
    lw	$a0,1696($a3)
    lui	$a1,0x4
    # Line 188
    b	.L0daae94c
    # Line 187
    and	$a0,$a0,$a1
.L0daae9c0:
    # Line 89
    sltu	$a2,$a5,$a0
    bnez	$a2,.L0daaea5c
    sltu	$at,$a0,$a5
    beqz	$at,.L0daaeb84
    li	$v0,0x8078
    sltu	$v1,$a5,$v0
    bnez	$v1,.L0daaec50
    sltu	$a1,$v0,$a5
    bnez	$a1,.L0daaee1c
    li	$v0,0x80d1
    # Line 286
    lw	$a0,4944($a3)
    lui	$a1,0x7f0
    # Line 287
    b	.L0daae94c
    # Line 286
    and	$a0,$a0,$a1
.L0daae9f8:
    # Line 89
    sltiu	$a2,$a5,2884
    bnez	$a2,.L0daaeae4
    sltiu	$at,$a5,2885
    beqz	$at,.L0daaec0c
    sltiu	$a1,$a5,2912
    # Line 103
    lw	$a0,1696($a3)
    # Line 104
    b	.L0daae94c
    # Line 103
    andi	$a0,$a0,0x1000
.L0daaea18:
    # Line 89
    sltiu	$a1,$a5,3479
    bnez	$a1,.L0daaeb2c
    sltiu	$a2,$a5,3480
    bnez	$a2,.L0daaeb70
    sltiu	$at,$a5,3507
    bnez	$at,.L0daaed8c
    sltiu	$v1,$a5,3508
    bnez	$v1,.L0daae93c
    sltiu	$a1,$a5,3510
    bnez	$a1,.L0daaf0d0
    sltiu	$a2,$a5,3511
    bnez	$a2,.L0daae93c
    li	$at,3511
    bne	$a5,$at,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daae940
    # Line 233
    lw	$a0,1716($a3)
.L0daaea5c:
    # Line 89
    sltiu	$v1,$a5,12293
    bnez	$v1,.L0daaeaa4
    sltiu	$a1,$a5,12294
    bnez	$a1,.L0daaeab4
    sltiu	$a2,$a5,16388
    bnez	$a2,.L0daaeca0
    sltiu	$at,$a5,16389
    bnez	$at,.L0daaecb4
    sltiu	$v1,$a5,16391
    bnez	$v1,.L0daaf124
    sltiu	$a1,$a5,16392
    bnez	$a1,.L0daaecb4
    li	$a2,0x8010
    bne	$a5,$a2,.L0daaebb0
    # Line 251
    li	$a0,0x8294
    addu	$a0,$a0,$a3
    # Line 252
    b	.L0daae94c
    # Line 251
    lbu	$a0,0($a0)
.L0daaeaa4:
    # Line 89
    sltiu	$a1,$a5,12288
    bnez	$a1,.L0daaec30
    sltiu	$a2,$a5,12289
    beqz	$a2,.L0daaedd4
.L0daaeab4:
    # Line 202
    la	$a0,SYMBOL_LOCATION
    li	$a2,1
    li	$a1,1
    lw	$a0,828($a0)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sd	$ra,24($sp)
    addu	$a0,$a0,$a5
    bal __Mgr_ReturnMode
    addiu	$a0,$a0,-12288
    # Line 203
    srl	$a0,$v0,0x1f
    # Line 204
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaeae4:
    # Line 89
    sltiu	$a1,$a5,2852
    bnez	$a1,.L0daaebd4
    sltiu	$a2,$a5,2853
    bnez	$a2,.L0daaf028
    sltiu	$at,$a5,2882
    bnez	$at,.L0daaee5c
    sltiu	$v1,$a5,2883
    beqz	$v1,.L0daaebb0
    sd	$ra,24($sp)
    # Line 158
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,340($a0)
    # Line 159
    andi	$a0,$v0,0x1
    # Line 160
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaeb2c:
    # Line 89
    sltiu	$a1,$a5,3474
    bnez	$a1,.L0daaeb60
    sltiu	$a2,$a5,3475
    bnez	$a2,.L0daaeb70
    sltiu	$at,$a5,3477
    bnez	$at,.L0daaef10
    sltiu	$v1,$a5,3478
    bnez	$v1,.L0daaeb70
    li	$a1,3478
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeb74
    # Line 224
    addiu	$a1,$a5,-3472
.L0daaeb60:
    # Line 89
    sltiu	$a2,$a5,3472
    bnez	$a2,.L0daaed68
    sltiu	$at,$a5,3473
    beqz	$at,.L0daaeefc
.L0daaeb70:
    # Line 224
    addiu	$a1,$a5,-3472
.L0daaeb74:
    lw	$a0,1712($a3)
    sllv	$a1,$v0,$a1
    # Line 225
    b	.L0daae94c
    # Line 224
    and	$a0,$a0,$a1
.L0daaeb84:
    # Line 254
    li	$a0,0x82e4
    addu	$a0,$a0,$a3
    # Line 255
    b	.L0daae94c
    # Line 254
    lbu	$a0,0($a0)
.L0daaeb94:
    # Line 89
    sltiu	$a1,$a5,3024
    bnez	$a1,.L0daaecc8
    sltiu	$a2,$a5,3025
    bnez	$a2,.L0daaf080
    li	$at,3042
    beq	$a5,$at,.L0daaf224
    sd	$ra,24($sp)
.L0daaebb0:
    # Line 296
    # lw $t9, -27320($gp) # &__glSetError
.L0daaebb4:
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 297
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daaebd4:
    # Line 89
    sltiu	$v1,$a5,2848
    bnez	$v1,.L0daaed30
    sltiu	$a1,$a5,2849
    beqz	$a1,.L0daaebb0
    sd	$ra,24($sp)
    # Line 129
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,1140($a0)
    move	$a0,$v0
    # Line 130
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaec0c:
    # Line 89
    bnez	$a1,.L0daaed48
    sltiu	$a2,$a5,2913
    bnez	$a2,.L0daaf1cc
    li	$at,2929
    bne	$a5,$at,.L0daaebb0
    # Line 106
    li	$a0,0x9265
    addu	$a0,$a0,$a3
    # Line 112
    b	.L0daae94c
    # Line 106
    lbu	$a0,0($a0)
.L0daaec30:
    # Line 89
    sltiu	$a1,$a5,10753
    bnez	$a1,.L0daaedb0
    sltiu	$a2,$a5,10754
    beqz	$a2,.L0daaef64
    li	$a2,10754
    # Line 242
    lw	$a0,1700($a3)
    # Line 243
    b	.L0daae94c
    # Line 242
    andi	$a0,$a0,0x200
.L0daaec50:
    # Line 89
    li	$v0,0x806f
    sltu	$a1,$a5,$v0
    bnez	$a1,.L0daaedf8
    sltu	$a2,$v0,$a5
    bnez	$a2,.L0daaefd4
    li	$v0,0x8076
    # Line 175
    lw	$a0,1696($a3)
    lui	$a1,0x4000
    # Line 176
    b	.L0daae94c
    # Line 175
    and	$a0,$a0,$a1
.L0daaec78:
    # Line 165
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,24($sp)
    bal __Mgr_ReturnMode
    lw	$a0,344($a0)
    # Line 166
    andi	$a0,$v0,0x10
    # Line 167
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaeca0:
    # Line 89
    sltiu	$a1,$a5,16386
    bnez	$a1,.L0daaef94
    sltiu	$a2,$a5,16387
    beqz	$a2,.L0daaf114
    li	$at,16387
.L0daaecb4:
    # Line 210
    lw	$a0,1704($a3)
.L0daaecb8:
    addiu	$a1,$a5,-16384
    sllv	$a1,$v0,$a1
    # Line 211
    b	.L0daae94c
    # Line 210
    and	$a0,$a0,$a1
.L0daaecc8:
    # Line 89
    sltiu	$a2,$a5,3008
    bnez	$a2,.L0daaee74
    sltiu	$at,$a5,3009
    beqz	$at,.L0daaebb0
    sd	$ra,24($sp)
    # Line 92
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,344($a0)
    # Line 93
    andi	$a0,$v0,0x40
    # Line 94
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaed00:
    # Line 136
    lw	$a0,1696($a3)
    # Line 137
    b	.L0daae94c
    # Line 136
    andi	$a0,$a0,0x4
.L0daaed0c:
    # Line 85
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daaed30:
    # Line 89
    li	$a1,2832
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 148
    lw	$a0,1696($a3)
    # Line 153
    b	.L0daae94c
    # Line 148
    andi	$a0,$a0,0x400
.L0daaed48:
    # Line 89
    sltiu	$a1,$a5,2903
    bnez	$a1,.L0daaeec8
    sltiu	$a2,$a5,2904
    beqz	$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 100
    lw	$a0,1696($a3)
    # Line 101
    b	.L0daae94c
    # Line 100
    andi	$a0,$a0,0x80
.L0daaed68:
    # Line 89
    sltiu	$a1,$a5,3456
    bnez	$a1,.L0daaeee0
    sltiu	$a2,$a5,3457
    beqz	$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 184
    lw	$a0,1696($a3)
    lui	$a1,0x80
    # Line 185
    b	.L0daae94c
    # Line 184
    and	$a0,$a0,$a1
.L0daaed8c:
    # Line 89
    sltiu	$a2,$a5,3505
    bnez	$a2,.L0daaef2c
    sltiu	$at,$a5,3506
    bnez	$at,.L0daae93c
    li	$v1,3506
    bne	$a5,$v1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daae940
    # Line 233
    lw	$a0,1716($a3)
.L0daaedb0:
    # Line 89
    sltiu	$a1,$a5,3553
    bnez	$a1,.L0daaef48
    sltiu	$a2,$a5,3554
    beqz	$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 172
    lw	$a0,1696($a3)
    lui	$a1,0x2
    # Line 173
    b	.L0daae94c
    # Line 172
    and	$a0,$a0,$a1
.L0daaedd4:
    # Line 89
    sltiu	$a2,$a5,12291
    bnez	$a2,.L0daaef78
    sltiu	$at,$a5,12292
    bnez	$at,.L0daaeab4
    li	$v1,12292
    bne	$a5,$v1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeab4
    sd	$ra,24($sp)
.L0daaedf8:
    # Line 89
    li	$v0,0x802e
    sltu	$a1,$a5,$v0
    bnez	$a1,.L0daaefb0
    sltu	$a2,$v0,$a5
    bnez	$a2,.L0daaf158
    # Line 248
    li	$a0,0x820c
    addu	$a0,$a0,$a3
    # Line 249
    b	.L0daae94c
    # Line 248
    lbu	$a0,0($a0)
.L0daaee1c:
    # Line 89
    sltu	$a1,$a5,$v0
    bnez	$a1,.L0daaeffc
    sltu	$a2,$v0,$a5
    beqz	$a2,.L0daaf1bc
    li	$v0,0x8139
    sltu	$at,$a5,$v0
    bnez	$at,.L0daaf2bc
    sltu	$v1,$v0,$a5
    beqz	$v1,.L0daaf328
    li	$a1,0xbead
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 214
    lw	$a0,1704($a3)
    lui	$a1,0x8000
    # Line 215
    b	.L0daae94c
    # Line 214
    and	$a0,$a0,$a1
.L0daaee5c:
    # Line 89
    li	$a2,2881
    bne	$a5,$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 155
    lw	$a0,1696($a3)
    # Line 156
    b	.L0daae94c
    # Line 155
    andi	$a0,$a0,0x800
.L0daaee74:
    # Line 89
    li	$a1,2977
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 142
    lw	$a0,1696($a3)
    lui	$a1,0x40
    # Line 143
    b	.L0daae94c
    # Line 142
    and	$a0,$a0,$a1
.L0daaee90:
    # Line 89
    sltiu	$a2,$a5,3089
    bnez	$a2,.L0daaf050
    sltiu	$at,$a5,3090
    beqz	$at,.L0daaebb0
    sd	$ra,24($sp)
    # Line 162
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,1068($a0)
    move	$a0,$v0
    # Line 163
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaeec8:
    # Line 89
    li	$a1,2896
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 126
    lw	$a0,1696($a3)
    # Line 127
    b	.L0daae94c
    # Line 126
    andi	$a0,$a0,0x40
.L0daaeee0:
    # Line 89
    li	$a1,3171
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 196
    lw	$a0,1696($a3)
    lui	$a1,0x20
    # Line 197
    b	.L0daae94c
    # Line 196
    and	$a0,$a0,$a1
.L0daaeefc:
    # Line 89
    li	$a2,3473
    bne	$a5,$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeb74
    # Line 224
    addiu	$a1,$a5,-3472
.L0daaef10:
    # Line 89
    sltiu	$at,$a5,3476
    bnez	$at,.L0daaf0a8
    sltiu	$v1,$a5,3477
    beqz	$v1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeb74
    # Line 224
    addiu	$a1,$a5,-3472
.L0daaef2c:
    # Line 89
    sltiu	$a1,$a5,3504
    bnez	$a1,.L0daaf0bc
    sltiu	$a2,$a5,3505
    beqz	$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daae940
    # Line 233
    lw	$a0,1716($a3)
.L0daaef48:
    # Line 89
    li	$at,3552
    bne	$a5,$at,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 169
    lw	$a0,1696($a3)
    lui	$a1,0x1
    # Line 170
    b	.L0daae94c
    # Line 169
    and	$a0,$a0,$a1
.L0daaef64:
    # Line 89
    bne	$a5,$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 239
    lw	$a0,1700($a3)
    # Line 240
    b	.L0daae94c
    # Line 239
    andi	$a0,$a0,0x400
.L0daaef78:
    # Line 89
    sltiu	$a1,$a5,12290
    bnez	$a1,.L0daaf0ec
    sltiu	$a2,$a5,12291
    beqz	$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeab4
    sd	$ra,24($sp)
.L0daaef94:
    # Line 89
    sltiu	$at,$a5,16385
    bnez	$at,.L0daaf100
    sltiu	$v1,$a5,16386
    beqz	$v1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaecb8
    # Line 210
    lw	$a0,1704($a3)
.L0daaefb0:
    # Line 89
    li	$v0,0x8024
    sltu	$a1,$a5,$v0
    bnez	$a1,.L0daaf140
    sltu	$a2,$v0,$a5
    bnez	$a2,.L0daaebb0
    # Line 245
    li	$a0,0x81dc
    addu	$a0,$a0,$a3
    # Line 246
    b	.L0daae94c
    # Line 245
    lbu	$a0,0($a0)
.L0daaefd4:
    # Line 89
    sltu	$a1,$a5,$v0
    bnez	$a1,.L0daaf174
    sltu	$a2,$v0,$a5
    bnez	$a2,.L0daaf288
    li	$a1,0x8077
    # Line 280
    lw	$a0,4944($a3)
    lui	$a1,0xf
    ori	$a1,$a1,0xf000
    # Line 281
    b	.L0daae94c
    # Line 280
    and	$a0,$a0,$a1
.L0daaeffc:
    # Line 89
    li	$v0,0x80bc
    sltu	$a2,$a5,$v0
    bnez	$a2,.L0daaf198
    sltu	$at,$v0,$a5
    beqz	$at,.L0daaf300
    li	$v1,0x80d0
    bne	$a5,$v1,.L0daaebb0
    # Line 260
    li	$a0,0x83a4
    addu	$a0,$a0,$a3
    # Line 261
    b	.L0daae94c
    # Line 260
    lbu	$a0,0($a0)
.L0daaf028:
    # Line 132
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,24($sp)
    bal __Mgr_ReturnMode
    lw	$a0,340($a0)
    # Line 133
    andi	$a0,$v0,0x20
    # Line 134
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaf050:
    # Line 89
    li	$a1,3058
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 139
    lw	$a0,1700($a3)
    # Line 140
    b	.L0daae94c
    # Line 139
    andi	$a0,$a0,0x800
.L0daaf068:
    # Line 89
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 190
    lw	$a0,1696($a3)
    lui	$a1,0x8
    # Line 191
    b	.L0daae94c
    # Line 190
    and	$a0,$a0,$a1
.L0daaf080:
    # Line 114
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,24($sp)
    bal __Mgr_ReturnMode
    lw	$a0,344($a0)
    # Line 115
    andi	$a0,$v0,0x1
    # Line 116
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaf0a8:
    # Line 89
    li	$a1,3475
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeb74
    # Line 224
    addiu	$a1,$a5,-3472
.L0daaf0bc:
    # Line 89
    li	$a2,3480
    bne	$a5,$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeb74
    # Line 224
    addiu	$a1,$a5,-3472
.L0daaf0d0:
    # Line 89
    sltiu	$at,$a5,3509
    bnez	$at,.L0daaf248
    sltiu	$v1,$a5,3510
    beqz	$v1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daae940
    # Line 233
    lw	$a0,1716($a3)
.L0daaf0ec:
    # Line 89
    li	$a1,12289
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaeab4
    sd	$ra,24($sp)
.L0daaf100:
    # Line 89
    li	$a2,16384
    bne	$a5,$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaecb8
    # Line 210
    lw	$a0,1704($a3)
.L0daaf114:
    # Line 89
    bne	$a5,$at,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaecb8
    # Line 210
    lw	$a0,1704($a3)
.L0daaf124:
    # Line 89
    sltiu	$v1,$a5,16390
    bnez	$v1,.L0daaf25c
    sltiu	$a1,$a5,16391
    beqz	$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaecb8
    # Line 210
    lw	$a0,1704($a3)
.L0daaf140:
    # Line 89
    li	$a2,0x8012
    bne	$a5,$a2,.L0daaebb0
    # Line 257
    li	$a0,0x8334
    addu	$a0,$a0,$a3
    # Line 258
    b	.L0daae94c
    # Line 257
    lbu	$a0,0($a0)
.L0daaf158:
    # Line 89
    li	$a1,0x8037
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 236
    lw	$a0,1696($a3)
    lui	$a1,0x100
    # Line 237
    b	.L0daae94c
    # Line 236
    and	$a0,$a0,$a1
.L0daaf174:
    # Line 89
    li	$v0,0x8075
    sltu	$a2,$a5,$v0
    bnez	$a2,.L0daaf270
    sltu	$at,$v0,$a5
    bnez	$at,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 277
    lw	$a0,4944($a3)
    # Line 278
    b	.L0daae94c
    # Line 277
    andi	$a0,$a0,0xf00
.L0daaf198:
    # Line 89
    li	$v0,0x8094
    sltu	$a1,$a5,$v0
    bnez	$a1,.L0daaf2a0
    sltu	$a2,$v0,$a5
    bnez	$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 292
    lw	$a0,1700($a3)
    # Line 293
    b	.L0daae94c
    # Line 292
    andi	$a0,$a0,0x20
.L0daaf1bc:
    # Line 266
    li	$a0,0x841c
    addu	$a0,$a0,$a3
    # Line 267
    b	.L0daae94c
    # Line 266
    lbu	$a0,0($a0)
.L0daaf1cc:
    # Line 118
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,24($sp)
    bal __Mgr_ReturnMode
    lw	$a0,340($a0)
    # Line 119
    lui	$a0,0x2
    and	$a0,$v0,$a0
    bnez	$a0,.L0daae94c
    ld	$ra,24($sp)
    # Line 121
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    move	$a1,$zero
    bal __Mgr_ReturnMode
    lw	$a0,996($a0)
    la	$a0,SYMBOL_LOCATION
    # Line 122
    lw	$a0,1088($a0)
    ld	$ra,24($sp)
    b	.L0daae94c
    and	$a0,$a0,$v0
.L0daaf224:
    # Line 96
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,800($a0)
    move	$a0,$v0
    # Line 98
    b	.L0daae94c
    ld	$ra,24($sp)
.L0daaf248:
    # Line 89
    li	$a1,3508
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daae940
    # Line 233
    lw	$a0,1716($a3)
.L0daaf25c:
    # Line 89
    li	$a2,16389
    bne	$a5,$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaecb8
    # Line 210
    lw	$a0,1704($a3)
.L0daaf270:
    # Line 89
    li	$at,0x8074
    bne	$a5,$at,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 274
    lw	$a0,4944($a3)
    # Line 275
    b	.L0daae94c
    # Line 274
    andi	$a0,$a0,0xff
.L0daaf288:
    # Line 89
    bne	$a5,$a1,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 283
    lw	$a0,4944($a3)
    lui	$a1,0xf000
    # Line 284
    b	.L0daae94c
    # Line 283
    and	$a0,$a0,$a1
.L0daaf2a0:
    # Line 89
    li	$a2,0x8079
    bne	$a5,$a2,.L0daaebb4
    # Line 296
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 289
    lw	$a0,4944($a3)
    lui	$a1,0x800
    # Line 290
    b	.L0daae94c
    # Line 289
    and	$a0,$a0,$a1
.L0daaf2bc:
    # Line 89
    li	$v0,0x8134
    sltu	$a2,$a5,$v0
    bnez	$a2,.L0daaf310
    sltu	$at,$v0,$a5
    bnez	$at,.L0daaebb0
    # Line 178
    lui	$v0,0x1
    addu	$v0,$a3,$v0
    lw	$a0,-30164($v0)
    beqz	$a0,.L0daaf354
    nop
    lw	$a3,196($a0)
    beqz	$a3,.L0daaf330
    sd	$v0,8($sp)
.L0daaf2f0:
    # Line 180
    lbu	$a0,179($a3)
    xori	$a0,$a0,0x6
    b	.L0daae94c
    sltiu	$a0,$a0,1
.L0daaf300:
    # Line 263
    li	$a0,0x83e0
    addu	$a0,$a0,$a3
    # Line 264
    b	.L0daae94c
    # Line 263
    lbu	$a0,0($a0)
.L0daaf310:
    # Line 89
    li	$a1,0x80d2
    bne	$a5,$a1,.L0daaebb0
    # Line 269
    li	$a0,0x8458
    addu	$a0,$a0,$a3
    # Line 270
    b	.L0daae94c
    # Line 269
    lbu	$a0,0($a0)
.L0daaf328:
    # Line 146
    b	.L0daae94c
    # Line 145
    lw	$a0,32068($a3)
.L0daaf330:
    # Line 179
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,24($sp)
    bal mgrTM_RefreshDim
    nop
    ld	$a3,8($sp)
    lw	$a3,-30164($a3)
    ld	$ra,24($sp)
    b	.L0daaf2f0
    lw	$a3,196($a3)
.L0daaf354:
    b	.L0daae94c
    # Line 180
    lw	$a0,0($sp)
.end __glMgrim_IsEnabled

# Function: spin_and_return
# Declared: Line 306 (Source lines: 307-315)
# Address: 0x0daaf35c - 0x0daaf3b8 (Size: 92 bytes, Frame: 32)
.ent spin_and_return
spin_and_return:
    # Line 307
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 314
    li	$v1,0xa104
    # Line 312
    lui	$a2,0x2
    # Line 314
    lui	$v0,0x7
    # Line 315
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 314
    ori	$v0,$v0,0x4080
    # Line 308
    lw	$a1,__glCurrentContext
    # Line 315
    addiu	$t9,$t9,-3144
    # Line 311
    li	$at,0x9d48
    addu	$at,$at,$a1
    lw	$at,0($at)
    # Line 312
    lui	$a3,0x7
    ori	$a3,$a3,0xc
    addu	$a3,$a3,$at
    sw	$a2,0($a3)
    # Line 314
    sw	$v1,0($v0)
    sw	$a0,0($v0)
    # Line 315
    bal __glMgrim_IsEnabled
    move	$a0,$at
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end spin_and_return

# Function: spin_and_return_inner
# Declared: Line 320 (Source lines: 321-352)
# Address: 0x0daaf3b8 - 0x0daaf464 (Size: 172 bytes, Frame: 48)
.ent spin_and_return_inner
spin_and_return_inner:
    # Line 326
    li	$a3,5
    # Line 321
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    sd	$s7,8($sp)
    # Line 326
    lui	$s7,0x7
    addu	$s7,$a0,$s7
    lw	$at,8($s7)
    sd	$s5,16($sp)
    lui	$s5,0x2
    and	$at,$at,$s5
    bnez	$at,.L0daaf404
    # Line 321
    move	$s8,$a1
    # Line 329
    addiu	$a3,$a3,-1
.L0daaf3ec:
    beqz	$a3,.L0daaf40c
    nop
    lw	$at,8($s7)
    and	$at,$at,$s5
    beqzl	$at,.L0daaf3ec
    addiu	$a3,$a3,-1
.L0daaf404:
    # Line 336
    bnezl	$a3,.L0daaf420
    # Line 350
    lw	$v1,4624($s8)
.L0daaf40c:
    # Line 336
    lw	$v0,8($s7)
    and	$v0,$v0,$s5
    beqzl	$v0,.L0daaf440
    sd	$ra,24($sp)
.L0daaf41c:
    # Line 350
    lw	$v1,4624($s8)
.L0daaf420:
    lw	$v1,16($v1)
    # Line 352
    ld	$s5,16($sp)
    # Line 350
    sw	$zero,28($v1)
    # Line 352
    ld	$s8,0($sp)
    lw	$v0,20($s7)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daaf440:
    # Line 339
    # lw $t9, -17864($gp) # &sginap
.L0daaf444:
    jal	sginap
    move	$a0,$zero
    lw	$a0,8($s7)
    and	$a0,$a0,$s5
    beqz	$a0,.L0daaf444
    nop	# was lw $t9, -17864($gp) # &sginap
    b	.L0daaf41c
    ld	$ra,24($sp)
.end spin_and_return_inner

# Function: __Mgr_GetCurrentAttrState
# Declared: Line 357 (Source lines: 359-416)
# Address: 0x0daaf464 - 0x0daaf738 (Size: 724 bytes, Frame: 208)
.globl __Mgr_GetCurrentAttrState
.ent __Mgr_GetCurrentAttrState
__Mgr_GetCurrentAttrState:
    # Line 362
    li	$at,2816
    # Line 359
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    sd	$gp,32($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,-3532
    # Line 362
    beq	$a0,$at,.L0daaf4f4
    # Line 359
    addu	$gp,$t9,$v0
    # Line 362
    li	$v1,2817
    beq	$a0,$v1,.L0daaf5b4
    li	$a4,2818
    beq	$a0,$a4,.L0daaf5ec
    sd	$a2,24($sp)
    li	$at,2819
    beq	$a0,$at,.L0daaf67c
    li	$v0,2883
    beq	$a0,$v0,.L0daaf4b8
    sd	$a3,8($sp)
.L0daaf4ac:
    ld	$gp,32($sp)
    # Line 416
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf4b8:
    # Line 409
    # lw $t9, -32728($gp) # &sub_0dab0000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-3236
    bal __glMgrim_IsEnabled
    li	$a0,15
    # Line 413
    ld	$v1,8($sp)
    lui	$ra,0x1c0
    lw	$at,0($v1)
    and	$ra,$v0,$ra
    sltu	$ra,$zero,$ra
    addiu	$at,$at,1
    sw	$at,0($v1)
    sb	$ra,-1($at)
    b	.L0daaf4ac
    ld	$ra,40($sp)
.L0daaf4f4:
    # Line 365
    # lw $t9, -32728($gp) # &sub_0dab0000
    sd	$a2,24($sp)
    sd	$ra,40($sp)
    addiu	$t9,$t9,-3236
    bal __glMgrim_IsEnabled
    li	$a0,4
    # Line 366
    ld	$at,24($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 365
    sw	$v0,0($sp)
    # Line 366
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f0,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f0,-4($ra)
    # Line 368
    bal __glMgrim_IsEnabled
    li	$a0,5
    # Line 369
    ld	$at,24($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 368
    sw	$v0,0($sp)
    # Line 369
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f1,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f1,-4($ra)
    # Line 371
    bal __glMgrim_IsEnabled
    li	$a0,6
    # Line 372
    ld	$at,24($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 371
    sw	$v0,0($sp)
    # Line 372
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f2,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f2,-4($ra)
    # Line 374
    bal __glMgrim_IsEnabled
    li	$a0,7
    # Line 375
    ld	$at,24($sp)
    # Line 374
    sw	$v0,0($sp)
    # Line 375
    lw	$ra,0($at)
    lwc1	$f3,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f3,-4($ra)
    # Line 376
    b	.L0daaf4ac
    ld	$ra,40($sp)
.L0daaf5b4:
    # Line 379
    # lw $t9, -32728($gp) # &sub_0dab0000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-3236
    bal __glMgrim_IsEnabled
    li	$a0,4
    # Line 380
    ld	$at,16($sp)
    # Line 379
    sw	$v0,0($sp)
    # Line 380
    lw	$ra,0($at)
    lwc1	$f0,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f0,-4($ra)
    # Line 381
    b	.L0daaf4ac
    ld	$ra,40($sp)
.L0daaf5ec:
    # Line 384
    # lw $t9, -32728($gp) # &sub_0dab0000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-3236
    bal __glMgrim_IsEnabled
    li	$a0,8
    # Line 385
    ld	$at,24($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 384
    sw	$v0,0($sp)
    # Line 385
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f1,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f1,-4($ra)
    # Line 387
    bal __glMgrim_IsEnabled
    li	$a0,9
    # Line 388
    ld	$at,24($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 387
    sw	$v0,0($sp)
    # Line 388
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f2,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f2,-4($ra)
    # Line 390
    bal __glMgrim_IsEnabled
    li	$a0,10
    # Line 391
    ld	$at,24($sp)
    # Line 390
    sw	$v0,0($sp)
    # Line 391
    lw	$ra,0($at)
    lwc1	$f3,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f3,-4($ra)
    # Line 392
    b	.L0daaf4ac
    ld	$ra,40($sp)
.L0daaf67c:
    # Line 395
    # lw $t9, -32728($gp) # &sub_0dab0000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-3236
    bal __glMgrim_IsEnabled
    li	$a0,11
    # Line 396
    ld	$at,16($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 395
    sw	$v0,0($sp)
    # Line 396
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f4,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f4,-4($ra)
    # Line 398
    bal __glMgrim_IsEnabled
    li	$a0,12
    # Line 399
    ld	$at,16($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 398
    sw	$v0,0($sp)
    # Line 399
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f5,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f5,-4($ra)
    # Line 401
    bal __glMgrim_IsEnabled
    li	$a0,13
    # Line 402
    ld	$at,16($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 401
    sw	$v0,0($sp)
    # Line 402
    lw	$ra,0($at)
    addiu	$t9,$t9,-3236
    lwc1	$f6,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f6,-4($ra)
    # Line 404
    bal __glMgrim_IsEnabled
    li	$a0,14
    # Line 405
    ld	$at,16($sp)
    # Line 404
    sw	$v0,0($sp)
    # Line 405
    lw	$ra,0($at)
    lwc1	$f0,0($sp)
    addiu	$ra,$ra,4
    sw	$ra,0($at)
    swc1	$f0,-4($ra)
    # Line 406
    b	.L0daaf4ac
    ld	$ra,40($sp)
.end __Mgr_GetCurrentAttrState

