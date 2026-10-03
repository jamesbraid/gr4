.section .text
.set noat
.set noreorder


glabel _MgrasWriteTexBase
    cache      0x14,0($sp)
    dsll32     $at,$a1,0x0
    li         $v1,15041
    lui        $v0,0x7
    dsll32     $v1,$v1,0x2
    ori        $v0,$v0,0x80
    dsrl32     $at,$at,0x0
    daddu      $v0,$v0,$a0
    or         $at,$at,$v1
    jr         $ra
    sd         $at,0($v0)

glabel MgrasAddTexSpace
    cache      0x14,0($sp)
    lw         $v0,0($a2)
    daddiu     $sp,$sp,-144
    sd         $a1,80($sp)
    sd         $s1,16($sp)
    ld         $s1,32($a0)
    sd         $s0,56($sp)
    ld         $v1,200($s1)
    move       $s0,$a0
    ld         $a0,208($s1)
    sw         $zero,4($a2)
    sd         $a2,48($sp)
    ld         $at,1128($a1)
    sd         $v0,96($sp)
    sd         $a0,88($sp)
    bnez       $at, .L00000084
    sd         $v1,40($sp)
    li         $v0,-22
    ld         $s1,16($sp)
    ld         $s0,56($sp)
.L0000007c:
    jr         $ra
    daddiu     $sp,$sp,144
.L00000084:
    sd         $ra,104($sp)
    jal        RRM_CheckValidFault
    move       $a0,$s0
    move       $a5,$v0
    sd         $v0,32($sp)
    move       $a3,$v0
    bltz       $v0, .L000001a0
    ld         $ra,104($sp)
    ld         $a5,32($s0)
    daddiu     $a5,$a5,80
    li         $a1,25
    li         $a6,1
.L000000b4:
    ll         $a4,0($a5)
    addu       $a7,$a4,$a6
    move       $a4,$a7
    sc         $a7,0($a5)
    beqzl      $a7, .L000000b4
    nop
    daddiu     $a0,$s1,1728
    jal        mutex_lock
    sd         $a0,24($sp)
    ld         $at,80($sp)
    ld         $at,1128($at)
    ld         $at,8($at)
    sd         $at,72($sp)
    sd         $at,64($sp)
    beqz       $at, .L000001b0
    move       $v1,$at
    ld         $a1,72($sp)
    ld         $a2,96($sp)
    move       $a0,$s1
    jal        MgrasUpdateTexRefCount
    ld         $a1,8($a1)
    cache      0x14,0($sp)
    ld         $a4,72($sp)
    ld         $a4,8($a4)
    ld         $a3,96($sp)
    sh         $a3,26($a4)
.L0000011c:
    ld         $a0,88($sp)
    jal        _MgrasWriteTexBase
    move       $a1,$zero
    ld         $a2,64($sp)
    move       $a1,$s1
    jal        MgrasSaveOverlap
    ld         $a0,8($a2)
    beqz       $v0, .L00000150
    ld         $s1,16($sp)
    cache      0x14,0($sp)
    li         $at,1
    ld         $v1,48($sp)
    sw         $at,4($v1)
.L00000150:
    ld         $a1,64($sp)
    ld         $a1,8($a1)
    ld         $a0,88($sp)
    jal        _MgrasWriteTexBase
    lhu        $a1,24($a1)
    jal        mutex_unlock
    ld         $a0,24($sp)
    ld         $a4,32($s0)
    daddiu     $a4,$a4,80
    li         $s0,-1
.L00000178:
    ll         $a3,0($a4)
    addu       $ra,$a3,$s0
    move       $a3,$ra
    sc         $ra,0($a4)
    beqzl      $ra, .L00000178
    nop
    ld         $v0,32($sp)
    ld         $s0,56($sp)
    b          .L0000007c
    ld         $ra,104($sp)
.L000001a0:
    ld         $s1,16($sp)
    move       $v0,$a5
    b          .L0000007c
    ld         $s0,56($sp)
.L000001b0:
    jal        kern_malloc
    li         $a0,2064
    sd         $v0,72($sp)
    move       $at,$v0
    beqz       $v0, .L00000298
    sd         $v0,64($sp)
    ld         $a0,72($sp)
    jal        bzero
    li         $a1,2064
    cache      0x14,0($sp)
    ld         $v1,80($sp)
    ld         $v1,1128($v1)
    ld         $v0,72($sp)
    li         $a0,48
    jal        kern_malloc
    sd         $v0,8($v1)
    cache      0x14,0($sp)
    ld         $a3,64($sp)
    sd         $v0,72($sp)
    beqz       $v0, .L000002d8
    sd         $v0,8($a3)
    ld         $a0,72($sp)
    jal        bzero
    li         $a1,48
    ld         $a5,40($sp)
    lbu        $a5,45($a5)
    ld         $a7,64($sp)
    li         $a6,1
    ld         $a1,96($sp)
    li         $a4,3
    xor        $a5,$a5,$a6
    ld         $a7,8($a7)
    li         $a6,255
    sltiu      $a5,$a5,1
    sd         $a7,8($sp)
    movz       $a4,$a6,$a5
    move       $a0,$s1
    jal        MgrasPlaceBaseAddr
    sd         $a4,0($sp)
    cache      0x14,0($sp)
    ld         $a5,96($sp)
    ld         $a2,8($sp)
    ld         $a0,0($sp)
    li         $a4,1
    sb         $a4,34($a2)
    sb         $a0,32($a2)
    sh         $a5,26($a2)
    sh         $v0,24($a2)
    ld         $a3,1744($s1)
    li         $a1,1
    jal        DeriveInfo
    lw         $a3,12($a3)
    cache      0x14,0($sp)
    ld         $v1,1744($s1)
    lw         $at,2336($v1)
    addiu      $at,$at,1
    b          .L0000011c
    sw         $at,2336($v1)
.L00000298:
    ld         $v1,32($s0)
    ld         $s1,16($sp)
    daddiu     $v1,$v1,80
    li         $a0,-1
.L000002a8:
    ll         $v0,0($v1)
    addu       $a1,$v0,$a0
    move       $v0,$a1
    sc         $a1,0($v1)
    beqzl      $a1, .L000002a8
    nop
    jal        mutex_unlock
    ld         $a0,24($sp)
    ld         $ra,104($sp)
    li         $v0,12
    b          .L0000007c
    ld         $s0,56($sp)
.L000002d8:
    ld         $a1,32($s0)
    ld         $s1,16($sp)
    daddiu     $a1,$a1,80
    li         $a2,-1
.L000002e8:
    ll         $a0,0($a1)
    addu       $a3,$a0,$a2
    move       $a0,$a3
    sc         $a3,0($a1)
    beqzl      $a3, .L000002e8
    nop
    jal        mutex_unlock
    ld         $a0,24($sp)
    ld         $a0,64($sp)
    jal        kern_free
    ld         $s0,56($sp)
    li         $v0,12
    b          .L0000007c
    ld         $ra,104($sp)

glabel MgrasDeleteTexSpace
    ld         $a3,1128($a1)
    daddiu     $sp,$sp,-64
    move       $a4,$a0
    beqz       $a3, .L000004a8
    sd         $s3,16($sp)
    ld         $s3,8($a3)
    beqz       $s3, .L000004a8
    sd         $a1,8($sp)
    sd         $s1,32($sp)
    ld         $s1,32($a4)
    li         $a1,25
    sd         $ra,24($sp)
    daddiu     $a0,$s1,1728
    jal        mutex_lock
    sd         $a0,0($sp)
    ld         $a3,8($s3)
    ld         $t1,1744($s1)
    lhu        $at,26($a3)
    move       $a4,$zero
    ld         $a1,8($sp)
    move       $a7,$zero
    daddiu     $t0,$t1,288
    lhu        $a3,24($a3)
    blez       $at, .L000003c0
    daddiu     $t1,$t1,32
.L00000384:
    cache      0x14,0($sp)
    ld         $v1,1744($s1)
    andi       $a2,$a3,0xff
    dsll       $a2,$a2,0x2
    daddu      $v1,$v1,$a2
    lw         $v0,2340($v1)
    addiu      $v0,$v0,-1
    sw         $v0,2340($v1)
    ld         $at,8($s3)
    lhu        $at,26($at)
    addiu      $a4,$a4,1
    slt        $at,$a4,$at
    addiu      $a3,$a3,1
    bnez       $at, .L00000384
    andi       $a3,$a3,0xffff
.L000003c0:
    b          .L000003d0
    move       $a3,$zero
.L000003c8:
    beqz       $at, .L00000440
    nop
.L000003d0:
    dsll       $a4,$a3,0x3
    daddu      $a5,$a4,$t0
    ld         $v0,0($a5)
    daddu      $v1,$a3,$t1
    daddu      $a6,$s3,$a4
    bne        $v0, $s3, .L000003f8
    dsll       $a4,$a3,0x2
    cache      0x14,0($sp)
    sb         $zero,0($v1)
    sd         $zero,0($a5)
.L000003f8:
    ld         $a5,16($a6)
    beqz       $a5, .L00000420
    addiu      $a3,$a3,1
    cache      0x14,0($sp)
    ld         $v0,1744($s1)
    ld         $v0,16($v0)
    sd         $v0,0($a5)
    ld         $at,1744($s1)
    ld         $a2,16($a6)
    sd         $a2,16($at)
.L00000420:
    ld         $a5,1744($s1)
    daddu      $a4,$a5,$a4
    lw         $a4,2340($a4)
    slt        $v1,$a7,$a4
    beqz       $v1, .L000003c8
    slti       $at,$a3,256
    b          .L000003c8
    move       $a7,$a4
.L00000440:
    lw         $at,3364($a5)
    slt        $at,$a7,$at
    beqz       $at, .L00000458
    nop
    cache      0x14,0($sp)
    sw         $a7,3364($a5)
.L00000458:
    cache      0x14,0($sp)
    ld         $v0,1128($a1)
    sd         $zero,8($v0)
    jal        kern_free
    ld         $a0,8($s3)
    jal        kern_free
    move       $a0,$s3
    cache      0x14,0($sp)
    ld         $s3,1744($s1)
    lw         $a2,2336($s3)
    addiu      $a2,$a2,-1
    sw         $a2,2336($s3)
    ld         $v1,1744($s1)
    lw         $v1,2336($v1)
    beqz       $v1, .L000004b4
    ld         $s3,16($sp)
.L00000498:
    ld         $a0,0($sp)
    jal        mutex_unlock
    ld         $s1,32($sp)
    ld         $ra,24($sp)
.L000004a8:
    ld         $s3,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000004b4:
    jal        MgrasCleanTexBdata
    move       $a0,$s1
    b          .L00000498
    nop

glabel MgrasPlaceBaseAddr
    ld         $a6,1744($a0)
    lw         $t3,3364($a6)
    daddiu     $sp,$sp,-32
    move       $t0,$zero
    li         $t2,1
    lhu        $a7,0($sp)
    lhu        $v0,2($sp)
    bltz       $t3, .L000005e8
    daddiu     $a6,$a6,2340
.L000004e8:
    move       $v0,$zero
    move       $t1,$zero
    move       $a5,$zero
    b          .L00000520
    move       $a4,$zero
.L000004fc:
    beqz       $at, .L00000510
    nop
    move       $v0,$a7
    move       $t1,$a5
    move       $a5,$zero
.L00000510:
    addiu      $a4,$a4,1
    slti       $v1,$a4,256
    beqz       $v1, .L0000054c
    nop
.L00000520:
    dsll       $a2,$a4,0x2
    daddu      $a2,$a2,$a6
    lw         $a2,0($a2)
    bne        $a2, $t0, .L000004fc
    slt        $at,$t1,$a5
    addiu      $a5,$a5,1
    xor        $a3,$a5,$t2
    sltiu      $a3,$a3,1
    movn       $a7,$a4,$a3
    b          .L00000510
    andi       $a7,$a7,0xffff
.L0000054c:
    bgtz       $a5, .L0000055c
    nop
    blez       $t1, .L000005d0
    nop
.L0000055c:
    slt        $at,$t1,$a5
    movz       $a7,$v0,$at
    andi       $v0,$a7,0xffff
.L00000568:
    move       $a4,$v0
    blez       $a1, .L000005c8
    move       $a5,$zero
    b          .L00000584
    nop
.L0000057c:
    beqz       $v1, .L000005c8
    nop
.L00000584:
    cache      0x14,0($sp)
    andi       $a3,$a4,0xff
    dsll       $a3,$a3,0x2
    daddu      $a3,$a3,$a6
    lw         $a7,0($a3)
    addiu      $a7,$a7,1
    sw         $a7,0($a3)
    ld         $t0,1744($a0)
    lw         $a2,3364($t0)
    slt        $a2,$a2,$a7
    addiu      $a4,$a4,1
    addiu      $a5,$a5,1
    beqz       $a2, .L0000057c
    slt        $v1,$a5,$a1
    cache      0x14,0($sp)
    b          .L0000057c
    sw         $a7,3364($t0)
.L000005c8:
    jr         $ra
    daddiu     $sp,$sp,32
.L000005d0:
    addiu      $t0,$t0,1
    slt        $at,$t3,$t0
    beqz       $at, .L000004e8
    nop
    b          .L00000568
    nop
.L000005e8:
    b          .L00000568
    nop

glabel MgrasUpdateTexRefCount
    lhu        $a6,26($a1)
    lhu        $a4,24($a1)
    ld         $a7,1744($a0)
    addu       $a4,$a4,$a6
    subu       $a6,$a2,$a6
    move       $a5,$zero
    blez       $a6, .L00000664
    daddiu     $a7,$a7,2340
    b          .L00000620
    nop
.L00000618:
    beqz       $at, .L00000664
    nop
.L00000620:
    cache      0x14,0($sp)
    andi       $v1,$a4,0xff
    dsll       $v1,$v1,0x2
    daddu      $v1,$v1,$a7
    lw         $a2,0($v1)
    addiu      $a2,$a2,1
    sw         $a2,0($v1)
    ld         $a3,1744($a0)
    lw         $v0,3364($a3)
    slt        $v0,$v0,$a2
    addiu      $a4,$a4,1
    addiu      $a5,$a5,1
    beqz       $v0, .L00000618
    slt        $at,$a5,$a6
    cache      0x14,0($sp)
    b          .L00000618
    sw         $a2,3364($a3)
.L00000664:
    jr         $ra
    nop

glabel MgrasVidTextureXfer
    daddiu     $sp,$sp,-80
    sd         $ra,48($sp)
    sd         $s2,40($sp)
    sd         $s1,32($sp)
    ld         $s1,32($a0)
    sd         $s0,56($sp)
    move       $s2,$a1
    move       $s0,$a0
    jal        mgras_baseindex
    ld         $a0,208($s1)
    lw         $at,4($s2)
    beqz       $at, .L00000818
    sd         $v0,8($sp)
    jal        RRM_CheckValidFault
    move       $a0,$s0
    bltz       $v0, .L00000840
    nop
    ld         $v1,32($s0)
    daddiu     $v1,$v1,80
    li         $a1,26
    li         $a2,1
.L000006c0:
    ll         $v0,0($v1)
    addu       $a3,$v0,$a2
    move       $v0,$a3
    sc         $a3,0($v1)
    beqzl      $a3, .L000006c0
    nop
    daddiu     $a0,$s1,1936
    jal        psema
    sd         $a0,16($sp)
    beqz       $v0, .L00000784
    nop
.L000006ec:
    ld         $a2,200($s1)
    lw         $a2,68($a2)
    beqz       $a2, .L0000073c
    nop
    ld         $s0,32($s0)
    daddiu     $s0,$s0,80
    li         $s1,-1
.L00000708:
    ll         $a3,0($s0)
    addu       $s2,$a3,$s1
    move       $a3,$s2
    sc         $s2,0($s0)
    beqzl      $s2, .L00000708
    nop
    ld         $ra,48($sp)
    ld         $s0,56($sp)
    ld         $s2,40($sp)
    li         $v0,-1
    ld         $s1,32($sp)
.L00000734:
    jr         $ra
    daddiu     $sp,$sp,80
.L0000073c:
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    daddiu     $a0,$s1,1808
    jal        init_sema
    sd         $a0,24($sp)
    ld         $a0,-30712($gp)
    ld         $a1,24($sp)
    jal        timeout
    li         $a2,1
    ld         $a0,24($sp)
    jal        psema
    li         $a1,25
    ld         $a0,16($sp)
    jal        psema
    li         $a1,26
    bnez       $v0, .L000006ec
    nop
.L00000784:
    cache      0x14,0($sp)
    ld         $ra,8($sp)
    dsll       $t9,$ra,0x2
    dsubu      $t9,$t9,$ra
    ld         $ra,-30704($gp)
    dsll       $t9,$t9,0x3
    ld         $a0,-30696($gp)
    daddu      $t9,$t9,$ra
    sd         $s1,0($t9)
    sd         $t9,0($sp)
    lw         $t8,36($s2)
    li         $a2,1000
    sd         $s0,16($t9)
    move       $a1,$s1
    jal        timeout
    sw         $t8,8($t9)
    cache      0x14,0($sp)
    sw         $v0,1928($s1)
    move       $a0,$s2
    jal        mgvVidTextureXfer
    ld         $a1,0($sp)
    ld         $s2,40($sp)
    li         $v1,-1
    bltz       $v0, .L0000086c
    ld         $ra,48($sp)
    ld         $v0,32($s0)
    ld         $s0,56($sp)
    daddiu     $v0,$v0,80
.L000007f4:
    ll         $at,0($v0)
    addu       $a2,$at,$v1
    move       $at,$a2
    sc         $a2,0($v0)
    beqzl      $a2, .L000007f4
    nop
    ld         $s1,32($sp)
    b          .L00000734
    move       $v0,$zero
.L00000818:
    move       $a0,$s2
    ld         $s1,32($sp)
    move       $a1,$zero
    jal        mgvVidTextureXfer
    ld         $s0,56($sp)
    ld         $s2,40($sp)
    bltz       $v0, .L00000864
    ld         $ra,48($sp)
    b          .L00000734
    move       $v0,$zero
.L00000840:
    ld         $a1,-30720($gp)
    ld         $s2,40($sp)
    ld         $s1,32($sp)
    li         $a0,4
    jal        cmn_err
    ld         $s0,56($sp)
    li         $v0,-1
    b          .L00000734
    ld         $ra,48($sp)
.L00000864:
    b          .L00000734
    li         $v0,-1
.L0000086c:
    jal        untimeout
    lw         $a0,1928($s1)
    cache      0x14,0($sp)
    sw         $zero,1928($s1)
    jal        vsema
    ld         $a0,16($sp)
    ld         $a2,32($s0)
    ld         $s1,32($sp)
    ld         $ra,48($sp)
    daddiu     $a2,$a2,80
    li         $a3,-1
.L00000898:
    ll         $v1,0($a2)
    addu       $s0,$v1,$a3
    move       $v1,$s0
    sc         $s0,0($a2)
    beqzl      $s0, .L00000898
    nop
    li         $v0,-1
    b          .L00000734
    ld         $s0,56($sp)

glabel MgrasGetVertLineCnt
    cache      0x14,0($sp)
    ld         $v0,0($a0)
    ld         $v0,208($v0)
    lui        $v1,0x6
    daddu      $v0,$v0,$v1
    li         $v1,11
    sb         $v1,8200($v0)
    lhu        $v0,8368($v0)
    dsll32     $v0,$v0,0x10
    jr         $ra
    dsra32     $v0,$v0,0x10

glabel MgrasVidTextureXferStart
    lw         $at,8($a0)
    daddiu     $sp,$sp,-32
    ld         $a4,0($a0)
    li         $v0,0x9300
    lui        $v1,0x7
    ori        $v1,$v1,0x84
    beqz       $at, .L0000091c
    ld         $a6,208($a4)
    cache      0x14,0($sp)
    daddu      $v1,$v1,$a6
    sw         $v0,0($v1)
.L00000914:
    jr         $ra
    daddiu     $sp,$sp,32
.L0000091c:
    move       $a0,$a6
    li         $a3,1
    li         $a2,1
    sd         $ra,0($sp)
    jal        __glMgrasSet
    li         $a1,422
    b          .L00000914
    ld         $ra,0($sp)

glabel MgrasVidTextureXferDone
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    ld         $s8,0($a0)
    sd         $ra,0($sp)
    jal        untimeout
    lw         $a0,1928($s8)
    cache      0x14,0($sp)
    daddiu     $a0,$s8,1936
    jal        vsema
    sw         $zero,1928($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mgras_vdmatimeout
    ld         $a1,-30720($gp)
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    move       $s8,$a0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,48
    jal        vsema
    daddiu     $a0,$s8,1936
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
