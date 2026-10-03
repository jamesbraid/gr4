.section .text
.set noat
.set noreorder


glabel gfxtable_readerlock
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    cache      0x14,0($sp)
    lw         $at,0($s8)
    move       $a0,$v0
    addiu      $at,$at,1
    jal        splx
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gfxtable_readerunlock
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    cache      0x14,0($sp)
    lw         $at,0($s8)
    move       $a0,$v0
    addiu      $at,$at,-1
    jal        splx
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gfxtable_writerlock
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    sd         $ra,16($sp)
    jal        splhi
    move       $s0,$a0
    lw         $at,0($s0)
    sd         $s1,32($sp)
    blez       $at, .L000000d4
    ld         $ra,16($sp)
    li         $s1,1000
.L000000a0:
    jal        splx
    move       $a0,$v0
    sd         $s1,8($sp)
    daddiu     $a0,$sp,0
    jal        nano_delay
    sw         $zero,0($sp)
    jal        splhi
    nop
    lw         $v1,0($s0)
    bgtz       $v1, .L000000a0
    nop
    ld         $ra,16($sp)
    ld         $s1,32($sp)
.L000000d4:
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel gfxtable_writerunlock
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        splx
    move       $a0,$a1
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel init_gfx_group_table
    ld         $at,-30704($gp)
    beqz       $at, .L00000110
    daddiu     $sp,$sp,-16
.L00000108:
    jr         $ra
    daddiu     $sp,$sp,16
.L00000110:
    sd         $ra,0($sp)
    jal        kern_malloc
    li         $a0,128
    move       $a0,$v0
    bnez       $v0, .L00000138
    sd         $v0,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    ld         $a1,-30704($gp)
    ld         $a0,-30704($gp)
.L00000138:
    jal        bzero
    li         $a1,128
    daddiu     $a1,$gp,-30696
    jal        spinlock_init
    daddiu     $a0,$gp,-30708
    sw         $zero,-30712($gp)
    b          .L00000108
    ld         $ra,0($sp)

glabel gfx_group_find
    daddiu     $sp,$sp,-64
    sd         $s1,8($sp)
    sd         $ra,0($sp)
    jal        threadhandle_to_threadgrouphandle
    sd         $s5,16($sp)
    andi       $a0,$v0,0xf
    move       $s5,$v0
    sd         $s7,24($sp)
    beqz       $a0, .L000001f4
    move       $s7,$a0
    sd         $s8,32($sp)
.L00000184:
    sll        $s1,$s7,0x0
    daddiu     $s8,$gp,-30712
    jal        gfxtable_readerlock
    move       $a0,$s8
    ld         $s7,-30704($gp)
    dsll       $s1,$s1,0x3
    daddu      $s1,$s1,$s7
    ld         $s1,0($s1)
    beqz       $s1, .L000001d0
    ld         $s7,24($sp)
    ld         $at,0($s1)
    beq        $at, $s5, .L000001d0
    ld         $s7,24($sp)
.L000001b8:
    ld         $s1,24($s1)
    beqz       $s1, .L000001d0
    nop
    ld         $v1,0($s1)
    bne        $v1, $s5, .L000001b8
    nop
.L000001d0:
    move       $a0,$s8
    jal        gfxtable_readerunlock
    ld         $s5,16($sp)
    ld         $ra,0($sp)
    move       $v0,$s1
    ld         $s1,8($sp)
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000001f4:
    dsrl       $s7,$s5,0xc
    sd         $s8,32($sp)
    b          .L00000184
    andi       $s7,$s7,0xf

glabel gfx_group_create
    daddiu     $sp,$sp,-64
    sd         $a0,24($sp)
    sd         $ra,16($sp)
    sd         $s0,32($sp)
    jal        kern_malloc
    li         $a0,32
    move       $s0,$v0
    bnez       $v0, .L00000234
    ld         $ra,16($sp)
    move       $v0,$zero
    b          .L000002c8
    ld         $s0,32($sp)
.L00000234:
    jal        threadhandle_to_threadgrouphandle
    ld         $a0,24($sp)
    cache      0x14,0($sp)
    daddiu     $a1,$gp,-30688
    sw         $zero,8($s0)
    daddiu     $a0,$s0,16
    jal        spinlock_init
    sd         $v0,0($s0)
    cache      0x14,0($sp)
    ld         $a0,0($s0)
    dsrl       $a1,$a0,0xc
    andi       $v0,$a0,0xf
    andi       $a1,$a1,0xf
    sw         $zero,12($s0)
    beqz       $v0, .L000002d0
    move       $at,$v0
    sd         $v0,0($sp)
.L00000278:
    daddiu     $a0,$gp,-30712
    jal        gfxtable_writerlock
    sd         $a0,8($sp)
    cache      0x14,0($sp)
    ld         $v1,0($sp)
    ld         $a0,-30704($gp)
    sll        $v1,$v1,0x0
    dsll       $v1,$v1,0x3
    daddu      $a0,$a0,$v1
    ld         $a0,0($a0)
    sd         $a0,24($s0)
    move       $a1,$v0
    ld         $v0,-30704($gp)
    ld         $a0,8($sp)
    daddu      $v0,$v0,$v1
    jal        gfxtable_writerunlock
    sd         $s0,0($v0)
    move       $v0,$s0
    ld         $s0,32($sp)
    ld         $ra,16($sp)
.L000002c8:
    jr         $ra
    daddiu     $sp,$sp,64
.L000002d0:
    b          .L00000278
    sd         $a1,0($sp)

glabel gfx_group_destroy
    ld         $a6,0($a0)
    daddiu     $sp,$sp,-64
    sd         $s0,8($sp)
    andi       $a1,$a6,0xf
    move       $v0,$a0
    sd         $s3,24($sp)
    move       $s0,$zero
    beqz       $a1, .L000003b8
    move       $s3,$a1
    sd         $s7,32($sp)
    sd         $ra,16($sp)
    sd         $v0,0($sp)
.L00000308:
    sll        $s3,$s3,0x0
    daddiu     $s7,$gp,-30712
    jal        gfxtable_writerlock
    move       $a0,$s7
    ld         $a5,-30704($gp)
    dsll       $s3,$s3,0x3
    daddu      $a5,$a5,$s3
    ld         $a4,0($a5)
    ld         $at,0($a5)
    ld         $a6,0($sp)
    move       $a1,$v0
    beqz       $at, .L00000368
    ld         $s3,24($sp)
    ld         $a6,0($a6)
    ld         $at,0($a4)
    beq        $at, $a6, .L00000368
    ld         $s3,24($sp)
.L0000034c:
    daddiu     $a5,$a4,24
    ld         $a4,0($a5)
    beqz       $a4, .L00000380
    nop
    ld         $at,0($a4)
    bne        $at, $a6, .L0000034c
    nop
.L00000368:
    beqz       $a4, .L00000380
    nop
    cache      0x14,0($sp)
    ld         $v1,24($a4)
    move       $s0,$a4
    sd         $v1,0($a5)
.L00000380:
    jal        gfxtable_writerunlock
    move       $a0,$s7
    ld         $s7,32($sp)
    bnez       $s0, .L000003a0
    ld         $ra,16($sp)
.L00000394:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000003a0:
    jal        spinlock_destroy
    daddiu     $a0,$s0,16
    jal        kern_free
    move       $a0,$s0
    b          .L00000394
    ld         $ra,16($sp)
.L000003b8:
    sd         $s7,32($sp)
    sd         $ra,16($sp)
    dsrl       $s3,$a6,0xc
    sd         $v0,0($sp)
    b          .L00000308
    andi       $s3,$s3,0xf

glabel init_gthread_table
    ld         $at,-30712($gp)
    beqz       $at, .L000003e4
    daddiu     $sp,$sp,-16
.L000003dc:
    jr         $ra
    daddiu     $sp,$sp,16
.L000003e4:
    sd         $ra,0($sp)
    jal        kern_malloc
    li         $a0,128
    move       $a0,$v0
    bnez       $v0, .L00000410
    sd         $v0,-30712($gp)
    ld         $a1,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,48
    ld         $a0,-30712($gp)
.L00000410:
    jal        bzero
    li         $a1,128
    daddiu     $a1,$gp,-30696
    jal        spinlock_init
    daddiu     $a0,$gp,-30716
    sw         $zero,-30720($gp)
    b          .L000003dc
    ld         $ra,0($sp)

glabel gthread_create
    daddiu     $sp,$sp,-48
    sd         $a0,8($sp)
    sd         $ra,0($sp)
    sd         $s0,16($sp)
    jal        kern_malloc
    li         $a0,40
    move       $s0,$v0
    bnez       $v0, .L00000460
    ld         $ra,0($sp)
    move       $v0,$zero
    b          .L00000510
    ld         $s0,16($sp)
.L00000460:
    cache      0x14,0($sp)
    sd         $zero,24($v0)
    sd         $zero,16($v0)
    sw         $zero,8($v0)
    ld         $a0,8($sp)
    jal        gfx_group_find
    sd         $a0,0($v0)
    bnez       $v0, .L00000518
    nop
.L00000484:
    jal        gfxtable_writerlock
    daddiu     $a0,$gp,-30720
    cache      0x14,0($sp)
    move       $a1,$v0
    ld         $v0,8($sp)
    dsrl       $a3,$v0,0x8
    andi       $a3,$a3,0xff
    dsll       $a2,$a3,0x3
    dsrl       $a0,$v0,0x10
    dsubu      $a2,$a2,$a3
    dsll       $a2,$a2,0x2
    andi       $a0,$a0,0xff
    daddu      $a2,$a2,$a3
    xor        $a0,$a0,$a2
    dsll       $v1,$a0,0x3
    dsrl       $v0,$v0,0x18
    dsubu      $v1,$v1,$a0
    dsll       $v1,$v1,0x2
    andi       $v0,$v0,0xff
    daddu      $v1,$v1,$a0
    xor        $v0,$v0,$v1
    ld         $v1,-30712($gp)
    andi       $v0,$v0,0xf
    dsll       $v0,$v0,0x3
    daddu      $v1,$v1,$v0
    ld         $v1,0($v1)
    sd         $v1,32($s0)
    ld         $at,-30712($gp)
    daddu      $at,$at,$v0
    daddiu     $a0,$gp,-30720
    jal        gfxtable_writerunlock
    sd         $s0,0($at)
    move       $v0,$s0
    ld         $s0,16($sp)
    ld         $ra,0($sp)
.L00000510:
    jr         $ra
    daddiu     $sp,$sp,48
.L00000518:
    move       $a0,$s0
    jal        gthread_attach_group
    move       $a1,$v0
    b          .L00000484
    nop

glabel gthread_destroy
    daddiu     $sp,$sp,-48
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    move       $s0,$zero
    move       $s1,$a0
    jal        gfxtable_writerlock
    daddiu     $a0,$gp,-30720
    dsrl       $a2,$s1,0x8
    andi       $a2,$a2,0xff
    dsll       $a0,$a2,0x3
    dsrl       $v1,$s1,0x10
    dsubu      $a0,$a0,$a2
    dsll       $a0,$a0,0x2
    andi       $v1,$v1,0xff
    daddu      $a0,$a0,$a2
    xor        $v1,$v1,$a0
    move       $a1,$v0
    dsll       $v0,$v1,0x3
    dsrl       $at,$s1,0x18
    dsubu      $v0,$v0,$v1
    dsll       $v0,$v0,0x2
    andi       $at,$at,0xff
    daddu      $v0,$v0,$v1
    xor        $at,$at,$v0
    ld         $a4,-30712($gp)
    andi       $at,$at,0xf
    dsll       $at,$at,0x3
    daddu      $a4,$a4,$at
    ld         $a0,0($a4)
    ld         $at,0($a4)
    beqz       $at, .L000005d8
    nop
    ld         $a3,0($a0)
    beq        $a3, $s1, .L000005d8
    nop
.L000005bc:
    daddiu     $a4,$a0,32
    ld         $a0,0($a4)
    beqz       $a0, .L000005f0
    nop
    ld         $at,0($a0)
    bne        $at, $s1, .L000005bc
    nop
.L000005d8:
    beqz       $a0, .L000005f0
    nop
    cache      0x14,0($sp)
    ld         $v1,32($a0)
    move       $s0,$a0
    sd         $v1,0($a4)
.L000005f0:
    jal        gfxtable_writerunlock
    daddiu     $a0,$gp,-30720
    ld         $ra,0($sp)
    bnez       $s0, .L00000610
    ld         $s1,16($sp)
.L00000604:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000610:
    jal        kern_free
    move       $a0,$s0
    b          .L00000604
    ld         $ra,0($sp)

glabel gthread_attach_list
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    beqz       $a1, .L00000658
    move       $s0,$a1
    cache      0x14,0($sp)
    lw         $at,0($s0)
    addiu      $at,$at,1
    sw         $at,0($s0)
.L00000640:
    cache      0x14,0($sp)
    sd         $s0,16($a0)
    li         $v0,1
    ld         $s0,8($sp)
.L00000650:
    jr         $ra
    daddiu     $sp,$sp,48
.L00000658:
    sd         $a0,16($sp)
    sd         $ra,24($sp)
    jal        kern_malloc
    li         $a0,32
    sd         $v0,0($sp)
    move       $s0,$v0
    bnez       $v0, .L00000684
    ld         $ra,24($sp)
    move       $v0,$zero
    b          .L00000650
    ld         $s0,8($sp)
.L00000684:
    cache      0x14,0($sp)
    ld         $a4,0($sp)
    li         $a3,-1
    daddiu     $a2,$gp,-30680
    sw         $zero,4($a4)
    move       $a1,$zero
    li         $v1,1
    sd         $zero,24($a4)
    daddiu     $a0,$a4,8
    jal        init_sv
    sw         $v1,0($a4)
    ld         $a0,0($sp)
    daddiu     $a1,$gp,-30672
    jal        spinlock_init
    daddiu     $a0,$a0,16
    ld         $a0,16($sp)
    b          .L00000640
    ld         $ra,24($sp)

glabel gthread_detach_list
    cache      0x14,0($sp)
    ld         $v0,16($a0)
    sd         $zero,16($a0)
    lw         $at,0($v0)
    daddiu     $sp,$sp,-32
    addiu      $at,$at,-1
    sd         $v0,0($sp)
    beqz       $at, .L000006fc
    sw         $at,0($v0)
.L000006f0:
    li         $v0,1
    jr         $ra
    daddiu     $sp,$sp,32
.L000006fc:
    ld         $a0,0($sp)
    sd         $ra,8($sp)
    jal        spinlock_destroy
    daddiu     $a0,$a0,16
    ld         $a0,0($sp)
    jal        sv_destroy
    daddiu     $a0,$a0,8
    jal        kern_free
    ld         $a0,0($sp)
    b          .L000006f0
    ld         $ra,8($sp)

glabel gthread_attach_group
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    move       $s8,$a0
    jal        splhi
    move       $s0,$a1
    cache      0x14,0($sp)
    lw         $at,8($s0)
    move       $a0,$v0
    addiu      $at,$at,1
    jal        splx
    sw         $at,8($s0)
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    sd         $s0,24($s8)
    li         $v0,1
    ld         $s0,16($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel gthread_detach_group
    ld         $v0,24($a0)
    bnez       $v0, .L00000790
    daddiu     $sp,$sp,-32
    b          .L000007c8
    move       $v0,$zero
.L00000790:
    cache      0x14,0($sp)
    sd         $v0,0($sp)
    sd         $ra,8($sp)
    jal        splhi
    sd         $zero,24($a0)
    cache      0x14,0($sp)
    move       $a0,$v0
    ld         $v0,0($sp)
    lw         $at,8($v0)
    addiu      $at,$at,-1
    jal        splx
    sw         $at,8($v0)
    li         $v0,1
    ld         $ra,8($sp)
.L000007c8:
    jr         $ra
    daddiu     $sp,$sp,32

glabel gthread_find
    daddiu     $sp,$sp,-48
    sd         $s7,0($sp)
    sd         $ra,8($sp)
    move       $s7,$a0
    sd         $s5,16($sp)
    jal        gfxtable_readerlock
    daddiu     $a0,$gp,-30720
    dsrl       $a2,$s7,0x8
    andi       $a2,$a2,0xff
    dsll       $v1,$a2,0x3
    dsrl       $a1,$s7,0x10
    dsubu      $v1,$v1,$a2
    dsll       $v1,$v1,0x2
    andi       $a1,$a1,0xff
    daddu      $v1,$v1,$a2
    xor        $v1,$v1,$a1
    dsll       $s5,$v1,0x3
    dsrl       $at,$s7,0x18
    dsubu      $s5,$s5,$v1
    dsll       $s5,$s5,0x2
    andi       $at,$at,0xff
    daddu      $s5,$s5,$v1
    xor        $s5,$s5,$at
    ld         $at,-30712($gp)
    andi       $s5,$s5,0xf
    dsll       $s5,$s5,0x3
    daddu      $s5,$s5,$at
    ld         $s5,0($s5)
    beqz       $s5, .L0000086c
    nop
    ld         $at,0($s5)
    beq        $at, $s7, .L0000086c
    nop
.L00000854:
    ld         $s5,32($s5)
    beqz       $s5, .L0000086c
    nop
    ld         $v1,0($s5)
    bne        $v1, $s7, .L00000854
    nop
.L0000086c:
    daddiu     $a0,$gp,-30720
    jal        gfxtable_readerunlock
    ld         $s7,0($sp)
    ld         $ra,8($sp)
    move       $v0,$s5
    ld         $s5,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel gthread_find_gfxp
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        gthread_find
    nop
    beqz       $v0, .L000008bc
    ld         $ra,0($sp)
    ld         $a2,16($v0)
    beqz       $a2, .L000008bc
    nop
    ld         $v0,24($a2)
.L000008b4:
    jr         $ra
    daddiu     $sp,$sp,32
.L000008bc:
    b          .L000008b4
    move       $v0,$zero

glabel gthread_scan
    daddiu     $sp,$sp,-64
    move       $at,$a0
    sd         $a0,16($sp)
    move       $a2,$zero
    sd         $ra,0($sp)
    sd         $a1,24($sp)
    jalr       $at
    move       $a0,$zero
    beqz       $v0, .L000008f8
    ld         $ra,0($sp)
    move       $v0,$zero
.L000008f0:
    jr         $ra
    daddiu     $sp,$sp,64
.L000008f8:
    sd         $s1,32($sp)
    jal        gfxtable_readerlock
    daddiu     $a0,$gp,-30720
    sd         $s0,40($sp)
    b          .L0000091c
    move       $s1,$zero
.L00000910:
    slti       $v1,$s1,16
    beqz       $v1, .L0000097c
    nop
.L0000091c:
    ld         $at,-30712($gp)
    dsll       $s0,$s1,0x3
    daddu      $s0,$s0,$at
    ld         $s0,0($s0)
    beqz       $s0, .L00000910
    addiu      $s1,$s1,1
.L00000934:
    lw         $v1,8($s0)
    andi       $v1,$v1,0x4
    beqz       $v1, .L00000958
    nop
    ld         $s0,32($s0)
.L00000948:
    bnez       $s0, .L00000934
    nop
    b          .L00000910
    nop
.L00000958:
    ld         $a3,16($sp)
    move       $a0,$s0
    ld         $a1,24($sp)
    jalr       $a3
    li         $a2,1
    bnez       $v0, .L000009a8
    sd         $v0,8($sp)
    b          .L00000948
    ld         $s0,32($s0)
.L0000097c:
    jal        gfxtable_readerunlock
    daddiu     $a0,$gp,-30720
    ld         $a4,16($sp)
    ld         $a1,24($sp)
    move       $a0,$zero
    ld         $s1,32($sp)
    li         $a2,2
    jalr       $a4
    ld         $s0,40($sp)
    b          .L000008f0
    ld         $ra,0($sp)
.L000009a8:
    jal        gfxtable_readerunlock
    daddiu     $a0,$gp,-30720
    ld         $v0,8($sp)
    ld         $ra,0($sp)
    ld         $s1,32($sp)
    b          .L000008f0
    ld         $s0,40($sp)

glabel GfxRegisterBoard
    lw         $v0,0($gp)
    daddiu     $sp,$sp,-64
    lw         $at,-30716($gp)
    sd         $ra,24($sp)
    sd         $a0,0($sp)
    slt        $at,$at,$v0
    sd         $a1,16($sp)
    bnez       $at, .L00000a04
    sd         $a2,8($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,96
    li         $v0,-1
    b          .L00000aac
    ld         $ra,24($sp)
.L00000a04:
    jal        kern_malloc
    li         $a0,72
    cache      0x14,0($sp)
    lw         $a2,-30716($gp)
    ld         $a3,-30664($gp)
    dsll       $a2,$a2,0x3
    move       $a0,$v0
    daddu      $a2,$a2,$a3
    li         $a1,72
    jal        bzero
    sd         $v0,0($a2)
    cache      0x14,0($sp)
    lw         $t3,-30716($gp)
    ld         $a6,-30664($gp)
    dsll       $t3,$t3,0x3
    daddu      $t3,$t3,$a6
    ld         $t3,0($t3)
    ld         $t2,0($sp)
    sd         $t2,56($t3)
    lw         $t1,-30716($gp)
    dsll       $t1,$t1,0x3
    daddu      $t1,$t1,$a6
    ld         $t1,0($t1)
    ld         $a0,16($sp)
    sd         $a0,64($t1)
    lw         $t0,-30716($gp)
    dsll       $t0,$t0,0x3
    daddu      $t0,$t0,$a6
    ld         $t0,0($t0)
    ld         $a7,8($sp)
    sd         $a7,0($t0)
    lw         $a4,-30716($gp)
    dsll       $a5,$a4,0x3
    daddu      $a5,$a5,$a6
    ld         $a5,0($a5)
    sw         $a4,24($a5)
    lw         $a3,-30716($gp)
    addiu      $a3,$a3,1
    jal        RRM_Init
    sw         $a3,-30716($gp)
    move       $v0,$zero
    ld         $ra,24($sp)
.L00000aac:
    jr         $ra
    daddiu     $sp,$sp,64

glabel gfx_disp
    daddiu     $sp,$sp,-48
    sd         $s1,8($sp)
    sd         $ra,0($sp)
    jal        gthread_find
    sd         $s5,16($sp)
    move       $s1,$v0
    beqz       $v0, .L00000aec
    move       $s5,$v0
    ld         $a0,16($s1)
    beqz       $a0, .L00000aec
    nop
    sd         $s7,24($sp)
    b          .L00000af4
    ld         $v0,24($a0)
.L00000aec:
    sd         $s7,24($sp)
    move       $v0,$zero
.L00000af4:
    beqz       $v0, .L00000ba0
    move       $s7,$v0
    b          .L00000b48
    nop
.L00000b04:
    lw         $at,48($s7)
    andi       $at,$at,0x3
    bnez       $at, .L00000b84
    nop
    ld         $v1,72($s1)
    beq        $v1, $s7, .L00000b84
    nop
.L00000b20:
    ld         $v0,24($s5)
    beqz       $v0, .L00000b3c
    nop
    lw         $a1,48($s7)
    andi       $a1,$a1,0x8
    beqz       $a1, .L00000ba8
    nop
.L00000b3c:
    ld         $s7,16($s7)
    beqz       $s7, .L00000ba0
    nop
.L00000b48:
    ld         $s1,32($s7)
    beqz       $s1, .L00000b3c
    nop
    lw         $a2,104($s1)
    blez       $a2, .L00000b20
    nop
    ld         $v0,112($s1)
    beqz       $v0, .L00000b04
    nop
    jalr       $v0
    move       $a0,$s1
    bnez       $v0, .L00000b20
    nop
    b          .L00000b04
    nop
.L00000b84:
    move       $v0,$zero
.L00000b88:
    ld         $ra,0($sp)
    ld         $s1,8($sp)
    ld         $s5,16($sp)
    ld         $s7,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000ba0:
    b          .L00000b88
    li         $v0,1
.L00000ba8:
    ld         $at,72($s1)
    bne        $at, $s7, .L00000b3c
    nop
    lw         $v1,80($s1)
    bnez       $v1, .L00000b3c
    nop
    lw         $a1,8($s5)
    andi       $a1,$a1,0x4
    bnez       $a1, .L00000b3c
    nop
    lw         $a2,120($s1)
    bnez       $a2, .L00000b3c
    nop
    lw         $at,12($v0)
    beqz       $at, .L00000b3c
    nop
    jal        valusema
    daddiu     $a0,$s1,56
    bgez       $v0, .L00000b3c
    nop
    b          .L00000b88
    move       $v0,$zero

glabel gfx_fault
    daddiu     $sp,$sp,-80
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    sd         $a2,8($sp)
    jal        curthreadhandle
    move       $s0,$a1
    sd         $s1,24($sp)
    jal        gthread_find
    move       $a0,$v0
    move       $s1,$v0
    beqz       $v0, .L00000ca4
    ld         $ra,0($sp)
    ld         $at,24($s1)
    beqz       $at, .L00000c48
    lw         $v0,48($s0)
    andi       $v1,$v0,0x8
    beqz       $v1, .L00000cbc
    nop
.L00000c48:
    andi       $a3,$v0,0x1
    beqz       $a3, .L00000c64
    nop
    ld         $a4,24($s0)
    ld         $a4,112($a4)
    jalr       $a4
    move       $a0,$s0
.L00000c64:
    move       $a0,$s0
    jal        RRM_ValidFault
    ld         $a1,8($sp)
    ld         $at,24($s1)
    ld         $s1,24($sp)
    beqz       $at, .L00000c90
    ld         $ra,0($sp)
    lw         $v1,48($s0)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00000cd0
    ld         $s1,24($sp)
.L00000c90:
    bltz       $v0, .L00000cb4
    ld         $s0,16($sp)
    move       $v0,$zero
.L00000c9c:
    jr         $ra
    daddiu     $sp,$sp,80
.L00000ca4:
    ld         $s1,24($sp)
    li         $v0,1
    b          .L00000c9c
    ld         $s0,16($sp)
.L00000cb4:
    b          .L00000c9c
    li         $v0,1
.L00000cbc:
    li         $a1,25
    jal        psema
    daddiu     $a0,$s0,80
    b          .L00000c48
    lw         $v0,48($s0)
.L00000cd0:
    sd         $v0,32($sp)
    jal        vsema
    daddiu     $a0,$s0,80
    ld         $v0,32($sp)
    b          .L00000c90
    ld         $ra,0($sp)

glabel gfx_exit
    daddiu     $sp,$sp,-48
    sd         $ra,16($sp)
    jal        curthreadhandle
    nop
    sd         $s0,24($sp)
    jal        gthread_find
    move       $a0,$v0
    beqz       $v0, .L00000dd8
    move       $s0,$v0
    cache      0x14,0($sp)
    ld         $v1,24($s0)
    lw         $at,8($s0)
    ld         $a0,16($s0)
    move       $v0,$zero
    ori        $at,$at,0x4
    beqz       $v1, .L00000d70
    sw         $at,8($s0)
    beqz       $a0, .L00000e0c
    nop
    jal        GfxListReaderLock
    sd         $s1,32($sp)
    ld         $a0,16($s0)
    ld         $s1,24($a0)
    beqz       $s1, .L00000d5c
    nop
    lw         $v1,48($s1)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00000de4
    nop
.L00000d5c:
    ld         $s0,24($sp)
    jal        GfxListReaderUnlock
    ld         $s1,32($sp)
    b          .L00000dcc
    move       $v0,$zero
.L00000d70:
    beqz       $a0, .L00000e30
    ld         $s0,24($sp)
    sd         $s1,32($sp)
    ld         $v0,24($a0)
.L00000d80:
    beqz       $v0, .L00000dc4
    move       $s1,$v0
    b          .L00000da4
    nop
.L00000d90:
    jalr       $a3
    move       $a0,$s1
.L00000d98:
    ld         $s1,16($s1)
    beqz       $s1, .L00000dc4
    nop
.L00000da4:
    ld         $v0,24($s1)
    beqz       $v0, .L00000d98
    nop
    ld         $a3,56($v0)
    beqz       $a3, .L00000d98
    nop
    b          .L00000d90
    nop
.L00000dc4:
    move       $v0,$zero
    ld         $s1,32($sp)
.L00000dcc:
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000dd8:
    move       $v0,$zero
    b          .L00000dcc
    ld         $s0,24($sp)
.L00000de4:
    jal        splhi
    nop
    sd         $v0,8($sp)
    jal        threadgroup_refcnt
    ld         $a0,0($s0)
    li         $a1,1
    bne        $v0, $a1, .L00000e14
    nop
    b          .L00000e68
    nop
.L00000e0c:
    b          .L00000dcc
    ld         $s0,24($sp)
.L00000e14:
    ld         $a0,8($sp)
    jal        splx
    ld         $s1,32($sp)
    jal        GfxListReaderUnlock
    ld         $a0,16($s0)
    b          .L00000dc4
    ld         $s0,24($sp)
.L00000e30:
    sd         $s1,32($sp)
    b          .L00000d80
    move       $v0,$zero
.L00000e3c:
    cache      0x14,0($sp)
    ld         $a1,32($s1)
    sd         $zero,72($a1)
    ld         $a0,32($s1)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    ld         $a0,0($sp)
.L00000e5c:
    ld         $s1,16($s1)
    beqz       $s1, .L00000e14
    nop
.L00000e68:
    ld         $v0,32($s1)
    beqz       $v0, .L00000e5c
    nop
    ld         $a2,72($v0)
    bne        $a2, $s1, .L00000e5c
    nop
    jal        splhi
    nop
    ld         $a3,24($s1)
    ld         $a3,192($a3)
    beqz       $a3, .L00000e3c
    sd         $v0,0($sp)
    jalr       $a3
    move       $a0,$s1
    b          .L00000e3c
    nop

glabel gfx_shcheck
    daddiu     $sp,$sp,-96
    sd         $s0,40($sp)
    sd         $ra,16($sp)
    jal        gthread_find
    sd         $a0,32($sp)
    move       $s0,$v0
    beqz       $v0, .L00001060
    ld         $ra,16($sp)
    sd         $s1,48($sp)
    ld         $s1,16($v0)
    bnez       $s1, .L00001080
    nop
.L00000ed8:
    sd         $s4,64($sp)
    sd         $s2,56($sp)
    move       $s4,$zero
.L00000ee4:
    beqz       $s4, .L000010a4
    move       $s2,$s4
    lw         $at,48($s4)
    andi       $at,$at,0x8
    beqz       $at, .L000010ac
    nop
    li         $v0,1
.L00000f00:
    beqz       $v0, .L00000f94
    nop
    beqz       $s4, .L00000f94
    nop
    b          .L00000f44
    ld         $s4,64($sp)
.L00000f18:
    cache      0x14,0($sp)
    ld         $a1,32($s2)
    sd         $zero,72($a1)
    ld         $a0,32($s2)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    ld         $a0,8($sp)
.L00000f38:
    ld         $s2,16($s2)
    beqz       $s2, .L00000f90
    nop
.L00000f44:
    ld         $v0,32($s2)
    beqz       $v0, .L00000f38
    nop
    ld         $a2,72($v0)
    bne        $a2, $s2, .L00000f38
    nop
    lw         $at,80($v0)
    bnez       $at, .L00000f38
    nop
    jal        splhi
    nop
    ld         $a3,24($s2)
    ld         $a3,192($a3)
    beqz       $a3, .L00000f18
    sd         $v0,8($sp)
    jalr       $a3
    move       $a0,$s2
    b          .L00000f18
    nop
.L00000f90:
    ld         $ra,16($sp)
.L00000f94:
    ld         $s2,56($sp)
    bnez       $s1, .L0000106c
    ld         $s4,64($sp)
.L00000fa0:
    beqz       $s0, .L000010f4
    ld         $s1,48($sp)
    ld         $v0,16($s0)
    beqz       $v0, .L00000fe0
    nop
    ld         $a0,24($v0)
    beqz       $a0, .L00000fd0
    nop
    lw         $at,48($a0)
    andi       $at,$at,0x8
    beqz       $at, .L00001060
    nop
.L00000fd0:
    beqz       $v0, .L00000fe0
    nop
    b          .L00000fe4
    ld         $a0,24($v0)
.L00000fe0:
    move       $a0,$zero
.L00000fe4:
    beqz       $a0, .L0000102c
    move       $s2,$a0
    b          .L00001008
    nop
.L00000ff4:
    cache      0x14,0($sp)
    sd         $zero,40($s2)
    ld         $s2,16($s2)
    beqz       $s2, .L00001024
    nop
.L00001008:
    ld         $a0,40($s2)
    beqz       $a0, .L00000ff4
    nop
    jal        ddv_destroy_handle
    nop
    b          .L00000ff4
    nop
.L00001024:
    ld         $v0,16($s0)
    ld         $ra,16($sp)
.L0000102c:
    beqz       $v0, .L0000103c
    ld         $s2,56($sp)
    cache      0x14,0($sp)
    sd         $zero,24($v0)
.L0000103c:
    jal        gthread_detach_list
    move       $a0,$s0
    jal        gthread_detach_group
    move       $a0,$s0
    jal        cleargfxsched_thread
    ld         $a0,0($s0)
    jal        gthread_destroy
    ld         $a0,0($s0)
    ld         $ra,16($sp)
.L00001060:
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L0000106c:
    move       $a0,$s1
    jal        GfxListWriterUnlock
    lw         $a1,0($sp)
    b          .L00000fa0
    ld         $ra,16($sp)
.L00001080:
    jal        GfxListWriterLock
    move       $a0,$s1
    sd         $s4,64($sp)
    sw         $v0,0($sp)
    beqz       $s1, .L00000ed8
    ld         $ra,16($sp)
    sd         $s2,56($sp)
    b          .L00000ee4
    ld         $s4,24($s1)
.L000010a4:
    b          .L00000f00
    move       $v0,$zero
.L000010ac:
    lw         $v1,8($s0)
    andi       $v1,$v1,0x2
    beqz       $v1, .L00001108
    nop
.L000010bc:
    ld         $a0,24($s0)
    lw         $a0,12($a0)
    sltiu      $a0,$a0,1
    sd         $a0,24($sp)
    jal        gthread_detach_list
    move       $a0,$s0
    jal        gthread_detach_group
    move       $a0,$s0
    jal        cleargfxsched_thread
    ld         $a0,0($s0)
    ld         $v0,24($sp)
    move       $s0,$zero
    b          .L00000f00
    ld         $ra,16($sp)
.L000010f4:
    ld         $a0,32($sp)
    jal        gthread_destroy
    ld         $s0,40($sp)
    b          .L00001060
    ld         $ra,16($sp)
.L00001108:
    jal        splhi
    nop
    cache      0x14,0($sp)
    ld         $a2,24($s0)
    lw         $a1,12($a2)
    move       $a0,$v0
    addiu      $a1,$a1,-1
    jal        splx
    sw         $a1,12($a2)
    b          .L000010bc
    nop

glabel gfx_shdup
    daddiu     $sp,$sp,-48
    sd         $ra,16($sp)
    jal        gthread_find
    sd         $a1,8($sp)
    beqz       $v0, .L00001174
    move       $a4,$v0
    ld         $a5,16($v0)
    beqz       $a5, .L00001174
    nop
    ld         $v0,24($a5)
    beqz       $v0, .L00001174
    nop
    lw         $at,48($v0)
    andi       $at,$at,0x8
    beqz       $at, .L00001180
    sd         $a4,0($sp)
.L00001174:
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001180:
    jal        gthread_create
    ld         $a0,8($sp)
    beqz       $v0, .L00001174
    nop
    ld         $a1,0($sp)
    move       $a0,$v0
    jal        gthread_attach_list
    ld         $a1,16($a1)
    jal        setgfxsched_thread
    ld         $a0,8($sp)
    b          .L00001174
    nop

glabel GfxKiller
    daddiu     $sp,$sp,-64
    li         $at,2
    li         $v0,1
    sd         $s0,8($sp)
    sd         $a1,0($sp)
    beqz       $a2, .L00001284
    move       $s0,$a0
    beq        $a2, $at, .L00001284
    ld         $a0,0($sp)
    bne        $a2, $v0, .L00001284
    nop
    ld         $a0,16($a0)
    beqz       $a0, .L000012b8
    nop
    bne        $a0, $s0, .L000011fc
    ld         $a1,24($s0)
    ld         $a3,24($a0)
    beq        $a3, $a1, .L00001284
    nop
.L000011fc:
    beqz       $a1, .L00001220
    ld         $a0,16($s0)
    beqz       $a0, .L00001230
    nop
    sd         $ra,16($sp)
    jal        GfxListReaderLock
    nop
    ld         $a0,16($s0)
    ld         $ra,16($sp)
.L00001220:
    beqz       $a0, .L00001230
    nop
    b          .L00001234
    ld         $a1,24($a0)
.L00001230:
    move       $a1,$zero
.L00001234:
    beqz       $a1, .L0000125c
    move       $a0,$a1
    ld         $a1,0($sp)
    ld         $a1,8($a1)
.L00001244:
    ld         $a3,32($a0)
    beq        $a3, $a1, .L00001294
    nop
    ld         $a0,16($a0)
    bnez       $a0, .L00001244
    nop
.L0000125c:
    ld         $at,24($s0)
    beqz       $at, .L00001284
    nop
    ld         $a0,16($s0)
    beqz       $a0, .L00001284
    nop
    sd         $ra,16($sp)
    jal        GfxListReaderUnlock
    ld         $s0,8($sp)
    ld         $ra,16($sp)
.L00001284:
    move       $v0,$zero
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001294:
    sd         $ra,16($sp)
    jal        threadhandle_to_proc
    ld         $a0,0($s0)
    ld         $a1,0($sp)
    move       $a0,$v0
    jal        psignal
    lw         $a1,0($a1)
    b          .L0000125c
    ld         $ra,16($sp)
.L000012b8:
    b          .L000011fc
    ld         $a1,24($s0)

glabel gfxcleanup
    lw         $at,52($a0)
    beqz       $at, .L000012d4
    daddiu     $sp,$sp,-32
.L000012cc:
    jr         $ra
    daddiu     $sp,$sp,32
.L000012d4:
    sd         $ra,0($sp)
    jal        kern_free
    nop
    b          .L000012cc
    ld         $ra,0($sp)

glabel GfxOpen
    li         $at,2
    daddiu     $sp,$sp,-112
    sd         $a0,32($sp)
    sd         $a1,40($sp)
    beq        $a3, $at, .L0000130c
    li         $a0,19
.L00001300:
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,112
.L0000130c:
    sd         $ra,48($sp)
    jal        curthreadhandle
    nop
    jal        gthread_find_gfxp
    move       $a0,$v0
    move       $a0,$v0
    beqz       $v0, .L000013f0
    ld         $ra,48($sp)
    ld         $v1,16($v0)
    beqz       $v1, .L0000134c
    nop
    ld         $v0,16($a0)
.L0000133c:
    move       $a0,$v0
    ld         $v0,16($v0)
    bnez       $v0, .L0000133c
    nop
.L0000134c:
    ld         $a2,32($a0)
    bnez       $a2, .L00001360
    sd         $a0,24($sp)
    b          .L00001300
    li         $a0,19
.L00001360:
    li         $a4,9
    sw         $a4,0($sp)
    ld         $a3,24($sp)
    ld         $a3,32($a3)
    jal        curthreadhandle
    sd         $a3,8($sp)
    jal        gthread_find
    move       $a0,$v0
    ld         $a0,-30656($gp)
    daddiu     $a1,$sp,0
    jal        gthread_scan
    sd         $v0,16($sp)
    jal        streams_unlock
    nop
    ld         $at,24($sp)
    ld         $at,32($at)
    lw         $at,16($at)
    beqz       $at, .L000013c8
    nop
.L000013ac:
    jal        delay
    li         $a0,100
    ld         $v1,24($sp)
    ld         $v1,32($v1)
    lw         $v1,16($v1)
    bnez       $v1, .L000013ac
    nop
.L000013c8:
    jal        streams_lock
    nop
    ld         $v0,24($sp)
    ld         $v0,0($v0)
    ld         $a2,8($v0)
    li         $a0,1
    beqz       $a2, .L000013f8
    ld         $ra,48($sp)
    b          .L00001300
    nop
.L000013f0:
    b          .L00001300
    li         $a0,19
.L000013f8:
    cache      0x14,0($sp)
    ld         $a0,24($sp)
    sd         $a0,8($v0)
    ld         $v1,32($a0)
    jal        RRM_init_panes
    sd         $a0,0($v1)
    cache      0x14,0($sp)
    ld         $a2,24($sp)
    ld         $a6,0($a2)
    ld         $a3,32($sp)
    sd         $a3,32($a6)
    ld         $a5,0($a2)
    daddiu     $a4,$a3,144
    sd         $a4,40($a5)
    sd         $a2,184($a3)
    sd         $a2,40($a3)
    lw         $a1,52($a2)
    ld         $a0,40($sp)
    ori        $a1,$a1,0x1
    sw         $a1,52($a2)
    jal        getemajor
    lw         $a0,0($a0)
    ld         $a1,24($sp)
    ld         $a1,0($a1)
    move       $a0,$v0
    jal        makedevice
    lw         $a1,24($a1)
    cache      0x14,0($sp)
    ld         $a2,40($sp)
    ld         $ra,48($sp)
    move       $a0,$zero
    b          .L00001300
    sw         $v0,0($a2)

glabel GfxUnmanage
    ld         $v0,32($a0)
    ld         $at,72($v0)
    daddiu     $sp,$sp,-80
    sd         $s0,32($sp)
    sd         $ra,48($sp)
    bne        $at, $a0, .L0000156c
    move       $s0,$a0
.L00001498:
    ld         $v0,0($s0)
    beqz       $v0, .L000014c8
    nop
    cache      0x14,0($sp)
    sd         $zero,8($v0)
    ld         $a2,32($s0)
    sd         $zero,0($a2)
    ld         $a1,0($s0)
    sd         $zero,32($a1)
    ld         $v1,0($s0)
    sd         $ra,48($sp)
    sd         $zero,40($v1)
.L000014c8:
    li         $a4,9
    sw         $a4,0($sp)
    sd         $ra,48($sp)
    ld         $a3,32($s0)
    jal        curthreadhandle
    sd         $a3,8($sp)
    jal        gthread_find
    move       $a0,$v0
    ld         $a0,-30656($gp)
    daddiu     $a1,$sp,0
    jal        gthread_scan
    sd         $v0,16($sp)
    ld         $at,0($s0)
    lw         $at,24($at)
    ld         $v0,32($s0)
    ld         $ra,48($sp)
    beqz       $at, .L000015b4
    ld         $v0,72($v0)
    bne        $v0, $s0, .L00001560
    nop
    jal        splhi
    nop
    ld         $a3,24($s0)
    ld         $a3,192($a3)
    beqz       $a3, .L00001538
    sd         $v0,40($sp)
    jalr       $a3
    move       $a0,$s0
.L00001538:
    cache      0x14,0($sp)
    ld         $a1,32($s0)
    sd         $zero,72($a1)
    ld         $a0,32($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    ld         $s0,32($sp)
    jal        splx
    ld         $a0,40($sp)
    ld         $ra,48($sp)
.L00001560:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000156c:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $ra,32($s0)
    sd         $s0,72($ra)
    ld         $a2,32($s0)
    lw         $a2,104($a2)
    beqz       $a2, .L00001498
    ld         $ra,48($sp)
.L00001594:
    jal        us_delay
    li         $a0,2
    ld         $at,32($s0)
    lw         $at,104($at)
    bnez       $at, .L00001594
    nop
    b          .L00001498
    ld         $ra,48($sp)
.L000015b4:
    beq        $v0, $s0, .L00001600
    nop
.L000015bc:
    move       $a0,$zero
    jal        cn_init
    li         $a1,1
    ld         $v0,32($s0)
    ld         $v1,72($v0)
    bne        $v1, $s0, .L00001560
    ld         $ra,48($sp)
    cache      0x14,0($sp)
    sd         $zero,72($v0)
    ld         $a0,32($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    lw         $a0,24($sp)
    jal        splx
    ld         $s0,32($sp)
    b          .L00001560
    ld         $ra,48($sp)
.L00001600:
    jal        splhi
    nop
    ld         $a3,24($s0)
    ld         $a3,192($a3)
    beqz       $a3, .L000015bc
    sw         $v0,24($sp)
    jalr       $a3
    move       $a0,$s0
    b          .L000015bc
    nop

glabel GfxClose
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    ld         $s0,40($a0)
    ld         $at,32($s0)
    bnez       $at, .L00001658
    sd         $ra,8($sp)
    ld         $a0,0($s0)
    beqz       $a0, .L00001658
    sd         $ra,8($sp)
    ld         $v0,8($a0)
    beq        $v0, $s0, .L00001688
    sd         $ra,8($sp)
.L00001658:
    cache      0x14,0($sp)
    lw         $v1,52($s0)
    li         $a0,-2
    and        $v1,$v1,$a0
    sw         $v1,52($s0)
    jal        gfxcleanup
    move       $a0,$s0
    ld         $ra,8($sp)
    move       $v0,$zero
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001688:
    jal        GfxUnmanage
    move       $a0,$s0
    b          .L00001658
    nop

glabel GfxProto
    ld         $a7,24($a1)
    daddiu     $sp,$sp,-48
    move       $v0,$a0
    lui        $a3,0x5348
    lw         $a2,0($a7)
    lui        $v1,0x5348
    li         $at,102
    ori        $v1,$v1,0x4951
    ori        $a3,$a3,0x4d51
    ld         $a5,40($a0)
    beq        $a2, $at, .L00001714
    move       $a6,$a2
    beq        $a6, $v1, .L00001714
    nop
    bne        $a6, $a3, .L0000176c
    sd         $ra,16($sp)
    cache      0x14,0($sp)
    ld         $t1,0($a5)
    lh         $t0,4($a7)
    sh         $t0,48($t1)
    ld         $a6,0($a5)
    lh         $a5,6($a7)
    move       $a0,$v0
    lui        $a4,0x514d
    sh         $a5,50($a6)
    ori        $a4,$a4,0x4853
    jal        qreply
    sw         $a4,0($a7)
    move       $v0,$zero
    b          .L00001764
    ld         $ra,16($sp)
.L00001714:
    ld         $a6,24($a5)
    sd         $ra,16($sp)
    beqz       $a6, .L00001794
    sd         $v0,8($sp)
    lw         $a2,8($a7)
    ld         $t2,48($a6)
    sd         $a1,0($sp)
    lw         $a1,4($a7)
    jalr       $t2
    ld         $a0,32($a5)
    beqz       $v0, .L00001794
    ld         $a1,0($sp)
    cache      0x14,0($sp)
    ld         $t8,40($a1)
    ld         $a0,8($sp)
    li         $t3,138
    jal        qreply
    sb         $t3,30($t8)
    move       $v0,$zero
    ld         $ra,16($sp)
.L00001764:
    jr         $ra
    daddiu     $sp,$sp,48
.L0000176c:
    sd         $a1,0($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,128
    jal        freemsg
    ld         $a0,0($sp)
    move       $v0,$zero
    b          .L00001764
    ld         $ra,16($sp)
.L00001794:
    jal        freemsg
    move       $a0,$a1
    move       $v0,$zero
    b          .L00001764
    ld         $ra,16($sp)

glabel GfxWput
    ld         $a2,40($a1)
    lbu        $a2,30($a2)
    li         $a3,131
    li         $at,1
    li         $a4,134
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    beq        $a2, $at, .L00001834
    move       $v0,$a2
    beq        $v0, $a3, .L00001834
    nop
    beq        $v0, $a4, .L00001808
    ld         $a3,0($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    sd         $ra,8($sp)
    jal        cmn_err
    daddiu     $a1,$a1,184
.L000017f0:
    jal        freemsg
    ld         $a0,0($sp)
    ld         $ra,8($sp)
    move       $v0,$zero
.L00001800:
    jr         $ra
    daddiu     $sp,$sp,32
.L00001808:
    ld         $a3,24($a3)
    lbu        $a3,0($a3)
    dsll32     $a3,$a3,0x0
    dsrl32     $a3,$a3,0x0
    andi       $a3,$a3,0x2
    beqz       $a3, .L000017f0
    sd         $ra,8($sp)
    jal        flushq
    move       $a1,$zero
    b          .L000017f0
    nop
.L00001834:
    sd         $ra,8($sp)
    jal        GfxProto
    ld         $a1,0($sp)
    b          .L00001800
    ld         $ra,8($sp)

glabel sendMsg
    ld         $a3,0($a1)
    daddiu     $sp,$sp,-48
    ld         $a3,8($a3)
    sd         $s1,8($sp)
    sd         $s0,0($sp)
    move       $s1,$a0
    beqz       $a3, .L00001948
    move       $s0,$a1
    lw         $at,52($a3)
    andi       $at,$at,0x1
    beqz       $at, .L00001948
    nop
    cache      0x14,0($sp)
    lw         $a4,12($s0)
    sd         $s5,16($sp)
    dsll       $a3,$a4,0x2
    ld         $s5,32($s1)
    dsubu      $a3,$a3,$a4
    dsll       $a3,$a3,0x2
    daddu      $a3,$a3,$s5
    sd         $a3,32($s1)
    lw         $a2,12($s0)
    sd         $ra,24($sp)
    move       $a0,$s5
    sll        $a1,$a2,0x2
    subu       $a1,$a1,$a2
    jal        bzero
    sll        $a1,$a1,0x2
    cache      0x14,0($sp)
    ld         $a2,0($s0)
    lh         $a2,50($a2)
    sh         $a2,2($s5)
    lw         $a1,12($s0)
    sb         $a1,5($s5)
    lw         $a0,12($s0)
    li         $a1,-1
    addiu      $a0,$a0,-1
    beq        $a0, $a1, .L00001930
    nop
.L000018e4:
    cache      0x14,0($sp)
    dsll       $v0,$a0,0x2
    dsubu      $v0,$v0,$a0
    ld         $at,0($s0)
    dsll       $v0,$v0,0x2
    daddu      $v0,$v0,$s5
    lh         $at,48($at)
    sh         $at,0($v0)
    ld         $a2,0($s0)
    lh         $a2,50($a2)
    sb         $a2,4($v0)
    lbu        $v1,8($s0)
    dsll       $at,$a0,0x2
    sb         $v1,6($v0)
    addiu      $a0,$a0,-1
    daddu      $at,$at,$s0
    lw         $at,16($at)
    bne        $a0, $a1, .L000018e4
    sw         $at,8($v0)
.L00001930:
    ld         $a0,0($s0)
    ld         $s5,16($sp)
    move       $a1,$s1
    jal        putq
    ld         $a0,32($a0)
    ld         $ra,24($sp)
.L00001948:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel GfxDelayedMessage
    lw         $a2,12($a0)
    daddiu     $sp,$sp,-32
    li         $a1,3
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    move       $s0,$a0
    sll        $a0,$a2,0x2
    subu       $a0,$a0,$a2
    jal        allocb
    sll        $a0,$a0,0x2
    bnez       $v0, .L000019b8
    nop
    lw         $a1,12($s0)
    sll        $a0,$a1,0x2
    move       $a3,$s0
    subu       $a0,$a0,$a1
    ld         $a2,-30648($gp)
    li         $a1,3
    jal        bufcall
    sll        $a0,$a0,0x2
    beqz       $v0, .L000019e8
    nop
    b          .L000019d8
    li         $v0,1
.L000019b8:
    move       $a0,$v0
    jal        sendMsg
    move       $a1,$s0
.L000019c4:
    jal        wakeup
    move       $a0,$s0
    jal        kern_free
    move       $a0,$s0
    move       $v0,$zero
.L000019d8:
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000019e8:
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,240
    b          .L000019c4
    nop

glabel GfxSendMessage
    daddiu     $sp,$sp,-64
    sd         $s3,0($sp)
    li         $v0,1
    sd         $s0,8($sp)
    move       $s3,$a0
    beqz       $a0, .L00001b1c
    move       $s0,$a1
    beqz       $s0, .L00001b28
    sd         $ra,24($sp)
.L00001a24:
    lw         $t8,12($s3)
    sd         $s2,32($sp)
    sll        $s2,$t8,0x2
    li         $a1,3
    sd         $s1,16($sp)
    subu       $s2,$s2,$t8
    move       $s1,$zero
    sll        $s2,$s2,0x2
    jal        allocb
    move       $a0,$s2
    bnez       $v0, .L00001aec
    nop
    beqz       $s0, .L00001b4c
    nop
.L00001a5c:
    bnez       $s1, .L00001a84
    nop
    ld         $a1,-30704($gp)
    li         $a0,4
    ld         $s3,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,280
    li         $s2,1
    b          .L00001ac4
    ld         $ra,24($sp)
.L00001a84:
    move       $a0,$s3
    move       $a1,$s1
    jal        bcopy
    move       $a2,$s2
    lw         $a1,12($s3)
    sll        $a0,$a1,0x2
    move       $a3,$s1
    subu       $a0,$a0,$a1
    ld         $a2,-30648($gp)
    li         $a1,3
    jal        bufcall
    sll        $a0,$a0,0x2
    ld         $ra,24($sp)
    move       $s2,$zero
    beqz       $v0, .L00001b68
    ld         $s3,0($sp)
.L00001ac4:
    move       $a4,$s0
    beqz       $a4, .L00001b3c
    ld         $s0,8($sp)
.L00001ad0:
    bnez       $s1, .L00001b08
    nop
.L00001ad8:
    move       $v0,$s2
    ld         $s2,32($sp)
    ld         $s1,16($sp)
.L00001ae4:
    jr         $ra
    daddiu     $sp,$sp,64
.L00001aec:
    move       $a0,$v0
    jal        sendMsg
    move       $a1,$s3
    ld         $ra,24($sp)
    move       $s2,$zero
    b          .L00001ac4
    ld         $s3,0($sp)
.L00001b08:
    move       $a0,$s1
    jal        sleep
    li         $a1,25
    b          .L00001ad8
    ld         $ra,24($sp)
.L00001b1c:
    ld         $s0,8($sp)
    b          .L00001ae4
    ld         $s3,0($sp)
.L00001b28:
    jal        streams_lock
    nop
    sd         $s2,32($sp)
    b          .L00001a24
    sd         $s1,16($sp)
.L00001b3c:
    jal        streams_unlock
    ld         $s0,8($sp)
    b          .L00001ad0
    ld         $ra,24($sp)
.L00001b4c:
    lw         $s2,12($s3)
    sll        $s2,$s2,0x2
    addiu      $s2,$s2,52
    jal        kern_malloc
    move       $a0,$s2
    b          .L00001a5c
    move       $s1,$v0
.L00001b68:
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,240
    jal        kern_free
    move       $a0,$s1
    li         $s2,1
    b          .L00001ac4
    ld         $ra,24($sp)

glabel GfxMessage
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        GfxSendMessage
    move       $a1,$zero
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel GfxIntrMessage
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        GfxSendMessage
    li         $a1,1
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel GfxRqService
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    sd         $s1,16($sp)
    jal        getq
    move       $s0,$a0
    beqz       $v0, .L00001c18
    move       $s1,$v0
.L00001be4:
    jal        canput
    ld         $a0,24($s0)
    beqz       $v0, .L00001c30
    nop
    ld         $a0,24($s0)
    ld         $at,0($a0)
    ld         $at,0($at)
    jalr       $at
    move       $a1,$s1
    jal        getq
    move       $a0,$s0
    bnez       $v0, .L00001be4
    move       $s1,$v0
.L00001c18:
    ld         $ra,8($sp)
    ld         $s1,16($sp)
    move       $v0,$zero
    ld         $s0,0($sp)
.L00001c28:
    jr         $ra
    daddiu     $sp,$sp,48
.L00001c30:
    move       $a0,$s0
    jal        putbq
    move       $a1,$s1
    ld         $ra,8($sp)
    ld         $s1,16($sp)
    li         $v0,1
    b          .L00001c28
    ld         $s0,0($sp)

glabel GfxDetach
    ld         $at,24($a0)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    beqz       $at, .L00001cc8
    move       $s0,$a0
    ld         $a0,40($s0)
    beqz       $a0, .L00001c84
    sd         $ra,8($sp)
    jal        gfxdd_lookup
    nop
    beqz       $v0, .L00001d3c
    nop
.L00001c84:
    jal        RRM_Exit
    move       $a0,$s0
    ld         $v0,40($s0)
    bnez       $v0, .L00001cf4
    nop
.L00001c98:
    jal        streams_lock
    nop
    ld         $v1,0($s0)
    ld         $v1,8($v1)
    beq        $v1, $s0, .L00001d2c
    nop
.L00001cb0:
    jal        streams_unlock
    nop
    ld         $a3,0($s0)
    ld         $a1,16($a3)
    beq        $a1, $s0, .L00001d0c
    nop
.L00001cc8:
    jal        streams_lock
    nop
    cache      0x14,0($sp)
    sd         $zero,24($s0)
    sd         $zero,0($s0)
    jal        streams_unlock
    sd         $zero,32($s0)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001cf4:
    ld         $a2,24($s0)
    ld         $a2,16($a2)
    jalr       $a2
    move       $a0,$s0
    b          .L00001c98
    nop
.L00001d0c:
    ld         $a0,0($a3)
    li         $a1,16
    jal        bzero
    daddiu     $a0,$a0,16
    cache      0x14,0($sp)
    ld         $a1,0($s0)
    b          .L00001cc8
    sd         $zero,16($a1)
.L00001d2c:
    jal        GfxUnmanage
    move       $a0,$s0
    b          .L00001cb0
    nop
.L00001d3c:
    jal        ddv_destroy_handle
    ld         $a0,40($s0)
    cache      0x14,0($sp)
    b          .L00001c84
    sd         $zero,40($s0)

glabel gfxinit
    lw         $a2,0($gp)
    lui        $at,0x2
    slt        $at,$at,$a2
    bnez       $at, .L00001dec
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
.L00001d68:
    ld         $a2,-30704($gp)
    li         $a3,-1
    li         $a1,1
    ld         $a0,-30640($gp)
    jal        init_sema
    daddiu     $a2,$a2,448
    ld         $a2,-30704($gp)
    li         $a3,-1
    ld         $a0,-30640($gp)
    li         $a1,1
    daddiu     $a2,$a2,472
    jal        init_sema
    daddiu     $a0,$a0,16
    jal        processors_configured
    sd         $s0,0($sp)
    jal        init_gfx_group_table
    move       $s0,$v0
    jal        init_gthread_table
    nop
    move       $a0,$s0
    jal        kern_calloc
    li         $a1,32
    move       $a1,$v0
    li         $a4,32
    move       $a3,$s0
    li         $a2,32
    daddiu     $a0,$gp,-30632
    jal        ksym_add
    sd         $v0,-30696($gp)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001dec:
    lui        $a4,0x2
    ld         $a1,-30704($gp)
    li         $a0,4
    sd         $ra,8($sp)
    move       $a3,$a4
    jal        cmn_err
    daddiu     $a1,$a1,328
    lui        $a5,0x2
    b          .L00001d68
    sw         $a5,0($gp)

glabel gfx_conflict_scan
    li         $a5,1
    daddiu     $sp,$sp,-80
    beq        $a2, $a5, .L00001e30
    move       $v0,$a1
    move       $v0,$zero
.L00001e28:
    jr         $ra
    daddiu     $sp,$sp,80
.L00001e30:
    ld         $a1,24($a0)
    beqz       $a1, .L00001e4c
    nop
    ld         $v1,8($v0)
    ld         $at,0($a1)
    beq        $at, $v1, .L00001e54
    nop
.L00001e4c:
    b          .L00001e28
    move       $v0,$zero
.L00001e54:
    ld         $a1,16($a0)
    lw         $a2,0($v0)
    move       $a0,$zero
    beqz       $a1, .L00001f0c
    sd         $a2,0($sp)
    sd         $s1,40($sp)
    ld         $a0,24($a1)
.L00001e70:
    sd         $ra,32($sp)
    beqz       $a0, .L00001edc
    move       $s1,$a0
    sd         $ra,32($sp)
    sd         $v0,8($sp)
.L00001e84:
    li         $a1,25
    daddiu     $a0,$s1,80
    jal        psema
    sd         $a0,16($sp)
    lw         $a4,48($s1)
    li         $a6,8
    and        $a4,$a4,$a6
    li         $a3,2
    xor        $a4,$a4,$a6
    li         $a5,1
    sltiu      $a4,$a4,1
    ld         $a0,16($sp)
    movn       $a3,$a5,$a4
    jal        vsema
    sd         $a3,24($sp)
    ld         $v1,0($sp)
    ld         $at,24($sp)
    bne        $at, $v1, .L00001eec
    nop
    ld         $s1,16($s1)
    bnez       $s1, .L00001e84
    nop
.L00001edc:
    ld         $ra,32($sp)
    move       $v0,$zero
    b          .L00001e28
    ld         $s1,40($sp)
.L00001eec:
    cache      0x14,0($sp)
    ld         $ra,32($sp)
    ld         $a3,8($sp)
    li         $v0,1
    ld         $s1,40($sp)
    li         $a2,3
    b          .L00001e28
    sw         $a2,0($a3)
.L00001f0c:
    b          .L00001e70
    sd         $s1,40($sp)

glabel irisgl_sproc_setup_scan
    ld         $at,0($a1)
    daddiu     $sp,$sp,-64
    sd         $a0,24($sp)
    move       $v0,$zero
    bne        $at, $a0, .L00001f34
    sd         $a1,16($sp)
.L00001f2c:
    jr         $ra
    daddiu     $sp,$sp,64
.L00001f34:
    sd         $ra,32($sp)
    jal        gthread_create
    ld         $a0,24($sp)
    sd         $v0,8($sp)
    bnez       $v0, .L00001f54
    ld         $ra,32($sp)
    b          .L00001f2c
    move       $v0,$zero
.L00001f54:
    cache      0x14,0($sp)
    ld         $a2,8($sp)
    lw         $a1,8($a2)
    ld         $a0,16($sp)
    ori        $a1,$a1,0x2
    sw         $a1,8($a2)
    jal        GfxListWriterLock
    ld         $a0,16($a0)
    sd         $v0,0($sp)
    ld         $a1,16($sp)
    ld         $a0,8($sp)
    jal        gthread_attach_list
    ld         $a1,16($a1)
    ld         $a0,16($sp)
    ld         $a1,0($sp)
    jal        GfxListWriterUnlock
    ld         $a0,16($a0)
    jal        setgfxsched_thread
    ld         $a0,24($sp)
    move       $v0,$zero
    b          .L00001f2c
    ld         $ra,32($sp)

glabel gfxopen
    daddiu     $sp,$sp,-176
    sd         $s1,104($sp)
    sd         $s2,88($sp)
    sd         $s8,80($sp)
    sd         $ra,72($sp)
    sd         $s6,96($sp)
    jal        curthreadhandle
    move       $s8,$a0
    ld         $s1,-30640($gp)
    move       $s2,$v0
    move       $s6,$v0
    li         $a1,25
    daddiu     $s1,$s1,16
    jal        psema
    move       $a0,$s1
    lw         $a3,0($s8)
    lui        $v0,0x3
    ori        $v0,$v0,0xffff
    and        $a3,$v0,$a3
    slti       $at,$a3,2
    beqz       $at, .L00002374
    lw         $a0,0($gp)
    sd         $s0,128($sp)
    sd         $s5,120($sp)
    blez       $a0, .L00002390
    move       $s0,$zero
    ld         $s5,-30624($gp)
.L00002018:
    dsll       $v1,$s0,0x3
    daddu      $v1,$v1,$s5
    ld         $v1,0($v1)
    beqz       $v1, .L0000203c
    nop
    addiu      $s0,$s0,1
    slt        $a1,$s0,$a0
    bnez       $a1, .L00002018
    nop
.L0000203c:
    slt        $a2,$s0,$a0
    beqz       $a2, .L00002334
    nop
    sd         $s3,144($sp)
    li         $s3,1
    move       $a0,$s2
    xor        $s3,$s3,$a3
    sd         $s4,112($sp)
    jal        gthread_find
    sltiu      $s3,$s3,1
    move       $s2,$v0
    beqz       $v0, .L000020b0
    move       $s4,$v0
    lw         $at,8($s2)
    andi       $at,$at,0x4
    beqz       $at, .L000020b0
    nop
    ld         $v0,16($s2)
    beqz       $v0, .L00002094
    nop
    cache      0x14,0($sp)
    sd         $zero,24($v0)
.L00002094:
    jal        gthread_detach_list
    move       $a0,$s2
    jal        gthread_detach_group
    move       $a0,$s2
    jal        gthread_destroy
    ld         $a0,0($s2)
    move       $s4,$zero
.L000020b0:
    bnez       $s4, .L000020c8
    ld         $s2,88($sp)
    jal        gthread_create
    move       $a0,$s6
    beqz       $v0, .L00002398
    move       $s4,$v0
.L000020c8:
    jal        gfx_group_find
    move       $a0,$s6
    sd         $s7,136($sp)
    sd         $s1,64($sp)
    sd         $v0,48($sp)
    jal        gthread_find_gfxp
    move       $a0,$s6
    move       $s2,$v0
    move       $s1,$v0
    beqz       $v0, .L00002120
    move       $s7,$v0
    li         $a3,8
.L000020f8:
    lw         $v1,48($s1)
    and        $v1,$v1,$a3
    xor        $v1,$v1,$a3
    sltiu      $v1,$v1,1
    xor        $v1,$v1,$s3
    bnez       $v1, .L000022f4
    nop
    ld         $s1,16($s1)
    bnez       $s1, .L000020f8
    nop
.L00002120:
    beqz       $s4, .L00002368
    nop
    ld         $a1,24($s4)
    sltu       $a2,$zero,$s3
    sd         $a2,56($sp)
    bnez       $a1, .L000023c0
    ld         $s1,104($sp)
.L0000213c:
    bnez       $s2, .L00002158
    nop
    li         $a0,104
    jal        kern_malloc
    ld         $s2,88($sp)
    b          .L00002168
    move       $s1,$v0
.L00002158:
    li         $a0,104
    jal        kern_malloc
    ld         $s2,88($sp)
    move       $s1,$v0
.L00002168:
    cache      0x14,0($sp)
    dsll       $a3,$s0,0x3
    li         $a1,104
    daddu      $a3,$a3,$s5
    move       $a0,$s1
    jal        bzero
    sd         $s1,0($a3)
    cache      0x14,0($sp)
    move       $at,$s3
    ld         $s3,144($sp)
    sd         $s6,8($s1)
    ld         $s5,120($sp)
    ld         $v1,24($s4)
    sd         $zero,24($s1)
    sd         $zero,32($s1)
    beqz       $at, .L000021d8
    sd         $v1,96($s1)
    cache      0x14,0($sp)
    lw         $s3,48($s1)
    ori        $s3,$s3,0x8
    sw         $s3,48($s1)
    lui        $a2,0x3
    lw         $a1,0($s8)
    ori        $a2,$a2,0xffff
    ld         $s3,144($sp)
    and        $a2,$a2,$a1
    subu       $a1,$a1,$a2
    sw         $a1,0($s8)
.L000021d8:
    li         $a3,-1
    daddiu     $a2,$gp,-30608
    li         $a1,1
    jal        init_sema
    daddiu     $a0,$s1,80
    cache      0x14,0($sp)
    li         $v0,1
    bnez       $s7, .L00002244
    sw         $v0,56($s1)
    ld         $at,48($sp)
    beqz       $at, .L00002218
    ld         $s7,136($sp)
    lw         $v1,48($s1)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00002438
    nop
.L00002218:
    move       $a0,$s4
    jal        gthread_attach_list
    move       $a1,$zero
    cache      0x14,0($sp)
    ld         $a1,16($s4)
    ld         $s4,112($sp)
    sd         $s1,24($a1)
.L00002234:
    jal        setgfxsched_thread
    move       $a0,$s6
    b          .L000022a0
    ld         $s6,96($sp)
.L00002244:
    ld         $a2,48($sp)
    beqz       $a2, .L00002260
    ld         $s6,96($sp)
    lw         $at,48($s1)
    andi       $at,$at,0x8
    beqz       $at, .L000024b0
    nop
.L00002260:
    ld         $v0,16($s7)
    beqz       $v0, .L0000227c
    nop
.L0000226c:
    move       $s7,$v0
    ld         $v0,16($v0)
    bnez       $v0, .L0000226c
    nop
.L0000227c:
    cache      0x14,0($sp)
    ld         $v1,48($sp)
    sd         $s1,16($s7)
    beqz       $v1, .L000022a0
    ld         $s7,136($sp)
    lw         $a1,48($s1)
    andi       $a1,$a1,0x8
    beqz       $a1, .L0000249c
    ld         $s7,136($sp)
.L000022a0:
    ld         $a0,64($sp)
    jal        vsema
    ld         $s4,112($sp)
    cache      0x14,0($sp)
    lw         $v0,52($s1)
    ld         $at,56($sp)
    ori        $v0,$v0,0x2
    sw         $v0,52($s1)
    lui        $s1,0x2
    movz       $s1,$zero,$at
    lw         $a2,0($s8)
    or         $s0,$s1,$s0
    ld         $s1,104($sp)
    or         $a2,$a2,$s0
    sw         $a2,0($s8)
    move       $v0,$zero
    ld         $s0,128($sp)
.L000022e4:
    ld         $ra,72($sp)
    ld         $s8,80($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L000022f4:
    jal        vsema
    ld         $a0,64($sp)
    ld         $s2,88($sp)
    ld         $s6,96($sp)
    ld         $s1,104($sp)
    ld         $s4,112($sp)
    ld         $s5,120($sp)
    ld         $s0,128($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    ld         $s7,136($sp)
    ld         $s3,144($sp)
    jal        cmn_err
    daddiu     $a1,$a1,520
    b          .L000022e4
    li         $v0,19
.L00002334:
    ld         $s2,88($sp)
    ld         $s6,96($sp)
    ld         $s5,120($sp)
    move       $a0,$s1
    jal        vsema
    ld         $s0,128($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    ld         $s1,104($sp)
    jal        cmn_err
    daddiu     $a1,$a1,488
    b          .L000022e4
    li         $v0,19
.L00002368:
    sltu       $a2,$zero,$s3
    b          .L0000213c
    sd         $a2,56($sp)
.L00002374:
    ld         $s2,88($sp)
    move       $a0,$s1
    jal        vsema
    ld         $s6,96($sp)
    li         $v0,6
    b          .L000022e4
    ld         $s1,104($sp)
.L00002390:
    b          .L0000203c
    ld         $s5,-30624($gp)
.L00002398:
    ld         $s6,96($sp)
    ld         $s4,112($sp)
    ld         $s5,120($sp)
    ld         $s0,128($sp)
    move       $a0,$s1
    jal        vsema
    ld         $s3,144($sp)
    li         $v0,12
    b          .L000022e4
    ld         $s1,104($sp)
.L000023c0:
    ld         $a5,56($sp)
    li         $a4,2
    li         $a6,1
    movn       $a4,$a6,$a5
    sw         $a4,0($sp)
    ld         $a3,24($s4)
    ld         $a0,-30616($gp)
    ld         $a3,0($a3)
    daddiu     $a1,$sp,0
    jal        gthread_scan
    sd         $a3,8($sp)
    lw         $at,0($sp)
    li         $v1,3
    bne        $at, $v1, .L0000213c
    nop
    ld         $a0,64($sp)
    ld         $s2,88($sp)
    ld         $s6,96($sp)
    ld         $s4,112($sp)
    ld         $s5,120($sp)
    ld         $s0,128($sp)
    ld         $s7,136($sp)
    jal        vsema
    ld         $s3,144($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,616
    b          .L000022e4
    li         $v0,19
.L00002438:
    move       $a0,$s4
    jal        gthread_attach_list
    move       $a1,$zero
    jal        GfxListWriterLock
    ld         $a0,16($s4)
    cache      0x14,0($sp)
    ld         $a4,16($s4)
    ld         $a3,48($sp)
    sd         $s1,24($a4)
    li         $a2,1
    sw         $a2,12($a3)
    move       $a1,$v0
    jal        GfxListWriterUnlock
    ld         $a0,16($s4)
    ld         $a7,0($s4)
    ld         $a6,48($sp)
    sd         $a6,24($sp)
    sd         $a7,16($sp)
    ld         $a0,-30600($gp)
    ld         $a5,16($s4)
    daddiu     $a1,$sp,16
    jal        curthreadgroup_scan
    sd         $a5,32($sp)
    b          .L00002234
    ld         $s4,112($sp)
.L0000249c:
    lw         $a1,40($sp)
    jal        GfxListWriterUnlock
    ld         $a0,16($s4)
    b          .L000022a0
    nop
.L000024b0:
    jal        GfxListWriterLock
    ld         $a0,16($s4)
    b          .L00002260
    sw         $v0,40($sp)

glabel irisgl_sproc_cleanup
    li         $at,1
    daddiu     $sp,$sp,-48
    beq        $a2, $at, .L000024d8
    move       $v0,$a0
    b          .L00002524
    move       $v0,$zero
.L000024d8:
    ld         $v1,24($v0)
    bne        $v1, $a1, .L00002520
    sd         $v0,0($sp)
    ld         $a0,0($sp)
    sd         $ra,8($sp)
    jal        cleargfxsched_thread
    ld         $a0,0($a0)
    jal        gthread_detach_list
    ld         $a0,0($sp)
    jal        gthread_detach_group
    ld         $a0,0($sp)
    cache      0x14,0($sp)
    ld         $a3,0($sp)
    lw         $a2,8($a3)
    li         $ra,-3
    and        $a2,$a2,$ra
    sw         $a2,8($a3)
    ld         $ra,8($sp)
.L00002520:
    move       $v0,$zero
.L00002524:
    jr         $ra
    daddiu     $sp,$sp,48

glabel gfxclose
    daddiu     $sp,$sp,-176
    sd         $s0,112($sp)
    sd         $s1,96($sp)
    sd         $s5,136($sp)
    lui        $s5,0x2
    sd         $s2,120($sp)
    sd         $ra,56($sp)
    move       $s1,$a0
    lui        $s2,0x3
    sd         $s4,128($sp)
    jal        curthreadhandle
    ori        $s2,$s2,0xffff
    move       $s0,$v0
    and        $s2,$s1,$s2
    move       $a0,$v0
    and        $s4,$s5,$s2
    move       $a1,$zero
    move       $a2,$zero
    ld         $s1,-30640($gp)
    beq        $s4, $s5, .L000025a8
    move       $a5,$zero
    sd         $a2,80($sp)
    sd         $a1,72($sp)
    ld         $s1,-30640($gp)
    sd         $a0,64($sp)
    li         $a1,25
    sd         $a5,88($sp)
    jal        psema
    daddiu     $a0,$s1,16
    b          .L000025b8
    nop
.L000025a8:
    sd         $a0,64($sp)
    sd         $a1,72($sp)
    sd         $a2,80($sp)
    sd         $a5,88($sp)
.L000025b8:
    jal        gthread_find
    move       $a0,$s0
    lui        $a1,0x1
    lw         $at,0($gp)
    ori        $a1,$a1,0xffff
    and        $a1,$s2,$a1
    ld         $s0,112($sp)
    slt        $at,$a1,$at
    move       $s1,$v0
    ld         $ra,56($sp)
    move       $a4,$s5
    bnez       $at, .L00002628
    ld         $s2,-30624($gp)
    ld         $s5,136($sp)
    move       $a3,$s4
    ld         $s4,128($sp)
    ld         $s1,96($sp)
    beq        $a3, $a4, .L0000261c
    ld         $s2,120($sp)
    ld         $a0,-30640($gp)
    ld         $s5,136($sp)
    ld         $s4,128($sp)
    jal        vsema
    daddiu     $a0,$a0,16
    ld         $ra,56($sp)
.L0000261c:
    li         $v0,6
.L00002620:
    jr         $ra
    daddiu     $sp,$sp,176
.L00002628:
    dsll       $s0,$a1,0x3
    daddu      $s0,$s0,$s2
    sd         $s0,104($sp)
    ld         $s0,0($s0)
    ld         $at,64($sp)
    beqz       $s0, .L00002950
    move       $s2,$s0
    beqz       $s1, .L00002660
    nop
    ld         $v0,16($s1)
    beqz       $v0, .L00002660
    sd         $s3,144($sp)
    b          .L00002668
    ld         $s3,24($v0)
.L00002660:
    sd         $s3,144($sp)
    move       $s3,$zero
.L00002668:
    ld         $v0,8($s0)
    beq        $v0, $at, .L00002688
    ld         $s0,112($sp)
    beq        $s4, $s5, .L00002990
    ld         $s0,112($sp)
    ld         $v1,24($s1)
    beqz       $v1, .L00002990
    nop
.L00002688:
    bnez       $s1, .L00002728
    nop
.L00002690:
    ld         $a0,64($sp)
    jal        gthread_create
    ld         $s3,144($sp)
    move       $s0,$v0
    move       $s1,$v0
    bnez       $v0, .L000026ec
    ld         $ra,56($sp)
    move       $a4,$s5
    ld         $s5,136($sp)
    move       $a3,$s4
    ld         $s4,128($sp)
    ld         $s0,112($sp)
    ld         $s1,96($sp)
    beq        $a3, $a4, .L000026e4
    ld         $s2,120($sp)
    ld         $a0,-30640($gp)
    ld         $s5,136($sp)
    ld         $s4,128($sp)
    jal        vsema
    daddiu     $a0,$a0,16
    ld         $ra,56($sp)
.L000026e4:
    b          .L00002620
    li         $v0,12
.L000026ec:
    cache      0x14,0($sp)
    sd         $zero,16($s2)
    ld         $a1,64($sp)
    move       $a0,$s0
    sd         $a1,8($s2)
    sw         $zero,56($s2)
    jal        gthread_attach_list
    move       $a1,$zero
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    ld         $a0,64($sp)
    move       $s3,$s2
    jal        setgfxsched_thread
    sd         $s2,24($a2)
    ld         $s0,112($sp)
.L00002728:
    jal        GfxDetach
    move       $a0,$s2
    ld         $a3,24($s1)
    beqz       $a3, .L00002758
    nop
    ld         $s0,16($s1)
    sd         $s0,72($sp)
    beqz       $s0, .L00002758
    move       $a4,$s0
    jal        GfxListWriterLock
    move       $a0,$s0
    sw         $v0,0($sp)
.L00002758:
    bne        $s2, $s3, .L00002864
    ld         $s0,112($sp)
    cache      0x14,0($sp)
    ld         $v1,16($s1)
    ld         $at,16($s2)
    sd         $at,24($v1)
.L00002770:
    ld         $a2,24($s1)
    beqz       $a2, .L0000278c
    ld         $s3,144($sp)
    lw         $a3,48($s2)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00002a2c
    nop
.L0000278c:
    ld         $a4,72($sp)
    bnez       $a4, .L00002888
    nop
.L00002798:
    jal        freesema
    daddiu     $a0,$s2,80
    ld         $v0,16($s1)
    beqz       $v0, .L000027b8
    nop
    ld         $at,24($v0)
    beqz       $at, .L00002a7c
    nop
.L000027b8:
    ld         $v1,80($sp)
    bnez       $v1, .L0000289c
    nop
.L000027c4:
    ld         $a3,16($s1)
    beqz       $a3, .L00002a1c
    nop
.L000027d0:
    jal        streams_lock
    ld         $s1,96($sp)
    cache      0x14,0($sp)
    lw         $a4,52($s2)
    move       $a0,$s2
    li         $a5,-3
    and        $a4,$a4,$a5
    jal        gfxcleanup
    sw         $a4,52($s2)
    jal        streams_unlock
    ld         $s2,120($sp)
    cache      0x14,0($sp)
    move       $v1,$s5
    ld         $s5,136($sp)
    move       $at,$s4
    ld         $s4,128($sp)
    ld         $a3,104($sp)
    ld         $ra,56($sp)
    beq        $at, $v1, .L00002838
    sd         $zero,0($a3)
    ld         $a0,-30640($gp)
    ld         $s5,136($sp)
    ld         $s4,128($sp)
    jal        vsema
    daddiu     $a0,$a0,16
    ld         $ra,56($sp)
.L00002838:
    ld         $a3,88($sp)
    beqz       $a3, .L0000285c
    nop
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,6
    ld         $ra,56($sp)
.L0000285c:
    b          .L00002620
    move       $v0,$zero
.L00002864:
    beqz       $s3, .L00002770
    nop
.L0000286c:
    ld         $v0,16($s3)
    beq        $v0, $s2, .L00002940
    nop
    bnez       $v0, .L0000286c
    move       $s3,$v0
    b          .L00002770
    nop
.L00002888:
    ld         $a0,72($sp)
    jal        GfxListWriterUnlock
    lw         $a1,0($sp)
    b          .L00002798
    nop
.L0000289c:
    jal        splhi
    nop
    sd         $v0,48($sp)
    jal        gthread_find
    ld         $a0,80($sp)
    ld         $a4,88($sp)
    move       $s0,$v0
    beqz       $a4, .L000028d8
    move       $a0,$v0
    beqz       $s0, .L0000292c
    nop
    lw         $at,8($s0)
    andi       $at,$at,0x4
    beqz       $at, .L00002ad8
    sd         $a0,40($sp)
.L000028d8:
    beqz       $s0, .L0000292c
    nop
    lw         $v1,8($s0)
    andi       $v1,$v1,0x4
    beqz       $v1, .L0000292c
    nop
    jal        splx
    ld         $a0,48($sp)
    ld         $a0,16($s0)
    beqz       $a0, .L0000290c
    nop
    cache      0x14,0($sp)
    sd         $zero,24($a0)
.L0000290c:
    jal        gthread_detach_list
    move       $a0,$s0
    jal        gthread_detach_group
    move       $a0,$s0
    jal        gthread_destroy
    ld         $a0,0($s0)
    b          .L00002938
    ld         $s0,112($sp)
.L0000292c:
    ld         $a0,48($sp)
    jal        splx
    ld         $s0,112($sp)
.L00002938:
    b          .L000027c4
    sd         $zero,88($sp)
.L00002940:
    cache      0x14,0($sp)
    ld         $a3,16($s2)
    b          .L00002770
    sd         $a3,16($s3)
.L00002950:
    move       $at,$s5
    ld         $s5,136($sp)
    move       $a4,$s4
    ld         $s4,128($sp)
    ld         $s0,112($sp)
    ld         $s1,96($sp)
    beq        $a4, $at, .L00002988
    ld         $s2,120($sp)
    ld         $a0,-30640($gp)
    ld         $s5,136($sp)
    ld         $s4,128($sp)
    jal        vsema
    daddiu     $a0,$a0,16
    ld         $ra,56($sp)
.L00002988:
    b          .L00002620
    li         $v0,19
.L00002990:
    jal        splhi
    sd         $v0,80($sp)
    sd         $v0,32($sp)
    jal        gthread_find
    ld         $a0,80($sp)
    beqz       $v0, .L000029ec
    move       $s0,$v0
    ld         $a0,16($s0)
    beqz       $a0, .L000029ec
    nop
    ld         $a3,24($a0)
    beqz       $a3, .L000029ec
    nop
    daddiu     $v0,$a0,24
    ld         $a1,0($v0)
    beqz       $a1, .L000029ec
    nop
.L000029d4:
    beq        $a1, $s2, .L00002a9c
    nop
    daddiu     $v0,$a1,16
    ld         $a1,0($v0)
    bnez       $a1, .L000029d4
    nop
.L000029ec:
    jal        splx
    ld         $a0,32($sp)
    ld         $s0,112($sp)
    beqz       $s1, .L00002690
    ld         $ra,56($sp)
    cache      0x14,0($sp)
    ld         $at,64($sp)
    sd         $at,8($s2)
    ld         $a4,16($s3)
    sd         $a4,16($s2)
    b          .L00002688
    sd         $s2,16($s3)
.L00002a1c:
    jal        gthread_destroy
    ld         $a0,0($s1)
    b          .L000027d0
    nop
.L00002a2c:
    ld         $v0,16($s1)
    beqz       $v0, .L0000278c
    nop
    ld         $v1,24($v0)
    bnez       $v1, .L0000278c
    nop
    jal        splhi
    sd         $a2,24($sp)
    cache      0x14,0($sp)
    ld         $a1,24($sp)
    move       $a0,$v0
    jal        splx
    sw         $zero,12($a1)
    jal        gthread_detach_group
    move       $a0,$s1
    ld         $a0,-30592($gp)
    jal        gthread_scan
    ld         $a1,24($sp)
    b          .L0000278c
    nop
.L00002a7c:
    jal        cleargfxsched_thread
    ld         $a0,0($s1)
    jal        gthread_detach_list
    move       $a0,$s1
    jal        gthread_detach_group
    move       $a0,$s1
    b          .L000027b8
    nop
.L00002a9c:
    beqz       $a1, .L000029ec
    sd         $v0,8($sp)
    jal        GfxListWriterLock
    nop
    cache      0x14,0($sp)
    ld         $a3,8($sp)
    ld         $a2,0($a3)
    ld         $a2,16($a2)
    sd         $a2,0($a3)
    move       $a1,$v0
    jal        GfxListWriterUnlock
    ld         $a0,16($s0)
    li         $a3,1
    b          .L000029ec
    sd         $a3,88($sp)
.L00002ad8:
    ld         $a0,48($sp)
    jal        splx
    ld         $s0,112($sp)
    jal        curproc
    nop
    jal        proc_name
    move       $a0,$v0
    jal        curproc
    sd         $v0,16($sp)
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a3,$v0
    li         $a0,1
    ld         $a2,16($sp)
    jal        cmn_err
    daddiu     $a1,$a1,704
    ld         $a0,40($sp)
    jal        threadhandle_to_proc
    ld         $a0,0($a0)
    jal        proc_name
    move       $a0,$v0
    ld         $a0,40($sp)
    sd         $v0,16($sp)
    jal        threadhandle_to_proc
    ld         $a0,0($a0)
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a3,$v0
    li         $a0,1
    ld         $a2,16($sp)
    jal        cmn_err
    daddiu     $a1,$a1,784
    ld         $a0,40($sp)
    jal        threadhandle_to_proc
    ld         $a0,0($a0)
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    li         $a3,1
    b          .L000027c4
    sd         $a3,88($sp)

glabel GfxListWriterLock
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s0,$a0
    lw         $at,4($s0)
    sd         $s2,24($sp)
    sd         $s1,16($sp)
    blez       $at, .L00002be8
    ld         $ra,0($sp)
    daddiu     $s2,$s0,16
    daddiu     $s1,$s0,8
.L00002bb4:
    move       $a0,$s1
    li         $a1,25
    move       $a2,$s2
    jal        sv_wait
    move       $a3,$v0
    jal        splhi
    nop
    lw         $v1,4($s0)
    bgtz       $v1, .L00002bb4
    nop
    ld         $s1,16($sp)
    ld         $ra,0($sp)
    ld         $s2,24($sp)
.L00002be8:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel GfxListWriterUnlock
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        splx
    move       $a0,$a1
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel GfxListReaderLock
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    cache      0x14,0($sp)
    lw         $at,4($s8)
    move       $a0,$v0
    addiu      $at,$at,1
    jal        splx
    sw         $at,4($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel GfxListReaderUnlock
    daddiu     $sp,$sp,-48
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    cache      0x14,0($sp)
    lw         $at,4($s8)
    sd         $v0,16($sp)
    daddiu     $a0,$s8,8
    addiu      $at,$at,-1
    jal        sv_signal
    sw         $at,4($s8)
    ld         $a0,16($sp)
    jal        splx
    ld         $s8,8($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel gfxread
    jr         $ra
    li         $v0,54

glabel gfxwrite
    jr         $ra
    li         $v0,54

glabel gfxioctl
    daddiu     $sp,$sp,-176
    sd         $a2,88($sp)
    sd         $a4,80($sp)
    sd         $s0,56($sp)
    sd         $s1,104($sp)
    sd         $ra,64($sp)
    move       $s1,$a0
    sd         $a5,72($sp)
    jal        curthreadhandle
    move       $s0,$a1
    sd         $s2,112($sp)
    jal        gthread_find
    move       $a0,$v0
    cache      0x14,0($sp)
    ld         $a7,-30696($gp)
    lw         $a6,12($a7)
    lui        $a1,0x3
    addiu      $a6,$a6,1
    sw         $a6,12($a7)
    ori        $a1,$a1,0xffff
    lui        $a6,0x1
    and        $a1,$s1,$a1
    lw         $at,0($gp)
    ori        $a6,$a6,0xffff
    and        $a1,$a1,$a6
    slt        $at,$a1,$at
    move       $a0,$zero
    move       $s2,$v0
    li         $v0,6
    ld         $ra,64($sp)
    beqz       $at, .L00002e24
    dsll       $s1,$a1,0x3
    ld         $at,-30624($gp)
    daddu      $s1,$s1,$at
    ld         $s1,0($s1)
    beqz       $s1, .L00002e88
    nop
    beqz       $s2, .L00002e74
    nop
    lw         $a1,48($s1)
    andi       $a1,$a1,0x8
    beqz       $a1, .L00002d7c
    ld         $v0,24($s2)
    beqz       $v0, .L00002d8c
    nop
    ld         $a7,8($s1)
    ld         $a6,0($s2)
    beq        $a6, $a7, .L00002d7c
    nop
    ld         $s2,112($sp)
    ld         $s1,104($sp)
    li         $v0,13
    b          .L00002e6c
    ld         $s0,56($sp)
.L00002d7c:
    beqz       $v0, .L00002d8c
    nop
    beqz       $a1, .L0000316c
    nop
.L00002d8c:
    li         $at,101
    li         $a6,105
    li         $a7,103
    beq        $s0, $at, .L00002e34
    li         $v1,102
    beq        $s0, $v1, .L0000303c
    li         $at,112
    beq        $s0, $a6, .L00003074
    li         $v1,113
    beq        $s0, $a7, .L000030d0
    sltiu      $a6,$s0,10000
    beq        $s0, $at, .L00003108
    nop
    beq        $s0, $v1, .L00003140
    nop
    ld         $v0,24($s1)
    beqz       $v0, .L00002ec4
    nop
    beqz       $a6, .L00002e9c
    nop
    sltiu      $a7,$s0,1000
    beqz       $a7, .L00002f48
    nop
    li         $at,108
    beq        $s0, $at, .L00003188
    nop
    li         $v1,104
    beq        $s0, $v1, .L00003000
    nop
    li         $a6,110
    beq        $s0, $a6, .L00002ecc
    nop
    ld         $a3,0($s1)
    ld         $a7,16($a3)
    beq        $a7, $s1, .L00002f68
    nop
    b          .L00002e44
    li         $a0,1
.L00002e24:
    ld         $s2,112($sp)
    ld         $s1,104($sp)
    b          .L00002e6c
    ld         $s0,56($sp)
.L00002e34:
    cache      0x14,0($sp)
    ld         $v1,72($sp)
    lw         $at,-30716($gp)
    sw         $at,0($v1)
.L00002e44:
    ld         $a6,24($s2)
    ld         $s2,112($sp)
    beqz       $a6, .L00002e64
    ld         $s0,56($sp)
    lw         $a7,48($s1)
    andi       $a7,$a7,0x8
    beqz       $a7, .L000030a0
    ld         $s2,112($sp)
.L00002e64:
    move       $v0,$a0
    ld         $s1,104($sp)
.L00002e6c:
    jr         $ra
    daddiu     $sp,$sp,176
.L00002e74:
    ld         $s2,112($sp)
    ld         $s1,104($sp)
    li         $v0,13
    b          .L00002e6c
    ld         $s0,56($sp)
.L00002e88:
    ld         $s2,112($sp)
    ld         $s1,104($sp)
    li         $v0,19
    b          .L00002e6c
    ld         $s0,56($sp)
.L00002e9c:
    ld         $t0,200($v0)
    ld         $a4,72($sp)
    move       $a0,$s1
    ld         $a3,88($sp)
    move       $a2,$s0
    jalr       $t0
    ld         $a1,72($s1)
    move       $a0,$v0
    b          .L00002e44
    ld         $ra,64($sp)
.L00002ec4:
    b          .L00002e44
    li         $a0,13
.L00002ecc:
    ld         $s0,56($sp)
.L00002ed0:
    ld         $a2,32($s1)
    ld         $at,72($a2)
    bne        $at, $s1, .L00002fb8
    nop
.L00002ee0:
    jal        ddv_lock
    ld         $a0,40($s1)
    ld         $v1,32($s1)
    ld         $v1,72($v1)
    beq        $v1, $s1, .L00002f08
    nop
    jal        ddv_unlock
    ld         $a0,40($s1)
    b          .L00002ed0
    nop
.L00002f08:
    ld         $a3,24($s1)
    ld         $a3,96($a3)
    move       $a0,$s1
    move       $a1,$zero
    jalr       $a3
    li         $a2,-1
    cache      0x14,0($sp)
    sd         $v0,96($sp)
    lw         $a4,48($s1)
    ld         $a0,40($s1)
    ori        $a4,$a4,0x20
    jal        ddv_unlock
    sw         $a4,48($s1)
    ld         $a0,96($sp)
    b          .L00002e44
    ld         $ra,64($sp)
.L00002f48:
    move       $a0,$s1
    ld         $a2,88($sp)
    move       $a1,$s0
    jal        RRM_Dispatch
    ld         $a3,72($sp)
    move       $a0,$v0
    b          .L00002e44
    ld         $ra,64($sp)
.L00002f68:
    li         $a6,106
    beq        $s0, $a6, .L000031ec
    nop
    li         $a7,107
    beq        $s0, $a7, .L00003280
    nop
    li         $at,109
    beq        $s0, $at, .L00002e44
    nop
    li         $v1,111
    beq        $s0, $v1, .L000031c0
    nop
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a2,$s0
    jal        cmn_err
    daddiu     $a1,$a1,856
    li         $a0,22
    b          .L00002e44
    ld         $ra,64($sp)
.L00002fb8:
    li         $a1,537
    jal        psema
    daddiu     $a0,$a2,56
    cache      0x14,0($sp)
    ld         $a7,32($s1)
    sd         $s1,72($a7)
    ld         $a6,32($s1)
    lw         $a6,104($a6)
    beqz       $a6, .L00002ee0
    nop
.L00002fe0:
    jal        us_delay
    li         $a0,2
    ld         $at,32($s1)
    lw         $at,104($at)
    bnez       $at, .L00002fe0
    nop
    b          .L00002ee0
    nop
.L00003000:
    lw         $v1,48($s1)
    andi       $v1,$v1,0x8
    bnez       $v1, .L000030b8
    ld         $s0,56($sp)
    ld         $a6,24($s2)
    beqz       $a6, .L000030b8
    sd         $a0,96($sp)
    jal        threadgroup_refcnt
    ld         $a0,0($s2)
    li         $a7,1
    ld         $a0,96($sp)
    beq        $v0, $a7, .L000030b8
    ld         $ra,64($sp)
    b          .L00002e44
    li         $a0,16
.L0000303c:
    jal        curproc_abi
    ld         $s0,56($sp)
    move       $a4,$v0
    li         $a6,1
    ld         $a0,88($sp)
    li         $a5,4
    li         $a2,24
    ld         $a3,-30584($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000032a8
    ld         $ra,64($sp)
    b          .L00002e44
    li         $a0,14
.L00003074:
    sd         $a0,96($sp)
    ld         $a0,88($sp)
    li         $a2,4
    daddiu     $a1,$sp,40
    jal        copyin
    ld         $s0,56($sp)
    ld         $a0,96($sp)
    beqz       $v0, .L000032c4
    ld         $ra,64($sp)
    b          .L00002e44
    li         $a0,14
.L000030a0:
    sd         $a0,96($sp)
    jal        vsema
    daddiu     $a0,$s1,80
    ld         $a0,96($sp)
    b          .L00002e64
    ld         $ra,64($sp)
.L000030b8:
    sd         $a0,96($sp)
    jal        GfxDetach
    move       $a0,$s1
    ld         $a0,96($sp)
    b          .L00002e44
    ld         $ra,64($sp)
.L000030d0:
    jal        curproc_abi
    ld         $s0,56($sp)
    move       $a4,$v0
    li         $a6,1
    ld         $a0,88($sp)
    li         $a5,4
    li         $a2,16
    ld         $a3,-30576($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000032e0
    ld         $ra,64($sp)
    b          .L00002e44
    li         $a0,14
.L00003108:
    jal        curproc_abi
    ld         $s0,56($sp)
    move       $a4,$v0
    li         $a6,1
    ld         $a0,88($sp)
    li         $a5,4
    li         $a2,16
    ld         $a3,-30576($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000032fc
    ld         $ra,64($sp)
    b          .L00002e44
    li         $a0,14
.L00003140:
    ld         $a0,80($sp)
    jal        drv_priv
    ld         $s0,56($sp)
    move       $a0,$v0
    bnez       $v0, .L00002e44
    ld         $ra,64($sp)
    cache      0x14,0($sp)
    lw         $at,48($s1)
    ori        $at,$at,0x4
    b          .L00002e44
    sw         $at,48($s1)
.L0000316c:
    li         $a1,25
    sd         $a0,96($sp)
    jal        psema
    daddiu     $a0,$s1,80
    ld         $a0,96($sp)
    b          .L00002d8c
    ld         $ra,64($sp)
.L00003188:
    jal        curproc_abi
    ld         $s0,56($sp)
    move       $a4,$v0
    li         $a6,1
    ld         $a0,88($sp)
    li         $a5,4
    li         $a2,40
    ld         $a3,-30568($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000034e8
    ld         $ra,64($sp)
    b          .L00002e44
    li         $a0,14
.L000031c0:
    ld         $a1,0($a3)
    ld         $a0,88($sp)
    li         $a2,16
    ld         $s0,56($sp)
    jal        copyin
    daddiu     $a1,$a1,16
    li         $a0,14
    ld         $ra,64($sp)
    sltu       $a6,$zero,$v0
    b          .L00002e44
    movz       $a0,$zero,$a6
.L000031ec:
    ld         $a2,32($s1)
    ld         $a7,72($a2)
    bne        $a7, $s1, .L000033d4
    ld         $s0,56($sp)
.L000031fc:
    ld         $t0,24($v0)
    jalr       $t0
    move       $a0,$s1
    cache      0x14,0($sp)
    ld         $t1,32($s1)
    sd         $v0,96($sp)
    jal        splhi
    sw         $zero,128($t1)
    ld         $a1,24($s1)
    ld         $a1,192($a1)
    beqz       $a1, .L00003234
    sd         $v0,48($sp)
    jalr       $a1
    move       $a0,$s1
.L00003234:
    cache      0x14,0($sp)
    ld         $a1,32($s1)
    sd         $zero,72($a1)
    ld         $a0,32($s1)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    ld         $a0,48($sp)
    ld         $a0,96($sp)
    ld         $ra,64($sp)
    lw         $a6,48($s1)
    andi       $a6,$a6,0x1
    beqz       $a6, .L00002e44
    nop
    jal        rrmUnMapGfx
    move       $a0,$s1
    ld         $a0,96($sp)
    b          .L00002e44
    ld         $ra,64($sp)
.L00003280:
    ld         $a2,32($s1)
    ld         $a7,72($a2)
    bne        $a7, $s1, .L0000341c
    ld         $s0,56($sp)
.L00003290:
    ld         $t0,40($v0)
    jalr       $t0
    move       $a0,$s1
    move       $a0,$v0
    b          .L00002e44
    ld         $ra,64($sp)
.L000032a8:
    lw         $v0,0($sp)
    lw         $at,-30716($gp)
    sltu       $at,$v0,$at
    bnez       $at, .L00003318
    nop
    b          .L00002e44
    li         $a0,19
.L000032c4:
    lw         $v0,40($sp)
    lw         $v1,-30716($gp)
    sltu       $v1,$v0,$v1
    bnez       $v1, .L00003340
    nop
    b          .L00002e44
    li         $a0,19
.L000032e0:
    lw         $v0,0($sp)
    lw         $a6,-30716($gp)
    sltu       $a6,$v0,$a6
    bnez       $a6, .L00003378
    nop
    b          .L00002e44
    li         $a0,19
.L000032fc:
    lw         $v0,0($sp)
    lw         $a7,-30716($gp)
    sltu       $a7,$v0,$a7
    bnez       $a7, .L000033ac
    nop
    b          .L00002e44
    li         $a0,19
.L00003318:
    dsll32     $t0,$v0,0x0
    dsrl32     $t0,$t0,0x0
    ld         $at,-30664($gp)
    dsll       $t0,$t0,0x3
    daddu      $t0,$t0,$at
    ld         $t0,0($t0)
    bnez       $t0, .L00003464
    nop
    b          .L00002e44
    li         $a0,19
.L00003340:
    dsll32     $a1,$v0,0x0
    dsrl32     $a1,$a1,0x0
    ld         $a6,-30664($gp)
    dsll       $a1,$a1,0x3
    daddu      $a1,$a1,$a6
    ld         $a1,0($a1)
    beqz       $a1, .L00003508
    nop
    cache      0x14,0($sp)
    ld         $a7,72($sp)
    ld         $a6,8($a1)
    sltu       $a6,$zero,$a6
    b          .L00002e44
    sw         $a6,0($a7)
.L00003378:
    dsll32     $t0,$v0,0x0
    dsrl32     $t0,$t0,0x0
    ld         $a2,-30664($gp)
    dsll       $t0,$t0,0x3
    daddu      $t0,$t0,$a2
    ld         $t0,0($t0)
    beqz       $t0, .L00003510
    nop
    ld         $at,24($s1)
    beqz       $at, .L00003518
    nop
    b          .L00002e44
    li         $a0,16
.L000033ac:
    dsll32     $t0,$v0,0x0
    dsrl32     $t0,$t0,0x0
    ld         $a2,-30664($gp)
    dsll       $t0,$t0,0x3
    daddu      $t0,$t0,$a2
    ld         $t0,0($t0)
    bnez       $t0, .L0000348c
    nop
    b          .L00002e44
    li         $a0,19
.L000033d4:
    li         $a1,537
    jal        psema
    daddiu     $a0,$a2,56
    cache      0x14,0($sp)
    ld         $v1,32($s1)
    sd         $s1,72($v1)
    ld         $at,32($s1)
    lw         $at,104($at)
    beqz       $at, .L00003414
    nop
.L000033fc:
    jal        us_delay
    li         $a0,2
    ld         $a6,32($s1)
    lw         $a6,104($a6)
    bnez       $a6, .L000033fc
    nop
.L00003414:
    b          .L000031fc
    ld         $v0,24($s1)
.L0000341c:
    li         $a1,537
    jal        psema
    daddiu     $a0,$a2,56
    cache      0x14,0($sp)
    ld         $at,32($s1)
    sd         $s1,72($at)
    ld         $a7,32($s1)
    lw         $a7,104($a7)
    beqz       $a7, .L0000345c
    nop
.L00003444:
    jal        us_delay
    li         $a0,2
    ld         $v1,32($s1)
    lw         $v1,104($v1)
    bnez       $v1, .L00003444
    nop
.L0000345c:
    b          .L00003290
    ld         $v0,24($s1)
.L00003464:
    ld         $a4,56($t0)
    lw         $a2,16($sp)
    ld         $a4,0($a4)
    ld         $a1,8($sp)
    ld         $a3,72($sp)
    jalr       $a4
    ld         $a0,64($t0)
    move       $a0,$v0
    b          .L00002e44
    ld         $ra,64($sp)
.L0000348c:
    cache      0x14,0($sp)
    sd         $t0,0($s1)
    ld         $a7,64($t0)
    sd         $a7,32($s1)
    ld         $a6,56($t0)
    sd         $a6,24($s1)
    lwu        $a5,0($sp)
    dsll       $a5,$a5,0x3
    daddu      $a5,$a5,$a2
    ld         $a5,0($a5)
    ld         $a5,56($a5)
    ld         $a5,8($a5)
    move       $a0,$s1
    jalr       $a5
    ld         $a1,8($sp)
    move       $a0,$v0
    beqz       $v0, .L00003574
    ld         $ra,64($sp)
    cache      0x14,0($sp)
    sd         $zero,24($s1)
    sd         $zero,32($s1)
    b          .L00002e44
    sd         $zero,0($s1)
.L000034e8:
    ld         $t0,24($s1)
    ld         $t0,32($t0)
    move       $a0,$s1
    jalr       $t0
    daddiu     $a1,$sp,0
    move       $a0,$v0
    b          .L00002e44
    ld         $ra,64($sp)
.L00003508:
    b          .L00002e44
    li         $a0,19
.L00003510:
    b          .L00002e44
    li         $a0,19
.L00003518:
    cache      0x14,0($sp)
    sd         $t0,0($s1)
    ld         $t3,56($t0)
    sd         $t3,24($s1)
    ld         $t2,64($t0)
    sd         $t2,32($s1)
    lwu        $t1,0($sp)
    dsll       $t1,$t1,0x3
    daddu      $t1,$t1,$a2
    ld         $t1,0($t1)
    ld         $t1,56($t1)
    ld         $t1,8($t1)
    move       $a0,$s1
    jalr       $t1
    ld         $a1,8($sp)
    move       $a0,$v0
    beqz       $v0, .L00003590
    ld         $ra,64($sp)
    cache      0x14,0($sp)
    sd         $zero,24($s1)
    sd         $zero,32($s1)
    b          .L00002e44
    sd         $zero,0($s1)
.L00003574:
    ld         $a3,0($s1)
    ld         $at,16($a3)
    bnez       $at, .L00002e44
    nop
    cache      0x14,0($sp)
    b          .L00002e44
    sd         $s1,16($a3)
.L00003590:
    ld         $a3,0($s1)
    ld         $v1,16($a3)
    bnez       $v1, .L00002e44
    nop
    cache      0x14,0($sp)
    b          .L00002e44
    sd         $s1,16($a3)

glabel gfxmap
    jr         $ra
    li         $v0,54

glabel gfxunmap
    jr         $ra
    li         $v0,54

glabel gfx_shalloc
    daddiu     $sp,$sp,-48
    sd         $s0,24($sp)
    sd         $ra,8($sp)
    jal        curthreadhandle
    sd         $s2,32($sp)
    move       $s0,$v0
    jal        splhi
    move       $s2,$v0
    sd         $s1,16($sp)
    sd         $v0,0($sp)
    jal        gfx_group_create
    move       $a0,$s0
    move       $s1,$v0
    jal        gthread_find
    move       $a0,$s2
    move       $s0,$v0
    beqz       $v0, .L00003670
    ld         $s2,32($sp)
    move       $a0,$s0
    jal        gthread_attach_group
    move       $a1,$s1
    ld         $a0,16($s0)
    beqz       $a0, .L00003670
    nop
    jal        GfxListWriterLock
    nop
    ld         $a4,16($s0)
    ld         $a4,24($a4)
    beqz       $a4, .L00003660
    li         $v1,1
    lw         $at,48($a4)
    andi       $at,$at,0x8
    beqz       $at, .L0000368c
    nop
.L00003644:
    beqz       $a4, .L00003660
    nop
.L0000364c:
    cache      0x14,0($sp)
    sd         $s1,96($a4)
    ld         $a4,16($a4)
    bnez       $a4, .L0000364c
    nop
.L00003660:
    ld         $a0,16($s0)
    move       $a1,$v0
    jal        GfxListWriterUnlock
    ld         $s1,16($sp)
.L00003670:
    ld         $a0,0($sp)
    ld         $s1,16($sp)
    jal        splx
    ld         $s0,24($sp)
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000368c:
    cache      0x14,0($sp)
    b          .L00003644
    sw         $v1,12($s1)

glabel gfx_shfree
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        curthreadhandle
    nop
    jal        gfx_group_find
    move       $a0,$v0
    jal        gfx_group_destroy
    move       $a0,$v0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel gfx_frs_valid_pipenum
    lw         $v0,-30716($gp)
    jr         $ra
    slt        $v0,$a0,$v0

glabel irix5_to_gfx_getboardinfo_args
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L00003710
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,12
    bnez       $at, .L00003740
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L000036fc:
    cache      0x14,0($sp)
    li         $a0,12
    sw         $a0,4($s0)
    b          .L00003734
    move       $v0,$zero
.L00003710:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v0,0($a2)
    sw         $v0,0($a1)
    lwu        $at,4($a2)
    sd         $at,8($a1)
    lw         $a2,8($a2)
    move       $v0,$zero
    sw         $a2,16($a1)
.L00003734:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00003740:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,12
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L000036fc
    ld         $ra,8($sp)

glabel irix5_to_gfx_download_args
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L0000379c
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,32
    bnez       $at, .L000037f4
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00003788:
    cache      0x14,0($sp)
    li         $a0,32
    sw         $a0,4($s0)
    b          .L000037e8
    move       $v0,$zero
.L0000379c:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v1,0($a2)
    sw         $v1,0($a1)
    lwu        $v0,4($a2)
    sd         $v0,8($a1)
    lw         $at,8($a2)
    sw         $at,16($a1)
    lw         $a0,12($a2)
    sw         $a0,20($a1)
    lw         $v1,16($a2)
    sw         $v1,24($a1)
    lw         $v0,20($a2)
    sw         $v0,28($a1)
    lw         $at,24($a2)
    sw         $at,32($a1)
    lw         $a2,28($a2)
    move       $v0,$zero
    sw         $a2,36($a1)
.L000037e8:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000037f4:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,32
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00003788
    ld         $ra,8($sp)

glabel irix5_to_gfx_attach_board_args
    daddiu     $sp,$sp,-48
    move       $v0,$zero
    sd         $s0,0($sp)
    bnez       $a0, .L00003854
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,8
    bnez       $at, .L00003878
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00003840:
    cache      0x14,0($sp)
    li         $a0,8
    sw         $a0,4($s0)
    b          .L0000386c
    move       $v0,$zero
.L00003854:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $at,0($a2)
    sw         $at,0($a1)
    lwu        $a2,4($a2)
    sd         $a2,8($a1)
.L0000386c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00003878:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,8
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00003840
    ld         $ra,8($sp)
