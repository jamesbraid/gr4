# Source: ../object/callfunc.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/callfunc.c -o callfunc.T
# Total Functions: 6

.text

# Function: gl_do_callfunc
# Declared: Line 30 (Source lines: 34-61)
# Address: 0x0f097440 - 0x0f09765c (Size: 540 bytes, Frame: 208)
.globl gl_do_callfunc
.ent gl_do_callfunc
gl_do_callfunc:
    # Line 34
    move	$t3,$a2
    move	$t2,$a0
    move	$t1,$a1
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-16888 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # la	t9,sub_0f020000
    sll	$a4,$a1,0x2
    sltiu	$at,$a1,11
    la	$t9,jtbl_0f022238
    beqz	$at,.L0f0974b0
    addu	$a4,$a4,$t9
    lw	$v0,0($a4)
    jr	$v0
    sd	$ra,40($sp)
.L0f097484:
    # Line 50
    move	$a0,$t1
    lw	$a7,24($t3)
    lw	$a6,20($t3)
    lw	$a5,16($t3)
    lw	$a4,12($t3)
    lw	$a3,8($t3)
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    jalr	$t2
    move	$t9,$t2
    ld	$ra,40($sp)
.L0f0974b0:
    ld	$gp,32($sp)
    # Line 61
    jr	$ra
    addiu	$sp,$sp,80
.L0f0974bc:
    # Line 36
    move	$a0,$t1
    jalr	$t2
    move	$t9,$t2
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f0974d0:
    # Line 38
    move	$a0,$t1
    lw	$a1,0($t3)
    jalr	$t2
    move	$t9,$t2
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f0974e8:
    # Line 40
    move	$a0,$t1
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    jalr	$t2
    move	$t9,$t2
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f097504:
    # Line 42
    move	$a0,$t1
    lw	$a3,8($t3)
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    jalr	$t2
    move	$t9,$t2
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f097524:
    # Line 44
    move	$a0,$t1
    lw	$a4,12($t3)
    lw	$a3,8($t3)
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    jalr	$t2
    move	$t9,$t2
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f097548:
    # Line 46
    move	$a0,$t1
    lw	$a5,16($t3)
    lw	$a4,12($t3)
    lw	$a3,8($t3)
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    jalr	$t2
    move	$t9,$t2
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f097570:
    # Line 48
    move	$a0,$t1
    lw	$a6,20($t3)
    lw	$a5,16($t3)
    lw	$a4,12($t3)
    lw	$a3,8($t3)
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    jalr	$t2
    move	$t9,$t2
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f09759c:
    # Line 52
    move	$a0,$t1
    move	$t9,$t2
    lw	$a7,24($t3)
    lw	$a6,20($t3)
    lw	$a5,16($t3)
    lw	$a4,12($t3)
    lw	$a3,8($t3)
    lw	$a2,4($t3)
    lw	$v1,28($t3)
    lw	$a1,0($t3)
    jalr	$t2
    sw	$v1,4($sp)
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f0975d4:
    # Line 54
    lw	$a7,24($t3)
    lw	$a6,20($t3)
    lw	$a5,16($t3)
    lw	$a4,12($t3)
    lw	$a3,8($t3)
    move	$a0,$t1
    lw	$t1,28($t3)
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    sw	$t1,4($sp)
    lw	$t0,32($t3)
    move	$t9,$t2
    jalr	$t2
    sw	$t0,12($sp)
    b	.L0f0974b0
    ld	$ra,40($sp)
.L0f097614:
    # Line 57
    lw	$a7,24($t3)
    lw	$a6,20($t3)
    lw	$a5,16($t3)
    lw	$a4,12($t3)
    lw	$a3,8($t3)
    lw	$t9,28($t3)
    lw	$a2,4($t3)
    lw	$a1,0($t3)
    sw	$t9,4($sp)
    lw	$t8,32($t3)
    sw	$t8,12($sp)
    move	$a0,$t1
    lw	$t3,36($t3)
    move	$t9,$t2
    jalr	$t2
    sw	$t3,20($sp)
    b	.L0f0974b0
    ld	$ra,40($sp)
.end gl_do_callfunc

# Function: gl_intrp_freefunc
# Declared: Line 81 (Source lines: 83-91)
# Address: 0x0f09765c - 0x0f0976a8 (Size: 76 bytes, Frame: 32)
.globl gl_intrp_freefunc
.ent gl_intrp_freefunc
gl_intrp_freefunc:
    # Line 83
    move	$a5,$a0
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 84
    lw	$a4,12($a0)
    # Line 83
    lui	$at,0xfffa
    addiu	$at,$at,-17428
    # Line 84
    bnez	$a4,.L0f097688
    # Line 83
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f09767c:
    ld	$gp,0($sp)
    # Line 91
    jr	$ra
    addiu	$sp,$sp,32
.L0f097688:
    # Line 87
    move	$a0,$a4
    la	$t9,gl_do_callfunc
    addiu	$a2,$a5,16
    sd	$ra,8($sp)
    bal gl_do_callfunc
    lw	$a1,4($a5)
    b	.L0f09767c
    ld	$ra,8($sp)
.end gl_intrp_freefunc

# Function: gl_ecallfunc
# Declared: Line 99 (Source lines: 99-127)
# Address: 0x0f0976a8 - 0x0f097870 (Size: 456 bytes, Frame: 176)
.globl gl_ecallfunc
.ent gl_ecallfunc
gl_ecallfunc:
    # Line 99
    addiu	$sp,$sp,-176
    sd	$a7,168($sp)
    sd	$a6,160($sp)
    sd	$a5,152($sp)
    sd	$a3,136($sp)
    sd	$s0,64($sp)
    move	$s0,$a2
    sw	$a2,132($sp)
    sd	$gp,72($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-17504 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21064($gp)
    sw	$a1,124($sp)
    sd	$a4,144($sp)
    beqz	$at,.L0f097830
    sw	$a0,116($sp)
    la	$a4,sub_0f020000
    addiu	$a4,$a4,28880
.L0f0976f4:
    slti	$at,$s0,11
    beqz	$at,.L0f0977f8
.L0f0976fc:
    # Line 115
    addiu	$a2,$sp,16
    # Line 113
    sw	$s0,4($sp)
    # Line 119
    li	$a4,-8
    # Line 115
    sw	$a1,12($sp)
    # Line 119
    move	$a7,$s0
    # Line 114
    sw	$a0,8($sp)
    # Line 112
    la	$v0,gl_n_gl_ecallfunc
    # Line 117
    addiu	$a0,$sp,136
    # Line 115
    blez	$s0,.L0f0977cc
    # Line 112
    sw	$v0,0($sp)
    # Line 119
    addiu	$a1,$s0,-1
    andi	$a6,$s0,0x3
    beqz	$a6,.L0f097758
    li	$a5,-1
.L0f097734:
    addiu	$a1,$a1,-1
    # Line 121
    addiu	$a2,$a2,4
    # Line 120
    addiu	$a0,$a0,7
    and	$a0,$a4,$a0
    addiu	$a0,$a0,8
    # Line 121
    lw	$v1,-4($a0)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f097734
    sw	$v1,-4($a2)
.L0f097758:
    move	$t1,$a0
    move	$a6,$a1
    move	$t0,$a2
    sra	$a3,$a7,0x2
    beqz	$a3,.L0f0977c8
    move	$a1,$t0
    move	$a2,$a6
    move	$a0,$t1
.L0f097778:
    addiu	$a1,$a1,16
    # Line 120
    addiu	$a0,$a0,7
    and	$a0,$a4,$a0
    # Line 121
    lw	$at,4($a0)
    # Line 120
    addiu	$a0,$a0,15
    and	$a0,$a4,$a0
    # Line 121
    lw	$a3,4($a0)
    # Line 119
    addiu	$a2,$a2,-4
    # Line 121
    sw	$at,-16($a1)
    sw	$a3,-12($a1)
    # Line 120
    addiu	$a0,$a0,15
    and	$a0,$a4,$a0
    # Line 121
    lw	$v0,4($a0)
    # Line 120
    addiu	$a0,$a0,15
    and	$a0,$a4,$a0
    addiu	$a0,$a0,8
    # Line 121
    lw	$at,-4($a0)
    sw	$v0,-8($a1)
    # Line 119
    bne	$a2,$a5,.L0f097778
    # Line 121
    sw	$at,-4($a1)
.L0f0977c8:
    sd	$ra,80($sp)
.L0f0977cc:
    # Line 125
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,80($sp)
    addu	$a0,$s0,$s0
    jalr	$t9
    addiu	$a0,$a0,8
    # Line 127
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0977f8:
    # Line 108
    lw	$a2,28($a4)
    sd	$a1,88($sp)
    li	$a1,2
    la	$t9,gl_ErrorHandler
    sd	$a0,96($sp)
    sd	$ra,80($sp)
    jalr	$t9
    li	$a0,72
    ld	$ra,80($sp)
    ld	$a1,88($sp)
    ld	$a0,96($sp)
    # Line 109
    li	$s0,10
    b	.L0f0976fc
    sw	$s0,132($sp)
.L0f097830:
    sd	$a1,88($sp)
    sd	$a0,96($sp)
    # Line 99
    la	$a0,sub_0f020000
    la	$t9,gl_intrptab_insert
    sd	$ra,80($sp)
    addiu	$a0,$a0,28880
    jalr	$t9
    addiu	$a0,$a0,16
    ld	$ra,80($sp)
    ld	$a0,96($sp)
    li	$a1,1
    sw	$a1,-21064($gp)
    la	$a4,sub_0f020000
    ld	$a1,88($sp)
    b	.L0f0976f4
    addiu	$a4,$a4,28880
.end gl_ecallfunc

# Function: gl_n_gl_ecallfunc
# Declared: Line 130 (Source lines: 130-140)
# Address: 0x0f097870 - 0x0f0978e8 (Size: 120 bytes, Frame: 48)
.globl gl_n_gl_ecallfunc
.ent gl_n_gl_ecallfunc
gl_n_gl_ecallfunc:
    # Line 130
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-17960 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0978a8
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0978a8:
    # Line 137
    addiu	$a2,$s3,12
    la	$t9,gl_do_callfunc
    # Line 135
    lw	$a1,0($s3)
    # Line 137
    lw	$a0,4($s3)
    bal gl_do_callfunc
    sd	$a1,0($sp)
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    # Line 139
    addu	$v0,$v0,$v0
    addu	$v0,$v0,$v0
    addu	$v0,$v0,$s3
    # Line 140
    ld	$s3,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 139
    addiu	$v0,$v0,12
.end gl_n_gl_ecallfunc

# Function: __GLcallfunc
# Declared: Line 145 (Source lines: 146-173)
# Address: 0x0f0978e8 - 0x0f097a6c (Size: 388 bytes, Frame: 160)
.globl __GLcallfunc
.ent __GLcallfunc
__GLcallfunc:
    # Line 146
    move	$t1,$a1
    addiu	$sp,$sp,-160
    sd	$a7,152($sp)
    sd	$a6,144($sp)
    sd	$a5,136($sp)
    sd	$gp,64($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-18080 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_dgl_table_is_remote
    sd	$a4,128($sp)
    sd	$a3,120($sp)
    lw	$at,0($at)
    sd	$a2,112($sp)
    sw	$a1,108($sp)
    beqz	$at,.L0f097938
    sw	$a0,100($sp)
    ld	$gp,64($sp)
    # Line 152
    jr	$ra
    addiu	$sp,$sp,160
.L0f097938:
    slti	$v1,$t1,11
    beqz	$v1,.L0f097a38
.L0f097940:
    # Line 162
    addiu	$a1,$sp,16
    sw	$zero,12($sp)
    # Line 160
    sw	$t1,4($sp)
    # Line 166
    li	$a5,-8
    move	$a7,$t1
    # Line 161
    sw	$a0,8($sp)
    # Line 159
    la	$a2,gl_n_gl_ecallfunc
    # Line 164
    addiu	$a0,$sp,112
    # Line 162
    blez	$t1,.L0f097a10
    # Line 159
    sw	$a2,0($sp)
    # Line 166
    addiu	$a3,$t1,-1
    andi	$a4,$t1,0x3
    beqz	$a4,.L0f09799c
    li	$a6,-1
.L0f097978:
    addiu	$a3,$a3,-1
    # Line 168
    addiu	$a1,$a1,4
    # Line 167
    addiu	$a0,$a0,7
    and	$a0,$a5,$a0
    addiu	$a0,$a0,8
    # Line 168
    lw	$at,-4($a0)
    addi	$a4,$a4,-1
    bnez	$a4,.L0f097978
    sw	$at,-4($a1)
.L0f09799c:
    move	$t2,$a3
    move	$t0,$a0
    move	$t3,$a1
    sra	$a2,$a7,0x2
    beqz	$a2,.L0f097a0c
    move	$a4,$t3
    move	$a3,$t2
    move	$a0,$t0
.L0f0979bc:
    addiu	$a4,$a4,16
    # Line 167
    addiu	$a0,$a0,7
    and	$a0,$a5,$a0
    # Line 168
    lw	$at,4($a0)
    # Line 167
    addiu	$a0,$a0,15
    and	$a0,$a5,$a0
    # Line 168
    lw	$a2,4($a0)
    # Line 166
    addiu	$a3,$a3,-4
    # Line 168
    sw	$at,-16($a4)
    sw	$a2,-12($a4)
    # Line 167
    addiu	$a0,$a0,15
    and	$a0,$a5,$a0
    # Line 168
    lw	$v0,4($a0)
    # Line 167
    addiu	$a0,$a0,15
    and	$a0,$a5,$a0
    addiu	$a0,$a0,8
    # Line 168
    lw	$at,-4($a0)
    sw	$v0,-8($a4)
    # Line 166
    bne	$a3,$a6,.L0f0979bc
    # Line 168
    sw	$at,-4($a4)
.L0f097a0c:
    sd	$ra,72($sp)
.L0f097a10:
    # Line 172
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,72($sp)
    addu	$a0,$t1,$t1
    jalr	$t9
    addiu	$a0,$a0,8
    # Line 173
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f097a38:
    # Line 155
    li	$a1,2
    sd	$a0,80($sp)
    li	$a0,72
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,72($sp)
    jalr	$t9
    lw	$a2,28940($a2)
    ld	$a0,80($sp)
    ld	$ra,72($sp)
    # Line 156
    li	$t1,10
    b	.L0f097940
    sw	$t1,108($sp)
.end __GLcallfunc

# Function: __GLicallfunc
# Declared: Line 177 (Source lines: 178-201)
# Address: 0x0f097a6c - 0x0f097bdc (Size: 368 bytes, Frame: 128)
.globl __GLicallfunc
.ent __GLicallfunc
__GLicallfunc:
    # Line 178
    addiu	$sp,$sp,-128
    sd	$gp,64($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-18468 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    move	$a7,$a1
    sd	$s0,72($sp)
    beqz	$at,.L0f097b9c
    move	$s0,$a2
    # Line 182
    slti	$v1,$a7,11
    beqz	$v1,.L0f097bac
.L0f097aa0:
    # Line 192
    addiu	$a1,$sp,16
    sw	$zero,12($sp)
    # Line 190
    sw	$a7,4($sp)
    # Line 195
    li	$a5,-8
    andi	$a2,$a7,0x3
    # Line 189
    la	$a3,gl_n_gl_ecallfunc
    # Line 191
    sw	$a0,8($sp)
    # Line 192
    blez	$a7,.L0f097b70
    # Line 189
    sw	$a3,0($sp)
    # Line 195
    addiu	$a0,$a7,-1
    move	$a4,$a7
    li	$a6,-1
    beqz	$a2,.L0f097b00
    move	$t2,$a0
.L0f097ad8:
    addiu	$a0,$a0,-1
    # Line 197
    addiu	$a1,$a1,4
    # Line 196
    addiu	$s0,$s0,7
    and	$s0,$a5,$s0
    addiu	$s0,$s0,8
    # Line 197
    lw	$at,-4($s0)
    addi	$a2,$a2,-1
    bnez	$a2,.L0f097ad8
    sw	$at,-4($a1)
    move	$t2,$a0
.L0f097b00:
    move	$t1,$s0
    move	$t0,$a1
    sra	$at,$a4,0x2
    beqz	$at,.L0f097b6c
    move	$a4,$t0
    move	$a2,$t2
    move	$a0,$t1
.L0f097b1c:
    # Line 196
    addiu	$a0,$a0,7
    and	$a0,$a5,$a0
    # Line 197
    lw	$a3,4($a0)
    # Line 196
    addiu	$a0,$a0,15
    # Line 197
    sw	$a3,0($a4)
    # Line 196
    and	$a0,$a5,$a0
    # Line 197
    lw	$a3,4($a0)
    addiu	$a4,$a4,16
    # Line 196
    addiu	$a0,$a0,15
    # Line 197
    sw	$a3,-12($a4)
    # Line 196
    and	$a0,$a5,$a0
    # Line 197
    lw	$a3,4($a0)
    # Line 196
    addiu	$a0,$a0,15
    and	$a0,$a5,$a0
    # Line 197
    sw	$a3,-8($a4)
    # Line 196
    addiu	$a0,$a0,8
    # Line 197
    lw	$v0,-4($a0)
    # Line 195
    addiu	$a2,$a2,-4
    bne	$a2,$a6,.L0f097b1c
    # Line 197
    sw	$v0,-4($a4)
.L0f097b6c:
    sd	$ra,80($sp)
.L0f097b70:
    # Line 200
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    sd	$ra,80($sp)
    addu	$a0,$a7,$a7
    jalr	$t9
    addiu	$a0,$a0,8
    # Line 201
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f097b9c:
    ld	$gp,64($sp)
    # Line 182
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f097bac:
    # Line 185
    li	$a1,2
    sd	$a0,88($sp)
    li	$a0,72
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,80($sp)
    jalr	$t9
    lw	$a2,28972($a2)
    # Line 186
    li	$a7,10
    ld	$a0,88($sp)
    b	.L0f097aa0
    ld	$ra,80($sp)
.end __GLicallfunc

.late_rodata
jtbl_0f022238:
    .word .L0f0974bc
    .word .L0f0974d0
    .word .L0f0974e8
    .word .L0f097504
    .word .L0f097524
    .word .L0f097548
    .word .L0f097570
    .word .L0f097484
    .word .L0f09759c
    .word .L0f0975d4
    .word .L0f097614

