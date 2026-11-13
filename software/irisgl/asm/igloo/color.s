# Source: ../igloo/color.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/color.c -o color.T
# Total Functions: 51

.text

# Function: __iglooColor3f
# Declared: Line 37 (Source lines: 38-56)
# Address: 0x0f09d4d8 - 0x0f09d574 (Size: 156 bytes, Frame: 48)
.globl __iglooColor3f
.ent __iglooColor3f
__iglooColor3f:
    # Line 38
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    # Line 40
    lw	$s5,4100($zero)
    # Line 44
    lwc1	$f1,8($a1)
    # Line 43
    lwc1	$f2,4($a1)
    # Line 46
    lwc1	$f3,0($a1)
    # Line 48
    swc1	$f1,3128($a0)
    sd	$gp,16($sp)
    # Line 38
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,23920 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 49
    lwc1	$f0,_lit_3f800000
    # Line 47
    swc1	$f2,3124($a0)
    # Line 46
    swc1	$f3,3120($a0)
    # Line 49
    swc1	$f0,3132($a0)
    lw	$at,68($s5)
    sd	$ra,24($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f09d534
    # Line 38
    move	$s7,$a0
    # Line 49
    lw	$v1,64($s5)
    beqz	$v1,.L0f09d560
    sd	$ra,24($sp)
.L0f09d534:
    # Line 55
    la	$t9,glColor3fv
.L0f09d538:
    addiu	$a0,$s7,3120
    # Line 54
    li	$a1,1
    # Line 55
    jalr	$t9
    # Line 54
    sw	$a1,64($s5)
    ld	$gp,16($sp)
    # Line 56
    ld	$ra,24($sp)
    ld	$s5,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09d560:
    # Line 52
    lw	$t9,204($s7)
    jalr	$t9
    li	$a0,1
    b	.L0f09d538
    # Line 55
    la	$t9,glColor3fv
.end __iglooColor3f

# Function: __iglooColor3i
# Declared: Line 58 (Source lines: 59-81)
# Address: 0x0f09d574 - 0x0f09d68c (Size: 280 bytes, Frame: 48)
.globl __iglooColor3i
.ent __iglooColor3i
__iglooColor3i:
    # Line 66
    lw	$a4,8($a1)
    # Line 65
    lw	$a3,4($a1)
    # Line 59
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    # Line 62
    lw	$s5,4100($zero)
    sd	$s7,8($sp)
    # Line 59
    move	$s7,$a0
    sd	$gp,16($sp)
    lui	$v0,0xfff9
    # Line 64
    lw	$a5,0($a1)
    # Line 59
    addiu	$v0,$v0,23764
    # addu	gp,t9,v0 (gp setup)
    # Line 66
    sltiu	$at,$a5,255
    bnez	$at,.L0f09d5b8
    lwc1	$f4,_lit_3f800000
    # Line 67
    b	.L0f09d5d4
    mov.s	$f6,$f4
.L0f09d5b8:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a5,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    nop
    cvt.s.l	$f6,$f6
    mul.s	$f6,$f6,$f0
.L0f09d5d4:
    sltiu	$a1,$a3,255
    beqz	$a1,.L0f09d5fc
    # Line 68
    mov.s	$f5,$f4
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a3,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09d5fc:
    sltiu	$v0,$a4,255
    beqz	$v0,.L0f09d624
    # Line 69
    mov.s	$f7,$f4
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a4,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09d624:
    # Line 74
    swc1	$f4,3132($s7)
    # Line 73
    swc1	$f7,3128($s7)
    # Line 72
    swc1	$f5,3124($s7)
    # Line 71
    swc1	$f6,3120($s7)
    # Line 74
    lw	$a1,68($s5)
    beqz	$a1,.L0f09d64c
    sd	$ra,24($sp)
    lw	$at,64($s5)
    beqz	$at,.L0f09d678
    sd	$ra,24($sp)
.L0f09d64c:
    # Line 80
    la	$t9,glColor3fv
.L0f09d650:
    addiu	$a0,$s7,3120
    # Line 79
    li	$v0,1
    # Line 80
    jalr	$t9
    # Line 79
    sw	$v0,64($s5)
    ld	$gp,16($sp)
    # Line 81
    ld	$ra,24($sp)
    ld	$s5,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09d678:
    # Line 77
    lw	$t9,204($s7)
    jalr	$t9
    li	$a0,1
    b	.L0f09d650
    # Line 80
    la	$t9,glColor3fv
.end __iglooColor3i

# Function: __iglooColor3s
# Declared: Line 83 (Source lines: 84-106)
# Address: 0x0f09d68c - 0x0f09d7a4 (Size: 280 bytes, Frame: 48)
.globl __iglooColor3s
.ent __iglooColor3s
__iglooColor3s:
    # Line 91
    lh	$a4,4($a1)
    # Line 90
    lh	$a3,2($a1)
    # Line 84
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    # Line 87
    lw	$s5,4100($zero)
    sd	$s7,8($sp)
    # Line 84
    move	$s7,$a0
    sd	$gp,16($sp)
    lui	$v0,0xfff9
    # Line 89
    lh	$a5,0($a1)
    # Line 84
    addiu	$v0,$v0,23484
    # addu	gp,t9,v0 (gp setup)
    # Line 91
    sltiu	$at,$a5,255
    bnez	$at,.L0f09d6d0
    lwc1	$f4,_lit_3f800000
    # Line 92
    b	.L0f09d6ec
    mov.s	$f6,$f4
.L0f09d6d0:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a5,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    nop
    cvt.s.l	$f6,$f6
    mul.s	$f6,$f6,$f0
.L0f09d6ec:
    sltiu	$a1,$a3,255
    beqz	$a1,.L0f09d714
    # Line 93
    mov.s	$f5,$f4
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a3,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09d714:
    sltiu	$v0,$a4,255
    beqz	$v0,.L0f09d73c
    # Line 94
    mov.s	$f7,$f4
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a4,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09d73c:
    # Line 99
    swc1	$f4,3132($s7)
    # Line 98
    swc1	$f7,3128($s7)
    # Line 97
    swc1	$f5,3124($s7)
    # Line 96
    swc1	$f6,3120($s7)
    # Line 99
    lw	$a1,68($s5)
    beqz	$a1,.L0f09d764
    sd	$ra,24($sp)
    lw	$at,64($s5)
    beqz	$at,.L0f09d790
    sd	$ra,24($sp)
.L0f09d764:
    # Line 105
    la	$t9,glColor3fv
.L0f09d768:
    addiu	$a0,$s7,3120
    # Line 104
    li	$v0,1
    # Line 105
    jalr	$t9
    # Line 104
    sw	$v0,64($s5)
    ld	$gp,16($sp)
    # Line 106
    ld	$ra,24($sp)
    ld	$s5,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09d790:
    # Line 102
    lw	$t9,204($s7)
    jalr	$t9
    li	$a0,1
    b	.L0f09d768
    # Line 105
    la	$t9,glColor3fv
.end __iglooColor3s

# Function: __iglooColor4f
# Declared: Line 108 (Source lines: 109-128)
# Address: 0x0f09d7a4 - 0x0f09d840 (Size: 156 bytes, Frame: 48)
.globl __iglooColor4f
.ent __iglooColor4f
__iglooColor4f:
    # Line 109
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s7,8($sp)
    move	$s7,$a0
    sd	$s5,0($sp)
    # Line 111
    lw	$s5,4100($zero)
    # Line 115
    lwc1	$f1,8($a1)
    # Line 116
    lwc1	$f0,12($a1)
    # Line 118
    lwc1	$f3,0($a1)
    # Line 114
    lwc1	$f2,4($a1)
    # Line 121
    swc1	$f0,3132($a0)
    # Line 120
    swc1	$f1,3128($a0)
    # Line 119
    swc1	$f2,3124($a0)
    # Line 118
    swc1	$f3,3120($a0)
    sd	$gp,16($sp)
    # Line 121
    lw	$at,68($s5)
    # Line 109
    lui	$v0,0xfff9
    addiu	$v0,$v0,23204
    # Line 121
    beqz	$at,.L0f09d800
    # Line 109
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 121
    lw	$v1,64($s5)
    beqz	$v1,.L0f09d82c
    sd	$ra,24($sp)
.L0f09d800:
    # Line 127
    la	$t9,glColor4fv
.L0f09d804:
    addiu	$a0,$s7,3120
    # Line 126
    li	$a1,1
    # Line 127
    jalr	$t9
    # Line 126
    sw	$a1,64($s5)
    ld	$gp,16($sp)
    # Line 128
    ld	$ra,24($sp)
    ld	$s5,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09d82c:
    # Line 124
    lw	$t9,204($s7)
    jalr	$t9
    li	$a0,1
    b	.L0f09d804
    # Line 127
    la	$t9,glColor4fv
.end __iglooColor4f

# Function: __iglooColor4i
# Declared: Line 130 (Source lines: 131-155)
# Address: 0x0f09d840 - 0x0f09d980 (Size: 320 bytes, Frame: 48)
.globl __iglooColor4i
.ent __iglooColor4i
__iglooColor4i:
    # Line 139
    lw	$a5,12($a1)
    # Line 138
    lw	$a3,8($a1)
    # Line 137
    lw	$a4,4($a1)
    # Line 131
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    # Line 134
    lw	$s5,4100($zero)
    sd	$s7,8($sp)
    # Line 131
    move	$s7,$a0
    sd	$gp,16($sp)
    # Line 136
    lw	$a6,0($a1)
    # Line 131
    lui	$v0,0xfff9
    addiu	$v0,$v0,23048
    # Line 139
    sltiu	$at,$a6,255
    bnez	$at,.L0f09d884
    # Line 131
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 140
    b	.L0f09d8a0
    lwc1	$f4,_lit_3f800000
.L0f09d884:
    dsll32	$v1,$a6,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f4
    nop
    cvt.s.l	$f4,$f4
    lwc1	$f0,-15444($gp)
    mul.s	$f4,$f4,$f0
.L0f09d8a0:
    sltiu	$a1,$a4,255
    beqz	$a1,.L0f09d8c8
    # Line 141
    lwc1	$f7,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a4,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09d8c8:
    sltiu	$v0,$a3,255
    beqz	$v0,.L0f09d8f0
    # Line 142
    lwc1	$f5,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a3,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09d8f0:
    sltiu	$a1,$a5,255
    beqz	$a1,.L0f09d918
    # Line 143
    lwc1	$f6,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a5,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f6
    nop
    cvt.s.l	$f6,$f6
    mul.s	$f6,$f6,$f0
.L0f09d918:
    # Line 148
    swc1	$f6,3132($s7)
    # Line 147
    swc1	$f5,3128($s7)
    # Line 146
    swc1	$f7,3124($s7)
    # Line 145
    swc1	$f4,3120($s7)
    # Line 148
    lw	$v0,68($s5)
    beqz	$v0,.L0f09d940
    sd	$ra,24($sp)
    lw	$v1,64($s5)
    beqz	$v1,.L0f09d96c
    sd	$ra,24($sp)
.L0f09d940:
    # Line 154
    la	$t9,glColor4fv
.L0f09d944:
    addiu	$a0,$s7,3120
    # Line 153
    li	$a1,1
    # Line 154
    jalr	$t9
    # Line 153
    sw	$a1,64($s5)
    ld	$gp,16($sp)
    # Line 155
    ld	$ra,24($sp)
    ld	$s5,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09d96c:
    # Line 151
    lw	$t9,204($s7)
    jalr	$t9
    li	$a0,1
    b	.L0f09d944
    # Line 154
    la	$t9,glColor4fv
.end __iglooColor4i

# Function: __iglooColor4s
# Declared: Line 157 (Source lines: 158-182)
# Address: 0x0f09d980 - 0x0f09dac0 (Size: 320 bytes, Frame: 48)
.globl __iglooColor4s
.ent __iglooColor4s
__iglooColor4s:
    # Line 166
    lh	$a5,6($a1)
    # Line 165
    lh	$a3,4($a1)
    # Line 164
    lh	$a4,2($a1)
    # Line 158
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    # Line 161
    lw	$s5,4100($zero)
    sd	$s7,8($sp)
    # Line 158
    move	$s7,$a0
    sd	$gp,16($sp)
    # Line 163
    lh	$a6,0($a1)
    # Line 158
    lui	$v0,0xfff9
    addiu	$v0,$v0,22728
    # Line 166
    sltiu	$at,$a6,255
    bnez	$at,.L0f09d9c4
    # Line 158
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 167
    b	.L0f09d9e0
    lwc1	$f4,_lit_3f800000
.L0f09d9c4:
    dsll32	$v1,$a6,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f4
    nop
    cvt.s.l	$f4,$f4
    lwc1	$f0,-15444($gp)
    mul.s	$f4,$f4,$f0
.L0f09d9e0:
    sltiu	$a1,$a4,255
    beqz	$a1,.L0f09da08
    # Line 168
    lwc1	$f7,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a4,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09da08:
    sltiu	$v0,$a3,255
    beqz	$v0,.L0f09da30
    # Line 169
    lwc1	$f5,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a3,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09da30:
    sltiu	$a1,$a5,255
    beqz	$a1,.L0f09da58
    # Line 170
    lwc1	$f6,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a5,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f6
    nop
    cvt.s.l	$f6,$f6
    mul.s	$f6,$f6,$f0
.L0f09da58:
    # Line 175
    swc1	$f6,3132($s7)
    # Line 174
    swc1	$f5,3128($s7)
    # Line 173
    swc1	$f7,3124($s7)
    # Line 172
    swc1	$f4,3120($s7)
    # Line 175
    lw	$v0,68($s5)
    beqz	$v0,.L0f09da80
    sd	$ra,24($sp)
    lw	$v1,64($s5)
    beqz	$v1,.L0f09daac
    sd	$ra,24($sp)
.L0f09da80:
    # Line 181
    la	$t9,glColor4fv
.L0f09da84:
    addiu	$a0,$s7,3120
    # Line 180
    li	$a1,1
    # Line 181
    jalr	$t9
    # Line 180
    sw	$a1,64($s5)
    ld	$gp,16($sp)
    # Line 182
    ld	$ra,24($sp)
    ld	$s5,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09daac:
    # Line 178
    lw	$t9,204($s7)
    jalr	$t9
    li	$a0,1
    b	.L0f09da84
    # Line 181
    la	$t9,glColor4fv
.end __iglooColor4s

# Function: __iglooCpack
# Declared: Line 184 (Source lines: 185-209)
# Address: 0x0f09dac0 - 0x0f09dc08 (Size: 328 bytes, Frame: 48)
.globl __iglooCpack
.ent __iglooCpack
__iglooCpack:
    # Line 185
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    # Line 188
    lw	$s1,4100($zero)
    sd	$s5,8($sp)
    # Line 185
    move	$s5,$a0
    sd	$gp,16($sp)
    # Line 188
    andi	$a3,$a1,0xff
    # Line 185
    lui	$v0,0xfff9
    addiu	$v0,$v0,22408
    # Line 188
    sltiu	$at,$a3,255
    bnez	$at,.L0f09daf8
    # Line 185
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 194
    b	.L0f09db14
    lwc1	$f4,_lit_3f800000
.L0f09daf8:
    dsll32	$v1,$a3,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f4
    nop
    cvt.s.l	$f4,$f4
    lwc1	$f0,-15444($gp)
    mul.s	$f4,$f4,$f0
.L0f09db14:
    srl	$a0,$a1,0x8
    andi	$a0,$a0,0xff
    sltiu	$a2,$a0,255
    beqz	$a2,.L0f09db44
    # Line 195
    lwc1	$f7,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$a2,$a0,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09db44:
    srl	$a0,$a1,0x10
    andi	$a0,$a0,0xff
    sltiu	$at,$a0,255
    beqz	$at,.L0f09db74
    # Line 196
    lwc1	$f5,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$a2,$a0,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09db74:
    srl	$a0,$a1,0x18
    sltiu	$at,$a0,255
    beqz	$at,.L0f09dba0
    # Line 197
    lwc1	$f6,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$v0,$a0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f6
    nop
    cvt.s.l	$f6,$f6
    mul.s	$f6,$f6,$f0
.L0f09dba0:
    # Line 202
    swc1	$f6,3132($s5)
    # Line 201
    swc1	$f5,3128($s5)
    # Line 200
    swc1	$f7,3124($s5)
    # Line 199
    swc1	$f4,3120($s5)
    # Line 202
    lw	$v1,68($s1)
    beqz	$v1,.L0f09dbc8
    sd	$ra,24($sp)
    lw	$a2,64($s1)
    beqz	$a2,.L0f09dbf4
    sd	$ra,24($sp)
.L0f09dbc8:
    # Line 208
    la	$t9,glColor4fv
.L0f09dbcc:
    addiu	$a0,$s5,3120
    # Line 207
    li	$a3,1
    # Line 208
    jalr	$t9
    # Line 207
    sw	$a3,64($s1)
    ld	$gp,16($sp)
    # Line 209
    ld	$ra,24($sp)
    ld	$s1,0($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09dbf4:
    # Line 205
    lw	$t9,204($s5)
    jalr	$t9
    li	$a0,1
    b	.L0f09dbcc
    # Line 208
    la	$t9,glColor4fv
.end __iglooCpack

# Function: __iglooRgbcolor
# Declared: Line 211 (Source lines: 212-230)
# Address: 0x0f09dc08 - 0x0f09dd48 (Size: 320 bytes, Frame: 192)
.globl __iglooRgbcolor
.ent __iglooRgbcolor
__iglooRgbcolor:
    # Line 212
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 214
    lw	$s0,4100($zero)
    sd	$s1,8($sp)
    # Line 212
    move	$s1,$a0
    sd	$gp,16($sp)
    # Line 214
    li	$a5,-256
    # Line 212
    lui	$v0,0xfff9
    addiu	$v0,$v0,22080
    # Line 214
    and	$at,$a1,$a5
    beqz	$at,.L0f09dccc
    # Line 212
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 214
    bltz	$a1,.L0f09dd10
    lwc1	$f4,_lit_3f800000
    # Line 216
    mov.s	$f5,$f4
.L0f09dc44:
    mov.s	$f7,$f5
.L0f09dc48:
    and	$v1,$a2,$a5
    beqz	$v1,.L0f09dce8
    # Line 217
    lwc1	$f0,_lit_3b808081
    # Line 216
    bltz	$a2,.L0f09dd1c
    # Line 217
    mov.s	$f6,$f4
.L0f09dc5c:
    mov.s	$f5,$f6
.L0f09dc60:
    and	$a4,$a3,$a5
    beqz	$a4,.L0f09dcfc
    # Line 218
    lwc1	$f0,_lit_3b808081
    # Line 217
    bltz	$a3,.L0f09dd28
    # Line 218
    mov.s	$f8,$f4
.L0f09dc74:
    mov.s	$f6,$f8
.L0f09dc78:
    # Line 223
    swc1	$f4,3132($s1)
    # Line 222
    swc1	$f6,3128($s1)
    # Line 221
    swc1	$f5,3124($s1)
    # Line 220
    swc1	$f7,3120($s1)
    # Line 223
    lw	$at,68($s0)
    beqz	$at,.L0f09dca0
    sd	$ra,24($sp)
    lw	$v0,64($s0)
    beqz	$v0,.L0f09dd34
    sd	$ra,24($sp)
.L0f09dca0:
    # Line 229
    la	$t9,glColor3fv
.L0f09dca4:
    addiu	$a0,$s1,3120
    # Line 228
    li	$v1,1
    # Line 229
    jalr	$t9
    # Line 228
    sw	$v1,64($s0)
    ld	$gp,16($sp)
    # Line 230
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09dccc:
    # Line 216
    mtc1	$a1,$f7
    nop
    cvt.s.w	$f7,$f7
    lwc1	$f0,_lit_3b808081
    lwc1	$f4,_lit_3f800000
    b	.L0f09dc48
    mul.s	$f7,$f7,$f0
.L0f09dce8:
    # Line 217
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    b	.L0f09dc60
    mul.s	$f5,$f5,$f0
.L0f09dcfc:
    # Line 218
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    b	.L0f09dc78
    mul.s	$f6,$f6,$f0
.L0f09dd10:
    # Line 216
    mtc1	$zero,$f5
    b	.L0f09dc44
    nop
.L0f09dd1c:
    # Line 217
    mtc1	$zero,$f6
    b	.L0f09dc5c
    nop
.L0f09dd28:
    # Line 218
    mtc1	$zero,$f8
    b	.L0f09dc74
    nop
.L0f09dd34:
    # Line 226
    lw	$t9,204($s1)
    jalr	$t9
    li	$a0,1
    b	.L0f09dca4
    # Line 229
    la	$t9,glColor3fv
.end __iglooRgbcolor

# Function: __iglooIndex
# Declared: Line 233 (Source lines: 234-241)
# Address: 0x0f09dd48 - 0x0f09dddc (Size: 148 bytes, Frame: 192)
.globl __iglooIndex
.ent __iglooIndex
__iglooIndex:
    # Line 234
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s5,8($sp)
    sd	$s1,0($sp)
    # Line 235
    lw	$s1,4100($zero)
    # Line 234
    move	$s5,$a0
    sd	$gp,24($sp)
    # Line 235
    lw	$at,68($s1)
    # Line 234
    lui	$v0,0xfff9
    addiu	$v0,$v0,21760
    # Line 235
    beqz	$at,.L0f09dd8c
    # Line 234
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 235
    lw	$v1,64($s1)
    beqz	$v1,.L0f09ddc8
    sd	$ra,32($sp)
.L0f09dd8c:
    # Line 239
    li	$a1,1
.L0f09dd90:
    sw	$a1,64($s1)
    # Line 240
    lw	$a0,12112($s5)
    la	$t9,glIndexs
    sllv	$a0,$s8,$a0
    dsll32	$a0,$a0,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    ld	$gp,24($sp)
    # Line 241
    ld	$s1,0($sp)
    ld	$ra,32($sp)
    ld	$s5,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09ddc8:
    # Line 237
    lw	$t9,204($s5)
    jalr	$t9
    li	$a0,1
    b	.L0f09dd90
    # Line 239
    li	$a1,1
.end __iglooIndex

# Function: __iglooIndexf
# Declared: Line 244 (Source lines: 245-252)
# Address: 0x0f09dddc - 0x0f09de7c (Size: 160 bytes, Frame: 192)
.globl __iglooIndexf
.ent __iglooIndexf
__iglooIndexf:
    # Line 245
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s7,16($sp)
    sd	$s5,8($sp)
    # Line 246
    lw	$s5,4100($zero)
    # Line 245
    move	$s7,$a0
    sd	$gp,24($sp)
    # Line 246
    lw	$at,68($s5)
    # Line 245
    lui	$v0,0xfff9
    addiu	$v0,$v0,21612
    # Line 246
    beqz	$at,.L0f09de20
    # Line 245
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 246
    lw	$v1,64($s5)
    beqz	$v1,.L0f09de68
    sd	$ra,32($sp)
.L0f09de20:
    # Line 251
    trunc.w.s	$f13,$f30
.L0f09de24:
    # Line 250
    li	$a1,1
    sw	$a1,64($s5)
    # Line 251
    mfc1	$a0,$f13
    lw	$a1,12112($s7)
    la	$t9,glIndexf
    andi	$a0,$a0,0xffff
    sllv	$a0,$a0,$a1
    mtc1	$a0,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$gp,24($sp)
    # Line 252
    ld	$s5,8($sp)
    ld	$ra,32($sp)
    ld	$s7,16($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09de68:
    # Line 248
    lw	$t9,204($s7)
    jalr	$t9
    li	$a0,1
    b	.L0f09de24
    # Line 251
    trunc.w.s	$f13,$f30
.end __iglooIndexf

# Function: __iglooSetLightColorProcsDefault
# Declared: Line 260 (Source lines: 261-281)
# Address: 0x0f09de7c - 0x0f09df0c (Size: 144 bytes, Frame: 32)
.globl __iglooSetLightColorProcsDefault
.ent __iglooSetLightColorProcsDefault
__iglooSetLightColorProcsDefault:
    # Line 261
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,21452
    addu	$gp,$t9,$a1
    # Line 271
    la	$t9,__iglooRgbcolor
    # Line 274
    lw	$at,3160($a0)
    # Line 270
    la	$a1,__iglooCpack
    # Line 271
    sw	$t9,124($a0)
    # Line 267
    la	$t9,__iglooColor4f
    # Line 270
    sw	$a1,128($a0)
    # Line 266
    la	$a1,__iglooColor3i
    # Line 267
    sw	$t9,112($a0)
    # Line 274
    la	$v1,__iglooIndexf
    # Line 266
    sw	$a1,108($a0)
    # Line 273
    la	$v0,__iglooIndex
    # Line 274
    sw	$v1,136($a0)
    # Line 269
    la	$v1,__iglooColor4i
    # Line 273
    sw	$v0,132($a0)
    # Line 268
    la	$v0,__iglooColor4s
    # Line 269
    sw	$v1,120($a0)
    # Line 265
    la	$v1,__iglooColor3s
    # Line 268
    sw	$v0,116($a0)
    # Line 264
    la	$v0,__iglooColor3f
    # Line 265
    sw	$v1,104($a0)
    # Line 274
    beqz	$at,.L0f09def4
    # Line 264
    sw	$v0,100($a0)
.L0f09dee8:
    ld	$gp,0($sp)
    # Line 281
    jr	$ra
    addiu	$sp,$sp,32
.L0f09def4:
    # Line 278
    la	$t9,__iglooSetColorProcsLight
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f09dee8
    ld	$ra,8($sp)
.end __iglooSetLightColorProcsDefault

# Function: __iglooStoreCol3f
# Declared: Line 293 (Source lines: 294-303)
# Address: 0x0f09df0c - 0x0f09df48 (Size: 60 bytes, Frame: 0)
.globl __iglooStoreCol3f
.ent __iglooStoreCol3f
__iglooStoreCol3f:
    # Line 297
    lw	$a2,4100($zero)
    li	$v1,1
    sw	$v1,64($a2)
    # Line 299
    lwc1	$f3,0($a1)
    # Line 294
    lui	$v0,0xfff9
    # Line 299
    swc1	$f3,3120($a0)
    # Line 294
    addiu	$v0,$v0,21308
    # Line 300
    lwc1	$f2,4($a1)
    # Line 294
    addu	$at,$t9,$v0
    # Line 302
    lwc1	$f1,-19660($at)
    # Line 300
    swc1	$f2,3124($a0)
    # Line 301
    lwc1	$f0,8($a1)
    # Line 302
    swc1	$f1,3132($a0)
    # Line 303
    jr	$ra
    # Line 301
    swc1	$f0,3128($a0)
.end __iglooStoreCol3f

# Function: __iglooStoreCol3i
# Declared: Line 305 (Source lines: 306-314)
# Address: 0x0f09df48 - 0x0f09dfb4 (Size: 108 bytes, Frame: 0)
.globl __iglooStoreCol3i
.ent __iglooStoreCol3i
__iglooStoreCol3i:
    # Line 308
    lw	$v1,4100($zero)
    li	$v0,1
    sw	$v0,64($v1)
    # Line 310
    lw	$a3,0($a1)
    mtc1	$a3,$f3
    # Line 306
    lui	$a2,0xfff9
    # Line 310
    cvt.s.w	$f3,$f3
    # Line 306
    addiu	$a2,$a2,21248
    addu	$at,$t9,$a2
    # Line 310
    lwc1	$f1,-19624($at)
    div.s	$f3,$f3,$f1
    swc1	$f3,3120($a0)
    # Line 311
    lw	$v1,4($a1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f1
    swc1	$f2,3124($a0)
    # Line 312
    lw	$v0,8($a1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f1
    # Line 313
    lwc1	$f1,-19660($at)
    swc1	$f1,3132($a0)
    # Line 314
    jr	$ra
    # Line 312
    swc1	$f0,3128($a0)
.end __iglooStoreCol3i

# Function: __iglooStoreCol3s
# Declared: Line 316 (Source lines: 317-325)
# Address: 0x0f09dfb4 - 0x0f09e020 (Size: 108 bytes, Frame: 0)
.globl __iglooStoreCol3s
.ent __iglooStoreCol3s
__iglooStoreCol3s:
    # Line 319
    lw	$v1,4100($zero)
    li	$v0,1
    sw	$v0,64($v1)
    # Line 321
    lh	$a3,0($a1)
    mtc1	$a3,$f3
    # Line 317
    lui	$a2,0xfff9
    # Line 321
    cvt.s.w	$f3,$f3
    # Line 317
    addiu	$a2,$a2,21140
    addu	$at,$t9,$a2
    # Line 321
    lwc1	$f1,-19624($at)
    div.s	$f3,$f3,$f1
    swc1	$f3,3120($a0)
    # Line 322
    lh	$v1,2($a1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f1
    swc1	$f2,3124($a0)
    # Line 323
    lh	$v0,4($a1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f1
    # Line 324
    lwc1	$f1,-19660($at)
    swc1	$f1,3132($a0)
    # Line 325
    jr	$ra
    # Line 323
    swc1	$f0,3128($a0)
.end __iglooStoreCol3s

# Function: __iglooStoreCol4f
# Declared: Line 329 (Source lines: 332-338)
# Address: 0x0f09e020 - 0x0f09e050 (Size: 48 bytes, Frame: 0)
.globl __iglooStoreCol4f
.ent __iglooStoreCol4f
__iglooStoreCol4f:
    # Line 332
    lw	$v0,4100($zero)
    li	$at,1
    sw	$at,64($v0)
    # Line 334
    lwc1	$f3,0($a1)
    swc1	$f3,3120($a0)
    # Line 335
    lwc1	$f2,4($a1)
    swc1	$f2,3124($a0)
    # Line 336
    lwc1	$f1,8($a1)
    swc1	$f1,3128($a0)
    # Line 337
    lwc1	$f0,12($a1)
    # Line 338
    jr	$ra
    # Line 337
    swc1	$f0,3132($a0)
.end __iglooStoreCol4f

# Function: __iglooStoreCol4i
# Declared: Line 340 (Source lines: 341-349)
# Address: 0x0f09e050 - 0x0f09e0cc (Size: 124 bytes, Frame: 0)
.globl __iglooStoreCol4i
.ent __iglooStoreCol4i
__iglooStoreCol4i:
    # Line 343
    lw	$a2,4100($zero)
    li	$v1,1
    sw	$v1,64($a2)
    # Line 345
    lw	$v0,0($a1)
    mtc1	$v0,$f4
    # Line 341
    lui	$a3,0xfff9
    # Line 345
    cvt.s.w	$f4,$f4
    # Line 341
    addiu	$a3,$a3,20984
    addu	$at,$t9,$a3
    # Line 345
    lwc1	$f1,-19624($at)
    div.s	$f4,$f4,$f1
    swc1	$f4,3120($a0)
    # Line 346
    lw	$a2,4($a1)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f1
    swc1	$f3,3124($a0)
    # Line 347
    lw	$v1,8($a1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f1
    swc1	$f2,3128($a0)
    # Line 348
    lw	$v0,12($a1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f1
    # Line 349
    jr	$ra
    # Line 348
    swc1	$f0,3132($a0)
.end __iglooStoreCol4i

# Function: __iglooStoreCol4s
# Declared: Line 351 (Source lines: 352-360)
# Address: 0x0f09e0cc - 0x0f09e148 (Size: 124 bytes, Frame: 0)
.globl __iglooStoreCol4s
.ent __iglooStoreCol4s
__iglooStoreCol4s:
    # Line 354
    lw	$a2,4100($zero)
    li	$v1,1
    sw	$v1,64($a2)
    # Line 356
    lh	$v0,0($a1)
    mtc1	$v0,$f4
    # Line 352
    lui	$a3,0xfff9
    # Line 356
    cvt.s.w	$f4,$f4
    # Line 352
    addiu	$a3,$a3,20860
    addu	$at,$t9,$a3
    # Line 356
    lwc1	$f1,-19624($at)
    div.s	$f4,$f4,$f1
    swc1	$f4,3120($a0)
    # Line 357
    lh	$a2,2($a1)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f1
    swc1	$f3,3124($a0)
    # Line 358
    lh	$v1,4($a1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f1
    swc1	$f2,3128($a0)
    # Line 359
    lh	$v0,6($a1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f1
    # Line 360
    jr	$ra
    # Line 359
    swc1	$f0,3132($a0)
.end __iglooStoreCol4s

# Function: __iglooStoreCpack
# Declared: Line 362 (Source lines: 363-372)
# Address: 0x0f09e148 - 0x0f09e1d0 (Size: 136 bytes, Frame: 0)
.globl __iglooStoreCpack
.ent __iglooStoreCpack
__iglooStoreCpack:
    # Line 367
    andi	$a3,$a1,0xff
    dmtc1	$a3,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 363
    lui	$v0,0xfff9
    addiu	$v0,$v0,20736
    addu	$at,$t9,$v0
    # Line 367
    lwc1	$f4,-19624($at)
    div.s	$f2,$f2,$f4
    # Line 370
    srl	$v1,$a1,0x18
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    div.s	$f3,$f3,$f4
    # Line 369
    srl	$a2,$a1,0x10
    andi	$a2,$a2,0xff
    dmtc1	$a2,$f1
    nop
    cvt.s.l	$f1,$f1
    div.s	$f1,$f1,$f4
    # Line 368
    srl	$a1,$a1,0x8
    andi	$a1,$a1,0xff
    dmtc1	$a1,$f0
    nop
    cvt.s.l	$f0,$f0
    div.s	$f0,$f0,$f4
    # Line 365
    lw	$v1,4100($zero)
    li	$v0,1
    sw	$v0,64($v1)
    # Line 370
    swc1	$f3,3132($a0)
    # Line 367
    swc1	$f2,3120($a0)
    # Line 369
    swc1	$f1,3128($a0)
    # Line 372
    jr	$ra
    # Line 368
    swc1	$f0,3124($a0)
.end __iglooStoreCpack

# Function: __iglooStoreRgbcolor
# Declared: Line 374 (Source lines: 375-384)
# Address: 0x0f09e1d0 - 0x0f09e230 (Size: 96 bytes, Frame: 0)
.globl __iglooStoreRgbcolor
.ent __iglooStoreRgbcolor
__iglooStoreRgbcolor:
    # Line 381
    mtc1	$a3,$f2
    # Line 375
    lui	$a3,0xfff9
    # Line 381
    cvt.s.w	$f2,$f2
    # Line 375
    addiu	$a3,$a3,20600
    addu	$at,$t9,$a3
    # Line 379
    lwc1	$f3,-19624($at)
    # Line 381
    div.s	$f2,$f2,$f3
    # Line 380
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f3
    # Line 379
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f3
    # Line 377
    lw	$v1,4100($zero)
    # Line 383
    lwc1	$f3,-19660($at)
    # Line 377
    li	$v0,1
    sw	$v0,64($v1)
    # Line 383
    swc1	$f3,3132($a0)
    # Line 381
    swc1	$f2,3128($a0)
    # Line 380
    swc1	$f1,3124($a0)
    # Line 384
    jr	$ra
    # Line 379
    swc1	$f0,3120($a0)
.end __iglooStoreRgbcolor

# Function: __iglooStoreIndex
# Declared: Line 386 (Source lines: 389-392)
# Address: 0x0f09e230 - 0x0f09e250 (Size: 32 bytes, Frame: 0)
.globl __iglooStoreIndex
.ent __iglooStoreIndex
__iglooStoreIndex:
    # Line 391
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 389
    lw	$v0,4100($zero)
    li	$at,1
    sw	$at,64($v0)
    # Line 392
    jr	$ra
    # Line 391
    swc1	$f0,3000($a0)
.end __iglooStoreIndex

# Function: __iglooStoreIndexf
# Declared: Line 395 (Source lines: 398-401)
# Address: 0x0f09e250 - 0x0f09e264 (Size: 20 bytes, Frame: 0)
.globl __iglooStoreIndexf
.ent __iglooStoreIndexf
__iglooStoreIndexf:
    # Line 398
    lw	$v0,4100($zero)
    li	$at,1
    sw	$at,64($v0)
    # Line 401
    jr	$ra
    # Line 400
    swc1	$f13,3000($a0)
.end __iglooStoreIndexf

# Function: __iglooSetColorProcsToDepthCue
# Declared: Line 403 (Source lines: 404-425)
# Address: 0x0f09e264 - 0x0f09e2f4 (Size: 144 bytes, Frame: 32)
.globl __iglooSetColorProcsToDepthCue
.ent __iglooSetColorProcsToDepthCue
__iglooSetColorProcsToDepthCue:
    # Line 404
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,20452
    addu	$gp,$t9,$a1
    # Line 416
    la	$t9,__iglooStoreRgbcolor
    # Line 419
    lw	$at,3160($a0)
    # Line 415
    la	$a1,__iglooStoreCpack
    # Line 416
    sw	$t9,124($a0)
    # Line 411
    la	$t9,__iglooStoreCol4f
    # Line 415
    sw	$a1,128($a0)
    # Line 409
    la	$a1,__iglooStoreCol3i
    # Line 411
    sw	$t9,112($a0)
    # Line 419
    la	$v1,__iglooStoreIndexf
    # Line 409
    sw	$a1,108($a0)
    # Line 418
    la	$v0,__iglooStoreIndex
    # Line 419
    sw	$v1,136($a0)
    # Line 413
    la	$v1,__iglooStoreCol4i
    # Line 418
    sw	$v0,132($a0)
    # Line 412
    la	$v0,__iglooStoreCol4s
    # Line 413
    sw	$v1,120($a0)
    # Line 408
    la	$v1,__iglooStoreCol3s
    # Line 412
    sw	$v0,116($a0)
    # Line 407
    la	$v0,__iglooStoreCol3f
    # Line 408
    sw	$v1,104($a0)
    # Line 419
    beqz	$at,.L0f09e2dc
    # Line 407
    sw	$v0,100($a0)
.L0f09e2d0:
    ld	$gp,0($sp)
    # Line 425
    jr	$ra
    addiu	$sp,$sp,32
.L0f09e2dc:
    # Line 423
    la	$t9,__iglooSetColorProcsLight
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f09e2d0
    ld	$ra,8($sp)
.end __iglooSetColorProcsToDepthCue

# Function: __iglooMat3f
# Declared: Line 454 (Source lines: 455-475)
# Address: 0x0f09e2f4 - 0x0f09e360 (Size: 108 bytes, Frame: 32)
.globl __iglooMat3f
.ent __iglooMat3f
__iglooMat3f:
    # Line 455
    move	$at,$a0
    addiu	$sp,$sp,-32
    # Line 459
    lw	$a2,4100($zero)
    sd	$ra,0($sp)
    li	$v1,1
    sw	$v1,64($a2)
    # Line 473
    addiu	$a2,$a0,3120
    sd	$gp,8($sp)
    # Line 462
    lwc1	$f1,4($a1)
    # Line 463
    lwc1	$f2,8($a1)
    # Line 465
    lwc1	$f0,0($a1)
    # Line 473
    lw	$a1,3144($a0)
    # Line 455
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,20308 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 468
    lwc1	$f3,_lit_3f800000
    # Line 473
    lw	$a0,3148($a0)
    la	$t9,glMaterialfv
    # Line 468
    swc1	$f3,3132($at)
    # Line 467
    swc1	$f2,3128($at)
    # Line 466
    swc1	$f1,3124($at)
    # Line 473
    jalr	$t9
    # Line 465
    swc1	$f0,3120($at)
    # Line 475
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMat3f

# Function: __iglooMat3s
# Declared: Line 477 (Source lines: 478-503)
# Address: 0x0f09e360 - 0x0f09e454 (Size: 244 bytes, Frame: 32)
.globl __iglooMat3s
.ent __iglooMat3s
__iglooMat3s:
    # Line 478
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff9
    addiu	$v0,$v0,20200
    move	$a5,$a0
    # Line 483
    lw	$a0,4100($zero)
    # Line 478
    # addu	gp,t9,v0 (gp setup)
    # Line 483
    li	$v1,1
    sw	$v1,64($a0)
    # Line 487
    lwc1	$f4,_lit_3f800000
    # Line 485
    lh	$a6,0($a1)
    # Line 487
    lh	$a4,4($a1)
    sltiu	$at,$a6,255
    bnez	$at,.L0f09e3a8
    # Line 486
    lh	$a3,2($a1)
    # Line 488
    mov.s	$f6,$f4
    b	.L0f09e3c4
    nop
.L0f09e3a8:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a6,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    nop
    cvt.s.l	$f6,$f6
    mul.s	$f6,$f6,$f0
.L0f09e3c4:
    sltiu	$a1,$a3,255
    beqz	$a1,.L0f09e3ec
    # Line 489
    mov.s	$f5,$f4
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a3,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09e3ec:
    sltiu	$v0,$a4,255
    bnez	$v0,.L0f09e400
    # Line 490
    mov.s	$f7,$f4
    b	.L0f09e420
    sd	$ra,8($sp)
.L0f09e400:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a4,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    nop
    cvt.s.l	$f7,$f7
    sd	$ra,8($sp)
    mul.s	$f7,$f7,$f0
.L0f09e420:
    # Line 501
    addiu	$a2,$a5,3120
    lw	$a1,3144($a5)
    lw	$a0,3148($a5)
    # Line 495
    swc1	$f4,3132($a5)
    # Line 501
    la	$t9,glMaterialfv
    # Line 494
    swc1	$f7,3128($a5)
    # Line 493
    swc1	$f5,3124($a5)
    # Line 501
    jalr	$t9
    # Line 492
    swc1	$f6,3120($a5)
    # Line 503
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMat3s

# Function: __iglooMat3i
# Declared: Line 505 (Source lines: 506-531)
# Address: 0x0f09e454 - 0x0f09e548 (Size: 244 bytes, Frame: 32)
.globl __iglooMat3i
.ent __iglooMat3i
__iglooMat3i:
    # Line 506
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff9
    addiu	$v0,$v0,19956
    move	$a5,$a0
    # Line 511
    lw	$a0,4100($zero)
    # Line 506
    # addu	gp,t9,v0 (gp setup)
    # Line 511
    li	$v1,1
    sw	$v1,64($a0)
    # Line 515
    lwc1	$f4,_lit_3f800000
    # Line 513
    lw	$a6,0($a1)
    # Line 515
    lw	$a4,8($a1)
    sltiu	$at,$a6,255
    bnez	$at,.L0f09e49c
    # Line 514
    lw	$a3,4($a1)
    # Line 516
    mov.s	$f6,$f4
    b	.L0f09e4b8
    nop
.L0f09e49c:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a6,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    nop
    cvt.s.l	$f6,$f6
    mul.s	$f6,$f6,$f0
.L0f09e4b8:
    sltiu	$a1,$a3,255
    beqz	$a1,.L0f09e4e0
    # Line 517
    mov.s	$f5,$f4
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a3,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09e4e0:
    sltiu	$v0,$a4,255
    bnez	$v0,.L0f09e4f4
    # Line 518
    mov.s	$f7,$f4
    b	.L0f09e514
    sd	$ra,8($sp)
.L0f09e4f4:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a4,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    nop
    cvt.s.l	$f7,$f7
    sd	$ra,8($sp)
    mul.s	$f7,$f7,$f0
.L0f09e514:
    # Line 529
    addiu	$a2,$a5,3120
    lw	$a1,3144($a5)
    lw	$a0,3148($a5)
    # Line 523
    swc1	$f4,3132($a5)
    # Line 529
    la	$t9,glMaterialfv
    # Line 522
    swc1	$f7,3128($a5)
    # Line 521
    swc1	$f5,3124($a5)
    # Line 529
    jalr	$t9
    # Line 520
    swc1	$f6,3120($a5)
    # Line 531
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMat3i

# Function: __iglooMat4f
# Declared: Line 533 (Source lines: 534-554)
# Address: 0x0f09e548 - 0x0f09e5b4 (Size: 108 bytes, Frame: 32)
.globl __iglooMat4f
.ent __iglooMat4f
__iglooMat4f:
    # Line 534
    move	$at,$a0
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 538
    lw	$a2,4100($zero)
    sd	$gp,8($sp)
    li	$v1,1
    sw	$v1,64($a2)
    # Line 534
    move	$a2,$a1
    # Line 553
    lw	$a1,3144($a0)
    lw	$a0,3148($a0)
    # Line 534
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,19712 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 553
    la	$t9,glMaterialfv
    # Line 545
    lwc1	$f0,0($a2)
    # Line 543
    lwc1	$f3,12($a2)
    # Line 542
    lwc1	$f2,8($a2)
    # Line 541
    lwc1	$f1,4($a2)
    # Line 548
    swc1	$f3,3132($at)
    # Line 547
    swc1	$f2,3128($at)
    # Line 546
    swc1	$f1,3124($at)
    # Line 553
    jalr	$t9
    # Line 545
    swc1	$f0,3120($at)
    # Line 554
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMat4f

# Function: __iglooMat4s
# Declared: Line 556 (Source lines: 557-583)
# Address: 0x0f09e5b4 - 0x0f09e6d0 (Size: 284 bytes, Frame: 32)
.globl __iglooMat4s
.ent __iglooMat4s
__iglooMat4s:
    # Line 557
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff9
    addiu	$v0,$v0,19604
    move	$a6,$a0
    # Line 562
    lw	$a0,4100($zero)
    # Line 557
    # addu	gp,t9,v0 (gp setup)
    # Line 562
    li	$v1,1
    sw	$v1,64($a0)
    # Line 564
    lh	$a7,0($a1)
    # Line 567
    lh	$a5,6($a1)
    # Line 566
    lh	$a4,4($a1)
    # Line 567
    sltiu	$at,$a7,255
    bnez	$at,.L0f09e5fc
    # Line 565
    lh	$a3,2($a1)
    # Line 568
    lwc1	$f4,_lit_3f800000
    b	.L0f09e618
    nop
.L0f09e5fc:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a7,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f4
    nop
    cvt.s.l	$f4,$f4
    mul.s	$f4,$f4,$f0
.L0f09e618:
    sltiu	$a1,$a3,255
    beqz	$a1,.L0f09e640
    # Line 569
    lwc1	$f7,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a3,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09e640:
    sltiu	$v0,$a4,255
    beqz	$v0,.L0f09e668
    # Line 570
    lwc1	$f5,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a4,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09e668:
    sltiu	$a1,$a5,255
    bnez	$a1,.L0f09e67c
    # Line 571
    lwc1	$f6,_lit_3f800000
    b	.L0f09e69c
    sd	$ra,8($sp)
.L0f09e67c:
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a5,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f6
    nop
    cvt.s.l	$f6,$f6
    sd	$ra,8($sp)
    mul.s	$f6,$f6,$f0
.L0f09e69c:
    # Line 581
    addiu	$a2,$a6,3120
    lw	$a1,3144($a6)
    lw	$a0,3148($a6)
    # Line 576
    swc1	$f6,3132($a6)
    # Line 581
    la	$t9,glMaterialfv
    # Line 575
    swc1	$f5,3128($a6)
    # Line 574
    swc1	$f7,3124($a6)
    # Line 581
    jalr	$t9
    # Line 573
    swc1	$f4,3120($a6)
    # Line 583
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMat4s

# Function: __iglooMat4i
# Declared: Line 585 (Source lines: 586-612)
# Address: 0x0f09e6d0 - 0x0f09e7ec (Size: 284 bytes, Frame: 32)
.globl __iglooMat4i
.ent __iglooMat4i
__iglooMat4i:
    # Line 586
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff9
    addiu	$v0,$v0,19320
    move	$a6,$a0
    # Line 591
    lw	$a0,4100($zero)
    # Line 586
    # addu	gp,t9,v0 (gp setup)
    # Line 591
    li	$v1,1
    sw	$v1,64($a0)
    # Line 593
    lw	$a7,0($a1)
    # Line 596
    lw	$a5,12($a1)
    # Line 595
    lw	$a4,8($a1)
    # Line 596
    sltiu	$at,$a7,255
    bnez	$at,.L0f09e718
    # Line 594
    lw	$a3,4($a1)
    # Line 597
    lwc1	$f4,_lit_3f800000
    b	.L0f09e734
    nop
.L0f09e718:
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a7,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f4
    nop
    cvt.s.l	$f4,$f4
    mul.s	$f4,$f4,$f0
.L0f09e734:
    sltiu	$a1,$a3,255
    beqz	$a1,.L0f09e75c
    # Line 598
    lwc1	$f7,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a3,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09e75c:
    sltiu	$v0,$a4,255
    beqz	$v0,.L0f09e784
    # Line 599
    lwc1	$f5,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$v1,$a4,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09e784:
    sltiu	$a1,$a5,255
    bnez	$a1,.L0f09e798
    # Line 600
    lwc1	$f6,_lit_3f800000
    b	.L0f09e7b8
    sd	$ra,8($sp)
.L0f09e798:
    lwc1	$f0,-15444($gp)
    dsll32	$at,$a5,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f6
    nop
    cvt.s.l	$f6,$f6
    sd	$ra,8($sp)
    mul.s	$f6,$f6,$f0
.L0f09e7b8:
    # Line 610
    addiu	$a2,$a6,3120
    lw	$a1,3144($a6)
    lw	$a0,3148($a6)
    # Line 605
    swc1	$f6,3132($a6)
    # Line 610
    la	$t9,glMaterialfv
    # Line 604
    swc1	$f5,3128($a6)
    # Line 603
    swc1	$f7,3124($a6)
    # Line 610
    jalr	$t9
    # Line 602
    swc1	$f4,3120($a6)
    # Line 612
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMat4i

# Function: __iglooMatCpack
# Declared: Line 614 (Source lines: 615-643)
# Address: 0x0f09e7ec - 0x0f09e910 (Size: 292 bytes, Frame: 32)
.globl __iglooMatCpack
.ent __iglooMatCpack
__iglooMatCpack:
    # Line 620
    li	$v0,1
    # Line 615
    addiu	$sp,$sp,-32
    # Line 620
    andi	$a3,$a1,0xff
    sltiu	$at,$a3,255
    sd	$gp,0($sp)
    lw	$v1,4100($zero)
    # Line 615
    move	$a4,$a0
    lui	$a0,0xfff9
    addiu	$a0,$a0,19036
    addu	$gp,$t9,$a0
    # Line 620
    bnez	$at,.L0f09e828
    sw	$v0,64($v1)
    # Line 626
    lwc1	$f4,_lit_3f800000
    b	.L0f09e844
    nop
.L0f09e828:
    lwc1	$f0,-15444($gp)
    dsll32	$a2,$a3,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f4
    nop
    cvt.s.l	$f4,$f4
    mul.s	$f4,$f4,$f0
.L0f09e844:
    srl	$a0,$a1,0x8
    andi	$a0,$a0,0xff
    sltiu	$at,$a0,255
    beqz	$at,.L0f09e874
    # Line 627
    lwc1	$f7,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$a2,$a0,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f0
.L0f09e874:
    srl	$a0,$a1,0x10
    andi	$a0,$a0,0xff
    sltiu	$at,$a0,255
    beqz	$at,.L0f09e8a4
    # Line 628
    lwc1	$f5,_lit_3f800000
    lwc1	$f0,-15444($gp)
    dsll32	$a2,$a0,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f5,$f5,$f0
.L0f09e8a4:
    srl	$a0,$a1,0x18
    sltiu	$at,$a0,255
    bnez	$at,.L0f09e8bc
    # Line 629
    lwc1	$f6,_lit_3f800000
    b	.L0f09e8dc
    sd	$ra,8($sp)
.L0f09e8bc:
    lwc1	$f0,-15444($gp)
    dsll32	$v0,$a0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f6
    nop
    cvt.s.l	$f6,$f6
    sd	$ra,8($sp)
    mul.s	$f6,$f6,$f0
.L0f09e8dc:
    # Line 640
    addiu	$a2,$a4,3120
    lw	$a1,3144($a4)
    lw	$a0,3148($a4)
    # Line 634
    swc1	$f6,3132($a4)
    # Line 640
    la	$t9,glMaterialfv
    # Line 633
    swc1	$f5,3128($a4)
    # Line 632
    swc1	$f7,3124($a4)
    # Line 640
    jalr	$t9
    # Line 631
    swc1	$f4,3120($a4)
    # Line 643
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMatCpack

# Function: __iglooMatRgbcolor
# Declared: Line 645 (Source lines: 646-666)
# Address: 0x0f09e910 - 0x0f09ea24 (Size: 276 bytes, Frame: 48)
.globl __iglooMatRgbcolor
.ent __iglooMatRgbcolor
__iglooMatRgbcolor:
    # Line 650
    li	$v0,1
    # Line 646
    addiu	$sp,$sp,-48
    # Line 650
    li	$a6,-256
    and	$at,$a1,$a6
    sd	$gp,0($sp)
    lw	$v1,4100($zero)
    # Line 646
    move	$a5,$a0
    lui	$a0,0xfff9
    addiu	$a0,$a0,18744
    addu	$gp,$t9,$a0
    # Line 652
    lwc1	$f4,_lit_3f800000
    # Line 650
    beqz	$at,.L0f09e9bc
    sw	$v0,64($v1)
    lwc1	$f4,_lit_3f800000
    bltz	$a1,.L0f09ea00
    # Line 652
    mov.s	$f5,$f4
.L0f09e950:
    mov.s	$f7,$f5
.L0f09e954:
    and	$a4,$a2,$a6
    beqz	$a4,.L0f09e9d4
    # Line 653
    lwc1	$f0,_lit_3b808081
    # Line 652
    bltz	$a2,.L0f09ea0c
    # Line 653
    mov.s	$f6,$f4
.L0f09e968:
    mov.s	$f5,$f6
.L0f09e96c:
    and	$at,$a3,$a6
    beqz	$at,.L0f09e9e8
    # Line 654
    lwc1	$f0,_lit_3b808081
    # Line 653
    bltz	$a3,.L0f09ea18
    # Line 654
    mov.s	$f8,$f4
.L0f09e980:
    sd	$ra,8($sp)
    mov.s	$f6,$f8
.L0f09e988:
    # Line 664
    addiu	$a2,$a5,3120
    lw	$a1,3144($a5)
    lw	$a0,3148($a5)
    # Line 659
    swc1	$f4,3132($a5)
    # Line 664
    la	$t9,glMaterialfv
    # Line 658
    swc1	$f6,3128($a5)
    # Line 657
    swc1	$f5,3124($a5)
    # Line 664
    jalr	$t9
    # Line 656
    swc1	$f7,3120($a5)
    # Line 666
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09e9bc:
    # Line 652
    mtc1	$a1,$f7
    nop
    cvt.s.w	$f7,$f7
    lwc1	$f0,_lit_3b808081
    b	.L0f09e954
    mul.s	$f7,$f7,$f0
.L0f09e9d4:
    # Line 653
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    b	.L0f09e96c
    mul.s	$f5,$f5,$f0
.L0f09e9e8:
    # Line 654
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    sd	$ra,8($sp)
    b	.L0f09e988
    mul.s	$f6,$f6,$f0
.L0f09ea00:
    # Line 652
    mtc1	$zero,$f5
    b	.L0f09e950
    nop
.L0f09ea0c:
    # Line 653
    mtc1	$zero,$f6
    b	.L0f09e968
    nop
.L0f09ea18:
    # Line 654
    mtc1	$zero,$f8
    b	.L0f09e980
    nop
.end __iglooMatRgbcolor

# Function: __iglooSetRGBColorProcsToMaterial
# Declared: Line 668 (Source lines: 669-690)
# Address: 0x0f09ea24 - 0x0f09ea90 (Size: 108 bytes, Frame: 32)
.ent __iglooSetRGBColorProcsToMaterial
__iglooSetRGBColorProcsToMaterial:
    # Line 680
    la	$a1,__iglooMat4i
    # Line 669
    addiu	$sp,$sp,-32
    # Line 680
    sw	$a1,120($a0)
    # Line 676
    la	$a1,__iglooMat3i
    # Line 683
    lw	$at,3160($a0)
    la	$v1,__iglooMatRgbcolor
    # Line 676
    sw	$a1,108($a0)
    # Line 682
    la	$v0,__iglooMatCpack
    # Line 683
    sw	$v1,124($a0)
    # Line 679
    la	$v1,__iglooMat4s
    # Line 682
    sw	$v0,128($a0)
    # Line 678
    la	$v0,__iglooMat4f
    # Line 679
    sw	$v1,116($a0)
    # Line 675
    la	$v1,__iglooMat3s
    # Line 678
    sw	$v0,112($a0)
    # Line 674
    la	$v0,__iglooMat3f
    # Line 675
    sw	$v1,104($a0)
    # Line 683
    beqz	$at,.L0f09ea78
    # Line 674
    sw	$v0,100($a0)
.L0f09ea70:
    # Line 690
    jr	$ra
    addiu	$sp,$sp,32
.L0f09ea78:
    # Line 687
    la	$t9,__iglooSetColorProcsLight
    sd	$ra,0($sp)
    jalr	$t9
    nop
    b	.L0f09ea70
    ld	$ra,0($sp)
.end __iglooSetRGBColorProcsToMaterial

# Function: empty_func
# Declared: Line 693 (Source lines: 696-696)
# Address: 0x0f09ea90 - 0x0f09ea98 (Size: 8 bytes, Frame: 0)
.ent empty_func
empty_func:
    # Line 696
    jr	$ra
    nop
.end empty_func

# Function: __iglooSetRgbColorProcsToNull
# Declared: Line 698 (Source lines: 699-723)
# Address: 0x0f09ea98 - 0x0f09eafc (Size: 100 bytes, Frame: 32)
.ent __iglooSetRgbColorProcsToNull
__iglooSetRgbColorProcsToNull:
    # Line 699
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    la	$v0,sub_0f0a0000
    move	$s0,$a0
    # Line 714
    lw	$at,3160($a0)
    # Line 699
    addiu	$v0,$v0,-5488
    # Line 714
    sw	$v0,124($a0)
    # Line 712
    sw	$v0,128($a0)
    # Line 710
    sw	$v0,120($a0)
    # Line 709
    sw	$v0,116($a0)
    # Line 708
    sw	$v0,112($a0)
    # Line 706
    sw	$v0,108($a0)
    # Line 705
    sw	$v0,104($a0)
    # Line 714
    beqz	$at,.L0f09eae4
    # Line 704
    sw	$v0,100($a0)
.L0f09ead4:
    # Line 722
    sw	$zero,3140($s0)
    # Line 723
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f09eae4:
    # Line 719
    la	$t9,__iglooSetColorProcsLight
    sd	$ra,8($sp)
    jalr	$t9
    move	$a0,$s0
    b	.L0f09ead4
    ld	$ra,8($sp)
.end __iglooSetRgbColorProcsToNull

# Function: gl_i_cpack
# Declared: Line 729 (Source lines: 729-729)
# Address: 0x0f09eafc - 0x0f09eb3c (Size: 64 bytes, Frame: 32)
.globl gl_i_cpack
.ent gl_i_cpack
gl_i_cpack:
    # Line 729
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,18252 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,168($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_cpack

# Function: gl_c_cpack
# Declared: Line 729 (Source lines: 729-729)
# Address: 0x0f09eb3c - 0x0f09ebb0 (Size: 116 bytes, Frame: 192)
.globl gl_c_cpack
.ent gl_c_cpack
gl_c_cpack:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,18188 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20952($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09eb94
    move	$s8,$a0
.L0f09eb64:
    addiu	$a1,$sp,0
    li	$a0,6
    la	$t9,gl_compile
    la	$v1,gl_n_cpack
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09eb94:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29408
    li	$a1,1
    b	.L0f09eb64
    sw	$a1,-20952($gp)
.end gl_c_cpack

# Function: gl_n_cpack
# Declared: Line 729 (Source lines: 729-729)
# Address: 0x0f09ebb0 - 0x0f09ebfc (Size: 76 bytes, Frame: 48)
.globl gl_n_cpack
.ent gl_n_cpack
gl_n_cpack:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,18072 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,168($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a1,0($s8)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_cpack

# Function: __igloolmcolor
# Declared: Line 763 (Source lines: 764-787)
# Address: 0x0f09ebfc - 0x0f09ec6c (Size: 112 bytes, Frame: 32)
.globl __igloolmcolor
.ent __igloolmcolor
__igloolmcolor:
    # Line 764
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a5,0xfff9
    addiu	$a5,$a5,17996
    addu	$gp,$t9,$a5
    # Line 765
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    lw	$at,2904($a4)
    # Line 764
    move	$a3,$a0
    # Line 765
    bnez	$at,.L0f09ec60
    move	$a5,$a4
    lw	$at,3136($a4)
    bne	$at,$a3,.L0f09ec48
    li	$v0,1
    beq	$a1,$v0,.L0f09ec4c
    # Line 785
    la	$t9,__iglooSyncLmcolor
    ld	$gp,0($sp)
    # Line 779
    jr	$ra
    addiu	$sp,$sp,32
.L0f09ec48:
    # Line 785
    la	$t9,__iglooSyncLmcolor
.L0f09ec4c:
    move	$a0,$a5
    sd	$ra,8($sp)
    bal __iglooSyncLmcolor
    # Line 783
    sw	$a3,3136($a4)
    ld	$ra,8($sp)
.L0f09ec60:
    ld	$gp,0($sp)
    # Line 787
    jr	$ra
    addiu	$sp,$sp,32
.end __igloolmcolor

# Function: __iglooSyncLmcolor
# Declared: Line 789 (Source lines: 790-994)
# Address: 0x0f09ec6c - 0x0f09f020 (Size: 948 bytes, Frame: 192)
.globl __iglooSyncLmcolor
.ent __iglooSyncLmcolor
__iglooSyncLmcolor:
    # Line 792
    lw	$v0,3136($a0)
    # Line 790
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lui	$v1,0xfff9
    addiu	$v1,$v1,17884
    # Line 793
    lw	$at,2904($a0)
    lw	$a4,4100($zero)
    # Line 790
    # addu	gp,t9,v1 (gp setup)
    # Line 793
    bnez	$at,.L0f09ecd4
    move	$a3,$a4
    lw	$a1,3076($s0)
    sd	$v0,8($sp)
    li	$a2,1
    beq	$a1,$a2,.L0f09ece4
    sd	$a3,0($sp)
    # Line 977
    lw	$at,3140($s0)
    beqz	$at,.L0f09ed44
    sd	$ra,32($sp)
    # Line 989
    la	$t9,__iglooSetEnable
.L0f09ecc0:
    move	$a1,$zero
    jalr	$t9
    li	$a0,2903
    # Line 990
    sw	$zero,3152($s0)
    ld	$ra,32($sp)
.L0f09ecd4:
    ld	$gp,24($sp)
.L0f09ecd8:
    # Line 994
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09ece4:
    # Line 811
    la	$t9,__iglooGetGraphicsType
    sd	$ra,32($sp)
    jalr	$t9
    nop
    # Line 813
    li	$v1,3
    beq	$v0,$v1,.L0f09ee38
    li	$a1,4
    beq	$v0,$a1,.L0f09ee38
    ld	$a2,8($sp)
    # Line 817
    bnez	$a2,.L0f09ed68
    ld	$a2,0($sp)
    # Line 830
    ld	$a1,0($sp)
    lw	$at,64($a1)
    li	$v1,1
    sw	$v1,68($a1)
    beqz	$at,.L0f09ef88
    lw	$t9,204($s0)
    # Line 832
    jalr	$t9
    li	$a0,1
    # Line 836
    lw	$t9,200($s0)
.L0f09ed34:
    jalr	$t9
    li	$a0,1
    b	.L0f09ed7c
    ld	$v0,0($sp)
.L0f09ed44:
    # Line 985
    sw	$zero,68($a4)
    # Line 986
    lw	$t9,200($s0)
    jalr	$t9
    move	$a0,$zero
    # Line 987
    la	$t9,__iglooSetLightColorProcsDefault
    bal __iglooSetLightColorProcsDefault
    move	$a0,$s0
    b	.L0f09ecc0
    # Line 989
    la	$t9,__iglooSetEnable
.L0f09ed68:
    # Line 838
    sw	$zero,68($a2)
    # Line 839
    lw	$t9,204($s0)
    jalr	$t9
    move	$a0,$zero
    ld	$v0,0($sp)
.L0f09ed7c:
    lbu	$v0,60($v0)
.L0f09ed80:
    # Line 828
    beqz	$v0,.L0f09ee98
.L0f09ed84:
    # Line 917
    ld	$a1,0($sp)
    ld	$v0,8($sp)
    li	$v1,1
    sb	$v1,61($a1)
    # la	a1,sub_0f020000
    sltiu	$v1,$v0,7
    sll	$v0,$v0,0x2
    la	$a1,jtbl_0f022358
    beqz	$v1,.L0f09edb8
    addu	$v0,$v0,$a1
    lw	$a2,0($v0)
    jr	$a2
    # Line 940
    li	$v0,5634
.L0f09edb8:
    # Line 946
    lw	$v0,3144($s0)
.L0f09edbc:
    # Line 948
    lw	$a0,3152($s0)
    bne	$v0,$a0,.L0f09ede8
    # Line 955
    la	$v1,sub_0f020000
    # Line 948
    beqz	$a0,.L0f09ede8
    # Line 955
    la	$v1,sub_0f020000
    la	$t9,__iglooSetLightColorProcsDefault
    bal __iglooSetLightColorProcsDefault
    move	$a0,$s0
    b	.L0f09ecd4
    ld	$ra,32($sp)
    # la	v1,sub_0f020000
.L0f09ede8:
    ld	$v0,8($sp)
    la	$v1,jtbl_0f022378
    sltiu	$at,$v0,7
    sll	$v0,$v0,0x2
    beqz	$at,.L0f09ee18
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    # Line 973
    la	$t9,sub_0f0a0000
.L0f09ee0c:
    addiu	$t9,$t9,-5480
    bal __iglooMatRgbcolor
    move	$a0,$s0
.L0f09ee18:
    # Line 977
    lw	$t9,152($s0)
.L0f09ee1c:
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,3120
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    b	.L0f09ecd8
    ld	$gp,24($sp)
.L0f09ee38:
    # Line 816
    ld	$a1,0($sp)
    lbu	$at,60($a1)
    li	$v1,1
    bnez	$at,.L0f09ed84
    sw	$v1,68($a1)
    ld	$a2,8($sp)
    beqz	$a2,.L0f09f010
    lw	$t9,200($s0)
    # Line 822
    jalr	$t9
    move	$a0,$zero
    ld	$v0,0($sp)
.L0f09ee64:
    b	.L0f09ed80
    lbu	$v0,60($v0)
.L0f09ee6c:
    # Line 965
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-5596
    bal __iglooMatRgbcolor
    move	$a0,$s0
    b	.L0f09ee1c
    # Line 977
    lw	$t9,152($s0)
.L0f09ee84:
    # Line 969
    la	$t9,__iglooSetLightColorProcsDefault
    bal __iglooSetLightColorProcsDefault
    move	$a0,$s0
    b	.L0f09ee1c
    # Line 977
    lw	$t9,152($s0)
.L0f09ee98:
    # Line 828
    ld	$at,8($sp)
    li	$v1,6
    beq	$at,$v1,.L0f09efc0
    # Line 857
    la	$t9,__iglooSetLightColorProcsDefault
    bal __iglooSetLightColorProcsDefault
    move	$a0,$s0
    # Line 858
    la	$t9,glColor4fv
    jalr	$t9
    addiu	$a0,$s0,3120
.L0f09eebc:
    ld	$v1,0($sp)
    # Line 865
    ld	$v0,8($sp)
    sb	$zero,61($v1)
    # la	v1,sub_0f020000
    sltiu	$a1,$v0,7
    sll	$v0,$v0,0x2
    la	$v1,jtbl_0f022338
    beqz	$a1,.L0f09eef0
    addu	$v0,$v0,$v1
    lw	$a1,0($v0)
    jr	$a1
    # Line 881
    li	$a2,5634
.L0f09eeec:
    sw	$a2,3144($s0)
.L0f09eef0:
    ld	$at,8($sp)
    # Line 889
    beqz	$at,.L0f09ef98
    ld	$v1,8($sp)
    li	$a1,6
    beql	$v1,$a1,.L0f09ef9c
    # Line 890
    lw	$t9,200($s0)
    # Line 894
    lw	$t9,200($s0)
    jalr	$t9
    move	$a0,$zero
    # Line 895
    la	$t9,glColorMaterial
    lw	$a1,3144($s0)
    jalr	$t9
    lw	$a0,3148($s0)
    # Line 897
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2903
    # Line 898
    lw	$a2,3144($s0)
    ld	$ra,32($sp)
    b	.L0f09ecd4
    sw	$a2,3152($s0)
.L0f09ef44:
    # Line 924
    li	$v0,5632
    # Line 925
    b	.L0f09edbc
    # Line 924
    sw	$v0,3144($s0)
.L0f09ef50:
    # Line 927
    li	$v0,4608
    # Line 928
    b	.L0f09edbc
    # Line 927
    sw	$v0,3144($s0)
.L0f09ef5c:
    # Line 930
    li	$v0,4609
    # Line 931
    b	.L0f09edbc
    # Line 930
    sw	$v0,3144($s0)
.L0f09ef68:
    # Line 933
    li	$v0,4610
    # Line 938
    b	.L0f09edbc
    # Line 933
    sw	$v0,3144($s0)
.L0f09ef74:
    # Line 941
    b	.L0f09edbc
    # Line 940
    sw	$v0,3144($s0)
.L0f09ef7c:
    # Line 945
    move	$v0,$zero
    # Line 946
    b	.L0f09edbc
    # Line 945
    sw	$zero,3144($s0)
.L0f09ef88:
    # Line 834
    jalr	$t9
    move	$a0,$zero
    b	.L0f09ed34
    # Line 836
    lw	$t9,200($s0)
.L0f09ef98:
    # Line 890
    lw	$t9,200($s0)
.L0f09ef9c:
    jalr	$t9
    li	$a0,1
    # Line 891
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,2903
    # Line 892
    sw	$zero,3152($s0)
    b	.L0f09ecd4
    ld	$ra,32($sp)
.L0f09efc0:
    # Line 862
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-5480
    bal __iglooMatRgbcolor
    move	$a0,$s0
    b	.L0f09eebc
    nop
.L0f09efd8:
    # Line 869
    li	$at,5632
    # Line 870
    b	.L0f09eef0
    # Line 869
    sw	$at,3144($s0)
.L0f09efe4:
    # Line 872
    li	$v1,4608
    # Line 873
    b	.L0f09eef0
    # Line 872
    sw	$v1,3144($s0)
.L0f09eff0:
    # Line 875
    li	$a1,4609
    # Line 876
    b	.L0f09eef0
    # Line 875
    sw	$a1,3144($s0)
.L0f09effc:
    # Line 878
    li	$a2,4610
    # Line 879
    b	.L0f09eef0
    # Line 878
    sw	$a2,3144($s0)
.L0f09f008:
    b	.L0f09eef0
    # Line 885
    sw	$zero,3144($s0)
.L0f09f010:
    # Line 820
    jalr	$t9
    li	$a0,1
    b	.L0f09ee64
    ld	$v0,0($sp)
.end __iglooSyncLmcolor

# Function: gl_i_lmcolor
# Declared: Line 998 (Source lines: 998-998)
# Address: 0x0f09f020 - 0x0f09f054 (Size: 52 bytes, Frame: 32)
.globl gl_i_lmcolor
.ent gl_i_lmcolor
gl_i_lmcolor:
    # Line 998
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,16936 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,__igloolmcolor
    sd	$ra,0($sp)
    bal __igloolmcolor
    move	$a1,$zero
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_lmcolor

# Function: gl_c_lmcolor
# Declared: Line 998 (Source lines: 998-998)
# Address: 0x0f09f054 - 0x0f09f0c8 (Size: 116 bytes, Frame: 192)
.globl gl_c_lmcolor
.ent gl_c_lmcolor
gl_c_lmcolor:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,16884 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20948($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09f0ac
    move	$s8,$a0
.L0f09f07c:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_lmcolor
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09f0ac:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29424
    li	$a1,1
    b	.L0f09f07c
    sw	$a1,-20948($gp)
.end gl_c_lmcolor

# Function: gl_n_lmcolor
# Declared: Line 998 (Source lines: 998-998)
# Address: 0x0f09f0c8 - 0x0f09f110 (Size: 72 bytes, Frame: 48)
.globl gl_n_lmcolor
.ent gl_n_lmcolor
gl_n_lmcolor:
    move	$a1,$zero
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,16768 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,__igloolmcolor
    move	$s8,$a0
    sd	$ra,0($sp)
    bal __igloolmcolor
    lw	$a0,0($a0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_lmcolor

# Function: gl_i_color
# Declared: Line 1000 (Source lines: 1000-1000)
# Address: 0x0f09f110 - 0x0f09f150 (Size: 64 bytes, Frame: 32)
.globl gl_i_color
.ent gl_i_color
gl_i_color:
    # Line 1000
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,16696 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    move	$a1,$a0
    lw	$a0,0($at)
    lw	$t9,172($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_color

# Function: gl_c_color
# Declared: Line 1000 (Source lines: 1000-1000)
# Address: 0x0f09f150 - 0x0f09f1c8 (Size: 120 bytes, Frame: 192)
.globl gl_c_color
.ent gl_c_color
gl_c_color:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,16632 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20944($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09f1ac
    move	$s8,$a0
.L0f09f178:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_color
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09f1ac:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29440
    li	$a1,1
    b	.L0f09f178
    sw	$a1,-20944($gp)
.end gl_c_color

# Function: gl_n_color
# Declared: Line 1000 (Source lines: 1000-1000)
# Address: 0x0f09f1c8 - 0x0f09f214 (Size: 76 bytes, Frame: 48)
.globl gl_n_color
.ent gl_n_color
gl_n_color:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,16512 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,172($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lhu	$a1,0($s8)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_color

# Function: gl_i_colorf
# Declared: Line 1001 (Source lines: 1001-1001)
# Address: 0x0f09f214 - 0x0f09f250 (Size: 60 bytes, Frame: 32)
.globl gl_i_colorf
.ent gl_i_colorf
gl_i_colorf:
    # Line 1001
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,16436
    addu	$gp,$t9,$a1
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$t9,176($a0)
    sd	$ra,0($sp)
    jalr	$t9
    mov.s	$f13,$f12
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_colorf

# Function: gl_c_colorf
# Declared: Line 1001 (Source lines: 1001-1001)
# Address: 0x0f09f250 - 0x0f09f2c4 (Size: 116 bytes, Frame: 192)
.globl gl_c_colorf
.ent gl_c_colorf
gl_c_colorf:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,16376 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20940($gp)
    sd	$ra,32($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f09f2a8
    mov.s	$f30,$f12
.L0f09f278:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_colorf
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f09f2a8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29456
    li	$at,1
    b	.L0f09f278
    sw	$at,-20940($gp)
.end gl_c_colorf

# Function: gl_n_colorf
# Declared: Line 1001 (Source lines: 1001-1001)
# Address: 0x0f09f2c4 - 0x0f09f310 (Size: 76 bytes, Frame: 48)
.globl gl_n_colorf
.ent gl_n_colorf
gl_n_colorf:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,16260 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    lw	$t9,176($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lwc1	$f13,0($s8)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_colorf

# Function: gl_i_RGBcolor
# Declared: Line 1035 (Source lines: 1035-1035)
# Address: 0x0f09f310 - 0x0f09f358 (Size: 72 bytes, Frame: 48)
.globl gl_i_RGBcolor
.ent gl_i_RGBcolor
gl_i_RGBcolor:
    # Line 1035
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,16184 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_wstatep
    move	$at,$a0
    lw	$a0,0($v0)
    move	$a3,$a2
    lw	$t9,164($a0)
    move	$a2,$a1
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$at
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_RGBcolor

# Function: gl_c_RGBcolor
# Declared: Line 1035 (Source lines: 1035-1035)
# Address: 0x0f09f358 - 0x0f09f3ec (Size: 148 bytes, Frame: 224)
.globl gl_c_RGBcolor
.ent gl_c_RGBcolor
gl_c_RGBcolor:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,16112 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20936($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f09f3c0
    move	$s8,$a0
.L0f09f384:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_RGBcolor
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09f3c0:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29472
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20936($gp)
    b	.L0f09f384
    ld	$a2,40($sp)
.end gl_c_RGBcolor

# Function: gl_n_RGBcolor
# Declared: Line 1035 (Source lines: 1035-1035)
# Address: 0x0f09f3ec - 0x0f09f440 (Size: 84 bytes, Frame: 48)
.globl gl_n_RGBcolor
.ent gl_n_RGBcolor
gl_n_RGBcolor:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,15964 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$s8,8($sp)
    move	$s8,$a0
    lw	$a0,0($at)
    sd	$ra,0($sp)
    lw	$t9,164($a0)
    lh	$a3,4($s8)
    lh	$a2,2($s8)
    jalr	$t9
    lh	$a1,0($s8)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_RGBcolor

# Function: gl_g_setshade
# Declared: Line 1037 (Source lines: 1038-1040)
# Address: 0x0f09f440 - 0x0f09f474 (Size: 52 bytes, Frame: 32)
.globl gl_g_setshade
.ent gl_g_setshade
gl_g_setshade:
    # Line 1038
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,15880 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1039
    la	$t9,__GLcolor
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 1040
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_setshade

.late_rodata
jtbl_0f022338:
    .word .L0f09f008
    .word .L0f09efd8
    .word .L0f09efe4
    .word .L0f09eff0
    .word .L0f09effc
    .word .L0f09eeec
    .word .L0f09f008
jtbl_0f022358:
    .word .L0f09ef7c
    .word .L0f09ef44
    .word .L0f09ef50
    .word .L0f09ef5c
    .word .L0f09ef68
    .word .L0f09ef74
    .word .L0f09ef7c
jtbl_0f022378:
    .word .L0f09ee84
    .word .L0f09ee6c
    .word .L0f09ee6c
    .word .L0f09ee6c
    .word .L0f09ee6c
    .word .L0f09ee6c
    .word .L0f09ee0c

.rdata
_lit_3b808081:
    .word 0x3b808081
_lit_3f800000:
    .word 0x3f800000

