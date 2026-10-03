# Source: ../soft/so_colortable.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_colortable.c
# Total Functions: 16

.text

# Function: __glCheckColorTableArgs
# Declared: Line 33 (Source lines: 36-159)
# Address: 0x0db358a4 - 0x0db35f64 (Size: 1728 bytes, Frame: 224)
.globl __glCheckColorTableArgs
.ent __glCheckColorTableArgs
__glCheckColorTableArgs:
    # Line 36
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    move	$s0,$a3
    sd	$gp,16($sp)
    lui	$a0,0xffff
    ori	$a0,$a0,0x7f44
    addu	$a0,$a1,$a0
    lui	$a1,0xd
    addiu	$a1,$a1,-29196
    addu	$gp,$t9,$a1
    la	$a1,sub_0dbf0000
    sltiu	$at,$a0,26
    sll	$a0,$a0,0x2
    addiu	$a1,$a1,-3928
    beqz	$at,.L0db35954
    addu	$a0,$a0,$a1
    lw	$a1,%lo(jtbl_0dbef0a8)($a0)
    # Line 49
    li	$a0,0x8049
    # Line 51
    sltu	$v0,$a0,$a2
    # Line 36
    jr	$a1
    # Line 49
    sltu	$at,$a2,$a0
.L0db358f8:
    bnez	$at,.L0db35968
    # Line 51
    li	$a0,0x8053
    beqz	$v0,.L0db35980
    sltu	$a1,$a0,$a2
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db35b28
    li	$a0,0x804e
    beqz	$a1,.L0db35980
    li	$a0,0x8058
    sltu	$at,$a2,$a0
    bnez	$at,.L0db35cb4
    sltu	$v0,$a0,$a2
    beqz	$v0,.L0db35980
    li	$a0,0x805a
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db35eb4
    sltu	$a1,$a0,$a2
    beqz	$a1,.L0db35980
    li	$at,0x805b
    beql	$a2,$at,.L0db35984
    sd	$a4,0($sp)
    b	.L0db35ae0
    # Line 97
    li	$v0,1280
.L0db35954:
    # Line 48
    li	$v0,1280
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35968:
    # Line 51
    li	$a0,0x803f
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db35a78
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db35af0
    li	$a0,0x8044
.L0db35980:
    sd	$a4,0($sp)
.L0db35984:
    # Line 98
    bltz	$s0,.L0db35ab0
    sd	$a5,8($sp)
    # Line 110
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    sd	$ra,32($sp)
    jal	__glElementsPerGroup
    move	$a0,$a2
    sll	$a6,$v0,0x2
    li	$ra,0x8000
    divu	$zero,$ra,$a6
    teq	$a6,$zero,0x7
    mflo	$a1
    sltu	$a1,$a1,$s0
    bnez	$a1,.L0db35a14
    ld	$ra,32($sp)
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    ld	$a0,0($sp)
    sll	$v0,$v0,0x2
    li	$v1,0x8000
    divu	$zero,$v1,$v0
    ld	$ra,32($sp)
    mflo	$at
    sltu	$at,$at,$s0
    bnez	$at,.L0db35a14
    teq	$v0,$zero,0x7
    beqz	$s0,.L0db35a34
    ld	$at,0($sp)
.L0db359f0:
    andi	$a1,$s0,0x1
    beqz	$a1,.L0db35a28
    sra	$a2,$s0,0x1
    beqz	$a2,.L0db35a28
    # Line 121
    li	$v0,1281
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35a14:
    # Line 114
    li	$v0,0x8031
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35a28:
    # Line 119
    bnez	$a2,.L0db359f0
    move	$s0,$a2
    ld	$at,0($sp)
.L0db35a34:
    sltiu	$at,$at,6407
    bnez	$at,.L0db35bcc
    ld	$v0,0($sp)
    # Line 126
    sltiu	$v0,$v0,6408
    bnez	$v0,.L0db35be4
    ld	$v1,0($sp)
    sltiu	$v1,$v1,6410
    bnez	$v1,.L0db35ee0
    ld	$a1,0($sp)
    sltiu	$a1,$a1,6411
    bnez	$a1,.L0db35be4
    ld	$v0,0($sp)
    li	$at,0x8000
    beq	$at,$v0,.L0db35be8
    ld	$v1,8($sp)
    b	.L0db35e18
    # Line 138
    li	$v0,1280
.L0db35a78:
    # Line 51
    sltiu	$v1,$a2,6410
    bnez	$v1,.L0db35ac4
    sltiu	$a1,$a2,6411
    bnez	$a1,.L0db35980
    li	$a0,0x803d
    sltu	$at,$a2,$a0
    bnez	$at,.L0db35c54
    sltu	$v0,$a0,$a2
    beqz	$v0,.L0db35980
    li	$v1,0x803e
    bne	$a2,$v1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35ab0:
    # Line 102
    li	$v0,1281
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35ac4:
    # Line 51
    sltiu	$a1,$a2,6408
    bnez	$a1,.L0db35b60
    sltiu	$at,$a2,6409
    bnez	$at,.L0db35980
    li	$v0,6409
    beq	$a2,$v0,.L0db35980
    # Line 97
    li	$v0,1280
.L0db35ae0:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35af0:
    # Line 51
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db35b7c
    sltu	$a1,$a0,$a2
    beqz	$a1,.L0db35980
    li	$a0,0x8047
    sltu	$at,$a2,$a0
    bnez	$at,.L0db35d70
    sltu	$v0,$a0,$a2
    beqz	$v0,.L0db35980
    li	$v1,0x8048
    bne	$a2,$v1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35b28:
    # Line 51
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0db35ba4
    sltu	$at,$a0,$a2
    beqz	$at,.L0db35980
    li	$a0,0x8051
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db35da4
    sltu	$v1,$a0,$a2
    beqz	$v1,.L0db35980
    li	$a1,0x8052
    bne	$a2,$a1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35b60:
    # Line 51
    sltiu	$at,$a2,6407
    bnez	$at,.L0db35c40
    sltiu	$v0,$a2,6408
    beqz	$v0,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35b7c:
    # Line 51
    li	$a0,0x8042
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db35c74
    sltu	$a1,$a0,$a2
    beqz	$a1,.L0db35980
    li	$at,0x8043
    bne	$a2,$at,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35ba4:
    # Line 51
    li	$a0,0x804c
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db35c94
    sltu	$v1,$a0,$a2
    beqz	$v1,.L0db35980
    li	$a1,0x804d
    bne	$a2,$a1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35bcc:
    ld	$at,0($sp)
    # Line 126
    sltiu	$at,$at,6405
    bnez	$at,.L0db35de4
    ld	$v0,0($sp)
    sltiu	$v0,$v0,6406
    beqz	$v0,.L0db35ec8
.L0db35be4:
    ld	$v1,8($sp)
.L0db35be8:
    # Line 139
    sltiu	$v1,$v1,5126
    bnez	$v1,.L0db35cdc
    ld	$a1,8($sp)
    # Line 141
    sltiu	$a1,$a1,5127
    bnez	$a1,.L0db35d34
    ld	$at,8($sp)
    li	$a0,0x8034
    sltu	$at,$at,$a0
    bnez	$at,.L0db35d18
    ld	$v0,8($sp)
    sltu	$v0,$a0,$v0
    beqz	$v0,.L0db35d34
    ld	$v1,8($sp)
    li	$a0,0x8036
    sltu	$v1,$v1,$a0
    bnez	$v1,.L0db35f4c
    ld	$a1,8($sp)
    sltu	$a1,$a0,$a1
    bnez	$a1,.L0db35e68
    # Line 156
    li	$v0,1280
    b	.L0db35d38
    # Line 159
    move	$v0,$zero
.L0db35c40:
    # Line 51
    li	$at,6406
    bne	$a2,$at,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35c54:
    # Line 51
    li	$a0,0x803c
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db35d48
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35c74:
    # Line 51
    li	$a0,0x8041
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0db35d5c
    sltu	$at,$a0,$a2
    bnez	$at,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35c94:
    # Line 51
    li	$a0,0x804b
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db35d90
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35cb4:
    # Line 51
    li	$a0,0x8056
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0db35dc4
    sltu	$at,$a0,$a2
    beqz	$at,.L0db35980
    li	$v0,0x8057
    bne	$a2,$v0,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35cdc:
    ld	$v1,8($sp)
    # Line 141
    sltiu	$v1,$v1,5123
    bnez	$v1,.L0db35e28
    ld	$a1,8($sp)
    sltiu	$a1,$a1,5124
    bnez	$a1,.L0db35d34
    ld	$at,8($sp)
    sltiu	$at,$at,5125
    bnez	$at,.L0db35f04
    ld	$v0,8($sp)
    sltiu	$v0,$v0,5126
    beqz	$v0,.L0db35e68
    # Line 156
    li	$v0,1280
    b	.L0db35d38
    # Line 159
    move	$v0,$zero
.L0db35d18:
    # Line 141
    ld	$v1,8($sp)
    li	$a0,0x8033
    sltu	$v1,$v1,$a0
    bnez	$v1,.L0db35f1c
    ld	$a1,8($sp)
    sltu	$a1,$a0,$a1
    bnez	$a1,.L0db35e64
.L0db35d34:
    # Line 159
    move	$v0,$zero
.L0db35d38:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35d48:
    # Line 51
    li	$at,0x803b
    bne	$a2,$at,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35d5c:
    # Line 51
    li	$v0,0x8040
    bne	$a2,$v0,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35d70:
    # Line 51
    li	$a0,0x8046
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0db35e78
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35d90:
    # Line 51
    li	$at,0x804a
    bne	$a2,$at,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35da4:
    # Line 51
    li	$a0,0x8050
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db35e8c
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35dc4:
    # Line 51
    li	$a0,0x8055
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0db35ea0
    sltu	$at,$a0,$a2
    bnez	$at,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35de4:
    ld	$v0,0($sp)
    # Line 126
    sltiu	$v0,$v0,6404
    bnez	$v0,.L0db35e08
    ld	$v1,0($sp)
    sltiu	$v1,$v1,6405
    beqz	$v1,.L0db35e18
    # Line 138
    li	$v0,1280
    b	.L0db35be8
    ld	$v1,8($sp)
.L0db35e08:
    # Line 126
    ld	$a1,0($sp)
    li	$at,6403
    beq	$a1,$at,.L0db35be4
    # Line 138
    li	$v0,1280
.L0db35e18:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35e28:
    ld	$v0,8($sp)
    # Line 141
    sltiu	$v0,$v0,5121
    bnez	$v0,.L0db35e58
    ld	$v1,8($sp)
    sltiu	$v1,$v1,5122
    bnez	$v1,.L0db35d34
    ld	$a1,8($sp)
    li	$at,5122
    bne	$a1,$at,.L0db35e68
    # Line 156
    li	$v0,1280
    b	.L0db35d38
    # Line 159
    move	$v0,$zero
.L0db35e58:
    # Line 141
    ld	$v0,8($sp)
    li	$v1,5120
    beq	$v0,$v1,.L0db35d34
.L0db35e64:
    # Line 156
    li	$v0,1280
.L0db35e68:
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db35e78:
    # Line 51
    li	$a1,0x8045
    bne	$a2,$a1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35e8c:
    # Line 51
    li	$at,0x804f
    bne	$a2,$at,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35ea0:
    # Line 51
    li	$v0,0x8054
    bne	$a2,$v0,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35eb4:
    # Line 51
    li	$v1,0x8059
    bne	$a2,$v1,.L0db35ae0
    # Line 97
    li	$v0,1280
    b	.L0db35984
    sd	$a4,0($sp)
.L0db35ec8:
    # Line 126
    ld	$a1,0($sp)
    li	$at,6406
    bne	$a1,$at,.L0db35e18
    # Line 138
    li	$v0,1280
    b	.L0db35be8
    ld	$v1,8($sp)
.L0db35ee0:
    ld	$v0,0($sp)
    # Line 126
    sltiu	$v0,$v0,6409
    bnez	$v0,.L0db35f34
    ld	$v1,0($sp)
    sltiu	$v1,$v1,6410
    beqz	$v1,.L0db35e18
    # Line 138
    li	$v0,1280
    b	.L0db35be8
    ld	$v1,8($sp)
.L0db35f04:
    # Line 141
    ld	$a1,8($sp)
    li	$at,5124
    bne	$a1,$at,.L0db35e68
    # Line 156
    li	$v0,1280
    b	.L0db35d38
    # Line 159
    move	$v0,$zero
.L0db35f1c:
    # Line 141
    ld	$v0,8($sp)
    li	$v1,0x8032
    bne	$v0,$v1,.L0db35e68
    # Line 156
    li	$v0,1280
    b	.L0db35d38
    # Line 159
    move	$v0,$zero
.L0db35f34:
    # Line 126
    ld	$a1,0($sp)
    li	$at,6408
    bne	$a1,$at,.L0db35e18
    # Line 138
    li	$v0,1280
    b	.L0db35be8
    ld	$v1,8($sp)
.L0db35f4c:
    # Line 141
    ld	$v0,8($sp)
    li	$v1,0x8035
    beq	$v0,$v1,.L0db35d38
    # Line 159
    move	$v0,$zero
    b	.L0db35e68
    # Line 156
    li	$v0,1280
.end __glCheckColorTableArgs

# Function: __glLoadColorTableParams
# Declared: Line 165 (Source lines: 168-270)
# Address: 0x0db35f64 - 0x0db363d8 (Size: 1140 bytes, Frame: 0)
.globl __glLoadColorTableParams
.ent __glLoadColorTableParams
__glLoadColorTableParams:
    # Line 169
    sw	$a2,8($a0)
    # Line 170
    sw	$a3,12($a0)
    li	$a5,0x8049
    sltu	$at,$a2,$a5
    bnez	$at,.L0db35fcc
    # Line 168
    sw	$a1,0($a0)
    # Line 172
    sltu	$v0,$a5,$a2
    beqz	$v0,.L0db36028
    li	$a3,0x8053
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0db3614c
    sltu	$a1,$a3,$a2
    bnez	$a1,.L0db361c4
    li	$a3,0x8058
.L0db35f9c:
    # Line 244
    sw	$zero,36($a0)
.L0db35fa0:
    # Line 243
    sw	$zero,32($a0)
    # Line 242
    sw	$zero,28($a0)
    # Line 239
    li	$at,24
    # Line 245
    li	$v0,6407
    # Line 246
    li	$v1,3
    sw	$v1,76($a0)
    # Line 245
    sw	$v0,72($a0)
    # Line 241
    sw	$at,24($a0)
    # Line 240
    sw	$at,20($a0)
    # Line 270
    jr	$ra
    # Line 239
    sw	$at,16($a0)
.L0db35fcc:
    # Line 172
    li	$a3,0x803f
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0db36058
    sltu	$at,$a3,$a2
    bnez	$at,.L0db360ac
    li	$a3,6409
.L0db35fe4:
    # Line 198
    sw	$a3,72($a0)
.L0db35fe8:
    # Line 197
    sw	$zero,36($a0)
    # Line 195
    sw	$zero,28($a0)
    # Line 194
    sw	$zero,24($a0)
    # Line 193
    sw	$zero,20($a0)
    # Line 192
    sw	$zero,16($a0)
    # Line 196
    li	$v0,24
    # Line 199
    li	$v1,1
    sw	$v1,76($a0)
    # Line 270
    jr	$ra
    # Line 196
    sw	$v0,32($a0)
.L0db36010:
    # Line 172
    li	$a3,0x804c
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0db36260
    sltu	$at,$a3,$a2
    bnez	$at,.L0db36328
    li	$a1,0x804d
.L0db36028:
    # Line 228
    sw	$a5,72($a0)
.L0db3602c:
    # Line 226
    sw	$zero,32($a0)
    # Line 225
    sw	$zero,28($a0)
    # Line 224
    sw	$zero,24($a0)
    # Line 223
    sw	$zero,20($a0)
    # Line 222
    sw	$zero,16($a0)
    # Line 227
    li	$v0,24
    # Line 229
    li	$v1,1
    sw	$v1,76($a0)
    # Line 227
    sw	$v0,36($a0)
.L0db36050:
    # Line 270
    jr	$ra
    nop
.L0db36058:
    # Line 172
    sltiu	$a1,$a2,6410
    bnez	$a1,.L0db36108
    sltiu	$at,$a2,6411
    bnez	$at,.L0db360d8
    li	$a3,0x803d
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0db36220
    sltu	$v1,$a3,$a2
    bnez	$v1,.L0db362bc
    li	$a3,6406
.L0db36080:
    # Line 184
    sw	$a3,72($a0)
.L0db36084:
    # Line 183
    sw	$zero,36($a0)
    # Line 182
    sw	$zero,32($a0)
    # Line 180
    sw	$zero,24($a0)
    # Line 179
    sw	$zero,20($a0)
    # Line 178
    sw	$zero,16($a0)
    # Line 185
    li	$at,1
    sw	$at,76($a0)
    # Line 181
    li	$a1,24
    # Line 270
    jr	$ra
    # Line 181
    sw	$a1,28($a0)
.L0db360ac:
    # Line 172
    li	$a3,0x8044
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0db361a4
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0db360d8
    li	$a3,0x8047
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0db362f4
    sltu	$at,$a3,$a2
    bnez	$at,.L0db3638c
    li	$v0,0x8048
.L0db360d8:
    # Line 213
    sw	$zero,36($a0)
.L0db360dc:
    # Line 210
    sw	$zero,24($a0)
    # Line 209
    sw	$zero,20($a0)
    # Line 208
    sw	$zero,16($a0)
    # Line 211
    li	$v0,24
    # Line 214
    li	$v1,6410
    # Line 215
    li	$a1,2
    sw	$a1,76($a0)
    # Line 214
    sw	$v1,72($a0)
    # Line 212
    sw	$v0,32($a0)
    # Line 270
    jr	$ra
    # Line 211
    sw	$v0,28($a0)
.L0db36108:
    # Line 172
    sltiu	$at,$a2,6408
    bnez	$at,.L0db36188
    sltiu	$v0,$a2,6409
    beqz	$v0,.L0db36210
    li	$a3,6409
.L0db3611c:
    # Line 261
    sw	$zero,36($a0)
.L0db36120:
    # Line 260
    sw	$zero,32($a0)
    # Line 256
    li	$v1,24
    # Line 262
    li	$a1,6408
    # Line 263
    li	$at,4
    sw	$at,76($a0)
    # Line 262
    sw	$a1,72($a0)
    # Line 259
    sw	$v1,28($a0)
    # Line 258
    sw	$v1,24($a0)
    # Line 257
    sw	$v1,20($a0)
    # Line 270
    jr	$ra
    # Line 256
    sw	$v1,16($a0)
.L0db3614c:
    # Line 172
    li	$a3,0x804e
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0db36010
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0db35f9c
    li	$a3,0x8051
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0db36338
    sltu	$at,$a3,$a2
    beqz	$at,.L0db35f9c
    li	$v0,0x8052
    bne	$a2,$v0,.L0db36050
    nop
    b	.L0db35fa0
    # Line 244
    sw	$zero,36($a0)
.L0db36188:
    # Line 172
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0db361fc
    sltiu	$a1,$a2,6408
    beqz	$a1,.L0db36050
    nop
    b	.L0db35fa0
    # Line 244
    sw	$zero,36($a0)
.L0db361a4:
    # Line 172
    li	$a3,0x8042
    sltu	$at,$a2,$a3
    bnez	$at,.L0db36240
    sltu	$v0,$a3,$a2
    bnez	$v0,.L0db362e4
    li	$a1,0x8043
    b	.L0db35fe4
    li	$a3,6409
.L0db361c4:
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0db36280
    sltu	$a1,$a3,$a2
    beqz	$a1,.L0db3611c
    li	$a3,0x805a
    sltu	$at,$a2,$a3
    bnez	$at,.L0db363c4
    sltu	$v0,$a3,$a2
    beqz	$v0,.L0db3611c
    li	$v1,0x805b
    bne	$a2,$v1,.L0db36050
    nop
    b	.L0db36120
    # Line 261
    sw	$zero,36($a0)
.L0db361fc:
    # Line 172
    li	$a3,6406
    bne	$a3,$a2,.L0db36050
    nop
    b	.L0db36084
    # Line 184
    sw	$a3,72($a0)
.L0db36210:
    # Line 172
    bne	$a3,$a2,.L0db36050
    nop
    b	.L0db35fe8
    # Line 198
    sw	$a3,72($a0)
.L0db36220:
    # Line 172
    li	$a3,0x803c
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0db362a8
    sltu	$at,$a3,$a2
    bnez	$at,.L0db36050
    nop
    b	.L0db36080
    li	$a3,6406
.L0db36240:
    li	$a3,0x8041
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0db362d0
    sltu	$v1,$a3,$a2
    bnez	$v1,.L0db36050
    nop
    b	.L0db35fe4
    li	$a3,6409
.L0db36260:
    li	$a3,0x804b
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0db36314
    sltu	$at,$a3,$a2
    bnez	$at,.L0db36050
    nop
    b	.L0db3602c
    # Line 228
    sw	$a5,72($a0)
.L0db36280:
    # Line 172
    li	$a3,0x8056
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0db36358
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0db3611c
    li	$a1,0x8057
    bne	$a2,$a1,.L0db36050
    nop
    b	.L0db36120
    # Line 261
    sw	$zero,36($a0)
.L0db362a8:
    # Line 172
    li	$at,0x803b
    bne	$a2,$at,.L0db36050
    nop
    b	.L0db36080
    li	$a3,6406
.L0db362bc:
    li	$v0,0x803e
    bne	$a2,$v0,.L0db36050
    nop
    b	.L0db36080
    li	$a3,6406
.L0db362d0:
    li	$v1,0x8040
    bne	$a2,$v1,.L0db36050
    nop
    b	.L0db35fe4
    li	$a3,6409
.L0db362e4:
    bne	$a2,$a1,.L0db36050
    nop
    b	.L0db360dc
    # Line 213
    sw	$zero,36($a0)
.L0db362f4:
    # Line 172
    li	$a3,0x8046
    sltu	$at,$a2,$a3
    bnez	$at,.L0db36378
    sltu	$v0,$a3,$a2
    bnez	$v0,.L0db36050
    nop
    b	.L0db360dc
    # Line 213
    sw	$zero,36($a0)
.L0db36314:
    # Line 172
    li	$v1,0x804a
    bne	$a2,$v1,.L0db36050
    nop
    b	.L0db3602c
    # Line 228
    sw	$a5,72($a0)
.L0db36328:
    # Line 172
    bne	$a2,$a1,.L0db36050
    nop
    b	.L0db3602c
    # Line 228
    sw	$a5,72($a0)
.L0db36338:
    # Line 172
    li	$a3,0x8050
    sltu	$at,$a2,$a3
    bnez	$at,.L0db3639c
    sltu	$v0,$a3,$a2
    bnez	$v0,.L0db36050
    nop
    b	.L0db35fa0
    # Line 244
    sw	$zero,36($a0)
.L0db36358:
    # Line 172
    li	$a3,0x8055
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0db363b0
    sltu	$a1,$a3,$a2
    bnez	$a1,.L0db36050
    nop
    b	.L0db36120
    # Line 261
    sw	$zero,36($a0)
.L0db36378:
    # Line 172
    li	$at,0x8045
    bne	$a2,$at,.L0db36050
    nop
    b	.L0db360dc
    # Line 213
    sw	$zero,36($a0)
.L0db3638c:
    # Line 172
    bne	$a2,$v0,.L0db36050
    nop
    b	.L0db360dc
    # Line 213
    sw	$zero,36($a0)
.L0db3639c:
    # Line 172
    li	$v1,0x804f
    bne	$a2,$v1,.L0db36050
    nop
    b	.L0db35fa0
    # Line 244
    sw	$zero,36($a0)
.L0db363b0:
    # Line 172
    li	$a1,0x8054
    bne	$a2,$a1,.L0db36050
    nop
    b	.L0db35fa0
    # Line 244
    sw	$zero,36($a0)
.L0db363c4:
    # Line 172
    li	$at,0x8059
    bne	$a2,$at,.L0db36050
    nop
    b	.L0db36120
    # Line 261
    sw	$zero,36($a0)
.end __glLoadColorTableParams

# Function: __glColorTableSGI
# Declared: Line 277 (Source lines: 280-373)
# Address: 0x0db363d8 - 0x0db36754 (Size: 892 bytes, Frame: 192)
.globl __glColorTableSGI
.ent __glColorTableSGI
__glColorTableSGI:
    # Line 283
    move	$t1,$zero
    # Line 280
    addiu	$sp,$sp,-704
    sd	$s2,624($sp)
    # Line 282
    move	$s2,$zero
    sd	$s3,616($sp)
    # Line 280
    move	$s3,$a3
    sd	$s1,608($sp)
    move	$s1,$a2
    # Line 283
    lui	$t2,0xffff
    ori	$t2,$t2,0x7f44
    addu	$t2,$a1,$t2
    sd	$gp,600($sp)
    # Line 280
    lui	$at,0xd
    addiu	$at,$at,-32064
    addu	$gp,$t9,$at
    # Line 283
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$t2,26
    sll	$t2,$t2,0x2
    addiu	$t9,$t9,-3824
    beqz	$at,.L0db36438
    addu	$t2,$t2,$t9
    lw	$at,%lo(jtbl_0dbef110)($t2)
    jr	$at
    sd	$s0,536($sp)
.L0db36438:
    sd	$s0,536($sp)
    # Line 317
    lw	$s0,16($sp)
.L0db36440:
    sd	$a0,544($sp)
    sd	$a1,552($sp)
    sd	$t1,560($sp)
    sd	$a7,568($sp)
    sd	$a6,576($sp)
    sd	$a5,584($sp)
    # Line 318
    beqz	$s1,.L0db364e0
    sd	$a4,592($sp)
.L0db36460:
    # Line 333
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    sd	$ra,632($sp)
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    lw	$v1,12($s0)
    mult	$v1,$v0
    # Line 335
    move	$a3,$s3
    move	$a2,$s1
    ld	$a1,552($sp)
    # lw $t9, -27392($gp) # &__glLoadColorTableParams
    move	$a0,$s0
    # Line 333
    mflo	$v0
    # Line 335
    bal __glLoadColorTableParams
    sd	$v0,528($sp)
    beqz	$s2,.L0db3651c
    ld	$ra,632($sp)
.L0db364a0:
    ld	$gp,600($sp)
    # Line 373
    ld	$s0,536($sp)
    ld	$s1,608($sp)
    ld	$s2,624($sp)
    ld	$s3,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0db364bc:
    sd	$a0,544($sp)
    sd	$a1,552($sp)
    sd	$t1,560($sp)
    sd	$a7,568($sp)
    sd	$a6,576($sp)
    sd	$a5,584($sp)
    sd	$a4,592($sp)
    # Line 318
    bnez	$s1,.L0db36460
    # Line 291
    addiu	$s0,$a0,4952
.L0db364e0:
    ld	$gp,600($sp)
    # Line 329
    sw	$zero,36($s0)
    # Line 328
    sw	$zero,32($s0)
    # Line 327
    sw	$zero,28($s0)
    # Line 326
    sw	$zero,24($s0)
    # Line 325
    sw	$zero,20($s0)
    # Line 324
    sw	$zero,16($s0)
    # Line 323
    sw	$zero,12($s0)
    # Line 322
    sw	$zero,8($s0)
    # Line 330
    ld	$s0,536($sp)
    ld	$s1,608($sp)
    ld	$s2,624($sp)
    ld	$s3,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0db3651c:
    # Line 340
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    mult	$v0,$s3
    ld	$t0,528($sp)
    mflo	$t1
    slt	$t0,$t0,$t1
    bnez	$t0,.L0db36720
.L0db3653c:
    ld	$a0,544($sp)
    # Line 346
    ld	$a7,576($sp)
    ld	$a6,584($sp)
    ld	$a5,592($sp)
    move	$a4,$zero
    li	$a3,1
    move	$a2,$s3
    # lw $t9, -28736($gp) # &__glInitMemUnpack
    ld	$t2,568($sp)
    addiu	$a1,$sp,24
    jal	__glInitMemUnpack
    sw	$t2,4($sp)
    ld	$a0,544($sp)
    # Line 348
    # lw $t9, -28744($gp) # &__glInitMemLoad
    lw	$a3,4($s0)
    lw	$a2,72($s0)
    jal	__glInitMemLoad
    addiu	$a1,$sp,24
    # Line 350
    lwc1	$f4,40($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1f	.L0db3664c
    # Line 354
    li	$at,1
    # Line 350
    lwc1	$f1,44($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db36650
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f2,48($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db36650
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f3,52($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1fl	.L0db36650
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f0,56($s0)
    dmtc1	$zero,$f5
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db36650
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f1,60($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db36650
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f2,64($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db36650
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f3,68($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0db36690
    # Line 364
    nop	# was lw $t9, -28576($gp) # &__glInitUnpacker
.L0db3664c:
    # Line 355
    swc1	$f4,340($sp)
.L0db36650:
    # Line 356
    lwc1	$f2,44($s0)
    swc1	$f2,344($sp)
    # Line 357
    lwc1	$f1,48($s0)
    swc1	$f1,348($sp)
    # Line 358
    lwc1	$f0,52($s0)
    swc1	$f0,352($sp)
    # Line 359
    lwc1	$f3,56($s0)
    swc1	$f3,356($sp)
    # Line 360
    lwc1	$f2,60($s0)
    swc1	$f2,360($sp)
    # Line 361
    lwc1	$f1,64($s0)
    swc1	$f1,364($sp)
    # Line 362
    lwc1	$f0,68($s0)
    sd	$at,560($sp)
    swc1	$f0,368($sp)
    # Line 364
    # lw $t9, -28576($gp) # &__glInitUnpacker
.L0db36690:
    ld	$a0,544($sp)
    addiu	$a1,$sp,24
    jal	__glInitUnpacker
    ld	$s0,536($sp)
    # Line 365
    # lw $t9, -29076($gp) # &__glInitPacker
    ld	$a0,544($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,24
    ld	$v0,560($sp)
    # Line 368
    sb	$zero,452($sp)
    # Line 370
    ld	$a0,544($sp)
    # Line 367
    sb	$v0,451($sp)
    # Line 370
    lw	$t9,12632($a0)
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,24
    b	.L0db364a0
    ld	$ra,632($sp)
.L0db366d8:
    # Line 295
    li	$s2,1
    # Line 296
    b	.L0db36440
    # Line 294
    addiu	$s0,$a0,5032
.L0db366e4:
    # Line 299
    b	.L0db36440
    # Line 298
    addiu	$s0,$a0,5112
.L0db366ec:
    # Line 302
    li	$s2,1
    # Line 303
    b	.L0db36440
    # Line 301
    addiu	$s0,$a0,5192
.L0db366f8:
    # Line 306
    b	.L0db36440
    # Line 305
    addiu	$s0,$a0,5272
.L0db36700:
    # Line 309
    li	$s2,1
    # Line 310
    b	.L0db36440
    # Line 308
    addiu	$s0,$a0,5352
.L0db3670c:
    # Line 313
    b	.L0db36440
    # Line 312
    addiu	$s0,$a0,5432
.L0db36714:
    # Line 316
    li	$s2,1
    # Line 317
    b	.L0db36440
    # Line 315
    addiu	$s0,$a0,5512
.L0db36720:
    # Line 341
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    mult	$v0,$s3
    ld	$t9,544($sp)
    move	$a0,$t9
    lw	$t9,8($t9)
    lw	$a1,4($s0)
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    b	.L0db3653c
    sw	$v0,4($s0)
.end __glColorTableSGI

# Function: __glim_ColorTableSGI
# Declared: Line 376 (Source lines: 378-407)
# Address: 0x0db36754 - 0x0db368e4 (Size: 400 bytes, Frame: 128)
.globl __glim_ColorTableSGI
.ent __glim_ColorTableSGI
__glim_ColorTableSGI:
    # Line 378
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$a5,40($sp)
    sd	$a4,16($sp)
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    sd	$a1,8($sp)
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$gp,48($sp)
    lui	$at,0xc
    addiu	$at,$at,32580
    # Line 380
    lw	$a6,__glBeginMode
    lw	$v0,__glCurrentContext
    # Line 378
    addu	$gp,$t9,$at
    # Line 380
    beqz	$a6,.L0db367f4
    sd	$v0,0($sp)
    sd	$ra,64($sp)
    sd	$v0,0($sp)
    sd	$a1,8($sp)
    sd	$a4,16($sp)
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    li	$v1,2
    beq	$a6,$v1,.L0db367dc
    sd	$a5,40($sp)
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db367dc:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11856($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0db367f4:
    ld	$a0,0($sp)
    # Line 383
    move	$a1,$s0
    ld	$a2,8($sp)
    # lw $t9, -27396($gp) # &__glCheckColorTableArgs
    ld	$a3,32($sp)
    ld	$a4,24($sp)
    bal __glCheckColorTableArgs
    ld	$a5,16($sp)
    li	$a7,0x80d4
    beqz	$v0,.L0db36850
    li	$v1,0x80d3
    li	$at,0x80bd
    beq	$s0,$at,.L0db36844
    # Line 390
    li	$at,0x8031
    # Line 383
    beq	$s0,$v1,.L0db36844
    # Line 390
    li	$at,0x8031
    # Line 383
    beq	$s0,$a7,.L0db36840
    li	$t0,0x80d5
    bne	$s0,$t0,.L0db368c4
.L0db36840:
    # Line 390
    li	$at,0x8031
.L0db36844:
    bne	$v0,$at,.L0db368a8
    # Line 393
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$zero,8($sp)
.L0db36850:
    # Line 402
    move	$a1,$s0
    ld	$a2,8($sp)
    ld	$t9,0($sp)
    ld	$a3,32($sp)
    ld	$a4,24($sp)
    move	$a0,$t9
    lw	$t9,12724($t9)
    ld	$a5,16($sp)
    ld	$a6,40($sp)
    jal	__glSetError
    move	$a7,$zero
    # Line 406
    li	$at,2
    sw	$at,__glBeginMode
    ld	$at,0($sp)
    lw	$ra,11828($at)
    ori	$ra,$ra,0x11
    sw	$ra,11828($at)
    # Line 407
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db368a8:
    # Line 393
    bal __glSetError
    move	$a0,$v0
    # Line 394
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db368c4:
    # Line 398
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
    # Line 399
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_ColorTableSGI

# Function: __glim_GetColorTableSGI
# Declared: Line 409 (Source lines: 411-467)
# Address: 0x0db368e4 - 0x0db36b3c (Size: 600 bytes, Frame: 224)
.globl __glim_GetColorTableSGI
.ent __glim_GetColorTableSGI
__glim_GetColorTableSGI:
    # Line 411
    addiu	$sp,$sp,-608
    sd	$ra,568($sp)
    sd	$s0,560($sp)
    # Line 415
    lw	$s0,__glCurrentContext
    sd	$a3,544($sp)
    sd	$a2,528($sp)
    sd	$a1,536($sp)
    sd	$a0,520($sp)
    sd	$gp,552($sp)
    lw	$a4,__glBeginMode
    # Line 411
    lui	$at,0xc
    addiu	$at,$at,32180
    # Line 415
    beqz	$a4,.L0db36968
    # Line 411
    addu	$gp,$t9,$at
    sd	$ra,568($sp)
    sd	$a0,520($sp)
    sd	$a2,528($sp)
    sd	$a1,536($sp)
    # Line 415
    li	$v0,2
    beq	$a4,$v0,.L0db36958
    sd	$a3,544($sp)
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db36958:
    lw	$t9,11856($s0)
    jal	__glSetError
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0db36968:
    # Line 420
    move	$a0,$s0
    ld	$a1,520($sp)
    ld	$a5,528($sp)
    # lw $t9, -27396($gp) # &__glCheckColorTableArgs
    ld	$a4,536($sp)
    move	$a3,$zero
    bal __glCheckColorTableArgs
    li	$a2,6407
    beqz	$v0,.L0db369b0
    # Line 423
    ld	$t1,520($sp)
    # Line 422
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 423
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db369b0:
    lui	$at,0xffff
    ori	$at,$at,0x7f44
    addu	$t1,$t1,$at
    la	$at,sub_0dbf0000
    sltiu	$v1,$t1,26
    sll	$t1,$t1,0x2
    addiu	$at,$at,-3720
    beqz	$v1,.L0db369e0
    addu	$t1,$t1,$at
    lw	$v0,%lo(jtbl_0dbef178)($t1)
    jr	$v0
    # Line 443
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db369e0:
    # Line 450
    lw	$v1,0($sp)
    sd	$v1,512($sp)
.L0db369e8:
    # Line 456
    move	$a0,$s0
    li	$a3,1
    ld	$a2,512($sp)
    addiu	$a1,$sp,8
    # lw $t9, -28740($gp) # &__glInitMemGet
    lw	$a5,4($a2)
    lw	$a4,72($a2)
    jal	__glInitMemGet
    lw	$a2,12($a2)
    # Line 457
    move	$a0,$s0
    ld	$a7,544($sp)
    ld	$a6,528($sp)
    ld	$a5,536($sp)
    move	$a4,$zero
    li	$a3,1
    # lw $t9, -28732($gp) # &__glInitMemPack
    ld	$a2,512($sp)
    addiu	$a1,$sp,8
    jal	__glInitMemPack
    lw	$a2,12($a2)
    # Line 458
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,8
    # Line 459
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 462
    sb	$zero,436($sp)
    # Line 461
    li	$a3,1
    # Line 463
    sb	$a3,438($sp)
    # Line 461
    sb	$a3,432($sp)
    # Line 465
    lw	$t9,12632($s0)
    move	$a2,$zero
    addiu	$a1,$sp,8
    jalr	$t9
    move	$a0,$s0
    # Line 467
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db36a90:
    # Line 428
    addiu	$t0,$s0,4952
    # Line 429
    b	.L0db369e8
    sd	$t0,512($sp)
.L0db36a9c:
    # Line 431
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 432
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db36abc:
    # Line 434
    addiu	$at,$s0,5112
    # Line 435
    b	.L0db369e8
    sd	$at,512($sp)
.L0db36ac8:
    # Line 437
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 438
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db36ae8:
    # Line 440
    addiu	$v0,$s0,5272
    # Line 441
    b	.L0db369e8
    sd	$v0,512($sp)
.L0db36af4:
    # Line 443
    bal __glSetError
    li	$a0,1280
    # Line 444
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db36b10:
    # Line 446
    addiu	$v1,$s0,5432
    # Line 447
    b	.L0db369e8
    sd	$v1,512($sp)
.L0db36b1c:
    # Line 449
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 450
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glim_GetColorTableSGI

# Function: __glColorTableModifiers
# Declared: Line 473 (Source lines: 475-554)
# Address: 0x0db36b3c - 0x0db36d80 (Size: 580 bytes, Frame: 48)
.globl __glColorTableModifiers
.ent __glColorTableModifiers
__glColorTableModifiers:
    # Line 477
    move	$a6,$zero
    lui	$a5,0xffff
    ori	$a5,$a5,0x7f44
    addu	$a5,$a1,$a5
    # Line 475
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0xc
    addiu	$at,$at,31580
    addu	$gp,$t9,$at
    # Line 477
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a5,26
    sll	$a5,$a5,0x2
    addiu	$t9,$t9,-3616
    beqz	$at,.L0db36b84
    addu	$a5,$a5,$t9
    lw	$at,%lo(jtbl_0dbef1e0)($a5)
    jr	$at
    # Line 505
    addiu	$a5,$a0,5512
.L0db36b84:
    # Line 509
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 510
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db36ba8:
    # Line 482
    b	.L0db36bb8
    # Line 481
    addiu	$a5,$a0,4952
.L0db36bb0:
    # Line 492
    li	$a6,1
    # Line 491
    addiu	$a5,$a0,5192
.L0db36bb8:
    # Line 511
    la	$a1,sub_0dbf0000
    lui	$a0,0xffff
    ori	$a0,$a0,0x7f2a
    addu	$a0,$a2,$a0
    addiu	$a1,$a1,-3512
    sltiu	$at,$a0,10
    sll	$a0,$a0,0x2
    beqz	$at,.L0db36c28
    addu	$a0,$a0,$a1
    # Line 536
    li	$v1,1
    # Line 511
    lw	$a1,%lo(jtbl_0dbef1e0)($a0)
    # Line 530
    li	$a4,1
    # Line 511
    jr	$a1
    # Line 537
    addiu	$v0,$a5,36
.L0db36bf0:
    # Line 485
    li	$a6,1
    # Line 486
    b	.L0db36bb8
    # Line 484
    addiu	$a5,$a0,5032
.L0db36bfc:
    # Line 489
    b	.L0db36bb8
    # Line 488
    addiu	$a5,$a0,5112
.L0db36c04:
    # Line 496
    b	.L0db36bb8
    # Line 495
    addiu	$a5,$a0,5272
.L0db36c0c:
    # Line 499
    li	$a6,1
    # Line 500
    b	.L0db36bb8
    # Line 498
    addiu	$a5,$a0,5352
.L0db36c18:
    # Line 503
    b	.L0db36bb8
    # Line 502
    addiu	$a5,$a0,5432
.L0db36c20:
    # Line 507
    b	.L0db36bb8
    # Line 506
    li	$a6,1
.L0db36c28:
    # Line 553
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 554
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db36c4c:
    # Line 516
    addiu	$v0,$a5,8
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 515
    li	$a4,1
    # Line 516
    jr	$ra
    # Line 515
    sw	$a4,0($a3)
.L0db36c64:
    # Line 518
    li	$at,1
    # Line 519
    addiu	$v0,$a5,12
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 518
    sw	$at,0($a3)
.L0db36c7c:
    # Line 522
    addiu	$v0,$a5,16
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 521
    li	$v1,1
    # Line 522
    jr	$ra
    # Line 521
    sw	$v1,0($a3)
.L0db36c94:
    # Line 524
    li	$a0,1
    # Line 525
    addiu	$v0,$a5,20
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 524
    sw	$a0,0($a3)
.L0db36cac:
    # Line 528
    addiu	$v0,$a5,24
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 527
    li	$a1,1
    # Line 528
    jr	$ra
    # Line 527
    sw	$a1,0($a3)
.L0db36cc4:
    # Line 531
    addiu	$v0,$a5,28
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 530
    sw	$a4,0($a3)
.L0db36cd8:
    # Line 533
    li	$at,1
    # Line 534
    addiu	$v0,$a5,32
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 533
    sw	$at,0($a3)
.L0db36cf0:
    ld	$gp,0($sp)
    # Line 537
    addiu	$sp,$sp,48
    jr	$ra
    # Line 536
    sw	$v1,0($a3)
.L0db36d00:
    # Line 539
    beqz	$a6,.L0db36d50
    # Line 540
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 541
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db36d28:
    # Line 546
    beqz	$a6,.L0db36d68
    # Line 547
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 548
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db36d50:
    # Line 544
    addiu	$v0,$a5,40
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 543
    li	$a0,4
    # Line 544
    jr	$ra
    # Line 543
    sw	$a0,0($a3)
.L0db36d68:
    # Line 551
    addiu	$v0,$a5,56
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 550
    li	$a1,4
    # Line 551
    jr	$ra
    # Line 550
    sw	$a1,0($a3)
.end __glColorTableModifiers

# Function: __glColorTableParameterv
# Declared: Line 560 (Source lines: 562-590)
# Address: 0x0db36d80 - 0x0db36e90 (Size: 272 bytes, Frame: 208)
.ent __glColorTableParameterv
__glColorTableParameterv:
    # Line 562
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a4
    sd	$s0,24($sp)
    # Line 567
    # lw $t9, -27376($gp) # &__glColorTableModifiers
    # Line 562
    move	$s0,$a3
    sd	$ra,8($sp)
    # Line 567
    bal __glColorTableModifiers
    addiu	$a3,$sp,0
    ld	$ra,8($sp)
    beqz	$v0,.L0db36e40
    # Line 578
    move	$a2,$v0
    # Line 568
    lw	$a3,0($sp)
    li	$at,1
    beq	$a3,$at,.L0db36e50
    nop
    # Line 578
    beqz	$s1,.L0db36df0
    nop
    # Line 581
    blez	$a3,.L0db36df0
    move	$v0,$zero
.L0db36dd0:
    # Line 582
    lwc1	$f0,0($s1)
    swc1	$f0,0($a2)
    # Line 581
    lw	$a3,0($sp)
    # Line 582
    addiu	$a2,$a2,4
    # Line 581
    addiu	$v0,$v0,1
    slt	$v1,$v0,$a3
    bnez	$v1,.L0db36dd0
    # Line 582
    addiu	$s1,$s1,4
.L0db36df0:
    # Line 581
    beqz	$s0,.L0db36e2c
    # Line 586
    move	$v0,$zero
    blez	$a3,.L0db36e30
    # Line 590
    ld	$s1,16($sp)
.L0db36e00:
    # Line 587
    lw	$a1,0($s0)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a2)
    # Line 586
    lw	$a0,0($sp)
    # Line 587
    addiu	$a2,$a2,4
    # Line 586
    addiu	$v0,$v0,1
    slt	$a0,$v0,$a0
    bnez	$a0,.L0db36e00
    # Line 587
    addiu	$s0,$s0,4
.L0db36e2c:
    # Line 590
    ld	$s1,16($sp)
.L0db36e30:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db36e40:
    # Line 568
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db36e50:
    beqz	$s1,.L0db36e6c
    nop
    # Line 572
    lwc1	$f2,0($s1)
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,0($v0)
.L0db36e6c:
    beqz	$s0,.L0db36e80
    # Line 575
    ld	$s1,16($sp)
    # Line 574
    lw	$v1,0($s0)
    sw	$v1,0($v0)
    # Line 575
    ld	$s1,16($sp)
.L0db36e80:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glColorTableParameterv

# Function: __glim_ColorTableParameterivSGI
# Declared: Line 592 (Source lines: 594-597)
# Address: 0x0db36e90 - 0x0db36f08 (Size: 120 bytes, Frame: 48)
.globl __glim_ColorTableParameterivSGI
.ent __glim_ColorTableParameterivSGI
__glim_ColorTableParameterivSGI:
    # Line 594
    move	$a3,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xc
    addiu	$v1,$v1,30728
    beq	$at,$v0,.L0db36eec
    addu	$gp,$t9,$v1
    # Line 596
    move	$a4,$zero
    # lw $t9, -32696($gp) # &sub_0db30000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,28032
    bal __glColorTableModifiers
    lw	$a0,__glCurrentContext
    # Line 597
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db36eec:
    # Line 595
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ColorTableParameterivSGI

# Function: __glim_ColorTableParameterfvSGI
# Declared: Line 599 (Source lines: 601-604)
# Address: 0x0db36f08 - 0x0db36f80 (Size: 120 bytes, Frame: 48)
.globl __glim_ColorTableParameterfvSGI
.ent __glim_ColorTableParameterfvSGI
__glim_ColorTableParameterfvSGI:
    # Line 601
    move	$a4,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xc
    addiu	$v1,$v1,30608
    beq	$at,$v0,.L0db36f64
    addu	$gp,$t9,$v1
    # Line 603
    move	$a3,$zero
    # lw $t9, -32696($gp) # &sub_0db30000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,28032
    bal __glColorTableModifiers
    lw	$a0,__glCurrentContext
    # Line 604
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db36f64:
    # Line 602
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ColorTableParameterfvSGI

# Function: __glGetColorTableParameterv
# Declared: Line 607 (Source lines: 609-637)
# Address: 0x0db36f80 - 0x0db37090 (Size: 272 bytes, Frame: 208)
.ent __glGetColorTableParameterv
__glGetColorTableParameterv:
    # Line 609
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a4
    sd	$s0,24($sp)
    # Line 614
    # lw $t9, -27376($gp) # &__glColorTableModifiers
    # Line 609
    move	$s0,$a3
    sd	$ra,8($sp)
    # Line 614
    bal __glColorTableModifiers
    addiu	$a3,$sp,0
    ld	$ra,8($sp)
    beqz	$v0,.L0db37040
    # Line 625
    move	$a2,$v0
    # Line 615
    lw	$a3,0($sp)
    li	$at,1
    beq	$a3,$at,.L0db37050
    nop
    # Line 625
    beqz	$s1,.L0db36ff0
    nop
    # Line 628
    blez	$a3,.L0db36ff0
    move	$v0,$zero
.L0db36fd0:
    # Line 629
    lwc1	$f0,0($a2)
    swc1	$f0,0($s1)
    # Line 628
    lw	$a3,0($sp)
    # Line 629
    addiu	$s1,$s1,4
    # Line 628
    addiu	$v0,$v0,1
    slt	$v1,$v0,$a3
    bnez	$v1,.L0db36fd0
    # Line 629
    addiu	$a2,$a2,4
.L0db36ff0:
    # Line 628
    beqz	$s0,.L0db3702c
    # Line 633
    move	$v0,$zero
    blez	$a3,.L0db37030
    # Line 637
    ld	$s1,16($sp)
.L0db37000:
    # Line 634
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    sw	$a1,0($s0)
    # Line 633
    lw	$a0,0($sp)
    # Line 634
    addiu	$s0,$s0,4
    # Line 633
    addiu	$v0,$v0,1
    slt	$a0,$v0,$a0
    bnez	$a0,.L0db37000
    # Line 634
    addiu	$a2,$a2,4
.L0db3702c:
    # Line 637
    ld	$s1,16($sp)
.L0db37030:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db37040:
    # Line 615
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db37050:
    beqz	$s1,.L0db3706c
    nop
    # Line 619
    lw	$at,0($v0)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($s1)
.L0db3706c:
    beqz	$s0,.L0db37080
    # Line 622
    ld	$s1,16($sp)
    # Line 621
    lw	$v1,0($v0)
    sw	$v1,0($s0)
    # Line 622
    ld	$s1,16($sp)
.L0db37080:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glGetColorTableParameterv

# Function: __glim_GetColorTableParameterivSGI
# Declared: Line 639 (Source lines: 641-644)
# Address: 0x0db37090 - 0x0db37108 (Size: 120 bytes, Frame: 48)
.globl __glim_GetColorTableParameterivSGI
.ent __glim_GetColorTableParameterivSGI
__glim_GetColorTableParameterivSGI:
    # Line 641
    move	$a3,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xc
    addiu	$v1,$v1,30216
    beq	$at,$v0,.L0db370ec
    addu	$gp,$t9,$v1
    # Line 643
    move	$a4,$zero
    # lw $t9, -32696($gp) # &sub_0db30000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,28544
    bal __glim_ColorTableParameterfvSGI
    lw	$a0,__glCurrentContext
    # Line 644
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db370ec:
    # Line 642
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetColorTableParameterivSGI

# Function: __glim_GetColorTableParameterfvSGI
# Declared: Line 646 (Source lines: 648-651)
# Address: 0x0db37108 - 0x0db37180 (Size: 120 bytes, Frame: 48)
.globl __glim_GetColorTableParameterfvSGI
.ent __glim_GetColorTableParameterfvSGI
__glim_GetColorTableParameterfvSGI:
    # Line 648
    move	$a4,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xc
    addiu	$v1,$v1,30096
    beq	$at,$v0,.L0db37164
    addu	$gp,$t9,$v1
    # Line 650
    move	$a3,$zero
    # lw $t9, -32696($gp) # &sub_0db30000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,28544
    bal __glim_ColorTableParameterfvSGI
    lw	$a0,__glCurrentContext
    # Line 651
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db37164:
    # Line 649
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetColorTableParameterfvSGI

# Function: __glim_CopyColorTableSGI
# Declared: Line 654 (Source lines: 656-732)
# Address: 0x0db37180 - 0x0db37544 (Size: 964 bytes, Frame: 144)
.globl __glim_CopyColorTableSGI
.ent __glim_CopyColorTableSGI
__glim_CopyColorTableSGI:
    # Line 664
    li	$v0,1
    # Line 656
    addiu	$sp,$sp,-656
    sd	$ra,584($sp)
    sd	$s1,544($sp)
    # Line 664
    lw	$s1,__glCurrentContext
    sd	$s5,536($sp)
    # Line 661
    move	$s5,$zero
    sd	$s3,568($sp)
    # Line 656
    move	$s3,$a4
    sd	$a3,520($sp)
    sd	$a2,512($sp)
    sd	$s4,552($sp)
    move	$s4,$a1
    sd	$s0,528($sp)
    move	$s0,$a0
    sd	$gp,560($sp)
    # Line 664
    lw	$at,__glBeginMode
    # Line 656
    lui	$v1,0xc
    addiu	$v1,$v1,29976
    # Line 664
    beq	$at,$v0,.L0db37514
    # Line 656
    addu	$gp,$t9,$v1
    # Line 667
    move	$a0,$s1
    move	$a1,$s0
    move	$a2,$s4
    # lw $t9, -27396($gp) # &__glCheckColorTableArgs
    move	$a3,$s3
    li	$a5,5126
    bal __glCheckColorTableArgs
    li	$a4,6408
    beqz	$v0,.L0db37204
    # Line 669
    nop	# was lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
.L0db37204:
    li	$a5,0x80bd
    beq	$s0,$a5,.L0db374e4
    li	$a6,0x80d3
    beq	$s0,$a6,.L0db374e4
    li	$at,0x80d4
    beq	$s0,$at,.L0db374e4
    li	$v1,0x80d5
    beq	$s0,$v1,.L0db374e4
    # Line 680
    li	$a5,0x80d0
    beq	$s0,$a5,.L0db374b8
    li	$a6,0x80d1
    beq	$s0,$a6,.L0db374c4
    li	$at,0x80d2
    beq	$s0,$at,.L0db374d0
    li	$v1,0x80bc
    beq	$s0,$v1,.L0db374dc
    sd	$s2,592($sp)
    lw	$s2,0($sp)
.L0db3724c:
    # Line 695
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s2)
    lw	$a1,12($s2)
    mult	$a1,$v0
    # Line 697
    move	$a3,$s3
    move	$a2,$s4
    # lw $t9, -27392($gp) # &__glLoadColorTableParams
    move	$a1,$s0
    # Line 695
    mflo	$a0
    sd	$a0,576($sp)
    # Line 697
    bal __glLoadColorTableParams
    move	$a0,$s2
    # Line 700
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    lw	$a0,72($s2)
    jal	__glElementsPerGroup
    ld	$s0,576($sp)
    mult	$v0,$s3
    mflo	$a5
    slt	$a5,$s0,$a5
    bnez	$a5,.L0db37488
.L0db372a0:
    # Line 706
    move	$a0,$s1
    li	$a5,1
    move	$a4,$s3
    # lw $t9, -28752($gp) # &__glInitReadImageSrcInfo
    ld	$a3,520($sp)
    ld	$a2,512($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,8
    # Line 707
    move	$a0,$s1
    # lw $t9, -28744($gp) # &__glInitMemLoad
    lw	$a3,4($s2)
    lw	$a2,72($s2)
    jal	__glInitMemLoad
    addiu	$a1,$sp,8
    # Line 709
    lwc1	$f4,40($s2)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db373a4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f1,44($s2)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db373a4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f2,48($s2)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db373a4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f3,52($s2)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1fl	.L0db373a4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f0,56($s2)
    dmtc1	$zero,$f5
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db373a4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f1,60($s2)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db373a4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f2,64($s2)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db373a4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f3,68($s2)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0db373e4
    # Line 723
    nop	# was lw $t9, -28576($gp) # &__glInitUnpacker
    # Line 714
    swc1	$f4,324($sp)
.L0db373a4:
    # Line 715
    lwc1	$f2,44($s2)
    swc1	$f2,328($sp)
    # Line 716
    lwc1	$f1,48($s2)
    swc1	$f1,332($sp)
    # Line 717
    lwc1	$f0,52($s2)
    swc1	$f0,336($sp)
    # Line 718
    lwc1	$f3,56($s2)
    swc1	$f3,340($sp)
    # Line 719
    lwc1	$f2,60($s2)
    swc1	$f2,344($sp)
    # Line 720
    lwc1	$f1,64($s2)
    swc1	$f1,348($sp)
    # Line 721
    lwc1	$f0,68($s2)
    # Line 713
    li	$s5,1
    # Line 721
    swc1	$f0,352($sp)
    # Line 723
    # lw $t9, -28576($gp) # &__glInitUnpacker
.L0db373e4:
    move	$a0,$s1
    addiu	$a1,$sp,8
    jal	__glInitUnpacker
    ld	$s2,592($sp)
    # Line 724
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 728
    # lw $t9, -28848($gp) # &__glClipReadPixels
    addiu	$a1,$sp,8
    move	$a0,$s1
    jal	__glClipReadPixels
    # Line 726
    sb	$s5,435($sp)
    # Line 728
    bnez	$v0,.L0db37440
    ld	$ra,584($sp)
    ld	$gp,560($sp)
    ld	$s0,528($sp)
    ld	$s1,544($sp)
    ld	$s3,568($sp)
    ld	$s4,552($sp)
    ld	$s5,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0db37440:
    # Line 729
    lw	$t9,12636($s1)
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$sp,8
    ld	$gp,560($sp)
    # Line 732
    ld	$s3,568($sp)
    ld	$s4,552($sp)
    # Line 731
    li	$s0,2
    sw	$s0,__glBeginMode
    # Line 732
    ld	$s5,536($sp)
    # Line 731
    lw	$a6,11828($s1)
    # Line 732
    ld	$s0,528($sp)
    ld	$ra,584($sp)
    # Line 731
    ori	$a6,$a6,0x10
    sw	$a6,11828($s1)
    # Line 732
    ld	$s1,544($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0db37488:
    # Line 701
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s2)
    mult	$v0,$s3
    move	$a0,$s1
    lw	$t9,8($s1)
    lw	$a1,4($s2)
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    b	.L0db372a0
    sw	$v0,4($s2)
.L0db374b8:
    sd	$s2,592($sp)
    # Line 683
    b	.L0db3724c
    # Line 682
    addiu	$s2,$s1,4952
.L0db374c4:
    sd	$s2,592($sp)
    # Line 686
    b	.L0db3724c
    # Line 685
    addiu	$s2,$s1,5112
.L0db374d0:
    sd	$s2,592($sp)
    # Line 689
    b	.L0db3724c
    # Line 688
    addiu	$s2,$s1,5272
.L0db374dc:
    b	.L0db3724c
    # Line 691
    addiu	$s2,$s1,5432
.L0db374e4:
    # Line 676
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$gp,560($sp)
    # Line 677
    ld	$s0,528($sp)
    ld	$s1,544($sp)
    ld	$s3,568($sp)
    ld	$ra,584($sp)
    ld	$s4,552($sp)
    ld	$s5,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0db37514:
    # Line 664
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$gp,560($sp)
    ld	$s0,528($sp)
    ld	$s1,544($sp)
    ld	$s3,568($sp)
    ld	$ra,584($sp)
    ld	$s4,552($sp)
    ld	$s5,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.end __glim_CopyColorTableSGI

# Function: __glInitColorTables
# Declared: Line 734 (Source lines: 742-801)
# Address: 0x0db37544 - 0x0db37630 (Size: 236 bytes, Frame: 0)
.globl __glInitColorTables
.ent __glInitColorTables
__glInitColorTables:
    # Line 743
    li	$v0,6408
    # Line 795
    sw	$v0,5520($a0)
    # Line 788
    sw	$v0,5440($a0)
    # Line 781
    sw	$v0,5360($a0)
    # Line 773
    sw	$v0,5280($a0)
    # Line 766
    sw	$v0,5200($a0)
    # Line 758
    sw	$v0,5120($a0)
    # Line 750
    sw	$v0,5040($a0)
    # Line 743
    sw	$v0,4960($a0)
    # Line 779
    li	$a1,0x80d5
    sw	$a1,5352($a0)
    # Line 757
    li	$a1,0x80d1
    sw	$a1,5112($a0)
    # Line 744
    lwc1	$f0,3284($a0)
    # Line 787
    li	$at,0x80bc
    # Line 794
    li	$v1,0x80bd
    sw	$v1,5512($a0)
    # Line 772
    li	$v1,0x80d2
    # Line 787
    sw	$at,5432($a0)
    # Line 764
    li	$at,0x80d4
    sw	$at,5192($a0)
    # Line 742
    li	$at,0x80d0
    # Line 772
    sw	$v1,5272($a0)
    # Line 749
    li	$v1,0x80d3
    sw	$v1,5032($a0)
    # Line 742
    sw	$at,4952($a0)
    # Line 799
    swc1	$f0,5564($a0)
    # Line 798
    swc1	$f0,5560($a0)
    # Line 797
    swc1	$f0,5556($a0)
    # Line 796
    swc1	$f0,5552($a0)
    # Line 792
    swc1	$f0,5484($a0)
    # Line 791
    swc1	$f0,5480($a0)
    # Line 790
    swc1	$f0,5476($a0)
    # Line 789
    swc1	$f0,5472($a0)
    # Line 785
    swc1	$f0,5404($a0)
    # Line 784
    swc1	$f0,5400($a0)
    # Line 783
    swc1	$f0,5396($a0)
    # Line 782
    swc1	$f0,5392($a0)
    # Line 777
    swc1	$f0,5324($a0)
    # Line 776
    swc1	$f0,5320($a0)
    # Line 775
    swc1	$f0,5316($a0)
    # Line 774
    swc1	$f0,5312($a0)
    # Line 770
    swc1	$f0,5244($a0)
    # Line 769
    swc1	$f0,5240($a0)
    # Line 768
    swc1	$f0,5236($a0)
    # Line 767
    swc1	$f0,5232($a0)
    # Line 762
    swc1	$f0,5164($a0)
    # Line 761
    swc1	$f0,5160($a0)
    # Line 760
    swc1	$f0,5156($a0)
    # Line 759
    swc1	$f0,5152($a0)
    # Line 754
    swc1	$f0,5084($a0)
    # Line 753
    swc1	$f0,5080($a0)
    # Line 752
    swc1	$f0,5076($a0)
    # Line 751
    swc1	$f0,5072($a0)
    # Line 747
    swc1	$f0,5004($a0)
    # Line 746
    swc1	$f0,5000($a0)
    # Line 745
    swc1	$f0,4996($a0)
    # Line 801
    jr	$ra
    # Line 744
    swc1	$f0,4992($a0)
.end __glInitColorTables

# Function: __glFreeColorTables
# Declared: Line 803 (Source lines: 804-812)
# Address: 0x0db37630 - 0x0db376a0 (Size: 112 bytes, Frame: 48)
.globl __glFreeColorTables
.ent __glFreeColorTables
__glFreeColorTables:
    # Line 808
    lw	$a1,4956($a0)
    # Line 804
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0xc
    addiu	$at,$at,28776
    addu	$gp,$t9,$at
    # Line 808
    lw	$t9,12($a0)
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 804
    move	$s0,$a0
    # Line 809
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5116($s0)
    # Line 810
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5276($s0)
    # Line 811
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5436($s0)
    # Line 812
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFreeColorTables

# Function: __glCopyColorTableScaleBias
# Declared: Line 828 (Source lines: 831-841)
# Address: 0x0db376a0 - 0x0db378a4 (Size: 516 bytes, Frame: 0)
.globl __glCopyColorTableScaleBias
.ent __glCopyColorTableScaleBias
__glCopyColorTableScaleBias:
    # Line 831
    lwc1	$f3,40($a0)
    swc1	$f3,40($a1)
    lwc1	$f2,44($a0)
    swc1	$f2,44($a1)
    lwc1	$f1,48($a0)
    swc1	$f1,48($a1)
    lwc1	$f0,52($a0)
    swc1	$f0,52($a1)
    lwc1	$f4,56($a0)
    swc1	$f4,56($a1)
    lwc1	$f3,60($a0)
    swc1	$f3,60($a1)
    lwc1	$f2,64($a0)
    swc1	$f2,64($a1)
    lwc1	$f1,68($a0)
    swc1	$f1,68($a1)
    # Line 832
    lwc1	$f0,120($a0)
    swc1	$f0,120($a1)
    lwc1	$f4,124($a0)
    swc1	$f4,124($a1)
    lwc1	$f3,128($a0)
    swc1	$f3,128($a1)
    lwc1	$f2,132($a0)
    swc1	$f2,132($a1)
    lwc1	$f1,136($a0)
    swc1	$f1,136($a1)
    lwc1	$f0,140($a0)
    swc1	$f0,140($a1)
    lwc1	$f4,144($a0)
    swc1	$f4,144($a1)
    lwc1	$f3,148($a0)
    swc1	$f3,148($a1)
    # Line 833
    lwc1	$f2,200($a0)
    swc1	$f2,200($a1)
    lwc1	$f1,204($a0)
    swc1	$f1,204($a1)
    lwc1	$f0,208($a0)
    swc1	$f0,208($a1)
    lwc1	$f4,212($a0)
    swc1	$f4,212($a1)
    lwc1	$f3,216($a0)
    swc1	$f3,216($a1)
    lwc1	$f2,220($a0)
    swc1	$f2,220($a1)
    lwc1	$f1,224($a0)
    swc1	$f1,224($a1)
    lwc1	$f0,228($a0)
    swc1	$f0,228($a1)
    # Line 834
    lwc1	$f4,280($a0)
    swc1	$f4,280($a1)
    lwc1	$f3,284($a0)
    swc1	$f3,284($a1)
    lwc1	$f2,288($a0)
    swc1	$f2,288($a1)
    lwc1	$f1,292($a0)
    swc1	$f1,292($a1)
    lwc1	$f0,296($a0)
    swc1	$f0,296($a1)
    lwc1	$f4,300($a0)
    swc1	$f4,300($a1)
    lwc1	$f3,304($a0)
    swc1	$f3,304($a1)
    lwc1	$f2,308($a0)
    swc1	$f2,308($a1)
    # Line 836
    lwc1	$f1,360($a0)
    swc1	$f1,360($a1)
    lwc1	$f0,364($a0)
    swc1	$f0,364($a1)
    lwc1	$f4,368($a0)
    swc1	$f4,368($a1)
    lwc1	$f3,372($a0)
    swc1	$f3,372($a1)
    lwc1	$f2,376($a0)
    swc1	$f2,376($a1)
    lwc1	$f1,380($a0)
    swc1	$f1,380($a1)
    lwc1	$f0,384($a0)
    swc1	$f0,384($a1)
    lwc1	$f4,388($a0)
    swc1	$f4,388($a1)
    # Line 837
    lwc1	$f3,440($a0)
    swc1	$f3,440($a1)
    lwc1	$f2,444($a0)
    swc1	$f2,444($a1)
    lwc1	$f1,448($a0)
    swc1	$f1,448($a1)
    lwc1	$f0,452($a0)
    swc1	$f0,452($a1)
    lwc1	$f4,456($a0)
    swc1	$f4,456($a1)
    lwc1	$f3,460($a0)
    swc1	$f3,460($a1)
    lwc1	$f2,464($a0)
    swc1	$f2,464($a1)
    lwc1	$f1,468($a0)
    swc1	$f1,468($a1)
    # Line 839
    lwc1	$f0,520($a0)
    swc1	$f0,520($a1)
    lwc1	$f4,524($a0)
    swc1	$f4,524($a1)
    lwc1	$f3,528($a0)
    swc1	$f3,528($a1)
    lwc1	$f2,532($a0)
    swc1	$f2,532($a1)
    lwc1	$f1,536($a0)
    swc1	$f1,536($a1)
    lwc1	$f0,540($a0)
    swc1	$f0,540($a1)
    lwc1	$f4,544($a0)
    swc1	$f4,544($a1)
    lwc1	$f3,548($a0)
    swc1	$f3,548($a1)
    # Line 840
    lwc1	$f2,600($a0)
    swc1	$f2,600($a1)
    lwc1	$f1,604($a0)
    swc1	$f1,604($a1)
    lwc1	$f0,608($a0)
    swc1	$f0,608($a1)
    lwc1	$f4,612($a0)
    swc1	$f4,612($a1)
    lwc1	$f3,616($a0)
    swc1	$f3,616($a1)
    lwc1	$f2,620($a0)
    swc1	$f2,620($a1)
    lwc1	$f1,624($a0)
    swc1	$f1,624($a1)
    lwc1	$f0,628($a0)
    # Line 841
    jr	$ra
    # Line 840
    swc1	$f0,628($a1)
.end __glCopyColorTableScaleBias

.late_rodata
jtbl_0dbef0a8:
    .word .L0db358f8
    .word .L0db358f8
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db35954
    .word .L0db358f8
    .word .L0db358f8
    .word .L0db358f8
    .word .L0db358f8
    .word .L0db358f8
    .word .L0db358f8
jtbl_0dbef110:
    .word .L0db3670c
    .word .L0db36714
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db36438
    .word .L0db364bc
    .word .L0db366e4
    .word .L0db366f8
    .word .L0db366d8
    .word .L0db366ec
    .word .L0db36700
jtbl_0dbef178:
    .word .L0db36b10
    .word .L0db36b1c
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db369e0
    .word .L0db36a90
    .word .L0db36abc
    .word .L0db36ae8
    .word .L0db36a9c
    .word .L0db36ac8
    .word .L0db36af4
jtbl_0dbef1e0:
    .word .L0db36c18
    .word .L0db36c20
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36b84
    .word .L0db36ba8
    .word .L0db36bfc
    .word .L0db36c04
    .word .L0db36bf0
    .word .L0db36bb0
    .word .L0db36c0c
    .word .L0db36d00
    .word .L0db36d28
    .word .L0db36c4c
    .word .L0db36c64
    .word .L0db36c7c
    .word .L0db36c94
    .word .L0db36cac
    .word .L0db36cc4
    .word .L0db36cd8
    .word .L0db36cf0

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

