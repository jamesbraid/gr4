.section .text
.set noat
.set noreorder


glabel DeriveInfo
    cache      0x14,0($sp)
    dsra       $at,$a0,0x1
    move       $a6,$zero
    xor        $at,$at,$a0
    sltiu      $v0,$a1,1
    andi       $at,$at,0x55
    sb         $zero,37($a2)
    sltu       $a4,$zero,$at
    sltiu      $v1,$at,1
    sb         $a4,38($a2)
    and        $v0,$v0,$v1
    li         $v1,17
    sb         $v0,36($a2)
    beqz       $at, .L00000050
    ddiv       $zero,$a0,$v1
    sll        $zero,$zero,0x2
    cache      0x14,0($sp)
    andi       $v0,$a0,0xaa
    sltu       $v0,$zero,$v0
    sb         $v0,37($a2)
.L00000050:
    cache      0x14,0($sp)
    sb         $zero,35($a2)
    mfhi       $a4
    sb         $zero,39($a2)
    sb         $zero,40($a2)
    li         $at,7
    beqz       $a4, .L00000104
    teq        $v1,$zero,0x7
    ddiv       $zero,$a0,$at
    mfhi       $v0
    li         $a4,5
    li         $v1,1
    beqz       $v0, .L00000114
    teq        $at,$zero,0x7
    beqz       $a3, .L0000009c
    ddiv       $zero,$a0,$a4
    sll        $zero,$zero,0x2
    cache      0x14,0($sp)
    sb         $v1,40($a2)
.L0000009c:
    mfhi       $at
    andi       $v0,$a0,0x3
    li         $a3,3
    beqz       $at, .L00000124
    teq        $a4,$zero,0x7
    bnez       $v0, .L000000d8
    nop
    lbu        $a5,39($a2)
.L000000bc:
    cache      0x14,0($sp)
    dsll       $a3,$a3,0x2
    and        $v1,$a0,$a3
    addiu      $a5,$a5,1
    andi       $a5,$a5,0xff
    beqz       $v1, .L000000bc
    sb         $a5,39($a2)
.L000000d8:
    cache      0x14,0($sp)
    sll        $a0,$a1,0x0
    li         $v1,32
    sllv       $v1,$v1,$a0
    lbu        $v0,36($a2)
    addiu      $at,$a6,1
    sll        $at,$at,0x6
    sw         $v1,12($a2)
    sllv       $at,$at,$v0
    jr         $ra
    sw         $at,8($a2)
.L00000104:
    cache      0x14,0($sp)
    li         $a6,3
    b          .L000000d8
    sb         $a6,35($a2)
.L00000114:
    cache      0x14,0($sp)
    li         $a6,2
    b          .L000000d8
    sb         $a6,35($a2)
.L00000124:
    cache      0x14,0($sp)
    li         $a6,1
    sb         $a6,35($a2)
    andi       $a4,$a0,0xf0
    sltu       $a4,$zero,$a4
    b          .L000000d8
    sb         $a4,39($a2)

glabel MgrasSaveOverlap
    ld         $at,208($a1)
    daddiu     $sp,$sp,-144
    sd         $s2,80($sp)
    sd         $s4,96($sp)
    sd         $s6,72($sp)
    sd         $ra,88($sp)
    sd         $a0,64($sp)
    sd         $s7,16($sp)
    sd         $s1,24($sp)
    sd         $s3,56($sp)
    lhu        $v0,26($a0)
    sd         $s8,48($sp)
    ld         $s8,1744($a1)
    sd         $s0,40($sp)
    move       $s3,$a2
    lhu        $s0,24($a0)
    sd         $s5,32($sp)
    move       $s1,$zero
    move       $s7,$zero
    sd         $a1,0($sp)
    daddiu     $s5,$s8,288
    dsll32     $s0,$s0,0x0
    sd         $at,8($sp)
    daddiu     $s8,$s8,32
    blez       $v0, .L00000268
    dsrl32     $s0,$s0,0x0
    sd         $s6,72($sp)
    sd         $s2,80($sp)
    sd         $ra,88($sp)
    b          .L000001e4
    sd         $s4,96($sp)
.L000001bc:
    cache      0x14,0($sp)
    ld         $v0,64($sp)
    daddu      $a4,$s2,$s8
    lbu        $v1,32($v0)
    sb         $v1,0($a4)
    sd         $s3,0($s4)
    lhu        $v0,26($v0)
.L000001d8:
    slt        $a5,$s1,$v0
    beqz       $a5, .L00000268
    nop
.L000001e4:
    dsra32     $s4,$s0,0x1f
    xor        $s2,$s0,$s4
    dsubu      $s2,$s2,$s4
    dsra32     $s4,$s0,0x1f
    andi       $s2,$s2,0xff
    xor        $s2,$s2,$s4
    dsubu      $s2,$s2,$s4
    dsll       $s4,$s2,0x3
    daddu      $s4,$s4,$s5
    ld         $a0,0($s4)
    daddiu     $s1,$s1,1
    daddiu     $s0,$s0,1
    beq        $a0, $s3, .L000001d8
    move       $s6,$a0
    beqz       $a0, .L000001bc
    nop
    beqz       $s7, .L000002b8
    nop
.L0000022c:
    move       $a1,$s6
    ld         $a0,0($sp)
    jal        MgrasSaveTexData
    andi       $a2,$s2,0xffff
    bgez       $v0, .L000001bc
    nop
    li         $at,-1
    bne        $v0, $at, .L000001bc
    nop
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    ld         $a0,0($sp)
    jal        MgrasCleanTexStruct
    ld         $a1,0($s4)
.L00000268:
    ld         $s6,72($sp)
    ld         $s2,80($sp)
    beqz       $s7, .L00000290
    ld         $s4,96($sp)
    ld         $a0,8($sp)
    ld         $s6,72($sp)
    ld         $s2,80($sp)
    li         $a1,2
    jal        MgrasResetTxTbl_Kern
    ld         $s4,96($sp)
.L00000290:
    ld         $s0,40($sp)
    ld         $s1,24($sp)
    ld         $s3,56($sp)
    ld         $ra,88($sp)
    ld         $s5,32($sp)
    move       $v0,$s7
    ld         $s7,16($sp)
    ld         $s8,48($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L000002b8:
    jal        MgrasFinish
    ld         $a0,8($sp)
    ld         $v0,0($sp)
    ld         $v0,1744($v0)
    lw         $a3,8($v0)
    beqz       $a3, .L000002e8
    nop
    ld         $a0,8($sp)
    li         $a1,2
    ld         $a2,0($v0)
    jal        MgrasInstallTxTbl_Kern
    move       $a4,$zero
.L000002e8:
    b          .L0000022c
    li         $s7,1

glabel MgrasRestoreOverlap
    daddiu     $sp,$sp,-160
    sd         $s0,120($sp)
    sd         $s3,96($sp)
    sd         $s6,72($sp)
    sd         $s7,112($sp)
    sd         $a3,0($sp)
    sd         $ra,64($sp)
    sd         $s2,32($sp)
    sd         $s5,56($sp)
    sd         $s8,40($sp)
    sd         $s1,48($sp)
    move       $s8,$a2
    move       $s5,$a0
    ld         $s1,1128($a1)
    daddiu     $a0,$a0,1728
    sd         $a0,24($sp)
    move       $s2,$a1
    li         $a1,25
    jal        mutex_lock
    ld         $s1,8($s1)
    sd         $s4,104($sp)
    ld         $v1,8($s1)
    ld         $a4,1744($s5)
    lbu        $v1,32($v1)
    move       $s0,$zero
    move       $s3,$zero
    lhu        $at,0($s1)
    sd         $zero,8($sp)
    daddiu     $s7,$a4,288
    dsll32     $v1,$v1,0x0
    daddiu     $a4,$a4,32
    sd         $a4,88($sp)
    dsrl32     $v1,$v1,0x0
    move       $s6,$zero
    blez       $at, .L000005f0
    sd         $v1,80($sp)
    sd         $s2,16($sp)
    b          .L000004b0
    sd         $s4,104($sp)
.L0000038c:
    ld         $a4,8($sp)
    beqz       $a4, .L000006b8
    nop
.L00000398:
    move       $a0,$s5
    move       $a1,$s2
    jal        MgrasSaveTexData
    move       $a2,$s0
    bltz       $v0, .L0000065c
    nop
.L000003b0:
    daddiu     $a3,$s8,124
    beq        $s1, $s2, .L0000049c
    li         $a2,22
    bnez       $s6, .L0000046c
    nop
    ld         $a5,0($sp)
    lui        $v1,0xfff
    ld         $at,16($sp)
    beq        $s8, $a5, .L00000460
    ori        $v1,$v1,0xffff
    lw         $at,56($at)
    and        $at,$at,$v1
    srl        $at,$at,0x1b
    lui        $a5,0x800
    beqz       $at, .L00000444
    ld         $a6,16($sp)
    cache      0x14,0($sp)
    lw         $a4,56($s8)
    move       $v0,$zero
    or         $a4,$a4,$a5
    sw         $a4,56($s8)
    lui        $a5,0xf7ff
    daddiu     $a6,$a6,124
    ld         $a4,16($sp)
    ori        $a5,$a5,0xffff
.L00000414:
    cache      0x14,0($sp)
    addiu      $a2,$a2,-1
    daddu      $at,$v0,$a6
    daddu      $v1,$v0,$a3
    lw         $at,0($at)
    addiu      $v0,$v0,4
    bgtz       $a2, .L00000414
    sw         $at,0($v1)
    cache      0x14,0($sp)
    lw         $v1,56($a4)
    and        $v1,$v1,$a5
    sw         $v1,56($a4)
.L00000444:
    move       $a0,$s5
    move       $a1,$s8
    jal        MgrasCtxsw
    ld         $a2,0($sp)
    bltz       $v0, .L000006f4
    nop
    li         $s6,1
.L00000460:
    ld         $at,8($sp)
    beqz       $at, .L0000067c
    nop
.L0000046c:
    move       $a0,$s5
    move       $a1,$s1
    jal        MgrasRestoreTexData
    move       $a2,$s0
    bltz       $v0, .L000005d4
    nop
    cache      0x14,0($sp)
    ld         $v1,80($sp)
    ld         $a4,88($sp)
    sd         $s1,0($s4)
    daddu      $a4,$s0,$a4
    sb         $v1,0($a4)
.L0000049c:
    lhu        $at,0($s1)
    slt        $at,$s3,$at
    addiu      $s0,$s0,1
    beqz       $at, .L000005f0
    andi       $s0,$s0,0xffff
.L000004b0:
    dsll       $v0,$s0,0x3
    daddu      $at,$v0,$s1
    ld         $at,16($at)
    bnez       $at, .L000004e8
    nop
.L000004c4:
    addiu      $s0,$s0,1
    andi       $s0,$s0,0xffff
    slti       $v1,$s0,257
    dsll       $v0,$s0,0x3
    beqz       $v1, .L000005b8
    daddu      $at,$v0,$s1
    ld         $at,16($at)
    beqz       $at, .L000004c4
    nop
.L000004e8:
    daddu      $s4,$v0,$s7
    ld         $s2,0($s4)
    move       $v0,$zero
    daddiu     $a6,$s8,124
    addiu      $s3,$s3,1
    ld         $v1,0($sp)
    beqz       $s2, .L000003b0
    andi       $s3,$s3,0xffff
    beq        $s1, $s2, .L0000049c
    nop
    bnez       $s6, .L00000398
    nop
    lui        $a5,0xfff
    beq        $s8, $v1, .L0000038c
    ld         $a4,16($sp)
    lw         $a4,56($a4)
    ori        $a5,$a5,0xffff
    and        $a4,$a4,$a5
    srl        $a4,$a4,0x1b
    lui        $v1,0x800
    beqz       $a4, .L00000594
    ld         $a3,16($sp)
    cache      0x14,0($sp)
    lw         $at,56($s8)
    li         $a2,22
    or         $at,$at,$v1
    sw         $at,56($s8)
    lui        $v1,0xf7ff
    daddiu     $a3,$a3,124
    ld         $at,16($sp)
    ori        $v1,$v1,0xffff
.L00000564:
    cache      0x14,0($sp)
    addiu      $a2,$a2,-1
    daddu      $a4,$v0,$a3
    daddu      $a5,$v0,$a6
    lw         $a4,0($a4)
    addiu      $v0,$v0,4
    bgtz       $a2, .L00000564
    sw         $a4,0($a5)
    cache      0x14,0($sp)
    lw         $a5,56($at)
    and        $a5,$a5,$v1
    sw         $a5,56($at)
.L00000594:
    move       $a0,$s5
    move       $a1,$s8
    jal        MgrasCtxsw
    ld         $a2,0($sp)
    bltz       $v0, .L000006fc
    nop
    li         $s6,1
    b          .L0000038c
    nop
.L000005b8:
    ld         $a1,-30720($gp)
    li         $a0,4
    li         $s0,255
    jal        cmn_err
    daddiu     $a1,$a1,48
    b          .L000004e8
    li         $v0,2040
.L000005d4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,136
    move       $a0,$s5
    jal        MgrasCleanTexStruct
    move       $a1,$s1
.L000005f0:
    ld         $s1,48($sp)
    ld         $s0,120($sp)
    ld         $s7,112($sp)
    ld         $s4,104($sp)
    ld         $a4,8($sp)
    ld         $s3,96($sp)
    ld         $s8,40($sp)
    beqz       $a4, .L0000063c
    ld         $s2,32($sp)
    ld         $a0,208($s5)
    ld         $s1,48($sp)
    ld         $s0,120($sp)
    ld         $s7,112($sp)
    ld         $s4,104($sp)
    ld         $s3,96($sp)
    ld         $s8,40($sp)
    li         $a1,2
    jal        MgrasResetTxTbl_Kern
    ld         $s2,32($sp)
.L0000063c:
    ld         $a0,24($sp)
    jal        mutex_unlock
    ld         $s5,56($sp)
    ld         $ra,64($sp)
    move       $v0,$s6
    ld         $s6,72($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L0000065c:
    ld         $at,88($sp)
    li         $a5,-1
    beq        $v0, $a5, .L00000704
    daddu      $at,$s0,$at
    cache      0x14,0($sp)
    sd         $zero,0($s4)
    b          .L000003b0
    sb         $zero,0($at)
.L0000067c:
    jal        MgrasFinish
    ld         $a0,208($s5)
    ld         $a0,208($s5)
    jal        _MgrasWriteTexBase
    move       $a1,$zero
    ld         $a2,1744($s5)
    ld         $a0,208($s5)
    li         $a1,2
    lw         $a3,8($a2)
    move       $a4,$zero
    jal        MgrasInstallTxTbl_Kern
    ld         $a2,0($a2)
    li         $a4,1
    b          .L0000046c
    sd         $a4,8($sp)
.L000006b8:
    jal        MgrasFinish
    ld         $a0,208($s5)
    ld         $a0,208($s5)
    jal        _MgrasWriteTexBase
    move       $a1,$zero
    ld         $a2,1744($s5)
    ld         $a0,208($s5)
    li         $a1,2
    lw         $a3,8($a2)
    move       $a4,$zero
    jal        MgrasInstallTxTbl_Kern
    ld         $a2,0($a2)
    li         $a4,1
    b          .L00000398
    sd         $a4,8($sp)
.L000006f4:
    b          .L000005f0
    li         $s6,-1
.L000006fc:
    b          .L000005f0
    li         $s6,-1
.L00000704:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,88
    move       $a0,$s5
    jal        MgrasCleanTexStruct
    move       $a1,$s2
    b          .L000005f0
    nop

glabel MgrasCleanTexStruct
    b          .L00000758
    move       $a3,$zero
.L00000730:
    cache      0x14,0($sp)
    ld         $v1,1744($a0)
    ld         $v1,16($v1)
    sd         $v1,0($a5)
    ld         $v0,1744($a0)
    ld         $at,16($a4)
    sd         $at,16($v0)
    sd         $zero,16($a4)
.L00000750:
    beqz       $a2, .L00000794
    nop
.L00000758:
    cache      0x14,0($sp)
    ld         $at,1744($a0)
    daddu      $at,$at,$a3
    sb         $zero,32($at)
    ld         $a5,1744($a0)
    dsll       $a4,$a3,0x3
    daddu      $a5,$a5,$a4
    sd         $zero,288($a5)
    daddu      $a4,$a4,$a1
    ld         $a5,16($a4)
    addiu      $a3,$a3,1
    beqz       $a5, .L00000750
    slti       $a2,$a3,256
    b          .L00000730
    nop
.L00000794:
    cache      0x14,0($sp)
    jr         $ra
    sh         $zero,0($a1)
