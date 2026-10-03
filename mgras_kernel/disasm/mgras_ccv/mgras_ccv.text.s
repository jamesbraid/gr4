.section .text
.set noat
.set noreorder


glabel writeCC
    cache      0x14,0($sp)
    li         $t0,66
    li         $a6,194
    xori       $a3,$a0,0x3f
    andi       $at,$a3,0x20
    andi       $v1,$a3,0x10
    andi       $a4,$a3,0x8
    xori       $a7,$a1,0x1
    andi       $a2,$a3,0x4
    sltiu      $a7,$a7,1
    andi       $a5,$a3,0x1
    movz       $a6,$t0,$a7
    andi       $a3,$a3,0x2
    sll        $a5,$a5,0x1e
    sll        $a3,$a3,0x15
    or         $a5,$a5,$a6
    sll        $a2,$a2,0xc
    or         $a3,$a3,$a5
    sll        $a1,$a4,0x1c
    or         $a2,$a2,$a3
    lwu        $a0,-30712($gp)
    sll        $v1,$v1,0x13
    or         $a1,$a1,$a2
    ld         $v0,-30720($gp)
    sll        $at,$at,0xa
    or         $v1,$v1,$a1
    lui        $a2,0x7
    ld         $a1,-30720($gp)
    or         $at,$at,$v1
    daddu      $v0,$v0,$a2
    ld         $v1,-30712($gp)
    dsll32     $at,$at,0x0
    or         $a0,$a0,$a1
    sd         $a0,128($v0)
    dsrl32     $at,$at,0x0
    or         $at,$at,$v1
    jr         $ra
    sd         $at,128($v0)

glabel readCC
    cache      0x14,0($sp)
    ld         $a3,-30720($gp)
    ld         $a4,-30720($gp)
    lui        $a2,0x7
    lwu        $a1,-30712($gp)
    lui        $v1,0x7
    ori        $a2,$a2,0x80
    ori        $v1,$v1,0xc574
    daddu      $a2,$a2,$a4
    or         $a1,$a1,$a3
    daddu      $v1,$v1,$a4
    sd         $a1,0($a2)
    lui        $at,0x8000
    lw         $v1,0($v1)
    lui        $a3,0x80
    lui        $a2,0x4000
    lui        $a1,0x40
    and        $a2,$v1,$a2
    srl        $a2,$a2,0x1e
    andi       $v0,$v1,0x4000
    and        $at,$v1,$at
    srl        $v0,$v0,0xc
    and        $a1,$v1,$a1
    srl        $at,$at,0x1c
    srl        $a1,$a1,0x15
    or         $at,$at,$v0
    andi       $v0,$v1,0x8000
    and        $v1,$v1,$a3
    srl        $v1,$v1,0x13
    or         $a1,$a1,$a2
    srl        $v0,$v0,0xa
    or         $at,$at,$a1
    or         $v0,$v0,$v1
    or         $at,$at,$v0
    jr         $ra
    sw         $at,0($a0)

glabel writeData
    cache      0x14,0($sp)
    ld         $a2,-30720($gp)
    ld         $v0,-30720($gp)
    lwu        $a1,-30708($gp)
    lui        $a3,0x7
    ld         $v1,-30712($gp)
    dsll32     $at,$a0,0x0
    daddu      $v0,$v0,$a3
    dsrl32     $at,$at,0x0
    or         $a0,$a1,$a2
    sd         $a0,128($v0)
    or         $at,$at,$v1
    jr         $ra
    sd         $at,128($v0)

glabel readData
    cache      0x14,0($sp)
    ld         $a1,-30720($gp)
    ld         $a2,-30720($gp)
    lui        $v1,0x7
    lwu        $v0,-30708($gp)
    lui        $at,0x7
    ori        $v1,$v1,0x80
    ori        $at,$at,0xc574
    daddu      $v1,$v1,$a2
    or         $v0,$v0,$a1
    daddu      $at,$at,$a2
    sd         $v0,0($v1)
    lw         $at,0($at)
    jr         $ra
    sw         $at,0($a0)

glabel countOnes
    beqz       $a0, .L000001c8
    move       $v0,$zero
    b          .L000001b4
    nop
.L000001ac:
    beqz       $a0, .L000001c8
    nop
.L000001b4:
    andi       $at,$a0,0x1
    beqz       $at, .L000001ac
    srl        $a0,$a0,0x1
    b          .L000001ac
    addiu      $v0,$v0,1
.L000001c8:
    jr         $ra
    nop

glabel PhaseOne
    daddiu     $sp,$sp,-64
    sd         $s0,40($sp)
    sd         $s7,48($sp)
    sd         $s1,16($sp)
    sd         $s5,24($sp)
    sd         $s4,8($sp)
    move       $s5,$zero
    sd         $ra,32($sp)
    move       $s4,$zero
    move       $s1,$zero
.L000001f8:
    slti       $at,$s1,64
    beqz       $at, .L00000288
    nop
    move       $a0,$s1
    jal        writeCC
    li         $a1,2
    move       $s0,$zero
    move       $s7,$zero
.L00000218:
    jal        writeData
    li         $a0,-1
    jal        readData
    daddiu     $a0,$sp,0
    addiu      $s7,$s7,1
    lw         $a0,0($sp)
    andi       $a0,$a0,0xff
    jal        countOnes
    sw         $a0,0($sp)
    slti       $a1,$s7,10
    bnez       $a1, .L00000218
    addu       $s0,$v0,$s0
    subu       $v1,$s0,$s5
    mult       $v1,$s1
    move       $s5,$s0
    slti       $at,$s0,80
    addiu      $s1,$s1,1
    mflo       $a2
    bnez       $at, .L000001f8
    addu       $s4,$a2,$s4
    sll        $v0,$s4,0x2
    subu       $v0,$v0,$s4
    sll        $v0,$v0,0x2
    subu       $v0,$v0,$s4
    sll        $v0,$v0,0x2
    subu       $v0,$v0,$s4
    b          .L0000028c
    addiu      $v0,$v0,-1720
.L00000288:
    li         $v0,-1
.L0000028c:
    ld         $s0,40($sp)
    ld         $s1,16($sp)
    ld         $ra,32($sp)
    ld         $s4,8($sp)
    ld         $s5,24($sp)
    ld         $s7,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel PhaseTwo
    daddiu     $sp,$sp,-64
    sd         $s0,16($sp)
    sd         $s5,32($sp)
    sd         $s1,24($sp)
    move       $s1,$a0
    move       $s5,$zero
    sd         $s4,8($sp)
    move       $s0,$zero
    lui        $s4,0xf
    sd         $ra,40($sp)
    blez       $a0, .L00000344
    ori        $s4,$s4,0x423f
    sd         $ra,40($sp)
.L000002e0:
    slti       $at,$s0,64
    beqz       $at, .L0000035c
    nop
    move       $a0,$s0
    jal        writeCC
    li         $a1,1
    jal        readCC
    daddiu     $a0,$sp,0
    lw         $a1,0($sp)
    sll        $a0,$a1,0x2
    subu       $a0,$a0,$a1
    sll        $a0,$a0,0x3
    addu       $a0,$a0,$a1
    sll        $a0,$a0,0x6
    subu       $a3,$a0,$s1
    slt        $a2,$a0,$s1
    bltz       $a3, .L0000037c
    move       $v0,$a3
.L00000328:
    slt        $a1,$v0,$s4
    beqz       $a1, .L0000033c
    nop
    move       $s4,$v0
    move       $s5,$s0
.L0000033c:
    bnez       $a2, .L000002e0
    addiu      $s0,$s0,1
.L00000344:
    addu       $v1,$s5,$s0
    addiu      $v1,$v1,-1
    srl        $v0,$v1,0x1f
    addu       $v0,$v0,$v1
    b          .L00000360
    sra        $v0,$v0,0x1
.L0000035c:
    li         $v0,-2
.L00000360:
    ld         $s0,16($sp)
    ld         $ra,40($sp)
    ld         $s1,24($sp)
    ld         $s4,8($sp)
    ld         $s5,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000037c:
    b          .L00000328
    subu       $v0,$s1,$a0

glabel median
    srl        $a7,$a1,0x1f
    move       $a5,$zero
    sra        $at,$a1,0x1f
    addu       $a7,$a7,$a1
    xor        $t0,$a1,$at
    sra        $a7,$a7,0x1
    subu       $t0,$t0,$at
    sra        $at,$a1,0x1f
    andi       $t0,$t0,0x1
    li         $a6,1
    xor        $t0,$t0,$at
    bltz       $a7, .L0000043c
    subu       $t0,$t0,$at
    b          .L000003f4
    nop
.L000003c0:
    cache      0x14,0($sp)
    dsll       $a4,$v0,0x2
    daddu      $a4,$a4,$a0
    dsll       $v1,$a5,0x2
    addiu      $a5,$a5,1
    lw         $at,0($a4)
    daddu      $v1,$v1,$a0
    slt        $a2,$a7,$a5
    lw         $a3,0($v1)
    sw         $a3,0($a4)
    addiu      $a6,$a6,1
    bnez       $a2, .L0000043c
    sw         $at,0($v1)
.L000003f4:
    slt        $at,$a6,$a1
    move       $v0,$a5
    beqz       $at, .L000003c0
    move       $a4,$a6
.L00000404:
    dsll       $a2,$a4,0x2
    daddu      $a2,$a2,$a0
    dsll       $a3,$v0,0x2
    lw         $a2,0($a2)
    daddu      $a3,$a3,$a0
    lw         $a3,0($a3)
    slt        $a2,$a2,$a3
    movn       $v0,$a4,$a2
    addiu      $a4,$a4,1
    slt        $v1,$a4,$a1
    bnez       $v1, .L00000404
    nop
    b          .L000003c0
    nop
.L0000043c:
    dsll       $a4,$a7,0x2
    daddu      $a4,$a4,$a0
    beqz       $t0, .L00000458
    lw         $a1,0($a4)
    move       $v0,$a1
.L00000450:
    jr         $ra
    nop
.L00000458:
    lw         $v1,-4($a4)
    addu       $v1,$v1,$a1
    srl        $v0,$v1,0x1f
    addu       $v0,$v0,$v1
    b          .L00000450
    sra        $v0,$v0,0x1

glabel CCInit
    daddiu     $sp,$sp,-80
    sd         $a1,32($sp)
    sd         $s0,24($sp)
    sd         $ra,8($sp)
    move       $s0,$a0
    sd         $s1,40($sp)
    jal        kern_calloc
    li         $a1,4
    move       $s1,$v0
    beqz       $v0, .L0000053c
    ld         $ra,8($sp)
    sd         $s2,48($sp)
    blez       $s0, .L000004d4
    move       $s2,$zero
.L000004a8:
    jal        PhaseOne
    nop
    jal        PhaseTwo
    move       $a0,$v0
    cache      0x14,0($sp)
    dsll       $at,$s2,0x2
    addiu      $s2,$s2,1
    slt        $v1,$s2,$s0
    daddu      $at,$at,$s1
    bnez       $v1, .L000004a8
    sw         $v0,0($at)
.L000004d4:
    move       $a0,$s1
    move       $a1,$s0
    jal        median
    ld         $s2,48($sp)
    sd         $v0,0($sp)
    move       $a0,$s1
    jal        kern_free
    ld         $s0,24($sp)
    ld         $a1,32($sp)
    ld         $a0,0($sp)
    mult       $a0,$a1
    li         $v0,100
    mflo       $v1
    div        $zero,$v1,$v0
    ld         $s1,40($sp)
    li         $a1,1
    teq        $v0,$zero,0x7
    mflo       $a0
    jal        writeCC
    sd         $a0,16($sp)
    ld         $v0,16($sp)
    ld         $ra,8($sp)
.L00000534:
    jr         $ra
    daddiu     $sp,$sp,80
.L0000053c:
    ld         $s1,40($sp)
    li         $v0,-1
    b          .L00000534
    ld         $s0,24($sp)

glabel MgrasInitCCR
    daddiu     $sp,$sp,-128
    sd         $s4,56($sp)
    sd         $s0,24($sp)
    sd         $s1,16($sp)
    sd         $ra,32($sp)
    move       $s1,$a0
    sd         $a1,8($sp)
    jal        splhi
    move       $s0,$a2
    lw         $at,-30720($gp)
    beqz       $at, .L00000750
    move       $s4,$v0
.L0000057c:
    jal        splx
    move       $a0,$s4
    sd         $s3,40($sp)
    sd         $s7,48($sp)
    ld         $a0,-30720($gp)
    li         $a1,25
    jal        mutex_lock
    ld         $s4,56($sp)
    cache      0x14,0($sp)
    ld         $v1,8($sp)
    lui        $s3,0x7
    ld         $a3,-30704($gp)
    daddu      $a4,$s3,$s1
    sd         $a3,128($a4)
    lbu        $v1,44($v1)
    sd         $s6,80($sp)
    sd         $s8,72($sp)
    move       $v0,$s1
    move       $s7,$zero
    blez       $v1, .L0000071c
    sd         $s1,-30720($gp)
    sd         $s2,88($sp)
    sd         $s5,64($sp)
    lui        $s6,0x1000
    b          .L000005fc
    ld         $s8,-30696($gp)
.L000005e4:
    ld         $at,8($sp)
    lbu        $at,44($at)
    addiu      $s7,$s7,1
    slt        $at,$s7,$at
    beqz       $at, .L00000704
    nop
.L000005fc:
    cache      0x14,0($sp)
    ld         $a3,-30720($gp)
    move       $s5,$zero
    dsll32     $v1,$s7,0x0
    dsrl32     $v1,$v1,0x0
    daddu      $a3,$s3,$a3
    or         $v1,$v1,$s8
    b          .L0000062c
    sd         $v1,128($a3)
.L00000620:
    slti       $a3,$s5,2
    beqz       $a3, .L000005e4
    nop
.L0000062c:
    move       $s1,$zero
    li         $s2,4
    sltiu      $a4,$s5,1
    addiu      $s5,$s5,1
    move       $s4,$s6
    b          .L000006a0
    movn       $s4,$zero,$a4
.L00000648:
    daddiu     $a0,$sp,0
    sll        $a6,$s2,0x18
    sll        $a5,$s1,0x18
    or         $a6,$a6,$s4
    or         $a5,$a5,$s4
    addiu      $a6,$a6,2
    sw         $a6,-30708($gp)
    ori        $a5,$a5,0xc
    jal        readData
    sw         $a5,-30712($gp)
    li         $a0,51
    jal        CCInit
    move       $a1,$s0
    bltz       $v0, .L000006f0
    nop
.L00000684:
    addiu      $s1,$s1,1
    jal        writeData
    lw         $a0,0($sp)
    addiu      $s2,$s2,1
    slti       $at,$s1,3
    beqz       $at, .L00000620
    nop
.L000006a0:
    ld         $v0,-30720($gp)
    daddu      $v0,$s3,$v0
    lw         $v1,256($v0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L000006c8
    nop
.L000006b8:
    lw         $v1,256($v0)
    andi       $v1,$v1,0x1f
    bnez       $v1, .L000006b8
    nop
.L000006c8:
    lw         $a3,4($v0)
    andi       $a3,$a3,0x7f
    beqz       $a3, .L00000648
    nop
.L000006d8:
    lw         $a4,4($v0)
    andi       $a4,$a4,0x7f
    bnez       $a4, .L000006d8
    nop
    b          .L00000648
    nop
.L000006f0:
    li         $a1,1
    jal        writeCC
    li         $a0,25
    b          .L00000684
    nop
.L00000704:
    ld         $v0,-30720($gp)
    ld         $s4,56($sp)
    ld         $s5,64($sp)
    ld         $s8,72($sp)
    ld         $s6,80($sp)
    ld         $s2,88($sp)
.L0000071c:
    cache      0x14,0($sp)
    ld         $a0,-30720($gp)
    ld         $s7,48($sp)
    daddu      $a6,$s3,$v0
    ld         $a5,-30688($gp)
    jal        mutex_unlock
    sd         $a5,128($a6)
    ld         $ra,32($sp)
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    ld         $s3,40($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00000750:
    ld         $a0,-30720($gp)
    li         $a3,-1
    move       $a1,$zero
    jal        init_mutex
    ld         $a2,-30712($gp)
    li         $at,1
    b          .L0000057c
    sw         $at,-30720($gp)
