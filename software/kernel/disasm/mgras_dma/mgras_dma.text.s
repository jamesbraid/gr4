.section .text
.set noat
.set noreorder


glabel MgrasInitDMA
    li         $t2,-1
    li         $t3,9
    li         $a6,2088
    li         $a5,2095
    li         $a4,2100
    li         $a3,4
    lui        $a2,0x7
    lui        $t1,0x5
    lui        $t0,0x40
    lui        $a7,0x40
    ori        $t0,$t0,0x4
    ori        $a7,$a7,0x8
    daddu      $t1,$a0,$t1
    b          .L00000074
    daddu      $a2,$a0,$a2
.L0000003c:
    cache      0x14,0($sp)
    addiu      $a5,$a5,-1
    sll        $v1,$a6,0x8
    sll        $v0,$a4,0x8
    or         $v1,$v1,$a7
    sw         $v1,132($t1)
    or         $v0,$v0,$t0
    sd         $t3,128($t1)
    addiu      $a6,$a6,-2
    dsll32     $v0,$v0,0x0
    sd         $v0,128($t1)
    addiu      $a4,$a4,-1
    beq        $a3, $t2, .L000000a8
    sd         $at,128($t1)
.L00000074:
    lw         $v0,4($a2)
    andi       $v0,$v0,0x7f
    addiu      $a3,$a3,-1
    sll        $at,$a5,0x8
    or         $at,$at,$t0
    beqz       $v0, .L0000003c
    dsll32     $at,$at,0x0
.L00000090:
    lw         $v1,4($a2)
    andi       $v1,$v1,0x7f
    bnez       $v1, .L00000090
    nop
    b          .L0000003c
    nop
.L000000a8:
    lw         $a0,4($a2)
    andi       $a0,$a0,0x7f
    ld         $v1,-30720($gp)
    beqz       $a0, .L000000cc
    ld         $v0,-30712($gp)
.L000000bc:
    lw         $at,4($a2)
    andi       $at,$at,0x7f
    bnez       $at, .L000000bc
    nop
.L000000cc:
    cache      0x14,0($sp)
    sd         $v1,128($t1)
    sd         $v0,128($t1)
    jr         $ra
    sw         $zero,2304($t1)

glabel MgrasInstallTxTbl_Kern
    daddiu     $sp,$sp,-96
    sltiu      $at,$a1,5
    dsll32     $v0,$a3,0x0
    sd         $a0,24($sp)
    beqz       $at, .L000001b8
    sd         $a2,16($sp)
    beqz       $a4, .L000001c0
    nop
    sd         $ra,40($sp)
    sd         $a1,8($sp)
    dsrl32     $v0,$v0,0x0
    beqz       $a3, .L00000128
    sd         $v0,32($sp)
    ld         $a1,32($sp)
    dsll       $a1,$a1,0x2
    ld         $a0,16($sp)
    jal        dki_dcache_wb
    sll        $a1,$a1,0x0
.L00000128:
    cache      0x14,0($sp)
    ld         $a2,8($sp)
    lui        $a5,0x5
    lui        $a4,0x40
    ld         $a3,24($sp)
    addu       $a2,$a2,$a2
    ld         $a0,16($sp)
    ori        $a4,$a4,0x8
    addiu      $a2,$a2,2080
    daddu      $a3,$a3,$a5
    sd         $a3,0($sp)
    sll        $a2,$a2,0x8
    or         $a2,$a2,$a4
    jal        kvtophys
    sw         $a2,132($a3)
    cache      0x14,0($sp)
    ld         $ra,8($sp)
    lui        $at,0x40
    addiu      $a6,$ra,2091
    addiu      $ra,$ra,2096
    sll        $a6,$a6,0x8
    ld         $a5,0($sp)
    ori        $at,$at,0x4
    sll        $ra,$ra,0x8
    or         $ra,$ra,$at
    or         $a6,$a6,$at
    ld         $at,32($sp)
    sd         $v0,128($a5)
    dsll32     $ra,$ra,0x0
    or         $ra,$ra,$at
    sd         $ra,128($a5)
    ld         $ra,40($sp)
    dsll32     $a6,$a6,0x0
    ori        $a6,$a6,0xa
    sd         $a6,128($a5)
    sw         $zero,2304($a5)
.L000001b8:
    jr         $ra
    daddiu     $sp,$sp,96
.L000001c0:
    dsll32     $at,$a3,0x0
    sd         $ra,40($sp)
    sd         $a1,8($sp)
    dsrl32     $at,$at,0x0
    b          .L00000128
    sd         $at,32($sp)

glabel MgrasResetTxTbl_Kern
    addiu      $a2,$a1,2096
    addiu      $v1,$a1,2091
    addu       $a4,$a1,$a1
    sltiu      $at,$a1,5
    addiu      $a4,$a4,2080
    lui        $a3,0x40
    ori        $a3,$a3,0x4
    beqz       $at, .L00000244
    sll        $v1,$v1,0x8
    cache      0x14,0($sp)
    sll        $a4,$a4,0x8
    lui        $at,0x40
    lui        $v0,0x5
    daddu      $v0,$a0,$v0
    ori        $at,$at,0x8
    sll        $a2,$a2,0x8
    or         $a4,$a4,$at
    sw         $a4,132($v0)
    or         $a2,$a2,$a3
    li         $a4,9
    sd         $a4,128($v0)
    or         $v1,$v1,$a3
    dsll32     $a2,$a2,0x0
    sd         $a2,128($v0)
    dsll32     $v1,$v1,0x0
    sd         $v1,128($v0)
    sw         $zero,2304($v0)
.L00000244:
    jr         $ra
    nop

glabel mgrasFastUnlock
    daddiu     $sp,$sp,-48
    dsll32     $a1,$a1,0x0
    sd         $ra,0($sp)
    jal        unuseracc
    dsrl32     $a1,$a1,0x0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgrasFastLock
    daddiu     $sp,$sp,-48
    beqz       $a3, .L00000284
    move       $a5,$a1
    cache      0x14,0($sp)
    sd         $ra,0($sp)
    sw         $zero,0($a3)
.L00000284:
    dsll32     $a1,$a5,0x0
    sd         $ra,0($sp)
    move       $a3,$zero
    jal        useracc
    dsrl32     $a1,$a1,0x0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgrasLockMem
    move       $v0,$a3
    daddiu     $sp,$sp,-112
    move       $a7,$a2
    move       $a2,$zero
    sd         $s0,16($sp)
    sd         $s4,24($sp)
    beqz       $a0, .L000002e4
    move       $s0,$a1
    ld         $at,1080($a0)
    daddiu     $s4,$gp,-30708
    beqz       $at, .L000002e4
    sd         $s1,40($sp)
    li         $a2,1
    sd         $s2,32($sp)
    b          .L000002f4
    daddiu     $s1,$a0,1056
.L000002e4:
    sd         $s1,40($sp)
    daddiu     $s4,$gp,-30720
    sd         $s2,32($sp)
    daddiu     $s1,$gp,-30716
.L000002f4:
    dsll32     $s2,$a7,0x0
    andi       $at,$s0,0x3fff
    dsrl32     $s2,$s2,0x0
    sd         $s2,8($sp)
    daddu      $s2,$s2,$at
    daddiu     $s2,$s2,16383
    dsrl       $s2,$s2,0xe
    sll        $s2,$s2,0x0
.L00000314:
    ll         $a0,0($s1)
    addu       $a5,$a0,$s2
    move       $a0,$a5
    sc         $a5,0($s1)
    beqzl      $a5, .L00000314
    nop
    lw         $v1,0($s1)
    lw         $a0,0($s4)
    slt        $v1,$a0,$v1
    beqz       $v1, .L000003ac
    sd         $v0,0($sp)
    beqz       $a2, .L00000360
    ld         $s0,16($sp)
    sd         $ra,48($sp)
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    lw         $a0,0($s4)
    ld         $ra,48($sp)
.L00000360:
    li         $v1,11
    li         $s4,12
    sltu       $at,$a0,$s2
    movz       $s4,$v1,$at
    beqz       $s4, .L00000394
    nop
.L00000378:
    negu       $a6,$s2
.L0000037c:
    ll         $a5,0($s1)
    addu       $at,$a5,$a6
    move       $a5,$at
    sc         $at,0($s1)
    beqzl      $at, .L0000037c
    nop
.L00000394:
    ld         $s1,40($sp)
    ld         $s2,32($sp)
    move       $v0,$s4
    ld         $s4,24($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000003ac:
    ld         $a2,0($sp)
    move       $a0,$s0
    move       $a1,$a7
    move       $a3,$a4
    sd         $ra,48($sp)
    sltiu      $a2,$a2,1
    ori        $a2,$a2,0x10
    jal        mgrasFastLock
    sll        $a2,$a2,0x0
    move       $s4,$v0
    beqz       $v0, .L000003f4
    ld         $ra,48($sp)
    b          .L00000378
    ld         $s0,16($sp)
.L000003e4:
    beqz       $s4, .L00000394
    ld         $s0,16($sp)
    b          .L00000378
    nop
.L000003f4:
    ld         $a5,0($sp)
    bnez       $a5, .L000003e4
    nop
    move       $a0,$s0
    jal        unmaptlb_range
    ld         $a1,8($sp)
    b          .L000003e4
    ld         $ra,48($sp)

glabel mgrasUnlockMem
    daddiu     $sp,$sp,-80
    sd         $s2,8($sp)
    move       $a6,$a3
    li         $at,2989
    sd         $s0,0($sp)
    sd         $s1,16($sp)
    move       $s0,$a0
    move       $s2,$a1
    beq        $a1, $at, .L000004d8
    move       $s1,$a2
    move       $a0,$s2
    move       $a1,$s1
    move       $a3,$a4
    sd         $ra,24($sp)
    sltiu      $a2,$a6,1
    ori        $a2,$a2,0x10
    jal        mgrasFastUnlock
    sll        $a2,$a2,0x0
    andi       $v0,$s2,0x3fff
    beqz       $s0, .L000004a0
    ld         $ra,24($sp)
    ld         $a5,1080($s0)
    beqz       $a5, .L000004a0
    andi       $v1,$s2,0x3fff
    cache      0x14,0($sp)
    dsll32     $v0,$s1,0x0
    dsrl32     $v0,$v0,0x0
    daddu      $v0,$v0,$v1
    daddiu     $v0,$v0,16383
    lw         $at,1056($s0)
    dsrl       $v0,$v0,0xe
    sll        $v0,$v0,0x0
    subu       $at,$at,$v0
    b          .L000004d8
    sw         $at,1056($s0)
.L000004a0:
    dsll32     $at,$s1,0x0
    dsrl32     $at,$at,0x0
    daddu      $at,$at,$v0
    daddiu     $at,$at,16383
    dsrl       $at,$at,0xe
    daddiu     $a5,$gp,-30716
    sll        $at,$at,0x0
    negu       $at,$at
.L000004c0:
    ll         $v1,0($a5)
    addu       $v0,$v1,$at
    move       $v1,$v0
    sc         $v0,0($a5)
    beqzl      $v0, .L000004c0
    nop
.L000004d8:
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    ld         $s2,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel mgrasDmaFlushUtil
    daddiu     $sp,$sp,-96
    sd         $s0,32($sp)
    sd         $s7,0($sp)
    sd         $s5,8($sp)
    sd         $s3,64($sp)
    addiu      $s5,$a0,-1
    li         $s7,-1
    sd         $s2,16($sp)
    sd         $s6,56($sp)
    beq        $s7, $s5, .L000005bc
    move       $s2,$a1
    sd         $ra,48($sp)
    sd         $s4,40($sp)
    lui        $s3,0xfff0
    lui        $s6,0x140
    sd         $s1,24($sp)
    b          .L00000548
    lui        $s0,0x10
.L00000534:
    ld         $a0,0($s2)
    jal        dki_dcache_wbinval
    move       $a1,$s1
.L00000540:
    beq        $s7, $s5, .L000005a4
    daddiu     $s2,$s2,16
.L00000548:
    lw         $s1,8($s2)
    sltu       $at,$s0,$s1
    addiu      $s5,$s5,-1
    beqz       $at, .L00000534
    sltu       $v0,$s6,$s1
    bnez       $v0, .L00000534
    nop
    ld         $s4,0($s2)
.L00000568:
    addu       $s1,$s3,$s1
    move       $a0,$s4
    jal        dki_dcache_wbinval
    move       $a1,$s0
    daddu      $s4,$s0,$s4
    sltu       $v1,$s1,$s0
    beqz       $v1, .L00000568
    nop
    beqz       $s1, .L00000540
    nop
    move       $a0,$s4
    jal        dki_dcache_wbinval
    move       $a1,$s1
    b          .L00000540
    nop
.L000005a4:
    ld         $s1,24($sp)
    ld         $s0,32($sp)
    ld         $s4,40($sp)
    ld         $ra,48($sp)
    ld         $s6,56($sp)
    ld         $s3,64($sp)
.L000005bc:
    ld         $s2,16($sp)
    ld         $s5,8($sp)
    ld         $s7,0($sp)
    jr         $ra
    daddiu     $sp,$sp,96

glabel mgrasReleasePoolTxMemory
    ld         $a3,64($a0)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    beqz       $a3, .L00000608
    move       $s0,$a0
    sd         $ra,8($sp)
    lwu        $a1,72($s0)
    move       $a0,$a3
    jal        kmem_free
    dsll       $a1,$a1,0x2
    cache      0x14,0($sp)
    sw         $zero,72($s0)
    sd         $zero,64($s0)
    ld         $ra,8($sp)
.L00000608:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mgrasReleasePoolUserMemory
    lw         $a5,12($a1)
    daddiu     $sp,$sp,-48
    move       $a3,$a0
    sd         $s1,8($sp)
    ld         $a4,32($a1)
    beqz       $a5, .L000006cc
    move       $s1,$a1
    beqz       $a4, .L000006e4
    nop
    ld         $at,40($s1)
    beqz       $at, .L000006cc
    nop
    ld         $v0,48($s1)
    beqz       $v0, .L000006cc
    nop
    sd         $s3,16($sp)
    beqz       $a5, .L000006bc
    move       $s3,$zero
    sd         $ra,24($sp)
    sd         $a3,0($sp)
.L00000664:
    lw         $a3,76($s1)
    ld         $a0,0($sp)
    dsll32     $a6,$s3,0x0
    ld         $a2,40($s1)
    dsrl32     $a6,$a6,0x0
    ld         $a1,32($s1)
    dsll       $a5,$a6,0x2
    ld         $a4,48($s1)
    dsll       $a6,$a6,0x3
    daddu      $a2,$a2,$a5
    addiu      $s3,$s3,1
    daddu      $a1,$a1,$a6
    lw         $a2,0($a2)
    daddu      $a4,$a4,$a5
    jal        mgrasUnlockMem
    ld         $a1,0($a1)
    lw         $at,12($s1)
    sltu       $at,$s3,$at
    bnez       $at, .L00000664
    nop
    ld         $a4,32($s1)
    ld         $ra,24($sp)
.L000006bc:
    cache      0x14,0($sp)
    sw         $zero,16($s1)
    sw         $zero,12($s1)
    ld         $s3,16($sp)
.L000006cc:
    beqz       $a4, .L000006e4
    nop
    sd         $ra,24($sp)
    jal        kern_free
    move       $a0,$a4
    ld         $ra,24($sp)
.L000006e4:
    ld         $a0,40($s1)
    beqz       $a0, .L00000700
    nop
    sd         $ra,24($sp)
    jal        kern_free
    nop
    ld         $ra,24($sp)
.L00000700:
    ld         $a0,48($s1)
    beqz       $a0, .L0000071c
    nop
    sd         $ra,24($sp)
    jal        kern_free
    nop
    ld         $ra,24($sp)
.L0000071c:
    cache      0x14,0($sp)
    sd         $zero,48($s1)
    sd         $zero,40($s1)
    sd         $zero,32($s1)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgrasReleasePoolMemory
    daddiu     $sp,$sp,-64
    sd         $s3,8($sp)
    sd         $ra,0($sp)
    sd         $a1,16($sp)
    jal        mgrasReleasePoolUserMemory
    move       $s3,$a2
    move       $at,$s3
    ld         $s3,8($sp)
    beqz       $at, .L00000770
    ld         $ra,0($sp)
    ld         $a0,16($sp)
    jal        mgrasReleasePoolTxMemory
    ld         $s3,8($sp)
    ld         $ra,0($sp)
.L00000770:
    jr         $ra
    daddiu     $sp,$sp,64

glabel MgrasDestroyDMA
    daddiu     $sp,$sp,-64
    sd         $s2,40($sp)
    sd         $s3,32($sp)
    sd         $s1,8($sp)
    sd         $s4,24($sp)
    move       $s1,$a0
    move       $s3,$a1
    sd         $s0,16($sp)
    li         $s4,-1
    li         $s2,1
    sd         $ra,0($sp)
    b          .L000007d8
    li         $s0,4
.L000007ac:
    dsll       $a1,$s0,0x2
    daddu      $a1,$a1,$s0
    move       $a0,$s1
    dsll       $a1,$a1,0x4
    move       $a2,$s3
    daddu      $a1,$a1,$s1
    jal        mgrasReleasePoolMemory
    daddiu     $a1,$a1,640
.L000007cc:
    addiu      $s0,$s0,-1
    beq        $s0, $s4, .L00000814
    nop
.L000007d8:
    bne        $s0, $s2, .L000007ac
    nop
    ld         $a4,1128($s1)
    beqz       $a4, .L000007cc
    nop
    lw         $a3,0($a4)
    slti       $a3,$a3,2
    beqz       $a3, .L000007cc
    nop
    move       $a0,$s1
    daddiu     $a1,$a4,16
    jal        mgrasReleasePoolMemory
    move       $a2,$s3
    b          .L000007cc
    nop
.L00000814:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $ra,0($sp)
    ld         $s2,40($sp)
    ld         $s3,32($sp)
    ld         $s4,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel mgrasTeardown
    daddiu     $sp,$sp,-144
    move       $t1,$a0
    move       $v0,$a5
    sd         $s0,32($sp)
    move       $t0,$zero
    sd         $s1,24($sp)
    move       $s0,$a2
    sd         $a1,0($sp)
    beqz       $a4, .L00000874
    move       $s1,$a3
    lw         $at,0($s0)
    beqz       $at, .L00000874
    nop
    lw         $v1,4($s0)
    beqz       $v1, .L000009d8
    nop
.L00000874:
    beqz       $v0, .L0000095c
    nop
    lw         $a4,0($s0)
    beqz       $a4, .L0000095c
    li         $v0,22
    lw         $a6,4($s0)
    beqz       $a6, .L000009d0
    nop
    beqz       $t0, .L000009b8
    sd         $ra,80($sp)
.L0000089c:
    sd         $s4,72($sp)
    sd         $ra,80($sp)
    sd         $s6,64($sp)
    jal        flushbus
    move       $s4,$zero
    ld         $a4,0($sp)
    dsll32     $a4,$a4,0x0
    dsrl32     $a4,$a4,0x0
    dsll       $v1,$a4,0x3
    lui        $s6,0x5
    daddu      $v1,$v1,$s1
    lw         $at,8($s0)
    daddu      $s6,$s6,$v1
    lw         $v1,900($s6)
    dsll       $a4,$a4,0x2
    lui        $a6,0x5
    beq        $at, $v1, .L00000998
    sd         $a4,16($sp)
.L000008e4:
    sd         $s5,56($sp)
    lui        $s5,0x98
    ori        $s5,$s5,0x9680
.L000008f0:
    addiu      $s4,$s4,1
    slt        $at,$s5,$s4
    bnez       $at, .L00000964
    nop
    jal        us_delay
    li         $a0,1
    lw         $a4,900($s6)
    lw         $v1,8($s0)
    bne        $v1, $a4, .L000008f0
    nop
    ld         $a6,16($sp)
    lui        $at,0x5
    daddu      $a6,$a6,$s1
    daddu      $a6,$a6,$at
    lw         $a6,960($a6)
    bnez       $a6, .L000008f0
    nop
.L00000934:
    cache      0x14,0($sp)
    ld         $s5,56($sp)
    ld         $s6,64($sp)
    lui        $s4,0x5
    ld         $ra,80($sp)
    daddu      $s4,$s4,$s1
    sw         $zero,2304($s4)
    ld         $s4,72($sp)
    sw         $zero,4($s0)
    sw         $zero,0($s0)
.L0000095c:
    b          .L00000988
    move       $v0,$zero
.L00000964:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,56
    ld         $s5,56($sp)
    ld         $s6,64($sp)
    ld         $s4,72($sp)
    li         $v0,1
    ld         $ra,80($sp)
.L00000988:
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00000998:
    ld         $a4,16($sp)
    daddu      $a4,$a4,$s1
    daddu      $a4,$a4,$a6
    lw         $a4,960($a4)
    beqz       $a4, .L00000934
    sd         $s5,56($sp)
    b          .L000008e4
    sd         $s5,56($sp)
.L000009b8:
    jal        RRM_CheckValidFault
    ld         $a0,64($t1)
    beqz       $v0, .L0000089c
    ld         $ra,80($sp)
    b          .L00000988
    li         $v0,14
.L000009d0:
    b          .L00000988
    nop
.L000009d8:
    sd         $v0,48($sp)
    sd         $t1,8($sp)
    sd         $ra,80($sp)
    move       $a0,$t1
    jal        RRM_CheckValidFault
    ld         $a0,64($t1)
    beqz       $v0, .L00000a00
    ld         $ra,80($sp)
    b          .L00000988
    li         $v0,14
.L00000a00:
    cache      0x14,0($sp)
    ld         $a7,0($sp)
    lui        $a6,0x40
    lui        $a4,0x5
    li         $a1,1
    addu       $a5,$a7,$a7
    lui        $t0,0x40
    addiu      $a5,$a5,2080
    lw         $t1,8($s0)
    ori        $t0,$t0,0x4
    sll        $a5,$a5,0x8
    xor        $t1,$t1,$a1
    addiu      $a7,$a7,2096
    sltiu      $t1,$t1,1
    sll        $a7,$a7,0x8
    or         $a7,$a7,$t0
    li         $t0,5
    daddu      $a4,$s1,$a4
    movz       $t0,$a1,$t1
    sw         $t0,8($s0)
    ori        $a6,$a6,0x8
    dsll32     $a7,$a7,0x0
    sd         $a7,128($a4)
    or         $a5,$a5,$a6
    sw         $a5,132($a4)
    li         $a2,1
    sd         $a2,40($sp)
    lwu        $a3,8($s0)
    sd         $a3,128($a4)
    jal        flushbus
    sw         $a1,4($s0)
    ld         $t1,8($sp)
    ld         $t0,40($sp)
    ld         $v0,48($sp)
    b          .L00000874
    ld         $ra,80($sp)

glabel mgrasGetTxTbl
    lw         $v0,72($a0)
    daddiu     $sp,$sp,-96
    sd         $a2,0($sp)
    ld         $a7,64($a0)
    sd         $a3,40($sp)
    move       $a6,$a1
    sd         $s0,8($sp)
    sd         $zero,32($sp)
    beqz       $a7, .L00000b40
    move       $s0,$a0
    beqz       $v0, .L00000b40
    nop
    sltu       $at,$v0,$a6
    bnez       $at, .L00000b40
    nop
    move       $v0,$zero
    b          .L00000b38
    ld         $s0,8($sp)
.L00000ad8:
    ld         $v1,40($sp)
    ld         $at,0($sp)
    ld         $a1,0($sp)
    ld         $a4,40($sp)
    beqz       $v1, .L00000b0c
    move       $a0,$at
    beqz       $v0, .L00000b08
    nop
    addu       $a1,$a1,$a4
    sltu       $a4,$a6,$a1
    beqz       $a4, .L00000bbc
    sltu       $at,$at,$a1
.L00000b08:
    sd         $a5,32($sp)
.L00000b0c:
    beqz       $v0, .L00000b34
    ld         $s0,8($sp)
    beqz       $a6, .L00000b34
    nop
    dsll32     $a1,$a6,0x0
    dsrl32     $a1,$a1,0x0
    move       $a0,$v0
    jal        kmem_free
    dsll       $a1,$a1,0x2
    ld         $ra,48($sp)
.L00000b34:
    ld         $v0,32($sp)
.L00000b38:
    jr         $ra
    daddiu     $sp,$sp,96
.L00000b40:
    cache      0x14,0($sp)
    li         $a1,2048
    li         $a2,2048
    sltu       $a1,$a1,$a6
    sd         $a7,16($sp)
    movz       $a6,$a2,$a1
    sd         $v0,24($sp)
    dsll32     $a0,$a6,0x0
    sd         $ra,48($sp)
    dsrl32     $a0,$a0,0x0
    li         $a1,0x8100
    sw         $a6,72($s0)
    jal        kmem_alloc
    dsll       $a0,$a0,0x2
    cache      0x14,0($sp)
    lwu        $a1,72($s0)
    move       $a0,$v0
    sd         $v0,64($s0)
    jal        bzero
    dsll       $a1,$a1,0x2
    ld         $a4,64($s0)
    ld         $a6,24($sp)
    ld         $v0,16($sp)
    li         $a5,22
    bnez       $a4, .L00000ad8
    ld         $ra,48($sp)
    cache      0x14,0($sp)
    li         $a5,12
    sd         $a5,32($sp)
    b          .L00000b0c
    sw         $zero,72($s0)
.L00000bbc:
    beqz       $at, .L00000b0c
    nop
.L00000bc4:
    cache      0x14,0($sp)
    dsll32     $at,$a0,0x0
    dsrl32     $at,$at,0x0
    addiu      $a0,$a0,1
    dsll       $at,$at,0x2
    ld         $a4,64($s0)
    sltu       $a5,$a0,$a1
    daddu      $v1,$at,$v0
    daddu      $a4,$a4,$at
    lw         $v1,0($v1)
    bnez       $a5, .L00000bc4
    sw         $v1,0($a4)
    b          .L00000b0c
    nop

glabel mgrasJamTxTbl
    addu       $a5,$a2,$a3
    sltu       $at,$a2,$a5
    beqz       $at, .L00000c30
    nop
.L00000c0c:
    cache      0x14,0($sp)
    dsll32     $v0,$a2,0x0
    addiu      $a2,$a2,1
    dsrl32     $v0,$v0,0x0
    sltu       $v1,$a2,$a5
    dsll       $v0,$v0,0x2
    daddu      $v0,$v0,$a1
    bnez       $v1, .L00000c0c
    sw         $a0,0($v0)
.L00000c30:
    jr         $ra
    nop

glabel mgrasPlugTxTblHoles
    daddiu     $sp,$sp,-48
    lw         $a2,12($a0)
    sd         $s5,0($sp)
    sd         $s1,8($sp)
    move       $s5,$a0
    sd         $s7,16($sp)
    beqz       $a2, .L00000ccc
    move       $s1,$zero
    li         $s7,2989
    ld         $a0,32($s5)
.L00000c60:
    dsll32     $at,$s1,0x0
    dsrl32     $at,$at,0x0
    dsll       $at,$at,0x3
    daddu      $at,$at,$a0
    ld         $at,0($at)
    bne        $at, $s7, .L00000c94
    nop
    addiu      $s1,$s1,1
    sltu       $v0,$s1,$a2
    bnez       $v0, .L00000c60
    nop
    b          .L00000ccc
    ld         $s7,16($sp)
.L00000c94:
    cache      0x14,0($sp)
    lw         $s7,56($s5)
    multu      $s7,$s1
    mflo       $a1
    addiu      $a1,$a1,3
    dsll32     $a1,$a1,0x0
    ld         $v1,64($s5)
    dsrl32     $a1,$a1,0x0
    sw         $s1,24($s5)
    dsll       $a1,$a1,0x2
    ld         $s7,16($sp)
    daddu      $v1,$v1,$a1
    lw         $v1,0($v1)
    sw         $v1,20($s5)
.L00000ccc:
    beqz       $a2, .L00000d40
    move       $s1,$zero
    sd         $s7,16($sp)
    sd         $ra,24($sp)
    b          .L00000cf4
    li         $s7,2989
.L00000ce4:
    addiu      $s1,$s1,1
    sltu       $at,$s1,$a2
    beqz       $at, .L00000d38
    nop
.L00000cf4:
    dsll32     $v1,$s1,0x0
    ld         $v0,32($s5)
    dsrl32     $v1,$v1,0x0
    dsll       $v1,$v1,0x3
    daddu      $v0,$v0,$v1
    ld         $v0,0($v0)
    bne        $v0, $s7, .L00000ce4
    nop
    lw         $a3,56($s5)
    multu      $a3,$s1
    ld         $a1,64($s5)
    mflo       $a2
    lw         $a0,20($s5)
    jal        mgrasJamTxTbl
    addiu      $a2,$a2,3
    b          .L00000ce4
    lw         $a2,12($s5)
.L00000d38:
    ld         $s7,16($sp)
    ld         $ra,24($sp)
.L00000d40:
    ld         $s1,8($sp)
    ld         $s5,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel mgrasFillTxTbl
    dsll32     $a7,$a1,0x0
    andi       $at,$a0,0xfff
    dsrl32     $a7,$a7,0x0
    daddu      $a7,$a7,$at
    daddiu     $a7,$a7,4095
    dsrl       $a7,$a7,0xc
    daddiu     $sp,$sp,-128
    sll        $v0,$a7,0x0
    sd         $s0,48($sp)
    sltu       $at,$a4,$v0
    sd         $s1,56($sp)
    move       $s0,$a2
    bnez       $at, .L00000f20
    move       $s1,$a3
    dsrl       $at,$a0,0xc
    andi       $at,$at,0x3
    sd         $at,40($sp)
    sd         $a4,24($sp)
    sltu       $at,$s1,$at
    sd         $v0,16($sp)
    sd         $a7,32($sp)
    beqz       $at, .L00000e50
    li         $v0,1
    ld         $s1,56($sp)
    b          .L00000e48
    ld         $s0,48($sp)
.L00000db8:
    beqz       $a0, .L00000df8
    nop
.L00000dc0:
    addiu      $a0,$a0,-1
    li         $v0,3
    lw         $a1,0($s3)
    beqz       $a0, .L00000df8
    daddiu     $s3,$s3,4
.L00000dd4:
    cache      0x14,0($sp)
    addiu      $v0,$v0,-1
    addiu      $a0,$a0,-1
    addiu      $a1,$a1,1
    sw         $a1,0($s3)
    beqz       $v0, .L00000f30
    daddiu     $s3,$s3,4
    bnez       $a0, .L00000dd4
    nop
.L00000df8:
    ld         $v0,16($sp)
    ld         $a1,24($sp)
    addu       $a1,$s1,$a1
    addu       $v0,$v0,$s1
    ld         $s3,64($sp)
    sltu       $v1,$v0,$a1
    lw         $a0,0($a3)
    beqz       $v1, .L00000e40
    ld         $s1,56($sp)
.L00000e1c:
    cache      0x14,0($sp)
    dsll32     $v1,$v0,0x0
    addiu      $v0,$v0,1
    dsrl32     $v1,$v1,0x0
    sltu       $a5,$v0,$a1
    dsll       $v1,$v1,0x2
    daddu      $v1,$v1,$s0
    bnez       $a5, .L00000e1c
    sw         $a0,0($v1)
.L00000e40:
    move       $v0,$zero
    ld         $s0,48($sp)
.L00000e48:
    jr         $ra
    daddiu     $sp,$sp,128
.L00000e50:
    sd         $s3,64($sp)
    ld         $s3,40($sp)
    subu       $s3,$s1,$s3
    dsll32     $s3,$s3,0x0
    dsrl32     $s3,$s3,0x0
    dsll       $s3,$s3,0x2
    sd         $ra,72($sp)
    daddu      $s3,$s3,$s0
    li         $a4,2
    lw         $a5,0($s3)
    li         $a3,16
    move       $a2,$s3
    sd         $a5,8($sp)
    sd         $s3,0($sp)
    jal        curproc_vtopv
    move       $a5,$zero
    ld         $a0,32($sp)
    ld         $a6,40($sp)
    sll        $a0,$a0,0x0
    ld         $at,40($sp)
    dsll32     $a3,$s1,0x0
    li         $v0,4
    dsrl32     $a3,$a3,0x0
    ld         $ra,72($sp)
    sltiu      $a5,$a6,4
    dsll       $a3,$a3,0x2
    ld         $v1,0($sp)
    beqz       $at, .L00000db8
    daddu      $a3,$a3,$s0
    cache      0x14,0($sp)
    lw         $a1,0($v1)
    move       $s3,$a3
    ld         $at,8($sp)
    sw         $at,0($v1)
    beqz       $a5, .L00000db8
    addu       $a1,$a1,$a6
    beqz       $a0, .L00000df8
    nop
    addiu      $a2,$a1,-1
.L00000eec:
    cache      0x14,0($sp)
    ld         $a5,40($sp)
    addiu      $v0,$v0,-1
    sltu       $a5,$a5,$v0
    addiu      $a0,$a0,-1
    addiu      $a2,$a2,1
    sw         $a2,0($s3)
    beqz       $a5, .L00000db8
    daddiu     $s3,$s3,4
    bnez       $a0, .L00000eec
    nop
    b          .L00000df8
    nop
.L00000f20:
    ld         $s1,56($sp)
    li         $v0,1
    b          .L00000e48
    ld         $s0,48($sp)
.L00000f30:
    bnez       $a0, .L00000dc0
    nop
    b          .L00000df8
    nop

glabel mgrasDmaUtil
    daddiu     $sp,$sp,-240
    move       $t3,$a0
    move       $v0,$a7
    sd         $s1,32($sp)
    move       $t2,$zero
    andi       $at,$a2,0x7
    sd         $s0,48($sp)
    sd         $s2,24($sp)
    move       $s1,$a1
    move       $s0,$a3
    move       $s2,$a6
    dsll32     $t1,$s0,0x0
    beqz       $at, .L000011b4
    sltiu      $v1,$s0,5
    beqz       $v1, .L0000101c
    li         $a6,1
    beqz       $s1, .L000010dc
    nop
    ld         $a7,112($s1)
    beq        $a6, $s0, .L000011c8
    move       $a3,$a7
    dsrl32     $t1,$t1,0x0
    sd         $ra,168($sp)
    sd         $v0,104($sp)
    sd         $a2,88($sp)
    dsll       $t0,$t1,0x2
    sd         $a5,96($sp)
    daddu      $t0,$t0,$t1
    sd         $a4,112($sp)
    dsll       $t0,$t0,0x4
    sd         $a3,136($sp)
    daddu      $t0,$t0,$a7
    daddiu     $t0,$t0,640
    sd         $t0,160($sp)
.L00000fc8:
    ld         $a2,160($sp)
    ld         $a5,88($sp)
    ld         $a3,32($t3)
    andi       $a4,$a5,0x1
    andi       $a5,$a5,0x6
    sd         $a5,152($sp)
    move       $a1,$s0
    ld         $a3,208($a3)
    move       $a0,$s1
    jal        mgrasTeardown
    sd         $a3,144($sp)
    move       $t2,$v0
    beqz       $v0, .L00001030
    ld         $ra,168($sp)
    move       $a0,$v0
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    ld         $s0,48($sp)
.L00001010:
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,240
.L0000101c:
    li         $a0,22
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    b          .L00001010
    ld         $s0,48($sp)
.L00001030:
    ld         $t0,152($sp)
    beqz       $t0, .L00001054
    nop
    sd         $t2,40($sp)
    ld         $a0,136($sp)
    jal        mgrasReleasePoolUserMemory
    ld         $a1,160($sp)
    ld         $t2,40($sp)
    ld         $ra,168($sp)
.L00001054:
    ld         $t1,88($sp)
    andi       $t1,$t1,0x4
    beqz       $t1, .L000011b4
    nop
    move       $a6,$zero
    beqz       $s2, .L000011b4
    ld         $t0,96($sp)
    sltiu      $at,$s2,2
    bnez       $at, .L00001088
    nop
    sltiu      $v1,$s0,3
    beqz       $v1, .L000012d0
    nop
.L00001088:
    beqz       $t0, .L0000131c
    nop
    move       $v0,$zero
    beqz       $s2, .L000010bc
    nop
.L0000109c:
    ld         $v1,104($sp)
    dsll       $at,$v0,0x3
    addiu      $v0,$v0,1
    daddu      $at,$at,$v1
    sltu       $t1,$v0,$s2
    ld         $at,0($at)
    bnez       $t1, .L0000109c
    or         $a6,$at,$a6
.L000010bc:
    andi       $t0,$a6,0xfff
    beqz       $t0, .L000011f0
    nop
    li         $a0,22
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    b          .L00001010
    ld         $s0,48($sp)
.L000010dc:
    li         $a0,14
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    b          .L00001010
    ld         $s0,48($sp)
.L000010f0:
    cache      0x14,0($sp)
    lui        $a4,0x5
    lui        $a3,0x40
    ld         $a2,144($sp)
    addu       $a1,$s0,$s0
    ori        $a3,$a3,0x8
    addiu      $a1,$a1,2080
    ld         $a0,160($sp)
    daddu      $a2,$a2,$a4
    sll        $a1,$a1,0x8
    or         $a1,$a1,$a3
    sw         $a1,132($a2)
    ld         $a0,64($a0)
    sd         $a2,0($sp)
    jal        kvtophys
    daddiu     $a0,$a0,12
    cache      0x14,0($sp)
    ld         $t0,160($sp)
    lw         $at,76($t0)
    ld         $t2,0($sp)
    sltu       $at,$zero,$at
    or         $at,$at,$v0
    sd         $at,128($t2)
    lw         $ra,56($t0)
    ld         $t1,120($sp)
    multu      $ra,$s2
    dsll32     $t1,$t1,0x0
    dsrl32     $t1,$t1,0x0
    lui        $v1,0x40
    ori        $v1,$v1,0x4
    addiu      $v0,$s0,2096
    sll        $v0,$v0,0x8
    addiu      $ra,$s0,2091
    or         $v0,$v0,$v1
    sll        $ra,$ra,0x8
    dsll32     $v0,$v0,0x0
    or         $ra,$ra,$v1
    dsll32     $ra,$ra,0x0
    mflo       $at
    dsll32     $at,$at,0x0
    or         $t1,$t1,$ra
    ld         $ra,168($sp)
    dsrl32     $at,$at,0x0
    or         $at,$at,$v0
    sd         $at,128($t2)
    sd         $t1,128($t2)
    ld         $t2,40($sp)
    li         $a3,1
    sw         $a3,0($t0)
.L000011b4:
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    move       $a0,$t2
    b          .L00001010
    ld         $s0,48($sp)
.L000011c8:
    sd         $ra,168($sp)
    sd         $v0,104($sp)
    sd         $a2,88($sp)
    sd         $a5,96($sp)
    sd         $a4,112($sp)
    ld         $v1,1128($a3)
    sd         $a3,136($sp)
    daddiu     $v1,$v1,16
    b          .L00000fc8
    sd         $v1,160($sp)
.L000011f0:
    ld         $a6,96($sp)
    li         $a7,-4096
    addiu      $a6,$a6,4095
    and        $a6,$a6,$a7
    srl        $t2,$a6,0xc
    addiu      $t0,$t2,-1
    and        $t0,$t0,$t2
    beqz       $t0, .L00001218
    move       $a7,$t2
    addu       $a7,$t2,$t2
.L00001218:
    srl        $a7,$a7,0x1
    beqz       $a7, .L00001230
    move       $v0,$zero
.L00001224:
    srl        $a7,$a7,0x1
    bnez       $a7, .L00001224
    addiu      $v0,$v0,1
.L00001230:
    sltiu      $t0,$s0,3
    beqz       $t0, .L00001248
    nop
    sltiu      $t1,$v0,11
    beqz       $t1, .L000012f8
    nop
.L00001248:
    li         $a5,4
    beq        $a5, $s0, .L000012e4
    nop
    li         $at,3
    beq        $s0, $at, .L000012e4
    nop
.L00001260:
    beq        $a5, $s0, .L0000130c
    nop
    li         $v1,3
    beq        $s0, $v1, .L0000130c
    nop
    sd         $v0,120($sp)
    li         $a5,1
    sd         $a6,128($sp)
    sllv       $a5,$a5,$v0
.L00001284:
    cache      0x14,0($sp)
    multu      $a5,$s2
    ld         $a2,160($sp)
    move       $a3,$zero
    move       $a0,$a2
    sw         $a5,56($a2)
    move       $a2,$zero
    mflo       $a1
    jal        mgrasGetTxTbl
    addiu      $a1,$a1,3
    sd         $v0,40($sp)
    move       $t0,$v0
    beqz       $v0, .L00001330
    ld         $ra,168($sp)
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    move       $a0,$v0
    b          .L00001010
    ld         $s0,48($sp)
.L000012d0:
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    li         $a0,22
    b          .L00001010
    ld         $s0,48($sp)
.L000012e4:
    lui        $t1,0xfff
    ori        $t1,$t1,0xffff
    sltu       $t1,$t1,$a6
    beqz       $t1, .L00001260
    nop
.L000012f8:
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    li         $a0,22
    b          .L00001010
    ld         $s0,48($sp)
.L0000130c:
    sd         $v0,120($sp)
    sd         $a6,128($sp)
    b          .L00001284
    move       $a5,$t2
.L0000131c:
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    li         $a0,22
    b          .L00001010
    ld         $s0,48($sp)
.L00001330:
    cache      0x14,0($sp)
    ld         $a1,112($sp)
    ld         $a2,160($sp)
    dsll32     $a0,$s2,0x0
    dsrl32     $a0,$a0,0x0
    sd         $a0,8($sp)
    sw         $a1,76($a2)
    jal        kern_malloc
    dsll       $a0,$a0,0x3
    ld         $a0,8($sp)
    sd         $v0,64($sp)
    dsll       $a0,$a0,0x2
    jal        kern_malloc
    sd         $a0,16($sp)
    sd         $v0,56($sp)
    jal        kern_malloc
    ld         $a0,16($sp)
    ld         $a4,64($sp)
    move       $a5,$v0
    beqz       $a4, .L000013a8
    ld         $ra,168($sp)
    ld         $t0,56($sp)
    beqz       $t0, .L00001398
    nop
    bnez       $a5, .L000013f4
    nop
.L00001398:
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    bnez       $a4, .L0000157c
    ld         $s0,48($sp)
.L000013a8:
    ld         $t1,56($sp)
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    bnez       $t1, .L000013cc
    ld         $s0,48($sp)
    bnez       $a5, .L000013e4
    nop
.L000013c4:
    b          .L00001010
    li         $a0,12
.L000013cc:
    sd         $a5,72($sp)
    jal        kern_free
    ld         $a0,56($sp)
    ld         $a5,72($sp)
    beqz       $a5, .L000013c4
    ld         $ra,168($sp)
.L000013e4:
    jal        kern_free
    move       $a0,$a5
    b          .L000013c4
    ld         $ra,168($sp)
.L000013f4:
    beqz       $s2, .L00001484
    sd         $zero,80($sp)
    sd         $a5,72($sp)
.L00001400:
    cache      0x14,0($sp)
    ld         $a0,136($sp)
    ld         $a3,160($sp)
    ld         $a2,128($sp)
    sd         $a5,72($sp)
    ld         $a5,80($sp)
    ld         $a1,104($sp)
    ld         $t0,64($sp)
    dsll       $a7,$a5,0x3
    ld         $a4,56($sp)
    daddu      $a1,$a7,$a1
    dsll       $a5,$a5,0x2
    daddu      $a7,$a7,$t0
    ld         $a6,0($a1)
    daddu      $a4,$a5,$a4
    sd         $a6,0($a7)
    sw         $a2,0($a4)
    ld         $a4,72($sp)
    lw         $a3,76($a3)
    daddu      $a4,$a4,$a5
    jal        mgrasLockMem
    ld         $a1,0($a1)
    sd         $v0,40($sp)
    ld         $a5,72($sp)
    bnez       $v0, .L00001480
    ld         $a4,64($sp)
    ld         $t0,80($sp)
    addiu      $t0,$t0,1
    sd         $t0,80($sp)
    sltu       $t0,$t0,$s2
    bnez       $t0, .L00001400
    nop
.L00001480:
    ld         $ra,168($sp)
.L00001484:
    cache      0x14,0($sp)
    ld         $at,160($sp)
    ld         $v1,56($sp)
    sw         $zero,16($at)
    ld         $t1,80($sp)
    sw         $t1,12($at)
    sd         $a5,48($at)
    sd         $v1,40($at)
    bne        $t1, $s2, .L00001594
    sd         $a4,32($at)
    beqz       $s2, .L0000150c
    sd         $zero,80($sp)
.L000014b4:
    ld         $a2,160($sp)
    ld         $a0,80($sp)
    lw         $a4,56($a2)
    multu      $a0,$a4
    ld         $a3,56($sp)
    dsll       $a1,$a0,0x2
    daddu      $a1,$a1,$a3
    ld         $a3,64($sp)
    ld         $a2,64($a2)
    dsll       $a0,$a0,0x3
    lw         $a1,0($a1)
    daddu      $a0,$a0,$a3
    mflo       $a3
    ld         $a0,0($a0)
    jal        mgrasFillTxTbl
    addiu      $a3,$a3,3
    ld         $t0,80($sp)
    addiu      $t0,$t0,1
    sd         $t0,80($sp)
    sltu       $t0,$t0,$s2
    bnez       $t0, .L000014b4
    nop
.L0000150c:
    cache      0x14,0($sp)
    ld         $a3,160($sp)
    lw         $a2,56($a3)
    multu      $a2,$s2
    sw         $zero,24($a3)
    mflo       $a1
    ld         $a0,64($a3)
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    lw         $a2,12($a0)
    dsll       $a1,$a1,0x2
    daddiu     $a0,$a0,12
    sw         $a2,20($a3)
    jal        dki_dcache_wb
    sll        $a1,$a1,0x0
    jal        RRM_CheckValidFault
    ld         $a0,64($s1)
    beqz       $v0, .L000010f0
    ld         $s1,32($sp)
    ld         $a0,136($sp)
    ld         $a1,160($sp)
    ld         $s2,24($sp)
    li         $a2,1
    jal        mgrasReleasePoolMemory
    ld         $s0,48($sp)
    li         $a0,14
    b          .L00001010
    ld         $ra,168($sp)
.L0000157c:
    sd         $a5,72($sp)
    jal        kern_free
    move       $a0,$a4
    ld         $a5,72($sp)
    b          .L000013a8
    ld         $ra,168($sp)
.L00001594:
    ld         $a0,136($sp)
    ld         $a1,160($sp)
    ld         $s1,32($sp)
    ld         $s2,24($sp)
    jal        mgrasReleasePoolUserMemory
    ld         $s0,48($sp)
    ld         $a0,40($sp)
    b          .L00001010
    ld         $ra,168($sp)

glabel mgrasGetFlushRanges
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-80
    sd         $s1,24($sp)
    move       $v0,$a2
    sd         $s0,32($sp)
    move       $s1,$a0
    sd         $zero,0($a2)
    beqz       $a0, .L000015f0
    move       $s0,$zero
    sltiu      $at,$s1,4096
    sd         $v0,8($sp)
    bnez       $at, .L00001604
    sd         $a1,16($sp)
    li         $s0,22
.L000015f0:
    move       $v0,$s0
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001604:
    dsll32     $a0,$s1,0x0
    dsrl32     $a0,$a0,0x0
    dsll       $a0,$a0,0x4
    sll        $a0,$a0,0x0
    sd         $a0,0($sp)
    sd         $ra,40($sp)
    dsll32     $a0,$a0,0x0
    jal        kern_malloc
    dsrl32     $a0,$a0,0x0
    cache      0x14,0($sp)
    ld         $a3,8($sp)
    ld         $ra,40($sp)
    beqz       $v0, .L00001670
    sd         $v0,0($a3)
    jal        curproc_abi
    nop
    ld         $a0,16($sp)
    ld         $a3,-30712($gp)
    ld         $a1,8($sp)
    move       $a4,$v0
    li         $a5,4
    ld         $a2,0($sp)
    move       $a6,$s1
    jal        copyin_xlate
    ld         $a1,0($a1)
    beqz       $v0, .L000015f0
    ld         $ra,40($sp)
.L00001670:
    b          .L000015f0
    li         $s0,14

glabel MgrasDmaUtil_Single
    lw         $a6,0($a2)
    li         $at,-16
    and        $at,$a6,$at
    li         $v0,22
    daddiu     $sp,$sp,-80
    beqz       $at, .L0000169c
    andi       $v1,$a6,0x7
.L00001694:
    jr         $ra
    daddiu     $sp,$sp,80
.L0000169c:
    beqz       $v1, .L000016f0
    li         $a4,2
    lw         $a3,4($a2)
    sd         $a6,16($sp)
    beq        $a3, $a4, .L00001728
    sd         $a2,24($sp)
    ld         $a2,16($sp)
    ld         $a4,24($sp)
    sd         $ra,32($sp)
    li         $a6,1
    lw         $a5,16($a4)
    daddiu     $a7,$a4,8
    jal        mgrasDmaUtil
    lw         $a4,20($a4)
    ld         $a2,24($sp)
    ld         $a6,16($sp)
    move       $a0,$v0
    beqz       $v0, .L000016f0
    ld         $ra,32($sp)
    b          .L00001694
    move       $v0,$a0
.L000016f0:
    andi       $a5,$a6,0x8
    beqz       $a5, .L00001720
    nop
    ld         $a7,24($a2)
    sd         $a7,0($sp)
    sd         $ra,32($sp)
    daddiu     $a1,$sp,0
    lw         $a6,32($a2)
    li         $a0,1
    jal        mgrasDmaFlushUtil
    sw         $a6,8($sp)
    ld         $ra,32($sp)
.L00001720:
    b          .L00001694
    move       $v0,$zero
.L00001728:
    li         $v0,22
    b          .L00001694
    nop

glabel MgrasDmaUtil_Multi
    daddiu     $sp,$sp,-112
    sd         $zero,0($sp)
    lw         $a7,0($a2)
    li         $at,-16
    move       $a3,$zero
    and        $at,$a7,$at
    li         $v0,22
    move       $a6,$zero
    beqz       $at, .L00001764
    andi       $v1,$a7,0x4
    b          .L000017b8
    nop
.L00001764:
    beqz       $v1, .L00001784
    nop
    lw         $t0,8($a2)
    beqz       $t0, .L00001784
    sltiu      $a4,$t0,4096
    bnez       $a4, .L0000185c
    nop
    li         $a3,22
.L00001784:
    beqz       $a3, .L000017dc
    nop
.L0000178c:
    bnez       $a6, .L000017c0
    nop
.L00001794:
    ld         $a0,0($sp)
    beqz       $a0, .L000017b4
    nop
    sd         $ra,72($sp)
    jal        kern_free
    sd         $a3,64($sp)
    ld         $a3,64($sp)
    ld         $ra,72($sp)
.L000017b4:
    move       $v0,$a3
.L000017b8:
    jr         $ra
    daddiu     $sp,$sp,112
.L000017c0:
    sd         $ra,72($sp)
    sd         $a3,64($sp)
    jal        kern_free
    move       $a0,$a6
    ld         $a3,64($sp)
    b          .L00001794
    ld         $ra,72($sp)
.L000017dc:
    andi       $a5,$a7,0x8
    beqz       $a5, .L00001830
    nop
    sd         $a6,16($sp)
    sd         $a7,24($sp)
    sd         $a1,56($sp)
    ld         $a1,40($a2)
    sd         $ra,72($sp)
    sd         $a0,48($sp)
    sd         $a2,8($sp)
    move       $a0,$a2
    daddiu     $a2,$sp,0
    jal        mgrasGetFlushRanges
    lw         $a0,32($a0)
    ld         $a0,48($sp)
    ld         $a1,56($sp)
    ld         $a2,8($sp)
    ld         $a7,24($sp)
    ld         $a6,16($sp)
    move       $a3,$v0
    ld         $ra,72($sp)
.L00001830:
    bnez       $a3, .L0000178c
    nop
    andi       $a4,$a7,0x7
    beqz       $a4, .L00001958
    nop
    lw         $a3,4($a2)
    li         $a5,2
    bne        $a3, $a5, .L00001918
    nop
    b          .L00001958
    li         $a3,22
.L0000185c:
    sd         $a0,48($sp)
    sd         $a3,64($sp)
    dsll32     $a0,$t0,0x0
    sd         $a7,24($sp)
    dsrl32     $a0,$a0,0x0
    sd         $a2,8($sp)
    dsll       $a0,$a0,0x3
    sll        $a0,$a0,0x0
    sd         $a0,32($sp)
    sd         $ra,72($sp)
    dsll32     $a0,$a0,0x0
    sd         $a1,56($sp)
    jal        kern_malloc
    dsrl32     $a0,$a0,0x0
    sd         $v0,40($sp)
    ld         $a0,48($sp)
    ld         $a1,56($sp)
    ld         $a2,8($sp)
    ld         $a7,24($sp)
    move       $a4,$v0
    ld         $a3,64($sp)
    move       $a6,$v0
    bnez       $v0, .L000018c4
    ld         $ra,72($sp)
.L000018bc:
    b          .L00001784
    li         $a3,14
.L000018c4:
    jal        curproc_abi
    sd         $a6,16($sp)
    ld         $a3,-30704($gp)
    ld         $a2,32($sp)
    ld         $a0,8($sp)
    ld         $a1,40($sp)
    move       $a4,$v0
    lw         $a6,8($a0)
    li         $a5,4
    jal        copyin_xlate
    ld         $a0,16($a0)
    ld         $a0,48($sp)
    ld         $a1,56($sp)
    ld         $a2,8($sp)
    ld         $a7,24($sp)
    ld         $a6,16($sp)
    ld         $a3,64($sp)
    beqz       $v0, .L00001784
    ld         $ra,72($sp)
    b          .L000018bc
    nop
.L00001918:
    sd         $a7,24($sp)
    sd         $ra,72($sp)
    sd         $a2,8($sp)
    sd         $a6,16($sp)
    ld         $a4,8($sp)
    move       $a2,$a7
    ld         $a7,16($sp)
    lw         $a6,8($a4)
    lw         $a5,24($a4)
    jal        mgrasDmaUtil
    lw         $a4,28($a4)
    ld         $a2,8($sp)
    ld         $a7,24($sp)
    ld         $a6,16($sp)
    move       $a3,$v0
    ld         $ra,72($sp)
.L00001958:
    bnez       $a3, .L0000178c
    nop
    andi       $a5,$a7,0x8
    beqz       $a5, .L0000178c
    nop
    sd         $a3,64($sp)
    sd         $a6,16($sp)
    ld         $a1,0($sp)
    sd         $ra,72($sp)
    jal        mgrasDmaFlushUtil
    lw         $a0,32($a2)
    ld         $a6,16($sp)
    ld         $a3,64($sp)
    b          .L0000178c
    ld         $ra,72($sp)

glabel MgrasDmaEditAppend
    daddiu     $sp,$sp,-368
    sd         $zero,64($sp)
    sd         $zero,152($sp)
    sd         $zero,120($sp)
    sd         $zero,160($sp)
    sd         $zero,128($sp)
    sd         $zero,136($sp)
    sd         $zero,168($sp)
    sd         $zero,144($sp)
    sd         $zero,16($sp)
    sd         $zero,24($sp)
    sd         $s4,216($sp)
    sd         $s0,192($sp)
    move       $a7,$zero
    move       $a6,$zero
    sd         $s8,200($sp)
    move       $t0,$zero
    move       $t2,$zero
    sd         $s1,208($sp)
    move       $t3,$zero
    move       $t9,$zero
    sd         $zero,0($sp)
    move       $v0,$zero
    move       $t8,$zero
    sd         $s6,176($sp)
    move       $s6,$zero
    move       $s1,$zero
    lw         $a3,0($a2)
    sd         $s2,224($sp)
    move       $s8,$zero
    li         $at,-25
    sd         $s3,184($sp)
    move       $s2,$zero
    and        $at,$a3,$at
    move       $s3,$zero
    move       $s0,$zero
    ld         $s4,112($a1)
    lw         $t1,8($a2)
    beqz       $at, .L00001b40
    andi       $v1,$a3,0x8
    sd         $s7,320($sp)
    li         $s6,22
.L00001a3c:
    sd         $s7,320($sp)
    addiu      $s0,$s0,-1
    li         $s7,-1
    beq        $s7, $s0, .L00001a9c
    sd         $s5,312($sp)
    sd         $ra,304($sp)
    ld         $s5,8($sp)
.L00001a58:
    dsll32     $a1,$s0,0x0
    dsrl32     $a1,$a1,0x0
    move       $a0,$s4
    dsll       $a4,$a1,0x2
    lw         $a3,76($s5)
    dsll       $a1,$a1,0x3
    daddu      $a2,$a4,$s2
    addiu      $s0,$s0,-1
    daddu      $a1,$a1,$s1
    lw         $a2,0($a2)
    daddu      $a4,$a4,$s3
    jal        mgrasUnlockMem
    ld         $a1,0($a1)
    bne        $s7, $s0, .L00001a58
    nop
    ld         $ra,304($sp)
    ld         $s5,312($sp)
.L00001a9c:
    ld         $a4,16($sp)
    bnez       $a4, .L00001b00
    ld         $s7,320($sp)
    bnez       $s8, .L00001b14
    nop
.L00001ab0:
    ld         $a5,24($sp)
    bnez       $a5, .L00001b2c
    nop
.L00001abc:
    ld         $a0,0($sp)
    beqz       $a0, .L00001ad8
    nop
    sd         $ra,304($sp)
    jal        kern_free
    nop
    ld         $ra,304($sp)
.L00001ad8:
    move       $v0,$s6
.L00001adc:
    ld         $s0,192($sp)
    ld         $s1,208($sp)
    ld         $s2,224($sp)
    ld         $s3,184($sp)
    ld         $s4,216($sp)
    ld         $s6,176($sp)
    ld         $s8,200($sp)
    jr         $ra
    daddiu     $sp,$sp,368
.L00001b00:
    sd         $ra,304($sp)
    jal        kern_free
    ld         $a0,16($sp)
    beqz       $s8, .L00001ab0
    ld         $ra,304($sp)
.L00001b14:
    sd         $ra,304($sp)
    jal        kern_free
    move       $a0,$s8
    ld         $at,24($sp)
    beqz       $at, .L00001abc
    ld         $ra,304($sp)
.L00001b2c:
    sd         $ra,304($sp)
    jal        kern_free
    ld         $a0,24($sp)
    b          .L00001abc
    ld         $ra,304($sp)
.L00001b40:
    sd         $v0,248($sp)
    beqz       $v1, .L00001bcc
    sd         $v1,80($sp)
    sd         $a3,296($sp)
    sd         $a6,288($sp)
    sd         $t0,280($sp)
    sd         $t1,88($sp)
    sd         $t2,272($sp)
    sd         $t3,264($sp)
    sd         $t8,104($sp)
    sd         $t9,256($sp)
    sd         $a1,96($sp)
    ld         $a1,32($a2)
    sd         $ra,304($sp)
    sd         $a0,240($sp)
    sd         $a2,48($sp)
    move       $a0,$a2
    daddiu     $a2,$sp,0
    jal        mgrasGetFlushRanges
    lw         $a0,28($a0)
    move       $s6,$v0
    sltu       $a7,$zero,$v0
    ld         $v0,248($sp)
    ld         $a0,240($sp)
    ld         $t9,256($sp)
    ld         $t8,104($sp)
    ld         $t3,264($sp)
    ld         $a1,96($sp)
    ld         $t2,272($sp)
    ld         $t1,88($sp)
    ld         $t0,280($sp)
    ld         $a6,288($sp)
    ld         $a2,48($sp)
    ld         $a3,296($sp)
    ld         $ra,304($sp)
.L00001bcc:
    bnez       $a7, .L00001a3c
    nop
    andi       $a4,$a3,0x10
    beqz       $a4, .L00001c1c
    nop
    beqz       $t1, .L00001c1c
    nop
    lw         $a3,4($a2)
    sltiu      $a5,$a3,3
    beqz       $a5, .L00001c10
    nop
    li         $at,2
    beq        $a3, $at, .L00001c10
    nop
    sltiu      $v1,$t1,4096
    bnez       $v1, .L00001ca0
    nop
.L00001c10:
    li         $t0,1
    li         $s6,22
.L00001c18:
    move       $a6,$t0
.L00001c1c:
    bnez       $a6, .L00001a3c
    nop
    bnez       $t2, .L00001a3c
    nop
    bnez       $t9, .L00001a3c
    nop
    bnez       $v0, .L00001a3c
    nop
    ld         $a4,152($sp)
    bnez       $a4, .L00001a3c
    nop
    ld         $a5,120($sp)
    bnez       $a5, .L00001a3c
    nop
    ld         $at,128($sp)
    bnez       $at, .L00001a3c
    nop
    ld         $v1,136($sp)
    bnez       $v1, .L00001a3c
    nop
    ld         $a4,144($sp)
    bnez       $a4, .L00001a3c
    nop
    ld         $a5,80($sp)
    beqz       $a5, .L00001a3c
    nop
    ld         $a1,0($sp)
    sd         $ra,304($sp)
    jal        mgrasDmaFlushUtil
    lw         $a0,28($a2)
    sd         $s7,320($sp)
    b          .L00001a3c
    ld         $ra,304($sp)
.L00001ca0:
    bnez       $a1, .L00001cb4
    nop
    li         $t3,1
    b          .L00001d40
    li         $s6,14
.L00001cb4:
    li         $a7,1
    sd         $s5,312($sp)
    beq        $a7, $a3, .L00001e34
    ld         $a6,112($a1)
    dsll32     $at,$a3,0x0
    dsrl32     $at,$at,0x0
    dsll       $s5,$at,0x2
    daddu      $s5,$s5,$at
    dsll       $s5,$s5,0x4
    daddu      $s5,$s5,$a6
    daddiu     $s5,$s5,640
.L00001ce0:
    lw         $a4,0($s5)
    ld         $a3,32($a0)
    beqz       $a4, .L00001e40
    ld         $a3,208($a3)
.L00001cf0:
    lw         $at,24($a2)
    lw         $a5,56($s5)
    li         $v1,-4096
    addiu      $at,$at,4095
    and        $at,$at,$v1
    sd         $at,112($sp)
    sd         $t1,88($sp)
    srl        $at,$at,0xc
    sd         $a1,96($sp)
    sltu       $a5,$a5,$at
    sd         $t8,104($sp)
    beqz       $a5, .L00001d48
    sd         $a3,32($sp)
    li         $v1,1
    sd         $v1,104($sp)
    sd         $s5,8($sp)
    li         $s6,22
    ld         $s5,312($sp)
.L00001d38:
    ld         $v0,104($sp)
.L00001d3c:
    ld         $t9,64($sp)
.L00001d40:
    b          .L00001c18
    move       $t2,$t3
.L00001d48:
    ld         $a1,88($sp)
    lw         $a0,12($s5)
    sd         $a2,48($sp)
    addu       $a0,$a0,$a1
    sd         $t0,280($sp)
    dsll32     $a0,$a0,0x0
    sd         $ra,304($sp)
    dsrl32     $a0,$a0,0x0
    sd         $t3,264($sp)
    jal        kern_malloc
    dsll       $a0,$a0,0x3
    ld         $a1,88($sp)
    lw         $a0,12($s5)
    addu       $a0,$a0,$a1
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    sd         $v0,16($sp)
    jal        kern_malloc
    dsll       $a0,$a0,0x2
    ld         $a1,88($sp)
    lw         $a0,12($s5)
    addu       $a0,$a0,$a1
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    move       $s8,$v0
    jal        kern_malloc
    dsll       $a0,$a0,0x2
    lw         $s1,12($s5)
    dsll32     $s3,$s1,0x0
    dsll32     $s2,$s1,0x0
    dsll32     $s1,$s1,0x0
    dsrl32     $s3,$s3,0x0
    dsrl32     $s2,$s2,0x0
    sd         $v0,24($sp)
    dsrl32     $s1,$s1,0x0
    ld         $t3,264($sp)
    dsll       $s1,$s1,0x3
    ld         $a4,16($sp)
    dsll       $s2,$s2,0x2
    ld         $t0,280($sp)
    move       $ra,$v0
    dsll       $s3,$s3,0x2
    ld         $a2,48($sp)
    daddu      $s3,$s3,$v0
    daddu      $s2,$s2,$s8
    ld         $ra,304($sp)
    beqz       $a4, .L00001e18
    daddu      $s1,$s1,$a4
    beqz       $s8, .L00001e18
    nop
    bnez       $v0, .L00001e64
    nop
.L00001e18:
    li         $a7,1
    sd         $s5,8($sp)
.L00001e20:
    li         $at,1
    sd         $at,152($sp)
    li         $s6,14
    b          .L00001d38
    ld         $s5,312($sp)
.L00001e34:
    ld         $s5,1128($a6)
    b          .L00001ce0
    daddiu     $s5,$s5,16
.L00001e40:
    lw         $at,4($s5)
    bnez       $at, .L00001cf0
    nop
    li         $v1,1
    sd         $v1,64($sp)
    sd         $s5,8($sp)
    li         $s6,14
    b          .L00001d3c
    ld         $s5,312($sp)
.L00001e64:
    jal        curproc_abi
    sd         $v0,40($sp)
    ld         $a6,88($sp)
    dsll32     $a2,$a6,0x0
    move       $a4,$v0
    ld         $a0,48($sp)
    dsrl32     $a2,$a2,0x0
    li         $a5,4
    ld         $a3,-30704($gp)
    dsll       $a2,$a2,0x3
    move       $a1,$s1
    ld         $a0,16($a0)
    jal        copyin_xlate
    sll        $a2,$a2,0x0
    ld         $t3,264($sp)
    ld         $t0,280($sp)
    ld         $a2,48($sp)
    beqz       $v0, .L00001eb8
    ld         $ra,304($sp)
    b          .L00001e20
    sd         $s5,8($sp)
.L00001eb8:
    lw         $a4,12($s5)
    beqz       $a4, .L00001f30
    move       $a7,$zero
.L00001ec4:
    cache      0x14,0($sp)
    dsll32     $a4,$a7,0x0
    ld         $a5,32($s5)
    dsrl32     $a4,$a4,0x0
    ld         $v1,16($sp)
    dsll       $at,$a4,0x3
    daddu      $a5,$a5,$at
    daddu      $at,$at,$v1
    ld         $a5,0($a5)
    sd         $a5,0($at)
    ld         $v1,40($s5)
    dsll       $a4,$a4,0x2
    daddu      $v1,$v1,$a4
    daddu      $a5,$a4,$s8
    lw         $v1,0($v1)
    sw         $v1,0($a5)
    ld         $at,48($s5)
    ld         $v1,40($sp)
    daddu      $at,$at,$a4
    daddu      $v1,$v1,$a4
    lw         $at,0($at)
    sw         $at,0($v1)
    lw         $a5,12($s5)
    addiu      $a7,$a7,1
    sltu       $a5,$a7,$a5
    bnez       $a5, .L00001ec4
    nop
.L00001f30:
    ld         $a5,88($sp)
    move       $v0,$zero
    beqz       $a5, .L00001f68
    move       $a7,$zero
.L00001f40:
    dsll32     $v1,$a7,0x0
    dsrl32     $v1,$v1,0x0
    ld         $at,88($sp)
    dsll       $v1,$v1,0x3
    addiu      $a7,$a7,1
    daddu      $v1,$v1,$s1
    sltu       $at,$a7,$at
    ld         $v1,0($v1)
    bnez       $at, .L00001f40
    or         $v0,$v1,$v0
.L00001f68:
    andi       $a4,$v0,0xfff
    beqz       $a4, .L00001f94
    nop
    li         $a5,1
    sd         $a5,160($sp)
    li         $s6,22
    sd         $s5,8($sp)
.L00001f84:
    ld         $s5,160($sp)
    sd         $s5,120($sp)
    b          .L00001d38
    ld         $s5,312($sp)
.L00001f94:
    ld         $at,88($sp)
    beqz       $at, .L00002014
    move       $a7,$zero
    sd         $a7,56($sp)
.L00001fa4:
    cache      0x14,0($sp)
    move       $a1,$a7
    dsll32     $a1,$a7,0x0
    dsrl32     $a1,$a1,0x0
    dsll       $a4,$a1,0x2
    ld         $a2,112($sp)
    daddu      $a3,$a4,$s2
    sw         $a2,0($a3)
    sd         $a7,56($sp)
    dsll       $a1,$a1,0x3
    move       $a0,$s4
    daddu      $a1,$a1,$s1
    lw         $a3,76($s5)
    daddu      $a4,$a4,$s3
    jal        mgrasLockMem
    ld         $a1,0($a1)
    ld         $a7,56($sp)
    ld         $t3,264($sp)
    ld         $t0,280($sp)
    move       $s6,$v0
    bnez       $v0, .L00002010
    ld         $a2,48($sp)
    ld         $a4,88($sp)
    addiu      $a7,$a7,1
    sltu       $a4,$a7,$a4
    bnez       $a4, .L00001fa4
    nop
.L00002010:
    ld         $ra,304($sp)
.L00002014:
    ld         $a5,88($sp)
    move       $s0,$a7
    xor        $at,$a5,$a7
    sltu       $at,$zero,$at
    bne        $a5, $a7, .L00002070
    sd         $at,128($sp)
    ld         $a4,88($sp)
    lw         $v1,12($s5)
    lw         $at,56($s5)
    addu       $v1,$v1,$a4
    multu      $at,$v1
    lw         $v1,72($s5)
    mflo       $a7
    addiu      $a7,$a7,3
    sltu       $v1,$v1,$a7
    bnez       $v1, .L00002078
    nop
.L00002058:
    ld         $a5,168($sp)
    sd         $a5,136($sp)
    beqz       $a5, .L000020c0
    move       $at,$a5
    b          .L00001f84
    sd         $s5,8($sp)
.L00002070:
    b          .L00001f84
    sd         $s5,8($sp)
.L00002078:
    sd         $a7,232($sp)
    ld         $a0,96($sp)
    ld         $a1,48($sp)
    li         $a5,1
    li         $a4,1
    ld         $a3,32($sp)
    move       $a2,$s5
    jal        mgrasTeardown
    lw         $a1,4($a1)
    ld         $a7,232($sp)
    ld         $t3,264($sp)
    ld         $t0,280($sp)
    sltu       $a2,$zero,$v0
    sd         $a2,168($sp)
    ld         $a2,48($sp)
    move       $s6,$v0
    b          .L00002058
    ld         $ra,304($sp)
.L000020c0:
    lw         $a4,56($s5)
    lw         $a3,12($s5)
    multu      $a3,$a4
    move       $a0,$s5
    move       $a1,$a7
    mflo       $a3
    jal        mgrasGetTxTbl
    li         $a2,3
    sltu       $a5,$zero,$v0
    sd         $a5,144($sp)
    ld         $t3,264($sp)
    ld         $t0,280($sp)
    ld         $a2,48($sp)
    move       $s6,$v0
    beqz       $v0, .L00002108
    ld         $ra,304($sp)
    b          .L00001f84
    sd         $s5,8($sp)
.L00002108:
    jal        kern_free
    ld         $a0,32($s5)
    jal        kern_free
    ld         $a0,40($s5)
    jal        kern_free
    ld         $a0,48($s5)
    cache      0x14,0($sp)
    ld         $a4,24($sp)
    sd         $zero,24($sp)
    ld         $v1,16($sp)
    sd         $zero,16($sp)
    ld         $a7,88($sp)
    lw         $at,12($s5)
    sd         $s8,40($s5)
    sd         $at,56($sp)
    addu       $a7,$at,$a7
    move       $s0,$zero
    sd         $a4,48($s5)
    sltu       $at,$at,$a7
    move       $s8,$zero
    sd         $v1,32($s5)
    move       $a4,$zero
    move       $v1,$zero
    beqz       $at, .L000021c0
    sw         $a7,12($s5)
.L0000216c:
    ld         $a3,56($sp)
    lw         $a4,56($s5)
    multu      $a4,$a3
    dsll32     $a3,$a3,0x0
    ld         $a0,32($s5)
    dsrl32     $a3,$a3,0x0
    ld         $a1,112($sp)
    dsll       $a3,$a3,0x3
    ld         $a2,64($s5)
    daddu      $a0,$a0,$a3
    mflo       $a3
    ld         $a0,0($a0)
    jal        mgrasFillTxTbl
    addiu      $a3,$a3,3
    ld         $a4,56($sp)
    lw         $a7,12($s5)
    addiu      $a4,$a4,1
    sd         $a4,56($sp)
    sltu       $a4,$a4,$a7
    bnez       $a4, .L0000216c
    nop
.L000021c0:
    lw         $a2,56($s5)
    multu      $a2,$a7
    mflo       $a1
    dsll32     $a1,$a1,0x0
    ld         $a0,64($s5)
    dsrl32     $a1,$a1,0x0
    dsll       $a1,$a1,0x2
    daddiu     $a0,$a0,12
    jal        dki_dcache_wb
    sll        $a1,$a1,0x0
    ld         $a0,96($sp)
    jal        RRM_CheckValidFault
    ld         $a0,64($a0)
    beqz       $v0, .L0000221c
    nop
    move       $a0,$s4
    move       $a1,$s5
    jal        mgrasReleasePoolMemory
    li         $a2,1
    ld         $ra,304($sp)
    li         $v0,14
    b          .L00001adc
    ld         $s5,312($sp)
.L0000221c:
    cache      0x14,0($sp)
    ld         $a2,32($sp)
    lui        $a3,0x5
    ld         $a1,48($sp)
    daddu      $a2,$a2,$a3
    sw         $zero,2304($a2)
    lw         $a1,4($a1)
    addu       $a1,$a1,$a1
    lui        $a3,0x40
    addiu      $a1,$a1,2080
    ori        $a3,$a3,0x8
    sll        $a1,$a1,0x8
    or         $a1,$a1,$a3
    sw         $a1,132($a2)
    ld         $a0,64($s5)
    sd         $s5,8($sp)
    sd         $a2,72($sp)
    jal        kvtophys
    daddiu     $a0,$a0,12
    cache      0x14,0($sp)
    lw         $at,76($s5)
    ld         $t0,72($sp)
    sltu       $at,$zero,$at
    or         $at,$at,$v0
    sd         $at,128($t0)
    lw         $ra,56($s5)
    lw         $t3,12($s5)
    ld         $a2,48($sp)
    multu      $t3,$ra
    lw         $t3,4($a2)
    lui        $ra,0x40
    addiu      $t3,$t3,2096
    ori        $ra,$ra,0x4
    sll        $t3,$t3,0x8
    or         $t3,$t3,$ra
    dsll32     $t3,$t3,0x0
    mflo       $a5
    dsll32     $a5,$a5,0x0
    ld         $ra,304($sp)
    dsrl32     $a5,$a5,0x0
    or         $a5,$a5,$t3
    ld         $t3,264($sp)
    sd         $a5,128($t0)
    ld         $t0,280($sp)
    li         $a4,1
    b          .L00001f84
    sw         $a4,0($s5)

glabel MgrasDmaEditReplace
    move       $t8,$zero
    daddiu     $sp,$sp,-256
    move       $a6,$zero
    move       $a7,$zero
    sd         $zero,0($sp)
    move       $t0,$zero
    move       $t1,$zero
    move       $t2,$zero
    move       $t3,$zero
    lw         $a5,0($a2)
    move       $v0,$zero
    sd         $s1,112($sp)
    li         $at,-41
    move       $t9,$a0
    sd         $s0,128($sp)
    and        $at,$a5,$at
    sd         $s2,120($sp)
    move       $s0,$zero
    move       $s1,$zero
    beqz       $at, .L000023a0
    move       $s2,$zero
    sd         $ra,208($sp)
    li         $s0,22
.L00002334:
    bnez       $s1, .L00002378
    ld         $ra,208($sp)
    bnez       $s2, .L0000238c
    nop
.L00002344:
    ld         $a0,0($sp)
    beqz       $a0, .L00002360
    nop
    sd         $ra,208($sp)
    jal        kern_free
    nop
    ld         $ra,208($sp)
.L00002360:
    move       $v0,$s0
.L00002364:
    ld         $s0,128($sp)
    ld         $s1,112($sp)
    ld         $s2,120($sp)
    jr         $ra
    daddiu     $sp,$sp,256
.L00002378:
    sd         $ra,208($sp)
    jal        kern_free
    move       $a0,$s1
    beqz       $s2, .L00002344
    ld         $ra,208($sp)
.L0000238c:
    sd         $ra,208($sp)
    jal        kern_free
    move       $a0,$s2
    b          .L00002344
    ld         $ra,208($sp)
.L000023a0:
    andi       $a0,$a5,0x8
    beqz       $a0, .L0000242c
    sd         $v0,144($sp)
    sd         $a5,200($sp)
    sd         $a6,192($sp)
    sd         $a7,184($sp)
    sd         $t0,176($sp)
    sd         $t1,168($sp)
    sd         $t2,160($sp)
    sd         $t3,24($sp)
    sd         $t9,152($sp)
    sd         $a1,16($sp)
    ld         $a1,32($a2)
    sd         $ra,208($sp)
    sd         $a0,136($sp)
    sd         $a2,8($sp)
    move       $a0,$a2
    daddiu     $a2,$sp,0
    jal        mgrasGetFlushRanges
    lw         $a0,24($a0)
    move       $s0,$v0
    sltu       $t8,$zero,$v0
    ld         $v0,144($sp)
    ld         $a0,136($sp)
    ld         $t9,152($sp)
    ld         $t3,24($sp)
    ld         $t2,160($sp)
    ld         $t1,168($sp)
    ld         $a1,16($sp)
    ld         $t0,176($sp)
    ld         $a7,184($sp)
    ld         $a6,192($sp)
    ld         $a2,8($sp)
    ld         $a5,200($sp)
    ld         $ra,208($sp)
.L0000242c:
    andi       $a3,$a5,0x20
    bnez       $t8, .L00002334
    sd         $ra,208($sp)
    beqz       $a3, .L00002480
    nop
    lw         $t8,8($a2)
    beqz       $t8, .L00002480
    nop
    lw         $a6,4($a2)
    sltiu      $a4,$a6,5
    beqz       $a4, .L00002474
    nop
    li         $at,2
    beq        $a6, $at, .L00002474
    nop
    sltiu      $v1,$t8,4096
    bnez       $v1, .L000024bc
    nop
.L00002474:
    li         $a7,1
    li         $s0,22
.L0000247c:
    move       $a6,$a7
.L00002480:
    bnez       $a6, .L00002334
    sd         $ra,208($sp)
    bnez       $t0, .L00002334
    sd         $ra,208($sp)
    bnez       $t2, .L00002334
    sd         $ra,208($sp)
    bnez       $v0, .L00002334
    sd         $ra,208($sp)
    beqz       $a0, .L00002334
    sd         $ra,208($sp)
    ld         $a1,0($sp)
    jal        mgrasDmaFlushUtil
    lw         $a0,24($a2)
    b          .L00002334
    nop
.L000024bc:
    bnez       $a1, .L000024d0
    nop
    li         $t1,1
    b          .L000025d4
    li         $s0,14
.L000024d0:
    li         $t0,1
    ld         $t2,112($a1)
    sd         $t2,40($sp)
    beq        $t0, $a6, .L000025dc
    move       $a3,$t2
    dsll32     $at,$a6,0x0
    dsrl32     $at,$at,0x0
    dsll       $a5,$at,0x2
    daddu      $a5,$a5,$at
    dsll       $a5,$a5,0x4
    daddu      $a5,$a5,$t2
    daddiu     $a5,$a5,640
.L00002500:
    lw         $at,0($a5)
    ld         $a6,32($t9)
    bnez       $at, .L00002538
    ld         $a6,208($a6)
    sd         $a1,16($sp)
    lw         $v1,4($a5)
    sd         $t3,24($sp)
    sd         $a5,32($sp)
    bnez       $v1, .L00002538
    sd         $a6,48($sp)
    li         $a3,1
    sd         $a3,24($sp)
    b          .L000025d0
    li         $s0,14
.L00002538:
    sd         $a2,8($sp)
    sd         $a7,184($sp)
    sd         $t1,168($sp)
    sd         $t3,24($sp)
    sd         $v0,144($sp)
    sd         $a1,16($sp)
    sd         $a5,32($sp)
    dsll32     $a1,$t8,0x0
    sd         $a0,136($sp)
    dsrl32     $a1,$a1,0x0
    sd         $ra,208($sp)
    dsll       $a0,$a1,0x2
    sd         $a6,48($sp)
    dsubu      $a0,$a0,$a1
    jal        kern_malloc
    dsll       $a0,$a0,0x3
    ld         $a0,8($sp)
    lwu        $a0,8($a0)
    move       $s1,$v0
    jal        kern_malloc
    dsll       $a0,$a0,0x2
    ld         $a0,136($sp)
    ld         $t1,168($sp)
    ld         $a7,184($sp)
    move       $a5,$v0
    ld         $a2,8($sp)
    move       $s2,$v0
    beqz       $s1, .L000025b4
    ld         $ra,208($sp)
    bnez       $a5, .L000025bc
    nop
.L000025b4:
    b          .L000025c0
    li         $a5,1
.L000025bc:
    move       $a5,$zero
.L000025c0:
    beqz       $a5, .L000025ec
    nop
.L000025c8:
    li         $v0,1
    li         $s0,14
.L000025d0:
    ld         $t2,24($sp)
.L000025d4:
    b          .L0000247c
    move       $t0,$t1
.L000025dc:
    ld         $a5,40($sp)
    ld         $a5,1128($a5)
    b          .L00002500
    daddiu     $a5,$a5,16
.L000025ec:
    jal        curproc_abi
    nop
    ld         $a0,8($sp)
    lw         $a3,8($a0)
    dsll32     $a6,$a3,0x0
    dsrl32     $a6,$a6,0x0
    dsll32     $a3,$a3,0x0
    dsrl32     $a3,$a3,0x0
    move       $a4,$v0
    dsll       $a2,$a3,0x2
    sll        $a6,$a6,0x0
    dsubu      $a2,$a2,$a3
    li         $a5,4
    ld         $a0,16($a0)
    dsll       $a2,$a2,0x3
    move       $a1,$s1
    ld         $a3,-30696($gp)
    jal        copyin_xlate
    sll        $a2,$a2,0x0
    ld         $a0,136($sp)
    ld         $t1,168($sp)
    ld         $a7,184($sp)
    ld         $a2,8($sp)
    bnez       $v0, .L000025c8
    ld         $ra,208($sp)
    lw         $t8,8($a2)
    beqz       $t8, .L000026f4
    sd         $zero,104($sp)
    li         $v0,-4096
.L00002660:
    cache      0x14,0($sp)
    ld         $at,104($sp)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    dsll       $a5,$at,0x2
    dsubu      $a5,$a5,$at
    dsll       $a5,$a5,0x3
    daddu      $a5,$a5,$s1
    lw         $v1,16($a5)
    ld         $at,32($sp)
    addiu      $v1,$v1,4095
    and        $v1,$v1,$v0
    sw         $v1,16($a5)
    lw         $at,56($at)
    sll        $at,$at,0xc
    sltu       $at,$at,$v1
    bnez       $at, .L000026d0
    nop
    ld         $a3,32($sp)
    lw         $v1,0($a5)
    lw         $a3,12($a3)
    sltu       $v1,$v1,$a3
    beqz       $v1, .L000026d0
    nop
    ld         $a4,8($a5)
    andi       $a4,$a4,0xfff
    beqz       $a4, .L000026d8
    nop
.L000026d0:
    b          .L00002334
    li         $s0,22
.L000026d8:
    ld         $at,104($sp)
    lw         $t8,8($a2)
    addiu      $at,$at,1
    sd         $at,104($sp)
    sltu       $at,$at,$t8
    bnez       $at, .L00002660
    nop
.L000026f4:
    beqz       $t8, .L000027d4
    sd         $zero,104($sp)
.L000026fc:
    ld         $a4,104($sp)
    dsll32     $a4,$a4,0x0
    dsrl32     $a4,$a4,0x0
    dsll       $a1,$a4,0x2
    ld         $a3,32($sp)
    dsubu      $a1,$a1,$a4
    ld         $a0,40($sp)
    dsll       $a1,$a1,0x3
    lw         $a3,76($a3)
    daddu      $a1,$a1,$s1
    dsll       $a4,$a4,0x2
    lw         $a2,16($a1)
    daddu      $a4,$a4,$s2
    jal        mgrasLockMem
    ld         $a1,8($a1)
    ld         $t1,168($sp)
    ld         $a7,184($sp)
    move       $s0,$v0
    beqz       $v0, .L000027b8
    ld         $a2,8($sp)
    ld         $v1,104($sp)
    li         $at,-1
    addiu      $v1,$v1,-1
    beq        $at, $v1, .L00002334
    sd         $v1,104($sp)
.L00002760:
    ld         $a4,104($sp)
    dsll32     $a4,$a4,0x0
    dsrl32     $a4,$a4,0x0
    dsll       $a1,$a4,0x2
    ld         $a3,32($sp)
    dsubu      $a1,$a1,$a4
    ld         $a0,40($sp)
    dsll       $a1,$a1,0x3
    lw         $a3,76($a3)
    daddu      $a1,$a1,$s1
    dsll       $a4,$a4,0x2
    lw         $a2,16($a1)
    daddu      $a4,$a4,$s2
    jal        mgrasUnlockMem
    ld         $a1,8($a1)
    ld         $v1,104($sp)
    li         $at,-1
    addiu      $v1,$v1,-1
    bne        $at, $v1, .L00002760
    sd         $v1,104($sp)
    b          .L00002334
    nop
.L000027b8:
    ld         $a3,104($sp)
    lw         $t8,8($a2)
    addiu      $a3,$a3,1
    sd         $a3,104($sp)
    sltu       $a3,$a3,$t8
    bnez       $a3, .L000026fc
    nop
.L000027d4:
    sd         $zero,56($sp)
    sd         $zero,104($sp)
    move       $at,$s2
    sd         $s2,88($sp)
    move       $a4,$s1
    beqz       $t8, .L000027f8
    sd         $s1,96($sp)
    b          .L00002924
    nop
.L000027f8:
    ld         $v1,56($sp)
    beqz       $v1, .L0000280c
    nop
    jal        mgrasPlugTxTblHoles
    ld         $a0,32($sp)
.L0000280c:
    ld         $a0,32($sp)
    lw         $a3,56($a0)
    lw         $a2,12($a0)
    multu      $a2,$a3
    mflo       $a1
    dsll32     $a1,$a1,0x0
    ld         $a0,64($a0)
    dsrl32     $a1,$a1,0x0
    dsll       $a1,$a1,0x2
    daddiu     $a0,$a0,12
    jal        dki_dcache_wb
    sll        $a1,$a1,0x0
    ld         $a0,16($sp)
    jal        RRM_CheckValidFault
    ld         $a0,64($a0)
    ld         $a0,136($sp)
    ld         $t1,168($sp)
    ld         $a7,184($sp)
    ld         $a2,8($sp)
    beqz       $v0, .L0000287c
    ld         $ra,208($sp)
    ld         $a0,40($sp)
    ld         $a1,32($sp)
    jal        mgrasReleasePoolMemory
    li         $a2,1
    li         $v0,14
    b          .L00002364
    ld         $ra,208($sp)
.L0000287c:
    cache      0x14,0($sp)
    ld         $a4,48($sp)
    lui        $a3,0x5
    ori        $a3,$a3,0x900
    ld         $v0,144($sp)
    daddu      $a3,$a3,$a4
    b          .L000025d0
    sw         $zero,0($a3)
.L0000289c:
    cache      0x14,0($sp)
    ld         $at,32($sp)
    lw         $a4,16($at)
    addiu      $a4,$a4,-1
    sw         $a4,16($at)
.L000028b0:
    cache      0x14,0($sp)
    ld         $a2,96($sp)
    ld         $a1,32($sp)
    ld         $a4,8($a2)
    sd         $a4,0($a5)
    ld         $a3,40($a1)
    lw         $a2,16($a2)
    daddu      $a3,$a3,$v0
    sw         $a2,0($a3)
    ld         $a1,48($a1)
    li         $a2,4
    ld         $a0,88($sp)
    jal        bcopy
    daddu      $a1,$a1,$v0
    ld         $t1,168($sp)
    ld         $a7,184($sp)
    ld         $a3,96($sp)
    ld         $a2,8($sp)
    ld         $at,104($sp)
    lw         $v1,8($a2)
    addiu      $at,$at,1
    sd         $at,104($sp)
    sltu       $at,$at,$v1
    ld         $v1,88($sp)
    daddiu     $a3,$a3,24
    sd         $a3,96($sp)
    daddiu     $v1,$v1,4
    beqz       $at, .L000027f8
    sd         $v1,88($sp)
.L00002924:
    ld         $a0,96($sp)
    ld         $a2,32($sp)
    lw         $a7,0($a0)
    lw         $a4,56($a2)
    multu      $a4,$a7
    lw         $a5,24($a2)
    ld         $a2,64($a2)
    ld         $a3,56($sp)
    xor        $a5,$a5,$a7
    lw         $a1,16($a0)
    li         $a6,1
    sltiu      $a5,$a5,1
    movn       $a3,$a6,$a5
    sd         $a3,56($sp)
    ld         $a0,8($a0)
    mflo       $a3
    sd         $a7,80($sp)
    jal        mgrasFillTxTbl
    addiu      $a3,$a3,3
    ld         $v0,80($sp)
    ld         $a5,32($sp)
    dsll32     $v0,$v0,0x0
    ld         $a5,32($a5)
    dsrl32     $v0,$v0,0x0
    dsll       $at,$v0,0x3
    daddu      $a5,$a5,$at
    ld         $a1,0($a5)
    li         $a6,2989
    sd         $at,72($sp)
    beq        $a6, $a1, .L0000289c
    dsll       $v0,$v0,0x2
    sd         $v0,64($sp)
    ld         $a3,32($sp)
    ld         $a0,40($sp)
    ld         $a2,40($a3)
    ld         $a4,48($a3)
    move       $a5,$v0
    lw         $a3,76($a3)
    daddu      $a2,$a2,$v0
    daddu      $a4,$a4,$v0
    jal        mgrasUnlockMem
    lw         $a2,0($a2)
    ld         $a5,32($sp)
    ld         $at,72($sp)
    ld         $a5,32($a5)
    ld         $v0,64($sp)
    b          .L000028b0
    daddu      $a5,$a5,$at

glabel MgrasDmaEditRelease
    move       $v0,$a2
    lw         $a5,0($a2)
    daddiu     $sp,$sp,-144
    li         $at,-65
    li         $a4,2
    sd         $s0,72($sp)
    and        $at,$a5,$at
    sd         $s1,64($sp)
    move       $s0,$zero
    andi       $v1,$a5,0x40
    beqz       $at, .L00002a48
    move       $s1,$zero
    li         $s0,22
.L00002a18:
    bnez       $s1, .L00002a34
    nop
.L00002a20:
    move       $v0,$s0
.L00002a24:
    ld         $s0,72($sp)
    ld         $s1,64($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00002a34:
    sd         $ra,104($sp)
    jal        kern_free
    move       $a0,$s1
    b          .L00002a20
    ld         $ra,104($sp)
.L00002a48:
    beqz       $v1, .L00002a18
    li         $at,3
    lw         $t0,8($v0)
    beqz       $t0, .L00002a18
    li         $v1,4
    lw         $a5,4($v0)
    sltiu      $a3,$a5,5
    beqz       $a3, .L00002a8c
    nop
    beq        $a5, $a4, .L00002a8c
    sltiu      $a3,$t0,4096
    beq        $a5, $at, .L00002a8c
    nop
    beq        $a5, $v1, .L00002a8c
    nop
    bnez       $a3, .L00002a94
    nop
.L00002a8c:
    b          .L00002a18
    li         $s0,22
.L00002a94:
    bnez       $a1, .L00002aa4
    nop
    b          .L00002a18
    li         $s0,14
.L00002aa4:
    li         $a6,1
    ld         $a7,112($a1)
    sd         $a7,24($sp)
    beq        $a6, $a5, .L00002b90
    move       $a4,$a7
    dsll32     $a3,$a5,0x0
    dsrl32     $a3,$a3,0x0
    dsll       $a2,$a3,0x2
    daddu      $a2,$a2,$a3
    dsll       $a2,$a2,0x4
    daddu      $a2,$a2,$a7
    daddiu     $a2,$a2,640
.L00002ad4:
    lw         $at,0($a2)
    ld         $a5,32($a0)
    bnez       $at, .L00002b04
    ld         $a5,208($a5)
    sd         $v0,0($sp)
    lw         $v1,4($a2)
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    bnez       $v1, .L00002b04
    sd         $a5,32($sp)
    b          .L00002a18
    li         $s0,14
.L00002b04:
    sd         $v0,0($sp)
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    dsll32     $a0,$t0,0x0
    sd         $ra,104($sp)
    dsrl32     $a0,$a0,0x0
    sd         $a5,32($sp)
    jal        kern_malloc
    dsll       $a0,$a0,0x2
    move       $a3,$v0
    sd         $v0,56($sp)
    move       $s1,$v0
    bnez       $v0, .L00002b44
    ld         $ra,104($sp)
.L00002b3c:
    b          .L00002a18
    li         $s0,14
.L00002b44:
    ld         $a0,0($sp)
    lwu        $a2,8($a0)
    ld         $a1,56($sp)
    dsll       $a2,$a2,0x2
    ld         $a0,16($a0)
    jal        copyin
    sll        $a2,$a2,0x0
    bnez       $v0, .L00002b3c
    ld         $ra,104($sp)
    ld         $t0,0($sp)
    lw         $t0,8($t0)
    move       $t3,$zero
    move       $a6,$zero
    beqz       $t0, .L00002c1c
    move       $a5,$zero
    ld         $t2,16($sp)
    li         $a7,2989
    b          .L00002bc4
    lw         $t2,12($t2)
.L00002b90:
    ld         $a2,24($sp)
    ld         $a2,1128($a2)
    b          .L00002ad4
    daddiu     $a2,$a2,16
.L00002ba0:
    ld         $a4,16($sp)
    addiu      $a5,$a5,1
    lw         $a4,24($a4)
    sltu       $a3,$a5,$t0
    li         $at,1
    xor        $a4,$a4,$t1
    sltiu      $a4,$a4,1
    beqz       $a3, .L00002c24
    movn       $a6,$at,$a4
.L00002bc4:
    dsll32     $t1,$a5,0x0
    ld         $at,56($sp)
    dsrl32     $t1,$t1,0x0
    dsll       $t1,$t1,0x2
    daddu      $t1,$t1,$at
    lw         $t1,0($t1)
    sltu       $at,$t1,$t2
    beqz       $at, .L00002c14
    nop
    ld         $at,16($sp)
    dsll32     $v1,$t1,0x0
    dsrl32     $v1,$v1,0x0
    ld         $at,32($at)
    dsll       $v1,$v1,0x3
    daddu      $at,$at,$v1
    ld         $at,0($at)
    beq        $at, $a7, .L00002ba0
    nop
    b          .L00002ba0
    addiu      $t3,$t3,1
.L00002c14:
    b          .L00002a18
    li         $s0,22
.L00002c1c:
    ld         $t2,16($sp)
    lw         $t2,12($t2)
.L00002c24:
    ld         $at,16($sp)
    lw         $at,16($at)
    addu       $at,$at,$t3
    sltu       $at,$at,$t2
    bnez       $at, .L00002c44
    nop
    b          .L00002a18
    li         $s0,22
.L00002c44:
    beqz       $t0, .L00002d58
    move       $v0,$zero
    b          .L00002ca0
    li         $a7,2989
.L00002c54:
    cache      0x14,0($sp)
    ld         $v1,16($sp)
    ld         $at,48($sp)
    ld         $t0,32($v1)
    daddu      $t0,$t0,$at
    sd         $a7,0($t0)
    ld         $a4,40($v1)
    daddu      $a4,$a4,$a5
    li         $a3,1
    sw         $a3,0($a4)
    lw         $at,16($v1)
    ld         $t0,0($sp)
    addiu      $at,$at,1
    sw         $at,16($v1)
    lw         $t0,8($t0)
.L00002c90:
    addiu      $v0,$v0,1
    sltu       $v1,$v0,$t0
    beqz       $v1, .L00002d58
    nop
.L00002ca0:
    dsll32     $t1,$v0,0x0
    dsrl32     $t1,$t1,0x0
    dsll       $t1,$t1,0x2
    ld         $a3,16($sp)
    daddu      $t1,$t1,$s1
    lw         $t1,0($t1)
    ld         $a3,32($a3)
    dsll32     $a4,$t1,0x0
    dsrl32     $a4,$a4,0x0
    sd         $a4,40($sp)
    dsll       $a4,$a4,0x3
    daddu      $a3,$a3,$a4
    ld         $a3,0($a3)
    beq        $a3, $a7, .L00002c90
    sd         $a4,48($sp)
    ld         $a0,16($sp)
    lw         $a3,56($a0)
    multu      $a3,$t1
    sd         $a6,96($sp)
    sd         $v0,88($sp)
    ld         $a1,64($a0)
    mflo       $a2
    lw         $a0,20($a0)
    jal        mgrasJamTxTbl
    addiu      $a2,$a2,3
    ld         $a5,40($sp)
    ld         $a0,24($sp)
    dsll       $a5,$a5,0x2
    sd         $a5,80($sp)
    ld         $a4,16($sp)
    ld         $a6,48($sp)
    lw         $a3,76($a4)
    ld         $a2,40($a4)
    ld         $a1,32($a4)
    ld         $a4,48($a4)
    daddu      $a2,$a2,$a5
    daddu      $a1,$a1,$a6
    lw         $a2,0($a2)
    daddu      $a4,$a4,$a5
    jal        mgrasUnlockMem
    ld         $a1,0($a1)
    ld         $a5,80($sp)
    ld         $v0,88($sp)
    li         $a7,2989
    b          .L00002c54
    ld         $a6,96($sp)
.L00002d58:
    beqz       $a6, .L00002d68
    nop
    jal        mgrasPlugTxTblHoles
    ld         $a0,16($sp)
.L00002d68:
    ld         $a0,16($sp)
    lw         $a3,56($a0)
    lw         $a2,12($a0)
    multu      $a2,$a3
    mflo       $a1
    dsll32     $a1,$a1,0x0
    ld         $a0,64($a0)
    dsrl32     $a1,$a1,0x0
    dsll       $a1,$a1,0x2
    daddiu     $a0,$a0,12
    jal        dki_dcache_wb
    sll        $a1,$a1,0x0
    ld         $a0,8($sp)
    jal        RRM_CheckValidFault
    ld         $a0,64($a0)
    beqz       $v0, .L00002dc8
    ld         $ra,104($sp)
    ld         $a0,24($sp)
    ld         $a1,16($sp)
    jal        mgrasReleasePoolMemory
    li         $a2,1
    li         $v0,14
    b          .L00002a24
    ld         $ra,104($sp)
.L00002dc8:
    cache      0x14,0($sp)
    ld         $a4,32($sp)
    lui        $a3,0x5
    ori        $a3,$a3,0x900
    daddu      $a3,$a3,$a4
    b          .L00002a18
    sw         $zero,0($a3)

glabel MgrasDmaUpdateTMTLB
    ld         $a4,112($a0)
    ld         $a4,1128($a4)
    daddiu     $sp,$sp,-48
    move       $a5,$a0
    li         $a0,22
    move       $v0,$a1
    beqz       $a4, .L00002e40
    daddiu     $at,$a4,16
    sd         $at,16($sp)
    lw         $at,0($at)
    beqz       $at, .L00002e38
    sd         $v0,8($sp)
    sd         $ra,24($sp)
    jal        RRM_CheckValidFault
    ld         $a0,64($a5)
    li         $a0,14
    beqz       $v0, .L00002e48
    ld         $ra,24($sp)
.L00002e2c:
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,48
.L00002e38:
    b          .L00002e2c
    nop
.L00002e40:
    b          .L00002e2c
    li         $a0,14
.L00002e48:
    cache      0x14,0($sp)
    ld         $a2,8($sp)
    ld         $a2,208($a2)
    lui        $a3,0x5
    ld         $a0,16($sp)
    daddu      $a2,$a2,$a3
    lui        $a1,0x48
    sw         $zero,2304($a2)
    ori        $a1,$a1,0x2208
    sw         $a1,132($a2)
    ld         $a0,64($a0)
    sd         $a2,0($sp)
    jal        kvtophys
    daddiu     $a0,$a0,12
    cache      0x14,0($sp)
    ld         $v1,16($sp)
    lw         $a0,76($v1)
    ld         $ra,0($sp)
    sltu       $a0,$zero,$a0
    or         $a0,$a0,$v0
    sd         $a0,128($ra)
    lw         $v0,56($v1)
    lw         $at,12($v1)
    multu      $at,$v0
    mflo       $a3
    ld         $at,-30704($gp)
    dsll32     $a3,$a3,0x0
    dsrl32     $a3,$a3,0x0
    or         $a3,$a3,$at
    sd         $a3,128($ra)
    move       $a0,$zero
    b          .L00002e2c
    ld         $ra,24($sp)

glabel irix5_to_mgras_pointers_xlate
    daddiu     $sp,$sp,-64
    move       $v0,$a1
    sd         $s0,8($sp)
    beqz       $a0, .L00002f20
    move       $s0,$a3
    li         $a3,-1
    addiu      $a2,$a2,-1
    ld         $a0,16($s0)
    beq        $a2, $a3, .L00002f14
    ld         $s0,8($sp)
    ld         $s0,8($sp)
.L00002ef8:
    cache      0x14,0($sp)
    addiu      $a2,$a2,-1
    daddiu     $v0,$v0,8
    lw         $at,0($a0)
    daddiu     $a0,$a0,4
    bne        $a2, $a3, .L00002ef8
    sd         $at,-8($v0)
.L00002f14:
    move       $v0,$zero
.L00002f18:
    jr         $ra
    daddiu     $sp,$sp,64
.L00002f20:
    lw         $v1,0($s0)
    dsll       $a0,$a2,0x2
    sltu       $v1,$v1,$a0
    bnez       $v1, .L00002f54
    nop
    cache      0x14,0($sp)
    ld         $a4,8($s0)
    sd         $a4,16($s0)
.L00002f40:
    cache      0x14,0($sp)
    sw         $a0,4($s0)
    move       $v0,$zero
    b          .L00002f18
    ld         $s0,8($sp)
.L00002f54:
    sd         $ra,16($sp)
    jal        kern_malloc
    sd         $a0,0($sp)
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    ld         $a0,0($sp)
    b          .L00002f40
    ld         $ra,16($sp)

glabel irix5_to_mgras_dma_flush_defn_xlate
    daddiu     $sp,$sp,-64
    move       $v0,$a1
    sd         $s0,8($sp)
    beqz       $a0, .L00002fd0
    move       $s0,$a3
    li         $a3,-1
    addiu      $a2,$a2,-1
    ld         $a0,16($s0)
    beq        $a2, $a3, .L00002fc4
    ld         $s0,8($sp)
    ld         $s0,8($sp)
.L00002fa0:
    cache      0x14,0($sp)
    lwu        $v1,0($a0)
    sd         $v1,0($v0)
    addiu      $a2,$a2,-1
    daddiu     $v0,$v0,16
    lw         $at,4($a0)
    daddiu     $a0,$a0,8
    bne        $a2, $a3, .L00002fa0
    sw         $at,-8($v0)
.L00002fc4:
    move       $v0,$zero
.L00002fc8:
    jr         $ra
    daddiu     $sp,$sp,64
.L00002fd0:
    lw         $a4,0($s0)
    dsll       $a0,$a2,0x3
    sltu       $a4,$a4,$a0
    bnez       $a4, .L00003004
    nop
    cache      0x14,0($sp)
    ld         $a5,8($s0)
    sd         $a5,16($s0)
.L00002ff0:
    cache      0x14,0($sp)
    sw         $a0,4($s0)
    move       $v0,$zero
    b          .L00002fc8
    ld         $s0,8($sp)
.L00003004:
    sd         $ra,16($sp)
    jal        kern_malloc
    sd         $a0,0($sp)
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    ld         $a0,0($sp)
    b          .L00002ff0
    ld         $ra,16($sp)

glabel irix5_to_mgras_dma_replace_defn_xlate
    daddiu     $sp,$sp,-64
    move       $v0,$a1
    sd         $s0,8($sp)
    beqz       $a0, .L00003088
    move       $s0,$a3
    li         $a3,-1
    addiu      $a2,$a2,-1
    ld         $a0,16($s0)
    beq        $a2, $a3, .L0000307c
    ld         $s0,8($sp)
    ld         $s0,8($sp)
.L00003050:
    cache      0x14,0($sp)
    lw         $a4,0($a0)
    sw         $a4,0($v0)
    lwu        $v1,4($a0)
    sd         $v1,8($v0)
    addiu      $a2,$a2,-1
    daddiu     $v0,$v0,24
    lw         $at,8($a0)
    daddiu     $a0,$a0,12
    bne        $a2, $a3, .L00003050
    sw         $at,-8($v0)
.L0000307c:
    move       $v0,$zero
.L00003080:
    jr         $ra
    daddiu     $sp,$sp,64
.L00003088:
    dsll       $a0,$a2,0x2
    lw         $a5,0($s0)
    dsubu      $a0,$a0,$a2
    dsll       $a0,$a0,0x2
    sltu       $a5,$a5,$a0
    bnez       $a5, .L000030c4
    nop
    cache      0x14,0($sp)
    ld         $a4,8($s0)
    sd         $a4,16($s0)
.L000030b0:
    cache      0x14,0($sp)
    sw         $a0,4($s0)
    move       $v0,$zero
    b          .L00003080
    ld         $s0,8($sp)
.L000030c4:
    sd         $ra,16($sp)
    jal        kern_malloc
    sd         $a0,0($sp)
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    ld         $a0,0($sp)
    b          .L000030b0
    ld         $ra,16($sp)
