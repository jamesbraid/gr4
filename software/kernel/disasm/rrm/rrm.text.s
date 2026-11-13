.section .text
.set noat
.set noreorder


glabel pane_gc
    lw         $a4,-30720($gp)
    lw         $a3,-30712($gp)
    slt        $at,$a3,$a4
    move       $a5,$zero
    ld         $a6,-30712($gp)
    li         $a7,8
    ld         $a2,-30720($gp)
    beqz       $at, .L00000080
    move       $a1,$a3
    b          .L0000003c
    nop
.L0000002c:
    addiu      $a1,$a1,1
    slt        $v0,$a1,$a4
    beqz       $v0, .L00000088
    nop
.L0000003c:
    dsll       $v1,$a1,0x2
    dsubu      $v1,$v1,$a1
    dsll       $v1,$v1,0x3
    dsubu      $v1,$v1,$a1
    dsll       $v1,$v1,0x3
    daddu      $v1,$v1,$a2
    lh         $v1,16($v1)
    bnez       $v1, .L0000002c
    nop
    cache      0x14,0($sp)
    addiu      $a5,$a5,1
    daddu      $a0,$a5,$a5
    daddu      $a0,$a0,$a6
    beq        $a5, $a7, .L000000e8
    sh         $a1,-2($a0)
    b          .L0000002c
    nop
.L00000080:
    ld         $a6,-30712($gp)
    ld         $a2,-30720($gp)
.L00000088:
    blez       $a3, .L000000e8
    move       $a1,$zero
    li         $a7,8
    b          .L000000ac
    nop
.L0000009c:
    addiu      $a1,$a1,1
    slt        $at,$a1,$a3
    beqz       $at, .L000000e8
    nop
.L000000ac:
    dsll       $v0,$a1,0x2
    dsubu      $v0,$v0,$a1
    dsll       $v0,$v0,0x3
    dsubu      $v0,$v0,$a1
    dsll       $v0,$v0,0x3
    daddu      $v0,$v0,$a2
    lh         $v0,16($v0)
    bnez       $v0, .L0000009c
    nop
    cache      0x14,0($sp)
    addiu      $a5,$a5,1
    daddu      $v1,$a5,$a5
    daddu      $v1,$v1,$a6
    bne        $a5, $a7, .L0000009c
    sh         $a1,-2($v1)
.L000000e8:
    addiu      $a0,$a4,-2
    slt        $a0,$a1,$a0
    beqz       $a0, .L00000100
    move       $a2,$zero
    b          .L00000100
    addiu      $a2,$a1,1
.L00000100:
    sh         $a5,-30716($gp)
    jr         $ra
    sw         $a2,-30712($gp)

glabel bind_pane
    daddiu     $sp,$sp,-80
    sd         $a0,8($sp)
    sd         $s3,24($sp)
    sd         $s0,32($sp)
    ld         $s0,-30712($gp)
    move       $s3,$a1
    sd         $s1,16($sp)
    sd         $ra,40($sp)
    li         $a1,25
    daddiu     $s1,$s0,16
    sd         $s4,48($sp)
    jal        psema
    move       $a0,$s1
    lw         $a1,-30720($gp)
    ld         $v0,-30720($gp)
    lh         $a5,-30716($gp)
    blez       $a1, .L0000027c
    move       $s4,$zero
    sd         $s2,0($sp)
.L00000158:
    dsll       $s2,$s4,0x2
    dsubu      $s2,$s2,$s4
    dsll       $s2,$s2,0x3
    dsubu      $s2,$s2,$s4
    dsll       $s2,$s2,0x3
    daddu      $s2,$s2,$v0
    lw         $at,4($s2)
    bne        $at, $s3, .L00000198
    move       $a0,$zero
    ld         $at,8($sp)
    ld         $v1,88($s2)
    ld         $at,32($at)
    bne        $at, $v1, .L00000198
    nop
    b          .L00000198
    li         $a0,1
.L00000198:
    bnez       $a0, .L000001b8
    nop
    addiu      $s4,$s4,1
    slt        $v1,$s4,$a1
    bnez       $v1, .L00000158
    nop
    b          .L00000280
    ld         $s2,0($sp)
.L000001b8:
    blez       $a5, .L00000218
    move       $s3,$zero
    b          .L000001dc
    nop
.L000001c8:
    lh         $a5,-30716($gp)
.L000001cc:
    addiu      $s3,$s3,1
    slt        $a2,$s3,$a5
    beqz       $a2, .L00000218
    nop
.L000001dc:
    daddu      $a1,$s3,$s3
    daddu      $a1,$a1,$s0
    lh         $a3,0($a1)
    bne        $a3, $s4, .L000001cc
    nop
    addiu      $a3,$a5,-1
    dsll32     $a3,$a3,0x10
    dsra32     $a3,$a3,0x10
    daddiu     $a0,$a1,2
    subu       $a2,$a3,$s3
    sh         $a3,-30716($gp)
    jal        bcopy
    addu       $a2,$a2,$a2
    b          .L000001c8
    nop
.L00000218:
    lh         $a1,16($s2)
    lh         $v0,12($s2)
    beqz       $a1, .L00000264
    ld         $s4,48($sp)
.L00000228:
    cache      0x14,0($sp)
    addiu      $a5,$a1,1
    sh         $a5,16($s2)
    ori        $a4,$v0,0x80
    sh         $a4,12($s2)
    jal        vsema
    move       $a0,$s1
    ld         $s0,32($sp)
    ld         $ra,40($sp)
    ld         $s1,16($sp)
    move       $v0,$s2
    ld         $s2,0($sp)
    ld         $s3,24($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000264:
    cache      0x14,0($sp)
    ori        $v0,$v0,0x4
    dsll32     $v0,$v0,0x10
    dsra32     $v0,$v0,0x10
    b          .L00000228
    sh         $v0,12($s2)
.L0000027c:
    ld         $v0,-30720($gp)
.L00000280:
    lh         $a5,-30716($gp)
    beqz       $a5, .L000002fc
    nop
.L0000028c:
    cache      0x14,0($sp)
    addiu      $a5,$a5,-1
    dsll32     $a5,$a5,0x10
    dsra32     $a5,$a5,0x10
    daddu      $s4,$a5,$a5
    daddu      $s4,$s4,$s0
    lh         $s4,0($s4)
    sd         $s2,0($sp)
    dsll       $s2,$s4,0x2
    dsubu      $s2,$s2,$s4
    dsll       $s2,$s2,0x3
    dsubu      $s2,$s2,$s4
    dsll       $s2,$s2,0x3
    ld         $v1,8($sp)
    daddu      $s2,$s2,$v0
    lh         $a2,0($s2)
    sh         $s4,2($s2)
    addiu      $a2,$a2,1
    sh         $a2,0($s2)
    sh         $a5,-30716($gp)
    ld         $v1,32($v1)
    sh         $zero,18($s2)
    sh         $zero,12($s2)
    li         $a2,1
    sw         $a2,8($s2)
    sw         $s3,4($s2)
    b          .L000001b8
    sd         $v1,88($s2)
.L000002fc:
    jal        pane_gc
    nop
    sd         $s2,0($sp)
    ld         $v0,-30720($gp)
    b          .L0000028c
    lh         $a5,-30716($gp)

glabel unbind_pane
    daddiu     $sp,$sp,-48
    sd         $s8,8($sp)
    move       $s8,$a0
    ld         $a0,-30712($gp)
    li         $a1,25
    sd         $ra,0($sp)
    daddiu     $a0,$a0,16
    jal        psema
    sd         $a0,16($sp)
    cache      0x14,0($sp)
    lh         $a1,16($s8)
    ld         $a0,16($sp)
    addiu      $a1,$a1,-1
    jal        vsema
    sh         $a1,16($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel clip2pane
    lw         $a4,-30720($gp)
    ld         $a5,-30720($gp)
    blez       $a4, .L000003bc
    move       $v0,$zero
    b          .L00000380
    ld         $a6,32($a1)
.L00000378:
    beqz       $at, .L000003bc
    nop
.L00000380:
    dsll       $a1,$v0,0x2
    dsubu      $a1,$a1,$v0
    dsll       $a1,$a1,0x3
    dsubu      $a1,$a1,$v0
    dsll       $a1,$a1,0x3
    daddu      $a1,$a1,$a5
    lw         $v1,4($a1)
    addiu      $v0,$v0,1
    bne        $v1, $a0, .L00000378
    slt        $at,$v0,$a4
    ld         $a2,88($a1)
    bne        $a2, $a6, .L00000378
    nop
    b          .L000003c0
    move       $v0,$a1
.L000003bc:
    move       $v0,$zero
.L000003c0:
    jr         $ra
    nop

glabel pane_cleanup
    daddiu     $sp,$sp,-64
    sd         $s0,32($sp)
    sd         $ra,0($sp)
    jal        clip2pane
    sd         $a1,16($sp)
    move       $s0,$v0
    beqz       $v0, .L0000046c
    ld         $ra,0($sp)
    ld         $a0,-30712($gp)
    li         $a1,25
    daddiu     $a0,$a0,16
    jal        psema
    sd         $a0,8($sp)
    jal        splhi
    nop
    cache      0x14,0($sp)
    lh         $a2,14($s0)
    lh         $a3,12($s0)
    sw         $zero,4($s0)
    li         $at,-75
    and        $a3,$a3,$at
    beqz       $a2, .L00000448
    sh         $a3,12($s0)
    cache      0x14,0($sp)
    sd         $v0,24($sp)
    sd         $zero,56($s0)
    daddiu     $a0,$s0,40
    jal        vsema
    sh         $zero,14($s0)
    jal        sv_signal
    daddiu     $a0,$s0,64
    ld         $v0,24($sp)
.L00000448:
    jal        splx
    move       $a0,$v0
    ld         $v1,160($s0)
    bnez       $v1, .L00000478
    nop
.L0000045c:
    ld         $a0,8($sp)
    jal        vsema
    ld         $s0,32($sp)
    ld         $ra,0($sp)
.L0000046c:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000478:
    ld         $a0,16($sp)
    jal        rrmSwapUnGroup
    move       $a1,$s0
    b          .L0000045c
    nop

glabel pane_setnullclip
    ld         $at,24($a1)
    daddiu     $sp,$sp,-32
    ld         $at,88($at)
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    move       $s8,$a0
    jalr       $at
    daddiu     $a0,$a0,96
    cache      0x14,0($sp)
    lh         $v0,12($s8)
    lw         $v1,8($s8)
    ld         $ra,0($sp)
    addiu      $v1,$v1,1
    sw         $v1,8($s8)
    ori        $v0,$v0,0xca
    sh         $v0,12($s8)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel pane_validmask
    jr         $ra
    lh         $v0,12($a0)

glabel invalidate_pane
    daddiu     $sp,$sp,-64
    sd         $s5,16($sp)
    sd         $s1,8($sp)
    sd         $ra,0($sp)
    move       $s1,$a0
    move       $a0,$a1
    sd         $s7,24($sp)
    jal        clip2pane
    move       $a1,$a2
    andi       $at,$s1,0x2
    move       $s7,$v0
    move       $s5,$zero
    beqz       $at, .L0000051c
    ld         $ra,0($sp)
    ori        $s1,$s1,0x40
.L0000051c:
    bnez       $s7, .L0000053c
    nop
.L00000524:
    ld         $s1,8($sp)
    move       $v0,$s5
    ld         $s5,16($sp)
    ld         $s7,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000053c:
    jal        splhi
    nop
    cache      0x14,0($sp)
    lh         $s5,12($s7)
    move       $a0,$v0
    nor        $v0,$s1,$zero
    and        $v0,$v0,$s5
    jal        splx
    sh         $v0,12($s7)
    b          .L00000524
    ld         $ra,0($sp)

glabel invalidate_pane_buffer
    daddiu     $sp,$sp,-64
    sd         $s5,8($sp)
    sd         $ra,0($sp)
    move       $s5,$a0
    move       $a0,$a1
    sd         $s7,16($sp)
    jal        clip2pane
    move       $a1,$a2
    andi       $at,$s5,0x2
    move       $s7,$v0
    beqz       $at, .L0000059c
    ld         $ra,0($sp)
    ori        $s5,$s5,0x40
.L0000059c:
    bnez       $s7, .L000005b8
    nop
.L000005a4:
    move       $v0,$zero
    ld         $s5,8($sp)
    ld         $s7,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000005b8:
    jal        splhi
    nop
    cache      0x14,0($sp)
    move       $a0,$v0
    lh         $v0,12($s7)
    nor        $v1,$s5,$zero
    and        $v0,$v0,$v1
    jal        splx
    sh         $v0,12($s7)
    b          .L000005a4
    ld         $ra,0($sp)

glabel validate_pane_clip
    daddiu     $sp,$sp,-80
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    sd         $s0,24($sp)
    jal        clip2pane
    move       $s1,$a2
    beqz       $v0, .L00000778
    move       $s0,$v0
    ld         $at,128($v0)
    beqz       $at, .L00000784
    nop
.L00000610:
    ld         $a0,32($s1)
    li         $at,14
    beqz       $a0, .L00000688
    sd         $s2,32($sp)
    lw         $s2,24($s1)
    sll        $s2,$s2,0x4
    sltiu      $v1,$s2,225
    bnez       $v1, .L00000640
    nop
    cache      0x14,0($sp)
    sw         $at,24($s1)
    li         $s2,224
.L00000640:
    ld         $a1,128($s0)
    jal        copyin
    move       $a2,$s2
    beqz       $v0, .L00000688
    nop
    li         $a0,4
    ld         $a1,-30704($gp)
    move       $a2,$s0
    move       $a3,$s2
    jal        cmn_err
    daddiu     $a1,$a1,560
    ld         $s0,24($sp)
    li         $v0,14
    ld         $s2,32($sp)
.L00000678:
    ld         $ra,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000688:
    jal        splhi
    ld         $s2,32($sp)
    lh         $a4,12($s0)
    andi       $a4,$a4,0x8
    daddiu     $a2,$s0,96
    move       $a3,$s1
    sd         $v0,0($sp)
    lw         $a0,56($s1)
    beqz       $a4, .L000007ac
    li         $v0,8
    lh         $at,18($s0)
    beqz       $at, .L00000798
    nop
    cache      0x14,0($sp)
    ori        $a0,$a0,0x4
    sw         $a0,56($s1)
.L000006c8:
    cache      0x14,0($sp)
    sw         $a0,32($s0)
.L000006d0:
    cache      0x14,0($sp)
    ld         $v1,128($s0)
    move       $a0,$zero
    sd         $v1,32($s1)
.L000006e0:
    cache      0x14,0($sp)
    addiu      $v0,$v0,-1
    daddu      $a1,$a0,$a3
    daddu      $a4,$a0,$a2
    ld         $a1,0($a1)
    addiu      $a0,$a0,8
    bgtz       $v0, .L000006e0
    sd         $a1,0($a4)
    cache      0x14,0($sp)
    lh         $v0,12($s0)
    lw         $a4,8($s0)
    andi       $at,$v0,0x2
    li         $a1,-3
    addiu      $a4,$a4,1
    beqz       $at, .L00000734
    sw         $a4,8($s0)
    ld         $a0,0($sp)
    jal        splx
    ld         $s0,24($sp)
    b          .L00000678
    move       $v0,$zero
.L00000734:
    cache      0x14,0($sp)
    lh         $a0,14($s0)
    and        $a1,$a0,$a1
    andi       $v1,$a0,0x2
    dsll32     $a1,$a1,0x10
    ori        $at,$v0,0x42
    beqz       $v1, .L0000076c
    sh         $at,12($s0)
    cache      0x14,0($sp)
    dsra32     $a1,$a1,0x10
    beqz       $a1, .L000007cc
    sh         $a1,14($s0)
.L00000764:
    jal        sv_signal
    daddiu     $a0,$s0,64
.L0000076c:
    ld         $a0,0($sp)
    jal        splx
    ld         $s0,24($sp)
.L00000778:
    move       $v0,$zero
    b          .L00000678
    ld         $s0,24($sp)
.L00000784:
    jal        kern_malloc
    li         $a0,224
    cache      0x14,0($sp)
    b          .L00000610
    sd         $v0,128($s0)
.L00000798:
    cache      0x14,0($sp)
    li         $a4,-5
    and        $a0,$a0,$a4
    b          .L000006c8
    sw         $a0,56($s1)
.L000007ac:
    cache      0x14,0($sp)
    sw         $a0,32($s0)
    lw         $at,56($s1)
    andi       $at,$at,0x4
    xori       $at,$at,0x4
    sltiu      $at,$at,1
    b          .L000006d0
    sh         $at,18($s0)
.L000007cc:
    cache      0x14,0($sp)
    daddiu     $a0,$s0,40
    jal        vsema
    sd         $zero,56($s0)
    b          .L00000764
    nop

glabel validate_pane_swapbuf
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    sd         $ra,8($sp)
    jal        clip2pane
    sd         $a2,16($sp)
    move       $s0,$v0
    beqz       $v0, .L00000868
    ld         $ra,8($sp)
    jal        splhi
    nop
    cache      0x14,0($sp)
    ld         $v1,16($sp)
    lh         $a0,14($s0)
    sd         $v0,0($sp)
    li         $a1,-9
    lh         $v0,12($s0)
    andi       $at,$a0,0x8
    and        $a1,$a0,$a1
    sw         $v1,20($s0)
    dsll32     $a1,$a1,0x10
    ori        $v0,$v0,0x8
    sh         $v0,12($s0)
    beqz       $at, .L00000858
    dsra32     $a1,$a1,0x10
    cache      0x14,0($sp)
    beqz       $a1, .L00000878
    sh         $a1,14($s0)
.L00000850:
    jal        sv_signal
    daddiu     $a0,$s0,64
.L00000858:
    ld         $a0,0($sp)
    jal        splx
    ld         $s0,24($sp)
    ld         $ra,8($sp)
.L00000868:
    move       $v0,$zero
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000878:
    cache      0x14,0($sp)
    daddiu     $a0,$s0,40
    jal        vsema
    sd         $zero,56($s0)
    b          .L00000850
    nop

glabel validate_pane_buffer
    daddiu     $sp,$sp,-48
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    cache      0x14,0($sp)
    lh         $at,12($s8)
    sd         $v0,16($sp)
    daddiu     $a0,$s8,72
    ori        $at,$at,0x4
    jal        sv_broadcast
    sh         $at,12($s8)
    ld         $a0,16($sp)
    jal        splx
    ld         $s8,8($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel validate_my_pane_buffer
    daddiu     $sp,$sp,-80
    sd         $s8,32($sp)
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    move       $s0,$a0
    jal        splhi
    move       $s8,$a2
    lh         $at,12($s0)
    xor        $at,$at,$s8
    and        $at,$at,$s8
    andi       $at,$at,0x4
    beqz       $at, .L00000964
    nop
    sd         $v0,24($sp)
    daddiu     $a0,$sp,0
    jal        hold_nonfatalsig
    ld         $s8,32($sp)
    daddiu     $a2,$s0,80
    li         $a1,542
    daddiu     $a0,$s0,72
    jal        sv_wait_sig
    ld         $a3,24($sp)
    bltz       $v0, .L00000950
    ld         $s0,8($sp)
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    move       $v0,$zero
    ld         $ra,16($sp)
.L00000948:
    jr         $ra
    daddiu     $sp,$sp,80
.L00000950:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    li         $v0,-1
    b          .L00000948
    ld         $ra,16($sp)
.L00000964:
    ld         $s8,32($sp)
    move       $a0,$v0
    jal        splx
    ld         $s0,8($sp)
    move       $v0,$zero
    b          .L00000948
    ld         $ra,16($sp)

glabel validate_my_pane_resources
    daddiu     $sp,$sp,-176
    sd         $s1,96($sp)
    move       $v0,$zero
    andi       $at,$a2,0x8e
    sd         $s0,112($sp)
    sd         $s2,104($sp)
    move       $s0,$a0
    move       $s1,$a1
    beqz       $at, .L00000b74
    move       $s2,$a2
    move       $a0,$s0
    move       $a1,$s1
    sd         $ra,120($sp)
    jal        validate_my_pane_buffer
    move       $a2,$s2
    bltz       $v0, .L00000bf0
    ld         $ra,120($sp)
    jal        splhi
    sd         $s3,128($sp)
    cache      0x14,0($sp)
    lh         $a4,12($s0)
    ori        $a4,$a4,0x80
    dsll32     $a4,$a4,0x10
    dsra32     $a4,$a4,0x10
    xor        $v1,$a4,$s2
    and        $v1,$v1,$s2
    andi       $v1,$v1,0xa
    move       $s3,$v0
    sh         $a4,12($s0)
    andi       $a4,$s2,0x2
    beqz       $v1, .L00000d70
    sd         $v1,88($sp)
    ld         $a5,56($s0)
    beq        $a5, $s1, .L00000cb8
    nop
    lw         $at,4($s0)
    bnez       $at, .L00000a68
    nop
    ld         $v1,0($s1)
    ld         $v1,8($v1)
    beq        $v1, $s1, .L00000a68
    nop
    beqz       $a4, .L00000a68
    nop
    lw         $a5,48($s1)
    andi       $a5,$a5,0x8
    beqz       $a5, .L00000d20
    sd         $v0,72($sp)
    move       $a0,$s0
    ld         $s2,72($sp)
    move       $a1,$s1
    jal        pane_setnullclip
    ld         $s3,128($sp)
    jal        splx
    move       $a0,$s2
    move       $v0,$zero
    b          .L00000b74
    ld         $ra,120($sp)
.L00000a68:
    daddiu     $a0,$s0,40
    jal        cpsema
    sd         $a0,80($sp)
    beqz       $v0, .L00000c00
    nop
.L00000a7c:
    cache      0x14,0($sp)
    sd         $s1,56($s0)
    ld         $a6,88($sp)
    move       $a0,$s3
    jal        splx
    sh         $a6,14($s0)
    ld         $at,0($s1)
    ld         $a4,88($sp)
    ld         $at,8($at)
    ld         $ra,120($sp)
    li         $v0,2
    andi       $v1,$a4,0x2
    ld         $s3,128($sp)
    beqz       $at, .L00000bf8
    andi       $a4,$a4,0x8
    sltu       $a4,$zero,$a4
    movz       $v0,$zero,$a4
    beqz       $v1, .L00000ad0
    sb         $v0,16($sp)
    ori        $a5,$v0,0x1
    sb         $a5,16($sp)
.L00000ad0:
    ld         $t0,0($s1)
    li         $a7,1
    sw         $a7,20($sp)
    sd         $t0,8($sp)
    lw         $a6,4($s0)
    daddiu     $a0,$sp,8
    jal        GfxMessage
    sw         $a6,24($sp)
    jal        splhi
    nop
    lh         $at,14($s0)
    andi       $at,$at,0xa
    beqz       $at, .L00000bd8
    move       $s3,$v0
    ld         $v1,56($s0)
    bne        $v1, $s1, .L00000bd8
    nop
    andi       $a4,$s2,0x2
    sd         $a4,64($sp)
.L00000b1c:
    lw         $a5,4($s0)
    bnez       $a5, .L00000b88
    ld         $v1,64($sp)
    ld         $at,0($s1)
    ld         $at,8($at)
    beq        $at, $s1, .L00000b88
    nop
    beqz       $v1, .L00000b88
    nop
    lw         $a4,48($s1)
    andi       $a4,$a4,0x8
    beqz       $a4, .L00000cd0
    nop
    move       $a0,$s0
    jal        pane_setnullclip
    move       $a1,$s1
    jal        splx
    move       $a0,$s3
    ld         $ra,120($sp)
    move       $v0,$zero
    b          .L00000b74
    ld         $s3,128($sp)
.L00000b74:
    ld         $s0,112($sp)
    ld         $s1,96($sp)
    ld         $s2,104($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L00000b88:
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    daddiu     $a2,$s0,80
    li         $a1,542
    daddiu     $a0,$s0,64
    jal        sv_wait_sig
    move       $a3,$s3
    bltz       $v0, .L00000d88
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    jal        splhi
    nop
    lh         $a5,14($s0)
    andi       $a5,$a5,0xa
    beqz       $a5, .L00000bd8
    move       $s3,$v0
    ld         $at,56($s0)
    beq        $at, $s1, .L00000b1c
    nop
.L00000bd8:
    jal        splx
    move       $a0,$s3
    ld         $ra,120($sp)
    move       $v0,$zero
    b          .L00000b74
    ld         $s3,128($sp)
.L00000bf0:
    b          .L00000b74
    li         $v0,-1
.L00000bf8:
    b          .L00000b74
    li         $v0,-2
.L00000c00:
    jal        splx
    move       $a0,$s3
    daddiu     $a0,$sp,0
    jal        hold_nonfatalsig
    ld         $s3,128($sp)
    ld         $a0,80($sp)
    jal        psema
    li         $a1,798
    bltz       $v0, .L00000da0
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    jal        splhi
    nop
    lh         $v1,12($s0)
    xor        $v1,$v1,$s2
    and        $v1,$v1,$s2
    andi       $v1,$v1,0xa
    move       $s3,$v0
    beqz       $v1, .L00000e04
    sd         $v1,88($sp)
    lw         $a4,4($s0)
    bnez       $a4, .L00000a7c
    nop
    ld         $a5,0($s1)
    ld         $a5,8($a5)
    beq        $a5, $s1, .L00000a7c
    nop
    andi       $at,$s2,0x2
    beqz       $at, .L00000a7c
    sd         $v0,72($sp)
    jal        vsema
    ld         $a0,80($sp)
    lw         $v1,48($s1)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00000db4
    nop
    move       $a0,$s0
    move       $a1,$s1
    jal        pane_setnullclip
    ld         $s3,128($sp)
    jal        splx
    ld         $a0,72($sp)
    move       $v0,$zero
    b          .L00000b74
    ld         $ra,120($sp)
.L00000cb8:
    move       $a0,$v0
    jal        splx
    ld         $s3,128($sp)
    li         $v0,-1
    b          .L00000b74
    ld         $ra,120($sp)
.L00000cd0:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a2,$v0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,752
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    jal        splx
    move       $a0,$s3
    ld         $ra,120($sp)
    li         $v0,-1
    b          .L00000b74
    ld         $s3,128($sp)
.L00000d20:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a2,$v0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,608
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    jal        splx
    move       $a0,$s3
    ld         $ra,120($sp)
    li         $v0,-1
    b          .L00000b74
    ld         $s3,128($sp)
.L00000d70:
    move       $a0,$v0
    jal        splx
    ld         $s3,128($sp)
    move       $v0,$zero
    b          .L00000b74
    ld         $ra,120($sp)
.L00000d88:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $ra,120($sp)
    li         $v0,-1
    b          .L00000b74
    ld         $s3,128($sp)
.L00000da0:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    li         $v0,-1
    b          .L00000b74
    ld         $ra,120($sp)
.L00000db4:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a2,$v0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,680
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    jal        splx
    move       $a0,$s3
    ld         $ra,120($sp)
    li         $v0,-1
    b          .L00000b74
    ld         $s3,128($sp)
.L00000e04:
    sd         $v0,72($sp)
    ld         $a0,80($sp)
    jal        vsema
    ld         $s3,128($sp)
    jal        splx
    ld         $a0,72($sp)
    move       $v0,$zero
    b          .L00000b74
    ld         $ra,120($sp)

glabel init_panes
    ld         $a0,-30712($gp)
    daddiu     $sp,$sp,-48
    sd         $s7,0($sp)
    li         $a3,-1
    ld         $s7,-30704($gp)
    li         $a1,1
    sd         $ra,8($sp)
    daddiu     $a0,$a0,16
    sd         $s1,16($sp)
    jal        init_sema
    daddiu     $a2,$s7,824
    lw         $at,-30720($gp)
    sd         $s5,24($sp)
    move       $s1,$zero
    blez       $at, .L00000ef0
    ld         $ra,8($sp)
    sd         $s0,32($sp)
    ld         $s5,-30720($gp)
.L00000e70:
    dsll       $s0,$s1,0x2
    dsubu      $s0,$s0,$s1
    li         $a3,-1
    dsll       $s0,$s0,0x3
    daddiu     $a2,$gp,-30696
    dsubu      $s0,$s0,$s1
    li         $a1,1
    dsll       $s0,$s0,0x3
    addiu      $s1,$s1,1
    daddu      $s0,$s0,$s5
    jal        init_sema
    daddiu     $a0,$s0,40
    li         $a3,-1
    daddiu     $a2,$gp,-30688
    move       $a1,$zero
    jal        init_sv
    daddiu     $a0,$s0,64
    li         $a3,-1
    daddiu     $a2,$s7,840
    move       $a1,$zero
    jal        init_sv
    daddiu     $a0,$s0,72
    daddiu     $a1,$gp,-30680
    jal        spinlock_init
    daddiu     $a0,$s0,80
    lw         $at,-30720($gp)
    slt        $at,$s1,$at
    bnez       $at, .L00000e70
    nop
    ld         $s5,24($sp)
    ld         $s0,32($sp)
    ld         $ra,8($sp)
.L00000ef0:
    ld         $s1,16($sp)
    ld         $s7,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_init_panes
    daddiu     $sp,$sp,-64
    lw         $a1,-30720($gp)
    sd         $s4,0($sp)
    sd         $s0,8($sp)
    move       $s4,$a0
    blez       $a1, .L00000fc0
    move       $s0,$zero
    sd         $ra,24($sp)
    sd         $s1,16($sp)
    sd         $s5,32($sp)
    b          .L00000f4c
    ld         $s5,-30720($gp)
.L00000f30:
    ld         $at,160($s1)
    bnez       $at, .L00000fa0
    nop
.L00000f3c:
    lw         $a1,-30720($gp)
.L00000f40:
    slt        $v0,$s0,$a1
    beqz       $v0, .L00000fb4
    nop
.L00000f4c:
    dsll       $s1,$s0,0x2
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
    ld         $v1,32($s4)
    daddu      $s1,$s1,$s5
    ld         $a2,88($s1)
    bne        $v1, $a2, .L00000f40
    addiu      $s0,$s0,1
    cache      0x14,0($sp)
    lh         $at,14($s1)
    beqz       $at, .L00000f30
    sh         $zero,12($s1)
    cache      0x14,0($sp)
    sd         $zero,56($s1)
    daddiu     $a0,$s1,40
    jal        vsema
    sh         $zero,14($s1)
    b          .L00000f30
    nop
.L00000fa0:
    move       $a0,$s4
    jal        rrmSwapUnGroup
    move       $a1,$s1
    b          .L00000f3c
    nop
.L00000fb4:
    ld         $s5,32($sp)
    ld         $s1,16($sp)
    ld         $ra,24($sp)
.L00000fc0:
    ld         $s0,8($sp)
    ld         $s4,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel RRM_init
    daddiu     $sp,$sp,-48
    sd         $s1,32($sp)
    sd         $s4,40($sp)
    lw         $a1,0($gp)
    sd         $s5,16($sp)
    sd         $s7,8($sp)
    slti       $at,$a1,2
    sd         $s0,0($sp)
    sd         $ra,24($sp)
    bnez       $at, .L0000106c
    li         $s0,1
    sd         $ra,24($sp)
    ld         $s7,-30704($gp)
    ld         $s5,-30664($gp)
    ld         $s1,-30672($gp)
    li         $s4,1
.L00001010:
    cache      0x14,0($sp)
    dsll       $v0,$s0,0x2
    li         $a3,-1
    dsubu      $v0,$v0,$s0
    daddiu     $a2,$s7,856
    dsll       $v0,$v0,0x2
    dsll       $a0,$s0,0x4
    dsubu      $v0,$v0,$s0
    li         $a1,1
    dsll       $v0,$v0,0x4
    daddu      $a0,$a0,$s5
    daddu      $v0,$v0,$s1
    addiu      $s0,$s0,1
    jal        init_sema
    sb         $s4,82($v0)
    lw         $a1,0($gp)
    slt        $v1,$s0,$a1
    bnez       $v1, .L00001010
    nop
    ld         $s7,8($sp)
    ld         $s5,16($sp)
    ld         $s1,32($sp)
    ld         $s4,40($sp)
.L0000106c:
    jal        init_panes
    sw         $a1,-30720($gp)
    ld         $ra,24($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_Init
    ld         $a1,-30704($gp)
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,48
    jal        spinlock_init
    daddiu     $a1,$a1,872
    li         $a3,-1
    daddiu     $a2,$gp,-30656
    li         $a1,1
    jal        init_sema
    daddiu     $a0,$s8,56
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel rrmDoUnMapGfx
    lw         $a2,48($a0)
    andi       $at,$a2,0x10
    daddiu     $sp,$sp,-32
    beqz       $at, .L000010e4
    sd         $a0,0($sp)
.L000010dc:
    jr         $ra
    daddiu     $sp,$sp,32
.L000010e4:
    cache      0x14,0($sp)
    ld         $a0,0($sp)
    ori        $v1,$a2,0x10
    sw         $v1,48($a0)
    ld         $v0,24($a0)
    ld         $v0,104($v0)
    sd         $ra,8($sp)
    jalr       $v0
    nop
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    lw         $a1,48($ra)
    li         $at,-17
    and        $a1,$a1,$at
    sw         $a1,48($ra)
    b          .L000010dc
    ld         $ra,8($sp)

glabel rrmUnMapGfx
    ld         $at,96($a0)
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    beqz       $at, .L00001198
    move       $s0,$a0
    lw         $v1,48($s0)
    andi       $v1,$v1,0x8
    bnez       $v1, .L00001198
    sd         $ra,16($sp)
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    beqz       $v0, .L000011a8
    ld         $ra,16($sp)
    ld         $a1,16($v0)
    beqz       $a1, .L000011a8
    nop
    jal        splhi
    nop
    sd         $v0,8($sp)
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    ld         $a0,8($sp)
    jal        splx
    ld         $s0,0($sp)
    b          .L000011a8
    ld         $ra,16($sp)
.L00001198:
    sd         $ra,16($sp)
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    ld         $ra,16($sp)
.L000011a8:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel rrmInvalidateRN
    daddiu     $sp,$sp,-80
    ld         $v0,32($a0)
    sd         $ra,32($sp)
    ld         $at,72($v0)
    sd         $s0,0($sp)
    sd         $s8,8($sp)
    move       $s0,$a0
    sd         $a2,24($sp)
    beq        $at, $a0, .L0000121c
    move       $s8,$a1
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $a3,32($s0)
    sd         $s0,72($a3)
    ld         $v1,32($s0)
    lw         $v1,104($v1)
    beqz       $v1, .L0000121c
    nop
.L00001204:
    jal        us_delay
    li         $a0,2
    ld         $a4,32($s0)
    lw         $a4,104($a4)
    bnez       $a4, .L00001204
    nop
.L0000121c:
    jal        splhi
    ld         $s0,0($sp)
    cache      0x14,0($sp)
    ld         $t1,24($sp)
    lhu        $t0,6($s8)
    and        $a6,$t0,$t1
    li         $a5,-2
    xor        $a6,$a6,$t1
    nor        $a7,$t1,$zero
    sltu       $a6,$zero,$a6
    and        $a7,$a7,$t0
    sh         $a7,6($s8)
    movz       $a5,$zero,$a6
    move       $a0,$v0
    jal        splx
    sd         $a5,16($sp)
    ld         $ra,32($sp)
    ld         $v0,16($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel RRM_InvalidateRN
    lw         $a7,8($a2)
    daddiu     $sp,$sp,-96
    li         $a6,255
    move       $a1,$a0
    or         $at,$a6,$a7
    move       $v0,$a2
    li         $v1,-203
    beq        $at, $a6, .L000012a0
    and        $v1,$a7,$v1
    li         $v0,22
.L00001298:
    jr         $ra
    daddiu     $sp,$sp,96
.L000012a0:
    sd         $a1,24($sp)
    sd         $v0,0($sp)
    sd         $a3,32($sp)
    beqz       $v1, .L000012bc
    li         $v0,22
    b          .L00001298
    nop
.L000012bc:
    ld         $a2,24($sp)
    ld         $a1,0($sp)
    sd         $ra,48($sp)
    move       $a0,$a7
    jal        invalidate_pane
    lw         $a1,4($a1)
    ld         $a4,0($sp)
    lw         $a4,8($a4)
    andi       $a4,$a4,0x8
    beqz       $a4, .L000013b0
    sd         $v0,40($sp)
    ld         $a0,0($sp)
    ld         $a1,24($sp)
    jal        clip2pane
    lw         $a0,4($a0)
    move       $a0,$v0
    beqz       $v0, .L000013e0
    ld         $ra,48($sp)
    ld         $a1,24($sp)
    ld         $a1,72($a1)
    beqz       $a1, .L00001434
    nop
    lw         $a2,20($a0)
    li         $a5,255
    and        $a4,$a2,$a5
    beq        $a4, $a5, .L000013a0
    nop
    ld         $a6,24($sp)
    sd         $a0,8($sp)
    move       $a0,$a6
    ld         $a6,24($a6)
    ld         $a6,144($a6)
    jalr       $a6
    nop
    ld         $a0,8($sp)
    move       $a6,$v0
    bltz       $v0, .L0000143c
    ld         $ra,48($sp)
    blez       $a6, .L000013a0
    nop
    li         $at,2
    bne        $a6, $at, .L00001380
    nop
    ld         $v1,24($sp)
    ld         $v1,72($v1)
    bnez       $v1, .L000013f0
    sd         $v1,16($sp)
    b          .L00001298
    li         $v0,14
.L00001380:
    ld         $a0,8($sp)
    jal        validate_pane_buffer
    ld         $a1,24($sp)
    cache      0x14,0($sp)
    ld         $a4,0($sp)
    li         $a0,1
    sw         $a0,16($a4)
    ld         $a0,8($sp)
.L000013a0:
    cache      0x14,0($sp)
    ld         $at,0($sp)
    lw         $a5,32($a0)
    sw         $a5,12($at)
.L000013b0:
    cache      0x14,0($sp)
    ld         $a1,32($sp)
    ld         $v1,0($sp)
    li         $a2,20
    ld         $v0,40($sp)
    move       $a0,$v1
    jal        copyout
    sw         $v0,8($v1)
    beqz       $v0, .L000013e8
    ld         $ra,48($sp)
    b          .L00001298
    li         $v0,14
.L000013e0:
    b          .L00001298
    li         $v0,22
.L000013e8:
    b          .L00001298
    move       $v0,$zero
.L000013f0:
    ld         $a0,24($sp)
    ld         $a1,16($sp)
    jal        rrmInvalidateRN
    li         $a2,16
    ld         $a0,8($sp)
    bnez       $v0, .L000013a0
    ld         $ra,48($sp)
    ld         $a0,24($sp)
    ld         $a2,24($a0)
    ld         $a2,152($a2)
    ld         $a1,16($sp)
    jalr       $a2
    ld         $a0,32($a0)
    jal        rrmUnMapGfx
    ld         $a0,24($sp)
    b          .L000013a0
    ld         $a0,8($sp)
.L00001434:
    b          .L00001298
    li         $v0,14
.L0000143c:
    b          .L00001298
    negu       $v0,$a6

glabel rrmUnbindProcFromRN
    daddiu     $sp,$sp,-48
    ld         $at,72($a0)
    sd         $s0,8($sp)
    li         $v0,-1
    sd         $s1,16($sp)
    move       $s0,$a0
    beqz       $at, .L000014c8
    move       $s1,$zero
    ld         $v1,96($s0)
    beqz       $v1, .L00001480
    sd         $ra,24($sp)
    lw         $a1,48($s0)
    andi       $a1,$a1,0x8
    beqz       $a1, .L000014d4
    sd         $ra,24($sp)
.L00001480:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    cache      0x14,0($sp)
    sd         $zero,72($s0)
    ld         $s0,8($sp)
    beqz       $s1, .L000014b8
    ld         $ra,24($sp)
    ld         $a0,16($s1)
    beqz       $a0, .L000014b8
    ld         $s0,8($sp)
    lw         $a1,0($sp)
    jal        GfxListWriterUnlock
    ld         $s1,16($sp)
    ld         $ra,24($sp)
.L000014b8:
    move       $v0,$zero
    ld         $s1,16($sp)
.L000014c0:
    jr         $ra
    daddiu     $sp,$sp,48
.L000014c8:
    ld         $s1,16($sp)
    b          .L000014c0
    ld         $s0,8($sp)
.L000014d4:
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    beqz       $v0, .L00001480
    move       $s1,$v0
    ld         $a0,16($v0)
    beqz       $a0, .L00001480
    nop
    jal        GfxListWriterLock
    nop
    b          .L00001480
    sw         $v0,0($sp)

glabel RRM_BindProcToRN
    lw         $at,48($a0)
    daddiu     $sp,$sp,-80
    sd         $s1,24($sp)
    andi       $at,$at,0x8
    sd         $s0,16($sp)
    move       $s1,$a0
    beqz       $at, .L000015f8
    move       $s0,$a1
    ld         $a0,72($s1)
    beqz       $a0, .L0000153c
    nop
    bne        $s0, $a0, .L00001594
    sd         $a0,8($sp)
.L0000153c:
    li         $v0,1
    beqz       $s0, .L00001558
    sd         $ra,32($sp)
    cache      0x14,0($sp)
    sd         $ra,32($sp)
    sb         $v0,84($s0)
    sd         $s1,64($s0)
.L00001558:
    cache      0x14,0($sp)
    ld         $a0,32($s1)
    sd         $s0,72($s1)
    jal        valusema
    daddiu     $a0,$a0,56
    ld         $ra,32($sp)
    ld         $s1,24($sp)
    beqz       $v0, .L00001588
    ld         $s0,16($sp)
    jal        force_resched
    nop
    ld         $ra,32($sp)
.L00001588:
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,80
.L00001594:
    ld         $a0,8($sp)
    lh         $a0,2($a0)
    ld         $a2,-30664($gp)
    li         $a1,25
    sd         $ra,32($sp)
    dsll       $a0,$a0,0x4
    daddu      $a0,$a0,$a2
    jal        psema
    sd         $a0,0($sp)
    cache      0x14,0($sp)
    ld         $a1,8($sp)
    ld         $a2,56($a1)
    bnez       $a2, .L000015dc
    sb         $zero,84($a1)
    jal        rrmCloseRN
    move       $a0,$s1
    b          .L000015e4
    nop
.L000015dc:
    jal        rrmUnbindProcFromRN
    move       $a0,$s1
.L000015e4:
    jal        vsema
    ld         $a0,0($sp)
    ld         $ra,32($sp)
    b          .L0000153c
    nop
.L000015f8:
    sd         $ra,32($sp)
    jal        rrmUnbindProcFromRN
    move       $a0,$s1
    b          .L00001558
    nop

glabel RRM_BindRNToReadAndClip
    daddiu     $sp,$sp,-144
    sd         $s0,56($sp)
    lw         $a6,4($a2)
    move       $v0,$a3
    sd         $s1,64($sp)
    sd         $s2,80($sp)
    move       $s1,$a0
    move       $s0,$a1
    beqz       $a6, .L00001908
    move       $s2,$a2
    ld         $a0,120($s0)
    sd         $ra,96($sp)
    beqz       $a0, .L0000169c
    sd         $v0,72($sp)
    move       $a1,$s1
    jal        validate_my_pane_buffer
    lhu        $a2,4($s0)
    ld         $a0,120($s0)
    jal        unbind_pane
    move       $a1,$s1
    lhu        $a2,4($s0)
    andi       $at,$a2,0x40
    beqz       $at, .L00001688
    nop
    ld         $a0,128($s0)
    jal        validate_my_pane_buffer
    move       $a1,$s1
    ld         $a0,128($s0)
    jal        unbind_pane
    move       $a1,$s1
    lhu        $a2,4($s0)
.L00001688:
    cache      0x14,0($sp)
    li         $v1,-9
    and        $v1,$a2,$v1
    sh         $v1,4($s0)
    lw         $a6,4($s2)
.L0000169c:
    move       $a0,$s1
    jal        bind_pane
    move       $a1,$a6
    cache      0x14,0($sp)
    sd         $v0,120($s0)
    sw         $zero,136($s0)
    lw         $a1,8($s2)
    lw         $a4,4($s2)
    li         $at,-65
    move       $a0,$v0
    move       $a2,$v0
    ld         $ra,96($sp)
    bne        $a4, $a1, .L0000187c
    move       $v0,$a2
    cache      0x14,0($sp)
    sw         $zero,140($s0)
    lhu        $a5,4($s0)
    sd         $a2,128($s0)
    and        $a5,$a5,$at
    sh         $a5,4($s0)
.L000016ec:
    lh         $v1,12($a0)
    andi       $v1,$v1,0x2
    beqz       $v1, .L00001858
    nop
    lh         $a4,12($v0)
    andi       $a4,$a4,0x40
    beqz       $a4, .L00001858
    sd         $s4,88($sp)
    li         $s4,1
.L00001710:
    beqz       $s4, .L0000191c
    nop
    ld         $a5,32($s1)
    ld         $a5,8($a5)
    beq        $a5, $s0, .L000018a8
    nop
.L00001728:
    ld         $v0,0($s1)
    ld         $at,8($v0)
    li         $a4,132
    beqz       $at, .L00001864
    li         $a1,3
    sd         $v0,0($sp)
    lw         $a5,48($s1)
    andi       $a5,$a5,0x8
    li         $at,4
    sw         $a1,12($sp)
    sltu       $a5,$zero,$a5
    movz       $a4,$at,$a5
    sb         $a4,8($sp)
    lw         $a1,8($s2)
    lw         $v1,4($s2)
    beq        $v1, $a1, .L00001788
    nop
    sw         $a1,16($sp)
    lw         $v1,0($s2)
    sw         $v1,20($sp)
    lw         $at,24($s0)
    beqz       $s4, .L00001958
    sw         $at,24($sp)
.L00001784:
    lw         $a1,8($s2)
.L00001788:
    cache      0x14,0($sp)
    sw         $a1,24($s0)
    lw         $v1,4($s2)
    sw         $v1,16($sp)
    lw         $at,0($s2)
    sw         $at,20($sp)
    move       $a4,$s4
    ld         $s4,88($sp)
    lw         $a5,20($s0)
    beqz       $a4, .L0000192c
    sw         $a5,24($sp)
.L000017b4:
    cache      0x14,0($sp)
    lw         $a5,4($s2)
    sw         $a5,20($s0)
    lw         $a4,48($s1)
    andi       $a4,$a4,0x8
    beqz       $a4, .L0000180c
    ld         $s1,64($sp)
    cache      0x14,0($sp)
    lw         $v1,8($s2)
    lw         $at,4($s2)
    ld         $v0,120($s0)
    ld         $s1,64($sp)
    lw         $v0,0($v0)
    beq        $at, $v1, .L00001820
    sw         $v0,12($s2)
    cache      0x14,0($sp)
    ld         $v1,72($sp)
    ld         $a4,128($s0)
    ld         $s0,56($sp)
    lw         $a4,0($a4)
    bnez       $v1, .L00001834
    sw         $a4,16($s2)
.L0000180c:
    ld         $s2,80($sp)
    move       $v0,$zero
    ld         $s0,56($sp)
.L00001818:
    jr         $ra
    daddiu     $sp,$sp,144
.L00001820:
    cache      0x14,0($sp)
    ld         $a5,72($sp)
    sw         $v0,16($s2)
    beqz       $a5, .L0000180c
    ld         $s0,56($sp)
.L00001834:
    move       $a0,$s2
    ld         $a1,72($sp)
    jal        copyout
    li         $a2,20
    ld         $s2,80($sp)
    beqz       $v0, .L0000180c
    ld         $ra,96($sp)
    b          .L00001818
    li         $v0,14
.L00001858:
    sd         $s4,88($sp)
    b          .L00001710
    move       $s4,$zero
.L00001864:
    ld         $s2,80($sp)
    ld         $s1,64($sp)
    ld         $s0,56($sp)
    li         $v0,14
    b          .L00001818
    ld         $s4,88($sp)
.L0000187c:
    jal        bind_pane
    move       $a0,$s1
    cache      0x14,0($sp)
    ld         $a0,120($s0)
    sw         $zero,140($s0)
    lhu        $ra,4($s0)
    sd         $v0,128($s0)
    ori        $ra,$ra,0x40
    sh         $ra,4($s0)
    b          .L000016ec
    ld         $ra,96($sp)
.L000018a8:
    jal        RRM_CheckValidFault
    move       $a0,$s1
    bltz       $v0, .L00001940
    ld         $ra,96($sp)
    ld         $at,24($s1)
    ld         $a2,32($s1)
    ld         $at,80($at)
    ld         $a3,120($s0)
    move       $a0,$s1
    move       $a1,$s0
    daddiu     $a3,$a3,96
    jalr       $at
    ld         $a2,8($a2)
    li         $v1,-1
    beq        $v0, $v1, .L00001968
    ld         $ra,96($sp)
    cache      0x14,0($sp)
    ld         $a5,120($s0)
    ld         $a4,128($s0)
    lw         $a5,8($a5)
    sw         $a5,136($s0)
    lw         $a4,8($a4)
    b          .L00001728
    sw         $a4,140($s0)
.L00001908:
    ld         $s2,80($sp)
    ld         $s1,64($sp)
    li         $v0,22
    b          .L00001818
    ld         $s0,56($sp)
.L0000191c:
    jal        rrmUnMapGfx
    move       $a0,$s1
    b          .L00001728
    ld         $ra,96($sp)
.L0000192c:
    daddiu     $a0,$sp,0
    jal        GfxMessage
    ld         $s4,88($sp)
    b          .L000017b4
    ld         $ra,96($sp)
.L00001940:
    ld         $s2,80($sp)
    ld         $s1,64($sp)
    ld         $s0,56($sp)
    li         $v0,14
    b          .L00001818
    ld         $s4,88($sp)
.L00001958:
    jal        GfxMessage
    daddiu     $a0,$sp,0
    b          .L00001784
    ld         $ra,96($sp)
.L00001968:
    ld         $s2,80($sp)
    ld         $s1,64($sp)
    ld         $s0,56($sp)
    li         $v0,14
    b          .L00001818
    ld         $s4,88($sp)

glabel RRM_BindRNToClip
    daddiu     $sp,$sp,-96
    sd         $ra,24($sp)
    sd         $a2,40($sp)
    lw         $v1,0($a2)
    sw         $v1,0($sp)
    sd         $a3,48($sp)
    lw         $v0,4($a2)
    sw         $v0,4($sp)
    sd         $s3,32($sp)
    move       $s3,$a0
    move       $a3,$zero
    lw         $at,4($a2)
    daddiu     $a2,$sp,0
    jal        RRM_BindRNToReadAndClip
    sw         $at,8($sp)
    lw         $a4,48($s3)
    andi       $a4,$a4,0x8
    ld         $s3,32($sp)
    move       $a0,$v0
    beqz       $a4, .L000019dc
    ld         $ra,24($sp)
    beqz       $v0, .L000019e8
    ld         $s3,32($sp)
.L000019dc:
    move       $v0,$a0
.L000019e0:
    jr         $ra
    daddiu     $sp,$sp,96
.L000019e8:
    cache      0x14,0($sp)
    ld         $a1,48($sp)
    lw         $a5,12($sp)
    ld         $a6,40($sp)
    li         $a2,12
    sd         $a0,56($sp)
    move       $a0,$a6
    jal        copyout
    sw         $a5,8($a6)
    ld         $a0,56($sp)
    beqz       $v0, .L000019dc
    ld         $ra,24($sp)
    b          .L000019e0
    li         $v0,14

glabel RRM_UnbindRNFromClip
    daddiu     $sp,$sp,-48
    sd         $ra,0($sp)
    move       $a1,$a0
    jal        pane_cleanup
    lw         $a0,4($a2)
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_OpenRN
    daddiu     $sp,$sp,-144
    ld         $v0,32($a0)
    sd         $ra,80($sp)
    ld         $at,72($v0)
    sd         $s0,64($sp)
    sd         $s2,8($sp)
    move       $s0,$a0
    sd         $a4,0($sp)
    bne        $at, $a0, .L00001ad4
    move       $s2,$a2
.L00001a6c:
    ld         $at,32($s0)
    daddiu     $at,$at,80
    li         $v1,1
.L00001a78:
    ll         $a5,0($at)
    addu       $a3,$a5,$v1
    move       $a5,$a3
    sc         $a3,0($at)
    beqzl      $a3, .L00001a78
    nop
    lw         $v1,0($s2)
    li         $a3,-1
    beq        $v1, $a3, .L00001b1c
    li         $v0,22
    ld         $s2,8($sp)
.L00001aa4:
    ld         $a3,32($s0)
    daddiu     $a3,$a3,80
    li         $a5,-1
.L00001ab0:
    ll         $v1,0($a3)
    addu       $s0,$v1,$a5
    move       $v1,$s0
    sc         $s0,0($a3)
    beqzl      $s0, .L00001ab0
    nop
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00001ad4:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $ra,32($s0)
    sd         $s0,72($ra)
    ld         $a5,32($s0)
    lw         $a5,104($a5)
    beqz       $a5, .L00001a6c
    ld         $ra,80($sp)
.L00001afc:
    jal        us_delay
    li         $a0,2
    ld         $at,32($s0)
    lw         $at,104($at)
    bnez       $at, .L00001afc
    nop
    b          .L00001a6c
    ld         $ra,80($sp)
.L00001b1c:
    sd         $s4,72($sp)
    sd         $ra,80($sp)
    ld         $v0,32($s0)
    ld         $a0,-30712($gp)
    li         $a1,25
    sd         $v0,48($sp)
    daddiu     $a0,$a0,16
    jal        psema
    sd         $a0,40($sp)
    lw         $v0,0($gp)
    slti       $a3,$v0,2
    li         $a1,1
    ld         $a2,-30672($gp)
    bnez       $a3, .L00001d6c
    li         $s4,1
.L00001b58:
    dsll       $a5,$s4,0x2
    dsubu      $a5,$a5,$s4
    dsll       $a5,$a5,0x2
    dsubu      $a5,$a5,$s4
    dsll       $a5,$a5,0x4
    daddu      $a5,$a5,$a2
    lbu        $a5,82($a5)
    beq        $a5, $a1, .L00001b94
    nop
    addiu      $s4,$s4,1
    dsll32     $s4,$s4,0x10
    dsra32     $s4,$s4,0x10
    slt        $at,$s4,$v0
    bnez       $at, .L00001b58
    nop
.L00001b94:
    bne        $s4, $v0, .L00001bb8
    nop
    ld         $a0,40($sp)
    ld         $s2,8($sp)
    jal        vsema
    ld         $s4,72($sp)
    li         $v0,12
    b          .L00001aa4
    ld         $ra,80($sp)
.L00001bb8:
    dsll       $t8,$s4,0x2
    dsubu      $t8,$t8,$s4
    dsll       $t8,$t8,0x2
    dsubu      $t8,$t8,$s4
    dsll       $t8,$t8,0x4
    daddu      $t8,$t8,$a2
    sd         $t8,56($sp)
    move       $a0,$t8
    lh         $t8,0($t8)
    li         $a1,176
    jal        bzero
    sd         $t8,32($sp)
    cache      0x14,0($sp)
    ld         $t9,56($sp)
    ld         $a0,40($sp)
    jal        vsema
    sb         $zero,82($t9)
    cache      0x14,0($sp)
    ld         $v1,56($sp)
    ld         $a5,32($sp)
    sd         $s0,56($v1)
    sd         $s0,64($v1)
    sll        $a5,$a5,0x10
    or         $a5,$a5,$s4
    sw         $a5,0($v1)
    ld         $a3,32($s0)
    sd         $a3,72($v1)
    lw         $a1,4($s2)
    li         $v0,52
    sh         $v0,6($v1)
    ori        $a1,$a1,0xb5
    andi       $a1,$a1,0xffff
    sh         $a1,4($v1)
    ld         $at,0($s0)
    ld         $at,8($at)
    ld         $s4,72($sp)
    li         $a7,-5
    beq        $at, $s0, .L00001d44
    ld         $s2,8($sp)
    andi       $at,$a1,0x2
    ld         $s2,8($sp)
    beqz       $at, .L00001d44
    ld         $s4,72($sp)
.L00001c64:
    cache      0x14,0($sp)
    ld         $v1,56($sp)
    sd         $zero,112($v1)
    li         $a3,-1
    sd         $zero,8($v1)
    daddiu     $a2,$gp,-30648
    and        $v0,$a7,$v0
    sh         $v0,6($v1)
    move       $a1,$zero
    li         $a0,-1
    sh         $a0,80($v1)
    daddiu     $a0,$v1,48
    jal        init_sv
    sd         $a0,16($sp)
    ld         $a0,56($sp)
    daddiu     $a1,$gp,-30640
    daddiu     $a0,$a0,104
    jal        spinlock_init
    sd         $a0,24($sp)
    ld         $a2,24($s0)
    ld         $a2,64($a2)
    ld         $a0,48($sp)
    jalr       $a2
    ld         $a1,56($sp)
    beqz       $v0, .L00001cf8
    ld         $ra,80($sp)
    jal        sv_destroy
    ld         $a0,16($sp)
    jal        spinlock_destroy
    ld         $a0,24($sp)
    cache      0x14,0($sp)
    ld         $a5,56($sp)
    li         $v0,12
    ld         $ra,80($sp)
    li         $a3,1
    b          .L00001aa4
    sb         $a3,82($a5)
.L00001cf8:
    cache      0x14,0($sp)
    ld         $a3,48($sp)
    lw         $v1,16($a3)
    addiu      $v1,$v1,1
    sw         $v1,16($a3)
    lw         $at,48($s0)
    andi       $at,$at,0x8
    beqz       $at, .L00001d74
    nop
    cache      0x14,0($sp)
    ld         $a3,56($sp)
    sb         $zero,84($a3)
.L00001d28:
    cache      0x14,0($sp)
    ld         $a5,56($sp)
    ld         $at,0($sp)
    lw         $a5,0($a5)
    move       $v0,$zero
    b          .L00001aa4
    sw         $a5,0($at)
.L00001d44:
    cache      0x14,0($sp)
    ld         $v1,56($sp)
    li         $a7,-5
    and        $at,$a7,$a1
    li         $a3,-129
    lhu        $v0,6($v1)
    andi       $at,$at,0xffff
    and        $at,$at,$a3
    b          .L00001c64
    sh         $at,4($v1)
.L00001d6c:
    b          .L00001b94
    ld         $a2,-30672($gp)
.L00001d74:
    jal        kern_malloc
    li         $a0,16
    cache      0x14,0($sp)
    ld         $v1,56($sp)
    sd         $v1,0($v0)
    ld         $ra,80($sp)
    ld         $a3,64($s0)
    sd         $a3,8($v0)
    sd         $v0,64($s0)
    li         $v0,1
    b          .L00001d28
    sb         $v0,84($v1)

glabel rrmCloseRN
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-48
    sd         $s2,8($sp)
    ld         $s2,32($a0)
    sd         $zero,56($a1)
    lw         $at,48($a0)
    sd         $s1,16($sp)
    andi       $at,$at,0x8
    sd         $s0,0($sp)
    move       $s1,$a0
    beqz       $at, .L00001e08
    move       $s0,$a1
    lbu        $v1,84($s0)
    beqz       $v1, .L00001e00
    nop
    ld         $a3,64($s0)
    beq        $a3, $s1, .L00001e00
    nop
    ld         $s1,16($sp)
    ld         $s0,0($sp)
    move       $v0,$zero
    b          .L0000201c
    ld         $s2,8($sp)
.L00001e00:
    cache      0x14,0($sp)
    sd         $s1,64($s0)
.L00001e08:
    ld         $v0,32($s1)
    ld         $a4,72($v0)
    bne        $a4, $s1, .L00002038
    sd         $ra,24($sp)
.L00001e18:
    ld         $a7,32($s1)
    daddiu     $a7,$a7,80
    li         $t0,1
.L00001e24:
    ll         $a6,0($a7)
    addu       $t1,$a6,$t0
    move       $a6,$t1
    sc         $t1,0($a7)
    beqzl      $t1, .L00001e24
    nop
    ld         $a5,24($s1)
    ld         $a5,72($a5)
    move       $a2,$s0
    move       $a1,$s1
    jalr       $a5
    move       $a0,$s2
    ld         $at,72($s1)
    beq        $at, $s0, .L000020c0
    nop
.L00001e60:
    jal        splhi
    nop
    ld         $a6,168($s2)
    move       $a0,$v0
    move       $a1,$a6
    beqz       $a6, .L00001ebc
    move       $a2,$a6
.L00001e7c:
    beq        $s0, $a1, .L00001e98
    ld         $a5,168($a1)
    move       $a2,$a1
    bnez       $a5, .L00001e7c
    move       $a1,$a5
    b          .L00001ebc
    nop
.L00001e98:
    bne        $a6, $a1, .L00001eac
    nop
    cache      0x14,0($sp)
    b          .L00001eb4
    sd         $a5,168($s2)
.L00001eac:
    cache      0x14,0($sp)
    sd         $a5,168($a2)
.L00001eb4:
    cache      0x14,0($sp)
    sd         $zero,168($a1)
.L00001ebc:
    ld         $v0,136($s2)
    move       $a1,$v0
    beqz       $v0, .L00001ef8
    move       $a2,$v0
.L00001ecc:
    beq        $s0, $a1, .L00002024
    ld         $a5,160($a1)
    move       $a2,$a1
    bnez       $a5, .L00001ecc
    move       $a1,$a5
    b          .L00001ef8
    nop
.L00001ee8:
    cache      0x14,0($sp)
    sd         $a5,160($a2)
.L00001ef0:
    cache      0x14,0($sp)
    sd         $zero,160($a1)
.L00001ef8:
    jal        splx
    nop
    lw         $v1,48($s1)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00002090
    nop
.L00001f10:
    cache      0x14,0($sp)
    ld         $a0,120($s0)
    lh         $a3,0($s0)
    addiu      $a3,$a3,1
    andi       $a3,$a3,0x7fff
    beqz       $a0, .L00001f50
    sh         $a3,0($s0)
    jal        unbind_pane
    move       $a1,$s1
    ld         $a4,120($s0)
    ld         $a0,128($s0)
    bne        $a4, $a0, .L00002080
    nop
.L00001f44:
    cache      0x14,0($sp)
    sd         $zero,120($s0)
    sd         $zero,128($s0)
.L00001f50:
    jal        sv_destroy
    daddiu     $a0,$s0,48
    jal        spinlock_destroy
    daddiu     $a0,$s0,104
    cache      0x14,0($sp)
    li         $v1,1
    sb         $v1,82($s0)
    ld         $at,8($s2)
    li         $a3,-1
    bne        $at, $s0, .L00001f84
    ld         $ra,24($sp)
    cache      0x14,0($sp)
    sd         $zero,8($s2)
.L00001f84:
    lh         $v0,80($s0)
    beq        $v0, $a3, .L00001fd8
    dsll       $v1,$v0,0x3
    cache      0x14,0($sp)
    ld         $at,24($s2)
    daddu      $at,$at,$v1
    sd         $zero,0($at)
    ld         $a4,0($s1)
    ld         $a4,8($a4)
    beq        $a4, $s1, .L00001fd8
    nop
    ld         $v0,96($s0)
    beqz       $v0, .L000020e8
    ld         $a0,88($s0)
    cache      0x14,0($sp)
    sd         $a0,88($v0)
.L00001fc4:
    ld         $a0,88($s0)
    beqz       $a0, .L000020f4
    ld         $v0,96($s0)
    cache      0x14,0($sp)
    sd         $v0,96($a0)
.L00001fd8:
    cache      0x14,0($sp)
    lw         $s0,16($s2)
    addiu      $s0,$s0,-1
    sw         $s0,16($s2)
    ld         $a4,32($s1)
    daddiu     $a4,$a4,80
    li         $s0,-1
.L00001ff4:
    ll         $a3,0($a4)
    addu       $s1,$a3,$s0
    move       $a3,$s1
    sc         $s1,0($a4)
    beqzl      $s1, .L00001ff4
    nop
    ld         $s2,8($sp)
    ld         $s1,16($sp)
    move       $v0,$zero
    ld         $s0,0($sp)
.L0000201c:
    jr         $ra
    daddiu     $sp,$sp,48
.L00002024:
    bne        $v0, $a1, .L00001ee8
    nop
    cache      0x14,0($sp)
    b          .L00001ef0
    sd         $a5,136($s2)
.L00002038:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $v1,32($s1)
    sd         $s1,72($v1)
    ld         $at,32($s1)
    lw         $at,104($at)
    beqz       $at, .L00001e18
    nop
.L00002060:
    jal        us_delay
    li         $a0,2
    ld         $a3,32($s1)
    lw         $a3,104($a3)
    bnez       $a3, .L00002060
    nop
    b          .L00001e18
    nop
.L00002080:
    jal        unbind_pane
    move       $a1,$s1
    b          .L00001f44
    nop
.L00002090:
    ld         $v0,64($s1)
    ld         $a4,0($v0)
    bne        $a4, $s0, .L00002100
    nop
    cache      0x14,0($sp)
    ld         $at,8($v0)
    move       $a0,$v0
    sd         $at,64($s1)
.L000020b0:
    jal        kern_free
    nop
    b          .L00001f10
    nop
.L000020c0:
    jal        rrmUnbindProcFromRN
    move       $a0,$s1
    beqz       $v0, .L00001e60
    nop
    ld         $a1,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,888
    b          .L00001e60
    nop
.L000020e8:
    cache      0x14,0($sp)
    b          .L00001fc4
    sd         $a0,32($s2)
.L000020f4:
    cache      0x14,0($sp)
    b          .L00001fd8
    sd         $v0,40($s2)
.L00002100:
    ld         $a0,8($v0)
    beqz       $a0, .L000020b0
    move       $a1,$v0
.L0000210c:
    ld         $a3,0($a0)
    beq        $a3, $s0, .L0000212c
    ld         $v0,8($a0)
    move       $a1,$a0
    bnez       $v0, .L0000210c
    move       $a0,$v0
    b          .L000020b0
    nop
.L0000212c:
    cache      0x14,0($sp)
    b          .L000020b0
    sd         $v0,8($a1)

glabel RRM_CloseRN
    daddiu     $sp,$sp,-48
    sd         $ra,0($sp)
    jal        rrmCloseRN
    nop
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_Exit
    lw         $at,48($a0)
    daddiu     $sp,$sp,-80
    andi       $at,$at,0x8
    sd         $s0,8($sp)
    beqz       $at, .L000022dc
    move       $s0,$a0
    sd         $s2,48($sp)
    ld         $s2,72($s0)
    beqz       $s2, .L0000218c
    nop
    ld         $v1,56($s2)
    bne        $v1, $s0, .L0000236c
    nop
.L0000218c:
    lw         $v0,0($gp)
    slti       $a2,$v0,2
    sd         $s3,40($sp)
    ld         $s2,48($sp)
    bnez       $a2, .L00002254
    li         $s3,1
    sd         $ra,32($sp)
    sd         $s1,24($sp)
    sd         $s5,16($sp)
    sd         $s4,56($sp)
    b          .L000021e0
    ld         $s4,-30672($gp)
.L000021bc:
    jal        vsema
    move       $a0,$s1
    lw         $v0,0($gp)
.L000021c8:
    addiu      $s3,$s3,1
    dsll32     $s3,$s3,0x10
    dsra32     $s3,$s3,0x10
    slt        $a3,$s3,$v0
    beqz       $a3, .L00002244
    nop
.L000021e0:
    dsll       $s5,$s3,0x2
    dsubu      $s5,$s5,$s3
    dsll       $s5,$s5,0x2
    dsubu      $s5,$s5,$s3
    dsll       $s5,$s5,0x4
    daddu      $s5,$s5,$s4
    ld         $at,56($s5)
    bne        $at, $s0, .L000021c8
    dsll       $s1,$s3,0x4
    ld         $t8,-30664($gp)
    li         $a1,25
    daddu      $s1,$s1,$t8
    jal        psema
    move       $a0,$s1
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s5
    beqz       $v0, .L000021bc
    nop
    ld         $a1,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,928
    b          .L000021bc
    nop
.L00002244:
    ld         $s5,16($sp)
    ld         $s1,24($sp)
    ld         $s4,56($sp)
    ld         $ra,32($sp)
.L00002254:
    ld         $v0,32($s0)
    beqz       $v0, .L0000226c
    ld         $s3,40($sp)
    ld         $a2,72($v0)
    beq        $a2, $s0, .L0000227c
    nop
.L0000226c:
    move       $v0,$zero
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000227c:
    cache      0x14,0($sp)
    sw         $zero,84($v0)
    ld         $a3,32($s0)
    sd         $ra,32($sp)
    jal        splhi
    sw         $zero,80($a3)
    ld         $a1,24($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L000022ac
    sd         $v0,0($sp)
    jalr       $a1
    move       $a0,$s0
.L000022ac:
    cache      0x14,0($sp)
    ld         $a1,32($s0)
    sd         $zero,72($a1)
    ld         $a0,32($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    ld         $s0,8($sp)
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,32($sp)
    b          .L0000226c
    nop
.L000022dc:
    ld         $v0,64($s0)
    beqz       $v0, .L00002254
    sd         $s3,40($sp)
    sd         $s2,48($sp)
    sd         $ra,32($sp)
    b          .L0000230c
    sd         $s1,24($sp)
.L000022f8:
    jal        vsema
    move       $a0,$s1
    ld         $v0,64($s0)
    beqz       $v0, .L00002358
    nop
.L0000230c:
    ld         $s2,0($v0)
    lh         $s1,2($s2)
    ld         $t8,-30664($gp)
    dsll       $s1,$s1,0x4
    li         $a1,25
    daddu      $s1,$s1,$t8
    jal        psema
    move       $a0,$s1
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s2
    beqz       $v0, .L000022f8
    nop
    ld         $a1,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,928
    b          .L000022f8
    nop
.L00002358:
    sd         $s3,40($sp)
    ld         $s1,24($sp)
    ld         $ra,32($sp)
    b          .L00002254
    ld         $s2,48($sp)
.L0000236c:
    sd         $s1,24($sp)
    lh         $s1,2($s2)
    ld         $t8,-30664($gp)
    dsll       $s1,$s1,0x4
    li         $a1,25
    sd         $ra,32($sp)
    daddu      $s1,$s1,$t8
    jal        psema
    move       $a0,$s1
    cache      0x14,0($sp)
    ld         $at,56($s2)
    bnez       $at, .L000023b4
    sb         $zero,84($s2)
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s2
    b          .L000023c0
    ld         $s2,48($sp)
.L000023b4:
    move       $a0,$s0
    jal        rrmUnbindProcFromRN
    ld         $s2,48($sp)
.L000023c0:
    jal        vsema
    move       $a0,$s1
    ld         $s1,24($sp)
    ld         $ra,32($sp)
    b          .L0000218c
    sd         $s3,40($sp)

glabel rrmGetResourceMask
    jr         $ra
    lhu        $v0,4($a0)

glabel rrmSuspend
    daddiu     $sp,$sp,-96
    sd         $s5,16($sp)
    sd         $s4,24($sp)
    sd         $ra,32($sp)
    move       $s4,$a1
    sd         $s2,40($sp)
    jal        gthread_find
    move       $s5,$zero
    beqz       $v0, .L00002564
    move       $s2,$v0
    ld         $a0,16($s2)
    beqz       $a0, .L00002564
    nop
    ld         $at,24($s2)
    bnez       $at, .L0000263c
    nop
    sd         $s1,56($sp)
    lw         $a1,8($s2)
    sd         $s0,48($sp)
    sd         $s3,64($sp)
    ld         $s0,24($a0)
    li         $s3,1
.L00002438:
    cache      0x14,0($sp)
    ori        $a1,$a1,0x8
    andi       $s1,$s4,0x100
    sw         $a1,8($s2)
    sltu       $v1,$zero,$s1
    beqz       $s0, .L00002528
    movn       $s3,$zero,$v1
    andi       $a3,$s4,0x80
    b          .L000024bc
    sd         $a3,8($sp)
.L00002460:
    cache      0x14,0($sp)
    ld         $at,24($s2)
    lw         $a4,12($at)
    addiu      $a4,$a4,1
    sw         $a4,12($at)
.L00002474:
    beqz       $s3, .L0000257c
    nop
    ld         $a0,32($s0)
    beqz       $a0, .L00002494
    move       $s4,$a0
    ld         $at,72($s4)
    beq        $at, $s0, .L000025a4
    nop
.L00002494:
    ld         $v0,24($s0)
    beqz       $v0, .L000024b0
    nop
    ld         $v0,176($v0)
    move       $a1,$s0
    jalr       $v0
    move       $a2,$s1
.L000024b0:
    ld         $s0,16($s0)
    beqz       $s0, .L00002524
    nop
.L000024bc:
    beqz       $s1, .L00002474
    nop
    ld         $a0,32($s0)
    beqz       $a0, .L00002474
    nop
    ld         $v1,72($a0)
    bne        $v1, $s0, .L00002474
    nop
    cache      0x14,0($sp)
    lw         $a1,8($s2)
    ori        $a1,$a1,0x1
    beqz       $s5, .L00002474
    sw         $a1,8($s2)
    andi       $a3,$a1,0x4
    bnez       $a3, .L00002460
    li         $v1,1
    ld         $at,32($s0)
    daddiu     $at,$at,80
.L00002504:
    ll         $a4,0($at)
    addu       $a3,$a4,$v1
    move       $a4,$a3
    sc         $a3,0($at)
    beqzl      $a3, .L00002504
    nop
    b          .L00002460
    nop
.L00002524:
    lw         $a1,8($s2)
.L00002528:
    cache      0x14,0($sp)
    ld         $s0,48($sp)
    ld         $v1,24($s2)
    ld         $s1,56($sp)
    ld         $s3,64($sp)
    li         $a3,-9
    and        $a3,$a1,$a3
    beqz       $v1, .L00002564
    sw         $a3,8($s2)
    beqz       $s5, .L0000255c
    nop
    jal        splx
    lw         $a0,0($sp)
.L0000255c:
    jal        GfxListReaderUnlock
    ld         $a0,16($s2)
.L00002564:
    ld         $ra,32($sp)
    ld         $s2,40($sp)
    ld         $s4,24($sp)
    ld         $s5,16($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L0000257c:
    ld         $v0,24($s0)
    beqz       $v0, .L000024b0
    nop
    ld         $a4,176($v0)
    move       $a2,$s1
    move       $a1,$s0
    jalr       $a4
    ld         $a0,32($s0)
    b          .L000024b0
    nop
.L000025a4:
    ld         $a5,24($s0)
    ld         $a5,176($a5)
    move       $a1,$s0
    jalr       $a5
    move       $a2,$s1
    lw         $a0,80($s4)
    beqz       $a0, .L00002678
    ld         $a3,8($sp)
    lw         $at,84($s4)
    beqz       $at, .L000025d8
    nop
    beqz       $v0, .L000026c4
    nop
.L000025d8:
    beqz       $a0, .L000024b0
    nop
    lw         $v1,104($s4)
    beqz       $v1, .L000024b0
    nop
    beqz       $a3, .L000024b0
    nop
    jal        splhi
    nop
    ld         $a1,24($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L00002614
    move       $s4,$v0
    jalr       $a1
    move       $a0,$s0
.L00002614:
    cache      0x14,0($sp)
    ld         $a1,32($s0)
    sd         $zero,72($a1)
    ld         $a0,32($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s4
    b          .L000024b0
    nop
.L0000263c:
    jal        GfxListReaderLock
    sd         $s0,48($sp)
    ld         $a0,16($s2)
    ld         $s0,24($a0)
    beqz       $s0, .L000026b0
    nop
    lw         $a3,48($s0)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00002738
    nop
    sd         $s1,56($sp)
    sd         $s3,64($sp)
    lw         $a1,8($s2)
    b          .L00002438
    li         $s3,1
.L00002678:
    beqz       $v0, .L0000276c
    nop
    cache      0x14,0($sp)
    li         $v1,1
    ld         $at,32($s0)
    daddiu     $at,$at,80
.L00002690:
    ll         $a4,0($at)
    addu       $a3,$a4,$v1
    move       $a4,$a3
    sc         $a3,0($at)
    beqzl      $a3, .L00002690
    nop
    b          .L000024b0
    sw         $v0,84($s4)
.L000026b0:
    ld         $s2,40($sp)
    jal        GfxListReaderUnlock
    ld         $s0,48($sp)
    b          .L00002564
    nop
.L000026c4:
    cache      0x14,0($sp)
    sw         $zero,84($s4)
    ld         $v1,32($s0)
    daddiu     $v1,$v1,80
    li         $a0,-1
.L000026d8:
    ll         $v0,0($v1)
    addu       $a1,$v0,$a0
    move       $v0,$a1
    sc         $a1,0($v1)
    beqzl      $a1, .L000026d8
    nop
    jal        splhi
    nop
    ld         $a1,24($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L00002710
    move       $s4,$v0
    jalr       $a1
    move       $a0,$s0
.L00002710:
    cache      0x14,0($sp)
    ld         $a1,32($s0)
    sd         $zero,72($a1)
    ld         $a0,32($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s4
    b          .L000024b0
    nop
.L00002738:
    jal        splhi
    nop
    lw         $a1,8($s2)
    andi       $a3,$a1,0x2
    beqz       $a3, .L000027b4
    sw         $v0,0($sp)
.L00002750:
    sd         $s3,64($sp)
    ld         $s3,24($s2)
    lw         $s3,12($s3)
    li         $s5,1
    sd         $s1,56($sp)
    b          .L00002438
    sltiu      $s3,$s3,1
.L0000276c:
    jal        splhi
    nop
    ld         $a1,24($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L0000278c
    move       $s4,$v0
    jalr       $a1
    move       $a0,$s0
.L0000278c:
    cache      0x14,0($sp)
    ld         $a1,32($s0)
    sd         $zero,72($a1)
    ld         $a0,32($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s4
    b          .L000024b0
    nop
.L000027b4:
    cache      0x14,0($sp)
    ld         $a4,24($s2)
    lw         $a3,12($a4)
    addiu      $a3,$a3,-1
    sw         $a3,12($a4)
    sd         $s3,64($sp)
    b          .L00002750
    lw         $a1,8($s2)

glabel rrmResume
    daddiu     $sp,$sp,-112
    sd         $s2,56($sp)
    sd         $s4,48($sp)
    sd         $s5,40($sp)
    sd         $ra,8($sp)
    sd         $a1,32($sp)
    jal        gthread_find
    move       $s5,$zero
    move       $s4,$v0
    move       $s2,$v0
    beqz       $v0, .L00002974
    ld         $ra,8($sp)
    ld         $a0,16($s4)
    beqz       $a0, .L00002974
    nop
    ld         $at,24($s4)
    bnez       $at, .L00002a38
    nop
    sd         $s0,72($sp)
    ld         $s0,24($a0)
.L00002824:
    beqz       $s0, .L00002940
    ld         $s4,48($sp)
    sd         $s3,88($sp)
    ld         $s3,32($sp)
    sd         $s6,80($sp)
    sd         $s1,64($sp)
    b          .L00002890
    andi       $s3,$s3,0x100
.L00002844:
    ld         $v0,24($s0)
    beqz       $v0, .L00002874
    nop
    lw         $at,48($s0)
    andi       $at,$at,0x3
    beqz       $at, .L00002874
    nop
    ld         $v0,184($v0)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $v0
    ld         $a0,32($s0)
.L00002874:
    li         $s1,1
    ld         $s0,16($s0)
.L0000287c:
    move       $v0,$s1
.L00002880:
    beqz       $v0, .L00002988
    nop
.L00002888:
    beqz       $s0, .L0000292c
    nop
.L00002890:
    ld         $v1,32($s0)
    move       $v0,$zero
    beqz       $v1, .L00002880
    move       $s1,$zero
    lw         $a3,48($s0)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00002990
    nop
.L000028b0:
    lw         $a4,56($s0)
    andi       $a4,$a4,0x1
    beqz       $a4, .L00002a08
    nop
.L000028c0:
    beqz       $s3, .L000029c0
    nop
.L000028c8:
    lw         $v0,8($s2)
    li         $a3,-2
    andi       $at,$v0,0x1
    and        $v0,$a3,$v0
    beqz       $at, .L00002844
    andi       $a4,$v0,0x4
    ld         $v1,32($s0)
    ld         $v1,72($v1)
    bne        $v1, $s0, .L00002844
    nop
    cache      0x14,0($sp)
    beqz       $s5, .L00002844
    sw         $v0,8($s2)
    bnez       $a4, .L00002844
    li         $a3,-1
    ld         $v1,32($s0)
    daddiu     $v1,$v1,80
.L0000290c:
    ll         $at,0($v1)
    addu       $a4,$at,$a3
    move       $at,$a4
    sc         $a4,0($v1)
    beqzl      $a4, .L0000290c
    nop
    b          .L00002844
    nop
.L0000292c:
    ld         $s1,64($sp)
    ld         $ra,8($sp)
    ld         $s3,88($sp)
    ld         $s4,48($sp)
    ld         $s6,80($sp)
.L00002940:
    ld         $a3,24($s2)
    move       $a4,$s5
    ld         $s5,40($sp)
    beqz       $a3, .L00002974
    ld         $s0,72($sp)
    beqz       $a4, .L00002968
    nop
    lw         $a0,0($sp)
    jal        splx
    ld         $s5,40($sp)
.L00002968:
    jal        GfxListReaderUnlock
    ld         $a0,16($s2)
    ld         $ra,8($sp)
.L00002974:
    ld         $s2,56($sp)
    ld         $s4,48($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00002988:
    b          .L00002888
    ld         $s0,16($s0)
.L00002990:
    ld         $at,24($s2)
    beqz       $at, .L000028b0
    nop
    ld         $v1,40($s0)
    beqz       $v1, .L000028b0
    nop
    ld         $a1,24($s0)
    ld         $a1,112($a1)
    jalr       $a1
    move       $a0,$s0
    bnez       $s3, .L000028c8
    nop
.L000029c0:
    lw         $v0,48($s0)
    andi       $a3,$v0,0x1
    beqz       $a3, .L00002ab4
    andi       $a4,$v0,0x20
    beqz       $a4, .L00002ae0
    nop
    ld         $v0,32($s0)
    ld         $at,72($v0)
    bne        $at, $s0, .L00002aa4
    nop
.L000029e8:
    move       $a0,$v0
    ld         $v0,24($s0)
    ld         $v0,184($v0)
    move       $a1,$s0
    jalr       $v0
    move       $a2,$s3
    b          .L0000287c
    nop
.L00002a08:
    ld         $v1,40($s0)
    beqz       $v1, .L000028c0
    nop
    ld         $a1,24($s0)
    ld         $a1,112($a1)
    jalr       $a1
    move       $a0,$s0
    cache      0x14,0($sp)
    lw         $a3,56($s0)
    ori        $a3,$a3,0x1
    b          .L000028c0
    sw         $a3,56($s0)
.L00002a38:
    jal        GfxListReaderLock
    sd         $s0,72($sp)
    ld         $a0,16($s4)
    ld         $s0,24($a0)
    li         $v1,-3
    beqz       $s0, .L00002c30
    ld         $ra,8($sp)
    lw         $a4,48($s0)
    andi       $a4,$a4,0x8
    bnez       $a4, .L00002824
    nop
    lw         $v0,8($s4)
    andi       $at,$v0,0x2
    beqz       $at, .L00002a7c
    and        $v1,$v0,$v1
    cache      0x14,0($sp)
    sw         $v1,8($s4)
.L00002a7c:
    jal        splhi
    nop
    lw         $a3,8($s4)
    andi       $a3,$a3,0x1
    sw         $v0,0($sp)
    li         $s5,1
    beqz       $a3, .L00002c4c
    ld         $ra,8($sp)
.L00002a9c:
    b          .L00002824
    nop
.L00002aa4:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L000029e8
    ld         $v0,32($s0)
.L00002ab4:
    andi       $a4,$v0,0x2
    beqz       $a4, .L0000287c
    nop
    ld         $a5,24($s0)
    ld         $a5,184($a5)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $a5
    ld         $a0,32($s0)
    b          .L0000287c
    nop
.L00002ae0:
    ld         $s4,72($s0)
    beqz       $s4, .L00002c64
    nop
    b          .L00002b18
    nop
.L00002af4:
    ld         $a6,24($s0)
    ld         $a6,184($a6)
    move       $a0,$v0
    move       $a1,$s0
    jalr       $a6
    move       $a2,$s3
.L00002b0c:
    ld         $at,24($sp)
    beqz       $at, .L00002c28
    nop
.L00002b18:
    jal        splhi
    sd         $zero,24($sp)
    ld         $a1,120($s4)
    lhu        $s6,6($s4)
    li         $at,-65
    beqz       $a1, .L00002b5c
    lhu        $a0,4($s4)
    lh         $v1,12($a1)
    andi       $a3,$a0,0x40
    beqz       $a3, .L00002b5c
    or         $s6,$v1,$s6
    ld         $a4,128($s4)
    lh         $a4,12($a4)
    and        $s6,$s6,$at
    andi       $a4,$a4,0x40
    sd         $a0,16($sp)
    or         $s6,$a4,$s6
.L00002b5c:
    sd         $a0,16($sp)
    jal        splx
    move       $a0,$v0
    ld         $v0,32($s0)
    ld         $at,72($v0)
    ld         $a4,16($sp)
    bne        $at, $s0, .L00002be4
    and        $a3,$a4,$s6
    lw         $v1,80($v0)
    ld         $a4,16($sp)
    bnez       $v1, .L00002af4
    and        $a3,$a4,$s6
    beq        $a3, $a4, .L00002af4
    nop
    jal        splhi
    nop
    ld         $a1,24($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L00002bb4
    move       $s6,$v0
    jalr       $a1
    move       $a0,$s0
.L00002bb4:
    cache      0x14,0($sp)
    ld         $a1,32($s0)
    sd         $zero,72($a1)
    ld         $a0,32($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s6
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L00002b0c
    nop
.L00002be4:
    bne        $a3, $a4, .L00002c14
    nop
    jal        cpsema
    daddiu     $a0,$v0,56
    beqz       $v0, .L00002c14
    nop
    cache      0x14,0($sp)
    ld         $at,32($s0)
    li         $v1,1
    sd         $v1,24($sp)
    b          .L00002b0c
    sd         $s0,72($at)
.L00002c14:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    ld         $a3,24($sp)
    bnez       $a3, .L00002b18
    nop
.L00002c28:
    b          .L0000287c
    nop
.L00002c30:
    ld         $s5,40($sp)
    ld         $s0,72($sp)
    ld         $s4,48($sp)
    jal        GfxListReaderUnlock
    ld         $s2,56($sp)
    b          .L00002974
    ld         $ra,8($sp)
.L00002c4c:
    cache      0x14,0($sp)
    ld         $at,24($s4)
    lw         $a4,12($at)
    addiu      $a4,$a4,1
    b          .L00002a9c
    sw         $a4,12($at)
.L00002c64:
    ld         $a5,24($s0)
    ld         $a5,184($a5)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $a5
    ld         $a0,32($s0)
    b          .L0000287c
    nop

glabel rrmSetResourceMask
    daddiu     $sp,$sp,-96
    sd         $s5,40($sp)
    sd         $s8,48($sp)
    sd         $s1,24($sp)
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    move       $s0,$a1
    sd         $a0,0($sp)
    jal        splhi
    move       $s1,$a2
    lhu        $at,4($s0)
    sd         $at,32($sp)
    andi       $at,$at,0x2
    move       $s8,$v0
    beqz       $at, .L00002cd0
    lhu        $s5,6($s0)
    jal        pane_validmask
    ld         $a0,120($s0)
    or         $s5,$v0,$s5
.L00002cd0:
    jal        splx
    move       $a0,$s8
    ld         $a3,32($sp)
    xor        $a3,$a3,$s1
    and        $a3,$a3,$s1
    xor        $v1,$s5,$a3
    and        $v1,$v1,$a3
    ld         $s8,48($sp)
    beqz       $v1, .L00002d04
    ld         $s5,40($sp)
    ld         $a0,0($sp)
    jal        rrmUnMapGfx
    ld         $s5,40($sp)
.L00002d04:
    jal        splhi
    nop
    cache      0x14,0($sp)
    move       $a0,$v0
    jal        splx
    sh         $s1,4($s0)
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,96

glabel RRM_ValidateSwapBuf
    daddiu     $sp,$sp,-64
    sd         $a0,8($sp)
    sd         $ra,0($sp)
    jal        RRM_CheckValidFault
    sd         $a2,16($sp)
    bgez       $v0, .L00002d54
    ld         $ra,0($sp)
    b          .L00002d6c
    li         $v0,14
.L00002d54:
    ld         $a0,16($sp)
    ld         $a1,8($sp)
    lw         $a2,8($a0)
    jal        validate_pane_swapbuf
    lw         $a0,4($a0)
    ld         $ra,0($sp)
.L00002d6c:
    jr         $ra
    daddiu     $sp,$sp,64

glabel rrmValidateBuffer
    ld         $a2,72($a0)
    lw         $at,160($a2)
    daddiu     $sp,$sp,-32
    beqz       $at, .L00002da4
    move       $a3,$a0
    cache      0x14,0($sp)
    ld         $v1,120($a3)
    lw         $a1,164($a2)
    lw         $v0,24($v1)
    sd         $ra,0($sp)
    addu       $v0,$v0,$a1
    sw         $v0,28($v1)
.L00002da4:
    ld         $a1,64($a3)
    sd         $ra,0($sp)
    jal        validate_pane_buffer
    ld         $a0,120($a3)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel RRM_ValidateMessage
    daddiu     $sp,$sp,-64
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    sd         $s8,16($sp)
    jal        splhi
    move       $s0,$a1
    move       $a0,$v0
    jal        splx
    lhu        $s8,6($s0)
    andi       $at,$s8,0x20
    ld         $s8,16($sp)
    li         $v0,22
    beqz       $at, .L00002e04
    ld         $ra,0($sp)
    ld         $s0,8($sp)
.L00002dfc:
    jr         $ra
    daddiu     $sp,$sp,64
.L00002e04:
    move       $a0,$s0
    jal        rrmValidateBuffer
    ld         $s8,16($sp)
    ld         $ra,0($sp)
    move       $v0,$zero
    b          .L00002dfc
    ld         $s0,8($sp)

glabel RRM_SetDisplayMode
    daddiu     $sp,$sp,-128
    sd         $a1,72($sp)
    sd         $s0,80($sp)
    sd         $ra,64($sp)
    sd         $a2,56($sp)
    jal        RRM_CheckValidFault
    move       $s0,$a0
    bltz       $v0, .L00002ee8
    ld         $ra,64($sp)
    ld         $v0,0($s0)
    ld         $at,8($v0)
    beqz       $at, .L00002ed8
    nop
    li         $a4,11
    sb         $a4,8($sp)
    sd         $v0,0($sp)
    lw         $a3,48($s0)
    ld         $a0,72($sp)
    li         $a1,3
    andi       $a3,$a3,0x8
    li         $a2,139
    sw         $a1,12($sp)
    sltu       $a3,$zero,$a3
    movz       $a2,$a4,$a3
    sb         $a2,8($sp)
    ld         $v0,56($sp)
    lw         $a0,20($a0)
    sw         $a0,16($sp)
    lw         $v1,8($v0)
    sw         $v1,20($sp)
    lw         $v0,4($v0)
    daddiu     $a0,$sp,0
    jal        GfxMessage
    sw         $v0,24($sp)
    ld         $a1,72($sp)
    ld         $a1,120($a1)
    li         $a0,8
    move       $a2,$s0
    jal        invalidate_pane
    lw         $a1,4($a1)
    jal        rrmUnMapGfx
    move       $a0,$s0
    ld         $ra,64($sp)
    move       $v0,$zero
    b          .L00002ee0
    ld         $s0,80($sp)
.L00002ed8:
    li         $v0,14
    ld         $s0,80($sp)
.L00002ee0:
    jr         $ra
    daddiu     $sp,$sp,128
.L00002ee8:
    li         $v0,14
    b          .L00002ee0
    ld         $s0,80($sp)

glabel RRM_LoadDisplayMode
    daddiu     $sp,$sp,-64
    sd         $s2,24($sp)
    sd         $s1,8($sp)
    sd         $s0,0($sp)
    sd         $ra,16($sp)
    move       $s1,$a2
    move       $s0,$a0
    lw         $a0,4($a2)
    jal        clip2pane
    move       $a1,$s0
    move       $s2,$v0
    beqz       $v0, .L00002f4c
    ld         $ra,16($sp)
    lh         $at,12($s2)
    andi       $at,$at,0x8
    beqz       $at, .L00002f4c
    li         $v0,22
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    ld         $s2,24($sp)
.L00002f44:
    jr         $ra
    daddiu     $sp,$sp,64
.L00002f4c:
    lw         $a1,8($s1)
    bltz       $a1, .L00002f6c
    li         $v0,22
    ld         $v1,32($s0)
    lw         $v1,88($v1)
    slt        $v1,$a1,$v1
    bnez       $v1, .L00002f7c
    nop
.L00002f6c:
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    b          .L00002f44
    ld         $s2,24($sp)
.L00002f7c:
    ld         $a3,24($s0)
    ld         $a3,160($a3)
    move       $a0,$s0
    jalr       $a3
    lw         $a2,12($s1)
    move       $a0,$v0
    bltz       $v0, .L00003034
    ld         $ra,16($sp)
    beqz       $s2, .L00002fc4
    nop
    cache      0x14,0($sp)
    lw         $at,16($s1)
    sw         $at,32($s2)
    lw         $a4,16($s1)
    andi       $a4,$a4,0x4
    xori       $a4,$a4,0x4
    sltiu      $a4,$a4,1
    sh         $a4,18($s2)
.L00002fc4:
    ld         $v0,32($s0)
    lw         $a1,8($s1)
    lw         $v1,88($v0)
    slt        $v1,$a1,$v1
    ld         $s2,24($sp)
    beqz       $v1, .L00002ff4
    dsll       $at,$a1,0x2
    cache      0x14,0($sp)
    ld         $a4,96($v0)
    lw         $a3,16($s1)
    daddu      $a4,$a4,$at
    sw         $a3,0($a4)
.L00002ff4:
    li         $v1,1
    bne        $a0, $v1, .L00003024
    ld         $s1,8($sp)
    ld         $s2,72($s0)
    beqz       $s2, .L00003048
    nop
    move       $a0,$s0
    move       $a1,$s2
    jal        rrmInvalidateRN
    li         $a2,16
    beqz       $v0, .L00003058
    ld         $ra,16($sp)
.L00003024:
    ld         $s0,0($sp)
    move       $v0,$zero
    b          .L00002f44
    ld         $s2,24($sp)
.L00003034:
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    negu       $v0,$a0
    b          .L00002f44
    ld         $s2,24($sp)
.L00003048:
    ld         $s0,0($sp)
    li         $v0,14
    b          .L00002f44
    ld         $s2,24($sp)
.L00003058:
    ld         $a0,24($s0)
    ld         $a0,152($a0)
    move       $a1,$s2
    move       $t9, $a0
    jalr       $t9
    ld         $a0,32($s0)
    move       $a0,$s0
    jal        rrmUnMapGfx
    ld         $s2,24($sp)
    b          .L00003024
    ld         $ra,16($sp)

glabel RRM_GetDisplayModes
    ld         $a5,32($a0)
    lw         $v0,88($a5)
    lw         $at,16($a2)
    sll        $v0,$v0,0x2
    sltu       $at,$at,$v0
    daddiu     $sp,$sp,-48
    beqz       $at, .L000030ac
    move       $a6,$a2
    li         $v0,22
.L000030a4:
    jr         $ra
    daddiu     $sp,$sp,48
.L000030ac:
    ld         $a1,8($a6)
    sd         $ra,0($sp)
    ld         $a0,96($a5)
    jal        copyout
    move       $a2,$v0
    beqz       $v0, .L000030d0
    ld         $ra,0($sp)
    b          .L000030a4
    li         $v0,14
.L000030d0:
    b          .L000030a4
    move       $v0,$zero

glabel rrmValidateMyRetrace
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        splhi
    move       $s0,$a1
    lhu        $v1,4($s0)
    lhu        $at,6($s0)
    xor        $at,$at,$v1
    and        $at,$at,$v1
    andi       $at,$at,0x10
    beqz       $at, .L00003130
    nop
    daddiu     $a2,$s0,104
    li         $a1,25
    daddiu     $a0,$s0,48
    jal        sv_wait
    move       $a3,$v0
    ld         $ra,8($sp)
    move       $v0,$zero
    ld         $s0,0($sp)
.L00003128:
    jr         $ra
    daddiu     $sp,$sp,32
.L00003130:
    move       $a0,$v0
    jal        splx
    ld         $s0,0($sp)
    move       $v0,$zero
    b          .L00003128
    ld         $ra,8($sp)

glabel rrmValidateRetrace
    daddiu     $sp,$sp,-48
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    cache      0x14,0($sp)
    lhu        $at,6($s8)
    sd         $v0,16($sp)
    daddiu     $a0,$s8,48
    ori        $at,$at,0x10
    jal        sv_signal
    sh         $at,6($s8)
    ld         $a0,16($sp)
    jal        splx
    ld         $s8,8($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel rrmAllocPcxid
    ld         $a7,32($a0)
    lw         $a6,20($a7)
    move       $a4,$zero
    li         $at,1
    li         $t1,-1
    move       $v0,$zero
    beq        $a6, $at, .L000032b4
    move       $a5,$zero
    lh         $t0,80($a1)
    beq        $t0, $t1, .L00003240
    nop
    ld         $a6,0($a0)
    ld         $a6,8($a6)
    xor        $a6,$a6,$a0
    sltiu      $a6,$a6,1
    sltiu      $a6,$a6,1
    beqz       $a6, .L00003204
    nop
    ld         $v0,96($a1)
    beqz       $v0, .L000032bc
    nop
    cache      0x14,0($sp)
    ld         $at,88($a1)
    sd         $at,88($v0)
    ld         $a0,88($a1)
    beqz       $a0, .L000032a8
    ld         $v0,96($a1)
    cache      0x14,0($sp)
    sd         $v0,96($a0)
.L00003204:
    beqz       $a6, .L00003214
    nop
    beqz       $a4, .L00003220
    nop
.L00003214:
    move       $v0,$a5
.L00003218:
    jr         $ra
    nop
.L00003220:
    cache      0x14,0($sp)
    ld         $a2,32($a7)
    sd         $a1,96($a2)
    ld         $v1,32($a7)
    sd         $zero,96($a1)
    sd         $v1,88($a1)
    b          .L00003214
    sd         $a1,32($a7)
.L00003240:
    blez       $a6, .L00003288
    nop
    ld         $a4,24($a7)
.L0000324c:
    dsll       $a3,$v0,0x3
    daddu      $a3,$a3,$a4
    ld         $a3,0($a3)
    beqz       $a3, .L00003278
    nop
    addiu      $v0,$v0,1
    slt        $at,$v0,$a6
    bnez       $at, .L0000324c
    nop
    b          .L00003288
    nop
.L00003278:
    cache      0x14,0($sp)
    dsll32     $t0,$v0,0x10
    dsra32     $t0,$t0,0x10
    sh         $t0,80($a1)
.L00003288:
    ld         $a4,0($a0)
    ld         $a4,8($a4)
    xor        $a4,$a4,$a0
    sltiu      $a4,$a4,1
    beqz       $a4, .L000032c4
    li         $a6,1
.L000032a0:
    b          .L00003204
    nop
.L000032a8:
    cache      0x14,0($sp)
    b          .L00003204
    sd         $v0,40($a7)
.L000032b4:
    b          .L00003218
    ld         $v0,8($a7)
.L000032bc:
    b          .L00003218
    move       $v0,$zero
.L000032c4:
    beq        $t0, $t1, .L000032f4
    nop
    ld         $at,32($a7)
    bnez       $at, .L000032a0
    nop
    cache      0x14,0($sp)
    sd         $a1,40($a7)
    sd         $a1,32($a7)
    sd         $zero,88($a1)
    move       $v0,$zero
    b          .L00003218
    sd         $zero,96($a1)
.L000032f4:
    cache      0x14,0($sp)
    ld         $a5,40($a7)
    ld         $a2,96($a5)
    sd         $a2,40($a7)
    sd         $zero,88($a2)
    lh         $v1,80($a5)
    b          .L000032a0
    sh         $v1,80($a1)

glabel rrmValidateMyPcx
    daddiu     $sp,$sp,-96
    sd         $s0,32($sp)
    sd         $s1,16($sp)
    sd         $ra,0($sp)
    move       $s1,$a0
    sd         $zero,48($sp)
    jal        splhi
    move       $s0,$a1
    lhu        $at,4($s0)
    move       $a0,$v0
    lhu        $v0,6($s0)
    sd         $v0,56($sp)
    jal        splx
    sd         $at,64($sp)
    ld         $v1,56($sp)
    ld         $a4,64($sp)
    xor        $v1,$a4,$v1
    and        $v1,$v1,$a4
    andi       $v1,$v1,0x1
    li         $at,1
    beqz       $v1, .L00003580
    ld         $ra,0($sp)
    ld         $a5,32($s1)
    daddiu     $a5,$a5,80
.L00003374:
    ll         $a4,0($a5)
    addu       $v1,$a4,$at
    move       $a4,$v1
    sc         $v1,0($a5)
    beqzl      $v1, .L00003374
    nop
    ld         $a3,32($s1)
    ld         $a3,8($a3)
    beqz       $a3, .L000033a4
    nop
    bne        $a3, $s0, .L00003568
    nop
.L000033a4:
    lh         $at,80($s0)
    li         $v0,-1
    beq        $at, $v0, .L000034bc
    nop
    move       $a0,$s1
    jal        rrmAllocPcxid
    move       $a1,$s0
    ld         $v0,24($s1)
    ld         $v0,128($v0)
    ld         $a0,32($s1)
    move       $a1,$s0
    jalr       $v0
    ld         $a2,8($a0)
    move       $v1,$zero
    li         $a5,-1
    slti       $a4,$v0,0
    movn       $v1,$a5,$a4
    sd         $v1,40($sp)
.L000033ec:
    cache      0x14,0($sp)
    ld         $t0,0($gp)
    lw         $a7,8($t0)
    addiu      $a7,$a7,1
    sw         $a7,8($t0)
    ld         $a6,32($s1)
    jal        splhi
    sd         $s0,8($a6)
    cache      0x14,0($sp)
    lhu        $t0,6($s0)
    move       $a0,$v0
    ori        $t0,$t0,0x1
    jal        splx
    sh         $t0,6($s0)
    ld         $a4,32($s1)
    ld         $at,48($sp)
    daddiu     $a4,$a4,80
    li         $a5,-1
.L00003434:
    ll         $v1,0($a4)
    addu       $ra,$v1,$a5
    move       $v1,$ra
    sc         $ra,0($a4)
    beqzl      $ra, .L00003434
    nop
    beqz       $at, .L000034a8
    ld         $ra,0($sp)
    cache      0x14,0($sp)
    li         $a5,1
    jal        splhi
    sb         $a5,83($s0)
    ld         $a1,24($s1)
    ld         $a1,192($a1)
    sd         $v0,24($sp)
    beqz       $a1, .L00003480
    ld         $s0,32($sp)
    jalr       $a1
    move       $a0,$s1
.L00003480:
    cache      0x14,0($sp)
    ld         $a1,32($s1)
    sd         $zero,72($a1)
    ld         $a0,32($s1)
    jal        vsema
    daddiu     $a0,$a0,56
    ld         $s1,16($sp)
    jal        splx
    ld         $a0,24($sp)
    ld         $ra,0($sp)
.L000034a8:
    ld         $v0,40($sp)
    ld         $s1,16($sp)
    ld         $s0,32($sp)
.L000034b4:
    jr         $ra
    daddiu     $sp,$sp,96
.L000034bc:
    lbu        $a4,83($s0)
    beqz       $a4, .L00003590
    nop
.L000034c8:
    move       $a0,$s1
    jal        rrmAllocPcxid
    move       $a1,$s0
    sd         $v0,8($sp)
    ld         $a6,24($s1)
    ld         $a0,32($s1)
    ld         $a6,120($a6)
    beqz       $v0, .L0000351c
    ld         $a3,8($a0)
    ld         $a1,8($sp)
    jalr       $a6
    move       $a2,$s0
    cache      0x14,0($sp)
    move       $at,$zero
    li         $v1,-1
    slti       $v0,$v0,0
    ld         $a4,8($sp)
    movn       $at,$v1,$v0
    sd         $at,40($sp)
    b          .L0000353c
    sh         $v1,80($a4)
.L0000351c:
    move       $a1,$zero
    jalr       $a6
    move       $a2,$s0
    move       $a5,$zero
    li         $v1,-1
    slti       $at,$v0,0
    movn       $a5,$v1,$at
    sd         $a5,40($sp)
.L0000353c:
    lh         $v0,80($s0)
    li         $a4,-1
    beq        $v0, $a4, .L000033ec
    nop
    cache      0x14,0($sp)
    ld         $a5,32($s1)
    ld         $a5,24($a5)
    dsll       $at,$v0,0x3
    daddu      $a5,$a5,$at
    b          .L000033ec
    sd         $s0,0($a5)
.L00003568:
    move       $a0,$s1
    move       $a1,$a3
    jal        rrmInvalidateRN
    li         $a2,1
    b          .L000033a4
    ld         $ra,0($sp)
.L00003580:
    ld         $s1,16($sp)
    move       $v0,$zero
    b          .L000034b4
    ld         $s0,32($sp)
.L00003590:
    lhu        $at,4($s0)
    andi       $at,$at,0x2
    beqz       $at, .L000034c8
    nop
    ld         $a1,120($s0)
    li         $a0,2
    move       $a2,$s1
    jal        invalidate_pane
    lw         $a1,4($a1)
    li         $a4,1
    b          .L000034c8
    sd         $a4,48($sp)

glabel RRM_ValidateClip
    daddiu     $sp,$sp,-80
    sd         $ra,40($sp)
    ld         $v0,32($a0)
    sd         $a2,24($sp)
    ld         $at,72($v0)
    sd         $s0,32($sp)
    sd         $s3,16($sp)
    move       $s0,$a0
    sd         $zero,8($sp)
    bne        $at, $a0, .L00003670
    move       $s3,$zero
.L000035ec:
    ld         $a3,32($s0)
    daddiu     $a3,$a3,80
    li         $a4,1
.L000035f8:
    ll         $v1,0($a3)
    addu       $at,$v1,$a4
    move       $v1,$at
    sc         $at,0($a3)
    beqzl      $at, .L000035f8
    nop
    ld         $v0,32($s0)
    ld         $v0,8($v0)
    beqz       $v0, .L00003630
    ld         $a4,24($sp)
    lw         $at,20($v0)
    lw         $a4,4($a4)
    beq        $a4, $at, .L000036b8
    nop
.L00003630:
    beqz       $s3, .L000036d8
    nop
.L00003638:
    lw         $v0,0($sp)
    ld         $s3,16($sp)
.L00003640:
    ld         $at,32($s0)
    daddiu     $at,$at,80
    li         $v1,-1
.L0000364c:
    ll         $s0,0($at)
    addu       $a3,$s0,$v1
    move       $s0,$a3
    sc         $a3,0($at)
    beqzl      $a3, .L0000364c
    nop
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00003670:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $a3,32($s0)
    sd         $s0,72($a3)
    ld         $v1,32($s0)
    lw         $v1,104($v1)
    beqz       $v1, .L000035ec
    ld         $ra,40($sp)
.L00003698:
    jal        us_delay
    li         $a0,2
    ld         $a4,32($s0)
    lw         $a4,104($a4)
    bnez       $a4, .L00003698
    nop
    b          .L000035ec
    ld         $ra,40($sp)
.L000036b8:
    sd         $ra,40($sp)
    jal        RRM_CheckValidFault
    move       $a0,$s0
    bltz       $v0, .L000036f8
    ld         $ra,40($sp)
.L000036cc:
    ld         $s3,8($sp)
    bnez       $s3, .L00003638
    nop
.L000036d8:
    ld         $s3,16($sp)
    ld         $a2,24($sp)
    sd         $ra,40($sp)
    move       $a1,$s0
    jal        validate_pane_clip
    lw         $a0,4($a2)
    b          .L00003640
    ld         $ra,40($sp)
.L000036f8:
    li         $v1,1
    sd         $v1,8($sp)
    li         $at,14
    b          .L000036cc
    sw         $at,0($sp)

glabel RRM_ValidFault
    lw         $a2,48($a0)
    daddiu     $sp,$sp,-80
    sd         $s0,48($sp)
    andi       $a2,$a2,0x20
    sd         $s1,40($sp)
    move       $s0,$a0
    beqz       $a2, .L000037b8
    move       $s1,$a1
.L0000372c:
    ld         $a5,32($s0)
    ld         $a3,72($a5)
    bne        $a3, $s0, .L00003768
    sd         $ra,56($sp)
.L0000373c:
    bnez       $a2, .L000039f8
    sd         $ra,56($sp)
    ld         $a0,0($s0)
    ld         $a0,8($a0)
    bnez       $a0, .L00003820
    nop
    b          .L00003810
    li         $v0,-1
.L0000375c:
    jal        ddv_unlock
    ld         $a0,40($s0)
    ld         $a5,32($s0)
.L00003768:
    li         $a1,537
    jal        psema
    daddiu     $a0,$a5,56
    cache      0x14,0($sp)
    ld         $a4,32($s0)
    sd         $s0,72($a4)
    ld         $a3,32($s0)
    lw         $a3,104($a3)
    beqz       $a3, .L000037ac
    ld         $ra,56($sp)
.L00003790:
    jal        us_delay
    li         $a0,2
    ld         $at,32($s0)
    lw         $at,104($at)
    bnez       $at, .L00003790
    nop
    ld         $ra,56($sp)
.L000037ac:
    lw         $a2,48($s0)
    b          .L0000373c
    andi       $a2,$a2,0x20
.L000037b8:
    ld         $v0,72($s0)
    beqz       $v0, .L000037cc
    nop
    b          .L0000372c
    sd         $v0,0($sp)
.L000037cc:
    sd         $ra,56($sp)
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a2,$v0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,960
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    li         $v0,-1
    ld         $ra,56($sp)
.L00003810:
    ld         $s0,48($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00003820:
    ld         $v0,0($sp)
    lw         $a3,20($v0)
    bnez       $a3, .L0000384c
    nop
    beq        $a0, $s0, .L0000384c
    nop
    lhu        $a4,4($v0)
    andi       $a4,$a4,0x2
    sd         $ra,56($sp)
    bnez       $a4, .L00003938
    sd         $v0,32($sp)
.L0000384c:
    sd         $ra,56($sp)
    jal        splhi
    sd         $v0,32($sp)
    sd         $v0,24($sp)
    ld         $a1,32($sp)
    ld         $at,0($s0)
    lhu        $a2,4($a1)
    ld         $at,8($at)
    lhu        $a5,6($a1)
    sd         $a5,16($sp)
    beq        $at, $s0, .L000038d4
    sd         $a2,8($sp)
    andi       $v1,$a2,0x2
    sd         $a5,16($sp)
    beqz       $v1, .L000038d4
    sd         $a2,8($sp)
    ld         $a0,32($sp)
    jal        pane_validmask
    ld         $a0,120($a0)
    ld         $a3,8($sp)
    ld         $a4,16($sp)
    andi       $a3,$a3,0x40
    or         $a4,$v0,$a4
    beqz       $a3, .L000038d4
    sd         $a4,16($sp)
    ld         $a0,32($sp)
    jal        pane_validmask
    ld         $a0,128($a0)
    ld         $a3,16($sp)
    li         $at,-65
    andi       $a4,$v0,0x40
    and        $at,$a3,$at
    or         $a3,$a4,$at
    sd         $a3,16($sp)
.L000038d4:
    jal        splx
    ld         $a0,24($sp)
    ld         $v0,16($sp)
    ld         $a2,8($sp)
    and        $v1,$a2,$v0
    beq        $v1, $a2, .L000039f8
    nop
    andi       $a3,$v0,0x10
    beqz       $a3, .L0000397c
    nop
.L000038fc:
    ld         $a5,32($s0)
    ld         $a4,72($a5)
    bne        $a4, $s0, .L00003768
    nop
    ld         $a0,32($sp)
    move       $a1,$s0
    jal        validate_my_pane_resources
    ld         $a0,120($a0)
    ld         $a2,8($sp)
    ld         $a0,16($sp)
    ld         $a1,32($sp)
    bgez       $v0, .L00003990
    ld         $ra,56($sp)
    b          .L00003810
    li         $v0,-1
.L00003938:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a2,$v0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1024
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    li         $v0,-1
    b          .L00003810
    ld         $ra,56($sp)
.L0000397c:
    move       $a0,$s0
    jal        rrmValidateMyRetrace
    ld         $a1,32($sp)
    b          .L000038fc
    ld         $a2,8($sp)
.L00003990:
    andi       $a3,$a2,0x40
    beqz       $a3, .L000039bc
    nop
    ld         $a0,32($sp)
    move       $a1,$s0
    jal        validate_my_pane_resources
    ld         $a0,128($a0)
    ld         $a0,16($sp)
    ld         $a1,32($sp)
    bltz       $v0, .L00003a48
    ld         $ra,56($sp)
.L000039bc:
    ld         $a5,32($s0)
    ld         $v0,72($a5)
    bne        $v0, $s0, .L00003768
    nop
    andi       $a3,$a0,0x1
    bnez       $a3, .L000039f0
    nop
    jal        rrmValidateMyPcx
    move       $a0,$s0
    bltz       $v0, .L00003a50
    ld         $ra,56($sp)
    ld         $a5,32($s0)
    ld         $v0,72($a5)
.L000039f0:
    bne        $v0, $s0, .L00003768
    nop
.L000039f8:
    jal        ddv_lock
    ld         $a0,40($s0)
    ld         $a4,32($s0)
    ld         $a4,72($a4)
    bne        $a4, $s0, .L0000375c
    nop
    ld         $at,96($s0)
    bnez       $at, .L00003a58
    lw         $v0,48($s0)
.L00003a1c:
    andi       $v1,$v0,0x20
    beqz       $v1, .L00003ac0
    nop
    li         $a2,-1
.L00003a2c:
    ld         $a3,24($s0)
    ld         $a3,96($a3)
    move       $a0,$s0
    jalr       $a3
    move       $a1,$s1
    b          .L00003aa4
    move       $s1,$v0
.L00003a48:
    b          .L00003810
    li         $v0,-1
.L00003a50:
    b          .L00003810
    li         $v0,-1
.L00003a58:
    andi       $a4,$v0,0x8
    bnez       $a4, .L00003a1c
    nop
    jal        splhi
    nop
    lw         $at,48($s0)
    andi       $at,$at,0x20
    bnez       $at, .L00003ab8
    sd         $v0,24($sp)
    ld         $a2,0($sp)
    lh         $a2,80($a2)
.L00003a84:
    ld         $a3,24($s0)
    ld         $a3,96($a3)
    move       $a0,$s0
    jalr       $a3
    move       $a1,$s1
    move       $s1,$v0
    jal        splx
    ld         $a0,24($sp)
.L00003aa4:
    jal        ddv_unlock
    ld         $a0,40($s0)
    move       $v0,$s1
    b          .L00003810
    ld         $ra,56($sp)
.L00003ab8:
    b          .L00003a84
    li         $a2,-1
.L00003ac0:
    ld         $a2,0($sp)
    b          .L00003a2c
    lh         $a2,80($a2)

glabel RRM_CheckValidFault
    lw         $v0,48($a0)
    andi       $at,$v0,0x4
    daddiu     $sp,$sp,-32
    andi       $v1,$v0,0x1
    beqz       $at, .L00003af4
    move       $v0,$zero
.L00003ae4:
    beqz       $v1, .L00003b0c
    nop
.L00003aec:
    jr         $ra
    daddiu     $sp,$sp,32
.L00003af4:
    ld         $a1,0($a0)
    ld         $a1,8($a1)
    bnez       $a1, .L00003ae4
    nop
    b          .L00003aec
    li         $v0,-1
.L00003b0c:
    sd         $ra,0($sp)
    jal        RRM_ValidFault
    move       $a1,$zero
    bltz       $v0, .L00003b28
    ld         $ra,0($sp)
    b          .L00003aec
    move       $v0,$zero
.L00003b28:
    b          .L00003aec
    li         $v0,-1

glabel rrmSwapWait
    daddiu     $sp,$sp,-64
    sd         $s1,24($sp)
    sd         $s0,16($sp)
    sd         $ra,32($sp)
    ld         $s1,72($a0)
    jal        splhi
    move       $s0,$a0
    ld         $a0,120($s0)
    lw         $at,164($s1)
    lw         $a0,28($a0)
    addiu      $at,$at,1
    sltu       $at,$at,$a0
    daddiu     $a5,$s1,168
    beqz       $at, .L00003be8
    sd         $v0,8($sp)
    ld         $a4,168($s1)
    beqz       $a4, .L00003b9c
    nop
.L00003b78:
    ld         $a1,120($a4)
    lw         $a1,28($a1)
    sltu       $a1,$a1,$a0
    beqz       $a1, .L00003b9c
    nop
    daddiu     $a5,$a4,168
    ld         $a4,168($a4)
    bnez       $a4, .L00003b78
    nop
.L00003b9c:
    cache      0x14,0($sp)
    sd         $a4,168($s0)
    daddiu     $a0,$sp,0
    jal        hold_nonfatalsig
    sd         $s0,0($a5)
    daddiu     $a2,$s1,48
    li         $a1,30
    daddiu     $a0,$s0,48
    jal        sv_wait_sig
    ld         $a3,8($sp)
    ld         $s1,24($sp)
    bltz       $v0, .L00003c00
    ld         $s0,16($sp)
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $ra,32($sp)
.L00003bdc:
    move       $v0,$zero
.L00003be0:
    jr         $ra
    daddiu     $sp,$sp,64
.L00003be8:
    ld         $a0,8($sp)
    ld         $s1,24($sp)
    jal        splx
    ld         $s0,16($sp)
    b          .L00003bdc
    ld         $ra,32($sp)
.L00003c00:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    li         $v0,-1
    b          .L00003be0
    ld         $ra,32($sp)

glabel RRM_SwapBuf
    daddiu     $sp,$sp,-80
    sd         $s2,24($sp)
    sd         $s1,32($sp)
    sd         $s0,8($sp)
    sd         $s3,16($sp)
    move       $s0,$a1
    sd         $ra,0($sp)
    move       $s3,$a2
    move       $s1,$a0
    ld         $s2,32($a0)
    jal        rrmGetResourceMask
    move       $a0,$a1
    andi       $at,$v0,0x8
    beqz       $at, .L00003f0c
    nop
.L00003c50:
    lw         $v1,160($s2)
    beqz       $v1, .L00003cb0
    nop
    ld         $v0,120($s0)
    lw         $a3,24($v0)
    beqz       $a3, .L00003cb0
    nop
    lw         $a4,164($s2)
    lw         $at,28($v0)
    addiu      $a4,$a4,1
    sltu       $a4,$a4,$at
    beqz       $a4, .L00003cb0
    nop
    move       $a0,$s0
    jal        rrmSwapWait
    ld         $s2,24($sp)
    beqz       $v0, .L00003cb0
    ld         $ra,0($sp)
    ld         $s1,32($sp)
    ld         $s3,16($sp)
    li         $v0,4
    ld         $s0,8($sp)
.L00003ca8:
    jr         $ra
    daddiu     $sp,$sp,80
.L00003cb0:
    move       $a0,$s1
    jal        RRM_CheckValidFault
    ld         $s2,24($sp)
    bltz       $v0, .L00003f24
    ld         $ra,0($sp)
    ld         $v0,120($s0)
    lw         $at,4($v0)
    beqz       $at, .L00003e90
    nop
.L00003cd4:
    cache      0x14,0($sp)
    lw         $a3,20($v0)
    sw         $a3,28($s0)
    lw         $v1,48($s1)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00003eb4
    nop
    cache      0x14,0($sp)
    lh         $at,18($v0)
    xori       $at,$at,0x1
    sh         $at,18($v0)
    ld         $a4,120($s0)
    lh         $a4,18($a4)
    beqz       $a4, .L00003ef8
    lw         $a0,8($s3)
    cache      0x14,0($sp)
    ori        $a0,$a0,0x4
    sw         $a0,8($s3)
.L00003d1c:
    ld         $v0,120($s0)
.L00003d20:
    cache      0x14,0($sp)
    sw         $a0,32($v0)
    lw         $a1,28($s0)
    li         $v1,255
    andi       $a1,$a1,0xff
    beq        $a1, $v1, .L00003ed4
    nop
.L00003d3c:
    ld         $v0,32($s1)
    lw         $a3,88($v0)
    slt        $a3,$a1,$a3
    beqz       $a3, .L00003d68
    nop
    cache      0x14,0($sp)
    ld         $at,96($v0)
    dsll       $v1,$a1,0x2
    daddu      $at,$at,$v1
    lw         $a4,8($s3)
    sw         $a4,0($at)
.L00003d68:
    ld         $at,32($s1)
    daddiu     $at,$at,80
    li         $v1,1
.L00003d74:
    ll         $a4,0($at)
    addu       $a3,$a4,$v1
    move       $a4,$a3
    sc         $a3,0($at)
    beqzl      $a3, .L00003d74
    nop
    ld         $a3,120($s0)
    ld         $a3,160($a3)
    bnez       $a3, .L00003e78
    nop
.L00003d9c:
    li         $a0,4
    lw         $a1,20($s0)
    jal        invalidate_pane
    move       $a2,$s1
    ld         $v0,24($s1)
    ld         $v0,136($v0)
    lw         $a3,4($s3)
    lw         $a2,28($s0)
    move       $a1,$s0
    jalr       $v0
    ld         $a0,32($s1)
    sd         $v0,40($sp)
    beqz       $v0, .L00003e18
    ld         $s3,16($sp)
    ld         $a0,32($s1)
    daddiu     $a0,$a0,80
    li         $a1,-1
.L00003de0:
    ll         $v1,0($a0)
    addu       $a2,$v1,$a1
    move       $v1,$a2
    sc         $a2,0($a0)
    beqzl      $a2, .L00003de0
    nop
    ld         $a0,120($s0)
    jal        validate_pane_buffer
    move       $a1,$s1
    ld         $v0,40($sp)
    ld         $s1,32($sp)
    ld         $s0,8($sp)
    b          .L00003ca8
    ld         $ra,0($sp)
.L00003e18:
    ld         $at,32($s1)
    daddiu     $at,$at,80
    li         $v1,-1
.L00003e24:
    ll         $a4,0($at)
    addu       $a3,$a4,$v1
    move       $a4,$a3
    sc         $a3,0($at)
    beqzl      $a3, .L00003e24
    nop
    ld         $a3,120($s0)
    ld         $a3,160($a3)
    bnez       $a3, .L00003ebc
    ld         $s0,8($sp)
.L00003e4c:
    jal        rrmUnMapGfx
    move       $a0,$s1
    cache      0x14,0($sp)
    ld         $v1,0($gp)
    lw         $v0,20($v1)
    ld         $s1,32($sp)
    addiu      $v0,$v0,1
    sw         $v0,20($v1)
    ld         $ra,0($sp)
    b          .L00003ca8
    move       $v0,$zero
.L00003e78:
    ld         $a0,-30712($gp)
    li         $a1,25
    jal        psema
    daddiu     $a0,$a0,16
    b          .L00003d9c
    nop
.L00003e90:
    lw         $a3,48($s1)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00003cd4
    nop
    ld         $s1,32($sp)
    ld         $s3,16($sp)
    move       $v0,$zero
    b          .L00003ca8
    ld         $s0,8($sp)
.L00003eb4:
    b          .L00003d20
    lw         $a0,8($s3)
.L00003ebc:
    ld         $a0,-30712($gp)
    ld         $s0,8($sp)
    jal        vsema
    daddiu     $a0,$a0,16
    b          .L00003e4c
    nop
.L00003ed4:
    ld         $a3,120($s0)
    ld         $a3,160($a3)
    bnez       $a3, .L00003d3c
    nop
    ld         $s1,32($sp)
    ld         $s3,16($sp)
    move       $v0,$zero
    b          .L00003ca8
    ld         $s0,8($sp)
.L00003ef8:
    cache      0x14,0($sp)
    li         $a4,-5
    and        $a0,$a0,$a4
    b          .L00003d1c
    sw         $a0,8($s3)
.L00003f0c:
    move       $a0,$s1
    move       $a1,$s0
    jal        rrmSetResourceMask
    ori        $a2,$v0,0x8
    b          .L00003c50
    nop
.L00003f24:
    ld         $s1,32($sp)
    ld         $s3,16($sp)
    li         $v0,14
    b          .L00003ca8
    ld         $s0,8($sp)

glabel rrmSwapUnGroup
    ld         $a5,160($a1)
    lw         $a3,4($a5)
    daddiu     $sp,$sp,-32
    move       $a4,$a1
    ld         $a6,32($a0)
    beqz       $a3, .L00003f60
    addiu      $v0,$a3,-1
    lbu        $at,176($a1)
    beqz       $at, .L00004004
    nop
.L00003f60:
    cache      0x14,0($sp)
    ld         $a0,168($a1)
    beq        $a0, $a1, .L00003f84
    sd         $zero,160($a1)
    ld         $a3,168($a4)
.L00003f74:
    move       $a4,$a3
    ld         $a3,168($a3)
    bne        $a3, $a1, .L00003f74
    nop
.L00003f84:
    cache      0x14,0($sp)
    sd         $a0,168($a4)
    lw         $v0,0($a5)
    addiu      $v0,$v0,-1
    move       $a1,$zero
    bnez       $v0, .L00003fc8
    sw         $v0,0($a5)
    lw         $a0,176($a6)
    beqz       $a0, .L00003fb8
    nop
    b          .L00003fdc
    nop
.L00003fb4:
    sd         $ra,0($sp)
.L00003fb8:
    sd         $ra,0($sp)
    jal        kern_free
    move       $a0,$a5
    ld         $ra,0($sp)
.L00003fc8:
    jr         $ra
    daddiu     $sp,$sp,32
.L00003fd0:
    sltu       $v1,$a1,$a0
    beqz       $v1, .L00003fb4
    nop
.L00003fdc:
    ld         $a3,184($a6)
    dsll       $at,$a1,0x3
    daddu      $a3,$a3,$at
    ld         $a2,0($a3)
    bne        $a2, $a5, .L00003fd0
    addiu      $a1,$a1,1
    cache      0x14,0($sp)
    sd         $zero,0($a3)
    b          .L00003fd0
    lw         $a0,176($a6)
.L00004004:
    cache      0x14,0($sp)
    b          .L00003f60
    sw         $v0,4($a5)

glabel RRM_SwapUnGroup
    daddiu     $sp,$sp,-80
    sd         $s0,32($sp)
    sd         $s7,16($sp)
    sd         $s8,24($sp)
    li         $a1,25
    ld         $s8,-30712($gp)
    sd         $s1,0($sp)
    move       $s7,$a2
    move       $s0,$zero
    sd         $ra,8($sp)
    move       $s1,$a0
    daddiu     $s8,$s8,16
    jal        psema
    move       $a0,$s8
    lw         $a0,0($s7)
    jal        clip2pane
    move       $a1,$s1
    bnez       $v0, .L00004068
    ld         $s7,16($sp)
    li         $s0,2
    b          .L0000407c
    ld         $s1,0($sp)
.L00004068:
    ld         $at,160($v0)
    bnez       $at, .L0000409c
    nop
    li         $s0,15
    ld         $s1,0($sp)
.L0000407c:
    jal        vsema
    move       $a0,$s8
    ld         $ra,8($sp)
    move       $v0,$s0
    ld         $s0,32($sp)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000409c:
    move       $a0,$s1
    jal        rrmSwapUnGroup
    move       $a1,$v0
    b          .L0000407c
    ld         $s1,0($sp)

glabel RRM_SwapGroup
    daddiu     $sp,$sp,-96
    sd         $s0,56($sp)
    sd         $a2,40($sp)
    sd         $a0,24($sp)
    sd         $ra,48($sp)
    move       $a1,$a0
    jal        clip2pane
    lw         $a0,0($a2)
    move       $s0,$v0
    move       $at,$v0
    beqz       $v0, .L000041b8
    sd         $v0,32($sp)
    ld         $v1,160($s0)
    bnez       $v1, .L000041a4
    nop
.L000040ec:
    ld         $a0,40($sp)
    lw         $a0,4($a0)
    beqz       $a0, .L000041d0
    nop
    jal        clip2pane
    ld         $a1,24($sp)
    move       $s0,$v0
    ld         $a4,32($sp)
    beqz       $v0, .L000041c4
    move       $a0,$v0
    ld         $v0,160($s0)
    beqz       $v0, .L00004208
    nop
    ld         $a4,88($a4)
    ld         $a3,88($s0)
    move       $s0,$v0
    beq        $a3, $a4, .L00004140
    ld         $s0,56($sp)
    li         $v0,6
    b          .L00004198
    ld         $s0,56($sp)
.L00004140:
    sd         $a0,16($sp)
    sd         $v0,0($sp)
.L00004148:
    ld         $a0,-30712($gp)
    li         $a1,25
    daddiu     $a0,$a0,16
    jal        psema
    sd         $a0,8($sp)
    cache      0x14,0($sp)
    ld         $a4,16($sp)
    ld         $a3,32($sp)
    ld         $a2,0($sp)
    sd         $a2,160($a3)
    ld         $a5,168($a4)
    sb         $zero,176($a3)
    sd         $a5,168($a3)
    sd         $a3,168($a4)
    lw         $a1,0($a2)
    ld         $a0,8($sp)
    addiu      $a1,$a1,1
    jal        vsema
    sw         $a1,0($a2)
    move       $v0,$zero
.L00004198:
    ld         $ra,48($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L000041a4:
    ld         $a0,24($sp)
    jal        rrmSwapUnGroup
    move       $a1,$s0
    b          .L000040ec
    nop
.L000041b8:
    li         $v0,2
    b          .L00004198
    ld         $s0,56($sp)
.L000041c4:
    li         $v0,9
    b          .L00004198
    ld         $s0,56($sp)
.L000041d0:
    cache      0x14,0($sp)
    move       $a6,$s0
    sd         $s0,16($sp)
    li         $a0,12
    jal        kern_malloc
    sd         $s0,168($s0)
    move       $a0,$v0
    move       $a7,$v0
    sd         $v0,0($sp)
    li         $a1,12
    jal        bzero
    ld         $s0,56($sp)
    b          .L00004148
    nop
.L00004208:
    li         $v0,15
    b          .L00004198
    ld         $s0,56($sp)

glabel RRM_SwapReady
    lw         $at,4($a2)
    daddiu     $sp,$sp,-80
    ld         $v0,32($a0)
    sd         $v0,16($sp)
    lw         $v0,176($v0)
    sd         $s0,0($sp)
    sltu       $at,$at,$v0
    move       $s0,$a0
    sd         $a2,24($sp)
    bnez       $at, .L0000424c
    li         $v0,37
    ld         $s0,0($sp)
.L00004244:
    jr         $ra
    daddiu     $sp,$sp,80
.L0000424c:
    ld         $a0,24($sp)
    sd         $ra,32($sp)
    move       $a1,$s0
    jal        clip2pane
    lw         $a0,0($a0)
    beqz       $v0, .L000042fc
    ld         $ra,32($sp)
    ld         $a4,16($sp)
    ld         $a3,88($v0)
    beq        $a3, $a4, .L00004284
    nop
    li         $v0,6
    b          .L00004244
    ld         $s0,0($sp)
.L00004284:
    ld         $a1,160($v0)
    beqz       $a1, .L000043bc
    nop
    ld         $a5,32($s0)
    ld         $at,72($a5)
    bne        $at, $s0, .L0000432c
    sd         $v0,8($sp)
.L000042a0:
    ld         $a0,24($sp)
    ld         $v0,16($sp)
    lw         $v1,8($a0)
    ld         $s0,0($sp)
    ld         $v0,184($v0)
    beqz       $v1, .L0000437c
    lw         $a0,4($a0)
    dsll32     $v1,$a0,0x0
    dsrl32     $v1,$v1,0x0
    dsll       $v1,$v1,0x3
    dsll32     $a4,$a0,0x0
    daddu      $v1,$v1,$v0
    dsll32     $a3,$a0,0x0
    ld         $v1,0($v1)
    dsrl32     $a3,$a3,0x0
    dsll       $a3,$a3,0x3
    beqz       $v1, .L00004310
    daddu      $a3,$a3,$v0
    ld         $a3,0($a3)
    bne        $a3, $a1, .L00004308
    li         $v0,16
    b          .L00004244
    li         $v0,17
.L000042fc:
    li         $v0,2
    b          .L00004244
    ld         $s0,0($sp)
.L00004308:
    b          .L00004244
    nop
.L00004310:
    cache      0x14,0($sp)
    dsrl32     $a4,$a4,0x0
    dsll       $a4,$a4,0x3
    daddu      $a4,$a4,$v0
    sd         $a1,0($a4)
.L00004324:
    b          .L00004244
    move       $v0,$zero
.L0000432c:
    li         $a1,537
    jal        psema
    daddiu     $a0,$a5,56
    cache      0x14,0($sp)
    ld         $v1,32($s0)
    sd         $s0,72($v1)
    ld         $at,32($s0)
    lw         $at,104($at)
    beqz       $at, .L00004370
    ld         $ra,32($sp)
.L00004354:
    jal        us_delay
    li         $a0,2
    ld         $a3,32($s0)
    lw         $a3,104($a3)
    bnez       $a3, .L00004354
    nop
    ld         $ra,32($sp)
.L00004370:
    ld         $a1,8($sp)
    b          .L000042a0
    ld         $a1,160($a1)
.L0000437c:
    dsll32     $a3,$a0,0x0
    dsrl32     $a3,$a3,0x0
    dsll       $a3,$a3,0x3
    daddu      $a3,$a3,$v0
    ld         $a3,0($a3)
    beq        $a3, $a1, .L000043a0
    nop
    b          .L00004244
    li         $v0,9
.L000043a0:
    cache      0x14,0($sp)
    dsll32     $a4,$a0,0x0
    dsrl32     $a4,$a4,0x0
    dsll       $a4,$a4,0x3
    daddu      $a4,$a4,$v0
    b          .L00004324
    sd         $zero,0($a4)
.L000043bc:
    li         $v0,15
    b          .L00004244
    ld         $s0,0($sp)

glabel RRM_CushionBuffer
    move       $a1,$a0
    lw         $a0,0($a2)
    daddiu     $sp,$sp,-64
    sd         $a2,16($sp)
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        clip2pane
    ld         $s0,32($a1)
    beqz       $v0, .L0000443c
    ld         $ra,8($sp)
    ld         $at,88($v0)
    beq        $at, $s0, .L0000440c
    nop
    li         $v0,6
    ld         $s0,0($sp)
.L00004404:
    jr         $ra
    daddiu     $sp,$sp,64
.L0000440c:
    lw         $a3,192($s0)
    beqz       $a3, .L00004468
    ld         $s0,0($sp)
    ld         $v1,16($sp)
    lw         $v1,4($v1)
    ld         $s0,0($sp)
    beqz       $v1, .L00004458
    lbu        $a2,177($v0)
    beqz       $a2, .L00004448
    nop
    b          .L00004404
    li         $v0,16
.L0000443c:
    li         $v0,2
    b          .L00004404
    ld         $s0,0($sp)
.L00004448:
    cache      0x14,0($sp)
    sb         $a3,177($v0)
.L00004450:
    b          .L00004404
    move       $v0,$zero
.L00004458:
    beqz       $a2, .L00004470
    nop
    b          .L00004404
    li         $v0,2
.L00004468:
    b          .L00004404
    li         $v0,19
.L00004470:
    cache      0x14,0($sp)
    b          .L00004450
    sb         $zero,177($v0)

glabel RRM_MGR_SwapBuf
    daddiu     $sp,$sp,-64
    sd         $s0,8($sp)
    sd         $s1,16($sp)
    sd         $ra,0($sp)
    move       $s1,$a0
    jal        RRM_CheckValidFault
    move       $s0,$a2
    bltz       $v0, .L0000454c
    ld         $ra,0($sp)
    ld         $v0,32($s1)
    lw         $a2,4($s0)
    lw         $at,88($v0)
    slt        $at,$a2,$at
    beqz       $at, .L000044d4
    nop
    cache      0x14,0($sp)
    ld         $a3,96($v0)
    dsll       $a2,$a2,0x2
    lw         $v1,16($s0)
    daddu      $a2,$a3,$a2
    sw         $v1,0($a2)
    lw         $a2,4($s0)
.L000044d4:
    ld         $a5,24($s1)
    ld         $a5,168($a5)
    lw         $a4,12($s0)
    lw         $a3,16($s0)
    move       $a0,$s1
    jalr       $a5
    lw         $a1,8($s0)
    move       $a0,$v0
    beqz       $v0, .L00004510
    ld         $ra,0($sp)
    ld         $s1,16($sp)
    negu       $v0,$a0
    ld         $s0,8($sp)
.L00004508:
    jr         $ra
    daddiu     $sp,$sp,64
.L00004510:
    lw         $a0,8($s0)
    jal        clip2pane
    move       $a1,$s1
    ld         $ra,0($sp)
    beqz       $v0, .L00004540
    ld         $s1,16($sp)
    cache      0x14,0($sp)
    lw         $at,16($s0)
    andi       $at,$at,0x4
    xori       $at,$at,0x4
    sltiu      $at,$at,1
    sh         $at,18($v0)
.L00004540:
    move       $v0,$zero
    b          .L00004508
    ld         $s0,8($sp)
.L0000454c:
    ld         $s1,16($sp)
    li         $v0,14
    b          .L00004508
    ld         $s0,8($sp)

glabel rrmValidateMGRSwapBufSTREAM
    beqz       $a0, .L000045a0
    daddiu     $sp,$sp,-80
    ld         $a3,0($a0)
    beqz       $a3, .L000045a0
    nop
    sw         $zero,24($sp)
    sw         $zero,20($sp)
    sw         $a1,16($sp)
    li         $v0,3
    sw         $v0,12($sp)
    li         $at,9
    sb         $at,8($sp)
    sd         $ra,56($sp)
    daddiu     $a0,$sp,0
    jal        GfxIntrMessage
    sd         $a3,0($sp)
    ld         $ra,56($sp)
.L000045a0:
    jr         $ra
    daddiu     $sp,$sp,80

glabel rrmValidateMGRSwapBuf
    daddiu     $sp,$sp,-32
    move       $a3,$a0
    beqz       $a0, .L000045c4
    move       $a7,$a1
    ld         $at,0($a3)
    bnez       $at, .L000045cc
    nop
.L000045c4:
    jr         $ra
    daddiu     $sp,$sp,32
.L000045cc:
    li         $a2,-100
    daddiu     $a0,$gp,0
    dsll32     $a4,$a7,0x0
    sd         $ra,0($sp)
    ld         $a1,-30632($gp)
    move       $a5,$zero
    jal        streams_timeout
    dsrl32     $a4,$a4,0x0
    b          .L000045c4
    ld         $ra,0($sp)

glabel rrmGenlockNotifySTREAM
    beqz       $a0, .L00004634
    daddiu     $sp,$sp,-80
    ld         $a3,0($a0)
    beqz       $a3, .L00004634
    nop
    sw         $a1,20($sp)
    sw         $zero,16($sp)
    li         $v0,2
    sw         $v0,12($sp)
    li         $at,12
    sb         $at,8($sp)
    sd         $ra,56($sp)
    daddiu     $a0,$sp,0
    jal        GfxIntrMessage
    sd         $a3,0($sp)
    ld         $ra,56($sp)
.L00004634:
    jr         $ra
    daddiu     $sp,$sp,80

glabel rrmGenlockNotify
    daddiu     $sp,$sp,-32
    move       $a3,$a0
    beqz       $a0, .L00004658
    move       $a7,$a1
    ld         $at,0($a3)
    bnez       $at, .L00004660
    nop
.L00004658:
    jr         $ra
    daddiu     $sp,$sp,32
.L00004660:
    li         $a2,-100
    daddiu     $a0,$gp,0
    dsll32     $a4,$a7,0x0
    sd         $ra,0($sp)
    ld         $a1,-30624($gp)
    move       $a5,$zero
    jal        streams_timeout
    dsrl32     $a4,$a4,0x0
    b          .L00004658
    ld         $ra,0($sp)

glabel RRM_WaitForRetrace
    daddiu     $sp,$sp,-64
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    move       $s0,$a0
    jal        RRM_CheckValidFault
    move       $s1,$a1
    bgez       $v0, .L000046bc
    ld         $ra,0($sp)
    ld         $s1,16($sp)
    li         $v0,14
    b          .L000046f8
    ld         $s0,8($sp)
.L000046bc:
    move       $a0,$s0
    move       $a1,$s1
    jal        rrmInvalidateRN
    li         $a2,16
    ld         $at,24($s0)
    ld         $at,152($at)
    move       $a1,$s1
    jalr       $at
    ld         $a0,32($s0)
    move       $a0,$s0
    jal        rrmUnMapGfx
    ld         $s1,16($sp)
    ld         $ra,0($sp)
    move       $v0,$zero
    ld         $s0,8($sp)
.L000046f8:
    jr         $ra
    daddiu     $sp,$sp,64

glabel RRM_SetSwapInterval
    lw         $a4,4($a2)
    bltz       $a4, .L0000472c
    li         $v0,22
    cache      0x14,0($sp)
    sw         $a4,32($a1)
    ld         $v0,120($a1)
    lw         $at,4($a2)
    sw         $at,24($v0)
    move       $v0,$zero
.L00004724:
    jr         $ra
    nop
.L0000472c:
    b          .L00004724
    nop

glabel RRM_Message
    daddiu     $sp,$sp,-144
    sd         $s1,80($sp)
    sd         $s0,64($sp)
    sd         $s2,72($sp)
    sd         $ra,56($sp)
    move       $s2,$a0
    move       $s0,$a1
    sd         $s5,88($sp)
    jal        splhi
    move       $s1,$a2
    sd         $s7,96($sp)
    move       $s5,$v0
    jal        pane_validmask
    ld         $a0,120($s0)
    lhu        $s7,6($s0)
    move       $a0,$s5
    jal        splx
    or         $s7,$s7,$v0
    cache      0x14,0($sp)
    lw         $a2,4($s1)
    ld         $s5,88($sp)
    ld         $ra,56($sp)
    and        $a2,$a2,$s7
    sw         $a2,4($s1)
    beqz       $a2, .L000047d0
    ld         $s7,96($sp)
    move       $a0,$s2
    move       $a1,$s0
    jal        rrmInvalidateRN
    ld         $s7,96($sp)
    ld         $a1,120($s0)
    lw         $a0,4($s1)
    move       $a2,$s2
    jal        invalidate_pane
    lw         $a1,4($a1)
    move       $a0,$s2
    jal        rrmUnMapGfx
    ld         $s0,64($sp)
    ld         $ra,56($sp)
.L000047d0:
    ld         $v0,0($s2)
    ld         $a3,8($v0)
    ld         $s2,72($sp)
    beqz       $a3, .L0000483c
    ld         $s0,64($sp)
    sd         $v0,0($sp)
    lbu        $s2,8($s1)
    sb         $s2,8($sp)
    lw         $a0,12($s1)
    slti       $a4,$a0,11
    ld         $s2,72($sp)
    bnez       $a4, .L0000480c
    move       $v0,$a0
    b          .L0000480c
    li         $v0,10
.L0000480c:
    sll        $a2,$v0,0x2
    daddiu     $a1,$sp,16
    daddiu     $a0,$s1,16
    jal        bcopy
    sw         $v0,12($sp)
    daddiu     $a0,$sp,0
    jal        GfxMessage
    ld         $s1,80($sp)
    move       $v0,$zero
    ld         $ra,56($sp)
.L00004834:
    jr         $ra
    daddiu     $sp,$sp,144
.L0000483c:
    ld         $s1,80($sp)
    b          .L00004834
    li         $v0,14

glabel RRM_SetVideoSync
    cache      0x14,0($sp)
    ld         $v0,32($a0)
    lw         $at,4($a2)
    sw         $at,128($v0)
    jr         $ra
    move       $v0,$zero

glabel RRM_GetVideoSync
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-48
    ld         $at,32($a0)
    move       $a1,$a3
    sd         $ra,0($sp)
    move       $v0,$a2
    li         $a2,8
    lw         $at,128($at)
    move       $a0,$v0
    jal        copyout
    sw         $at,4($v0)
    beqz       $v0, .L000048a0
    ld         $ra,0($sp)
    li         $v0,14
.L00004898:
    jr         $ra
    daddiu     $sp,$sp,48
.L000048a0:
    b          .L00004898
    move       $v0,$zero

glabel RRM_WaitVideoSync
    daddiu     $sp,$sp,-64
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    sd         $a3,24($sp)
    lw         $a3,8($a2)
    sd         $ra,0($sp)
    jal        rrmWaitVideoSync
    lw         $a2,4($a2)
    move       $a0,$v0
    beqz       $v0, .L000048e0
    ld         $ra,0($sp)
    move       $v0,$a0
.L000048d8:
    jr         $ra
    daddiu     $sp,$sp,64
.L000048e0:
    cache      0x14,0($sp)
    ld         $a1,24($sp)
    ld         $at,8($sp)
    ld         $v0,16($sp)
    li         $a2,16
    lw         $at,152($at)
    move       $a0,$v0
    jal        copyout
    sw         $at,12($v0)
    beqz       $v0, .L00004914
    ld         $ra,0($sp)
    b          .L000048d8
    li         $v0,14
.L00004914:
    b          .L000048d8
    move       $v0,$zero

glabel rrmWaitVideoSync
    daddiu     $sp,$sp,-96
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    move       $s1,$a2
    ld         $v0,32($a0)
    blez       $a2, .L00004950
    move       $s0,$a3
    bltz       $s0, .L00004950
    nop
    slt        $at,$s0,$s1
    sd         $v0,32($sp)
    bnez       $at, .L00004964
    sd         $a1,24($sp)
.L00004950:
    ld         $s1,16($sp)
    li         $v0,22
    ld         $s0,8($sp)
.L0000495c:
    jr         $ra
    daddiu     $sp,$sp,96
.L00004964:
    sd         $ra,48($sp)
    jal        splhi
    nop
    cache      0x14,0($sp)
    ld         $a1,24($sp)
    ld         $a2,32($sp)
    sd         $zero,160($a1)
    sw         $s0,148($a1)
    sw         $s1,144($a1)
    ld         $a5,136($a2)
    sd         $v0,40($sp)
    ld         $s1,16($sp)
    beqz       $a5, .L000049ec
    ld         $s0,8($sp)
    cache      0x14,0($sp)
    ld         $s1,16($sp)
    sd         $a5,160($a1)
    sd         $a1,136($a2)
.L000049ac:
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $a2,32($sp)
    ld         $a0,24($sp)
    li         $a1,30
    daddiu     $a2,$a2,48
    ld         $a3,40($sp)
    jal        sv_wait_sig
    daddiu     $a0,$a0,48
    bltz       $v0, .L000049fc
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    move       $v0,$zero
    b          .L0000495c
    ld         $ra,48($sp)
.L000049ec:
    cache      0x14,0($sp)
    sd         $a1,136($a2)
    b          .L000049ac
    ld         $s0,8($sp)
.L000049fc:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    li         $v0,-1
    b          .L0000495c
    ld         $ra,48($sp)

glabel rrmValidateVideoSync
    daddiu     $sp,$sp,-64
    sd         $s1,16($sp)
    sd         $s5,24($sp)
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    sd         $s8,40($sp)
    jal        splhi
    move       $s0,$a0
    ld         $s5,136($s0)
    move       $s8,$v0
    beqz       $s5, .L00004ae0
    move       $s1,$s5
    b          .L00004a58
    nop
.L00004a48:
    move       $s1,$s5
    move       $s5,$a0
.L00004a50:
    beqz       $s5, .L00004adc
    nop
.L00004a58:
    ld         $at,64($s5)
    lw         $at,48($at)
    andi       $at,$at,0x8
    beqz       $at, .L00004ad4
    nop
    lw         $v0,128($s0)
.L00004a70:
    lw         $v1,144($s5)
    divu       $zero,$v0,$v1
    lw         $a1,148($s5)
    mfhi       $a2
    ld         $a0,160($s5)
    move       $a3,$s5
    bne        $a1, $a2, .L00004a48
    teq        $v1,$zero,0x7
    ld         $at,136($s0)
    bne        $at, $s5, .L00004ab0
    nop
    cache      0x14,0($sp)
    move       $s5,$a0
    sd         $a0,136($s0)
    b          .L00004abc
    move       $s1,$a0
.L00004ab0:
    cache      0x14,0($sp)
    sd         $a0,160($s1)
    ld         $s5,160($s5)
.L00004abc:
    cache      0x14,0($sp)
    daddiu     $a0,$a3,48
    jal        sv_signal
    sw         $v0,152($a3)
    b          .L00004a50
    nop
.L00004ad4:
    b          .L00004a70
    lw         $v0,124($s0)
.L00004adc:
    sd         $s7,32($sp)
.L00004ae0:
    sd         $s7,32($sp)
    ld         $s1,168($s0)
    lw         $s7,164($s0)
    ld         $s5,24($sp)
    beqz       $s1, .L00004b28
    addiu      $s7,$s7,1
.L00004af8:
    ld         $at,120($s1)
    lw         $at,28($at)
    sltu       $at,$s7,$at
    bnez       $at, .L00004b24
    ld         $s5,168($s1)
    cache      0x14,0($sp)
    daddiu     $a0,$s1,48
    jal        sv_signal
    sd         $zero,168($s1)
    bnez       $s5, .L00004af8
    move       $s1,$s5
.L00004b24:
    ld         $s5,24($sp)
.L00004b28:
    cache      0x14,0($sp)
    sd         $s1,168($s0)
    move       $a0,$s8
    jal        splx
    ld         $s7,32($sp)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    ld         $s8,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel RRM_MapClipToSwapbufID
    daddiu     $sp,$sp,-64
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    move       $a1,$a0
    sd         $ra,0($sp)
    move       $s0,$a2
    lw         $a0,4($a2)
    jal        clip2pane
    move       $s1,$a3
    li         $v1,-1
    beqz       $v0, .L00004ba8
    ld         $ra,0($sp)
    cache      0x14,0($sp)
    lw         $at,20($v0)
    bnez       $s1, .L00004bb4
    sw         $at,8($s0)
.L00004b94:
    ld         $s1,16($sp)
    move       $v0,$zero
    ld         $s0,8($sp)
.L00004ba0:
    jr         $ra
    daddiu     $sp,$sp,64
.L00004ba8:
    cache      0x14,0($sp)
    beqz       $s1, .L00004b94
    sw         $v1,8($s0)
.L00004bb4:
    move       $a0,$s0
    move       $a1,$s1
    jal        copyout
    li         $a2,12
    ld         $ra,0($sp)
    ld         $s1,16($sp)
    beqz       $v0, .L00004b94
    ld         $s0,8($sp)
    b          .L00004ba0
    li         $v0,14

glabel RRM_Dispatch
    slti       $at,$a1,1000
    daddiu     $sp,$sp,-176
    move       $v0,$a0
    li         $a0,1011
    sd         $s0,120($sp)
    ld         $a6,-30616($gp)
    bnez       $at, .L00004c68
    move       $s0,$a1
    slti       $v1,$s0,1100
    dsll       $a5,$s0,0x2
    beqz       $v1, .L00004c68
    dsubu      $a5,$a5,$s0
    dsll       $a5,$a5,0x3
    daddu      $a5,$a5,$a6
    sd         $a5,72($sp)
    ld         $a5,-24000($a5)
    beqz       $a5, .L00004c68
    li         $a6,1016
    beq        $s0, $a0, .L00004ed4
    nop
    sd         $ra,136($sp)
    sd         $v0,88($sp)
    sd         $a2,80($sp)
    beq        $s0, $a6, .L00004c78
    sd         $a3,112($sp)
    ld         $a2,72($sp)
    ld         $a0,80($sp)
    daddiu     $a1,$sp,0
    jal        copyin
    lw         $a2,-23992($a2)
    beqz       $v0, .L00004cb8
    ld         $ra,136($sp)
    li         $v0,14
    b          .L00004c70
    ld         $s0,120($sp)
.L00004c68:
    li         $v0,22
    ld         $s0,120($sp)
.L00004c70:
    jr         $ra
    daddiu     $sp,$sp,176
.L00004c78:
    jal        curproc_abi
    nop
    ld         $a0,80($sp)
    move       $a4,$v0
    ld         $a2,72($sp)
    li         $a6,1
    li         $a5,4
    ld         $a3,-30600($gp)
    daddiu     $a1,$sp,0
    jal        copyin_xlate
    lw         $a2,-23992($a2)
    beqz       $v0, .L00004cb8
    ld         $ra,136($sp)
    li         $v0,14
    b          .L00004c70
    ld         $s0,120($sp)
.L00004cb8:
    ld         $a6,88($sp)
    ld         $a5,0($a6)
    ld         $v0,72($sp)
    ld         $a5,8($a5)
    lw         $v0,-23988($v0)
    sd         $v0,104($sp)
    bne        $a5, $a6, .L00004cf4
    move       $at,$v0
    beqz       $v0, .L00004cf4
    nop
    ld         $at,88($sp)
    ld         $v0,32($at)
    ld         $a6,72($v0)
    bne        $a6, $at, .L00004f90
    nop
.L00004cf4:
    lw         $a7,0($sp)
    li         $v1,1000
    li         $a5,1002
    beq        $s0, $v1, .L00004ea4
    andi       $a0,$a7,0xffff
    beq        $s0, $a5, .L00004f3c
    nop
.L00004d10:
    li         $a6,1020
    beq        $s0, $a6, .L00004f84
    nop
    li         $at,1010
    beq        $s0, $at, .L00004e04
    nop
    li         $v1,1011
    beq        $s0, $v1, .L00004e04
    nop
    li         $a5,1004
    beq        $s0, $a5, .L00004e04
    nop
    li         $a6,1012
    beq        $s0, $a6, .L00004e04
    nop
    li         $at,1017
    beq        $s0, $at, .L00004e04
    nop
    li         $v1,1013
    beq        $s0, $v1, .L00004e04
    nop
    li         $a5,1014
    beq        $s0, $a5, .L00004e04
    nop
    li         $a6,1019
    beq        $s0, $a6, .L00004e04
    nop
    li         $at,1018
    beq        $s0, $at, .L00004e04
    nop
    andi       $a1,$a7,0xffff
    beqz       $a1, .L00004fe0
    ld         $s0,120($sp)
    lw         $v1,0($gp)
    slt        $v1,$a1,$v1
    beqz       $v1, .L00004fe0
    nop
    dsll       $a2,$a1,0x2
    dsubu      $a2,$a2,$a1
    dsll       $a2,$a2,0x2
    dsubu      $a2,$a2,$a1
    ld         $a5,-30672($gp)
    dsll       $a2,$a2,0x4
    daddu      $a2,$a2,$a5
    lbu        $a5,82($a2)
    li         $a6,1
    beq        $a5, $a6, .L0000507c
    move       $v0,$a2
    lw         $a5,0($a2)
    bne        $a5, $a7, .L0000507c
    nop
    ld         $at,88($sp)
    ld         $a6,0($at)
    ld         $a6,8($a6)
    beq        $a6, $at, .L00004e0c
    nop
    ld         $at,104($sp)
    beqz       $at, .L00005084
    nop
    b          .L00004c70
    li         $v0,13
.L00004e04:
    move       $v0,$zero
    ld         $s0,120($sp)
.L00004e0c:
    ld         $v1,104($sp)
    li         $at,1
    beqz       $v1, .L00004f20
    ld         $a6,88($sp)
.L00004e1c:
    ld         $a6,32($a6)
    daddiu     $a6,$a6,80
.L00004e24:
    ll         $a5,0($a6)
    addu       $v1,$a5,$at
    move       $a5,$v1
    sc         $v1,0($a6)
    beqzl      $v1, .L00004e24
    nop
.L00004e3c:
    sd         $v0,96($sp)
    sd         $a0,64($sp)
.L00004e44:
    ld         $a7,72($sp)
    ld         $a0,88($sp)
    ld         $a7,-24000($a7)
    ld         $a1,96($sp)
    ld         $a4,112($sp)
    ld         $a3,80($sp)
    jalr       $a7
    daddiu     $a2,$sp,0
    ld         $at,104($sp)
    move       $a2,$v0
    li         $a6,-1
    beqz       $at, .L00004f64
    ld         $ra,136($sp)
.L00004e78:
    ld         $a5,88($sp)
    ld         $a5,32($a5)
    daddiu     $a5,$a5,80
.L00004e84:
    ll         $v1,0($a5)
    addu       $at,$v1,$a6
    move       $v1,$at
    sc         $at,0($a5)
    beqzl      $at, .L00004e84
    nop
.L00004e9c:
    b          .L00004c70
    move       $v0,$a2
.L00004ea4:
    li         $a6,-1
    beq        $a7, $a6, .L00004ecc
    ld         $s0,120($sp)
    andi       $a1,$a7,0xffff
    beqz       $a1, .L00004fe8
    nop
    lw         $at,0($gp)
    slt        $at,$a1,$at
    beqz       $at, .L00004fe8
    nop
.L00004ecc:
    b          .L00004e0c
    move       $v0,$zero
.L00004ed4:
    sd         $v0,88($sp)
    sd         $a2,80($sp)
    sd         $ra,136($sp)
    jal        curproc_abi
    sd         $a3,112($sp)
    ld         $a0,80($sp)
    move       $a4,$v0
    ld         $a2,72($sp)
    li         $a6,1
    li         $a5,4
    ld         $a3,-30608($gp)
    daddiu     $a1,$sp,0
    jal        copyin_xlate
    lw         $a2,-23992($a2)
    beqz       $v0, .L00004cb8
    ld         $ra,136($sp)
    li         $v0,14
    b          .L00004c70
    ld         $s0,120($sp)
.L00004f20:
    bnez       $v0, .L00004ff0
    nop
    ld         $a5,104($sp)
    beqz       $a5, .L00004e3c
    nop
    b          .L00004e1c
    nop
.L00004f3c:
    andi       $a6,$a7,0xffff
    bnez       $a6, .L00004d10
    nop
    ld         $at,88($sp)
    lw         $at,48($at)
    andi       $at,$at,0x8
    beqz       $at, .L00005124
    ld         $s0,120($sp)
    b          .L00004e0c
    move       $v0,$zero
.L00004f64:
    ld         $v1,96($sp)
    bnez       $v1, .L00005058
    nop
    ld         $a5,104($sp)
    beqz       $a5, .L00004e9c
    nop
    b          .L00004e78
    nop
.L00004f84:
    move       $v0,$zero
    b          .L00004e0c
    ld         $s0,120($sp)
.L00004f90:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $a6,88($sp)
    ld         $ra,32($a6)
    sd         $a6,72($ra)
    ld         $a6,32($a6)
    lw         $a6,104($a6)
    beqz       $a6, .L00004cf4
    ld         $ra,136($sp)
.L00004fbc:
    jal        us_delay
    li         $a0,2
    ld         $at,88($sp)
    ld         $at,32($at)
    lw         $at,104($at)
    bnez       $at, .L00004fbc
    nop
    b          .L00004cf4
    ld         $ra,136($sp)
.L00004fe0:
    b          .L00004c70
    li         $v0,22
.L00004fe8:
    b          .L00004c70
    li         $v0,22
.L00004ff0:
    sd         $a0,64($sp)
    ld         $a2,-30664($gp)
    andi       $a0,$a7,0xffff
    li         $a1,25
    dsll       $a0,$a0,0x4
    sd         $v0,96($sp)
    jal        psema
    daddu      $a0,$a0,$a2
    ld         $a5,96($sp)
    lbu        $a5,82($a5)
    li         $a6,1
    beq        $a5, $a6, .L00005038
    nop
    ld         $a6,96($sp)
    lw         $at,0($sp)
    lw         $a6,0($a6)
    beq        $a6, $at, .L00004e44
    nop
.L00005038:
    ld         $a0,64($sp)
    ld         $a1,-30664($gp)
    dsll       $a0,$a0,0x4
    jal        vsema
    daddu      $a0,$a0,$a1
    li         $v0,22
    b          .L00004c70
    ld         $ra,136($sp)
.L00005058:
    ld         $a0,64($sp)
    ld         $a1,-30664($gp)
    dsll       $a0,$a0,0x4
    sd         $a2,128($sp)
    jal        vsema
    daddu      $a0,$a0,$a1
    ld         $a2,128($sp)
    b          .L00004e9c
    ld         $ra,136($sp)
.L0000507c:
    b          .L00004c70
    li         $v0,22
.L00005084:
    ld         $a5,88($sp)
    lw         $a5,48($a5)
    andi       $a5,$a5,0x8
    beqz       $a5, .L000050f4
    nop
    ld         $a1,56($a2)
    beqz       $a1, .L0000513c
    nop
    lw         $a6,48($a1)
    andi       $a6,$a6,0x8
    beqz       $a6, .L000050c8
    nop
    ld         $v1,88($sp)
    ld         $at,32($a1)
    ld         $v1,32($v1)
    beq        $at, $v1, .L000050d0
    nop
.L000050c8:
    b          .L00004c70
    li         $v0,13
.L000050d0:
    lbu        $a5,84($a2)
    beqz       $a5, .L00004e0c
    nop
    ld         $at,88($sp)
    ld         $a6,64($a2)
    beq        $a6, $at, .L00004e0c
    nop
    b          .L00004c70
    li         $v0,13
.L000050f4:
    ld         $a1,88($sp)
    ld         $a1,64($a1)
    beqz       $a1, .L0000511c
    nop
.L00005104:
    ld         $a5,0($a1)
    beq        $a5, $a2, .L0000512c
    nop
    ld         $a1,8($a1)
    bnez       $a1, .L00005104
    nop
.L0000511c:
    b          .L00004c70
    li         $v0,13
.L00005124:
    b          .L00004c70
    li         $v0,22
.L0000512c:
    bnez       $a1, .L00004e0c
    nop
    b          .L0000511c
    nop
.L0000513c:
    b          .L00004c70
    li         $v0,22

glabel irix5_to_RRM_ValidateClip
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L00005184
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,56
    bnez       $at, .L0000520c
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00005170:
    cache      0x14,0($sp)
    li         $a0,56
    sw         $a0,4($s0)
    b          .L00005200
    move       $v0,$zero
.L00005184:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $at,0($a2)
    sw         $at,0($a1)
    lw         $a0,4($a2)
    sw         $a0,4($a1)
    lw         $v1,8($a2)
    sw         $v1,8($a1)
    lw         $v0,12($a2)
    sw         $v0,12($a1)
    lw         $at,16($a2)
    sw         $at,16($a1)
    lw         $a0,20($a2)
    sw         $a0,20($a1)
    lw         $v1,24($a2)
    sw         $v1,24($a1)
    lwu        $v0,28($a2)
    sd         $v0,32($a1)
    lw         $at,32($a2)
    sw         $at,40($a1)
    lw         $a0,36($a2)
    sw         $a0,44($a1)
    lw         $v1,40($a2)
    sw         $v1,48($a1)
    lw         $v0,44($a2)
    sw         $v0,52($a1)
    lw         $at,48($a2)
    sw         $at,56($a1)
    lw         $a2,52($a2)
    move       $v0,$zero
    sw         $a2,60($a1)
.L00005200:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000520c:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,56
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00005170
    ld         $ra,8($sp)

glabel irix5_to_RRM_GetDisplayModes
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L00005268
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,12
    bnez       $at, .L00005298
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00005254:
    cache      0x14,0($sp)
    li         $a0,12
    sw         $a0,4($s0)
    b          .L0000528c
    move       $v0,$zero
.L00005268:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v0,0($a2)
    sw         $v0,0($a1)
    lwu        $at,4($a2)
    sd         $at,8($a1)
    lw         $a2,8($a2)
    move       $v0,$zero
    sw         $a2,16($a1)
.L0000528c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005298:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,12
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00005254
    ld         $ra,8($sp)
