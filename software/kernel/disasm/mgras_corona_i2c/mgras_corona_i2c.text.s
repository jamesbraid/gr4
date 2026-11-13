.section .text
.set noat
.set noreorder


glabel mgras_fpi2cRead
    daddiu     $sp,$sp,-64
    sd         $s0,0($sp)
    sd         $s8,16($sp)
    sd         $ra,8($sp)
    move       $s8,$a1
    move       $s0,$a0
    sd         $a2,24($sp)
    jal        us_delay
    li         $a0,1
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L00000054
    ld         $ra,8($sp)
.L00000040:
    lw         $a3,256($a0)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,6
    beqz       $a3, .L00000040
    nop
.L00000054:
    li         $a3,1
    lui        $a0,0x6
    ld         $v0,24($sp)
    beq        $s8, $a3, .L00000088
    daddu      $a0,$s0,$a0
    cache      0x14,0($sp)
    ld         $s8,24($sp)
    lbu        $s0,11272($a0)
    sw         $s0,0($s8)
    ld         $s8,16($sp)
    ld         $s0,0($sp)
.L00000080:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000088:
    cache      0x14,0($sp)
    ld         $s8,16($sp)
    ld         $s0,0($sp)
    lbu        $at,11400($a0)
    b          .L00000080
    sw         $at,0($v0)

glabel mgras_fpi2cWrite
    daddiu     $sp,$sp,-64
    sd         $s0,0($sp)
    sd         $s8,16($sp)
    sd         $ra,8($sp)
    move       $s8,$a1
    move       $s0,$a0
    sd         $a2,24($sp)
    jal        us_delay
    li         $a0,1
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L000000f4
    ld         $ra,8($sp)
.L000000e0:
    lw         $a3,256($a0)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,6
    beqz       $a3, .L000000e0
    nop
.L000000f4:
    li         $a3,1
    lui        $a0,0x6
    beq        $s8, $a3, .L00000120
    daddu      $a0,$s0,$a0
    cache      0x14,0($sp)
    ld         $s8,16($sp)
    ld         $s0,24($sp)
    sb         $s0,11272($a0)
    ld         $s0,0($sp)
.L00000118:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000120:
    cache      0x14,0($sp)
    ld         $s0,0($sp)
    ld         $s8,24($sp)
    sb         $s8,11400($a0)
    b          .L00000118
    ld         $s8,16($sp)

glabel mgras_fpi2cProbe
    cache      0x14,0($sp)
    lui        $v0,0x7
    daddiu     $sp,$sp,-48
    daddu      $v0,$a0,$v0
    sd         $v0,24($sp)
    sd         $s3,16($sp)
    sd         $ra,8($sp)
    lui        $s3,0x6
    li         $at,8488
    sw         $at,-32724($v0)
    daddu      $s3,$a0,$s3
    li         $a0,1
    jal        us_delay
    sb         $zero,11272($s3)
    cache      0x14,0($sp)
    li         $a0,1
    li         $v1,64
    jal        us_delay
    sb         $v1,11400($s3)
    cache      0x14,0($sp)
    li         $a0,1
    li         $a1,85
    jal        us_delay
    sb         $a1,11272($s3)
    cache      0x14,0($sp)
    li         $a0,1
    li         $a2,64
    jal        us_delay
    sb         $a2,11400($s3)
    li         $a0,1
    jal        us_delay
    sw         $zero,0($sp)
    lbu        $v1,11272($s3)
    li         $at,85
    move       $v0,$zero
    beq        $at, $v1, .L000001d8
    ld         $ra,8($sp)
    ld         $s3,16($sp)
.L000001d0:
    jr         $ra
    daddiu     $sp,$sp,48
.L000001d8:
    jal        us_delay
    li         $a0,1
    cache      0x14,0($sp)
    li         $a0,1
    li         $a1,170
    jal        us_delay
    sb         $a1,11272($s3)
    cache      0x14,0($sp)
    li         $a0,1
    li         $a2,64
    jal        us_delay
    sb         $a2,11400($s3)
    li         $a0,1
    jal        us_delay
    sw         $zero,0($sp)
    lbu        $v1,11272($s3)
    li         $at,170
    ld         $s3,16($sp)
    move       $v0,$zero
    beq        $at, $v1, .L00000234
    ld         $ra,8($sp)
    b          .L000001d0
    nop
.L00000234:
    cache      0x14,0($sp)
    ld         $a1,24($sp)
    li         $v0,1
    ld         $s3,16($sp)
    li         $a0,8490
    b          .L000001d0
    sw         $a0,-32724($a1)

glabel mgras_fpi2cSetup
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    li         $a1,1
    move       $a2,$zero
    sd         $ra,8($sp)
    jal        mgras_fpi2cWrite
    move       $s0,$a0
    move       $a0,$s0
    move       $a1,$zero
    jal        mgras_fpi2cWrite
    li         $a2,127
    move       $a0,$s0
    li         $a2,32
    jal        mgras_fpi2cWrite
    li         $a1,1
    move       $a0,$s0
    move       $a1,$zero
    jal        mgras_fpi2cWrite
    li         $a2,28
    move       $a0,$s0
    li         $a2,64
    jal        mgras_fpi2cWrite
    li         $a1,1
    ld         $ra,8($sp)
    li         $v0,1
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mgras_fpi2cStart
    daddiu     $sp,$sp,-64
    sd         $a1,8($sp)
    sd         $s0,24($sp)
    li         $a2,64
    sd         $ra,16($sp)
    move       $s0,$a0
    jal        mgras_fpi2cWrite
    li         $a1,1
    move       $a0,$s0
    daddiu     $a2,$sp,0
    jal        mgras_fpi2cRead
    li         $a1,1
    lw         $at,0($sp)
    li         $v1,129
    beq        $at, $v1, .L0000031c
    nop
    jal        mgras_fpi2cStop
    move       $a0,$s0
    move       $v0,$zero
.L0000030c:
    ld         $ra,16($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000031c:
    move       $a0,$s0
    move       $a1,$zero
    jal        mgras_fpi2cWrite
    ld         $a2,8($sp)
    move       $a0,$s0
    li         $a2,68
    sd         $s3,32($sp)
    jal        mgras_fpi2cWrite
    li         $a1,1
    li         $s3,100
.L00000344:
    move       $a0,$s0
    daddiu     $a2,$sp,0
    jal        mgras_fpi2cRead
    li         $a1,1
    lw         $v0,0($sp)
    andi       $a3,$v0,0x80
    beqz       $a3, .L00000384
    nop
    addiu      $s3,$s3,-1
    bnez       $s3, .L00000344
    nop
.L00000370:
    jal        mgras_fpi2cStop
    move       $a0,$s0
    move       $v0,$zero
    b          .L0000030c
    ld         $s3,32($sp)
.L00000384:
    beqz       $s3, .L00000370
    ld         $at,8($sp)
    andi       $a4,$v0,0x8
    beqz       $a4, .L000003a8
    ld         $s3,32($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    b          .L0000030c
    move       $v0,$zero
.L000003a8:
    andi       $at,$at,0x1
    beqz       $at, .L000003c4
    nop
    move       $a0,$s0
    move       $a1,$zero
    jal        mgras_fpi2cRead
    daddiu     $a2,$sp,0
.L000003c4:
    b          .L0000030c
    li         $v0,1

glabel mgras_fpi2cReceive
    daddiu     $sp,$sp,-64
    sd         $ra,32($sp)
    sd         $s1,16($sp)
    sd         $s0,24($sp)
    sd         $a1,8($sp)
    move       $s0,$a0
    li         $s1,100
.L000003e8:
    move       $a0,$s0
    daddiu     $a2,$sp,0
    jal        mgras_fpi2cRead
    li         $a1,1
    lw         $v0,0($sp)
    andi       $at,$v0,0x80
    beqz       $at, .L00000434
    nop
    addiu      $s1,$s1,-1
    bnez       $s1, .L000003e8
    nop
.L00000414:
    jal        mgras_fpi2cStop
    move       $a0,$s0
    move       $v0,$zero
    ld         $ra,32($sp)
.L00000424:
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000434:
    beqz       $s1, .L00000414
    nop
    andi       $v1,$v0,0x37
    beqz       $v1, .L0000045c
    nop
    jal        mgras_fpi2cStop
    move       $a0,$s0
    move       $v0,$zero
    b          .L00000424
    ld         $ra,32($sp)
.L0000045c:
    move       $a0,$s0
    move       $a1,$zero
    jal        mgras_fpi2cRead
    ld         $a2,8($sp)
    li         $v0,1
    b          .L00000424
    ld         $ra,32($sp)

glabel mgras_fpi2cSend
    daddiu     $sp,$sp,-48
    sd         $s1,16($sp)
    move       $a2,$a1
    move       $a1,$zero
    sd         $ra,8($sp)
    sd         $s5,24($sp)
    jal        mgras_fpi2cWrite
    move       $s1,$a0
    li         $s5,100
.L0000049c:
    move       $a0,$s1
    daddiu     $a2,$sp,0
    jal        mgras_fpi2cRead
    li         $a1,1
    lw         $v0,0($sp)
    andi       $at,$v0,0x80
    beqz       $at, .L000004e8
    nop
    addiu      $s5,$s5,-1
    bnez       $s5, .L0000049c
    nop
.L000004c8:
    jal        mgras_fpi2cStop
    move       $a0,$s1
    move       $v0,$zero
    ld         $s5,24($sp)
.L000004d8:
    ld         $ra,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000004e8:
    beqz       $s5, .L000004c8
    andi       $a1,$v0,0x8
    andi       $v1,$v0,0x37
    li         $v0,1
    beqz       $v1, .L00000510
    ld         $s5,24($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s1
    b          .L000004d8
    move       $v0,$zero
.L00000510:
    beqz       $a1, .L00000528
    nop
    jal        mgras_fpi2cStop
    move       $a0,$s1
    b          .L000004d8
    move       $v0,$zero
.L00000528:
    b          .L000004d8
    nop

glabel mgras_fpi2cStop
    daddiu     $sp,$sp,-64
    sd         $s1,24($sp)
    sd         $s5,8($sp)
    li         $a2,194
    li         $a1,1
    sd         $ra,16($sp)
    sd         $s7,32($sp)
    jal        mgras_fpi2cWrite
    move       $s5,$a0
    li         $s7,129
    li         $s1,10
.L0000055c:
    move       $a0,$s5
    daddiu     $a2,$sp,0
    jal        mgras_fpi2cRead
    li         $a1,1
    lw         $at,0($sp)
    beq        $at, $s7, .L000005a0
    nop
    addiu      $s1,$s1,-1
    bnez       $s1, .L0000055c
    nop
.L00000584:
    ld         $s1,24($sp)
    move       $v0,$zero
    ld         $s7,32($sp)
.L00000590:
    ld         $ra,16($sp)
    ld         $s5,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000005a0:
    beqz       $s1, .L00000584
    ld         $s7,32($sp)
    li         $v0,1
    b          .L00000590
    ld         $s1,24($sp)

glabel mgras_fpi2cPortRead
    daddiu     $sp,$sp,-64
    sd         $s0,16($sp)
    ori        $a1,$a1,0x1
    sd         $ra,0($sp)
    sd         $a2,8($sp)
    jal        mgras_fpi2cStart
    move       $s0,$a0
    beqz       $v0, .L00000608
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cReceive
    ld         $a1,8($sp)
    beqz       $v0, .L00000608
    ld         $ra,0($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    ld         $ra,0($sp)
    beqz       $v0, .L00000608
    ld         $s0,16($sp)
    b          .L00000610
    li         $v0,1
.L00000608:
    move       $v0,$zero
    ld         $s0,16($sp)
.L00000610:
    jr         $ra
    daddiu     $sp,$sp,64

glabel mgras_fpi2cPortWrite
    daddiu     $sp,$sp,-64
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    sd         $a2,8($sp)
    jal        mgras_fpi2cStart
    move       $s0,$a0
    beqz       $v0, .L00000668
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    ld         $a1,8($sp)
    beqz       $v0, .L00000668
    ld         $ra,0($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    ld         $ra,0($sp)
    beqz       $v0, .L00000668
    ld         $s0,16($sp)
    b          .L00000670
    li         $v0,1
.L00000668:
    move       $v0,$zero
    ld         $s0,16($sp)
.L00000670:
    jr         $ra
    daddiu     $sp,$sp,64

glabel mgras_fpi2cPanelID
    daddiu     $sp,$sp,-32
    sd         $a1,8($sp)
    move       $a2,$a1
    sd         $ra,0($sp)
    jal        mgras_fpi2cPortRead
    li         $a1,112
    beqz       $v0, .L000006bc
    ld         $ra,0($sp)
    cache      0x14,0($sp)
    ld         $v1,8($sp)
    lw         $at,0($v1)
    sra        $at,$at,0x5
    li         $v0,1
    andi       $at,$at,0x7
    sw         $at,0($v1)
.L000006b4:
    jr         $ra
    daddiu     $sp,$sp,32
.L000006bc:
    b          .L000006b4
    move       $v0,$zero

glabel mgras_fpi2cPanelOn
    sw         $zero,-30712($gp)
    li         $v0,1
    sw         $v0,-30716($gp)
    sw         $zero,-30720($gp)
    ld         $at,-30720($gp)
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    li         $a2,231
    li         $a1,112
    sd         $ra,0($sp)
    sd         $at,0($gp)
    jal        mgras_fpi2cPortWrite
    move       $s0,$a0
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cAudioVolLeft
    lw         $a1,-30720($gp)
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cAudioVolRight
    lw         $a1,-30716($gp)
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cAudioBass
    lw         $a1,-30712($gp)
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cAudioTreble
    lw         $a1,-30708($gp)
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cAudioSwitch
    li         $a1,206
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cBlUp
    li         $a1,100
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cBlDown
    li         $a1,10
    beqz       $v0, .L000007ac
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSetBit
    move       $a1,$zero
    ld         $ra,0($sp)
    beqz       $v0, .L000007ac
    ld         $s0,8($sp)
    b          .L000007b4
    li         $v0,1
.L000007ac:
    move       $v0,$zero
    ld         $s0,8($sp)
.L000007b4:
    jr         $ra
    daddiu     $sp,$sp,32

glabel mgras_panels_off
    daddiu     $sp,$sp,-48
    sd         $ra,8($sp)
    sd         $s1,24($sp)
    sd         $s0,32($sp)
    sd         $s7,0($sp)
    sd         $s5,16($sp)
    li         $s7,255
    move       $s0,$zero
    ld         $s1,-30712($gp)
    b          .L0000080c
    li         $s5,1
.L000007e8:
    jal        mgras_fpi2cPanelOff
    ld         $a0,0($a3)
    mult       $v0,$s5
    mflo       $s5
.L00000800:
    slti       $at,$s0,2
    beqz       $at, .L00000850
    nop
.L0000080c:
    dsll       $a3,$s0,0x2
    dsubu      $a3,$a3,$s0
    dsll       $a3,$a3,0x4
    daddu      $a3,$a3,$s1
    lw         $v0,24($a3)
    addiu      $s0,$s0,1
    beqz       $v0, .L00000800
    ld         $v0,16($a3)
    beqz       $v0, .L00000800
    nop
    lbu        $a2,73($v0)
    beqz       $a2, .L00000800
    nop
    beq        $s7, $a2, .L00000800
    nop
    b          .L000007e8
    nop
.L00000850:
    ld         $s0,32($sp)
    ld         $ra,8($sp)
    ld         $s1,24($sp)
    move       $v0,$s5
    ld         $s5,16($sp)
    ld         $s7,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgras_fpi2cPanelOff
    daddiu     $sp,$sp,-32
    li         $a2,255
    sd         $ra,0($sp)
    jal        mgras_fpi2cPortWrite
    li         $a1,112
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mgras_fpi2cBlUp
    daddiu     $sp,$sp,-80
    sd         $s1,48($sp)
    sd         $s3,32($sp)
    sd         $s0,8($sp)
    sd         $s2,16($sp)
    sd         $s5,0($sp)
    lw         $at,-30712($gp)
    li         $s5,-1
    addiu      $s2,$a1,-1
    li         $v0,8
    sd         $s4,40($sp)
    move       $s0,$a0
    sd         $ra,24($sp)
    sltu       $at,$zero,$at
    beq        $s2, $s5, .L00000970
    movz       $v0,$zero,$at
    ori        $s4,$v0,0xe7
    ori        $s3,$v0,0xe4
    sd         $ra,24($sp)
    b          .L000008ec
    ori        $s1,$v0,0xe6
.L000008e4:
    beq        $s2, $s5, .L00000970
    nop
.L000008ec:
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s1
    beqz       $v0, .L00000968
    nop
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s3
    beqz       $v0, .L00000968
    nop
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s1
    beqz       $v0, .L00000968
    nop
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s4
    beqz       $v0, .L00000968
    nop
    lw         $v0,-30720($gp)
    slti       $v1,$v0,100
    addiu      $s2,$s2,-1
    beqz       $v1, .L000008e4
    addiu      $a1,$v0,1
    b          .L000008e4
    sw         $a1,-30720($gp)
.L00000968:
    b          .L00000974
    move       $v0,$zero
.L00000970:
    li         $v0,1
.L00000974:
    ld         $s0,8($sp)
    ld         $s1,48($sp)
    ld         $s2,16($sp)
    ld         $ra,24($sp)
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $s5,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel mgras_fpi2cBlDown
    daddiu     $sp,$sp,-80
    sd         $s1,48($sp)
    sd         $s3,32($sp)
    sd         $s0,8($sp)
    sd         $s2,16($sp)
    sd         $s5,0($sp)
    lw         $at,-30712($gp)
    li         $s5,-1
    addiu      $s2,$a1,-1
    li         $v0,8
    sd         $s4,40($sp)
    move       $s0,$a0
    sd         $ra,24($sp)
    sltu       $at,$zero,$at
    beq        $s2, $s5, .L00000a7c
    movz       $v0,$zero,$at
    ori        $s4,$v0,0xe7
    ori        $s3,$v0,0xe0
    sd         $ra,24($sp)
    b          .L000009fc
    ori        $s1,$v0,0xe2
.L000009ec:
    addiu      $v1,$v0,-1
    sw         $v1,-30720($gp)
.L000009f4:
    beq        $s2, $s5, .L00000a7c
    nop
.L000009fc:
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s1
    beqz       $v0, .L00000a74
    nop
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s3
    beqz       $v0, .L00000a74
    nop
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s1
    beqz       $v0, .L00000a74
    nop
    move       $a0,$s0
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    move       $a2,$s4
    beqz       $v0, .L00000a74
    nop
    lw         $v0,-30720($gp)
    addiu      $s2,$s2,-1
    blez       $v0, .L000009f4
    nop
    b          .L000009ec
    nop
.L00000a74:
    b          .L00000a80
    move       $v0,$zero
.L00000a7c:
    li         $v0,1
.L00000a80:
    ld         $s0,8($sp)
    ld         $s1,48($sp)
    ld         $s2,16($sp)
    ld         $ra,24($sp)
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $s5,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel mgras_fpi2cAudioVolLeft
    daddiu     $sp,$sp,-48
    sd         $a1,8($sp)
    sd         $s0,16($sp)
    move       $at,$a1
    sd         $ra,0($sp)
    move       $s0,$a0
    sw         $at,-30720($gp)
    jal        mgras_fpi2cStart
    li         $a1,130
    beqz       $v0, .L00000b14
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    move       $a1,$zero
    beqz       $v0, .L00000b14
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    ld         $a1,8($sp)
    beqz       $v0, .L00000b14
    ld         $ra,0($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    ld         $ra,0($sp)
    beqz       $v0, .L00000b14
    ld         $s0,16($sp)
    b          .L00000b1c
    li         $v0,1
.L00000b14:
    move       $v0,$zero
    ld         $s0,16($sp)
.L00000b1c:
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgras_fpi2cAudioVolRight
    daddiu     $sp,$sp,-48
    sd         $a1,8($sp)
    sd         $s0,16($sp)
    move       $at,$a1
    sd         $ra,0($sp)
    move       $s0,$a0
    sw         $at,-30716($gp)
    jal        mgras_fpi2cStart
    li         $a1,130
    beqz       $v0, .L00000b94
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    li         $a1,1
    beqz       $v0, .L00000b94
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    ld         $a1,8($sp)
    beqz       $v0, .L00000b94
    ld         $ra,0($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    ld         $ra,0($sp)
    beqz       $v0, .L00000b94
    ld         $s0,16($sp)
    b          .L00000b9c
    li         $v0,1
.L00000b94:
    move       $v0,$zero
    ld         $s0,16($sp)
.L00000b9c:
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgras_fpi2cAudioBass
    daddiu     $sp,$sp,-48
    sd         $a1,8($sp)
    sd         $s0,16($sp)
    move       $at,$a1
    sd         $ra,0($sp)
    move       $s0,$a0
    sw         $at,-30712($gp)
    jal        mgras_fpi2cStart
    li         $a1,130
    beqz       $v0, .L00000c14
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    li         $a1,2
    beqz       $v0, .L00000c14
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    ld         $a1,8($sp)
    beqz       $v0, .L00000c14
    ld         $ra,0($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    ld         $ra,0($sp)
    beqz       $v0, .L00000c14
    ld         $s0,16($sp)
    b          .L00000c1c
    li         $v0,1
.L00000c14:
    move       $v0,$zero
    ld         $s0,16($sp)
.L00000c1c:
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgras_fpi2cAudioTreble
    daddiu     $sp,$sp,-48
    sd         $a1,8($sp)
    sd         $s0,16($sp)
    move       $at,$a1
    sd         $ra,0($sp)
    move       $s0,$a0
    sw         $at,-30708($gp)
    jal        mgras_fpi2cStart
    li         $a1,130
    beqz       $v0, .L00000c94
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    li         $a1,3
    beqz       $v0, .L00000c94
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    ld         $a1,8($sp)
    beqz       $v0, .L00000c94
    ld         $ra,0($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    ld         $ra,0($sp)
    beqz       $v0, .L00000c94
    ld         $s0,16($sp)
    b          .L00000c9c
    li         $v0,1
.L00000c94:
    move       $v0,$zero
    ld         $s0,16($sp)
.L00000c9c:
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgras_fpi2cAudioSwitch
    daddiu     $sp,$sp,-48
    move       $at,$a1
    sd         $a1,8($sp)
    andi       $at,$at,0x20
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    move       $s0,$a0
    li         $a1,130
    sltu       $at,$zero,$at
    jal        mgras_fpi2cStart
    sw         $at,-30716($gp)
    beqz       $v0, .L00000d1c
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    li         $a1,8
    beqz       $v0, .L00000d1c
    ld         $ra,0($sp)
    move       $a0,$s0
    jal        mgras_fpi2cSend
    ld         $a1,8($sp)
    beqz       $v0, .L00000d1c
    ld         $ra,0($sp)
    jal        mgras_fpi2cStop
    move       $a0,$s0
    ld         $ra,0($sp)
    beqz       $v0, .L00000d1c
    ld         $s0,16($sp)
    b          .L00000d24
    li         $v0,1
.L00000d1c:
    move       $v0,$zero
    ld         $s0,16($sp)
.L00000d24:
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgras_fpi2cSetBit
    daddiu     $sp,$sp,-32
    beqz       $a1, .L00000d58
    sd         $ra,0($sp)
    li         $a2,239
    li         $a1,112
    li         $at,1
    jal        mgras_fpi2cPortWrite
    sw         $at,-30712($gp)
    ld         $ra,0($sp)
.L00000d50:
    jr         $ra
    daddiu     $sp,$sp,32
.L00000d58:
    li         $a2,231
    li         $a1,112
    jal        mgras_fpi2cPortWrite
    sw         $zero,-30712($gp)
    b          .L00000d50
    ld         $ra,0($sp)

glabel mgras_fpi2c_command
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    lw         $a2,0($a1)
    ld         $v1,-30704($gp)
    move       $s0,$a1
    sltiu      $at,$a2,17
    la         $v1, jpt_00000028
    dsll       $v0,$a2,0x3
    ld         $a5,208($a0)
    beqz       $at, .L00000db0
    daddu      $v0,$v0,$v1
    ld         $a3,0($v0)
    lw         $v1,-30712($gp)
    lw         $at,-30716($gp)
    jr         $a3
    lw         $a4,-30708($gp)
.L00000db0:
    ld         $a1,-30704($gp)
    sd         $ra,8($sp)
    li         $a0,4
    jal        cmn_err
    ld         $s0,0($sp)
    li         $v0,22
    b          .L00000de0
    ld         $ra,8($sp)
.L00000dd0:
    cache      0x14,0($sp)
    sw         $a4,16($s0)
.L00000dd8:
    move       $v0,$zero
    ld         $s0,0($sp)
.L00000de0:
    jr         $ra
    daddiu     $sp,$sp,32
.L00000de8:
    sd         $ra,8($sp)
    jal        mgras_fpi2cPanelOn
    move       $a0,$a5
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000e04:
    sd         $ra,8($sp)
    jal        mgras_fpi2cPanelOff
    move       $a0,$a5
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000e20:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cBlUp
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000e44:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cBlDown
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000e68:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cAudioVolLeft
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000e8c:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cAudioVolRight
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000eb0:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cAudioBass
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000ed4:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cAudioTreble
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000ef8:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cAudioSwitch
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000f1c:
    cache      0x14,0($sp)
    lw         $a3,-30720($gp)
    b          .L00000dd8
    sw         $a3,16($s0)
.L00000f2c:
    cache      0x14,0($sp)
    lw         $a4,-30720($gp)
    b          .L00000dd8
    sw         $a4,16($s0)
.L00000f3c:
    cache      0x14,0($sp)
    b          .L00000dd8
    sw         $at,16($s0)
.L00000f48:
    cache      0x14,0($sp)
    b          .L00000dd8
    sw         $v1,16($s0)
.L00000f54:
    cache      0x14,0($sp)
    lw         $a3,-30716($gp)
    b          .L00000dd8
    sw         $a3,16($s0)
.L00000f64:
    ld         $a1,8($s0)
    sd         $ra,8($sp)
    move       $a0,$a5
    jal        mgras_fpi2cSetBit
    lw         $a1,0($a1)
    cache      0x14,0($sp)
    sw         $v0,16($s0)
    b          .L00000dd8
    ld         $ra,8($sp)
.L00000f88:
    cache      0x14,0($sp)
    lw         $a3,-30712($gp)
    b          .L00000dd8
    sw         $a3,16($s0)
