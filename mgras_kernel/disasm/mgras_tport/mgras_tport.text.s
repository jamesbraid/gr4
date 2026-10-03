.section .text
.set noat
.set noreorder


glabel MgrasTpInit
    daddiu     $sp,$sp,-64
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    sd         $s2,24($sp)
    jal        mgras_baseindex
    move       $s0,$a0
    dsll       $a0,$v0,0x2
    ld         $a2,-30720($gp)
    dsubu      $a0,$a0,$v0
    dsll       $a0,$a0,0x4
    daddu      $a0,$a0,$a2
    lw         $at,32($a0)
    ld         $ra,0($sp)
    move       $s1,$v0
    beqz       $at, .L00000138
    ld         $s2,16($a0)
.L00000044:
    cache      0x14,0($sp)
    lhu        $v1,32($s2)
    addiu      $v1,$v1,-1
    ld         $a1,-30720($gp)
    lui        $v0,0x7
    dsll32     $v1,$v1,0x0
    daddu      $v0,$s0,$v0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a1
    sd         $v1,128($v0)
    lhu        $at,34($s2)
    ld         $a2,-30688($gp)
    ld         $a3,-30696($gp)
    addiu      $at,$at,-1
    ld         $v1,-30712($gp)
    dsll32     $at,$at,0x0
    ld         $s2,-30704($gp)
    dsrl32     $at,$at,0x0
    or         $at,$at,$v1
    sd         $at,128($v0)
    sd         $s2,128($v0)
    sd         $a3,128($v0)
    sd         $a2,128($v0)
    lw         $a1,256($v0)
    andi       $a1,$a1,0x1f
    lui        $at,0x6
    sltiu      $a1,$a1,3
    ld         $s2,24($sp)
    daddu      $at,$s0,$at
    li         $s0,443
    move       $a3,$s1
    bnez       $a1, .L000000e0
    ld         $s1,16($sp)
    ld         $s2,24($sp)
.L000000cc:
    lw         $a2,256($v0)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,3
    beqz       $a2, .L000000cc
    nop
.L000000e0:
    cache      0x14,0($sp)
    sb         $zero,7304($at)
    sw         $zero,7680($at)
    li         $v1,12
    sb         $v1,7304($at)
    sw         $s0,7936($at)
    li         $a2,130
    bltz       $a3, .L00000128
    ld         $s0,8($sp)
    ld         $v0,16($a0)
    ld         $s1,16($sp)
    li         $a3,1
    beqz       $v0, .L00000124
    ld         $s0,8($sp)
    lbu        $v1,41($v0)
    beq        $v1, $a2, .L00000130
    nop
.L00000124:
    sb         $zero,-30712($gp)
.L00000128:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000130:
    b          .L00000128
    sb         $a3,-30712($gp)
.L00000138:
    move       $a1,$s1
    sd         $a0,32($sp)
    jal        mgrasInitBoard
    move       $a0,$s0
    ld         $a0,32($sp)
    b          .L00000044
    ld         $ra,0($sp)

glabel MgrasTpMapcolor
    lui        $a6,0x7
    daddu      $a6,$a0,$a6
    lw         $at,256($a6)
    andi       $at,$at,0x1f
    beqz       $at, .L0000017c
    sll        $a5,$a3,0x10
.L0000016c:
    lw         $at,256($a6)
    andi       $at,$at,0x1f
    bnez       $at, .L0000016c
    nop
.L0000017c:
    lui        $a6,0x6
    daddu      $a6,$a0,$a6
    sll        $a7,$a1,0x8
    lbu        $v0,4616($a6)
    li         $v1,4
    andi       $a7,$a7,0xff00
    sll        $a0,$a2,0x18
    andi       $v0,$v0,0x8
    or         $a0,$a0,$a5
    sll        $a5,$a4,0x8
    bnez       $v0, .L000001bc
    or         $a0,$a0,$a5
.L000001ac:
    lbu        $at,4616($a6)
    andi       $at,$at,0x8
    beqz       $at, .L000001ac
    nop
.L000001bc:
    cache      0x14,0($sp)
    sra        $at,$a1,0x8
    andi       $at,$at,0xff
    or         $a7,$a7,$at
    sh         $a7,3120($a6)
    sh         $a7,3120($a6)
    li         $v0,1
    sb         $v0,7176($a6)
    sb         $v1,7304($a6)
    li         $at,17407
    sw         $at,7936($a6)
    sh         $a7,3120($a6)
    sw         $a0,3352($a6)
    sb         $v1,7304($a6)
    li         $v0,1023
    jr         $ra
    sw         $v0,7936($a6)

glabel MgrasTpColor
    lui        $a3,0x7
    daddu      $a3,$a0,$a3
    lw         $at,4($a3)
    andi       $at,$at,0x7f
    sltiu      $at,$at,64
    ld         $v1,-30680($gp)
    bnez       $at, .L00000234
    sll        $v0,$a1,0xc
.L00000220:
    lw         $at,4($a3)
    andi       $at,$at,0x7f
    sltiu      $at,$at,64
    beqz       $at, .L00000220
    nop
.L00000234:
    cache      0x14,0($sp)
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    jr         $ra
    sd         $v0,128($a3)

glabel MgrasTpSboxfi
    lbu        $at,-30712($gp)
    sll        $a7,$a1,0x10
    ld         $v1,-30656($gp)
    lui        $a6,0x7
    ld         $a5,-30664($gp)
    daddu      $a6,$a0,$a6
    beqz       $at, .L00000274
    sll        $a0,$a3,0x10
    addiu      $a4,$a4,256
    addiu      $a2,$a2,256
.L00000274:
    lw         $v0,4($a6)
    or         $a7,$a7,$a2
    andi       $v0,$v0,0x7f
    ld         $t0,-30672($gp)
    dsll32     $a7,$a7,0x0
    sltiu      $v0,$v0,61
    or         $a0,$a0,$a4
    dsrl32     $a7,$a7,0x0
    bnez       $v0, .L000002b0
    or         $a7,$a7,$t0
.L0000029c:
    lw         $at,4($a6)
    andi       $at,$at,0x7f
    sltiu      $at,$at,61
    beqz       $at, .L0000029c
    nop
.L000002b0:
    cache      0x14,0($sp)
    ld         $v0,-30648($gp)
    dsll32     $a0,$a0,0x0
    sd         $a7,128($a6)
    dsrl32     $a0,$a0,0x0
    or         $a0,$a0,$a5
    sd         $a0,128($a6)
    sd         $v1,128($a6)
    jr         $ra
    sd         $v0,128($a6)

glabel MgrasTpPnt2i
    lbu        $at,-30712($gp)
    ld         $v1,-30656($gp)
    ld         $a6,-30640($gp)
    lui        $a4,0x7
    ld         $a3,-30632($gp)
    beqz       $at, .L000002f8
    daddu      $a4,$a0,$a4
    addiu      $a2,$a2,256
.L000002f8:
    lw         $v0,4($a4)
    andi       $v0,$v0,0x7f
    sltiu      $v0,$v0,61
    sll        $a0,$a2,0x8
    bnez       $v0, .L00000324
    dsll32     $a0,$a0,0x0
.L00000310:
    lw         $at,4($a4)
    andi       $at,$at,0x7f
    sltiu      $at,$at,61
    beqz       $at, .L00000310
    nop
.L00000324:
    cache      0x14,0($sp)
    sll        $a5,$a1,0x8
    dsll32     $a5,$a5,0x0
    ld         $v0,-30624($gp)
    dsrl32     $a5,$a5,0x0
    dsrl32     $a0,$a0,0x0
    or         $a5,$a5,$a6
    sd         $a5,128($a4)
    or         $a0,$a0,$a3
    sd         $a0,128($a4)
    sd         $v1,128($a4)
    jr         $ra
    sd         $v0,128($a4)

glabel MgrasTpDrawbitmap
    ld         $a4,0($a1)
    lh         $a7,10($a1)
    lui        $a3,0x7
    lh         $t1,12($a1)
    daddu      $a3,$a0,$a3
    lw         $at,4($a3)
    lh         $t3,14($a1)
    lw         $a6,-30716($gp)
    andi       $at,$at,0x7f
    lw         $a5,-30720($gp)
    sltiu      $at,$at,61
    daddiu     $sp,$sp,-48
    lh         $t0,20($a1)
    subu       $t3,$a6,$t3
    lh         $t8,8($a1)
    bnez       $at, .L000003b0
    subu       $t1,$a5,$t1
.L0000039c:
    lw         $at,4($a3)
    andi       $at,$at,0x7f
    sltiu      $at,$at,61
    beqz       $at, .L0000039c
    nop
.L000003b0:
    cache      0x14,0($sp)
    sd         $a1,0($sp)
    sd         $a5,8($sp)
    li         $t2,-1
    sd         $a6,16($sp)
    addu       $v1,$t3,$a7
    sll        $a2,$t1,0x10
    ld         $v0,-30648($gp)
    or         $a2,$a2,$t3
    addu       $a0,$t1,$t8
    ld         $t9,-30672($gp)
    dsll32     $a2,$a2,0x0
    addiu      $a0,$a0,-1
    ld         $at,-30616($gp)
    addiu      $v1,$v1,-1
    sll        $a0,$a0,0x10
    sd         $at,128($a3)
    dsrl32     $a2,$a2,0x0
    or         $v1,$v1,$a0
    addiu      $a7,$a7,-1
    ld         $a0,-30664($gp)
    dsll32     $v1,$v1,0x0
    or         $a2,$a2,$t9
    sd         $a2,128($a3)
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a0
    sd         $v1,128($a3)
    beq        $a7, $t2, .L00000568
    sd         $v0,128($a3)
    ld         $a1,-30592($gp)
    li         $t9,1
    li         $t8,2
    li         $t3,3
    ld         $a6,-30600($gp)
    slti       $t1,$t0,4
    ld         $a5,-30608($gp)
    b          .L00000494
    xori       $t1,$t1,0x1
.L00000448:
    lw         $at,4($a3)
    andi       $at,$at,0x7f
    sltiu      $at,$at,63
    bnez       $at, .L00000470
    nop
.L0000045c:
    lw         $v0,4($a3)
    andi       $v0,$v0,0x7f
    sltiu      $v0,$v0,63
    beqz       $v0, .L0000045c
    nop
.L00000470:
    beq        $a2, $t3, .L00000524
    nop
    beq        $a2, $t8, .L00000594
    nop
    beq        $a2, $t9, .L000005c0
    nop
.L00000488:
    addiu      $a7,$a7,-1
    beq        $a7, $t2, .L00000568
    nop
.L00000494:
    beqz       $t1, .L00000448
    move       $a2,$t0
    b          .L000004f4
    nop
.L000004a4:
    cache      0x14,0($sp)
    lhu        $v0,0($a4)
    lhu        $at,2($a4)
    sll        $v0,$v0,0x10
    or         $at,$at,$v0
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    or         $at,$at,$a5
    sd         $at,128($a3)
    lhu        $a0,4($a4)
    lhu        $v1,6($a4)
    sll        $a0,$a0,0x10
    or         $v1,$v1,$a0
    slti       $a0,$a2,4
    dsll32     $v1,$v1,0x0
    daddiu     $a4,$a4,8
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a6
    bnez       $a0, .L00000448
    sd         $v1,128($a3)
.L000004f4:
    lw         $v1,4($a3)
    andi       $v1,$v1,0x7f
    sltiu      $v1,$v1,63
    bnez       $v1, .L000004a4
    addiu      $a2,$a2,-4
.L00000508:
    lw         $a0,4($a3)
    andi       $a0,$a0,0x7f
    sltiu      $a0,$a0,63
    beqz       $a0, .L00000508
    nop
    b          .L000004a4
    nop
.L00000524:
    cache      0x14,0($sp)
    lhu        $v1,0($a4)
    lhu        $v0,2($a4)
    sll        $v1,$v1,0x10
    or         $v0,$v0,$v1
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$a5
    sd         $v0,128($a3)
    lhu        $at,4($a4)
    sll        $at,$at,0x10
    dsll32     $at,$at,0x0
    daddiu     $a4,$a4,6
    dsrl32     $at,$at,0x0
    or         $at,$at,$a6
    b          .L00000488
    sd         $at,128($a3)
.L00000568:
    ld         $v0,16($sp)
    ld         $a0,0($sp)
    ld         $a1,8($sp)
    lh         $at,18($a0)
    lh         $a0,16($a0)
    daddiu     $sp,$sp,48
    addu       $at,$at,$v0
    sw         $at,-30716($gp)
    addu       $a0,$a0,$a1
    jr         $ra
    sw         $a0,-30720($gp)
.L00000594:
    cache      0x14,0($sp)
    lhu        $v0,0($a4)
    lhu        $at,2($a4)
    sll        $v0,$v0,0x10
    or         $at,$at,$v0
    dsll32     $at,$at,0x0
    daddiu     $a4,$a4,4
    dsrl32     $at,$at,0x0
    or         $at,$at,$a1
    b          .L00000488
    sd         $at,128($a3)
.L000005c0:
    cache      0x14,0($sp)
    lhu        $v1,0($a4)
    sll        $v1,$v1,0x10
    dsll32     $v1,$v1,0x0
    daddiu     $a4,$a4,2
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a1
    b          .L00000488
    sd         $v1,128($a3)

glabel MgrasTpCmov2i
    lbu        $at,-30712($gp)
    beqz       $at, .L000005f4
    nop
    addiu      $a2,$a2,256
.L000005f4:
    sw         $a2,-30716($gp)
    jr         $ra
    sw         $a1,-30720($gp)

glabel MgrasTpBlankscreen
    lui        $a3,0x7
    daddu      $a3,$a0,$a3
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    bnez       $at, .L00000630
    li         $v0,12
.L0000061c:
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    beqz       $at, .L0000061c
    nop
.L00000630:
    cache      0x14,0($sp)
    lui        $a3,0x6
    daddu      $a3,$a0,$a3
    li         $at,187
    beqz       $a1, .L00000658
    sb         $v0,7304($a3)
    cache      0x14,0($sp)
    sw         $at,7936($a3)
.L00000650:
    jr         $ra
    nop
.L00000658:
    cache      0x14,0($sp)
    li         $v0,443
    b          .L00000650
    sw         $v0,7936($a3)

glabel MgrasTpUnblank
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        MgrasTpBlankscreen
    move       $a1,$zero
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasTpGetdesc
    li         $at,1
    beq        $a1, $at, .L00000698
    move       $v0,$zero
.L00000690:
    jr         $ra
    nop
.L00000698:
    b          .L00000690
    li         $v0,1
