.section .text
.set noat
.set noreorder


glabel mgras_mco_probe
    daddiu     $sp,$sp,-32
    sd         $s8,0($sp)
    move       $a1,$zero
    sd         $ra,8($sp)
    jal        mgras_mco_set_dcbctrl
    move       $s8,$a0
    cache      0x14,0($sp)
    lui        $at,0x6
    daddu      $at,$s8,$at
    li         $v1,255
    sb         $v1,11272($at)
    lbu        $a0,11272($at)
    sb         $zero,11272($at)
    lbu        $at,11272($at)
    andi       $a0,$a0,0xff
    andi       $at,$at,0xff
    xor        $at,$a0,$at
    ld         $ra,8($sp)
    li         $v0,255
    li         $a2,160
    ld         $s8,0($sp)
    bnez       $at, .L00000070
    andi       $a1,$a0,0xf0
    li         $v1,1
    beq        $a0, $v1, .L00000078
    nop
    beq        $a1, $a2, .L00000078
    nop
.L00000070:
    jr         $ra
    daddiu     $sp,$sp,32
.L00000078:
    b          .L00000070
    andi       $v0,$a0,0xf

glabel mgras_mco_shutdown
    lw         $at,1880($a0)
    ld         $v0,208($a0)
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    beqz       $at, .L000000c8
    sd         $v0,8($sp)
    sd         $ra,16($sp)
    jal        mgras_mco_shutdown_vc2
    ld         $a0,8($sp)
    move       $a3,$v0
    beqz       $v0, .L000000d0
    ld         $ra,16($sp)
.L000000b0:
    cache      0x14,0($sp)
    ld         $v1,0($sp)
    move       $v0,$a3
    sw         $zero,1880($v1)
.L000000c0:
    jr         $ra
    daddiu     $sp,$sp,48
.L000000c8:
    b          .L000000c0
    move       $v0,$zero
.L000000d0:
    jal        mgras_mco_shutdown_FPGAs
    ld         $a0,8($sp)
    move       $a3,$v0
    b          .L000000b0
    ld         $ra,16($sp)

glabel mgras_mco_download
    daddiu     $sp,$sp,-64
    sd         $a1,24($sp)
    sd         $a0,16($sp)
    ld         $a0,208($a0)
    sd         $ra,0($sp)
    jal        mgras_baseindex
    sd         $a0,32($sp)
    dsll       $at,$v0,0x2
    dsubu      $at,$at,$v0
    ld         $v0,-30720($gp)
    dsll       $at,$at,0x4
    daddu      $at,$at,$v0
    ld         $at,16($at)
    lbu        $at,64($at)
    li         $v0,255
    beq        $at, $v0, .L0000014c
    ld         $ra,0($sp)
    ld         $a0,32($sp)
    jal        mgras_mco_config_FPGAs
    ld         $a1,24($sp)
    move       $a4,$v0
    beqz       $v0, .L00000154
    ld         $ra,0($sp)
    move       $v0,$a4
.L00000144:
    jr         $ra
    daddiu     $sp,$sp,64
.L0000014c:
    b          .L00000144
    li         $v0,-22
.L00000154:
    ld         $a2,24($sp)
    li         $a1,1
    li         $a3,0xf68c
    ld         $a0,32($sp)
    jal        mgras_mco_config_7162
    daddu      $a2,$a2,$a3
    move       $a4,$v0
    beqz       $v0, .L00000180
    ld         $ra,0($sp)
    b          .L00000144
    move       $v0,$a4
.L00000180:
    ld         $a2,24($sp)
    li         $a1,2
    li         $a3,0xf6b4
    ld         $a0,32($sp)
    jal        mgras_mco_config_7162
    daddu      $a2,$a2,$a3
    move       $a4,$v0
    beqz       $v0, .L000001ac
    ld         $ra,0($sp)
    b          .L00000144
    move       $v0,$a4
.L000001ac:
    ld         $a2,24($sp)
    li         $a1,3
    li         $a3,0xf6dc
    ld         $a0,32($sp)
    jal        mgras_mco_config_473
    daddu      $a2,$a2,$a3
    move       $a4,$v0
    beqz       $v0, .L000001d8
    ld         $ra,0($sp)
    b          .L00000144
    move       $v0,$a4
.L000001d8:
    ld         $a2,24($sp)
    li         $a1,4
    li         $a3,0xf6e0
    ld         $a0,32($sp)
    jal        mgras_mco_config_473
    daddu      $a2,$a2,$a3
    move       $a4,$v0
    beqz       $v0, .L00000204
    ld         $ra,0($sp)
    b          .L00000144
    move       $v0,$a4
.L00000204:
    ld         $a2,24($sp)
    ld         $a0,32($sp)
    lui        $a3,0x1
    daddu      $a2,$a2,$a3
    sd         $a2,8($sp)
    li         $a1,1
    jal        mgras_mco_set_control_reg
    lw         $a2,-2280($a2)
    ld         $a2,8($sp)
    ld         $a0,32($sp)
    li         $a1,2
    jal        mgras_mco_set_control_reg
    lw         $a2,-2276($a2)
    ld         $a2,8($sp)
    ld         $a0,32($sp)
    li         $a1,3
    jal        mgras_mco_set_control_reg
    lw         $a2,-2272($a2)
    ld         $a1,24($sp)
    li         $a2,0xf6e8
    ld         $a0,32($sp)
    jal        mgras_mco_config_vc2
    daddu      $a1,$a1,$a2
    move       $a4,$v0
    beqz       $v0, .L00000274
    ld         $ra,0($sp)
    b          .L00000144
    move       $v0,$a4
.L00000274:
    cache      0x14,0($sp)
    ld         $a3,8($sp)
    ld         $v0,24($sp)
    ld         $at,16($sp)
    lw         $v0,0($v0)
    sw         $v0,1880($at)
    lw         $a3,-2328($a3)
    move       $v0,$zero
    b          .L00000144
    sw         $a3,1884($at)

glabel mgras_mco_shutdown_FPGAs
    lui        $a2,0x7
    daddu      $a2,$a0,$a2
    lw         $at,256($a2)
    daddiu     $sp,$sp,-32
    andi       $at,$at,0x1f
    sd         $s0,0($sp)
    beqz       $at, .L000002d0
    move       $s0,$a0
.L000002bc:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    bnez       $at, .L000002bc
    nop
    sd         $ra,8($sp)
.L000002d0:
    move       $a0,$s0
    sd         $ra,8($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,1
    cache      0x14,0($sp)
    lui        $v1,0x6
    ld         $ra,8($sp)
    ori        $v1,$v1,0x2c88
    daddu      $v1,$v1,$s0
    ld         $s0,0($sp)
    li         $v0,254
    daddiu     $sp,$sp,32
    sb         $v0,0($v1)
    jr         $ra
    move       $v0,$zero

glabel mgras_mco_config_FPGAs
    daddiu     $sp,$sp,-64
    sd         $s1,8($sp)
    lui        $s1,0x7
    daddu      $s1,$a0,$s1
    lw         $at,256($s1)
    andi       $at,$at,0x1f
    move       $v0,$a1
    sd         $s0,16($sp)
    beqz       $at, .L0000034c
    move       $s0,$a0
.L00000334:
    lw         $at,256($s1)
    andi       $at,$at,0x1f
    bnez       $at, .L00000334
    nop
    sd         $v0,0($sp)
    sd         $ra,24($sp)
.L0000034c:
    move       $a0,$s0
    sd         $s2,32($sp)
    li         $a1,1
    sd         $ra,24($sp)
    lui        $s2,0x6
    sd         $v0,0($sp)
    jal        mgras_mco_set_dcbctrl
    daddu      $s2,$s0,$s2
    cache      0x14,0($sp)
    li         $v0,254
    lui        $a0,0x1
    sb         $v0,11400($s2)
    jal        us_delay
    ori        $a0,$a0,0x86a0
    lw         $at,256($s1)
    andi       $at,$at,0x1f
    beqz       $at, .L000003a4
    ld         $ra,24($sp)
.L00000394:
    lw         $v1,256($s1)
    andi       $v1,$v1,0x1f
    bnez       $v1, .L00000394
    nop
.L000003a4:
    lbu        $v0,11400($s2)
    andi       $v0,$v0,0xff
    andi       $a2,$v0,0x4
    sra        $a2,$a2,0x2
    andi       $v1,$v0,0x2
    bnez       $a2, .L000003d0
    sra        $v1,$v1,0x1
    bnez       $v1, .L000003d0
    andi       $a2,$v0,0x1
    beqz       $a2, .L000003e8
    nop
.L000003d0:
    ld         $s2,32($sp)
    ld         $s1,8($sp)
    li         $v0,-5
    ld         $s0,16($sp)
.L000003e0:
    jr         $ra
    daddiu     $sp,$sp,64
.L000003e8:
    cache      0x14,0($sp)
    li         $a3,1
    lui        $a0,0x1
    sb         $a3,11400($s2)
    jal        us_delay
    ori        $a0,$a0,0x86a0
    lbu        $v0,11400($s2)
    andi       $v0,$v0,0xff
    andi       $a2,$v0,0x4
    sra        $a2,$a2,0x2
    beqz       $a2, .L00000434
    ld         $ra,24($sp)
    andi       $v1,$v0,0x2
    sra        $v1,$v1,0x1
    beqz       $v1, .L00000434
    nop
    andi       $a2,$v0,0x1
    beqz       $a2, .L00000448
    nop
.L00000434:
    ld         $s2,32($sp)
    ld         $s1,8($sp)
    li         $v0,-5
    b          .L000003e0
    ld         $s0,16($sp)
.L00000448:
    move       $a0,$s0
    jal        mgras_mco_set_dcbctrl
    move       $a1,$zero
    move       $a0,$zero
    li         $a4,0xf688
    ld         $ra,24($sp)
.L00000460:
    lw         $a3,256($s1)
    andi       $a3,$a3,0x1f
    beqz       $a3, .L00000480
    nop
.L00000470:
    lw         $at,256($s1)
    andi       $at,$at,0x1f
    bnez       $at, .L00000470
    nop
.L00000480:
    cache      0x14,0($sp)
    ld         $v1,0($sp)
    daddu      $v1,$a0,$v1
    lbu        $v1,4($v1)
    sb         $v1,11272($s2)
    lbu        $v0,11400($s2)
    andi       $v0,$v0,0xff
    andi       $v1,$v0,0x4
    sra        $v1,$v1,0x2
    beqz       $v1, .L000004c8
    nop
    andi       $a2,$v0,0x2
    sra        $a2,$a2,0x1
    beqz       $a2, .L000004c8
    nop
    andi       $a3,$v0,0x1
    beqz       $a3, .L000004dc
    nop
.L000004c8:
    ld         $s2,32($sp)
    ld         $s1,8($sp)
    li         $v0,-5
    b          .L000003e0
    ld         $s0,16($sp)
.L000004dc:
    addiu      $a0,$a0,1
    slt        $at,$a0,$a4
    bnez       $at, .L00000460
    nop
    b          .L00000508
    move       $a0,$zero
.L000004f4:
    cache      0x14,0($sp)
    addiu      $a0,$a0,1
    slti       $v1,$a0,20
    beqz       $v1, .L00000530
    sb         $zero,11272($s2)
.L00000508:
    lw         $a2,256($s1)
    andi       $a2,$a2,0x1f
    beqz       $a2, .L000004f4
    nop
.L00000518:
    lw         $a3,256($s1)
    andi       $a3,$a3,0x1f
    bnez       $a3, .L00000518
    nop
    b          .L000004f4
    nop
.L00000530:
    lui        $a0,0x1
    jal        us_delay
    ori        $a0,$a0,0x86a0
    lbu        $v0,11400($s2)
    andi       $v0,$v0,0xff
    andi       $a2,$v0,0x2
    ld         $s2,32($sp)
    sra        $a2,$a2,0x1
    ld         $s1,8($sp)
    beqz       $a2, .L00000568
    ld         $ra,24($sp)
    andi       $v1,$v0,0x1
    bnez       $v1, .L00000574
    ld         $s2,32($sp)
.L00000568:
    li         $v0,-5
    b          .L000003e0
    ld         $s0,16($sp)
.L00000574:
    move       $a0,$s0
    jal        mgras_mco_set_dcbctrl
    li         $a1,2
    ld         $ra,24($sp)
    move       $v0,$zero
    b          .L000003e0
    ld         $s0,16($sp)

glabel mgras_mco_config_7162
    daddiu     $sp,$sp,-1632
    sd         $s3,1552($sp)
    li         $v0,2
    li         $at,1
    sd         $s1,1560($sp)
    sd         $s2,1544($sp)
    move       $s1,$a0
    move       $s3,$a1
    beq        $a1, $at, .L000005d8
    move       $s2,$a2
    beq        $s3, $v0, .L000005d8
    nop
    ld         $s1,1560($sp)
    ld         $s3,1552($sp)
    li         $v0,-22
    ld         $s2,1544($sp)
.L000005d0:
    jr         $ra
    daddiu     $sp,$sp,1632
.L000005d8:
    sd         $s0,1568($sp)
    lui        $s0,0x7
    ld         $at,-30712($gp)
    daddu      $s0,$s1,$s0
    lw         $v1,256($s0)
    sd         $s4,1584($sp)
    dsll       $s4,$s3,0x2
    andi       $v1,$v1,0x1f
    daddu      $s4,$s4,$at
    beqz       $v1, .L00000618
    lw         $s4,0($s4)
.L00000604:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L00000604
    nop
    sd         $ra,1592($sp)
.L00000618:
    move       $a0,$s1
    sd         $s5,1576($sp)
    li         $a1,2
    sd         $ra,1592($sp)
    lui        $s5,0x6
    jal        mgras_mco_set_dcbctrl
    daddu      $s5,$s1,$s5
    cache      0x14,0($sp)
    addiu      $a3,$s4,3
    sb         $a3,11528($s5)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    li         $v0,2
    li         $a4,3
    beqz       $v1, .L00000668
    ld         $ra,1592($sp)
.L00000658:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L00000658
    nop
.L00000668:
    cache      0x14,0($sp)
    sb         $a4,11656($s5)
    sb         $v0,11656($s5)
    lw         $a3,0($s2)
    sb         $a3,11656($s5)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L0000069c
    nop
.L0000068c:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L0000068c
    nop
.L0000069c:
    lbu        $a3,11656($s5)
    lw         $v1,0($s2)
    andi       $a3,$a3,0xff
    bne        $v1, $a3, .L00000760
    li         $v0,-5
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    beqz       $a4, .L000006d0
    addiu      $a3,$s4,2
.L000006c0:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L000006c0
    nop
.L000006d0:
    cache      0x14,0($sp)
    sb         $s4,11528($s5)
    li         $a4,5
    sb         $a4,11656($s5)
    sb         $a3,11528($s5)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L00000704
    sd         $a3,1536($sp)
.L000006f4:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L000006f4
    nop
.L00000704:
    cache      0x14,0($sp)
    li         $a2,3
    move       $a1,$s4
    lw         $v0,4($s2)
    move       $a0,$s1
    jal        mgras_mco_7162_set_addr
    sb         $v0,11656($s5)
    cache      0x14,0($sp)
    ld         $a3,1536($sp)
    sb         $a3,11528($s5)
    lbu        $v1,11656($s5)
    li         $a3,121
    andi       $v1,$v1,0xff
    ld         $ra,1592($sp)
    li         $v0,-5
    beq        $v1, $a3, .L0000077c
    ld         $s5,1576($sp)
    ld         $s0,1568($sp)
    ld         $s1,1560($sp)
    ld         $s4,1584($sp)
    ld         $s3,1552($sp)
    b          .L000005d0
    ld         $s2,1544($sp)
.L00000760:
    ld         $s0,1568($sp)
    ld         $s1,1560($sp)
    ld         $s5,1576($sp)
    ld         $s4,1584($sp)
    ld         $s3,1552($sp)
    b          .L000005d0
    ld         $s2,1544($sp)
.L0000077c:
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    beqz       $a4, .L0000079c
    ld         $s5,1576($sp)
.L0000078c:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L0000078c
    nop
.L0000079c:
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,8($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,6
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L000007d0
    nop
.L000007c0:
    lw         $a3,256($s0)
    andi       $a3,$a3,0x1f
    bnez       $a3, .L000007c0
    nop
.L000007d0:
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,12($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,7
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    beqz       $a4, .L00000804
    nop
.L000007f4:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L000007f4
    nop
.L00000804:
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,16($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,8
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L00000838
    nop
.L00000828:
    lw         $a3,256($s0)
    andi       $a3,$a3,0x1f
    bnez       $a3, .L00000828
    nop
.L00000838:
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,24($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,12
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,28($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,15
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    beqz       $a4, .L00000880
    nop
.L00000870:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L00000870
    nop
.L00000880:
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,32($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,9
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,20($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,13
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L000008c8
    nop
.L000008b8:
    lw         $a3,256($s0)
    andi       $a3,$a3,0x1f
    bnez       $a3, .L000008b8
    nop
.L000008c8:
    move       $a0,$s1
    move       $a1,$s4
    lw         $a3,36($s2)
    jal        mgras_mco_7162_set_cmd
    li         $a2,516
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    ld         $s4,1584($sp)
    beqz       $a4, .L00000900
    ld         $s2,1544($sp)
.L000008f0:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L000008f0
    nop
.L00000900:
    move       $v0,$zero
    daddiu     $a0,$sp,0
    ld         $s0,1568($sp)
.L0000090c:
    cache      0x14,0($sp)
    daddu      $a3,$v0,$v0
    daddu      $a3,$a3,$a0
    sll        $v1,$v0,0x8
    or         $v1,$v1,$v0
    addiu      $v0,$v0,1
    sh         $v1,1024($a3)
    slti       $a4,$v0,256
    sh         $v1,512($a3)
    bnez       $a4, .L0000090c
    sh         $v1,0($a3)
    move       $a0,$s1
    move       $a1,$s3
    jal        mgras_mco_config_7162_gamma
    daddiu     $a2,$sp,0
    ld         $s1,1560($sp)
    ld         $s3,1552($sp)
    move       $a0,$v0
    beqz       $v0, .L00000964
    ld         $ra,1592($sp)
    b          .L000005d0
    move       $v0,$a0
.L00000964:
    b          .L000005d0
    move       $v0,$zero

glabel mgras_mco_config_473
    daddiu     $sp,$sp,-1616
    move       $v0,$a2
    li         $at,3
    sd         $s0,1552($sp)
    li         $v1,4
    sd         $s1,1560($sp)
    move       $s0,$a0
    beq        $a1, $at, .L000009ac
    move       $s1,$a1
    beq        $s1, $v1, .L000009ac
    nop
    ld         $s1,1560($sp)
    li         $v0,-22
    ld         $s0,1552($sp)
.L000009a4:
    jr         $ra
    daddiu     $sp,$sp,1616
.L000009ac:
    sd         $s2,1568($sp)
    lui        $s2,0x7
    ld         $at,-30712($gp)
    daddu      $s2,$s0,$s2
    lw         $a3,256($s2)
    dsll       $a4,$s1,0x2
    daddu      $a4,$a4,$at
    andi       $a3,$a3,0x1f
    lw         $a4,0($a4)
    beqz       $a3, .L000009f0
    sd         $a4,1544($sp)
.L000009d8:
    lw         $at,256($s2)
    andi       $at,$at,0x1f
    bnez       $at, .L000009d8
    nop
    sd         $ra,1576($sp)
    sd         $v0,1536($sp)
.L000009f0:
    move       $a0,$s0
    sd         $ra,1576($sp)
    sd         $v0,1536($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,2
    cache      0x14,0($sp)
    ld         $at,1544($sp)
    lui        $a4,0x6
    ld         $a3,1536($sp)
    daddu      $a4,$s0,$a4
    addiu      $at,$at,6
    sb         $at,11528($a4)
    lw         $a3,0($a3)
    sb         $a3,11656($a4)
    lw         $v1,256($s2)
    andi       $v1,$v1,0x1f
    daddiu     $a0,$sp,0
    beqz       $v1, .L00000a4c
    move       $v0,$zero
.L00000a3c:
    lw         $at,256($s2)
    andi       $at,$at,0x1f
    bnez       $at, .L00000a3c
    nop
.L00000a4c:
    ld         $s2,1568($sp)
.L00000a50:
    cache      0x14,0($sp)
    daddu      $a3,$v0,$v0
    daddu      $a3,$a3,$a0
    sll        $v1,$v0,0x8
    or         $v1,$v1,$v0
    addiu      $v0,$v0,1
    sh         $v1,1024($a3)
    slti       $a4,$v0,256
    sh         $v1,512($a3)
    bnez       $a4, .L00000a50
    sh         $v1,0($a3)
    move       $a0,$s0
    move       $a1,$s1
    jal        mgras_mco_config_473_gamma
    daddiu     $a2,$sp,0
    ld         $s1,1560($sp)
    ld         $ra,1576($sp)
    move       $a0,$v0
    beqz       $v0, .L00000aa8
    ld         $s0,1552($sp)
    b          .L000009a4
    move       $v0,$a0
.L00000aa8:
    b          .L000009a4
    move       $v0,$zero

glabel mgras_mco_shutdown_vc2
    lui        $a2,0x7
    daddu      $a2,$a0,$a2
    lw         $at,256($a2)
    daddiu     $sp,$sp,-32
    andi       $at,$at,0x1f
    sd         $s0,0($sp)
    beqz       $at, .L00000ae4
    move       $s0,$a0
.L00000ad0:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    bnez       $at, .L00000ad0
    nop
    sd         $ra,8($sp)
.L00000ae4:
    move       $a0,$s0
    sd         $ra,8($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,4
    cache      0x14,0($sp)
    lui        $v1,0x6
    daddu      $v1,$s0,$v1
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    li         $a0,16
    sb         $a0,11784($v1)
    li         $v0,-8
    daddiu     $sp,$sp,32
    sh         $v0,11952($v1)
    jr         $ra
    move       $v0,$zero

glabel mgras_mco_config_vc2
    lui        $v0,0x7
    daddu      $v0,$a0,$v0
    lw         $at,256($v0)
    daddiu     $sp,$sp,-48
    sd         $s1,8($sp)
    andi       $at,$at,0x1f
    sd         $s0,0($sp)
    move       $s1,$a0
    beqz       $at, .L00000b60
    move       $s0,$a1
.L00000b4c:
    lw         $v1,256($v0)
    andi       $v1,$v1,0x1f
    bnez       $v1, .L00000b4c
    nop
    sd         $ra,16($sp)
.L00000b60:
    move       $a0,$s1
    sd         $s2,24($sp)
    li         $a1,4
    sd         $ra,16($sp)
    lui        $s2,0x6
    jal        mgras_mco_set_dcbctrl
    daddu      $s2,$s1,$s2
    cache      0x14,0($sp)
    li         $a0,31
    sb         $a0,11784($s2)
    li         $a0,10000
    jal        us_delay
    sh         $zero,11952($s2)
    cache      0x14,0($sp)
    li         $t9,31
    sb         $t9,11784($s2)
    lw         $t8,44($s0)
    li         $a0,10000
    jal        us_delay
    sh         $t8,11952($s2)
    jal        mgras_mco_shutdown_vc2
    move       $a0,$s1
    move       $a0,$s1
    lw         $a3,40($s0)
    move       $a2,$zero
    jal        mgras_mco_load_vc2_sram
    ld         $a1,32($s0)
    move       $a0,$v0
    beqz       $v0, .L00000bf0
    ld         $ra,16($sp)
    ld         $s2,24($sp)
    ld         $s1,8($sp)
    ld         $s0,0($sp)
.L00000be4:
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,48
.L00000bf0:
    cache      0x14,0($sp)
    sb         $zero,11784($s2)
    lw         $ra,28($s0)
    sh         $ra,11952($s2)
    li         $a2,1024
    lw         $a3,24($s0)
    move       $a0,$s1
    jal        mgras_mco_load_vc2_sram
    ld         $a1,16($s0)
    ld         $s1,8($sp)
    move       $a0,$v0
    beqz       $v0, .L00000c30
    ld         $ra,16($sp)
    ld         $s2,24($sp)
    b          .L00000be4
    ld         $s0,0($sp)
.L00000c30:
    cache      0x14,0($sp)
    li         $a2,6
    sb         $a2,11784($s2)
    lw         $a0,4($s0)
    sll        $a0,$a0,0x5
    sh         $a0,11952($s2)
    li         $v1,16
    sb         $v1,11784($s2)
    lw         $at,0($s0)
    ld         $s0,0($sp)
    sh         $at,11952($s2)
    move       $a0,$zero
    b          .L00000be4
    ld         $s2,24($sp)

glabel mgras_mco_load_vc2_sram
    daddiu     $sp,$sp,-80
    sd         $s0,0($sp)
    lui        $s0,0x7
    sd         $s4,24($sp)
    daddu      $s0,$a0,$s0
    lw         $at,256($s0)
    sd         $s3,16($sp)
    sd         $s2,8($sp)
    move       $s3,$a0
    andi       $at,$at,0x1f
    sd         $s1,32($sp)
    move       $s2,$a1
    move       $s4,$a2
    beqz       $at, .L00000cb8
    move       $s1,$a3
.L00000ca4:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L00000ca4
    nop
    sd         $ra,40($sp)
.L00000cb8:
    move       $a0,$s3
    sd         $ra,40($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,4
    cache      0x14,0($sp)
    lui        $a0,0x6
    daddu      $a0,$s3,$a0
    li         $a1,7
    sb         $a1,11784($a0)
    sh         $s4,11952($a0)
    sb         $a1,11784($a0)
    lhu        $v1,11952($a0)
    ld         $ra,40($sp)
    move       $v0,$zero
    bne        $v1, $s4, .L00000db4
    ld         $s3,16($sp)
    beqz       $s1, .L00000d4c
    nop
    b          .L00000d1c
    nop
.L00000d08:
    cache      0x14,0($sp)
    sltu       $a5,$v0,$s1
    lhu        $a4,0($a4)
    beqz       $a5, .L00000d4c
    sh         $a4,12176($a0)
.L00000d1c:
    lw         $a5,256($s0)
    andi       $a5,$a5,0x1f
    daddu      $a4,$v0,$v0
    addiu      $v0,$v0,1
    beqz       $a5, .L00000d08
    daddu      $a4,$a4,$s2
.L00000d34:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L00000d34
    nop
    b          .L00000d08
    nop
.L00000d4c:
    cache      0x14,0($sp)
    ld         $s0,0($sp)
    sb         $a1,11784($a0)
    sh         $s4,11952($a0)
    move       $v0,$zero
    beqz       $s1, .L00000d90
    ld         $s4,24($sp)
    ld         $s4,24($sp)
.L00000d6c:
    daddu      $v1,$v0,$v0
    lhu        $a4,12176($a0)
    daddu      $v1,$v1,$s2
    lhu        $v1,0($v1)
    bne        $v1, $a4, .L00000da4
    addiu      $v0,$v0,1
    sltu       $a4,$v0,$s1
    bnez       $a4, .L00000d6c
    nop
.L00000d90:
    ld         $s1,32($sp)
    move       $v0,$zero
    ld         $s2,8($sp)
.L00000d9c:
    jr         $ra
    daddiu     $sp,$sp,80
.L00000da4:
    ld         $s1,32($sp)
    li         $v0,-5
    b          .L00000d9c
    ld         $s2,8($sp)
.L00000db4:
    ld         $s1,32($sp)
    ld         $s0,0($sp)
    ld         $s4,24($sp)
    ld         $s3,16($sp)
    li         $v0,-5
    b          .L00000d9c
    ld         $s2,8($sp)

glabel mgras_mco_load_channel_gamma
    daddiu     $sp,$sp,-48
    li         $v1,1
    lw         $at,1880($a0)
    li         $a3,2
    li         $a4,3
    move       $a6,$a0
    li         $a0,-22
    beqz       $at, .L00000e64
    move       $v0,$a2
    beqz       $a1, .L00000e6c
    nop
    beq        $a1, $v1, .L00000e2c
    nop
    beq        $a1, $a3, .L00000e2c
    nop
    beq        $a1, $a4, .L00000e48
    nop
    li         $at,4
    beq        $a1, $at, .L00000e48
    nop
.L00000e20:
    move       $v0,$a0
.L00000e24:
    jr         $ra
    daddiu     $sp,$sp,48
.L00000e2c:
    sd         $ra,0($sp)
    ld         $a0,208($a6)
    jal        mgras_mco_config_7162_gamma
    move       $a2,$v0
    move       $a0,$v0
    b          .L00000e20
    ld         $ra,0($sp)
.L00000e48:
    sd         $ra,0($sp)
    ld         $a0,208($a6)
    jal        mgras_mco_config_473_gamma
    move       $a2,$v0
    move       $a0,$v0
    b          .L00000e20
    ld         $ra,0($sp)
.L00000e64:
    b          .L00000e24
    li         $v0,-5
.L00000e6c:
    move       $a0,$a6
    move       $a1,$v0
    daddiu     $a3,$v0,1024
    sd         $ra,0($sp)
    jal        MgrasSetGammaRamp
    daddiu     $a2,$v0,512
    move       $a0,$v0
    b          .L00000e20
    ld         $ra,0($sp)

glabel mgras_mco_config_7162_gamma
    daddiu     $sp,$sp,-80
    li         $v1,2
    li         $at,1
    sd         $s1,16($sp)
    li         $v0,-22
    sd         $s0,8($sp)
    move       $s1,$a0
    beq        $a1, $at, .L00000edc
    move       $s0,$a2
    beq        $a1, $v1, .L00000edc
    nop
    ld         $s1,16($sp)
    b          .L00000ed4
    ld         $s0,8($sp)
.L00000ec8:
    ld         $s3,32($sp)
    move       $v0,$zero
    ld         $s0,8($sp)
.L00000ed4:
    jr         $ra
    daddiu     $sp,$sp,80
.L00000edc:
    sd         $s3,32($sp)
    lui        $s3,0x7
    ld         $at,-30712($gp)
    daddu      $s3,$s1,$s3
    lw         $a3,256($s3)
    dsll       $a4,$a1,0x2
    daddu      $a4,$a4,$at
    andi       $a3,$a3,0x1f
    lw         $a4,0($a4)
    beqz       $a3, .L00000f1c
    sd         $a4,0($sp)
.L00000f08:
    lw         $at,256($s3)
    andi       $at,$at,0x1f
    bnez       $at, .L00000f08
    nop
    sd         $ra,24($sp)
.L00000f1c:
    move       $a0,$s1
    sd         $ra,24($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,2
    move       $a0,$s1
    ld         $a1,0($sp)
    jal        mgras_mco_7162_set_addr
    move       $a2,$zero
    cache      0x14,0($sp)
    ld         $v0,0($sp)
    lui        $a0,0x6
    ld         $ra,24($sp)
    daddu      $a0,$s1,$a0
    addiu      $v0,$v0,1
    sb         $v0,11528($a0)
    ld         $s1,16($sp)
    b          .L00000fb0
    move       $v0,$zero
.L00000f64:
    lw         $a3,256($s3)
    andi       $a3,$a3,0x1f
    bnez       $a3, .L00000f64
    nop
.L00000f74:
    cache      0x14,0($sp)
    lhu        $v1,512($a1)
    andi       $v1,$v1,0xc0
    sra        $v1,$v1,0x6
    sb         $v1,11656($a0)
    lhu        $at,1024($a1)
    andi       $at,$at,0xff00
    sra        $at,$at,0x8
    sb         $at,11656($a0)
    lhu        $a4,1024($a1)
    slti       $at,$v0,256
    andi       $a4,$a4,0xc0
    sra        $a4,$a4,0x6
    beqz       $at, .L00000ec8
    sb         $a4,11656($a0)
.L00000fb0:
    lw         $a3,256($s3)
    andi       $a3,$a3,0x1f
    daddu      $a1,$v0,$v0
    addiu      $v0,$v0,1
    beqz       $a3, .L00000fd8
    daddu      $a1,$a1,$s0
.L00000fc8:
    lw         $a4,256($s3)
    andi       $a4,$a4,0x1f
    bnez       $a4, .L00000fc8
    nop
.L00000fd8:
    cache      0x14,0($sp)
    lhu        $a4,0($a1)
    andi       $a4,$a4,0xff00
    sra        $a4,$a4,0x8
    sb         $a4,11656($a0)
    lhu        $a3,0($a1)
    andi       $a3,$a3,0xc0
    sra        $a3,$a3,0x6
    sb         $a3,11656($a0)
    lhu        $v1,512($a1)
    andi       $v1,$v1,0xff00
    sra        $v1,$v1,0x8
    sb         $v1,11656($a0)
    lw         $at,256($s3)
    andi       $at,$at,0x1f
    beqz       $at, .L00000f74
    nop
    b          .L00000f64
    nop

glabel mgras_mco_config_473_gamma
    daddiu     $sp,$sp,-80
    li         $v1,4
    li         $at,3
    sd         $s1,0($sp)
    li         $v0,-22
    sd         $s0,8($sp)
    move       $s1,$a0
    beq        $a1, $at, .L00001070
    move       $s0,$a2
    beq        $a1, $v1, .L00001070
    nop
    ld         $s1,0($sp)
    b          .L00001068
    ld         $s0,8($sp)
.L0000105c:
    ld         $s3,32($sp)
    move       $v0,$zero
    ld         $s0,8($sp)
.L00001068:
    jr         $ra
    daddiu     $sp,$sp,80
.L00001070:
    sd         $s3,32($sp)
    lui        $s3,0x7
    daddu      $s3,$s1,$s3
    lw         $a3,256($s3)
    ld         $v1,-30712($gp)
    dsll       $v0,$a1,0x2
    andi       $a3,$a3,0x1f
    daddu      $v0,$v0,$v1
    beqz       $a3, .L000010ac
    lw         $v0,0($v0)
.L00001098:
    lw         $at,256($s3)
    andi       $at,$at,0x1f
    bnez       $at, .L00001098
    nop
    sd         $ra,24($sp)
.L000010ac:
    move       $a0,$s1
    sd         $ra,24($sp)
    sd         $v0,16($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,2
    cache      0x14,0($sp)
    lui        $a1,0x6
    ld         $v0,16($sp)
    daddu      $a1,$s1,$a1
    sb         $v0,11528($a1)
    sb         $zero,11656($a1)
    lw         $v1,256($s3)
    andi       $v1,$v1,0x1f
    ld         $ra,24($sp)
    move       $a0,$zero
    ld         $s1,0($sp)
    beqz       $v1, .L00001108
    addiu      $a4,$v0,1
    ld         $s1,0($sp)
.L000010f8:
    lw         $a3,256($s3)
    andi       $a3,$a3,0x1f
    bnez       $a3, .L000010f8
    nop
.L00001108:
    cache      0x14,0($sp)
    b          .L0000113c
    sb         $a4,11528($a1)
.L00001114:
    lw         $at,256($s3)
    andi       $at,$at,0x1f
    bnez       $at, .L00001114
    nop
.L00001124:
    cache      0x14,0($sp)
    lhu        $v1,1024($v0)
    andi       $v1,$v1,0xff00
    sra        $v1,$v1,0x8
    beqz       $a3, .L0000105c
    sb         $v1,11656($a1)
.L0000113c:
    lw         $a3,256($s3)
    andi       $a3,$a3,0x1f
    daddu      $v0,$a0,$a0
    addiu      $a0,$a0,1
    beqz       $a3, .L00001164
    daddu      $v0,$v0,$s0
.L00001154:
    lw         $a4,256($s3)
    andi       $a4,$a4,0x1f
    bnez       $a4, .L00001154
    nop
.L00001164:
    cache      0x14,0($sp)
    lhu        $a3,0($v0)
    andi       $a3,$a3,0xff00
    sra        $a3,$a3,0x8
    sb         $a3,11656($a1)
    lhu        $v1,512($v0)
    andi       $v1,$v1,0xff00
    sra        $v1,$v1,0x8
    sb         $v1,11656($a1)
    lw         $at,256($s3)
    andi       $at,$at,0x1f
    beqz       $at, .L00001124
    slti       $a3,$a0,256
    b          .L00001114
    nop

glabel mgras_mco_set_dcbctrl
    lui        $v0,0x7
    daddu      $v0,$a0,$v0
    lw         $at,256($v0)
    andi       $at,$at,0x1f
    dsll32     $a3,$a1,0x0
    beqz       $at, .L000011cc
    dsrl32     $a3,$a3,0x0
.L000011bc:
    lw         $v1,256($v0)
    andi       $v1,$v1,0x1f
    bnez       $v1, .L000011bc
    nop
.L000011cc:
    li         $a2,25369
    la         $at, jpt_00000000
    sltiu      $v1,$a3,24
    li         $a0,25369
    dsll       $a3,$a3,0x3
    beqz       $v1, .L000011f4
    daddu      $a3,$a3,$at
    ld         $at,0($a3)
    jr         $at
    li         $v1,792
.L000011f4:
    b          .L0000120c
    li         $v0,-14
.L000011fc:
    cache      0x14,0($sp)
    li         $v1,792
    sw         $v1,-32724($v0)
.L00001208:
    move       $v0,$zero
.L0000120c:
    jr         $ra
    nop
.L00001214:
    cache      0x14,0($sp)
    b          .L00001208
    sw         $a0,-32724($v0)
.L00001220:
    cache      0x14,0($sp)
    b          .L00001208
    sw         $a2,-32724($v0)
.L0000122c:
    cache      0x14,0($sp)
    li         $at,25370
    b          .L00001208
    sw         $at,-32724($v0)
.L0000123c:
    cache      0x14,0($sp)
    b          .L00001208
    sw         $v1,-32768($v0)

glabel mgras_mco_startclock
    cache      0x14,0($sp)
    lui        $a1,0x6
    ori        $a1,$a1,0x802c
    lui        $v0,0x6
    daddu      $a1,$a1,$a0
    daddu      $v0,$a0,$v0
    li         $a0,792
    sw         $a0,0($a1)
    li         $v1,144
    sb         $v1,11528($v0)
    li         $at,5
    jr         $ra
    sb         $at,11656($v0)

glabel mgras_mco_set_control_reg
    daddiu     $sp,$sp,-80
    sd         $s1,16($sp)
    sd         $s0,32($sp)
    sd         $s8,8($sp)
    move       $s0,$a0
    sd         $ra,24($sp)
    move       $s8,$a2
    move       $s1,$a1
    sd         $s5,0($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,2
    li         $v0,2
    li         $at,1
    li         $v1,3
    lui        $s5,0x6
    beq        $s1, $at, .L00001300
    daddu      $s5,$s0,$s5
    beq        $s1, $v0, .L00001310
    li         $at,144
    beq        $s1, $v1, .L0000131c
    li         $v0,160
.L000012d0:
    move       $a0,$s0
    jal        mgras_mco_set_dcbctrl
    li         $a1,3
    cache      0x14,0($sp)
    ld         $s0,32($sp)
    ld         $s1,16($sp)
    ld         $ra,24($sp)
    sb         $s8,11656($s5)
    ld         $s5,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001300:
    cache      0x14,0($sp)
    li         $a3,128
    b          .L000012d0
    sb         $a3,11528($s5)
.L00001310:
    cache      0x14,0($sp)
    b          .L000012d0
    sb         $at,11528($s5)
.L0000131c:
    cache      0x14,0($sp)
    b          .L000012d0
    sb         $v0,11528($s5)

glabel mgras_mco_7162_set_addr
    daddiu     $sp,$sp,-64
    sd         $s8,8($sp)
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    move       $s0,$a0
    move       $s8,$a1
    sd         $a2,24($sp)
    jal        mgras_mco_set_dcbctrl
    li         $a1,2
    lui        $a1,0x7
    daddu      $a1,$s0,$a1
    lw         $at,256($a1)
    andi       $at,$at,0x1f
    ld         $a0,24($sp)
    beqz       $at, .L00001378
    ld         $ra,0($sp)
.L00001368:
    lw         $a3,256($a1)
    andi       $a3,$a3,0x1f
    bnez       $a3, .L00001368
    nop
.L00001378:
    cache      0x14,0($sp)
    lui        $at,0x6
    daddu      $at,$s0,$at
    sb         $s8,11528($at)
    ld         $s8,8($sp)
    andi       $s0,$a0,0x300
    sb         $a0,11656($at)
    srl        $s0,$s0,0x8
    sb         $s0,11656($at)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel mgras_mco_7162_set_cmd
    lui        $a5,0x7
    daddu      $a5,$a0,$a5
    daddiu     $sp,$sp,-64
    lw         $at,256($a5)
    sd         $s1,8($sp)
    sd         $s0,16($sp)
    andi       $at,$at,0x1f
    sd         $s8,0($sp)
    move       $s0,$a0
    move       $s1,$a1
    beqz       $at, .L000013ec
    move       $s8,$a3
.L000013d8:
    lw         $at,256($a5)
    andi       $at,$at,0x1f
    bnez       $at, .L000013d8
    nop
    sd         $ra,24($sp)
.L000013ec:
    move       $a0,$s0
    sd         $ra,24($sp)
    jal        mgras_mco_7162_set_addr
    move       $a1,$s1
    cache      0x14,0($sp)
    addiu      $v1,$s1,2
    ld         $s1,8($sp)
    lui        $v0,0x6
    daddu      $v0,$s0,$v0
    ld         $s0,16($sp)
    ld         $ra,24($sp)
    sb         $v1,11528($v0)
    sb         $s8,11656($v0)
    ld         $s8,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64
