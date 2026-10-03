.section .text
.set noat
.set noreorder


glabel MgrasInitBoardGfx
    daddiu     $sp,$sp,-80
    sd         $s1,24($sp)
    lbu        $a6,44($a1)
    move       $a3,$a2
    move       $s1,$a2
    sd         $s0,8($sp)
    move       $a2,$zero
    lbu        $a5,43($a1)
    move       $s0,$a1
    sd         $s7,16($sp)
    li         $a1,15
    sll        $a6,$a6,0x8
    move       $s7,$a0
    sll        $a5,$a5,0x10
    lbu        $a4,45($s0)
    sd         $ra,0($sp)
    li         $a0,7
    or         $a5,$a5,$a6
    jal        add_to_inventory
    or         $a4,$a4,$a5
    lbu        $at,54($s0)
    beqz       $at, .L00000074
    nop
    li         $a1,2
    li         $a0,17
    move       $a2,$zero
    move       $a3,$s1
    jal        add_to_inventory
    move       $a4,$zero
.L00000074:
    sd         $s4,32($sp)
    jal        kern_malloc
    li         $a0,2320
    move       $s4,$v0
    sd         $s2,40($sp)
    ld         $s2,-30720($gp)
    beqz       $v0, .L0000014c
    move       $s1,$v0
.L00000094:
    move       $a0,$s4
    jal        bzero
    li         $a1,2320
    cache      0x14,0($sp)
    sd         $s0,200($s4)
    sd         $s7,208($s4)
    lw         $v1,0($gp)
    ld         $s7,16($sp)
    ld         $s0,8($sp)
    beqz       $v1, .L00000164
    ld         $s4,32($sp)
.L000000c0:
    cache      0x14,0($sp)
    sw         $zero,1968($s1)
    daddiu     $a2,$s1,232
    sd         $a2,96($s1)
    li         $a1,40
    li         $a0,1
    sw         $a0,20($s1)
    sw         $a1,88($s1)
    jal        MgrasEramManagerTimeout
    move       $a0,$s1
    jal        MgrasRetraceInit
    move       $a0,$s1
    daddiu     $a1,$s2,40
    jal        spinlock_init
    daddiu     $a0,$s1,408
    li         $a3,-1
    daddiu     $a2,$s2,56
    move       $a1,$zero
    jal        init_mutex
    daddiu     $a0,$s1,2280
    li         $a3,-1
    daddiu     $a2,$s2,80
    move       $a1,$zero
    jal        init_mutex
    daddiu     $a0,$s1,2304
    ld         $a2,200($s1)
    ld         $a0,-30712($gp)
    move       $a1,$s1
    jal        GfxRegisterBoard
    ld         $s2,40($sp)
    ld         $ra,0($sp)
    move       $v0,$s1
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000014c:
    ld         $s2,-30720($gp)
    move       $a0,$zero
    jal        cmn_err
    move       $a1,$s2
    b          .L00000094
    nop
.L00000164:
    lw         $a6,0($gp)
    lw         $a3,0($gp)
    li         $a5,100
    slti       $t1,$a6,0
    ld         $s7,16($sp)
    slti       $t0,$a3,0
    movn       $a6,$zero,$t1
    ld         $s0,8($sp)
    movn       $a3,$zero,$t0
    slt        $a7,$a5,$a6
    ld         $s4,32($sp)
    slt        $a4,$a5,$a3
    movn       $a6,$a5,$a7
    sw         $a6,0($gp)
    movn       $a3,$a5,$a4
    jal        kabi_num_lockable_pages
    sw         $a3,0($gp)
    dsll       $v0,$v0,0xe
    lui        $at,0x400
    sll        $v0,$v0,0x0
    slt        $at,$at,$v0
    bnez       $at, .L000001f0
    nop
    jal        kabi_num_lockable_pages
    nop
    lw         $at,0($gp)
    dmult      $at,$v0
    mflo       $a5
    li         $a4,100
    daddiu     $a5,$a5,99
    ddiv       $zero,$a5,$a4
    teq        $a4,$zero,0x7
    mflo       $v1
    b          .L00000244
    sw         $v1,0($gp)
.L000001f0:
    lw         $a0,0($gp)
    sll        $a0,$a0,0xc
    li         $v1,100
    addiu      $a0,$a0,99
    div        $zero,$a0,$v1
    teq        $v1,$zero,0x7
    mflo       $v0
    jal        kabi_num_lockable_pages
    sw         $v0,0($gp)
    lw         $a4,0($gp)
    daddiu     $v1,$v0,-4096
    dmult      $v1,$a4
    mflo       $v0
    li         $at,100
    daddiu     $v0,$v0,99
    ddiv       $zero,$v0,$at
    lw         $a5,0($gp)
    mflo       $a4
    teq        $at,$zero,0x7
    daddu      $a4,$a4,$a5
    sw         $a4,0($gp)
.L00000244:
    li         $a5,85
    sw         $a5,0($gp)
    sw         $zero,0($gp)
    b          .L000000c0
    sw         $zero,0($gp)

glabel MgrasFindBoardAddr
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    dsll       $s0,$a0,0x2
    ld         $t8,-30704($gp)
    dsubu      $s0,$s0,$a0
    dsll       $s0,$s0,0x4
    daddu      $s0,$s0,$t8
    ld         $s0,0($s0)
    move       $a1,$a0
    sd         $ra,0($sp)
    jal        MgrasProbe
    move       $a0,$s0
    beqz       $v0, .L000002a0
    ld         $ra,0($sp)
.L00000290:
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000002a0:
    b          .L00000290
    move       $s0,$zero

glabel mgras_earlyinit
    li         $at,1
    sw         $at,-30720($gp)
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s2,8($sp)
    sd         $s1,16($sp)
    sd         $s0,24($sp)
    move       $s1,$zero
    ld         $s2,-30704($gp)
    b          .L00000318
    move       $s0,$zero
.L000002d4:
    cache      0x14,0($sp)
    dsll       $v1,$s0,0x2
    dsubu      $v1,$v1,$s0
    dsll       $v1,$v1,0x4
    daddu      $v1,$v1,$s2
    ld         $v1,16($v1)
    move       $a0,$v0
    move       $a1,$s0
    jal        mgrasInitBoard
    sb         $zero,74($v1)
.L000002fc:
    li         $a2,1
    beq        $s1, $a2, .L00000380
    nop
.L00000308:
    addiu      $s0,$s0,1
    slti       $a3,$s0,2
    beqz       $a3, .L00000350
    nop
.L00000318:
    jal        MgrasFindBoardAddr
    move       $a0,$s0
    beqz       $v0, .L00000308
    li         $v1,1
    lw         $at,-30720($gp)
    bnez       $at, .L000002d4
    addiu      $s1,$s1,1
    bne        $s1, $v1, .L00000308
    nop
    move       $a0,$v0
    jal        mgrasInitBoard
    move       $a1,$s0
    b          .L000002fc
    nop
.L00000350:
    sw         $zero,-30720($gp)
    ld         $s0,24($sp)
    lw         $a2,-30720($gp)
    ld         $ra,0($sp)
    sltu       $v0,$zero,$s1
    ld         $s1,16($sp)
    sltu       $a3,$zero,$a2
    ld         $s2,8($sp)
    movn       $a2,$zero,$a3
    daddiu     $sp,$sp,32
    jr         $ra
    sw         $a2,-30720($gp)
.L00000380:
    dsll       $a0,$s0,0x2
    dsubu      $a0,$a0,$s0
    dsll       $a0,$a0,0x4
    ld         $a1,-30696($gp)
    daddu      $a0,$a0,$s2
    ld         $a2,16($a0)
    ld         $a0,0($a0)
    lhu        $a3,34($a2)
    jal        htp_register_board
    lhu        $a2,32($a2)
    b          .L00000308
    nop

glabel mgras_init
    daddiu     $sp,$sp,-32
    sd         $s5,24($sp)
    sd         $ra,16($sp)
    sd         $s7,0($sp)
    sd         $s1,8($sp)
    ld         $s7,-30704($gp)
    b          .L000003e0
    move       $s1,$zero
.L000003d0:
    addiu      $s1,$s1,1
    slti       $at,$s1,2
    beqz       $at, .L00000418
    nop
.L000003e0:
    dsll       $s5,$s1,0x2
    dsubu      $s5,$s5,$s1
    dsll       $s5,$s5,0x4
    daddu      $s5,$s5,$s7
    lw         $v0,24($s5)
    beqz       $v0, .L000003d0
    nop
    ld         $a1,16($s5)
    ld         $a0,0($s5)
    jal        MgrasInitBoardGfx
    move       $a2,$s1
    cache      0x14,0($sp)
    b          .L000003d0
    sd         $v0,8($s5)
.L00000418:
    jal        MgrasInitGioIntrVectors
    nop
    ld         $ra,16($sp)
    ld         $s1,8($sp)
    ld         $s5,24($sp)
    ld         $s7,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasSetGioVectors
    daddiu     $sp,$sp,-48
    sd         $s1,8($sp)
    dsll       $s1,$a0,0x2
    ld         $t8,-30704($gp)
    dsubu      $s1,$s1,$a0
    dsll       $s1,$s1,0x4
    sd         $s0,0($sp)
    daddu      $s1,$s1,$t8
    move       $s0,$a0
    lw         $s1,36($s1)
    sd         $ra,16($sp)
    move       $a0,$zero
    move       $a3,$s0
    ld         $a2,-30688($gp)
    jal        setgiovector
    move       $a1,$s1
    move       $a1,$s1
    li         $a0,1
    ld         $a2,-30680($gp)
    jal        setgiovector
    move       $a3,$s0
    move       $a1,$s1
    li         $a0,2
    ld         $a2,-30672($gp)
    jal        setgiovector
    move       $a3,$s0
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasInitGioIntrVectors
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    sd         $s5,16($sp)
    sd         $ra,0($sp)
    jal        splhi
    sd         $s8,24($sp)
    move       $s8,$v0
    move       $s1,$zero
    b          .L000004ec
    ld         $s5,-30704($gp)
.L000004dc:
    addiu      $s1,$s1,1
    slti       $at,$s1,2
    beqz       $at, .L00000518
    nop
.L000004ec:
    dsll       $v1,$s1,0x2
    dsubu      $v1,$v1,$s1
    dsll       $v1,$v1,0x4
    daddu      $v1,$v1,$s5
    lw         $v1,24($v1)
    beqz       $v1, .L000004dc
    nop
    jal        MgrasSetGioVectors
    move       $a0,$s1
    b          .L000004dc
    nop
.L00000518:
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s1,8($sp)
    ld         $s5,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mgrasConfigureXMAP
    lui        $a3,0x7
    daddu      $a3,$a0,$a3
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    li         $a2,1
    lui        $v1,0x6
    bnez       $at, .L00000570
    daddu      $v1,$a0,$v1
.L0000055c:
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L0000055c
    nop
.L00000570:
    cache      0x14,0($sp)
    sb         $a2,7304($v1)
    li         $a0,72
    sb         $a0,7432($v1)
    sb         $zero,7304($v1)
    lbu        $v0,44($a1)
    addiu      $v0,$v0,-1
    lui        $a0,0x8
    andi       $v0,$v0,0x3
    ori        $a0,$a0,0x73f
    sll        $v0,$v0,0x14
    or         $v0,$v0,$a0
    jr         $ra
    sw         $v0,7424($v1)

glabel mgrasInitBoard
    daddiu     $sp,$sp,-80
    sd         $s2,56($sp)
    sd         $s1,32($sp)
    dsll       $s2,$a1,0x2
    ld         $t8,-30704($gp)
    dsubu      $s2,$s2,$a1
    sd         $ra,24($sp)
    dsll       $s2,$s2,0x4
    sd         $s0,16($sp)
    daddu      $s2,$s2,$t8
    move       $s0,$a0
    jal        MgrasReset
    ld         $s1,16($s2)
    lw         $at,28($s2)
    beqz       $at, .L00000720
    nop
    jal        MgrasInitDCBctrl
    move       $a0,$s0
    move       $a0,$s0
    jal        mgrasConfigureXMAP
    move       $a1,$s1
.L000005fc:
    lbu        $v0,40($s1)
    beqz       $v0, .L00000734
    nop
.L00000608:
    jal        MgrasReset
    move       $a0,$s0
    move       $a0,$s0
    jal        mgrasConfigureXMAP
    move       $a1,$s1
    lw         $a4,0($gp)
    move       $a6,$zero
    daddiu     $v0,$s1,32
    ld         $a5,-30664($gp)
    blez       $a4, .L00000664
    move       $a0,$zero
    b          .L00000644
    lbu        $a2,41($s1)
.L0000063c:
    beqz       $v1, .L00000664
    nop
.L00000644:
    dsll       $a1,$a0,0x3
    daddu      $a1,$a1,$a5
    lw         $a3,0($a1)
    addiu      $a0,$a0,1
    bne        $a3, $a2, .L0000063c
    slt        $v1,$a0,$a4
    b          .L0000063c
    lw         $a6,4($a1)
.L00000664:
    lbu        $a3,44($s1)
    li         $at,2
    daddiu     $v1,$s1,34
    sd         $v1,40($sp)
    sd         $v0,48($sp)
    bne        $a3, $at, .L000006b4
    dsll       $a4,$a6,0x3
    ld         $a1,-30656($gp)
    daddu      $a1,$a4,$a1
    sd         $a1,0($sp)
    move       $a0,$s0
    jal        MgrasRecordTiming
    ld         $a1,0($a1)
    ld         $a1,48($sp)
    ld         $a0,0($sp)
    ld         $a2,40($sp)
    jal        MgrasCalcScreenSize
    ld         $a0,0($a0)
    b          .L000006e0
    nop
.L000006b4:
    ld         $a1,-30648($gp)
    daddu      $a1,$a4,$a1
    sd         $a1,8($sp)
    move       $a0,$s0
    jal        MgrasRecordTiming
    ld         $a1,0($a1)
    ld         $a1,48($sp)
    ld         $a0,8($sp)
    ld         $a2,40($sp)
    jal        MgrasCalcScreenSize
    ld         $a0,0($a0)
.L000006e0:
    move       $a0,$s0
    jal        MgrasInitHQ
    move       $a1,$zero
    move       $a0,$s0
    jal        MgrasInitRasterBackend
    move       $a1,$s1
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    li         $a3,1
    cache      0x14,0($sp)
    sw         $a3,68($s1)
    ld         $s1,32($sp)
    sw         $a3,32($s2)
    ld         $s2,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000720:
    move       $a0,$s0
    jal        MgrasGatherInfo
    move       $a1,$s1
    b          .L000005fc
    nop
.L00000734:
    lbu        $at,50($s1)
    slti       $at,$at,3
    beqz       $at, .L00000608
    nop
    cache      0x14,0($sp)
    lw         $v0,0($gp)
    li         $a0,-129
    ld         $v1,-30720($gp)
    and        $v0,$v0,$a0
    ori        $v0,$v0,0x40
    sw         $v0,0($gp)
    jal        flushbus
    sw         $v0,0($v1)
    b          .L00000608
    nop

glabel MgrasProbe
    daddiu     $sp,$sp,-48
    sd         $a1,16($sp)
    sd         $ra,0($sp)
    sd         $a0,8($sp)
    jal        badaddr
    li         $a1,4
    li         $v1,16
    beqz       $v0, .L000007a0
    ld         $ra,0($sp)
    move       $v0,$zero
.L00000798:
    jr         $ra
    daddiu     $sp,$sp,48
.L000007a0:
    ld         $a0,8($sp)
    lw         $a0,0($a0)
    andi       $at,$a0,0x7f
    move       $v0,$zero
    lui        $a2,0x1
    and        $a2,$a0,$a2
    beq        $at, $v1, .L000007c8
    srl        $a2,$a2,0x10
    b          .L00000798
    nop
.L000007c8:
    li         $v0,1
    beq        $a2, $v0, .L000007dc
    nop
    b          .L00000798
    move       $v0,$zero
.L000007dc:
    lui        $a3,0x2
    and        $a3,$a0,$a3
    srl        $a3,$a3,0x11
    beqz       $a3, .L000007f8
    nop
    b          .L00000798
    move       $v0,$zero
.L000007f8:
    lui        $at,0xfffc
    and        $at,$a0,$at
    srl        $at,$at,0x12
    beq        $at, $v0, .L00000814
    nop
    b          .L00000798
    move       $v0,$zero
.L00000814:
    ld         $a0,8($sp)
    li         $a1,4
    lui        $a2,0x5
    jal        badaddr
    daddu      $a0,$a0,$a2
    beqz       $v0, .L00000838
    ld         $ra,0($sp)
    b          .L00000798
    move       $v0,$zero
.L00000838:
    ld         $a0,8($sp)
    lui        $a2,0x5
    li         $a1,4
    ori        $a2,$a2,0x114
    jal        badaddr
    daddu      $a0,$a0,$a2
    beqz       $v0, .L00000860
    ld         $ra,0($sp)
    b          .L00000798
    move       $v0,$zero
.L00000860:
    cache      0x14,0($sp)
    ld         $at,16($sp)
    lw         $a2,0($gp)
    li         $v0,2050
    sllv       $v0,$v0,$at
    ld         $a3,-30704($gp)
    or         $v0,$v0,$a2
    dsll       $a2,$at,0x2
    ld         $v1,-30712($gp)
    dsubu      $a2,$a2,$at
    sw         $v0,0($gp)
    dsll       $a2,$a2,0x4
    sw         $v0,0($v1)
    li         $v1,1
    daddu      $a2,$a2,$a3
    li         $v0,1
    b          .L00000798
    sw         $v1,24($a2)

glabel MgrasGatherInfo
    daddiu     $sp,$sp,-64
    sd         $s0,0($sp)
    sd         $s2,8($sp)
    sd         $ra,16($sp)
    move       $s2,$a0
    sd         $s5,40($sp)
    jal        mgras_baseindex
    move       $s0,$a1
    move       $s5,$v0
    move       $a0,$s0
    jal        bzero
    li         $a1,204
    jal        MgrasInitDCBctrl
    move       $a0,$s2
    cache      0x14,0($sp)
    li         $a2,16
    move       $a0,$s0
    sd         $s1,32($sp)
    li         $at,1
    ld         $a1,-30720($gp)
    dsll       $v0,$s5,0x2
    lui        $s1,0x7
    lw         $v1,0($s2)
    dsubu      $v0,$v0,$s5
    lui        $s5,0x5
    daddiu     $a1,$a1,104
    ld         $a3,-30704($gp)
    dsll       $v0,$v0,0x4
    andi       $v1,$v1,0xff00
    srl        $v1,$v1,0x8
    sb         $v1,55($s0)
    daddu      $v0,$v0,$a3
    daddu      $s5,$s2,$s5
    jal        strncpy
    sw         $at,28($v0)
    cache      0x14,0($sp)
    li         $v1,204
    sw         $v1,36($s0)
    lui        $a3,0x765b
    li         $at,32397
    sw         $at,0($s5)
    daddu      $s1,$s2,$s1
    ori        $a3,$a3,0x900f
    sw         $a3,276($s5)
    lw         $a2,256($s1)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,5
    ld         $v0,-30720($gp)
    bnez       $a2, .L00000988
    ld         $s5,40($sp)
.L00000970:
    lw         $at,256($s1)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    beqz       $at, .L00000970
    nop
    sd         $s4,24($sp)
.L00000988:
    cache      0x14,0($sp)
    sd         $s4,24($sp)
    lui        $s4,0x6
    daddu      $s4,$s2,$s4
    lw         $v1,9352($s4)
    lui        $a0,0xff00
    and        $v1,$v1,$a0
    srl        $v1,$v1,0x18
    andi       $a1,$v1,0x3
    andi       $a0,$v1,0x60
    andi       $v1,$v1,0x1c
    sb         $a1,43($s0)
    sra        $v1,$v1,0x2
    sra        $a0,$a0,0x5
    sb         $a0,40($s0)
    sb         $v1,49($s0)
    jal        kopt_find
    daddiu     $a0,$v0,120
    lui        $a0,0xff00
    li         $t0,7
    beqz       $v0, .L000009f4
    li         $a1,1
    lbu        $a4,0($v0)
    beqz       $a4, .L000009f4
    addiu      $at,$a4,-48
    cache      0x14,0($sp)
    sb         $at,43($s0)
.L000009f4:
    lbu        $a4,40($s0)
    li         $a2,2
    li         $a7,4
    lw         $v0,9224($s4)
    li         $a5,3
    move       $a6,$a7
    and        $v0,$v0,$a0
    beq        $a1, $a4, .L00000cdc
    srl        $v0,$v0,0x18
    beqz       $a4, .L00000c74
    andi       $a0,$v0,0x3
    cache      0x14,0($sp)
    andi       $a3,$v0,0xc
    sb         $t0,52($s0)
    sb         $zero,51($s0)
    xor        $a4,$a0,$a5
    sra        $a3,$a3,0x2
    lbu        $v1,43($s0)
    sb         $v1,44($s0)
    sltiu      $a4,$a4,1
    xor        $a3,$a3,$a5
    movn       $a6,$zero,$a4
    sb         $a6,45($s0)
    sltiu      $a3,$a3,1
    sb         $a6,46($s0)
    movn       $a7,$zero,$a3
    beq        $v1, $a2, .L00000cfc
    sb         $a7,47($s0)
.L00000a64:
    ld         $a0,-30720($gp)
    jal        kopt_find
    daddiu     $a0,$a0,192
    beqz       $v0, .L00000aa8
    nop
    lbu        $a4,0($v0)
    beqz       $a4, .L00000d24
    nop
    cache      0x14,0($sp)
    addiu      $v0,$a4,-48
    andi       $v0,$v0,0xff
    slti       $a2,$v0,2
    beqz       $a2, .L00000aac
    sb         $v0,44($s0)
    cache      0x14,0($sp)
    b          .L00000aac
    sb         $zero,51($s0)
.L00000aa8:
    lbu        $v0,44($s0)
.L00000aac:
    blez       $v0, .L00000c0c
    nop
    lui        $a0,0x6
    li         $a1,4
    ori        $a0,$a0,0x1308
    jal        badaddr
    daddu      $a0,$s2,$a0
    beqz       $v0, .L00000d2c
    nop
    ld         $s4,24($sp)
    li         $v0,-1
    ld         $s1,32($sp)
.L00000adc:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s2,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000af0:
    lw         $a2,256($s1)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,5
    bnez       $a2, .L00000b18
    nop
.L00000b04:
    lw         $a3,256($s1)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,5
    beqz       $a3, .L00000b04
    nop
.L00000b18:
    cache      0x14,0($sp)
    lbu        $a6,4872($s4)
    lbu        $a4,5896($s4)
    move       $a0,$s2
    andi       $a6,$a6,0xf0
    andi       $a7,$a4,0x7
    sb         $a7,61($s0)
    sra        $a6,$a6,0x4
    andi       $a5,$a4,0x70
    sb         $a6,41($s0)
    sra        $a5,$a5,0x4
    andi       $a4,$a4,0x80
    move       $a1,$s0
    sb         $a5,50($s0)
    sra        $a4,$a4,0x7
    sltiu      $a4,$a4,1
    jal        mgrasConfigureXMAP
    sb         $a4,53($s0)
    lw         $at,256($s1)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    bnez       $at, .L00000b88
    nop
.L00000b74:
    lw         $v1,256($s1)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00000b74
    nop
.L00000b88:
    cache      0x14,0($sp)
    li         $at,4
    sb         $at,7304($s4)
    lw         $a3,7424($s4)
    lbu        $a2,53($s0)
    andi       $a3,$a3,0xff
    andi       $a3,$a3,0x7
    beqz       $a2, .L00000dc0
    sb         $a3,59($s0)
    cache      0x14,0($sp)
    li         $v0,255
    sb         $v0,73($s0)
    move       $a0,$s2
    jal        mgras_mco_probe
    ld         $s4,24($sp)
    cache      0x14,0($sp)
    andi       $a0,$v0,0xff
    sb         $a0,64($s0)
.L00000bd0:
    li         $v1,255
    beq        $v1, $a0, .L00000bec
    nop
    cache      0x14,0($sp)
    sb         $zero,53($s0)
    li         $a2,1
    sb         $a2,54($s0)
.L00000bec:
    cache      0x14,0($sp)
    lui        $a3,0x7
    ori        $a3,$a3,0xc578
    daddu      $a3,$a3,$s2
    lw         $a3,0($a3)
    andi       $a3,$a3,0xff
    srl        $a3,$a3,0x4
    sb         $a3,57($s0)
.L00000c0c:
    lbu        $at,43($s0)
    blez       $at, .L00000c5c
    ld         $s4,24($sp)
    cache      0x14,0($sp)
    lui        $s4,0x2
    sw         $s4,12($s1)
    li         $a2,768
    move       $a0,$s2
    ld         $a1,-30704($gp)
    move       $a4,$zero
    move       $a5,$zero
    daddiu     $a1,$a1,96
    jal        MgrasDownloadGE11Ucode
    lbu        $a3,43($s0)
    beqz       $v0, .L00000d58
    nop
    cache      0x14,0($sp)
    li         $a2,255
    sb         $a2,56($s0)
    ld         $s4,24($sp)
.L00000c5c:
    cache      0x14,0($sp)
    ld         $s1,32($sp)
    lw         $a3,0($gp)
    move       $v0,$zero
    b          .L00000adc
    sb         $a3,63($s0)
.L00000c74:
    cache      0x14,0($sp)
    andi       $at,$v0,0x70
    sra        $at,$at,0x4
    andi       $a4,$at,0xff
    sllv       $a5,$a1,$a0
    sb         $a5,46($s0)
    beq        $t0, $a4, .L00000d94
    sb         $at,52($s0)
    li         $v1,3
    beq        $a4, $v1, .L00000d94
    nop
    cache      0x14,0($sp)
    andi       $a2,$v0,0xc
    sra        $a2,$a2,0x2
    li         $v1,2
    sllv       $a2,$a1,$a2
    sb         $v1,44($s0)
    andi       $a3,$a5,0xff
    andi       $at,$a2,0xff
    sb         $a1,51($s0)
    bne        $a3, $at, .L00000da8
    sb         $a2,47($s0)
.L00000ccc:
    cache      0x14,0($sp)
    lbu        $a3,46($s0)
    b          .L00000a64
    sb         $a3,45($s0)
.L00000cdc:
    cache      0x14,0($sp)
    sb         $t0,52($s0)
    sb         $zero,51($s0)
    sb         $a1,44($s0)
    sb         $zero,45($s0)
    sb         $zero,46($s0)
    b          .L00000a64
    sb         $zero,47($s0)
.L00000cfc:
    andi       $at,$a6,0xff
    andi       $v1,$a7,0xff
    beq        $at, $v1, .L00000a64
    nop
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,136
    b          .L00000a64
    nop
.L00000d24:
    b          .L00000aac
    lbu        $v0,44($s0)
.L00000d2c:
    lui        $a0,0x6
    li         $a1,4
    ori        $a0,$a0,0x1708
    jal        badaddr
    daddu      $a0,$s2,$a0
    beqz       $v0, .L00000af0
    nop
    ld         $s4,24($sp)
    li         $v0,-1
    b          .L00000adc
    ld         $s1,32($sp)
.L00000d58:
    lw         $a2,8($s1)
    and        $a2,$a2,$s4
    bnez       $a2, .L00000d78
    nop
.L00000d68:
    lw         $a3,8($s1)
    and        $a3,$a3,$s4
    beqz       $a3, .L00000d68
    nop
.L00000d78:
    cache      0x14,0($sp)
    lw         $at,16($s1)
    sb         $at,56($s0)
    lw         $s4,20($s1)
    sb         $s4,56($s0)
    b          .L00000c5c
    ld         $s4,24($sp)
.L00000d94:
    cache      0x14,0($sp)
    sb         $a1,44($s0)
    sb         $zero,51($s0)
    b          .L00000ccc
    sb         $zero,47($s0)
.L00000da8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,136
    b          .L00000ccc
    nop
.L00000dc0:
    move       $a0,$s2
    move       $a1,$s0
    jal        mgras_fp_probe
    ld         $s4,24($sp)
    lbu        $v0,73($s0)
    beqz       $v0, .L00000e04
    nop
    cache      0x14,0($sp)
    li         $a2,255
    beq        $a2, $v0, .L00000df4
    sb         $zero,53($s0)
    cache      0x14,0($sp)
    sb         $v0,41($s0)
.L00000df4:
    cache      0x14,0($sp)
    li         $a0,255
    b          .L00000bec
    sb         $a0,64($s0)
.L00000e04:
    jal        mgras_mco_probe
    move       $a0,$s2
    cache      0x14,0($sp)
    andi       $a0,$v0,0xff
    b          .L00000bd0
    sb         $a0,64($s0)

glabel MgrasGatherDynamicInfo
    daddiu     $sp,$sp,-48
    sd         $s3,0($sp)
    ld         $s3,200($a1)
    lbu        $a3,73($s3)
    li         $at,255
    sd         $s0,8($sp)
    beqz       $a3, .L00000e5c
    move       $s0,$a1
    beq        $a3, $at, .L00000e5c
    nop
    cache      0x14,0($sp)
    sb         $a3,41($s3)
.L00000e4c:
    ld         $s0,8($sp)
    ld         $s3,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000e5c:
    bnez       $s0, .L00000ec8
    nop
.L00000e64:
    lui        $a1,0x7
    daddu      $a1,$a0,$a1
    lw         $v0,256($a1)
    andi       $v0,$v0,0x1f
    lui        $at,0x6
    sltiu      $v0,$v0,6
    ori        $at,$at,0x1308
    bnez       $v0, .L00000e9c
    daddu      $at,$at,$a0
.L00000e88:
    lw         $a2,256($a1)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,6
    beqz       $a2, .L00000e88
    nop
.L00000e9c:
    cache      0x14,0($sp)
    lbu        $at,0($at)
    andi       $at,$at,0xf0
    sra        $at,$at,0x4
    beqz       $s0, .L00000e4c
    sb         $at,41($s3)
    sd         $ra,24($sp)
    jal        mutex_unlock
    daddiu     $a0,$s0,2280
    b          .L00000e4c
    ld         $ra,24($sp)
.L00000ec8:
    sd         $a0,16($sp)
    li         $a1,25
    sd         $ra,24($sp)
    jal        mutex_lock
    daddiu     $a0,$s0,2280
    ld         $a0,16($sp)
    b          .L00000e64
    ld         $ra,24($sp)

glabel MgrasReset
    daddiu     $sp,$sp,-48
    sd         $s3,24($sp)
    sd         $ra,0($sp)
    jal        mgras_baseindex
    sd         $a0,16($sp)
    cache      0x14,0($sp)
    dsll       $t8,$v0,0x2
    ld         $t9,-30704($gp)
    dsubu      $t8,$t8,$v0
    dsll       $t8,$t8,0x4
    daddu      $t8,$t8,$t9
    sd         $t8,8($sp)
    lw         $t8,36($t8)
    li         $s3,2
    ld         $v0,-30704($gp)
    xor        $t8,$t8,$s3
    li         $t9,4
    sltiu      $t8,$t8,1
    lbu        $at,0($v0)
    movz       $s3,$t9,$t8
    andi       $s3,$s3,0xff
    nor        $v1,$s3,$zero
    and        $at,$at,$v1
    jal        flushbus
    sb         $at,0($v0)
    jal        us_delay
    li         $a0,10
    cache      0x14,0($sp)
    ld         $ra,-30704($gp)
    lbu        $t9,0($ra)
    or         $t9,$t9,$s3
    sb         $t9,0($ra)
    jal        flushbus
    nop
    cache      0x14,0($sp)
    ld         $v0,16($sp)
    lui        $v1,0x5
    ld         $ra,8($sp)
    daddu      $v0,$v0,$v1
    lui        $at,0x765b
    li         $v1,32397
    sw         $v1,0($v0)
    ori        $at,$at,0x900f
    sw         $at,276($v0)
    sw         $zero,32($ra)
    ld         $ra,0($sp)
    ld         $s3,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasInitHQ
    cache      0x14,0($sp)
    lui        $a3,0x5
    daddu      $a3,$a0,$a3
    lui        $at,0x765b
    ori        $v0,$a1,0x7e8c
    sw         $v0,0($a3)
    ori        $at,$at,0x900f
    sw         $at,276($a3)
    daddiu     $sp,$sp,-32
    lw         $a4,0($gp)
    sd         $s0,0($sp)
    li         $a5,32
    move       $s0,$a0
    blez       $a4, .L00001088
    addu       $at,$a4,$a4
    cache      0x14,0($sp)
    subu       $at,$a5,$at
    sd         $ra,8($sp)
    sw         $at,32($a3)
.L00000ff8:
    cache      0x14,0($sp)
    ld         $a0,-30696($gp)
    li         $a5,20
    sw         $a5,36($a3)
    li         $a7,100
    sw         $a7,40($a3)
    li         $a6,40
    sw         $a6,44($a3)
    sw         $a5,48($a3)
    li         $a4,4095
    sw         $a4,52($a3)
    lui        $a1,0x7
    li         $a2,2
    sw         $a2,268($a3)
    ori        $a1,$a1,0x80
    li         $a2,6
    sw         $a2,264($a3)
    daddu      $a1,$a1,$s0
    li         $a2,140
    sw         $a2,272($a3)
    sd         $a0,0($a1)
    li         $v0,-1
    sw         $v0,12($a3)
    lui        $v1,0x11
    sw         $v0,20($a3)
    ori        $v1,$v1,0xf
    sw         $v1,16($a3)
    move       $a0,$s0
    jal        MgrasInitDMA
    sw         $v0,28($a3)
    jal        MgrasInitDCBctrl
    move       $a0,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001088:
    cache      0x14,0($sp)
    sd         $ra,8($sp)
    b          .L00000ff8
    sw         $a5,32($a3)

glabel MgrasInitDCBctrl
    cache      0x14,0($sp)
    lui        $at,0x7
    daddu      $at,$a0,$at
    li         $v1,12684
    sw         $v1,-32740($at)
    li         $v0,4228
    sw         $v0,-32744($at)
    li         $a1,4236
    sw         $a1,-32756($at)
    sw         $a1,-32752($at)
    sw         $a1,-32748($at)
    li         $v1,8458
    lui        $v0,0x5
    sw         $v1,-32736($at)
    daddu      $v0,$a0,$v0
    li         $a1,4240
    sw         $a1,-32732($at)
    li         $a0,2
    sw         $a0,268($v0)
    li         $v1,6
    sw         $v1,264($v0)
    li         $at,140
    jr         $ra
    sw         $at,272($v0)

glabel MgrasInitRasterBackend
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    sd         $s1,24($sp)
    sd         $ra,0($sp)
    move       $s1,$a0
    jal        mgras_baseindex
    move       $s0,$a1
    lbu        $at,44($s0)
    sd         $v0,8($sp)
    ld         $ra,0($sp)
    blez       $at, .L0000115c
    li         $v0,-1
    jal        MgrasInitDac
    move       $a0,$s1
    move       $a0,$s1
    jal        MgrasSyncREPPs
    move       $a1,$s0
    move       $a0,$v0
    beqz       $v0, .L00001168
    ld         $ra,0($sp)
    ld         $s1,24($sp)
    move       $v0,$a0
    ld         $s0,16($sp)
.L00001154:
    jr         $ra
    daddiu     $sp,$sp,48
.L0000115c:
    ld         $s1,24($sp)
    b          .L00001154
    ld         $s0,16($sp)
.L00001168:
    move       $a0,$s1
    jal        MgrasSyncPPRDRAMs
    move       $a1,$s0
    move       $a0,$v0
    beqz       $v0, .L00001190
    ld         $ra,0($sp)
    ld         $s1,24($sp)
    move       $v0,$a0
    b          .L00001154
    ld         $s0,16($sp)
.L00001190:
    ld         $a3,8($sp)
    move       $a0,$s1
    ld         $a4,-30640($gp)
    move       $a1,$s0
    dsll       $a3,$a3,0x3
    move       $a2,$zero
    daddu      $a3,$a3,$a4
    move       $a4,$zero
    jal        MgrasSetTiming
    ld         $a3,408($a3)
    jal        MgrasInitVC3
    move       $a0,$s1
    move       $a0,$s1
    jal        MgrasInitXMAP
    move       $a1,$s0
    move       $a0,$s1
    move       $a1,$s0
    jal        MgrasInitCCR
    li         $a2,100
    move       $a0,$s1
    jal        MgrasInitRSS
    move       $a1,$s0
    move       $a0,$s1
    jal        MgrasInitCMAP
    ld         $s0,16($sp)
    move       $a0,$s1
    jal        MgrasBlankScreen
    move       $a1,$zero
    ld         $ra,0($sp)
    move       $v0,$zero
    b          .L00001154
    ld         $s1,24($sp)

glabel MgrasSetTiming
    daddiu     $sp,$sp,-144
    sd         $s0,56($sp)
    lui        $s0,0x7
    daddu      $s0,$a0,$s0
    lw         $at,256($s0)
    li         $a6,32
    sd         $s1,32($sp)
    li         $a5,12
    sd         $s2,48($sp)
    andi       $at,$at,0x1f
    sd         $s5,40($sp)
    move       $s2,$a0
    sltiu      $at,$at,3
    sd         $s3,16($sp)
    move       $s5,$a1
    move       $s1,$a3
    sd         $a2,8($sp)
    bnez       $at, .L00001274
    move       $s3,$a4
.L0000125c:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L0000125c
    nop
    sd         $s4,64($sp)
.L00001274:
    cache      0x14,0($sp)
    sd         $s4,64($sp)
    lui        $s4,0x6
    daddu      $s4,$s2,$s4
    sb         $a6,7304($s4)
    sw         $zero,7936($s4)
    sb         $a5,7304($s4)
    sw         $zero,7936($s4)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,6
    bnez       $v1, .L000012c4
    nop
.L000012a8:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L000012a8
    nop
    sd         $s6,80($sp)
    sd         $ra,72($sp)
.L000012c4:
    cache      0x14,0($sp)
    sd         $ra,72($sp)
    move       $a0,$s2
    move       $a1,$s1
    sd         $s6,80($sp)
    lui        $s6,0x4000
    jal        MgrasSetDacTiming
    sw         $s6,9224($s4)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L0000130c
    nop
.L000012f8:
    lw         $a5,256($s0)
    andi       $a5,$a5,0x1f
    sltiu      $a5,$a5,5
    beqz       $a5, .L000012f8
    nop
.L0000130c:
    beqz       $s3, .L00001330
    nop
    cache      0x14,0($sp)
    lw         $a6,2296($s3)
    ori        $a6,$a6,0x60
    ld         $s3,16($sp)
    sll        $a6,$a6,0x18
    b          .L00001340
    sw         $a6,9224($s4)
.L00001330:
    cache      0x14,0($sp)
    lui        $s3,0x6000
    sw         $s3,9224($s4)
    ld         $s3,16($sp)
.L00001340:
    cache      0x14,0($sp)
    move       $a0,$s2
    move       $a1,$s1
    lui        $t8,0x1f00
    ori        $t8,$t8,0x100
    jal        MgrasSetVC3Timing
    sw         $t8,8248($s4)
    move       $a0,$s2
    li         $a1,1
    jal        MgrasEnableVideoTiming
    ld         $s4,64($sp)
    move       $a0,$s1
    daddiu     $a2,$sp,2
    jal        MgrasCalcScreenSize
    daddiu     $a1,$sp,0
    lw         $at,0($s1)
    and        $at,$at,$s6
    lhu        $v1,2($sp)
    beqz       $at, .L00001418
    sd         $v1,24($sp)
.L00001390:
    move       $a0,$s2
    move       $a1,$s5
    ld         $s0,56($sp)
    move       $a2,$s1
    jal        MgrasSetXMAPTiming
    ld         $s3,16($sp)
    move       $a0,$s2
    jal        MgrasRecordTiming
    move       $a1,$s1
    move       $a0,$v0
    beqz       $v0, .L000013dc
    ld         $ra,72($sp)
    ld         $s5,40($sp)
    ld         $s1,32($sp)
    ld         $s6,80($sp)
    move       $v0,$a0
    ld         $s2,48($sp)
.L000013d4:
    jr         $ra
    daddiu     $sp,$sp,144
.L000013dc:
    li         $a6,255
    lw         $v1,0($s1)
    and        $v1,$v1,$s6
    beqz       $v1, .L00001494
    ld         $s6,80($sp)
.L000013f0:
    cache      0x14,0($sp)
    lbu        $a5,64($s5)
    lw         $s1,12($s1)
    sb         $s1,42($s5)
    beq        $a5, $a6, .L000014b0
    ld         $s1,32($sp)
.L00001408:
    ld         $s5,40($sp)
    move       $v0,$zero
    b          .L000013d4
    ld         $s2,48($sp)
.L00001418:
    move       $a0,$s2
    move       $a1,$s5
    jal        MgrasSetRSSTiming
    move       $a2,$s1
    ld         $at,8($sp)
    beqz       $at, .L00001390
    nop
    jal        mgras_baseindex
    move       $a0,$s2
    dsll       $s3,$v0,0x2
    dsubu      $s3,$s3,$v0
    ld         $at,-30704($gp)
    dsll       $s3,$s3,0x4
    daddu      $s3,$s3,$at
    ld         $s3,8($s3)
    ld         $v0,200($s3)
    lbu        $v0,43($v0)
    blez       $v0, .L00001390
    move       $a0,$zero
    li         $a3,0xfa00
    li         $t2,1
    li         $t1,64
    lui        $a4,0x1fc0
    lui        $a1,0x8000
    li         $a7,8033
    ld         $t0,24($sp)
    dsll32     $a7,$a7,0x3
    ori        $a1,$a1,0x8
    ld         $a2,-30688($gp)
    b          .L00001540
    addiu      $t0,$t0,-1
.L00001494:
    cache      0x14,0($sp)
    lhu        $at,0($sp)
    sh         $at,32($s5)
    lhu        $s6,2($sp)
    sh         $s6,34($s5)
    b          .L000013f0
    ld         $s6,80($sp)
.L000014b0:
    move       $a0,$s2
    move       $a1,$s5
    jal        mgras_fp_probe
    ld         $s1,32($sp)
    lbu        $v0,73($s5)
    ld         $s5,40($sp)
    beqz       $v0, .L0000158c
    ld         $ra,72($sp)
    li         $v1,255
    beq        $v1, $v0, .L0000158c
    ld         $s5,40($sp)
    li         $a5,130
    beq        $v0, $a5, .L000014f4
    nop
    li         $a6,131
    bne        $v0, $a6, .L00001408
    nop
.L000014f4:
    jal        mgras_fpi2cPanelOn
    move       $a0,$s2
    b          .L00001408
    ld         $ra,72($sp)
.L00001504:
    cache      0x14,0($sp)
    sd         $a2,128($s0)
    sw         $a1,132($s0)
    sw         $t0,128($s0)
    sw         $zero,128($s0)
    lwu        $v1,1676($s3)
    or         $v1,$v1,$a7
    sd         $v1,128($s0)
    sw         $t2,132($s0)
    sw         $a3,132($s0)
    ld         $at,200($s3)
    lbu        $at,43($at)
    slt        $at,$a0,$at
    beqz       $at, .L00001584
    nop
.L00001540:
    lw         $v0,4($s0)
    and        $v0,$v0,$a4
    lw         $a5,4($s0)
    srl        $v0,$v0,0x16
    addiu      $v0,$v0,-7
    andi       $a5,$a5,0x7f
    subu       $v0,$t1,$v0
    sltu       $a5,$v0,$a5
    beqz       $a5, .L00001504
    addiu      $a0,$a0,1
.L00001568:
    lw         $v1,4($s0)
    andi       $v1,$v1,0x7f
    sltu       $v1,$v0,$v1
    bnez       $v1, .L00001568
    nop
    b          .L00001504
    nop
.L00001584:
    b          .L00001390
    nop
.L0000158c:
    move       $v0,$zero
    b          .L000013d4
    ld         $s2,48($sp)

glabel MgrasSetDacTiming
    lui        $a3,0x7
    daddu      $a3,$a0,$a3
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    daddiu     $sp,$sp,-32
    move       $a5,$a0
    beqz       $at, .L000015cc
    ld         $a4,56($a1)
.L000015b8:
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    bnez       $at, .L000015b8
    nop
    sd         $ra,0($sp)
.L000015cc:
    cache      0x14,0($sp)
    lui        $v1,0x6
    daddu      $v1,$a5,$v1
    li         $a5,12
    sb         $a5,6161($v1)
    lbu        $a3,0($a4)
    sb         $a3,6416($v1)
    li         $a2,15
    sb         $a2,6161($v1)
    lbu        $a1,1($a4)
    sb         $a1,6416($v1)
    li         $a0,9
    sb         $a0,6161($v1)
    sd         $ra,0($sp)
    lbu        $v0,2($a4)
    li         $a0,1000
    jal        us_delay
    sb         $v0,6416($v1)
    lui        $a0,0x1
    jal        us_delay
    ori        $a0,$a0,0x86a0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasSetVC3Timing
    daddiu     $sp,$sp,-64
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    move       $s1,$a1
    sd         $s4,32($sp)
    sd         $ra,0($sp)
    lui        $s4,0x7
    move       $s0,$a0
    sd         $s8,24($sp)
    jal        mgras_baseindex
    daddu      $s4,$s0,$s4
    lw         $at,256($s4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L00001684
    move       $s8,$v0
.L0000166c:
    lw         $at,256($s4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L0000166c
    nop
    sd         $s5,40($sp)
.L00001684:
    lw         $v1,16($s1)
    lui        $a2,0x1f00
    lui        $a3,0x1f00
    ori        $a3,$a3,0x100
    sd         $s5,40($sp)
    sltiu      $v1,$v1,85
    ori        $a2,$a2,0x300
    lui        $s5,0x6
    beqz       $v1, .L000016b8
    daddu      $s5,$s0,$s5
    cache      0x14,0($sp)
    b          .L000016c0
    sw         $a2,8248($s5)
.L000016b8:
    cache      0x14,0($sp)
    sw         $a3,8248($s5)
.L000016c0:
    move       $a0,$s0
    lw         $a3,48($s1)
    move       $a2,$zero
    jal        MgrasLoadVC3SRAM
    ld         $a1,40($s1)
    lw         $at,256($s4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L000016fc
    nop
.L000016e8:
    lw         $v1,256($s4)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,6
    beqz       $v1, .L000016e8
    nop
.L000016fc:
    cache      0x14,0($sp)
    lui        $a0,0x3
    ori        $a0,$a0,0x8000
    sw         $a0,8248($s5)
    li         $a2,896
    lw         $a3,32($s1)
    move       $a0,$s0
    jal        MgrasLoadVC3SRAM
    ld         $a1,24($s1)
    lw         $a2,256($s4)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,4
    ld         $s0,8($sp)
    li         $v0,158
    bnez       $a2, .L00001750
    ld         $ra,0($sp)
.L0000173c:
    lw         $a3,256($s4)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,4
    beqz       $a3, .L0000173c
    nop
.L00001750:
    cache      0x14,0($sp)
    lw         $a3,4($s1)
    sll        $a3,$a3,0x5
    andi       $a3,$a3,0xffff
    lui        $s4,0x600
    sll        $a3,$a3,0x8
    or         $a3,$a3,$s4
    sw         $a3,8248($s5)
    lui        $a0,0x509
    lui        $a2,0x405
    sw         $a2,8248($s5)
    ori        $a0,$a0,0x3e00
    sw         $a0,8248($s5)
    lw         $a0,0($s1)
    ld         $s4,32($sp)
    andi       $at,$a0,0x2
    ld         $s5,40($sp)
    li         $a2,30
    andi       $v1,$a0,0x4
    ld         $s1,16($sp)
    sltu       $v1,$zero,$v1
    beqz       $at, .L000017c4
    movz       $v0,$a2,$v1
    andi       $at,$a0,0x8
    ld         $s5,40($sp)
    ori        $v0,$v0,0x20
    beqz       $at, .L000017c4
    ld         $s1,16($sp)
    ori        $v0,$v0,0x40
.L000017c4:
    cache      0x14,0($sp)
    dsll       $v1,$s8,0x2
    ld         $a2,-30704($gp)
    dsubu      $v1,$v1,$s8
    dsll       $v1,$v1,0x4
    ld         $s8,24($sp)
    daddu      $v1,$v1,$a2
    daddiu     $sp,$sp,64
    jr         $ra
    sw         $v0,44($v1)

glabel MgrasSetXMAPTiming
    lui        $a4,0x7
    daddu      $a4,$a0,$a4
    lw         $at,256($a4)
    andi       $at,$at,0x1f
    li         $a3,1
    sltiu      $at,$at,4
    li         $v1,72
    lui        $a5,0x6
    bnez       $at, .L00001828
    daddu      $a5,$a0,$a5
.L00001814:
    lw         $at,256($a4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,4
    beqz       $at, .L00001814
    nop
.L00001828:
    cache      0x14,0($sp)
    sb         $a3,7176($a5)
    sb         $a3,7304($a5)
    sb         $v1,7432($a5)
    lw         $v0,256($a4)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,3
    bnez       $v0, .L00001860
    li         $v1,32
.L0000184c:
    lw         $at,256($a4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L0000184c
    nop
.L00001860:
    cache      0x14,0($sp)
    sb         $v1,7304($a5)
    lw         $v0,96($a2)
    sw         $v0,7936($a5)
    li         $at,8
    sb         $at,7304($a5)
    lw         $a3,72($a2)
    sw         $a3,7936($a5)
    lw         $v0,0($a2)
    lui        $v1,0x4000
    and        $v0,$v0,$v1
    beqz       $v0, .L00001978
    nop
.L00001894:
    lw         $a3,256($a4)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,3
    bnez       $a3, .L000018bc
    li         $v0,12
.L000018a8:
    lw         $at,256($a4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L000018a8
    nop
.L000018bc:
    cache      0x14,0($sp)
    sb         $v0,7304($a5)
    lw         $at,80($a2)
    ori        $at,$at,0x100
    sw         $at,7936($a5)
    li         $a3,16
    sb         $a3,7304($a5)
    lw         $v1,84($a2)
    sw         $v1,7936($a5)
    lw         $v0,256($a4)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,3
    bnez       $v0, .L00001908
    li         $a3,20
.L000018f4:
    lw         $v1,256($a4)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,3
    beqz       $v1, .L000018f4
    nop
.L00001908:
    cache      0x14,0($sp)
    sb         $a3,7304($a5)
    lw         $v1,88($a2)
    sw         $v1,7936($a5)
    li         $v0,24
    sb         $v0,7304($a5)
    lw         $at,92($a2)
    sw         $at,7936($a5)
    lw         $a3,256($a4)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,5
    lui        $v1,0x8
    bnez       $a3, .L00001954
    ori        $v1,$v1,0x73f
.L00001940:
    lw         $at,256($a4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    beqz       $at, .L00001940
    nop
.L00001954:
    cache      0x14,0($sp)
    sb         $zero,7304($a5)
    lbu        $v0,44($a1)
    addiu      $v0,$v0,-1
    andi       $v0,$v0,0x3
    sll        $v0,$v0,0x14
    or         $v0,$v0,$v1
    jr         $ra
    sw         $v0,7424($a5)
.L00001978:
    lw         $v1,256($a4)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L000019a0
    nop
.L0000198c:
    lw         $a3,256($a4)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,5
    beqz       $a3, .L0000198c
    nop
.L000019a0:
    cache      0x14,0($sp)
    sb         $zero,7304($a5)
    lw         $v0,68($a2)
    sw         $v0,7936($a5)
    lw         $at,256($a4)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    bnez       $at, .L000019d8
    nop
.L000019c4:
    lw         $v1,256($a4)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L000019c4
    nop
.L000019d8:
    cache      0x14,0($sp)
    li         $at,4
    sb         $at,7304($a5)
    lw         $a3,76($a2)
    b          .L00001894
    sw         $a3,7936($a5)

glabel MgrasSetRSSTiming
    daddiu     $sp,$sp,-80
    sd         $s0,8($sp)
    lui        $s0,0x7
    daddu      $s0,$a0,$s0
    lw         $at,256($s0)
    sd         $s1,16($sp)
    andi       $at,$at,0x1f
    sd         $s8,24($sp)
    move       $s1,$a0
    sd         $a2,32($sp)
    beqz       $at, .L00001a34
    move       $s8,$a1
.L00001a20:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L00001a20
    nop
    sd         $ra,40($sp)
.L00001a34:
    move       $a0,$s1
    sd         $ra,40($sp)
    jal        MgrasEnableVideoTiming
    move       $a1,$zero
    cache      0x14,0($sp)
    ld         $v0,32($sp)
    lw         $a3,4($v0)
    li         $a2,768
    addiu      $a4,$a3,767
    divu       $zero,$a4,$a2
    li         $a0,192
    addiu      $a3,$a3,191
    mflo       $a1
    divu       $zero,$a3,$a0
    lw         $a3,0($sp)
    li         $a4,-4
    andi       $a1,$a1,0x3
    and        $a3,$a3,$a4
    lbu        $a4,44($s8)
    or         $a1,$a1,$a3
    li         $a3,-61
    and        $a1,$a1,$a3
    li         $a3,2
    xor        $a4,$a3,$a4
    sltiu      $a4,$a4,1
    andi       $a6,$a4,0x3
    mflo       $a5
    sll        $a6,$a6,0x6
    andi       $a5,$a5,0xf
    sll        $a5,$a5,0x2
    or         $a1,$a1,$a5
    li         $a5,-193
    and        $a1,$a1,$a5
    li         $a5,3
    movz       $a3,$a5,$a4
    li         $a4,-769
    or         $a1,$a1,$a6
    andi       $a3,$a3,0x3
    and        $a1,$a1,$a4
    sll        $a3,$a3,0x8
    or         $a1,$a1,$a3
    li         $a3,-1025
    and        $a1,$a1,$a3
    ld         $a3,-30680($gp)
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    or         $a1,$a1,$a3
    sd         $a1,128($s0)
    ld         $v1,-30672($gp)
    teq        $a2,$zero,0x7
    teq        $a0,$zero,0x7
    lwu        $v0,108($v0)
    move       $a0,$s1
    li         $a1,1
    or         $v0,$v0,$v1
    jal        MgrasEnableVideoTiming
    sd         $v0,128($s0)
    ld         $ra,40($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel MgrasRecordTiming
    daddiu     $sp,$sp,-112
    sd         $s0,72($sp)
    sd         $s1,56($sp)
    sd         $ra,48($sp)
    sd         $a0,64($sp)
    jal        mgras_baseindex
    move       $s1,$a1
    lw         $at,0($s1)
    ld         $ra,-30640($gp)
    lui        $v1,0x4000
    dsll       $s0,$v0,0x3
    and        $at,$at,$v1
    daddu      $s0,$s0,$ra
    ld         $ra,48($sp)
    beqz       $at, .L00001b94
    ld         $s0,408($s0)
    li         $a2,36
    daddiu     $a1,$sp,0
    jal        bcopy
    daddiu     $a0,$s0,100
    ld         $ra,48($sp)
    lw         $a2,76($s0)
    sw         $a2,40($sp)
.L00001b94:
    beq        $s1, $s0, .L00001cc8
    nop
    bnez       $s0, .L00001cdc
    nop
.L00001ba4:
    sd         $s2,80($sp)
    jal        kern_malloc
    li         $a0,136
    move       $s2,$v0
    move       $s0,$v0
    bnez       $v0, .L00001bd4
    ld         $ra,48($sp)
    ld         $s2,80($sp)
    ld         $s1,56($sp)
    li         $v0,12
    b          .L00001cd4
    ld         $s0,72($sp)
.L00001bd4:
    move       $a0,$s1
    move       $a1,$s2
    jal        bcopy
    li         $a2,136
    li         $a1,8
    jal        kern_calloc
    lwu        $a0,32($s2)
    cache      0x14,0($sp)
    move       $s2,$v0
    beqz       $v0, .L00001d04
    sd         $v0,24($s0)
    lwu        $a2,32($s0)
    move       $a1,$s2
    ld         $a0,24($s1)
    jal        bcopy
    daddu      $a2,$a2,$a2
    li         $a1,8
    jal        kern_calloc
    lwu        $a0,48($s0)
    cache      0x14,0($sp)
    move       $s2,$v0
    beqz       $v0, .L00001d24
    sd         $v0,40($s0)
    lwu        $a2,48($s0)
    move       $a1,$s2
    ld         $a0,40($s1)
    jal        bcopy
    daddu      $a2,$a2,$a2
    li         $a1,8
    jal        kern_calloc
    li         $a0,3
    cache      0x14,0($sp)
    move       $s2,$v0
    beqz       $v0, .L00001d4c
    sd         $v0,56($s0)
    li         $a2,3
    move       $a1,$s2
    jal        bcopy
    ld         $a0,56($s1)
    lw         $a3,0($s1)
    lui        $s2,0x4000
    and        $a3,$a3,$s2
    ld         $s1,56($sp)
    beqz       $a3, .L00001ca8
    ld         $s2,80($sp)
    li         $a2,36
    daddiu     $a1,$s0,100
    daddiu     $a0,$sp,0
    jal        bcopy
    ld         $s1,56($sp)
    cache      0x14,0($sp)
    lw         $at,40($sp)
    sw         $at,76($s0)
.L00001ca8:
    jal        mgras_baseindex
    ld         $a0,64($sp)
    cache      0x14,0($sp)
    ld         $v1,-30640($gp)
    dsll       $v0,$v0,0x3
    ld         $ra,48($sp)
    daddu      $v0,$v0,$v1
    sd         $s0,408($v0)
.L00001cc8:
    ld         $s1,56($sp)
    move       $v0,$zero
    ld         $s0,72($sp)
.L00001cd4:
    jr         $ra
    daddiu     $sp,$sp,112
.L00001cdc:
    jal        kern_free
    ld         $a0,24($s0)
    jal        kern_free
    ld         $a0,40($s0)
    jal        kern_free
    ld         $a0,56($s0)
    jal        kern_free
    move       $a0,$s0
    b          .L00001ba4
    nop
.L00001d04:
    ld         $s2,80($sp)
    move       $a0,$s0
    jal        kern_free
    ld         $s1,56($sp)
    ld         $ra,48($sp)
    li         $v0,12
    b          .L00001cd4
    ld         $s0,72($sp)
.L00001d24:
    ld         $a0,24($s0)
    ld         $s2,80($sp)
    jal        kern_free
    ld         $s1,56($sp)
    jal        kern_free
    move       $a0,$s0
    ld         $ra,48($sp)
    li         $v0,12
    b          .L00001cd4
    ld         $s0,72($sp)
.L00001d4c:
    ld         $a0,40($s0)
    ld         $s2,80($sp)
    jal        kern_free
    ld         $s1,56($sp)
    jal        kern_free
    ld         $a0,24($s0)
    jal        kern_free
    move       $a0,$s0
    ld         $ra,48($sp)
    li         $v0,12
    b          .L00001cd4
    ld         $s0,72($sp)

glabel MgrasInitDac
    lui        $a2,0x7
    daddu      $a2,$a0,$a2
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    lui        $a3,0x6
    beqz       $at, .L00001da8
    daddu      $a3,$a0,$a3
.L00001d98:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    bnez       $at, .L00001d98
    nop
.L00001da8:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,4
    bnez       $v0, .L00001dd0
    li         $at,3
.L00001dbc:
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,4
    beqz       $v1, .L00001dbc
    nop
.L00001dd0:
    cache      0x14,0($sp)
    sb         $at,6536($a3)
    li         $v0,2
    sb         $v0,6536($a3)
    sb         $at,6536($a3)
    lw         $a1,256($a2)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,3
    bnez       $a1, .L00001e0c
    li         $a0,137
.L00001df8:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L00001df8
    nop
.L00001e0c:
    cache      0x14,0($sp)
    li         $at,5
    sb         $at,6161($a3)
    sb         $a0,6416($a3)
    li         $a1,3328
    sh         $a1,6160($a3)
    li         $v1,64
    sb         $v1,6416($a3)
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    li         $at,1024
    bnez       $v0, .L00001e58
    li         $a1,255
.L00001e44:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    beqz       $v0, .L00001e44
    nop
.L00001e58:
    cache      0x14,0($sp)
    sh         $at,6160($a3)
    sb         $a1,6416($a3)
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,3
    li         $at,1792
    bnez       $v1, .L00001e90
    li         $a1,1280
.L00001e7c:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,3
    beqz       $v0, .L00001e7c
    nop
.L00001e90:
    cache      0x14,0($sp)
    sh         $a1,6160($a3)
    sb         $a0,6416($a3)
    li         $v1,1536
    sh         $v1,6160($a3)
    li         $v0,236
    sb         $v0,6416($a3)
    sh         $at,6160($a3)
    li         $a1,192
    sb         $a1,6416($a3)
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    li         $a0,6
    li         $v0,1
    beqz       $v1, .L00001ee0
    li         $a1,2048
.L00001ed0:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    bnez       $at, .L00001ed0
    nop
.L00001ee0:
    cache      0x14,0($sp)
    sh         $a1,6160($a3)
    sb         $a0,6416($a3)
    li         $v1,1026
    sh         $v1,6160($a3)
    sb         $v0,6416($a3)
    move       $a0,$zero
    b          .L00001f2c
    sh         $zero,6160($a3)
.L00001f04:
    cache      0x14,0($sp)
    sll        $v1,$at,0x6
    andi       $at,$at,0x3
    andi       $v1,$v1,0xff00
    slti       $v0,$a0,256
    or         $at,$at,$v1
    sh         $at,6288($a3)
    sh         $at,6288($a3)
    beqz       $v0, .L00001f6c
    sh         $at,6288($a3)
.L00001f2c:
    andi       $v0,$a0,0x1
    sll        $at,$a0,0x2
    addiu      $a0,$a0,1
    ori        $at,$at,0x2
    bnez       $v0, .L00001f04
    andi       $at,$at,0xffff
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L00001f04
    nop
.L00001f54:
    lw         $a1,256($a2)
    andi       $a1,$a1,0x1f
    bnez       $a1, .L00001f54
    nop
    b          .L00001f04
    nop
.L00001f6c:
    jr         $ra
    nop

glabel MgrasInitVC3
    daddiu     $sp,$sp,-64
    sd         $s1,16($sp)
    sd         $s0,32($sp)
    sd         $ra,8($sp)
    lui        $s0,0x7
    sd         $s4,24($sp)
    jal        mgras_baseindex
    move       $s1,$a0
    sh         $zero,0($sp)
    li         $at,0xffe0
    sh         $at,2($sp)
    daddu      $s0,$s1,$s0
    lw         $at,256($s0)
    lui        $a1,0x705
    li         $a5,0xffff
    ld         $v1,-30640($gp)
    andi       $at,$at,0x1f
    dsll       $a3,$v0,0x3
    sltiu      $at,$at,6
    lui        $s4,0x6
    daddu      $a3,$a3,$v1
    daddu      $s4,$s1,$s4
    bnez       $at, .L00001fe8
    ld         $a3,408($a3)
.L00001fd4:
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,6
    beqz       $v0, .L00001fd4
    nop
.L00001fe8:
    cache      0x14,0($sp)
    sw         $a1,8248($s4)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L00002010
    nop
.L00002000:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    bnez       $at, .L00002000
    nop
.L00002010:
    lw         $a0,8($a3)
    blez       $a0, .L00002060
    li         $a2,3452
    b          .L00002030
    nop
.L00002024:
    cache      0x14,0($sp)
    blez       $a0, .L00002060
    sh         $a2,8592($s4)
.L00002030:
    lw         $a1,256($s0)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,6
    bnez       $a1, .L00002024
    addiu      $a0,$a0,-1
.L00002044:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L00002044
    nop
    b          .L00002024
    nop
.L00002060:
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    lui        $a1,0x709
    bnez       $v0, .L0000208c
    ori        $a1,$a1,0x3e00
.L00002078:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00002078
    nop
.L0000208c:
    cache      0x14,0($sp)
    sh         $a5,8592($s4)
    sw         $a1,8248($s4)
    lw         $a0,8($a3)
    blez       $a0, .L000020e8
    li         $a2,18110
    b          .L000020b8
    nop
.L000020ac:
    cache      0x14,0($sp)
    blez       $a0, .L000020e8
    sh         $a2,8592($s4)
.L000020b8:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L000020ac
    addiu      $a0,$a0,-1
.L000020cc:
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,6
    beqz       $v0, .L000020cc
    nop
    b          .L000020ac
    nop
.L000020e8:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,6
    bnez       $v1, .L00002110
    nop
.L000020fc:
    lw         $a1,256($s0)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,6
    beqz       $a1, .L000020fc
    nop
.L00002110:
    cache      0x14,0($sp)
    li         $a3,2
    li         $a2,3452
    daddiu     $a1,$sp,0
    move       $a0,$s1
    jal        MgrasLoadVC3SRAM
    sh         $a5,8592($s4)
    move       $a0,$s1
    li         $a3,2
    li         $a2,18110
    jal        MgrasLoadVC3SRAM
    daddiu     $a1,$sp,0
    jal        MgrasClearCursor
    move       $a0,$s1
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    ld         $s1,16($sp)
    li         $v1,1
    lui        $a0,0x1dff
    ld         $ra,8($sp)
    bnez       $at, .L00002180
    ori        $a0,$a0,0xfc00
.L0000216c:
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    beqz       $v0, .L0000216c
    nop
.L00002180:
    cache      0x14,0($sp)
    ld         $s0,32($sp)
    sw         $a0,8248($s4)
    sb         $v1,3464($s4)
    ld         $s4,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel MgrasInitXMAP
    lui        $a3,0x7
    daddu      $a3,$a0,$a3
    lw         $at,256($a3)
    li         $a5,1
    li         $a6,8
    li         $a2,1619
    andi       $at,$at,0x1f
    lui        $v1,0x1
    sltiu      $at,$at,6
    lui        $a4,0x6
    ori        $v1,$v1,0x214
    bnez       $at, .L000021e4
    daddu      $a4,$a0,$a4
.L000021d0:
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L000021d0
    nop
.L000021e4:
    cache      0x14,0($sp)
    sb         $a5,7176($a4)
    lw         $v0,256($a3)
    andi       $v0,$v0,0x1f
    beqz       $v0, .L0000220c
    nop
.L000021fc:
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    bnez       $at, .L000021fc
    nop
.L0000220c:
    cache      0x14,0($sp)
    sb         $a5,7304($a4)
    li         $v0,72
    sb         $v0,7432($a4)
    li         $at,28
    sb         $at,7304($a4)
    sw         $a2,7936($a4)
    sb         $zero,7304($a4)
    sw         $v1,8064($a4)
    lw         $v0,256($a3)
    andi       $v0,$v0,0x1f
    move       $a0,$zero
    li         $a5,5
    beqz       $v0, .L00002258
    li         $at,4
.L00002248:
    lw         $v1,256($a3)
    andi       $v1,$v1,0x1f
    bnez       $v1, .L00002248
    nop
.L00002258:
    cache      0x14,0($sp)
    sb         $zero,7304($a4)
    lbu        $v0,44($a1)
    addiu      $v0,$v0,-1
    lui        $v1,0x48
    andi       $v0,$v0,0x3
    ori        $v1,$v1,0x73f
    sll        $v0,$v0,0x14
    or         $v0,$v0,$v1
    sw         $v0,7424($a4)
    sb         $zero,7304($a4)
    sw         $zero,7552($a4)
    sb         $at,7304($a4)
    sw         $zero,7552($a4)
    lw         $a2,256($a3)
    andi       $a2,$a2,0x1f
    beqz       $a2, .L000022b0
    nop
.L000022a0:
    lw         $v1,256($a3)
    andi       $v1,$v1,0x1f
    bnez       $v1, .L000022a0
    nop
.L000022b0:
    b          .L000022cc
    nop
.L000022b8:
    cache      0x14,0($sp)
    slti       $a2,$a0,32
    sb         $at,7304($a4)
    beqz       $a2, .L00002304
    sw         $a6,7680($a4)
.L000022cc:
    and        $v0,$a0,$a5
    sll        $at,$a0,0x2
    bne        $v0, $a5, .L000022b8
    addiu      $a0,$a0,1
    lw         $v1,256($a3)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L000022b8
    nop
.L000022ec:
    lw         $a2,256($a3)
    andi       $a2,$a2,0x1f
    bnez       $a2, .L000022ec
    nop
    b          .L000022b8
    nop
.L00002304:
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    beqz       $at, .L00002324
    move       $a0,$zero
.L00002314:
    lw         $v0,256($a3)
    andi       $v0,$v0,0x1f
    bnez       $v0, .L00002314
    nop
.L00002324:
    b          .L00002340
    nop
.L0000232c:
    cache      0x14,0($sp)
    slti       $v1,$a0,8
    sb         $a2,7304($a4)
    beqz       $v1, .L0000237c
    sw         $zero,7808($a4)
.L00002340:
    and        $at,$a0,$a5
    andi       $a2,$a0,0x1f
    addiu      $a0,$a0,1
    bne        $at, $a5, .L0000232c
    sll        $a2,$a2,0x2
    lw         $v0,256($a3)
    andi       $v0,$v0,0x1f
    beqz       $v0, .L0000232c
    nop
.L00002364:
    lw         $v1,256($a3)
    andi       $v1,$v1,0x1f
    bnez       $v1, .L00002364
    nop
    b          .L0000232c
    nop
.L0000237c:
    lw         $a2,256($a3)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,5
    lui        $v1,0x8
    bnez       $a2, .L000023a8
    ori        $v1,$v1,0x73f
.L00002394:
    lw         $at,256($a3)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    beqz       $at, .L00002394
    nop
.L000023a8:
    cache      0x14,0($sp)
    sb         $zero,7304($a4)
    lbu        $v0,44($a1)
    addiu      $v0,$v0,-1
    andi       $v0,$v0,0x3
    sll        $v0,$v0,0x14
    or         $v0,$v0,$v1
    jr         $ra
    sw         $v0,7424($a4)

glabel MgrasInitCMAP
    lui        $a2,0x7
    daddu      $a2,$a0,$a2
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L00002400
    daddiu     $sp,$sp,-32
.L000023e8:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L000023e8
    nop
    sd         $ra,0($sp)
.L00002400:
    cache      0x14,0($sp)
    li         $a2,8192
    lui        $v1,0x6
    li         $a1,1
    ori        $v1,$v1,0xd88
    move       $a3,$zero
    sd         $ra,0($sp)
    daddu      $v1,$v1,$a0
    li         $v0,1
    jal        MgrasSetColors
    sb         $v0,0($v1)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasSetColors
    daddiu     $sp,$sp,-80
    sd         $s1,8($sp)
    sd         $s0,0($sp)
    sd         $s3,24($sp)
    sd         $s4,16($sp)
    sd         $s2,32($sp)
    move       $s4,$a0
    move       $s3,$a1
    sd         $ra,40($sp)
    move       $s2,$a2
    move       $s0,$a3
    jal        mgras_baseindex
    li         $s1,-1
    lui        $a0,0x7
    ld         $ra,-30640($gp)
    daddu      $a0,$s4,$a0
    dsll       $t1,$v0,0x3
    lw         $at,256($a0)
    daddu      $t1,$t1,$ra
    ld         $t1,408($t1)
    andi       $at,$at,0x1f
    ld         $ra,40($sp)
    beqz       $at, .L000024a8
    lw         $t1,76($t1)
.L00002498:
    lw         $a4,256($a0)
    andi       $a4,$a4,0x1f
    bnez       $a4, .L00002498
    nop
.L000024a8:
    move       $a1,$zero
    move       $a2,$zero
    beqz       $s2, .L00002724
    lui        $a3,0x6
    li         $t8,1000
    li         $t2,4
    ori        $t3,$t1,0x4000
    daddu      $a6,$a3,$s4
    bnez       $s0, .L0000258c
    ld         $s4,16($sp)
.L000024d0:
    move       $a3,$a2
.L000024d4:
    andi       $at,$a2,0x1f
    beqz       $at, .L00002634
    nop
.L000024e0:
    slti       $v0,$a1,6
    bnez       $v0, .L0000250c
    nop
    lw         $v1,256($a0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L0000250c
    move       $a1,$zero
.L000024fc:
    lw         $a4,256($a0)
    andi       $a4,$a4,0x1f
    bnez       $a4, .L000024fc
    nop
.L0000250c:
    andi       $a5,$a3,0xff
    andi       $t0,$a3,0xff
    srl        $v0,$a3,0x8
    beq        $s1, $a3, .L00002594
    andi       $v0,$v0,0xff
    cache      0x14,0($sp)
    addiu      $a1,$a1,1
    sll        $at,$a3,0x8
    move       $s1,$a3
    andi       $at,$at,0xff00
    or         $at,$at,$v0
    bnez       $s0, .L0000259c
    sh         $at,3120($a6)
.L00002540:
    beqz       $s3, .L000025ac
    andi       $a7,$a3,0xff
.L00002548:
    cache      0x14,0($sp)
    sll        $v1,$a7,0x10
    sll        $v0,$a5,0x18
    or         $v0,$v0,$v1
    sll        $v1,$t0,0x8
    or         $v0,$v0,$v1
    sw         $v0,3352($a6)
.L00002564:
    addiu      $a2,$a2,1
    addiu      $s1,$s1,1
    beqz       $s0, .L00002578
    addiu      $a1,$a1,1
    daddiu     $s0,$s0,6
.L00002578:
    sltu       $a4,$a2,$s2
    beqz       $a4, .L000026d0
    nop
    beqz       $s0, .L000024d0
    nop
.L0000258c:
    b          .L000024d4
    lhu        $a3,0($s0)
.L00002594:
    beqz       $s0, .L00002540
    nop
.L0000259c:
    lbu        $t0,4($s0)
    lbu        $a7,3($s0)
    bnez       $s3, .L00002548
    lbu        $a5,2($s0)
.L000025ac:
    cache      0x14,0($sp)
    sll        $a4,$t0,0x3
    subu       $a4,$a4,$t0
    sll        $a4,$a4,0x3
    sll        $at,$a5,0x2
    sll        $v0,$a7,0x3
    addu       $at,$at,$a5
    addu       $v0,$v0,$a7
    sll        $at,$at,0x2
    sll        $v0,$v0,0x2
    subu       $at,$at,$a5
    addu       $v0,$v0,$a7
    sll        $at,$at,0x2
    sll        $v0,$v0,0x2
    subu       $at,$at,$a5
    subu       $v0,$v0,$a7
    sll        $at,$at,0x2
    addu       $a4,$a4,$t0
    sll        $v0,$v0,0x2
    subu       $v0,$v0,$a7
    subu       $at,$at,$a5
    sll        $a4,$a4,0x1
    addu       $at,$at,$v0
    addu       $a4,$a4,$at
    div        $zero,$a4,$t8
    teq        $t8,$zero,0x7
    mflo       $v0
    sll        $at,$v0,0x10
    sll        $v1,$v0,0x18
    sll        $v0,$v0,0x8
    or         $at,$at,$v1
    or         $at,$at,$v0
    b          .L00002564
    sw         $at,3352($a6)
.L00002634:
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    beqz       $at, .L00002654
    srl        $a1,$a3,0x8
.L00002644:
    lw         $v0,256($a0)
    andi       $v0,$v0,0x1f
    bnez       $v0, .L00002644
    nop
.L00002654:
    cache      0x14,0($sp)
    sb         $t2,7304($a6)
    sw         $t1,7936($a6)
    sb         $t2,7304($a6)
    sw         $t1,7936($a6)
    lw         $v1,256($a0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L00002688
    move       $s1,$a3
.L00002678:
    lw         $a4,256($a0)
    andi       $a4,$a4,0x1f
    bnez       $a4, .L00002678
    nop
.L00002688:
    lbu        $at,4616($a6)
    andi       $at,$at,0x8
    bnez       $at, .L000026a8
    sll        $v1,$a3,0x8
.L00002698:
    lbu        $v0,4616($a6)
    andi       $v0,$v0,0x8
    beqz       $v0, .L00002698
    nop
.L000026a8:
    cache      0x14,0($sp)
    andi       $a1,$a1,0xff
    andi       $v1,$v1,0xff00
    or         $v1,$v1,$a1
    sh         $v1,3120($a6)
    sh         $v1,3120($a6)
    sb         $t2,7304($a6)
    li         $a1,6
    b          .L000024e0
    sw         $t3,7936($a6)
.L000026d0:
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    ld         $s3,24($sp)
    ld         $s2,32($sp)
.L000026e0:
    lw         $a4,256($a0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,3
    bnez       $a4, .L00002708
    move       $v0,$zero
.L000026f4:
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L000026f4
    nop
.L00002708:
    cache      0x14,0($sp)
    sb         $t2,7304($a6)
    sw         $t1,7936($a6)
    sb         $t2,7304($a6)
    daddiu     $sp,$sp,80
    jr         $ra
    sw         $t1,7936($a6)
.L00002724:
    daddu      $a6,$a3,$s4
    ld         $s4,16($sp)
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    ld         $s3,24($sp)
    li         $t2,4
    b          .L000026e0
    ld         $s2,32($sp)

glabel MgrasSyncREPP
    daddiu     $sp,$sp,-128
    sd         $s0,16($sp)
    lui        $s0,0x7
    daddu      $s0,$a0,$s0
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    sll        $v1,$a2,0x1
    or         $v1,$v1,$a3
    bnez       $at, .L00002788
    sll        $v1,$v1,0x1
.L00002770:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L00002770
    nop
    sd         $s1,8($sp)
.L00002788:
    cache      0x14,0($sp)
    sd         $s1,8($sp)
    lui        $s1,0x6
    daddu      $s1,$a0,$s1
    sb         $v1,7176($s1)
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    lui        $at,0x8
    sltiu      $v0,$v0,3
    ori        $at,$at,0x73f
    li         $a0,8
    bnez       $v0, .L000027d8
    li         $v1,1619
.L000027bc:
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,3
    beqz       $a4, .L000027bc
    nop
    sd         $s2,0($sp)
    sd         $s6,48($sp)
.L000027d8:
    cache      0x14,0($sp)
    sd         $s6,48($sp)
    sd         $s2,0($sp)
    li         $s2,1
    sb         $s2,7304($s1)
    addiu      $s6,$a1,-1
    andi       $s6,$s6,0x3
    sb         $a0,7432($s1)
    sb         $zero,7304($s1)
    sll        $s6,$s6,0x14
    or         $s6,$s6,$at
    sw         $s6,7424($s1)
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    lui        $a2,0x5000
    bnez       $at, .L00002838
    li         $a4,28
.L00002820:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L00002820
    nop
    sd         $s4,56($sp)
.L00002838:
    cache      0x14,0($sp)
    sd         $s4,56($sp)
    sb         $zero,7304($s1)
    lui        $s4,0x5
    ori        $s4,$s4,0x214
    sw         $s4,8064($s1)
    sb         $a4,7304($s1)
    sw         $v1,8064($s1)
    lw         $v0,4($s0)
    andi       $v0,$v0,0x7f
    ld         $a4,-30664($gp)
    beqz       $v0, .L00002888
    sltiu      $v1,$a3,1
.L0000286c:
    lw         $at,4($s0)
    andi       $at,$at,0x7f
    bnez       $at, .L0000286c
    nop
    sd         $s5,64($sp)
    sd         $s7,72($sp)
    sd         $s8,80($sp)
.L00002888:
    cache      0x14,0($sp)
    sd         $s3,32($sp)
    sd         $ra,40($sp)
    ld         $v0,-30648($gp)
    sd         $s7,72($sp)
    sd         $s8,80($sp)
    lui        $at,0x4000
    sd         $a4,128($s0)
    movz       $at,$a2,$v1
    li         $a1,12684
    ld         $v1,-30656($gp)
    dsll32     $at,$at,0x0
    lui        $s8,0xf
    sd         $s5,64($sp)
    dsrl32     $at,$at,0x0
    li         $a2,4112
    or         $at,$at,$v1
    sd         $at,24($sp)
    li         $s7,7
    lui        $s5,0x7
    sd         $at,128($s0)
    ori        $s5,$s5,0x214
    b          .L0000296c
    sd         $v0,128($s0)
.L000028e8:
    beq        $s2, $s3, .L00002a60
    nop
.L000028f0:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    bnez       $at, .L00002918
    nop
.L00002904:
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    beqz       $v0, .L00002904
    nop
.L00002918:
    cache      0x14,0($sp)
    sb         $zero,7304($s1)
    li         $a0,5000
    jal        us_delay
    sw         $s5,8064($s1)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    li         $a0,8
    li         $a1,12684
    bnez       $v1, .L0000295c
    li         $a2,4112
.L00002948:
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,5
    beqz       $a4, .L00002948
    nop
.L0000295c:
    cache      0x14,0($sp)
    sb         $zero,7304($s1)
    beq        $s2, $s3, .L00002a60
    sw         $s4,8064($s1)
.L0000296c:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    bnez       $at, .L00002994
    nop
.L00002980:
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    beqz       $v0, .L00002980
    nop
.L00002994:
    cache      0x14,0($sp)
    sb         $s2,7304($s1)
    sb         $zero,7432($s1)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,6
    bnez       $v1, .L000029c8
    nop
.L000029b4:
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,6
    beqz       $a4, .L000029b4
    nop
.L000029c8:
    cache      0x14,0($sp)
    sb         $s7,7304($s1)
    sw         $a2,-32740($s0)
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L000029fc
    nop
.L000029e8:
    lw         $v0,256($s0)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,6
    beqz       $v0, .L000029e8
    nop
.L000029fc:
    cache      0x14,0($sp)
    lw         $a3,8064($s1)
    sw         $a1,-32740($s0)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,3
    andi       $a5,$a3,0xf
    bnez       $v1, .L00002a34
    andi       $at,$a3,0xf00
.L00002a20:
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,3
    beqz       $a4, .L00002a20
    nop
.L00002a34:
    cache      0x14,0($sp)
    sb         $s2,7304($s1)
    and        $s3,$s8,$a3
    srl        $at,$at,0x8
    sb         $a0,7432($s1)
    srl        $s3,$s3,0x10
    sb         $zero,7304($s1)
    bne        $at, $a5, .L000028e8
    sw         $s6,7424($s1)
    bne        $s2, $a5, .L000028f0
    move       $s3,$a5
.L00002a60:
    ld         $s3,32($sp)
    ld         $ra,40($sp)
    lw         $v0,256($s0)
    ld         $s6,48($sp)
    ld         $s4,56($sp)
    andi       $v0,$v0,0x1f
    ld         $s5,64($sp)
    sltiu      $v0,$v0,5
    ld         $s7,72($sp)
    lui        $at,0x1
    ld         $s8,80($sp)
    bnez       $v0, .L00002ac4
    ori        $at,$at,0x214
    ld         $s3,32($sp)
    ld         $ra,40($sp)
    ld         $s6,48($sp)
    ld         $s4,56($sp)
    ld         $s5,64($sp)
    ld         $s7,72($sp)
    ld         $s8,80($sp)
.L00002ab0:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00002ab0
    nop
.L00002ac4:
    cache      0x14,0($sp)
    ld         $v0,-30640($gp)
    ld         $v1,24($sp)
    sd         $v1,128($s0)
    sd         $v0,128($s0)
    sb         $zero,7304($s1)
    sw         $at,8064($s1)
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,6
    bnez       $a4, .L00002b08
    move       $v0,$zero
.L00002af4:
    lw         $a4,256($s0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,6
    beqz       $a4, .L00002af4
    nop
.L00002b08:
    cache      0x14,0($sp)
    ld         $s0,16($sp)
    sb         $s2,7176($s1)
    ld         $s1,8($sp)
    ld         $s2,0($sp)
    jr         $ra
    daddiu     $sp,$sp,128

glabel MgrasSyncREPPs
    daddiu     $sp,$sp,-64
    sd         $s4,32($sp)
    sd         $s1,16($sp)
    lbu        $at,44($a1)
    sd         $s2,0($sp)
    sd         $s0,8($sp)
    move       $s2,$a0
    move       $s1,$a1
    sd         $ra,24($sp)
    beqz       $at, .L00002ba4
    move       $s0,$zero
    sd         $s4,32($sp)
    sd         $ra,24($sp)
.L00002b58:
    move       $s4,$zero
.L00002b5c:
    move       $a0,$s2
    move       $a2,$s0
    lbu        $a1,44($s1)
    jal        MgrasSyncREPP
    move       $a3,$s4
    beqz       $v0, .L00002b80
    nop
    b          .L00002ba8
    move       $a0,$v0
.L00002b80:
    addiu      $s4,$s4,1
    sltiu      $v1,$s4,2
    bnez       $v1, .L00002b5c
    nop
    lbu        $a4,44($s1)
    addiu      $s0,$s0,1
    sltu       $a4,$s0,$a4
    bnez       $a4, .L00002b58
    nop
.L00002ba4:
    move       $a0,$zero
.L00002ba8:
    ld         $s0,8($sp)
    ld         $ra,24($sp)
    ld         $s1,16($sp)
    move       $v0,$a0
    ld         $s2,0($sp)
    ld         $s4,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel MgrasSyncPPRDRAMs
    daddiu     $sp,$sp,-112
    sd         $s0,16($sp)
    lui        $s0,0x7
    daddu      $s0,$a0,$s0
    lw         $at,4($s0)
    andi       $at,$at,0x7f
    sd         $s6,24($sp)
    sd         $a1,8($sp)
    beqz       $at, .L00002c00
    move       $s6,$a0
.L00002bf0:
    lw         $at,4($s0)
    andi       $at,$at,0x7f
    bnez       $at, .L00002bf0
    nop
.L00002c00:
    lw         $v1,0($s0)
    andi       $v1,$v1,0x2
    bnez       $v1, .L00002c28
    nop
.L00002c10:
    lw         $a2,0($s0)
    andi       $a2,$a2,0x2
    beqz       $a2, .L00002c10
    nop
    sd         $s2,80($sp)
    sd         $s7,88($sp)
.L00002c28:
    cache      0x14,0($sp)
    ld         $at,-30584($gp)
    ld         $v1,-30672($gp)
    ld         $a0,-30592($gp)
    ld         $a1,-30600($gp)
    ld         $a2,-30608($gp)
    ld         $a3,-30616($gp)
    sd         $s2,80($sp)
    ld         $s2,-30624($gp)
    sd         $s7,88($sp)
    ld         $s7,-30632($gp)
    ld         $v0,-30664($gp)
    sd         $v0,128($s0)
    sd         $s7,128($s0)
    sd         $s2,128($s0)
    sd         $a3,128($s0)
    sd         $a2,128($s0)
    sd         $a1,128($s0)
    sd         $a0,128($s0)
    sd         $v1,128($s0)
    sd         $at,128($s0)
    lw         $a3,256($s0)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,4
    bnez       $a3, .L00002ca8
    nop
.L00002c90:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,4
    beqz       $at, .L00002c90
    nop
    sd         $s8,72($sp)
.L00002ca8:
    cache      0x14,0($sp)
    sd         $s8,72($sp)
    lui        $s8,0x6
    daddu      $s8,$s6,$s8
    li         $a1,1
    sb         $a1,7176($s8)
    li         $a0,28
    sb         $a0,7304($s8)
    li         $a2,1619
    sw         $a2,7936($s8)
    lw         $v1,4($s0)
    andi       $v1,$v1,0x7f
    beqz       $v1, .L00002cf4
    nop
.L00002ce0:
    lw         $at,4($s0)
    andi       $at,$at,0x7f
    bnez       $at, .L00002ce0
    nop
    sd         $ra,48($sp)
.L00002cf4:
    sd         $ra,48($sp)
    jal        us_delay
    li         $a0,200
    sd         $s3,32($sp)
    jal        us_delay
    li         $a0,3
    cache      0x14,0($sp)
    ld         $a2,-30568($gp)
    ld         $s3,-30576($gp)
    sd         $s7,128($s0)
    sd         $s3,128($s0)
    sd         $s7,128($s0)
    sd         $s2,128($s0)
    sd         $s7,128($s0)
    sd         $a2,128($s0)
    lw         $v1,4($s0)
    andi       $v1,$v1,0x7f
    beqz       $v1, .L00002d50
    nop
.L00002d40:
    lw         $a3,4($s0)
    andi       $a3,$a3,0x7f
    bnez       $a3, .L00002d40
    nop
.L00002d50:
    jal        us_delay
    li         $a0,288
    cache      0x14,0($sp)
    ld         $v1,-30560($gp)
    sd         $s7,128($s0)
    sd         $s2,128($s0)
    sd         $s7,128($s0)
    sd         $v1,128($s0)
    lw         $at,4($s0)
    andi       $at,$at,0x7f
    beqz       $at, .L00002d90
    nop
.L00002d80:
    lw         $a2,4($s0)
    andi       $a2,$a2,0x7f
    bnez       $a2, .L00002d80
    nop
.L00002d90:
    jal        us_delay
    li         $a0,66
    jal        us_delay
    li         $a0,3
    cache      0x14,0($sp)
    ld         $v0,-30512($gp)
    ld         $v1,-30520($gp)
    sd         $s7,128($s0)
    ld         $a0,-30552($gp)
    sd         $a0,128($s0)
    ld         $a0,-30528($gp)
    ld         $a3,-30536($gp)
    ld         $a2,-30544($gp)
    ld         $at,-30560($gp)
    sd         $s7,128($s0)
    sd         $at,128($s0)
    sd         $a2,128($s0)
    sd         $a3,128($s0)
    sd         $s7,128($s0)
    sd         $s3,128($s0)
    sd         $s7,128($s0)
    sd         $s2,128($s0)
    sd         $a2,128($s0)
    sd         $a0,128($s0)
    sd         $s7,128($s0)
    sd         $s3,128($s0)
    sd         $s7,128($s0)
    sd         $s2,128($s0)
    sd         $v1,128($s0)
    sd         $v0,128($s0)
    sd         $s7,128($s0)
    sd         $s3,128($s0)
    sd         $s7,128($s0)
    sd         $s2,128($s0)
    lw         $at,4($s0)
    andi       $at,$at,0x7f
    beqz       $at, .L00002e44
    nop
.L00002e28:
    lw         $a2,4($s0)
    andi       $a2,$a2,0x7f
    bnez       $a2, .L00002e28
    nop
    sd         $s4,40($sp)
    sd         $s1,56($sp)
    sd         $s5,64($sp)
.L00002e44:
    sd         $s4,40($sp)
    ld         $s4,-30496($gp)
    sd         $s5,64($sp)
    sd         $s1,56($sp)
    ld         $s5,-30504($gp)
    move       $s1,$zero
.L00002e5c:
    cache      0x14,0($sp)
    li         $a0,1000
    sd         $s5,128($s0)
    addiu      $s1,$s1,1
    jal        us_delay
    sd         $s4,128($s0)
    sltiu      $a3,$s1,64
    bnez       $a3, .L00002e5c
    nop
    lw         $at,4($s0)
    andi       $at,$at,0x7f
    li         $t1,-1
    ld         $s4,40($sp)
    li         $a0,-1
    beqz       $at, .L00002eb4
    ld         $ra,48($sp)
    ld         $s4,40($sp)
    ld         $ra,48($sp)
.L00002ea4:
    lw         $v1,4($s0)
    andi       $v1,$v1,0x7f
    bnez       $v1, .L00002ea4
    nop
.L00002eb4:
    ld         $a2,8($sp)
    lbu        $a2,44($a2)
    move       $a4,$zero
    beqz       $a2, .L000030cc
    lui        $s5,0x8
    sd         $a4,0($sp)
    ld         $s4,-30464($gp)
    lui        $s1,0xffff
    ld         $t8,-30480($gp)
    ld         $v0,-30656($gp)
    li         $t9,-1
    lui        $a1,0x1000
.L00002ee4:
    cache      0x14,0($sp)
    ld         $a3,0($sp)
    ld         $ra,-30488($gp)
    dsll32     $a3,$a3,0x0
    dsrl32     $a3,$a3,0x0
    or         $a3,$a3,$ra
    sd         $a3,128($s0)
    move       $ra,$zero
.L00002f04:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    move       $t0,$a1
    sltiu      $at,$ra,1
    bnez       $v1, .L00002f34
    movn       $t0,$zero,$at
.L00002f20:
    lw         $a2,256($s0)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,5
    beqz       $a2, .L00002f20
    nop
.L00002f34:
    cache      0x14,0($sp)
    lui        $t3,0x800
    li         $at,4
    sb         $at,7304($s8)
    daddu      $a7,$s5,$s6
    lw         $a4,7424($s8)
    or         $t3,$t0,$t3
    addiu      $ra,$ra,1
    dsll32     $t3,$t3,0x0
    beq        $t9, $t1, .L00003188
    andi       $a4,$a4,0x7
    bne        $a4, $t1, .L000031b4
    nop
.L00002f68:
    move       $a4,$zero
    dsrl32     $t3,$t3,0x0
    b          .L00002f98
    or         $t3,$v0,$t3
.L00002f78:
    cache      0x14,0($sp)
    dsrl32     $at,$at,0x0
    or         $at,$at,$v0
    sd         $at,128($s0)
    sd         $t8,128($s0)
.L00002f8c:
    sltiu      $v1,$a4,3
    beqz       $v1, .L00003044
    nop
.L00002f98:
    cache      0x14,0($sp)
    sll        $a6,$a4,0x18
    sd         $t3,128($s0)
    or         $a6,$t0,$a6
    sd         $s3,128($s0)
    ori        $v1,$a6,0x24
    sd         $t3,128($s0)
    dsll32     $v1,$v1,0x0
    sd         $s2,128($s0)
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$v0
    sd         $v1,128($s0)
    lw         $t2,-14988($a7)
    dsll32     $at,$a6,0x0
    dsrl32     $at,$at,0x0
    or         $at,$at,$v0
    sd         $at,128($s0)
    lw         $a5,-14988($a7)
    ori        $at,$a6,0x18
    addiu      $a4,$a4,1
    dsll32     $at,$at,0x0
    beq        $t9, $a0, .L0000303c
    andi       $a5,$a5,0x1
    bne        $a5, $a0, .L00003084
    nop
.L00002ffc:
    beqz       $a0, .L0000300c
    nop
    bnez       $t1, .L00002f78
    nop
.L0000300c:
    and        $at,$s1,$t2
    ori        $a5,$a6,0x18
    srl        $at,$at,0x10
    li         $v1,5
    dsll32     $a5,$a5,0x0
    dsrl32     $a5,$a5,0x0
    beq        $at, $v1, .L000030b8
    or         $a5,$v0,$a5
    cache      0x14,0($sp)
    sd         $a5,128($s0)
    b          .L00002f8c
    sd         $s4,128($s0)
.L0000303c:
    b          .L00002ffc
    move       $a0,$a5
.L00003044:
    sltiu      $v1,$ra,2
    bnez       $v1, .L00002f04
    nop
    ld         $a3,8($sp)
    ld         $a2,0($sp)
    lbu        $a3,44($a3)
    addiu      $a2,$a2,1
    sd         $a2,0($sp)
    sltu       $a2,$a2,$a3
    bnez       $a2, .L00002ee4
    nop
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $ra,48($sp)
    b          .L000030dc
    ld         $s2,80($sp)
.L00003084:
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $ra,48($sp)
    ld         $s5,64($sp)
    ld         $s8,72($sp)
    ld         $s2,80($sp)
    li         $v0,-2
    ld         $s7,88($sp)
.L000030a4:
    ld         $s0,16($sp)
    ld         $s1,56($sp)
    ld         $s6,24($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000030b8:
    cache      0x14,0($sp)
    sd         $a5,128($s0)
    ld         $at,-30472($gp)
    b          .L00002f8c
    sd         $at,128($s0)
.L000030cc:
    ld         $v0,-30656($gp)
    ld         $s3,32($sp)
    daddu      $a7,$s5,$s6
    ld         $s2,80($sp)
.L000030dc:
    beqz       $a0, .L00003190
    ld         $s5,64($sp)
    beqz       $t1, .L00003190
    nop
    cache      0x14,0($sp)
    ld         $a2,-30448($gp)
    ld         $a3,-30664($gp)
    sd         $a3,128($s0)
    sd         $s7,128($s0)
    sd         $a2,128($s0)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,4
    bnez       $v1, .L00003130
    ld         $s7,88($sp)
    ld         $s7,88($sp)
.L0000311c:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,4
    beqz       $at, .L0000311c
    nop
.L00003130:
    cache      0x14,0($sp)
    li         $a3,1
    sb         $a3,7176($s8)
    li         $a2,28
    sb         $a2,7304($s8)
    li         $v1,1058
    sw         $v1,7936($s8)
    ld         $s8,72($sp)
.L00003150:
    move       $s1,$zero
    lui        $a0,0x2700
.L00003158:
    cache      0x14,0($sp)
    dsll32     $v1,$a0,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$v0
    sd         $v1,128($s0)
    addiu      $s1,$s1,1
    lw         $zero,-14988($a7)
    sltiu      $at,$s1,8
    bnez       $at, .L00003158
    addiu      $a0,$a0,2048
    b          .L000030a4
    move       $v0,$zero
.L00003188:
    b          .L00002f68
    move       $t1,$a4
.L00003190:
    cache      0x14,0($sp)
    ld         $s8,72($sp)
    ld         $a2,-30456($gp)
    ld         $a3,-30664($gp)
    sd         $a3,128($s0)
    sd         $s7,128($s0)
    ld         $s7,88($sp)
    b          .L00003150
    sd         $a2,128($s0)
.L000031b4:
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $ra,48($sp)
    ld         $s5,64($sp)
    ld         $s8,72($sp)
    ld         $s2,80($sp)
    li         $v0,-1
    b          .L000030a4
    ld         $s7,88($sp)

glabel MgrasInitRSS
    daddiu     $sp,$sp,-1776
    sd         $s5,1728($sp)
    sd         $s1,1736($sp)
    move       $s5,$a1
    sd         $ra,1744($sp)
    li         $a1,1728
    move       $s1,$a0
    jal        bzero
    daddiu     $a0,$sp,0
    ld         $ra,1744($sp)
    lui        $a0,0x7
    ld         $t2,-30416($gp)
    daddu      $a0,$s1,$a0
    lw         $at,4($a0)
    ld         $t3,-30424($gp)
    li         $v1,-8
    ld         $a5,-30488($gp)
    li         $v0,-9
    andi       $at,$at,0x7f
    ld         $t8,-30432($gp)
    li         $a7,-4081
    li         $a6,-4097
    li         $a1,-57
    beqz       $at, .L00003250
    ld         $s1,1736($sp)
    ld         $s1,1736($sp)
.L00003240:
    lw         $a2,4($a0)
    andi       $a2,$a2,0x7f
    bnez       $a2, .L00003240
    nop
.L00003250:
    cache      0x14,0($sp)
    lw         $t1,1096($sp)
    and        $t1,$v1,$t1
    ori        $t1,$t1,0x4
    and        $t0,$v0,$t1
    and        $a7,$t0,$a7
    and        $a6,$a7,$a6
    sw         $t0,1096($sp)
    dsll32     $a4,$a6,0x0
    sw         $a6,1096($sp)
    dsrl32     $a4,$a4,0x0
    or         $a4,$a4,$a5
    sd         $a4,128($a0)
    sw         $zero,1408($sp)
    lw         $a3,1408($sp)
    ld         $a5,-30616($gp)
    dsll32     $a3,$a3,0x0
    ld         $t9,-30440($gp)
    dsrl32     $a3,$a3,0x0
    or         $a3,$a3,$a5
    sd         $a3,128($a0)
    sd         $t9,128($a0)
    sd         $t8,128($a0)
    sd         $t3,128($a0)
    sd         $t2,128($a0)
    lw         $a2,1432($sp)
    ori        $a2,$a2,0x7
    li         $at,-449
    and        $a1,$a2,$a1
    li         $t0,-3585
    ld         $a7,-30408($gp)
    and        $at,$a1,$at
    ld         $t1,-30400($gp)
    and        $t0,$t0,$at
    sw         $a2,1432($sp)
    and        $a7,$t0,$a7
    sw         $at,1432($sp)
    dsll32     $a6,$a7,0x0
    sw         $a7,1432($sp)
    dsrl32     $a6,$a6,0x0
    or         $a6,$a6,$t1
    sd         $a6,128($a0)
    lw         $a4,1436($sp)
    ori        $a4,$a4,0xff
    ori        $a3,$a4,0xff00
    ld         $a7,-30392($gp)
    dsll32     $a2,$a3,0x0
    sw         $a3,1436($sp)
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$a7
    sd         $a2,128($a0)
    lw         $a1,1440($sp)
    and        $v1,$v1,$a1
    lui        $at,0xfff
    ori        $v1,$v1,0x1
    ori        $at,$at,0xfff0
    and        $v0,$v0,$v1
    ld         $t0,-30384($gp)
    or         $at,$v0,$at
    sw         $v1,1440($sp)
    dsll32     $a6,$at,0x0
    sw         $at,1440($sp)
    dsrl32     $a6,$a6,0x0
    or         $a6,$a6,$t0
    sd         $a6,128($a0)
    lw         $a4,1444($sp)
    ld         $a3,-30376($gp)
    li         $a6,-32761
    ori        $a4,$a4,0x7
    and        $a4,$a4,$a6
    sw         $a4,1444($sp)
    sd         $a3,128($a0)
    lw         $a2,1448($sp)
    li         $a1,-2
    ld         $v1,-30368($gp)
    li         $v0,-15
    and        $a1,$a1,$a2
    ld         $at,-30360($gp)
    and        $v0,$a1,$v0
    and        $v0,$v0,$v1
    sw         $v0,1448($sp)
    sd         $at,128($a0)
    lw         $a6,1468($sp)
    li         $a4,-4
    li         $at,-13
    and        $a4,$a4,$a6
    li         $a2,-17
    and        $a6,$at,$a4
    li         $a4,-33
    and        $a2,$a2,$a6
    sw         $a6,1468($sp)
    and        $a4,$a4,$a2
    ld         $a2,-30592($gp)
    dsll32     $a1,$a4,0x0
    sw         $a4,1468($sp)
    dsrl32     $a1,$a1,0x0
    or         $a1,$a1,$a2
    sd         $a1,128($a0)
    lw         $v1,1472($sp)
    li         $a6,-256
    lui        $a1,0xffff
    and        $v1,$a6,$v1
    ori        $a1,$a1,0xff
    ori        $v1,$v1,0x19
    sw         $v1,1472($sp)
    lui        $a2,0xfff0
    and        $v1,$a1,$v1
    ori        $a2,$a2,0xffff
    ori        $v1,$v1,0x1a00
    lui        $v0,0x8
    and        $v1,$a2,$v1
    or         $v1,$v1,$v0
    sw         $v1,1472($sp)
    ld         $a4,-30352($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a4
    sd         $v1,128($a0)
    lw         $a4,1476($sp)
    and        $a4,$a6,$a4
    ori        $a4,$a4,0x7f
    sw         $a4,1476($sp)
    and        $a4,$a1,$a4
    ori        $a4,$a4,0x8000
    and        $a4,$a2,$a4
    or         $a4,$a4,$v0
    sw         $a4,1476($sp)
    ld         $v1,-30344($gp)
    dsll32     $a4,$a4,0x0
    dsrl32     $a4,$a4,0x0
    or         $a4,$a4,$v1
    sd         $a4,128($a0)
    lw         $v1,1480($sp)
    and        $a6,$a6,$v1
    ori        $a6,$a6,0x7f
    sw         $a6,1480($sp)
    and        $a6,$a1,$a6
    ori        $a6,$a6,0x8000
    and        $a6,$a2,$a6
    or         $a6,$a6,$v0
    sw         $a6,1480($sp)
    ld         $v0,-30336($gp)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    or         $a6,$a6,$v0
    sd         $a6,128($a0)
    lw         $a4,1484($sp)
    ld         $a6,-30312($gp)
    ori        $a4,$a4,0xff
    sw         $a4,1484($sp)
    and        $a1,$a1,$a4
    ld         $a4,-30304($gp)
    and        $a2,$a2,$a1
    ld         $a1,-30328($gp)
    dsll32     $v1,$a2,0x0
    sw         $a2,1484($sp)
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a1
    sd         $v1,128($a0)
    sw         $zero,1488($sp)
    lw         $v0,1488($sp)
    ld         $a2,-30296($gp)
    ld         $v1,-30320($gp)
    dsll32     $v0,$v0,0x0
    ld         $a1,-30288($gp)
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,128($a0)
    sd         $a6,128($a0)
    sd         $a4,128($a0)
    sd         $a2,128($a0)
    sd         $a1,128($a0)
    lw         $v1,1516($sp)
    li         $v0,-4
    and        $v0,$v0,$v1
    ld         $a4,-30272($gp)
    li         $a2,-241
    and        $at,$at,$v0
    li         $v1,-769
    sw         $v0,1516($sp)
    and        $a2,$a2,$at
    ld         $a6,-30600($gp)
    li         $v0,-3073
    and        $v1,$a2,$v1
    sw         $a2,1516($sp)
    and        $v0,$v1,$v0
    ld         $a2,-30280($gp)
    dsll32     $at,$v0,0x0
    sw         $v0,1516($sp)
    dsrl32     $at,$at,0x0
    or         $at,$at,$a6
    sd         $at,128($a0)
    sd         $a2,128($a0)
    sd         $a4,128($a0)
    lw         $v1,4($a0)
    lui        $a3,0x7
    andi       $v1,$v1,0x7f
    nor        $a3,$a3,$zero
    li         $v0,-2
    beqz       $v1, .L00003584
    li         $a2,2
.L00003574:
    lw         $at,4($a0)
    andi       $at,$at,0x7f
    bnez       $at, .L00003574
    nop
.L00003584:
    cache      0x14,0($sp)
    lw         $a6,1092($sp)
    li         $v1,-7
    and        $a6,$v0,$a6
    sw         $a6,1092($sp)
    li         $at,-25
    and        $a6,$a6,$v1
    and        $a6,$a6,$at
    sw         $a6,1092($sp)
    lbu        $a4,46($s5)
    xori       $a4,$a4,0x4
    sltiu      $a4,$a4,1
    movz       $a2,$zero,$a4
    li         $v1,-97
    andi       $a2,$a2,0x3
    and        $a6,$a6,$v1
    sll        $a2,$a2,0x5
    li         $v1,-385
    or         $a6,$a6,$a2
    li         $a5,-3585
    and        $v1,$a6,$v1
    li         $a4,0xf000
    and        $a5,$a5,$v1
    nor        $a4,$a4,$zero
    ori        $a5,$a5,0x400
    lui        $at,0xfff7
    and        $a4,$a5,$a4
    lui        $a2,0x4
    and        $a3,$a4,$a3
    ori        $at,$at,0xffff
    sw         $v1,1092($sp)
    or         $a3,$a3,$a2
    ld         $a6,-30264($gp)
    and        $v1,$at,$a3
    sw         $a4,1092($sp)
    dsll32     $a5,$v1,0x0
    sw         $v1,1092($sp)
    dsrl32     $a5,$a5,0x0
    or         $a5,$a5,$a6
    sd         $a5,128($a0)
    lhu        $a4,32($s5)
    addiu      $a4,$a4,-1
    sw         $a4,1308($sp)
    lhu        $a3,34($s5)
    addiu      $a3,$a3,-1
    sw         $a3,1312($sp)
    lhu        $v1,32($s5)
    addiu      $v1,$v1,-1
    sw         $v1,1316($sp)
    lhu        $a5,34($s5)
    addiu      $a5,$a5,-1
    sw         $a5,1320($sp)
    lhu        $a4,32($s5)
    addiu      $a4,$a4,-1
    sw         $a4,1324($sp)
    lhu        $a3,34($s5)
    addiu      $a3,$a3,-1
    sw         $a3,1328($sp)
    lhu        $v1,32($s5)
    ld         $a4,-30256($gp)
    addiu      $v1,$v1,-1
    sw         $v1,1332($sp)
    ld         $a3,-30240($gp)
    lhu        $a5,34($s5)
    ld         $v1,-30224($gp)
    addiu      $a5,$a5,-1
    sw         $a5,1336($sp)
    sd         $a4,128($a0)
    ld         $a4,-30232($gp)
    ld         $a5,-30248($gp)
    sd         $a5,128($a0)
    sd         $a3,128($a0)
    ld         $a3,-30216($gp)
    sd         $a4,128($a0)
    sd         $v1,128($a0)
    ld         $v1,-30208($gp)
    sd         $a3,128($a0)
    sd         $v1,128($a0)
    lw         $s5,1308($sp)
    ld         $v1,-30200($gp)
    dsll32     $s5,$s5,0x0
    dsrl32     $s5,$s5,0x0
    or         $s5,$s5,$v1
    sd         $s5,128($a0)
    lw         $a3,1312($sp)
    ld         $s5,-30192($gp)
    dsll32     $a3,$a3,0x0
    dsrl32     $a3,$a3,0x0
    or         $a3,$a3,$s5
    sd         $a3,128($a0)
    lw         $v1,1316($sp)
    ld         $a3,-30184($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a3
    sd         $v1,128($a0)
    lw         $s5,1320($sp)
    ld         $v1,-30176($gp)
    dsll32     $s5,$s5,0x0
    dsrl32     $s5,$s5,0x0
    or         $s5,$s5,$v1
    sd         $s5,128($a0)
    lw         $v1,1324($sp)
    ld         $s5,-30168($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$s5
    sd         $v1,128($a0)
    lw         $s5,1328($sp)
    ld         $v1,-30160($gp)
    dsll32     $s5,$s5,0x0
    dsrl32     $s5,$s5,0x0
    or         $s5,$s5,$v1
    sd         $s5,128($a0)
    lw         $v1,1332($sp)
    ld         $s5,-30152($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$s5
    sd         $v1,128($a0)
    lw         $s5,1336($sp)
    ld         $v1,-30144($gp)
    dsll32     $s5,$s5,0x0
    dsrl32     $s5,$s5,0x0
    or         $s5,$s5,$v1
    sd         $s5,128($a0)
    lw         $v1,1340($sp)
    and        $v0,$v0,$v1
    li         $v1,-3
    and        $v0,$v0,$v1
    sw         $v0,1340($sp)
    li         $v1,-5
    li         $s5,-9
    and        $v0,$v0,$v1
    li         $v1,-17
    and        $s5,$s5,$v0
    sw         $s5,1340($sp)
    li         $v0,-33
    and        $v1,$v1,$s5
    and        $v0,$v0,$v1
    sw         $v0,1340($sp)
    li         $v1,-65
    and        $v0,$v0,$v1
    li         $v1,-129
    and        $v0,$v0,$v1
    sw         $v0,1340($sp)
    ld         $v1,-30136($gp)
    dsll32     $v0,$v0,0x0
    ld         $s5,-30128($gp)
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    ld         $v1,-30120($gp)
    sd         $v0,128($a0)
    sd         $s5,128($a0)
    sd         $v1,128($a0)
    lw         $s5,1380($sp)
    li         $v0,-16
    li         $v1,-241
    and        $s5,$s5,$v0
    sw         $s5,1380($sp)
    ld         $v0,-30112($gp)
    and        $v1,$v1,$s5
    li         $s5,-1793
    and        $v1,$v1,$s5
    sw         $v1,1380($sp)
    li         $s5,-14337
    and        $v1,$v1,$s5
    lui        $s5,0x2
    nor        $s5,$s5,$zero
    and        $v0,$v1,$v0
    sw         $v0,1380($sp)
    and        $s5,$v0,$s5
    lui        $v0,0x80
    lui        $v1,0x10
    nor        $v1,$v1,$zero
    or         $a2,$a2,$s5
    sw         $a2,1380($sp)
    and        $s5,$at,$a2
    lui        $a2,0x40
    and        $v1,$s5,$v1
    sw         $v1,1380($sp)
    nor        $a2,$a2,$zero
    nor        $v0,$v0,$zero
    and        $v1,$v1,$a2
    ld         $at,-30104($gp)
    and        $v0,$v1,$v0
    ld         $a2,-30096($gp)
    dsll32     $s5,$v0,0x0
    sw         $v0,1380($sp)
    dsrl32     $s5,$s5,0x0
    or         $s5,$s5,$at
    sd         $s5,128($a0)
    sd         $a2,128($a0)
    lw         $v1,1388($sp)
    li         $v0,-256
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$v1
    ld         $a2,-30088($gp)
    lui        $s5,0xf
    and        $at,$at,$v0
    sw         $v0,1388($sp)
    or         $s5,$at,$s5
    ld         $v0,-30080($gp)
    dsll32     $v1,$s5,0x0
    sw         $s5,1388($sp)
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a2
    sd         $v1,128($a0)
    sd         $v0,128($a0)
    lw         $at,4($a0)
    ld         $s5,1728($sp)
    andi       $at,$at,0x7f
    ld         $v1,-30064($gp)
    beqz       $at, .L000038f8
    ld         $a2,-29968($gp)
    ld         $s5,1728($sp)
.L000038e8:
    lw         $at,4($a0)
    andi       $at,$at,0x7f
    bnez       $at, .L000038e8
    nop
.L000038f8:
    cache      0x14,0($sp)
    ld         $at,-30072($gp)
    sd         $at,128($a0)
    ld         $at,-30048($gp)
    sd         $v1,128($a0)
    ld         $v1,-30040($gp)
    ld         $v0,-30056($gp)
    sd         $v0,128($a0)
    ld         $v0,-30032($gp)
    sd         $a1,128($a0)
    sd         $at,128($a0)
    ld         $at,-30024($gp)
    sd         $v1,128($a0)
    ld         $v1,-30016($gp)
    sd         $v0,128($a0)
    ld         $v0,-30008($gp)
    sd         $at,128($a0)
    ld         $at,-30000($gp)
    sd         $v1,128($a0)
    ld         $v1,-29992($gp)
    sd         $v0,128($a0)
    ld         $v0,-29984($gp)
    sd         $at,128($a0)
    ld         $at,-29976($gp)
    sd         $v1,128($a0)
    sd         $v0,128($a0)
    sd         $at,128($a0)
    sd         $a2,128($a0)
    lw         $v1,4($a0)
    andi       $v1,$v1,0x7f
    beqz       $v1, .L00003988
    nop
.L00003978:
    lw         $v0,4($a0)
    andi       $v0,$v0,0x7f
    bnez       $v0, .L00003978
    nop
.L00003988:
    cache      0x14,0($sp)
    lw         $at,1408($sp)
    ld         $v0,-30616($gp)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    or         $at,$at,$v0
    sd         $at,128($a0)
    sd         $t9,128($a0)
    sd         $t8,128($a0)
    sd         $t3,128($a0)
    sd         $t2,128($a0)
    lw         $a2,1432($sp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$t1
    sd         $a2,128($a0)
    lw         $v1,1436($sp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a7
    sd         $v1,128($a0)
    lw         $v0,1440($sp)
    ld         $at,-30376($gp)
    dsll32     $v0,$v0,0x0
    ld         $a2,-30360($gp)
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$t0
    sd         $v0,128($a0)
    sd         $at,128($a0)
    sd         $a2,128($a0)
    lw         $v1,1468($sp)
    ld         $a2,-30592($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a2
    sd         $v1,128($a0)
    lw         $v0,1472($sp)
    ld         $v1,-30352($gp)
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,128($a0)
    lw         $at,1476($sp)
    ld         $v0,-30344($gp)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    or         $at,$at,$v0
    sd         $at,128($a0)
    lw         $a2,1480($sp)
    ld         $at,-30336($gp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$at
    sd         $a2,128($a0)
    lw         $v1,1484($sp)
    ld         $a2,-30328($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a2
    sd         $v1,128($a0)
    lw         $v0,1488($sp)
    ld         $at,-30312($gp)
    ld         $a2,-30320($gp)
    dsll32     $v0,$v0,0x0
    ld         $v1,-30296($gp)
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$a2
    ld         $a2,-30304($gp)
    sd         $v0,128($a0)
    sd         $at,128($a0)
    sd         $a2,128($a0)
    sd         $v1,128($a0)
    sd         $a1,128($a0)
    lw         $v0,1516($sp)
    ld         $at,-30280($gp)
    ld         $v1,-30600($gp)
    dsll32     $v0,$v0,0x0
    ld         $a2,-30272($gp)
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,128($a0)
    sd         $at,128($a0)
    sd         $a2,128($a0)
    lw         $v1,4($a0)
    andi       $v1,$v1,0x7f
    beqz       $v1, .L00003af4
    ld         $at,-30488($gp)
.L00003ae4:
    lw         $v0,4($a0)
    andi       $v0,$v0,0x7f
    bnez       $v0, .L00003ae4
    nop
.L00003af4:
    cache      0x14,0($sp)
    lw         $a2,1096($sp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$at
    sd         $a2,128($a0)
    lw         $v1,1092($sp)
    ld         $a2,-30208($gp)
    ld         $at,-30216($gp)
    dsll32     $v1,$v1,0x0
    ld         $v0,-30256($gp)
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a6
    sd         $v1,128($a0)
    sd         $v0,128($a0)
    ld         $v0,-30224($gp)
    ld         $v1,-30240($gp)
    sd         $a5,128($a0)
    sd         $v1,128($a0)
    sd         $a4,128($a0)
    sd         $v0,128($a0)
    sd         $at,128($a0)
    sd         $a2,128($a0)
    lw         $v1,1308($sp)
    ld         $a2,-30200($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a2
    sd         $v1,128($a0)
    lw         $v0,1312($sp)
    ld         $v1,-30192($gp)
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,128($a0)
    lw         $at,1316($sp)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    or         $at,$at,$a3
    sd         $at,128($a0)
    lw         $a2,1320($sp)
    ld         $at,-30176($gp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$at
    sd         $a2,128($a0)
    lw         $v1,1324($sp)
    ld         $a2,-30168($gp)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a2
    sd         $v1,128($a0)
    lw         $v0,1328($sp)
    ld         $v1,-30160($gp)
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,128($a0)
    lw         $at,1332($sp)
    ld         $v0,-30152($gp)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    or         $at,$at,$v0
    sd         $at,128($a0)
    lw         $a2,1336($sp)
    ld         $at,-30144($gp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$at
    sd         $a2,128($a0)
    lw         $v1,1340($sp)
    ld         $v0,-30128($gp)
    ld         $a2,-30136($gp)
    dsll32     $v1,$v1,0x0
    ld         $at,-30120($gp)
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a2
    sd         $v1,128($a0)
    sd         $v0,128($a0)
    sd         $at,128($a0)
    lw         $a2,1380($sp)
    ld         $at,-30104($gp)
    dsll32     $a2,$a2,0x0
    ld         $v1,-30096($gp)
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$at
    sd         $a2,128($a0)
    sd         $v1,128($a0)
    lw         $v0,1388($sp)
    ld         $v1,-30088($gp)
    dsll32     $v0,$v0,0x0
    ld         $at,-30080($gp)
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,128($a0)
    daddiu     $sp,$sp,1776
    jr         $ra
    sd         $at,128($a0)

glabel MgrasVerifyVC3SRAM
    daddiu     $sp,$sp,-144
    sd         $s0,8($sp)
    lui        $s0,0x7
    daddu      $s0,$a0,$s0
    andi       $a7,$a2,0xffff
    lw         $at,256($s0)
    sll        $a7,$a7,0x8
    sd         $s6,0($sp)
    sd         $s7,24($sp)
    move       $s6,$a3
    andi       $at,$at,0x1f
    move       $s7,$zero
    sd         $s8,16($sp)
    sltiu      $at,$at,6
    move       $s8,$a1
    lui        $a1,0x700
    bnez       $at, .L00003cdc
    or         $a7,$a7,$a1
.L00003cc4:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L00003cc4
    nop
    sd         $s2,56($sp)
.L00003cdc:
    cache      0x14,0($sp)
    sd         $s2,56($sp)
    lui        $s2,0x6
    daddu      $s2,$a0,$s2
    sw         $a7,8248($s2)
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L00003d14
    nop
.L00003d00:
    lw         $t0,256($s0)
    andi       $t0,$t0,0x1f
    bnez       $t0, .L00003d00
    nop
    sd         $s1,64($sp)
.L00003d14:
    li         $v0,5
    sd         $s1,64($sp)
    beqz       $s6, .L00003e90
    move       $s1,$zero
    sd         $ra,88($sp)
    sd         $s4,80($sp)
    sd         $s3,96($sp)
    sd         $s5,72($sp)
    b          .L00003dfc
    move       $s3,$a2
.L00003d3c:
    cache      0x14,0($sp)
    andi       $v1,$s3,0xffff
    sll        $v1,$v1,0x8
    or         $v1,$a1,$v1
    sw         $v1,8248($s2)
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    beqz       $at, .L00003d70
    sd         $v1,32($sp)
.L00003d60:
    lw         $a7,256($s0)
    andi       $a7,$a7,0x1f
    bnez       $a7, .L00003d60
    nop
.L00003d70:
    lhu        $t0,8592($s2)
    li         $a0,1000
    jal        us_delay
    sd         $t0,40($sp)
    cache      0x14,0($sp)
    ld         $v1,32($sp)
    sw         $v1,8248($s2)
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    beqz       $at, .L00003dac
    nop
.L00003d9c:
    lw         $a7,256($s0)
    andi       $a7,$a7,0x1f
    bnez       $a7, .L00003d9c
    nop
.L00003dac:
    ld         $a1,-30720($gp)
    li         $a0,4
    lhu        $t0,8592($s2)
    sd         $t0,48($sp)
    jal        cmn_err
    daddiu     $a1,$a1,208
    lhu        $a3,0($s5)
    move       $a2,$s3
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a4,$s4
    ld         $a5,40($sp)
    ld         $a6,48($sp)
    jal        cmn_err
    daddiu     $a1,$a1,240
    li         $v0,5
    lui        $a1,0x700
.L00003df0:
    sltu       $a7,$s1,$s6
    beqz       $a7, .L00003e80
    addiu      $s3,$s3,1
.L00003dfc:
    dsll32     $s5,$s1,0x0
    and        $t0,$v0,$s1
    addiu      $s1,$s1,1
    dsrl32     $s5,$s5,0x0
    beq        $t0, $v0, .L00003e58
    daddu      $s5,$s5,$s5
.L00003e14:
    lhu        $s4,8592($s2)
    daddu      $s5,$s5,$s8
    lhu        $at,0($s5)
    beq        $at, $s4, .L00003df0
    nop
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L00003d3c
    addiu      $s7,$s7,1
.L00003e3c:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,6
    beqz       $v1, .L00003e3c
    nop
    b          .L00003d3c
    nop
.L00003e58:
    lw         $a7,256($s0)
    andi       $a7,$a7,0x1f
    beqz       $a7, .L00003e14
    nop
.L00003e68:
    lw         $t0,256($s0)
    andi       $t0,$t0,0x1f
    bnez       $t0, .L00003e68
    nop
    b          .L00003e14
    nop
.L00003e80:
    ld         $s5,72($sp)
    ld         $s4,80($sp)
    ld         $ra,88($sp)
    ld         $s3,96($sp)
.L00003e90:
    ld         $s0,8($sp)
    ld         $s1,64($sp)
    ld         $s2,56($sp)
    ld         $s6,0($sp)
    move       $v0,$s7
    ld         $s7,24($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,144

glabel MgrasLoadVC3SRAM
    lui        $a6,0x7
    daddu      $a6,$a0,$a6
    lw         $at,256($a6)
    daddiu     $sp,$sp,-48
    lui        $a4,0x700
    move       $a5,$zero
    andi       $at,$at,0x1f
    andi       $v1,$a2,0xffff
    sltiu      $at,$at,6
    lui        $a7,0x6
    sll        $v1,$v1,0x8
    bnez       $at, .L00003efc
    daddu      $a7,$a0,$a7
.L00003ee8:
    lw         $at,256($a6)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L00003ee8
    nop
.L00003efc:
    cache      0x14,0($sp)
    or         $v1,$v1,$a4
    sw         $v1,8248($a7)
    lw         $v0,256($a6)
    andi       $v0,$v0,0x1f
    beqz       $v0, .L00003f28
    nop
.L00003f18:
    lw         $a4,256($a6)
    andi       $a4,$a4,0x1f
    bnez       $a4, .L00003f18
    nop
.L00003f28:
    beqz       $a3, .L00003f8c
    li         $t0,5
    b          .L00003f4c
    nop
.L00003f38:
    cache      0x14,0($sp)
    sltu       $v0,$a5,$a3
    lhu        $at,0($at)
    beqz       $v0, .L00003f88
    sh         $at,8592($a7)
.L00003f4c:
    and        $v0,$a5,$t0
    daddu      $at,$a5,$a5
    addiu      $a5,$a5,1
    bne        $v0, $t0, .L00003f38
    daddu      $at,$at,$a1
    lw         $v1,256($a6)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L00003f38
    nop
.L00003f70:
    lw         $a4,256($a6)
    andi       $a4,$a4,0x1f
    bnez       $a4, .L00003f70
    nop
    b          .L00003f38
    nop
.L00003f88:
    sd         $ra,0($sp)
.L00003f8c:
    sd         $ra,0($sp)
    jal        MgrasVerifyVC3SRAM
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasClearCursor
    daddiu     $sp,$sp,-288
    sd         $s0,264($sp)
    li         $a1,256
    sd         $ra,256($sp)
    move       $s0,$a0
    jal        bzero
    daddiu     $a0,$sp,0
    move       $a0,$s0
    li         $a3,128
    li         $a2,1024
    jal        MgrasLoadVC3SRAM
    daddiu     $a1,$sp,0
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,4
    lui        $v1,0x104
    lui        $v0,0x202
    ld         $ra,256($sp)
    bnez       $at, .L00004010
    ori        $v0,$v0,0x8000
.L00003ffc:
    lw         $a1,256($a0)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,4
    beqz       $a1, .L00003ffc
    nop
.L00004010:
    cache      0x14,0($sp)
    lui        $at,0x6
    daddu      $at,$s0,$at
    sw         $v1,8248($at)
    sw         $v0,8248($at)
    lui        $s0,0x302
    sw         $s0,8248($at)
    ld         $s0,264($sp)
    jr         $ra
    daddiu     $sp,$sp,288

glabel MgrasEnableRetraceInterrupts
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        mgras_baseindex
    move       $s0,$a0
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    lui        $a3,0x6
    dsll       $v1,$v0,0x2
    ld         $ra,0($sp)
    dsubu      $v1,$v1,$v0
    bnez       $at, .L0000408c
    dsll       $v1,$v1,0x4
.L00004078:
    lw         $a1,256($a0)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,6
    beqz       $a1, .L00004078
    nop
.L0000408c:
    cache      0x14,0($sp)
    ori        $a3,$a3,0x2038
    ld         $a0,-30704($gp)
    daddu      $v1,$v1,$a0
    lw         $v0,44($v1)
    daddu      $a3,$a3,$s0
    ori        $v0,$v0,0x1
    ld         $s0,8($sp)
    lui        $at,0x1e00
    andi       $a2,$v0,0xffff
    daddiu     $sp,$sp,32
    sw         $v0,44($v1)
    sll        $a2,$a2,0x8
    or         $a2,$a2,$at
    jr         $ra
    sw         $a2,0($a3)

glabel MgrasBlackoutTiming
    daddiu     $sp,$sp,-48
    sd         $s8,8($sp)
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    move       $s0,$a0
    jal        mgras_baseindex
    move       $s8,$a1
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    dsll       $a1,$v0,0x2
    ld         $ra,0($sp)
    dsubu      $a1,$a1,$v0
    bnez       $at, .L00004124
    dsll       $a1,$a1,0x4
.L00004110:
    lw         $a2,256($a0)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,6
    beqz       $a2, .L00004110
    nop
.L00004124:
    ld         $a2,-30704($gp)
    lui        $at,0x1e00
    daddu      $a1,$a1,$a2
    li         $a3,-3
    beqz       $s8, .L00004178
    lw         $a0,44($a1)
    cache      0x14,0($sp)
    ori        $a0,$a0,0x2
    sw         $a0,44($a1)
    ld         $s8,8($sp)
.L0000414c:
    cache      0x14,0($sp)
    andi       $a2,$a0,0xffff
    lui        $a3,0x6
    sll        $a2,$a2,0x8
    ori        $a3,$a3,0x2038
    daddu      $a3,$a3,$s0
    ld         $s0,16($sp)
    daddiu     $sp,$sp,48
    or         $a2,$a2,$at
    jr         $ra
    sw         $a2,0($a3)
.L00004178:
    cache      0x14,0($sp)
    ld         $s8,8($sp)
    and        $a0,$a0,$a3
    b          .L0000414c
    sw         $a0,44($a1)

glabel MgrasEnableVideoTiming
    daddiu     $sp,$sp,-48
    sd         $s8,16($sp)
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    move       $s0,$a0
    jal        mgras_baseindex
    move       $s8,$a1
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    lui        $a1,0x1e00
    bnez       $at, .L000041dc
    ld         $ra,8($sp)
.L000041c8:
    lw         $a2,256($a0)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,6
    beqz       $a2, .L000041c8
    nop
.L000041dc:
    dsll       $a2,$v0,0x2
    lui        $a0,0x6
    ld         $a3,-30704($gp)
    beqz       $s8, .L00004224
    daddu      $a0,$s0,$a0
    cache      0x14,0($sp)
    dsubu      $a2,$a2,$v0
    dsll       $a2,$a2,0x4
    daddu      $a2,$a2,$a3
    lw         $a2,44($a2)
    ld         $s8,16($sp)
    andi       $a2,$a2,0xffff
    ld         $s0,0($sp)
    sll        $a2,$a2,0x8
    or         $a2,$a2,$a1
    sw         $a2,8248($a0)
.L0000421c:
    jr         $ra
    daddiu     $sp,$sp,48
.L00004224:
    cache      0x14,0($sp)
    sw         $a1,8248($a0)
    ld         $s8,16($sp)
    b          .L0000421c
    ld         $s0,0($sp)

glabel MgrasSetGenlock
    daddiu     $sp,$sp,-64
    sd         $s8,16($sp)
    sd         $s7,8($sp)
    sd         $s0,24($sp)
    sd         $ra,0($sp)
    move       $s0,$a0
    move       $s7,$a1
    jal        mgras_baseindex
    move       $s8,$a2
    dsll       $a0,$v0,0x2
    ld         $a1,-30704($gp)
    dsubu      $a0,$a0,$v0
    dsll       $a0,$a0,0x4
    ld         $ra,0($sp)
    daddu      $a0,$a0,$a1
    li         $v1,-33
    beqz       $s7, .L00004300
    lw         $a1,44($a0)
    cache      0x14,0($sp)
    ori        $a1,$a1,0x20
    sw         $a1,44($a0)
    beqz       $s8, .L00004314
    ld         $s7,8($sp)
.L00004294:
    cache      0x14,0($sp)
    ori        $a1,$a1,0x40
    sw         $a1,44($a0)
    ld         $s8,16($sp)
.L000042a4:
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $a3,256($a0)
    lui        $v1,0x1e00
    andi       $v0,$a1,0xffff
    andi       $a3,$a3,0x1f
    lui        $at,0x6
    sltiu      $a3,$a3,6
    sll        $v0,$v0,0x8
    ori        $at,$at,0x2038
    bnez       $a3, .L000042e8
    daddu      $at,$at,$s0
.L000042d4:
    lw         $a3,256($a0)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,6
    beqz       $a3, .L000042d4
    nop
.L000042e8:
    cache      0x14,0($sp)
    or         $s0,$v0,$v1
    sw         $s0,0($at)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00004300:
    cache      0x14,0($sp)
    ld         $s7,8($sp)
    and        $a1,$a1,$v1
    bnez       $s8, .L00004294
    sw         $a1,44($a0)
.L00004314:
    cache      0x14,0($sp)
    ld         $s8,16($sp)
    li         $a3,-65
    and        $a1,$a1,$a3
    b          .L000042a4
    sw         $a1,44($a0)

glabel MgrasDownloadHQ3Ucode
    addiu      $a7,$a2,3
    slt        $at,$a2,$zero
    movz       $a7,$a2,$at
    sra        $a7,$a7,0x2
    move       $a6,$a1
    move       $v0,$zero
    blez       $a7, .L000043a4
    move       $a5,$zero
    lui        $a4,0x4
.L00004350:
    cache      0x14,0($sp)
    dsll       $a2,$a5,0x2
    addiu      $a5,$a5,1
    slt        $a3,$a5,$a7
    daddu      $a2,$a2,$a0
    lw         $v1,0($a6)
    daddu      $a2,$a2,$a4
    sw         $v1,0($a2)
    beqz       $a3, .L000043a4
    nop
    cache      0x14,0($sp)
    dsll       $at,$a5,0x2
    addiu      $a5,$a5,1
    slt        $v1,$a5,$a7
    daddu      $at,$at,$a0
    lw         $a3,4($a6)
    daddu      $at,$at,$a4
    daddiu     $a6,$a6,8
    sw         $a3,0($at)
    bnez       $v1, .L00004350
    nop
.L000043a4:
    lui        $a4,0x4
    move       $a6,$a1
    blez       $a7, .L000043fc
    move       $a5,$zero
    lui        $a1,0xff
    b          .L000043c8
    ori        $a1,$a1,0xffff
.L000043c0:
    beqz       $a2, .L000043fc
    nop
.L000043c8:
    dsll       $at,$a5,0x2
    daddu      $at,$at,$a0
    lw         $a3,0($a6)
    daddu      $at,$at,$a4
    lw         $at,0($at)
    and        $a3,$a3,$a1
    and        $at,$a1,$at
    daddiu     $a6,$a6,4
    addiu      $a5,$a5,1
    beq        $a3, $at, .L000043c0
    slt        $a2,$a5,$a7
    b          .L000043c0
    addiu      $v0,$v0,1
.L000043fc:
    jr         $ra
    nop

glabel MgrasDownloadGE11Ucode
    daddiu     $sp,$sp,-272
    sd         $a1,8($sp)
    sd         $a2,88($sp)
    sd         $a3,24($sp)
    sd         $s1,104($sp)
    sd         $a0,16($sp)
    ld         $a0,-30720($gp)
    sd         $ra,112($sp)
    move       $s1,$zero
    sd         $a5,96($sp)
    jal        kopt_find
    daddiu     $a0,$a0,304
    beqz       $v0, .L00004450
    nop
    lbu        $a4,0($v0)
    beqz       $a4, .L00004450
    nop
    b          .L00004728
    move       $v0,$zero
.L00004450:
    ld         $a6,24($sp)
    blez       $a6, .L00004c08
    nop
    ld         $a0,88($sp)
    li         $a6,12
    div        $zero,$a0,$a6
    sd         $s6,168($sp)
    sd         $s8,160($sp)
    sd         $s4,152($sp)
    sd         $s5,144($sp)
    sd         $zero,128($sp)
    sd         $zero,136($sp)
    sd         $s7,200($sp)
    ld         $v1,96($sp)
    sd         $s0,208($sp)
    ld         $s0,16($sp)
    li         $at,1171
    li         $s7,0x9b61
    sd         $s3,192($sp)
    sd         $s2,216($sp)
    sltu       $v1,$zero,$v1
    lui        $s3,0x5
    movz       $at,$s7,$v1
    sd         $at,64($sp)
    daddu      $s3,$s0,$s3
    lw         $a4,0($s3)
    lui        $s2,0x4
    sd         $a4,72($sp)
    li         $a0,1
    ori        $a4,$a4,0x8
    sd         $a4,0($sp)
    teq        $a6,$zero,0x7
    lui        $s7,0x7
    lw         $v1,276($s3)
    lui        $at,0x8000
    daddu      $s0,$s0,$s7
    sd         $v1,80($sp)
    ori        $v1,$v1,0x40
    sd         $v1,32($sp)
    mflo       $s7
    or         $at,$s7,$at
    b          .L000045a8
    sd         $at,40($sp)
.L000044fc:
    move       $v0,$zero
.L00004500:
    beqz       $v0, .L00004770
    nop
.L00004508:
    cache      0x14,0($sp)
    ld         $at,48($sp)
    lui        $a6,0x4
    ori        $a6,$a6,0x38
    sw         $a6,0($at)
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    beqz       $a4, .L0000453c
    nop
.L0000452c:
    lw         $at,260($s0)
    andi       $at,$at,0x1
    bnez       $at, .L0000452c
    nop
.L0000453c:
    cache      0x14,0($sp)
    li         $a4,208
    sw         $a4,0($s5)
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    beqz       $v1, .L00004568
    nop
.L00004558:
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    bnez       $a6, .L00004558
    nop
.L00004568:
    beqz       $s1, .L00004a2c
    nop
    ld         $at,128($sp)
    addiu      $at,$at,1
    sd         $at,128($sp)
.L0000457c:
    ld         $v1,136($sp)
    addiu      $v1,$v1,1
    sd         $v1,136($sp)
    slti       $v1,$v1,2
    beqz       $v1, .L000046f0
    nop
    ld         $a6,24($sp)
    ld         $a4,136($sp)
    slt        $a4,$a4,$a6
    beqz       $a4, .L000046f0
    nop
.L000045a8:
    ld         $at,136($sp)
    beqz       $at, .L00004738
    nop
    ld         $a6,16($sp)
    lui        $a4,0x5
    ld         $v1,0($sp)
    lui        $s5,0x5
    ori        $a4,$a4,0x4c
    ori        $s5,$s5,0x48
    daddu      $a4,$a4,$a6
    sd         $a4,48($sp)
    daddu      $s5,$s5,$a6
    ori        $v1,$v1,0x30
    sd         $v1,0($sp)
.L000045e0:
    cache      0x14,0($sp)
    ld         $t9,0($sp)
    sw         $t9,0($s3)
    lw         $zero,0($s3)
    ld         $t8,32($sp)
    li         $a0,25
    jal        us_delay
    sw         $t8,276($s3)
    cache      0x14,0($sp)
    ld         $v1,48($sp)
    lui        $v0,0x20
    sw         $v0,0($v1)
    lw         $at,260($s0)
    andi       $at,$at,0x1
    beqz       $at, .L00004630
    ld         $s4,8($sp)
.L00004620:
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    bnez       $a4, .L00004620
    nop
.L00004630:
    blez       $s7, .L000046c8
    move       $a2,$zero
.L00004638:
    cache      0x14,0($sp)
    lw         $at,0($s4)
    sw         $at,0($s5)
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    beqz       $a6, .L00004664
    addiu      $a2,$a2,1
.L00004654:
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    bnez       $v1, .L00004654
    nop
.L00004664:
    cache      0x14,0($sp)
    lw         $a6,4($s4)
    sw         $a6,0($s5)
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    beqz       $a4, .L00004690
    nop
.L00004680:
    lw         $at,260($s0)
    andi       $at,$at,0x1
    bnez       $at, .L00004680
    nop
.L00004690:
    cache      0x14,0($sp)
    lw         $a4,8($s4)
    sw         $a4,0($s5)
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    slt        $at,$a2,$s7
    beqz       $v1, .L000046c0
    daddiu     $s4,$s4,12
.L000046b0:
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    bnez       $a6, .L000046b0
    nop
.L000046c0:
    bnez       $at, .L00004638
    nop
.L000046c8:
    ld         $a0,-30720($gp)
    jal        kopt_find
    daddiu     $a0,$a0,320
    beqz       $v0, .L000044fc
    li         $a0,1
    lbu        $a4,0($v0)
    beqz       $a4, .L000044fc
    nop
    b          .L00004500
    li         $v0,1
.L000046f0:
    cache      0x14,0($sp)
    ld         $v0,128($sp)
    ld         $s2,216($sp)
    ld         $s7,200($sp)
    ld         $s5,144($sp)
    ld         $s4,152($sp)
    ld         $s8,160($sp)
    ld         $s6,168($sp)
    ld         $a6,72($sp)
    ld         $s0,80($sp)
    sw         $s0,276($s3)
    ld         $s0,208($sp)
    sw         $a6,0($s3)
    ld         $s3,192($sp)
.L00004728:
    ld         $ra,112($sp)
    ld         $s1,104($sp)
    jr         $ra
    daddiu     $sp,$sp,272
.L00004738:
    li         $v1,-49
    ld         $a6,16($sp)
    lui        $s5,0x5
    lui        $a4,0x5
    ori        $s5,$s5,0x40
    ld         $at,0($sp)
    ori        $a4,$a4,0x44
    daddu      $s5,$s5,$a6
    daddu      $a4,$a4,$a6
    sd         $a4,48($sp)
    and        $v1,$at,$v1
    ori        $at,$v1,0x20
    b          .L000045e0
    sd         $at,0($sp)
.L00004770:
    cache      0x14,0($sp)
    ld         $a4,48($sp)
    lui        $v1,0x4
    ori        $v1,$v1,0x38
    sw         $v1,0($a4)
    lw         $at,260($s0)
    andi       $at,$at,0x1
    beqz       $at, .L000047a4
    move       $s1,$zero
.L00004794:
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    bnez       $a4, .L00004794
    nop
.L000047a4:
    cache      0x14,0($sp)
    li         $at,209
    sw         $at,0($s5)
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    beqz       $a6, .L000047d0
    nop
.L000047c0:
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    bnez       $v1, .L000047c0
    nop
.L000047d0:
    lui        $v0,0x20
    move       $s6,$zero
    move       $a1,$zero
    ld         $v1,16($sp)
    srl        $s8,$s7,0x1f
    lui        $at,0x6
    addu       $s8,$s8,$s7
    daddu      $at,$at,$v1
    sd         $at,56($sp)
    sra        $s8,$s8,0x1
    addiu      $a4,$s8,-1
    b          .L00004814
    sd         $a4,120($sp)
.L00004804:
    addiu      $s6,$s6,1
    slti       $at,$s6,2
    beqz       $at, .L00004508
    addiu      $a1,$a1,3
.L00004814:
    cache      0x14,0($sp)
    ld         $a4,48($sp)
    sw         $v0,0($a4)
    lw         $v1,260($s0)
    ld         $at,8($sp)
    andi       $v1,$v1,0x1
    dsll       $s4,$a1,0x2
    beqz       $v1, .L00004850
    daddu      $s4,$s4,$at
.L00004838:
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    bnez       $a6, .L00004838
    nop
    sd         $v0,184($sp)
    sd         $a1,176($sp)
.L00004850:
    cache      0x14,0($sp)
    sd         $v0,184($sp)
    sd         $a1,176($sp)
    ld         $t0,48($sp)
    ld         $a7,40($sp)
    li         $a0,0xc350
    jal        us_delay
    sw         $a7,0($t0)
    cache      0x14,0($sp)
    ld         $t2,56($sp)
    li         $a0,0xc350
    lui        $t1,0x6200
    jal        us_delay
    sw         $t1,9224($t2)
    cache      0x14,0($sp)
    ld         $t8,56($sp)
    li         $a0,0xc350
    lui        $t3,0x6000
    jal        us_delay
    sw         $t3,9224($t8)
    lw         $at,260($s0)
    andi       $at,$at,0x1
    beqz       $at, .L000048c0
    nop
.L000048b0:
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    bnez       $v1, .L000048b0
    nop
.L000048c0:
    jal        us_delay
    li         $a0,20
    li         $a0,1
    ld         $a1,176($sp)
    beq        $s6, $a0, .L000049d8
    ld         $v0,184($sp)
.L000048d8:
    addiu      $v0,$v0,1
    blez       $s8, .L00004804
    move       $a2,$zero
    b          .L0000490c
    nop
.L000048ec:
    beq        $s6, $a0, .L00004988
    nop
.L000048f4:
    beqz       $a3, .L0000499c
    nop
.L000048fc:
    addiu      $a2,$a2,1
    slt        $a4,$a2,$s8
    beqz       $a4, .L00004804
    daddiu     $s4,$s4,24
.L0000490c:
    lw         $a6,8($s3)
    and        $a6,$a6,$s2
    bnez       $a6, .L0000492c
    nop
.L0000491c:
    lw         $at,8($s3)
    and        $at,$at,$s2
    beqz       $at, .L0000491c
    nop
.L0000492c:
    lw         $v1,0($s4)
    lw         $zero,560($s3)
    lw         $a4,556($s3)
    beq        $v1, $a4, .L00004944
    nop
    addiu      $s1,$s1,1
.L00004944:
    lw         $a6,8($s3)
    and        $a6,$a6,$s2
    bnez       $a6, .L00004964
    nop
.L00004954:
    lw         $at,8($s3)
    and        $at,$at,$s2
    beqz       $at, .L00004954
    nop
.L00004964:
    lw         $v1,8($s4)
    lw         $zero,560($s3)
    lw         $a4,556($s3)
    andi       $v1,$v1,0xff
    andi       $a4,$a4,0xff
    beq        $v1, $a4, .L000048ec
    move       $a3,$zero
    bne        $s6, $a0, .L000048f4
    addiu      $s1,$s1,1
.L00004988:
    ld         $a4,120($sp)
    bne        $a4, $a2, .L000048f4
    nop
    b          .L000048fc
    li         $a3,1
.L0000499c:
    lw         $a6,8($s3)
    and        $a6,$a6,$s2
    bnez       $a6, .L000049bc
    nop
.L000049ac:
    lw         $at,8($s3)
    and        $at,$at,$s2
    beqz       $at, .L000049ac
    nop
.L000049bc:
    lw         $v1,16($s4)
    lw         $zero,560($s3)
    lw         $a4,556($s3)
    beq        $v1, $a4, .L000048fc
    nop
    b          .L000048fc
    addiu      $s1,$s1,1
.L000049d8:
    lw         $a6,8($s3)
    and        $a6,$a6,$s2
    bnez       $a6, .L000049f8
    nop
.L000049e8:
    lw         $at,8($s3)
    and        $at,$at,$s2
    beqz       $at, .L000049e8
    nop
.L000049f8:
    lw         $zero,560($s3)
    lw         $zero,556($s3)
    lw         $v1,8($s3)
    and        $v1,$v1,$s2
    bnez       $v1, .L00004a20
    nop
.L00004a10:
    lw         $a4,8($s3)
    and        $a4,$a4,$s2
    beqz       $a4, .L00004a10
    nop
.L00004a20:
    lw         $zero,560($s3)
    b          .L000048d8
    lw         $zero,556($s3)
.L00004a2c:
    cache      0x14,0($sp)
    ld         $v1,48($sp)
    lui        $at,0x20
    sw         $at,0($v1)
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    beqz       $a6, .L00004a5c
    nop
.L00004a4c:
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    bnez       $a4, .L00004a4c
    nop
.L00004a5c:
    cache      0x14,0($sp)
    ld         $at,8($sp)
    lw         $at,0($at)
    sw         $at,0($s5)
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    beqz       $a6, .L00004a8c
    nop
.L00004a7c:
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    bnez       $v1, .L00004a7c
    nop
.L00004a8c:
    cache      0x14,0($sp)
    ld         $a6,8($sp)
    lw         $a6,4($a6)
    sw         $a6,0($s5)
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    beqz       $a4, .L00004abc
    nop
.L00004aac:
    lw         $at,260($s0)
    andi       $at,$at,0x1
    bnez       $at, .L00004aac
    nop
.L00004abc:
    cache      0x14,0($sp)
    ld         $a4,8($sp)
    lw         $a4,8($a4)
    sw         $a4,0($s5)
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    beqz       $v1, .L00004aec
    nop
.L00004adc:
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    bnez       $a6, .L00004adc
    nop
.L00004aec:
    cache      0x14,0($sp)
    ld         $a4,48($sp)
    lui        $v1,0x4
    ori        $v1,$v1,0x10
    sw         $v1,0($a4)
    lw         $at,260($s0)
    andi       $at,$at,0x1
    beqz       $at, .L00004b20
    nop
.L00004b10:
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    bnez       $a4, .L00004b10
    nop
.L00004b20:
    cache      0x14,0($sp)
    li         $at,256
    sw         $at,0($s5)
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    beqz       $a6, .L00004b4c
    nop
.L00004b3c:
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    bnez       $v1, .L00004b3c
    nop
.L00004b4c:
    cache      0x14,0($sp)
    ld         $at,48($sp)
    lui        $a6,0x4
    ori        $a6,$a6,0x18
    sw         $a6,0($at)
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    beqz       $a4, .L00004b80
    nop
.L00004b70:
    lw         $at,260($s0)
    andi       $at,$at,0x1
    bnez       $at, .L00004b70
    nop
.L00004b80:
    cache      0x14,0($sp)
    ld         $a4,64($sp)
    sw         $a4,0($s5)
    lw         $v1,260($s0)
    andi       $v1,$v1,0x1
    beqz       $v1, .L00004bac
    nop
.L00004b9c:
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    bnez       $a6, .L00004b9c
    nop
.L00004bac:
    cache      0x14,0($sp)
    ld         $v1,48($sp)
    sw         $s2,0($v1)
    lw         $at,260($s0)
    andi       $at,$at,0x1
    beqz       $at, .L00004bd8
    nop
.L00004bc8:
    lw         $a4,260($s0)
    andi       $a4,$a4,0x1
    bnez       $a4, .L00004bc8
    nop
.L00004bd8:
    cache      0x14,0($sp)
    sw         $a0,0($s5)
    lw         $a6,260($s0)
    andi       $a6,$a6,0x1
    beqz       $a6, .L0000457c
    nop
.L00004bf0:
    lw         $at,260($s0)
    andi       $at,$at,0x1
    bnez       $at, .L00004bf0
    nop
    b          .L0000457c
    nop
.L00004c08:
    b          .L00004728
    move       $v0,$zero

glabel mgras_baseindex
    ld         $a4,-30704($gp)
    move       $a3,$zero
    li         $v0,-1
.L00004c1c:
    dsll       $at,$a3,0x2
    dsubu      $at,$at,$a3
    dsll       $at,$at,0x4
    daddu      $at,$at,$a4
    ld         $at,0($at)
    beq        $at, $a0, .L00004c50
    nop
    addiu      $a3,$a3,1
    slti       $v1,$a3,2
    bnez       $v1, .L00004c1c
    nop
.L00004c48:
    jr         $ra
    nop
.L00004c50:
    b          .L00004c48
    move       $v0,$a3

glabel mgras_fp_probe
    daddiu     $sp,$sp,-48
    sd         $a1,24($sp)
    lui        $at,0xdead
    sd         $s0,16($sp)
    ori        $at,$at,0xbeef
    sd         $ra,8($sp)
    sw         $at,0($sp)
    jal        mgras_fpi2cProbe
    move       $s0,$a0
    beqz       $v0, .L00004cdc
    ld         $ra,8($sp)
    jal        mgras_fpi2cSetup
    move       $a0,$s0
    beqz       $v0, .L00004cdc
    ld         $ra,8($sp)
    move       $a0,$s0
    jal        mgras_fpi2cPanelID
    daddiu     $a1,$sp,0
    beqz       $v0, .L00004d08
    ld         $ra,8($sp)
    lw         $v1,-30720($gp)
    beqz       $v1, .L00004d6c
    ld         $s0,16($sp)
.L00004cb4:
    lw         $v0,0($sp)
    li         $a2,3
    li         $v1,131
    ld         $at,24($sp)
    beq        $v0, $a2, .L00004cf4
    li         $a3,4
    beq        $v0, $a3, .L00004ce8
    ld         $a2,24($sp)
    cache      0x14,0($sp)
    sb         $zero,73($at)
.L00004cdc:
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00004ce8:
    cache      0x14,0($sp)
    b          .L00004cdc
    sb         $v1,73($a2)
.L00004cf4:
    cache      0x14,0($sp)
    ld         $at,24($sp)
    li         $a3,130
    b          .L00004cdc
    sb         $a3,73($at)
.L00004d08:
    jal        mgras_fpi2cPanelOff
    move       $a0,$s0
    move       $a0,$zero
    li         $a2,1
    li         $a1,17
    move       $a3,$zero
    move       $a4,$zero
    move       $a5,$zero
    jal        find_inventory
    ld         $s0,16($sp)
    beqz       $v0, .L00004dd4
    nop
    move       $a0,$v0
    li         $a1,17
    move       $a2,$zero
    move       $a3,$zero
    move       $a4,$zero
    jal        replace_in_inventory
    move       $a5,$zero
    ld         $ra,8($sp)
.L00004d58:
    cache      0x14,0($sp)
    ld         $a2,24($sp)
    li         $v1,255
    b          .L00004cdc
    sb         $v1,73($a2)
.L00004d6c:
    move       $a0,$zero
    li         $a1,17
    move       $a2,$zero
    move       $a3,$zero
    move       $a4,$zero
    jal        find_inventory
    move       $a5,$zero
    beqz       $v0, .L00004db4
    nop
    move       $a0,$v0
    li         $a2,1
    li         $a1,17
    move       $a3,$zero
    move       $a4,$zero
    jal        replace_in_inventory
    move       $a5,$zero
    b          .L00004cb4
    ld         $ra,8($sp)
.L00004db4:
    li         $a1,1
    li         $a0,17
    move       $a2,$zero
    move       $a3,$zero
    jal        add_to_inventory
    move       $a4,$zero
    b          .L00004cb4
    ld         $ra,8($sp)
.L00004dd4:
    li         $a0,17
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        add_to_inventory
    move       $a4,$zero
    b          .L00004d58
    ld         $ra,8($sp)

glabel mgras_fp_reinit
    ld         $a1,200($a0)
    lbu        $at,73($a1)
    daddiu     $sp,$sp,-48
    li         $v0,-1
    sd         $s0,8($sp)
    beqz       $at, .L00004e80
    move       $s0,$a0
    sd         $ra,16($sp)
    jal        mgras_fp_probe
    ld         $a0,208($s0)
    ld         $v1,200($s0)
    lbu        $v1,73($v1)
    li         $v0,-1
    beqz       $v1, .L00004e88
    ld         $ra,16($sp)
    daddiu     $a1,$sp,0
    jal        mgras_fpi2cPanelID
    ld         $a0,208($s0)
    li         $a2,3
    beqz       $v0, .L00004ecc
    ld         $ra,16($sp)
    lw         $v0,0($sp)
    beq        $v0, $a2, .L00004eb8
    nop
    li         $a3,4
    beq        $v0, $a3, .L00004e90
    nop
    cache      0x14,0($sp)
    sb         $zero,1860($s0)
    ld         $at,200($s0)
    ld         $s0,8($sp)
    move       $v0,$zero
    sb         $zero,73($at)
.L00004e78:
    jr         $ra
    daddiu     $sp,$sp,48
.L00004e80:
    b          .L00004e78
    ld         $s0,8($sp)
.L00004e88:
    b          .L00004e78
    ld         $s0,8($sp)
.L00004e90:
    cache      0x14,0($sp)
    li         $v1,131
    ld         $a2,200($s0)
    sb         $v1,73($a2)
.L00004ea0:
    jal        mgras_fpi2cPanelOn
    ld         $a0,208($s0)
    ld         $ra,16($sp)
    move       $v0,$zero
    b          .L00004e78
    ld         $s0,8($sp)
.L00004eb8:
    cache      0x14,0($sp)
    li         $a3,130
    ld         $at,200($s0)
    b          .L00004ea0
    sb         $a3,73($at)
.L00004ecc:
    cache      0x14,0($sp)
    ld         $v1,200($s0)
    li         $v0,255
    sb         $v0,73($v1)
    ld         $s0,8($sp)
    b          .L00004e78
    move       $v0,$zero

glabel MgrasBlankScreen
    daddiu     $sp,$sp,-48
    sd         $s8,16($sp)
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    move       $s0,$a0
    jal        mgras_baseindex
    move       $s8,$a1
    lui        $a0,0x7
    daddu      $a0,$s0,$a0
    lw         $at,256($a0)
    dsll       $a1,$v0,0x2
    ld         $a2,-30704($gp)
    dsubu      $a1,$a1,$v0
    andi       $at,$at,0x1f
    dsll       $a1,$a1,0x4
    sltiu      $at,$at,4
    ld         $ra,8($sp)
    daddu      $a1,$a1,$a2
    li         $a3,4
    bnez       $at, .L00004f50
    ld         $a1,8($a1)
.L00004f3c:
    lw         $a2,256($a0)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,4
    beqz       $a2, .L00004f3c
    nop
.L00004f50:
    li         $a2,1
    li         $v0,3
    lui        $a0,0x6
    beqz       $s8, .L00004fb8
    daddu      $a0,$s0,$a0
    cache      0x14,0($sp)
    ld         $s8,16($sp)
    sb         $a3,6161($a0)
    sb         $zero,6416($a0)
    beqz       $a1, .L00004fac
    sb         $a2,3464($a0)
    ld         $a0,200($a1)
    beqz       $a0, .L00004fac
    nop
    lbu        $a1,73($a0)
    beqz       $a1, .L00004fac
    nop
    li         $at,255
    beq        $a1, $at, .L00004fac
    nop
    jal        mgras_fpi2cPanelOff
    move       $a0,$s0
    ld         $ra,8($sp)
.L00004fac:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00004fb8:
    cache      0x14,0($sp)
    ld         $s8,16($sp)
    sb         $a3,6161($a0)
    li         $a4,255
    sb         $a4,6416($a0)
    beqz       $a1, .L00004fac
    sb         $v0,3464($a0)
    ld         $a0,200($a1)
    beqz       $a0, .L00004fac
    nop
    lbu        $a1,73($a0)
    beqz       $a1, .L00004fac
    nop
    beq        $a4, $a1, .L00004fac
    nop
    jal        mgras_fpi2cPanelOn
    move       $a0,$s0
    b          .L00004fac
    ld         $ra,8($sp)
