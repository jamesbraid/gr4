.section .text
.set noat
.set noreorder


glabel MgrasRetraceInit
    ld         $v0,216($a0)
    daddiu     $sp,$sp,-64
    sd         $s0,8($sp)
    beqz       $v0, .L00000118
    move       $s0,$a0
    sd         $ra,24($sp)
    sd         $s4,32($sp)
    sd         $s1,0($sp)
    sd         $s5,16($sp)
    move       $s1,$v0
    move       $s4,$zero
.L0000002c:
    dsll       $s5,$s4,0x2
    daddu      $s5,$s5,$s4
    dsll       $s5,$s5,0x3
    daddu      $s5,$s5,$s1
    addiu      $s4,$s4,1
    daddiu     $s5,$s5,72
    jal        sv_waitq
    move       $a0,$s5
    beqz       $v0, .L00000108
    nop
.L00000054:
    slti       $at,$s4,40
    bnez       $at, .L0000002c
    nop
    ld         $s5,16($sp)
    ld         $s4,32($sp)
.L00000068:
    sd         $s4,32($sp)
    move       $a0,$s1
    sd         $s5,16($sp)
    jal        bzero
    li         $a1,1680
    move       $s4,$zero
    ld         $s5,-30720($gp)
.L00000084:
    move       $a1,$zero
    dsll       $a0,$s4,0x2
    move       $a2,$s5
    daddu      $a0,$a0,$s4
    move       $a3,$s4
    dsll       $a0,$a0,0x3
    addiu      $s4,$s4,1
    daddu      $a0,$a0,$s1
    jal        init_sv
    daddiu     $a0,$a0,72
    slti       $a1,$s4,40
    bnez       $a1, .L00000084
    nop
    cache      0x14,0($sp)
    ld         $a0,208($s0)
    jal        mgras_baseindex
    sd         $a0,0($s1)
    cache      0x14,0($sp)
    ld         $s5,16($sp)
    dsll       $a4,$v0,0x2
    ld         $s4,-30712($gp)
    dsubu      $a4,$a4,$v0
    ld         $ra,24($sp)
    dsll       $a4,$a4,0x4
    daddu      $a4,$a4,$s4
    ld         $s4,32($sp)
    ld         $a4,16($a4)
    sd         $a4,8($s1)
    sd         $s1,216($s0)
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000108:
    jal        sv_destroy
    move       $a0,$s5
    b          .L00000054
    nop
.L00000118:
    sd         $ra,24($sp)
    sd         $s1,0($sp)
    jal        kern_malloc
    li         $a0,1680
    b          .L00000068
    move       $s1,$v0

glabel MgrasRetraceInterrupt
    daddiu     $sp,$sp,-32
    sd         $s3,0($sp)
    dsll       $s3,$a0,0x2
    ld         $at,-30712($gp)
    dsubu      $s3,$s3,$a0
    dsll       $s3,$s3,0x4
    daddu      $s3,$s3,$at
    ld         $a2,8($s3)
    beqz       $a2, .L00000160
    sd         $ra,8($sp)
    jal        MgrasRetraceHandler
    move       $a0,$a2
.L00000160:
    cache      0x14,0($sp)
    ld         $t9,-30720($gp)
    lw         $ra,40($s3)
    lbu        $t8,0($t9)
    nor        $ra,$ra,$zero
    and        $t8,$t8,$ra
    jal        flushbus
    sb         $t8,0($t9)
    ld         $ra,8($sp)
    cache      0x14,0($sp)
    ld         $v0,-30720($gp)
    lbu        $v1,0($v0)
    lw         $at,40($s3)
    ld         $s3,0($sp)
    daddiu     $sp,$sp,32
    or         $at,$at,$v1
    jr         $ra
    sb         $at,0($v0)

glabel MgrasRetraceHandler
    daddiu     $sp,$sp,-448
    sd         $s3,360($sp)
    li         $a1,25
    sd         $s8,344($sp)
    sd         $ra,352($sp)
    move       $s3,$a0
    daddiu     $s8,$a0,2280
    jal        mutex_lock
    move       $a0,$s8
    ld         $at,200($s3)
    lw         $at,68($at)
    li         $v0,-32
    beqz       $at, .L000001f0
    li         $a7,1
    jal        mutex_unlock
    move       $a0,$s8
    b          .L00000480
    nop
.L000001f0:
    cache      0x14,0($sp)
    sd         $s2,416($sp)
    sd         $s0,384($sp)
    sd         $s4,400($sp)
    sd         $s1,376($sp)
    ld         $s1,216($s3)
    sd         $s5,368($sp)
    ld         $s5,0($gp)
    ld         $at,8($s1)
    lw         $s4,16($s5)
    ld         $s0,0($s1)
    addiu      $s4,$s4,1
    sw         $s4,16($s5)
    lui        $s2,0x7
    sd         $s0,320($sp)
    daddu      $s0,$s0,$s2
    lh         $a3,16($s1)
    lw         $s4,256($s0)
    sd         $s6,408($sp)
    move       $s2,$zero
    move       $s5,$zero
    sd         $at,336($sp)
    beqz       $a3, .L00000348
    andi       $s4,$s4,0x1f
    daddiu     $s6,$sp,0
    sd         $s7,392($sp)
    sd         $s8,328($sp)
    b          .L00000284
    move       $s7,$zero
.L00000264:
    cache      0x14,0($sp)
    sw         $v1,44($s8)
.L0000026c:
    beqz       $a3, .L00000358
    nop
.L00000274:
    addiu      $s7,$s7,1
    slti       $a1,$s7,40
    beqz       $a1, .L00000358
    addiu      $v0,$v0,1
.L00000284:
    dsll       $s8,$s7,0x2
    daddu      $s8,$s8,$s7
    dsll       $s8,$s8,0x3
    daddu      $s8,$s8,$s1
    lh         $a4,40($s8)
    andi       $a2,$a4,0x20
    sllv       $a6,$a7,$v0
    beqz       $a2, .L00000274
    slti       $a1,$s7,32
    lw         $a5,44($s8)
    slti       $at,$a5,2
    addiu      $a3,$a3,-1
    beqz       $at, .L00000264
    addiu      $v1,$a5,-1
    cache      0x14,0($sp)
    andi       $v1,$a4,0x1
    nor        $at,$a6,$zero
    sllv       $a5,$a7,$s7
    sw         $zero,44($s8)
    beqz       $v1, .L000002fc
    nor        $a2,$a5,$zero
    addiu      $s5,$s5,1
    beqz       $a1, .L00000330
    lh         $a4,42($s8)
    beqz       $a4, .L00000708
    lw         $a6,20($s1)
    cache      0x14,0($sp)
    or         $a2,$a5,$a6
    sw         $a2,20($s1)
.L000002f8:
    lh         $a4,40($s8)
.L000002fc:
    dsll32     $v1,$s2,0x0
    andi       $at,$a4,0x2
    dsrl32     $v1,$v1,0x0
    beqz       $at, .L0000026c
    nop
    cache      0x14,0($sp)
    dsll       $v1,$v1,0x3
    daddu      $v1,$v1,$s6
    lw         $a1,48($s8)
    sw         $a1,4($v1)
    addiu      $s2,$s2,1
    b          .L0000026c
    sw         $s7,0($v1)
.L00000330:
    beqz       $a4, .L00000718
    lw         $a5,24($s1)
    cache      0x14,0($sp)
    or         $a1,$a6,$a5
    b          .L000002f8
    sw         $a1,24($s1)
.L00000348:
    sd         $s8,328($sp)
    sd         $s7,392($sp)
    daddiu     $s6,$sp,0
    li         $a7,1
.L00000358:
    jal        mgras_baseindex
    ld         $a0,320($sp)
    move       $s8,$v0
    li         $a3,-1
    ld         $a0,-30712($gp)
    li         $s7,9
.L00000370:
    li         $a2,1
    beqz       $s8, .L00000418
    lw         $v0,0($a0)
    bne        $s8, $a2, .L00000424
    andi       $at,$v0,0x4
    beqz       $at, .L00000424
    nop
.L0000038c:
    move       $v1,$s5
    ld         $s5,368($sp)
    beqz       $v1, .L000003f4
    ld         $s7,392($sp)
    lw         $a1,256($s0)
    andi       $a1,$a1,0x1f
    ld         $s5,368($sp)
    sltiu      $a1,$a1,3
    ld         $v1,320($sp)
    bnez       $a1, .L000003cc
    ld         $s7,392($sp)
.L000003b8:
    lw         $a2,256($s0)
    andi       $a2,$a2,0x1f
    sltiu      $a2,$a2,3
    beqz       $a2, .L000003b8
    nop
.L000003cc:
    cache      0x14,0($sp)
    lui        $a1,0x6
    daddu      $v1,$v1,$a1
    sb         $zero,7304($v1)
    lw         $a2,20($s1)
    sw         $a2,7552($v1)
    li         $a1,4
    sb         $a1,7304($v1)
    lw         $at,24($s1)
    sw         $at,7552($v1)
.L000003f4:
    beqz       $s2, .L00000508
    nop
    move       $s7,$zero
    beqz       $s2, .L00000508
    nop
    ld         $a4,320($sp)
    lui        $at,0x6
    b          .L000004a8
    daddu      $a4,$a4,$at
.L00000418:
    andi       $v1,$v0,0x1
    bnez       $v1, .L0000038c
    nop
.L00000424:
    jal        us_delay
    li         $a0,1
    addiu      $s7,$s7,-1
    li         $a3,-1
    bne        $s7, $a3, .L00000370
    ld         $a0,-30712($gp)
    b          .L0000038c
    nop
.L00000444:
    ld         $s7,392($sp)
.L00000448:
    ld         $s0,32($s1)
    beqz       $s0, .L00000468
    nop
.L00000454:
    jal        rrmValidateRetrace
    move       $a0,$s0
    ld         $s0,40($s0)
    bnez       $s0, .L00000454
    nop
.L00000468:
    cache      0x14,0($sp)
    sd         $zero,32($s1)
    ld         $a0,328($sp)
    jal        mutex_unlock
    ld         $s0,384($sp)
    ld         $s1,376($sp)
.L00000480:
    ld         $ra,352($sp)
    ld         $s3,360($sp)
    ld         $s8,344($sp)
    jr         $ra
    daddiu     $sp,$sp,448
.L00000494:
    cache      0x14,0($sp)
    sb         $a1,7304($a4)
    sw         $a3,7808($a4)
.L000004a0:
    beqz       $a2, .L00000508
    nop
.L000004a8:
    lw         $at,256($s0)
    dsll       $a3,$s7,0x3
    andi       $at,$at,0x1f
    addiu      $s7,$s7,1
    sltiu      $at,$at,5
    sltu       $a2,$s7,$s2
    bnez       $at, .L000004dc
    daddu      $a3,$a3,$s6
.L000004c8:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L000004c8
    nop
.L000004dc:
    lw         $v0,0($a3)
    sltiu      $at,$v0,32
    lw         $a3,4($a3)
    andi       $a1,$v0,0x1f
    beqz       $at, .L00000494
    sll        $a1,$a1,0x2
    cache      0x14,0($sp)
    sll        $at,$v0,0x2
    sb         $at,7304($a4)
    b          .L000004a0
    sw         $a3,7680($a4)
.L00000508:
    cache      0x14,0($sp)
    ld         $at,336($sp)
    lbu        $at,42($at)
    li         $s6,30
    sltiu      $s7,$at,30
    li         $s2,120
    movz       $s6,$at,$s7
    lw         $a3,1644($s1)
    li         $v0,120
    sltu       $s2,$s2,$s6
    movz       $v0,$s6,$s2
    addiu      $a3,$a3,1
    sw         $a3,1644($s1)
    addu       $v1,$v0,$v0
    ld         $s7,392($sp)
    sltu       $v1,$a3,$v1
    ld         $s6,408($sp)
    bnez       $v1, .L00000584
    ld         $s2,416($sp)
    lw         $v1,1852($s3)
    beqz       $v1, .L00000744
    nop
    lw         $a1,1856($s3)
    beqz       $a1, .L0000075c
    nop
.L0000056c:
    sll        $a2,$v0,0x2
    subu       $a2,$a2,$v0
    sll        $a2,$a2,0x1
    sltu       $a2,$a3,$a2
    beqz       $a2, .L00000728
    nop
.L00000584:
    ld         $v0,224($s3)
    lui        $a2,0x6
    beqz       $v0, .L000005d0
    ori        $a2,$a2,0x1c88
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    bnez       $at, .L000005bc
    nop
.L000005a8:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,6
    beqz       $v1, .L000005a8
    nop
.L000005bc:
    cache      0x14,0($sp)
    ld         $at,320($sp)
    lbu        $a1,0($v0)
    daddu      $a2,$a2,$at
    sb         $a1,0($a2)
.L000005d0:
    lw         $at,256($s0)
    andi       $at,$at,0x1f
    sltu       $at,$s4,$at
    beqz       $at, .L000005f8
    nop
.L000005e4:
    lw         $v1,256($s0)
    andi       $v1,$v1,0x1f
    sltu       $v1,$s4,$v1
    bnez       $v1, .L000005e4
    nop
.L000005f8:
    cache      0x14,0($sp)
    lw         $s4,128($s3)
    lw         $a2,124($s3)
    ld         $a1,136($s3)
    addiu      $a2,$a2,1
    sw         $a2,124($s3)
    addiu      $s4,$s4,1
    sw         $s4,128($s3)
    bnez       $a1, .L000006f8
    ld         $s4,400($sp)
.L00000620:
    lh         $at,16($s1)
    beqz       $at, .L00000448
    nop
    b          .L0000067c
    move       $s7,$zero
.L00000634:
    cache      0x14,0($sp)
    lw         $v1,68($s8)
    beqz       $v1, .L00000654
    sh         $zero,40($s8)
    cache      0x14,0($sp)
    daddiu     $a0,$s8,72
    jal        sv_broadcast
    sw         $zero,68($s8)
.L00000654:
    cache      0x14,0($sp)
    lh         $a1,16($s1)
    addiu      $a1,$a1,-1
    dsll32     $a1,$a1,0x10
    dsra32     $a1,$a1,0x10
    beqz       $a1, .L00000444
    sh         $a1,16($s1)
.L00000670:
    slti       $a2,$s7,40
    beqz       $a2, .L00000444
    nop
.L0000067c:
    dsll       $s8,$s7,0x2
    daddu      $s8,$s8,$s7
    dsll       $s8,$s8,0x3
    daddu      $s8,$s8,$s1
    lh         $a4,40($s8)
    andi       $at,$a4,0x20
    addiu      $s7,$s7,1
    beqz       $at, .L00000670
    andi       $v1,$a4,0x10
    lw         $at,44($s8)
    bnez       $at, .L00000670
    nop
    beqz       $v1, .L000006c8
    nop
    lw         $a1,64($s8)
    jal        rrmValidateMGRSwapBuf
    ld         $a0,0($s3)
    cache      0x14,0($sp)
    sw         $zero,64($s8)
.L000006c8:
    ld         $v0,56($s8)
    beqz       $v0, .L00000634
    nop
    cache      0x14,0($sp)
    ld         $a1,112($v0)
    lw         $a0,128($s3)
    sw         $a0,1124($a1)
    jal        rrmValidateBuffer
    ld         $a0,56($s8)
    cache      0x14,0($sp)
    b          .L00000634
    sd         $zero,56($s8)
.L000006f8:
    jal        rrmValidateVideoSync
    move       $a0,$s3
    b          .L00000620
    nop
.L00000708:
    cache      0x14,0($sp)
    and        $a2,$a2,$a6
    b          .L000002f8
    sw         $a2,20($s1)
.L00000718:
    cache      0x14,0($sp)
    and        $at,$at,$a5
    b          .L000002f8
    sw         $at,24($s1)
.L00000728:
    jal        mgras_update_pp1ccv
    move       $a0,$s1
    cache      0x14,0($sp)
    sw         $zero,1852($s3)
    sw         $zero,1856($s3)
    b          .L00000584
    sw         $zero,1644($s1)
.L00000744:
    cache      0x14,0($sp)
    li         $a4,1
    sw         $a4,1856($s3)
    li         $v1,1
    b          .L0000056c
    sw         $v1,1852($s3)
.L0000075c:
    cache      0x14,0($sp)
    sw         $zero,1852($s3)
    b          .L00000584
    sw         $zero,1644($s1)

glabel MgrasValidateAllRetrace
    daddiu     $sp,$sp,-64
    sd         $s1,8($sp)
    li         $a1,25
    sd         $s8,0($sp)
    sd         $ra,16($sp)
    move       $s1,$a0
    daddiu     $s8,$a0,2280
    sd         $s0,32($sp)
    jal        mutex_lock
    move       $a0,$s8
    ld         $at,136($s1)
    bnez       $at, .L000008a8
    ld         $s0,216($s1)
.L000007a0:
    sd         $s5,40($sp)
    sd         $s4,24($sp)
    b          .L000007f8
    move       $s5,$zero
.L000007b0:
    cache      0x14,0($sp)
    lw         $v0,68($s4)
    beqz       $v0, .L000007d0
    sh         $zero,40($s4)
    cache      0x14,0($sp)
    daddiu     $a0,$s4,72
    jal        sv_broadcast
    sw         $zero,68($s4)
.L000007d0:
    cache      0x14,0($sp)
    lh         $v1,16($s0)
    addiu      $v1,$v1,-1
    dsll32     $v1,$v1,0x10
    dsra32     $v1,$v1,0x10
    beqz       $v1, .L00000858
    sh         $v1,16($s0)
.L000007ec:
    slti       $a1,$s5,40
    beqz       $a1, .L00000858
    nop
.L000007f8:
    dsll       $s4,$s5,0x2
    daddu      $s4,$s4,$s5
    dsll       $s4,$s4,0x3
    daddu      $s4,$s4,$s0
    lh         $a0,40($s4)
    andi       $at,$a0,0x20
    beqz       $at, .L000007ec
    addiu      $s5,$s5,1
    andi       $at,$a0,0x10
    beqz       $at, .L00000838
    nop
    lw         $a1,64($s4)
    jal        rrmValidateMGRSwapBuf
    ld         $a0,0($s1)
    cache      0x14,0($sp)
    sw         $zero,64($s4)
.L00000838:
    ld         $a0,56($s4)
    beqz       $a0, .L000007b0
    nop
    jal        rrmValidateBuffer
    nop
    cache      0x14,0($sp)
    b          .L000007b0
    sd         $zero,56($s4)
.L00000858:
    ld         $s4,32($s0)
    beqz       $s4, .L0000087c
    ld         $s5,40($sp)
    ld         $s5,40($sp)
.L00000868:
    jal        rrmValidateRetrace
    move       $a0,$s4
    ld         $s4,40($s4)
    bnez       $s4, .L00000868
    nop
.L0000087c:
    cache      0x14,0($sp)
    sd         $zero,32($s0)
    move       $a0,$s8
    jal        mutex_unlock
    ld         $s4,24($sp)
    ld         $ra,16($sp)
    ld         $s0,32($sp)
    ld         $s1,8($sp)
    ld         $s8,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000008a8:
    jal        rrmValidateVideoSync
    move       $a0,$s1
    b          .L000007a0
    sd         $s5,40($sp)

glabel MgrasCheckSwapTask
    bltz       $a1, .L000008cc
    li         $v0,22
    slti       $at,$a1,40
    bnez       $at, .L000008d4
    nop
.L000008cc:
    b          .L000008f8
    nop
.L000008d4:
    dsll       $a2,$a1,0x2
    ld         $v1,216($a0)
    daddu      $a2,$a2,$a1
    dsll       $a2,$a2,0x3
    daddu      $v1,$v1,$a2
    lh         $v1,40($v1)
    li         $v0,16
    sltu       $v1,$zero,$v1
    movz       $v0,$zero,$v1
.L000008f8:
    jr         $ra
    nop

glabel MgrasSchedSwapTaskCheckReturnValue
    daddiu     $sp,$sp,-80
    move       $v0,$a1
    ld         $a5,216($a0)
    bltz       $a1, .L000009c0
    slti       $at,$v0,40
    beqz       $at, .L000009c0
    nop
    sd         $s0,0($sp)
    dsll       $s0,$v0,0x2
    daddu      $s0,$s0,$v0
    dsll       $s0,$s0,0x3
    daddu      $s0,$s0,$a5
    lh         $v1,40($s0)
    beqz       $v1, .L000009b0
    nop
    beqz       $a2, .L00000950
    nop
    ld         $at,56($s0)
    bnez       $at, .L000009c8
    nop
.L00000950:
    sd         $s1,24($sp)
    sd         $s5,32($sp)
    sd         $s4,16($sp)
    li         $s5,1
    sd         $ra,8($sp)
    daddiu     $s4,$s0,72
    daddiu     $s1,$a0,2280
.L0000096c:
    cache      0x14,0($sp)
    li         $a1,25
    move       $a0,$s4
    move       $a2,$s1
    sw         $s5,68($s0)
    jal        sv_wait
    move       $a3,$zero
    move       $a0,$s1
    jal        mutex_lock
    li         $a1,25
    lh         $v1,40($s0)
    bnez       $v1, .L0000096c
    nop
    ld         $s5,32($sp)
    ld         $s1,24($sp)
    ld         $s4,16($sp)
    ld         $ra,8($sp)
.L000009b0:
    move       $v0,$zero
    ld         $s0,0($sp)
.L000009b8:
    jr         $ra
    daddiu     $sp,$sp,80
.L000009c0:
    b          .L000009b8
    li         $v0,22
.L000009c8:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a2,$v0
    sd         $ra,8($sp)
    ld         $s0,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,16
    li         $v0,16
    b          .L000009b8
    ld         $ra,8($sp)

glabel MgrasSchedSwapTask
    ld         $v0,216($a0)
    ld         $t2,208($a0)
    daddiu     $sp,$sp,-192
    sd         $s1,80($sp)
    sd         $s0,64($sp)
    sd         $s2,56($sp)
    move       $s0,$a0
    sd         $s3,88($sp)
    move       $s2,$a2
    move       $s1,$a3
    sd         $zero,104($sp)
    beqz       $a3, .L00000a4c
    move       $s3,$zero
    sd         $v0,0($sp)
    sd         $a5,8($sp)
    sd         $a6,16($sp)
    sd         $a1,24($sp)
    sd         $a4,32($sp)
    sd         $a7,40($sp)
    sd         $t2,48($sp)
    sd         $ra,112($sp)
    ld         $at,112($s1)
    sd         $at,104($sp)
.L00000a4c:
    sd         $v0,0($sp)
    sd         $a5,8($sp)
    sd         $a6,16($sp)
    sd         $a1,24($sp)
    sd         $a4,32($sp)
    sd         $a7,40($sp)
    sd         $t2,48($sp)
    sd         $ra,112($sp)
    daddiu     $a0,$s0,2280
    jal        mutex_mine
    sd         $a0,72($sp)
    beqz       $v0, .L00000bbc
    nop
.L00000a80:
    move       $a0,$s0
    move       $a1,$s2
    jal        MgrasSchedSwapTaskCheckReturnValue
    move       $a2,$s1
    sd         $v0,96($sp)
    move       $v1,$s3
    li         $a7,1
    beqz       $v0, .L00000ad4
    ld         $ra,112($sp)
    ld         $s3,88($sp)
    ld         $s1,80($sp)
    ld         $s0,64($sp)
    beqz       $v1, .L00000ac8
    ld         $s2,56($sp)
    ld         $a0,72($sp)
    jal        mutex_unlock
    ld         $s3,88($sp)
    ld         $ra,112($sp)
.L00000ac8:
    ld         $v0,96($sp)
.L00000acc:
    jr         $ra
    daddiu     $sp,$sp,192
.L00000ad4:
    ld         $t0,104($sp)
    dsll       $v0,$s2,0x2
    ld         $v1,0($sp)
    daddu      $v0,$v0,$s2
    ld         $a0,104($sp)
    dsll       $v0,$v0,0x3
    ld         $t1,40($sp)
    beqz       $t0, .L00000b28
    daddu      $v0,$v0,$v1
    cache      0x14,0($sp)
    lw         $a0,1124($a0)
    lw         $t0,128($s0)
    addu       $a0,$a0,$t1
    subu       $a0,$a0,$t0
    slti       $v1,$a0,2
    beqz       $v1, .L00000b34
    sw         $a0,44($v0)
    cache      0x14,0($sp)
    li         $a0,1
    b          .L00000b34
    sw         $a0,44($v0)
.L00000b28:
    cache      0x14,0($sp)
    li         $a0,1
    sw         $a0,44($v0)
.L00000b34:
    beqz       $s1, .L00000b54
    nop
    ld         $t0,104($sp)
    lw         $t0,1136($t0)
    beqz       $t0, .L00000b54
    nop
    beq        $a0, $a7, .L00000bd0
    nop
.L00000b54:
    cache      0x14,0($sp)
    ld         $at,8($sp)
    sh         $at,42($v0)
    sd         $s1,56($v0)
    ld         $s1,32($sp)
    ld         $s0,24($sp)
    ld         $s2,16($sp)
    sw         $s2,48($v0)
    sh         $s0,40($v0)
    ld         $s0,0($sp)
    sw         $s1,64($v0)
    ld         $s1,80($sp)
    lh         $t1,16($s0)
    ld         $s2,56($sp)
    addiu      $t1,$t1,1
    sh         $t1,16($s0)
    ld         $s0,64($sp)
.L00000b98:
    move       $v1,$s3
    beqz       $v1, .L00000bb4
    ld         $s3,88($sp)
    ld         $a0,72($sp)
    jal        mutex_unlock
    ld         $s3,88($sp)
    ld         $ra,112($sp)
.L00000bb4:
    b          .L00000acc
    move       $v0,$zero
.L00000bbc:
    ld         $a0,72($sp)
    jal        mutex_lock
    li         $a1,25
    b          .L00000a80
    li         $s3,1
.L00000bd0:
    ld         $a0,48($sp)
    lui        $a2,0x6
    slti       $t0,$s2,32
    lui        $t1,0x7
    daddu      $a2,$a0,$a2
    beqz       $t0, .L00000c54
    daddu      $a0,$a0,$t1
    ld         $t0,8($sp)
    ld         $t2,0($sp)
    sllv       $a3,$a7,$s2
    beqz       $t0, .L00000d58
    lw         $t2,20($t2)
    cache      0x14,0($sp)
    ld         $at,0($sp)
    or         $s2,$a3,$t2
    sw         $s2,20($at)
    ld         $s2,56($sp)
.L00000c14:
    lw         $v1,256($a0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L00000c3c
    nop
.L00000c28:
    lw         $t0,256($a0)
    andi       $t0,$t0,0x1f
    sltiu      $t0,$t0,5
    beqz       $t0, .L00000c28
    nop
.L00000c3c:
    cache      0x14,0($sp)
    sb         $zero,7304($a2)
    ld         $t1,0($sp)
    lw         $t1,20($t1)
    b          .L00000cc0
    sw         $t1,7552($a2)
.L00000c54:
    ld         $at,8($sp)
    addiu      $a3,$s2,-32
    ld         $t2,0($sp)
    sllv       $a3,$a7,$a3
    beqz       $at, .L00000d74
    lw         $t2,24($t2)
    cache      0x14,0($sp)
    ld         $at,0($sp)
    or         $s2,$a3,$t2
    sw         $s2,24($at)
    ld         $s2,56($sp)
.L00000c80:
    lw         $v1,256($a0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L00000ca8
    nop
.L00000c94:
    lw         $t0,256($a0)
    andi       $t0,$t0,0x1f
    sltiu      $t0,$t0,5
    beqz       $t0, .L00000c94
    nop
.L00000ca8:
    cache      0x14,0($sp)
    li         $at,4
    sb         $at,7304($a2)
    ld         $t1,0($sp)
    lw         $t1,24($t1)
    sw         $t1,7552($a2)
.L00000cc0:
    ld         $a3,224($s0)
    beqz       $a3, .L00000d00
    nop
    lw         $v1,256($a0)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,6
    bnez       $v1, .L00000cf4
    nop
.L00000ce0:
    lw         $t0,256($a0)
    andi       $t0,$t0,0x1f
    sltiu      $t0,$t0,6
    beqz       $t0, .L00000ce0
    nop
.L00000cf4:
    cache      0x14,0($sp)
    lbu        $t1,0($a3)
    sb         $t1,7304($a2)
.L00000d00:
    cache      0x14,0($sp)
    sw         $zero,44($v0)
    sh         $zero,40($v0)
    sw         $zero,64($v0)
    sd         $zero,56($v0)
    ld         $at,24($sp)
    ld         $v1,8($sp)
    ld         $t0,16($sp)
    andi       $at,$at,0x10
    sw         $t0,48($v0)
    beqz       $at, .L00000d3c
    sh         $v1,42($v0)
    ld         $a0,0($s0)
    jal        rrmValidateMGRSwapBuf
    ld         $a1,32($sp)
.L00000d3c:
    move       $a0,$s1
    jal        rrmValidateBuffer
    ld         $s0,64($sp)
    ld         $s1,80($sp)
    ld         $ra,112($sp)
    b          .L00000b98
    nop
.L00000d58:
    cache      0x14,0($sp)
    ld         $t0,0($sp)
    ld         $s2,56($sp)
    nor        $v1,$a3,$zero
    and        $v1,$v1,$t2
    b          .L00000c14
    sw         $v1,20($t0)
.L00000d74:
    cache      0x14,0($sp)
    ld         $t1,0($sp)
    ld         $s2,56($sp)
    nor        $t0,$a3,$zero
    and        $t0,$t0,$t2
    b          .L00000c80
    sw         $t0,24($t1)

glabel MgrasUnSchedSwapTask
    daddiu     $sp,$sp,-80
    move       $a5,$a0
    sd         $s0,0($sp)
    move       $v0,$a1
    li         $v1,-17
    sd         $s1,8($sp)
    ld         $s0,216($a0)
    bltz       $a2, .L00000dc0
    move       $s1,$a2
    slti       $at,$s1,40
    bnez       $at, .L00000ddc
    nop
.L00000dc0:
    beq        $s1, $v1, .L00000de4
    sd         $v0,16($sp)
    ld         $s1,8($sp)
    li         $v0,22
    ld         $s0,0($sp)
.L00000dd4:
    jr         $ra
    daddiu     $sp,$sp,80
.L00000ddc:
    sd         $ra,32($sp)
    sd         $v0,16($sp)
.L00000de4:
    li         $a1,25
    sd         $ra,32($sp)
    daddiu     $a0,$a5,2280
    jal        mutex_lock
    sd         $a0,24($sp)
    li         $a3,-17
    ld         $a0,16($sp)
    bne        $s1, $a3, .L00000e38
    ld         $v0,24($sp)
    move       $s1,$zero
.L00000e0c:
    dsll       $a4,$s1,0x2
    daddu      $a4,$a4,$s1
    dsll       $a4,$a4,0x3
    daddu      $a4,$a4,$s0
    ld         $a4,56($a4)
    beq        $a4, $a0, .L00000e38
    nop
    addiu      $s1,$s1,1
    slti       $at,$s1,40
    bnez       $at, .L00000e0c
    nop
.L00000e38:
    slti       $v1,$s1,40
    dsll       $a1,$s1,0x2
    beqz       $v1, .L00000e98
    daddu      $a1,$a1,$s1
    dsll       $a1,$a1,0x3
    daddu      $a1,$a1,$s0
    lh         $a3,40($a1)
    beqz       $a3, .L00000e98
    nop
    cache      0x14,0($sp)
    sh         $zero,40($a1)
    sw         $zero,64($a1)
    sd         $zero,56($a1)
    sw         $zero,44($a1)
    lh         $a2,16($s0)
    move       $a0,$v0
    ld         $s1,8($sp)
    addiu      $a2,$a2,-1
    jal        mutex_unlock
    sh         $a2,16($s0)
    ld         $ra,32($sp)
    li         $v0,1
    b          .L00000dd4
    ld         $s0,0($sp)
.L00000e98:
    ld         $s1,8($sp)
    move       $a0,$v0
    jal        mutex_unlock
    ld         $s0,0($sp)
    move       $v0,$zero
    b          .L00000dd4
    ld         $ra,32($sp)

glabel MgrasSchedRetraceEvent
    daddiu     $sp,$sp,-48
    sd         $s1,16($sp)
    sd         $s0,24($sp)
    move       $s0,$a1
    sd         $s8,0($sp)
    sd         $ra,8($sp)
    li         $a1,25
    daddiu     $s8,$a0,2280
    ld         $s1,216($a0)
    jal        mutex_lock
    move       $a0,$s8
    ld         $a1,32($s1)
    beq        $a1, $s0, .L00000f54
    nop
    beqz       $a1, .L00000f14
    nop
    ld         $v0,40($a1)
    beqz       $v0, .L00000f14
    nop
.L00000f00:
    beq        $s0, $v0, .L00000f44
    nop
    ld         $v0,40($v0)
    bnez       $v0, .L00000f00
    nop
.L00000f14:
    cache      0x14,0($sp)
    sd         $a1,40($s0)
    move       $a0,$s8
    jal        mutex_unlock
    sd         $s0,32($s1)
    move       $v0,$zero
.L00000f2c:
    ld         $ra,8($sp)
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    ld         $s8,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000f44:
    jal        mutex_unlock
    move       $a0,$s8
    b          .L00000f2c
    move       $v0,$zero
.L00000f54:
    jal        mutex_unlock
    move       $a0,$s8
    b          .L00000f2c
    move       $v0,$zero

glabel MgrasUnSchedRetraceEvent
    daddiu     $sp,$sp,-64
    sd         $s5,16($sp)
    sd         $s1,8($sp)
    move       $s1,$a1
    sd         $s8,32($sp)
    sd         $ra,24($sp)
    li         $a1,25
    daddiu     $s8,$a0,2280
    ld         $s5,216($a0)
    jal        mutex_lock
    move       $a0,$s8
    ld         $a0,32($s5)
    lw         $v1,0($sp)
    beqz       $a0, .L00001018
    move       $a1,$a0
    li         $at,1
    bne        $a0, $s1, .L00000fc4
    ld         $a4,40($a0)
    cache      0x14,0($sp)
    sd         $at,40($sp)
    sd         $a4,32($s5)
    ld         $s5,16($sp)
    b          .L00000ffc
    ld         $s1,8($sp)
.L00000fc4:
    move       $v0,$a4
    beqz       $a4, .L00000ff4
    ld         $s5,16($sp)
.L00000fd0:
    beq        $s1, $v0, .L00000fec
    ld         $a0,40($v0)
    move       $a1,$v0
    bnez       $a0, .L00000fd0
    move       $v0,$a0
    b          .L00000ff4
    nop
.L00000fec:
    cache      0x14,0($sp)
    sd         $a0,40($a1)
.L00000ff4:
    sd         $zero,40($sp)
    ld         $s1,8($sp)
.L00000ffc:
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,24($sp)
    ld         $v0,40($sp)
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001018:
    ld         $s5,16($sp)
    ld         $s1,8($sp)
    b          .L00000ffc
    sd         $v1,40($sp)

glabel MgrasSchedMGRSwapBuf
    li         $a7,1
    move       $a6,$zero
    move       $a3,$zero
    move       $t1,$a1
    move       $a5,$a4
    move       $a4,$a1
    daddiu     $sp,$sp,-64
    lui        $t0,0x4000
    li         $a1,49
    and        $a5,$a5,$t0
    sd         $ra,0($sp)
    ld         $a0,32($a0)
    jal        MgrasSchedSwapTask
    sltu       $a5,$zero,$a5
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel mgras_finishtimeout
    ld         $a1,-30720($gp)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    move       $s0,$a0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,88
    jal        vsema
    daddiu     $a0,$s0,1912
    move       $a0,$s0
    jal        mgras_error
    ld         $a1,208($s0)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasSchedSwapBuf
    daddiu     $sp,$sp,-128
    sd         $ra,24($sp)
    sd         $s2,16($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    daddiu     $a0,$a0,2280
    sd         $a0,64($sp)
    move       $s1,$a1
    move       $s2,$a2
    ld         $at,112($s1)
    li         $a1,25
    jal        mutex_lock
    sd         $at,72($sp)
    move       $a0,$s0
    move       $a1,$s2
    jal        MgrasSchedSwapTaskCheckReturnValue
    move       $a2,$s1
    sd         $v0,88($sp)
    sd         $v0,80($sp)
    move       $v1,$v0
    beqz       $v0, .L0000112c
    ld         $a0,64($sp)
    ld         $s2,16($sp)
    ld         $s1,8($sp)
    jal        mutex_unlock
    ld         $s0,0($sp)
    ld         $v0,88($sp)
    ld         $ra,24($sp)
.L00001124:
    jr         $ra
    daddiu     $sp,$sp,128
.L0000112c:
    jal        mutex_unlock
    nop
    ld         $a0,120($s1)
    lh         $a0,18($a0)
    move       $a1,$s1
    sd         $a0,32($sp)
    jal        MgrasValidateBanks
    move       $a0,$s1
    lw         $v0,32($s1)
    slti       $a3,$v0,2
    li         $at,1
    bnez       $a3, .L00001168
    move       $a4,$v0
    b          .L0000116c
    sd         $v0,40($sp)
.L00001168:
    sd         $at,40($sp)
.L0000116c:
    move       $a0,$s0
    move       $a2,$zero
    ld         $a1,208($s0)
    jal        MgrasFlushHQ3
    move       $a3,$zero
    bltz       $v0, .L000012e8
    nop
    ld         $a0,208($s0)
    lui        $v0,0x7
    daddu      $v1,$v0,$a0
    lw         $v1,8($v1)
    andi       $v1,$v1,0x401
    beqz       $v1, .L000011bc
    nop
    cache      0x14,0($sp)
    li         $a3,1025
    lui        $a4,0x5
    ori        $a4,$a4,0xc
    daddu      $a4,$a4,$a0
    sw         $a3,0($a4)
.L000011bc:
    li         $a1,26
    daddiu     $a0,$s0,1912
    jal        psema
    sd         $a0,48($sp)
    beqz       $v0, .L00001244
    nop
.L000011d4:
    ld         $at,200($s0)
    lw         $at,68($at)
    beqz       $at, .L000011fc
    nop
    ld         $s2,16($sp)
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    li         $v0,-1
    b          .L00001124
    ld         $ra,24($sp)
.L000011fc:
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    daddiu     $a0,$s0,1808
    jal        init_sema
    sd         $a0,56($sp)
    ld         $a0,-30704($gp)
    ld         $a1,56($sp)
    jal        timeout
    li         $a2,1
    ld         $a0,56($sp)
    jal        psema
    li         $a1,25
    ld         $a0,48($sp)
    jal        psema
    li         $a1,26
    bnez       $v0, .L000011d4
    nop
.L00001244:
    li         $a2,1500
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30696($gp)
    cache      0x14,0($sp)
    sw         $s2,1896($s0)
    sd         $s1,1888($s0)
    ld         $a0,32($sp)
    sw         $v0,1908($s0)
    ld         $v1,208($s0)
    lui        $v0,0x5
    sw         $a0,1900($s0)
    ori        $v0,$v0,0x18
    daddu      $v0,$v0,$v1
    ld         $v1,40($sp)
    sw         $v1,1904($s0)
    li         $at,1024
    sw         $at,0($v0)
    ld         $a4,208($s0)
    ld         $s2,16($sp)
    lui        $ra,0x7
    ld         $a0,72($sp)
    daddu      $a4,$a4,$ra
    li         $a3,14080
    sw         $a3,132($a4)
    ld         $s1,8($sp)
    ld         $a0,1104($a0)
    ld         $v0,80($sp)
    ld         $s0,0($sp)
    beqz       $a0, .L000012e0
    ld         $ra,24($sp)
    cache      0x14,0($sp)
    ld         $s2,16($sp)
    ld         $s1,8($sp)
    lw         $v1,0($a0)
    ld         $s0,0($sp)
    lui        $a3,0x8000
    or         $v1,$v1,$a3
    sw         $v1,0($a0)
.L000012e0:
    b          .L00001124
    nop
.L000012e8:
    ld         $s2,16($sp)
    ld         $a0,-30720($gp)
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    jal        printf
    daddiu     $a0,$a0,120
    li         $v0,-1
    b          .L00001124
    ld         $ra,24($sp)

glabel MgrasSchedSwapBufFinish
    lw         $at,1856($a0)
    ld         $a3,1888($a0)
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    sd         $ra,16($sp)
    beqz       $at, .L00001338
    move       $s0,$a0
    sd         $a3,8($sp)
    jal        MgrasCcvUpdate
    move       $a0,$s0
    ld         $a3,8($sp)
.L00001338:
    move       $a0,$s0
    lw         $a7,1904($s0)
    move       $a6,$zero
    lw         $a5,1900($s0)
    move       $a4,$zero
    lw         $a2,1896($s0)
    jal        MgrasSchedSwapTask
    li         $a1,33
    beqz       $v0, .L00001370
    nop
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,160
.L00001370:
    jal        untimeout
    lw         $a0,1908($s0)
    cache      0x14,0($sp)
    daddiu     $a0,$s0,1912
    jal        vsema
    sw         $zero,1908($s0)
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasUnSchedSwapBuf
    daddiu     $sp,$sp,-48
    sd         $ra,0($sp)
    jal        MgrasUnSchedSwapTask
    ld         $a0,32($a0)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasSetDisplayMode
    ld         $v0,32($a0)
    daddiu     $sp,$sp,-112
    sd         $s0,24($sp)
    ld         $a6,208($v0)
    move       $s0,$a1
    ld         $a5,216($v0)
    bltz       $a1, .L000013e8
    slti       $at,$s0,40
    sd         $v0,32($sp)
    sd         $a2,8($sp)
    sd         $a5,48($sp)
    bnez       $at, .L000013f4
    sd         $a6,56($sp)
.L000013e8:
    li         $v0,-22
    b          .L0000149c
    ld         $s0,24($sp)
.L000013f4:
    ld         $a0,32($sp)
    li         $a1,25
    sd         $ra,64($sp)
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,16($sp)
    ld         $a5,8($sp)
    slti       $a1,$s0,32
    lui        $at,0x4000
    li         $v0,1
    and        $a5,$a5,$at
    ld         $a2,48($sp)
    beqz       $a1, .L000014a4
    sltu       $a5,$zero,$a5
    sllv       $a3,$v0,$s0
    lw         $a2,20($a2)
    and        $a2,$a2,$a3
    srlv       $a2,$a2,$s0
.L0000143c:
    xor        $a3,$a5,$a2
    beqz       $a3, .L000014c0
    sd         $a1,0($sp)
    li         $a7,1
    move       $a4,$zero
    move       $a3,$zero
    move       $a2,$s0
    ld         $a6,8($sp)
    lui        $t0,0x4000
    li         $a1,51
    nor        $t0,$t0,$zero
    ld         $a0,32($sp)
    jal        MgrasSchedSwapTask
    and        $a6,$a6,$t0
    ld         $a0,16($sp)
    li         $s0,1
    slti       $at,$v0,0
    movn       $s0,$v0,$at
    sd         $s0,40($sp)
    ld         $s0,24($sp)
.L0000148c:
    jal        mutex_unlock
    nop
    ld         $v0,40($sp)
    ld         $ra,64($sp)
.L0000149c:
    jr         $ra
    daddiu     $sp,$sp,112
.L000014a4:
    addiu      $a3,$s0,-32
    ld         $a2,48($sp)
    lw         $a2,24($a2)
    sllv       $a4,$v0,$a3
    and        $a2,$a2,$a4
    b          .L0000143c
    srlv       $a2,$a2,$a3
.L000014c0:
    ld         $a0,32($sp)
    jal        MgrasCheckSwapTask
    move       $a1,$s0
    lui        $v1,0x7
    bltz       $v0, .L00001570
    ld         $a0,16($sp)
    ld         $v0,56($sp)
    daddu      $v0,$v0,$v1
    lw         $a3,256($v0)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,4
    li         $a1,8
    bnez       $a3, .L0000150c
    lui        $v1,0x6
.L000014f8:
    lw         $a3,256($v0)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,4
    beqz       $a3, .L000014f8
    nop
.L0000150c:
    cache      0x14,0($sp)
    ld         $v0,56($sp)
    daddu      $v0,$v0,$v1
    sb         $a1,7304($v0)
    lw         $a4,7424($v0)
    bnez       $a4, .L0000153c
    nop
.L00001528:
    cache      0x14,0($sp)
    sb         $a1,7304($v0)
    lw         $a3,7424($v0)
    beqz       $a3, .L00001528
    nop
.L0000153c:
    ld         $a4,0($sp)
    ld         $a1,8($sp)
    lui        $a3,0x4000
    nor        $a3,$a3,$zero
    beqz       $a4, .L00001580
    and        $a1,$a1,$a3
    cache      0x14,0($sp)
    sll        $a4,$s0,0x2
    sb         $a4,7304($v0)
    sw         $a1,7680($v0)
.L00001564:
    sd         $zero,40($sp)
    b          .L0000148c
    ld         $s0,24($sp)
.L00001570:
    sd         $v0,40($sp)
    move       $s0,$v0
    b          .L0000148c
    ld         $s0,24($sp)
.L00001580:
    cache      0x14,0($sp)
    andi       $at,$s0,0x1f
    sll        $at,$at,0x2
    sb         $at,7304($v0)
    b          .L00001564
    sw         $a1,7808($v0)

glabel MgrasPositionCursor
    daddiu     $sp,$sp,-96
    sd         $s4,8($sp)
    sd         $s0,24($sp)
    sd         $s1,32($sp)
    sd         $s2,40($sp)
    move       $s1,$a1
    ld         $s2,208($a0)
    sd         $ra,16($sp)
    move       $s0,$a2
    move       $s4,$a0
    jal        mgras_baseindex
    move       $a0,$s2
    ld         $v1,-30688($gp)
    dsll       $at,$v0,0x3
    daddiu     $a0,$s4,2280
    sd         $a0,48($sp)
    daddu      $at,$at,$v1
    ld         $at,0($at)
    li         $a1,25
    jal        mutex_lock
    sd         $at,0($sp)
    cache      0x14,0($sp)
    sw         $s0,404($s4)
    lw         $a3,1880($s4)
    lw         $v0,392($s4)
    ld         $a0,48($sp)
    li         $at,16
    sw         $s1,400($s4)
    subu       $v0,$s1,$v0
    beq        $a3, $at, .L000016a8
    addiu      $s1,$v0,31
.L00001614:
    lui        $a1,0x7
    daddu      $a1,$s2,$a1
    lw         $v1,256($a1)
    lw         $s4,396($s4)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    subu       $s0,$s0,$s4
    ld         $s4,8($sp)
    bnez       $v1, .L00001654
    addiu      $s0,$s0,31
    ld         $s4,8($sp)
.L00001640:
    lw         $a3,256($a1)
    andi       $a3,$a3,0x1f
    sltiu      $a3,$a3,5
    beqz       $a3, .L00001640
    nop
.L00001654:
    cache      0x14,0($sp)
    lui        $a6,0x300
    lui        $t0,0x200
    andi       $a4,$s0,0xffff
    andi       $a7,$s1,0xffff
    lui        $a5,0x6
    daddu      $a5,$s2,$a5
    sll        $a7,$a7,0x8
    sll        $a4,$a4,0x8
    or         $a7,$a7,$t0
    sw         $a7,8248($a5)
    or         $a4,$a4,$a6
    jal        mutex_unlock
    sw         $a4,8248($a5)
    ld         $ra,16($sp)
    ld         $s0,24($sp)
    move       $v0,$zero
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L000016a8:
    ld         $a1,0($sp)
    lw         $a1,8($a1)
    sltu       $at,$s0,$a1
    beqz       $at, .L00001614
    nop
    srl        $at,$a1,0x1
    divu       $zero,$s0,$at
    ld         $a3,0($sp)
    lw         $a3,0($a3)
    andi       $a3,$a3,0x4
    mfhi       $a4
    mflo       $a2
    beqz       $a3, .L000016f4
    teq        $at,$zero,0x7
    srl        $s0,$a4,0x1
    sll        $at,$a2,0x1
    sll        $s0,$s0,0x2
    b          .L00001614
    or         $s0,$s0,$at
.L000016f4:
    sll        $s0,$a4,0x1
    b          .L00001614
    or         $s0,$s0,$a2

glabel MgrasSetGammaRamp
    daddiu     $sp,$sp,-80
    sd         $s4,24($sp)
    sd         $s1,8($sp)
    sd         $s2,40($sp)
    sd         $s0,16($sp)
    move       $s2,$a2
    move       $s0,$a3
    move       $s1,$a1
    sd         $s8,0($sp)
    sd         $ra,32($sp)
    li         $a1,25
    daddiu     $s8,$a0,2280
    ld         $s4,208($a0)
    jal        mutex_lock
    move       $a0,$s8
    lui        $a0,0x7
    daddu      $a0,$s4,$a0
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    move       $a1,$zero
    lui        $t0,0x6
    bnez       $at, .L00001774
    daddu      $t0,$s4,$t0
.L00001760:
    lw         $a4,256($a0)
    andi       $a4,$a4,0x1f
    sltiu      $a4,$a4,6
    beqz       $a4, .L00001760
    nop
.L00001774:
    cache      0x14,0($sp)
    b          .L000017b0
    sh         $zero,6160($t0)
.L00001780:
    cache      0x14,0($sp)
    slti       $v0,$a1,256
    sll        $a4,$a3,0x6
    sh         $a7,6288($t0)
    sll        $at,$a5,0x6
    andi       $a4,$a4,0xff00
    andi       $at,$at,0xff00
    or         $a4,$a4,$a6
    sh         $a4,6288($t0)
    or         $at,$at,$v1
    beqz       $v0, .L00001838
    sh         $at,6288($t0)
.L000017b0:
    daddu      $a2,$a1,$a1
    lw         $a4,256($a0)
    daddu      $a3,$a2,$s2
    lhu        $a3,0($a3)
    daddu      $a5,$a2,$s0
    addiu      $a1,$a1,1
    lhu        $a5,0($a5)
    daddu      $a2,$a2,$s1
    andi       $a4,$a4,0x1f
    andi       $a3,$a3,0xffc0
    lhu        $a2,0($a2)
    andi       $a5,$a5,0xffc0
    sra        $a3,$a3,0x6
    sra        $a5,$a5,0x6
    andi       $a2,$a2,0xffc0
    sltiu      $a4,$a4,4
    sra        $a2,$a2,0x6
    andi       $a5,$a5,0xffff
    andi       $a2,$a2,0xffff
    andi       $a3,$a3,0xffff
    sll        $a7,$a2,0x6
    andi       $v1,$a2,0x3
    andi       $a7,$a7,0xff00
    andi       $a6,$a3,0x3
    or         $a7,$a7,$v1
    bnez       $a4, .L00001780
    andi       $v1,$a5,0x3
.L0000181c:
    lw         $at,256($a0)
    andi       $at,$at,0x1f
    sltiu      $at,$at,4
    beqz       $at, .L0000181c
    nop
    b          .L00001780
    nop
.L00001838:
    jal        mutex_unlock
    move       $a0,$s8
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $ra,32($sp)
    ld         $s2,40($sp)
    move       $v0,$zero
    ld         $s4,24($sp)
    ld         $s8,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel mgras_update_pp1ccv
    lw         $at,-30720($gp)
    ld         $a4,0($a0)
    daddiu     $sp,$sp,-80
    ld         $v0,8($a0)
    bnez       $at, .L00001974
    sd         $v0,0($sp)
    ld         $v1,0($sp)
    lbu        $v1,44($v1)
    lui        $a6,0x6
    sd         $s4,48($sp)
    lui        $a5,0x7
    addiu      $s4,$v1,-1
    lui        $at,0x8
    andi       $s4,$s4,0x3
    ori        $at,$at,0x73f
    sll        $s4,$s4,0x14
    sd         $zero,8($sp)
    beqz       $v1, .L000018fc
    or         $s4,$s4,$at
    lui        $t3,0x3f
    lui        $t8,0x3f00
    li         $t1,1
    daddu      $a3,$a6,$a4
    sd         $s7,16($sp)
    daddu      $a2,$a5,$a4
    li         $s7,6
    lui        $at,0xff
    lui        $t2,0xf7
    sd         $s5,24($sp)
    and        $t2,$s4,$t2
    lui        $s5,0x8
    sd         $s0,40($sp)
    srl        $t2,$t2,0x10
    or         $s5,$s4,$s5
    sd         $s1,32($sp)
    and        $s5,$s5,$at
    b          .L0000199c
    srl        $s5,$s5,0x10
.L000018fc:
    sd         $s0,40($sp)
    sd         $s1,32($sp)
    sd         $s5,24($sp)
    li         $t1,1
    sd         $s7,16($sp)
    daddu      $a3,$a6,$a4
    daddu      $a2,$a5,$a4
.L00001918:
    cache      0x14,0($sp)
    sw         $t1,1640($a0)
    lw         $at,256($a2)
    ld         $s7,16($sp)
    ld         $s5,24($sp)
    andi       $at,$at,0x1f
    ld         $s1,32($sp)
    sltiu      $at,$at,6
    ld         $s0,40($sp)
    bnez       $at, .L0000196c
    ld         $s4,48($sp)
    ld         $s7,16($sp)
    ld         $s5,24($sp)
    ld         $s1,32($sp)
    ld         $s0,40($sp)
    ld         $s4,48($sp)
.L00001958:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,6
    beqz       $v0, .L00001958
    nop
.L0000196c:
    cache      0x14,0($sp)
    sb         $t1,7176($a3)
.L00001974:
    jr         $ra
    daddiu     $sp,$sp,80
.L0000197c:
    ld         $a1,0($sp)
    ld         $v1,8($sp)
    lbu        $a1,44($a1)
    addiu      $v1,$v1,1
    sd         $v1,8($sp)
    sltu       $v1,$v1,$a1
    beqz       $v1, .L00001918
    nop
.L0000199c:
    ld         $s1,8($sp)
    sll        $s0,$s1,0x1
    dsll32     $s1,$s1,0x0
    move       $a4,$zero
    dsrl32     $s1,$s1,0x0
    b          .L00001a94
    daddu      $s1,$s1,$s1
.L000019b8:
    beqz       $a6, .L000019d8
    move       $a7,$a5
    li         $at,16
    beq        $at, $a5, .L00001bf8
    nop
.L000019cc:
    li         $v0,15
    beq        $v0, $a5, .L00001c0c
    nop
.L000019d8:
    addiu      $a4,$a4,1
    beq        $a6, $a7, .L00001a88
    nop
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    sll        $a5,$a7,0xa
    bnez       $v1, .L00001a10
    ori        $a6,$a5,0x14
.L000019fc:
    lw         $a1,256($a2)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,5
    beqz       $a1, .L000019fc
    nop
.L00001a10:
    cache      0x14,0($sp)
    sb         $zero,7304($a3)
    sw         $a6,8064($a3)
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    bnez       $at, .L00001a44
    ori        $a1,$a5,0x114
.L00001a30:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    beqz       $v0, .L00001a30
    nop
.L00001a44:
    cache      0x14,0($sp)
    sb         $zero,7304($a3)
    sw         $a1,8064($a3)
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L00001a78
    nop
.L00001a64:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    beqz       $at, .L00001a64
    nop
.L00001a78:
    cache      0x14,0($sp)
    sb         $zero,7304($a3)
    sw         $a6,8064($a3)
    sw         $a7,1648($t0)
.L00001a88:
    sltiu      $v0,$a4,2
    beqz       $v0, .L0000197c
    nop
.L00001a94:
    dsll32     $t0,$a4,0x0
    or         $a1,$s0,$a4
    lw         $at,1640($a0)
    dsrl32     $t0,$t0,0x0
    sll        $a1,$a1,0x1
    daddu      $t0,$t0,$s1
    move       $a5,$zero
    dsll       $t0,$t0,0x2
    beqz       $at, .L00001bec
    daddu      $t0,$t0,$a0
    lw         $a5,1648($t0)
.L00001ac0:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,4
    bnez       $at, .L00001ae8
    move       $a6,$a5
.L00001ad4:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,4
    beqz       $v0, .L00001ad4
    nop
.L00001ae8:
    cache      0x14,0($sp)
    sb         $a1,7176($a3)
    sb         $t1,7304($a3)
    sb         $t2,7432($a3)
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L00001b20
    nop
.L00001b0c:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    beqz       $at, .L00001b0c
    nop
.L00001b20:
    cache      0x14,0($sp)
    sb         $t1,7304($a3)
    sb         $t2,7432($a3)
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    bnez       $v0, .L00001b54
    nop
.L00001b40:
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00001b40
    nop
.L00001b54:
    cache      0x14,0($sp)
    sb         $s7,7304($a3)
    lw         $a7,8064($a3)
    lw         $a1,256($a2)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,3
    and        $t9,$t8,$a7
    bnez       $a1, .L00001b8c
    srl        $t9,$t9,0x18
.L00001b78:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L00001b78
    nop
.L00001b8c:
    cache      0x14,0($sp)
    sb         $t1,7304($a3)
    sb         $s5,7432($a3)
    sb         $t1,7304($a3)
    sb         $s5,7432($a3)
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    bnez       $v0, .L00001bc8
    and        $a1,$t3,$a7
.L00001bb4:
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00001bb4
    nop
.L00001bc8:
    cache      0x14,0($sp)
    andi       $a5,$a7,0x3f00
    srl        $a1,$a1,0x10
    sb         $zero,7304($a3)
    srl        $a5,$a5,0x8
    bne        $a1, $t9, .L000019b8
    sw         $s4,7424($a3)
    b          .L000019b8
    move       $a5,$t9
.L00001bec:
    cache      0x14,0($sp)
    b          .L00001ac0
    sw         $zero,1648($t0)
.L00001bf8:
    sltiu      $at,$a6,16
    beqz       $at, .L000019cc
    nop
    b          .L000019d8
    li         $a7,15
.L00001c0c:
    sltiu      $v0,$a6,16
    bnez       $v0, .L000019d8
    nop
    b          .L000019d8
    li         $a7,16

glabel MgrasCcvUpdate
    ld         $a2,208($a0)
    daddiu     $sp,$sp,-96
    lw         $at,-30720($gp)
    sd         $s0,24($sp)
    sd         $s1,16($sp)
    ld         $s0,216($a0)
    bnez       $at, .L00001dac
    move       $s1,$a0
    lw         $v0,1856($s1)
    beqz       $v0, .L00001dac
    sd         $a2,40($sp)
    sd         $s7,48($sp)
    li         $a1,25
    sd         $ra,64($sp)
    daddiu     $a0,$s1,2280
    jal        mutex_lock
    sd         $a0,8($sp)
    ld         $v1,8($s0)
    ld         $a4,40($sp)
    lui        $a2,0x7
    lbu        $v1,44($v1)
    lui        $a6,0x6
    daddu      $a2,$a4,$a2
    lui        $at,0x8
    lw         $a5,256($a2)
    addiu      $s7,$v1,-1
    ori        $at,$at,0x73f
    andi       $s7,$s7,0x3
    andi       $a5,$a5,0x1f
    sll        $s7,$s7,0x14
    sd         $zero,0($sp)
    beqz       $v1, .L00001ce0
    or         $s7,$s7,$at
    lui        $t8,0x3f
    lui        $t3,0x3f00
    li         $t0,1
    daddu      $a3,$a6,$a4
    lui        $a1,0xff
    lui        $t1,0xf7
    and        $t1,$s7,$t1
    lui        $a0,0x8
    sd         $s5,56($sp)
    srl        $t1,$t1,0x10
    or         $a0,$s7,$a0
    sd         $a5,32($sp)
    and        $a0,$a0,$a1
    b          .L00001ddc
    srl        $a0,$a0,0x10
.L00001ce0:
    sd         $s5,56($sp)
    sd         $a5,32($sp)
    li         $t0,1
    daddu      $a3,$a6,$a4
.L00001cf0:
    ld         $a4,224($s1)
    ld         $s7,48($sp)
    ld         $s5,56($sp)
    beqz       $a4, .L00001d40
    ld         $a0,32($sp)
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    ld         $s7,48($sp)
    sltiu      $at,$at,6
    ld         $s5,56($sp)
    bnez       $at, .L00001d34
    ld         $a0,32($sp)
.L00001d20:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,6
    beqz       $v0, .L00001d20
    nop
.L00001d34:
    cache      0x14,0($sp)
    lbu        $v1,0($a4)
    sb         $v1,7304($a3)
.L00001d40:
    lw         $a1,256($a2)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,6
    bnez       $a1, .L00001d68
    nop
.L00001d54:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,6
    beqz       $at, .L00001d54
    nop
.L00001d68:
    cache      0x14,0($sp)
    sb         $t0,7176($a3)
    sw         $zero,1856($s1)
    sw         $t0,1640($s0)
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltu       $v0,$a0,$v0
    beqz       $v0, .L00001da0
    nop
.L00001d8c:
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltu       $v1,$a0,$v1
    bnez       $v1, .L00001d8c
    nop
.L00001da0:
    jal        mutex_unlock
    ld         $a0,8($sp)
    ld         $ra,64($sp)
.L00001dac:
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00001dbc:
    ld         $at,8($s0)
    ld         $a1,0($sp)
    lbu        $at,44($at)
    addiu      $a1,$a1,1
    sd         $a1,0($sp)
    sltu       $a1,$a1,$at
    beqz       $a1, .L00001cf0
    nop
.L00001ddc:
    ld         $s5,0($sp)
    sll        $ra,$s5,0x1
    dsll32     $s5,$s5,0x0
    move       $a4,$zero
    dsrl32     $s5,$s5,0x0
    b          .L00001eb0
    daddu      $s5,$s5,$s5
.L00001df8:
    beq        $a5, $t2, .L00001ea4
    nop
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    sll        $a7,$a5,0xa
    bnez       $at, .L00001e2c
    ori        $t2,$a7,0x14
.L00001e18:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    beqz       $v0, .L00001e18
    nop
.L00001e2c:
    cache      0x14,0($sp)
    sb         $zero,7304($a3)
    sw         $t2,8064($a3)
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L00001e60
    ori        $v0,$a7,0x114
.L00001e4c:
    lw         $a1,256($a2)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,5
    beqz       $a1, .L00001e4c
    nop
.L00001e60:
    cache      0x14,0($sp)
    sb         $zero,7304($a3)
    sw         $v0,8064($a3)
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    bnez       $at, .L00001e94
    nop
.L00001e80:
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00001e80
    nop
.L00001e94:
    cache      0x14,0($sp)
    sb         $zero,7304($a3)
    sw         $t2,8064($a3)
    sw         $a5,1648($a6)
.L00001ea4:
    sltiu      $a1,$a4,2
    beqz       $a1, .L00001dbc
    nop
.L00001eb0:
    li         $a5,6
    dsll32     $a6,$a4,0x0
    or         $a1,$ra,$a4
    lw         $at,1640($s0)
    dsrl32     $a6,$a6,0x0
    sll        $a1,$a1,0x1
    daddu      $a6,$a6,$s5
    move       $a7,$zero
    dsll       $a6,$a6,0x2
    beqz       $at, .L00002010
    daddu      $a6,$a6,$s0
    lw         $a7,1648($a6)
.L00001ee0:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,4
    bnez       $at, .L00001f08
    move       $t2,$a7
.L00001ef4:
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,4
    beqz       $v0, .L00001ef4
    nop
.L00001f08:
    cache      0x14,0($sp)
    sb         $a1,7176($a3)
    sb         $t0,7304($a3)
    sb         $t1,7432($a3)
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    bnez       $v1, .L00001f40
    nop
.L00001f2c:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,5
    beqz       $at, .L00001f2c
    nop
.L00001f40:
    cache      0x14,0($sp)
    sb         $t0,7304($a3)
    sb         $t1,7432($a3)
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    bnez       $v0, .L00001f74
    nop
.L00001f60:
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00001f60
    nop
.L00001f74:
    cache      0x14,0($sp)
    sb         $a5,7304($a3)
    lw         $a7,8064($a3)
    lw         $a1,256($a2)
    andi       $a1,$a1,0x1f
    sltiu      $a1,$a1,3
    and        $t9,$t3,$a7
    bnez       $a1, .L00001fac
    srl        $t9,$t9,0x18
.L00001f98:
    lw         $at,256($a2)
    andi       $at,$at,0x1f
    sltiu      $at,$at,3
    beqz       $at, .L00001f98
    nop
.L00001fac:
    cache      0x14,0($sp)
    sb         $t0,7304($a3)
    sb         $a0,7432($a3)
    sb         $t0,7304($a3)
    sb         $a0,7432($a3)
    lw         $v0,256($a2)
    andi       $v0,$v0,0x1f
    sltiu      $v0,$v0,5
    bnez       $v0, .L00001fe8
    and        $a1,$t8,$a7
.L00001fd4:
    lw         $v1,256($a2)
    andi       $v1,$v1,0x1f
    sltiu      $v1,$v1,5
    beqz       $v1, .L00001fd4
    nop
.L00001fe8:
    cache      0x14,0($sp)
    andi       $a5,$a7,0x3f00
    srl        $a1,$a1,0x10
    sb         $zero,7304($a3)
    srl        $a5,$a5,0x8
    addiu      $a4,$a4,1
    bne        $a1, $t9, .L00001df8
    sw         $s7,7424($a3)
    b          .L00001df8
    move       $a5,$t9
.L00002010:
    cache      0x14,0($sp)
    li         $a5,6
    b          .L00001ee0
    sw         $zero,1648($a6)
