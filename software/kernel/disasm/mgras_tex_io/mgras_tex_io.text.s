.section .text
.set noat
.set noreorder


glabel WAIT_FOR_RE_SYNC
    daddiu     $sp,$sp,-48
    sd         $s7,8($sp)
    lui        $s7,0x7
    daddu      $s7,$a0,$s7
    lw         $at,0($s7)
    sd         $s5,0($sp)
    andi       $at,$at,0x1
    lui        $s5,0x1e
    sd         $ra,16($sp)
    bnez       $at, .L00000054
    ori        $s5,$s5,0x8480
    sd         $ra,16($sp)
.L00000030:
    addiu      $s5,$s5,-1
    beqz       $s5, .L00000070
    nop
    jal        us_delay
    li         $a0,1
    lw         $at,0($s7)
    andi       $at,$at,0x1
    beqz       $at, .L00000030
    nop
.L00000054:
    beqz       $s5, .L00000070
    ld         $ra,16($sp)
    ld         $s7,8($sp)
    move       $v0,$zero
    ld         $s5,0($sp)
.L00000068:
    jr         $ra
    daddiu     $sp,$sp,48
.L00000070:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,16
    ld         $s7,8($sp)
    ld         $s5,0($sp)
    li         $v0,1
    b          .L00000068
    ld         $ra,16($sp)

glabel WAIT_FOR_READDMA
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-48
    sd         $s7,8($sp)
    lui        $s7,0x7
    lui        $v0,0xe
    daddu      $s7,$a0,$s7
    ori        $v0,$v0,0x100
    sw         $v0,128($s7)
    lw         $at,260($s7)
    sd         $s5,0($sp)
    andi       $at,$at,0x1eff
    lui        $s5,0x2d
    sd         $ra,16($sp)
    beqz       $at, .L000000f8
    ori        $s5,$s5,0xc6c0
    sd         $ra,16($sp)
.L000000d4:
    addiu      $s5,$s5,-1
    beqz       $s5, .L00000114
    nop
    jal        us_delay
    li         $a0,1
    lw         $at,260($s7)
    andi       $at,$at,0x1eff
    bnez       $at, .L000000d4
    nop
.L000000f8:
    beqz       $s5, .L00000114
    ld         $ra,16($sp)
    ld         $s7,8($sp)
    move       $v0,$zero
    ld         $s5,0($sp)
.L0000010c:
    jr         $ra
    daddiu     $sp,$sp,48
.L00000114:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,40
    ld         $s7,8($sp)
    ld         $s5,0($sp)
    li         $v0,1
    b          .L0000010c
    ld         $ra,16($sp)

glabel flushRegs
    cache      0x14,0($sp)
    lui        $a7,0x7
    lui        $a5,0xc
    daddu      $a7,$a4,$a7
    ori        $a5,$a5,0x4
    sw         $a5,128($a7)
    move       $a6,$zero
    li         $a4,3584
    sw         $a4,128($a7)
    lui        $v0,0xf
    ori        $v1,$a0,0x8
    sw         $v1,128($a7)
    sll        $at,$a2,0x2
    ori        $v0,$v0,0xffff
    sw         $a3,128($a7)
    and        $at,$at,$v0
    lui        $v0,0x8000
    sw         $a2,128($a7)
    or         $at,$at,$v0
    blez       $a2, .L000001ac
    sw         $at,128($a7)
.L0000018c:
    cache      0x14,0($sp)
    dsll       $at,$a6,0x2
    addiu      $a6,$a6,1
    slt        $v0,$a6,$a2
    daddu      $at,$at,$a1
    lw         $at,0($at)
    bnez       $v0, .L0000018c
    sw         $at,128($a7)
.L000001ac:
    jr         $ra
    nop

glabel __glMgrasSet
    cache      0x14,0($sp)
    move       $t0,$a0
    lw         $a0,2272($a4)
    addiu      $a0,$a0,1
    dsll       $v1,$a0,0x2
    sw         $a0,2272($a4)
    daddu      $v1,$v1,$a4
    sw         $a1,2012($v1)
    lw         $v0,2272($a4)
    addiu      $v0,$v0,1
    dsll       $at,$v0,0x2
    sw         $v0,2272($a4)
    daddu      $at,$at,$a4
    sw         $a2,2012($at)
    daddiu     $sp,$sp,-64
    move       $a6,$a4
    bnez       $a3, .L00000208
    lw         $a7,2272($a4)
    slti       $a1,$a7,1024
    bnez       $a1, .L0000023c
    sd         $a6,0($sp)
.L00000208:
    sra        $a3,$a7,0x1
    move       $a2,$a7
    li         $a0,32512
    move       $a4,$t0
    move       $a1,$a6
    sd         $ra,8($sp)
    sd         $a6,0($sp)
    jal        flushRegs
    daddiu     $a1,$a6,2016
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    sw         $zero,2272($ra)
    ld         $ra,8($sp)
.L0000023c:
    jr         $ra
    daddiu     $sp,$sp,64

glabel __glMgrSaveRSS
    cache      0x14,0($sp)
    lui        $at,0x7
    daddu      $at,$a0,$at
    li         $v0,0xd214
    sw         $v0,128($at)
    sw         $a1,128($at)
    sw         $a2,128($at)
    sw         $a3,128($at)
    sw         $a4,128($at)
    jr         $ra
    sw         $a5,128($at)

glabel __glMgrWaitForDMAWrite
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-48
    sd         $ra,24($sp)
    sd         $s1,16($sp)
    lui        $at,0xe
    ld         $s1,208($a0)
    ori        $at,$at,0x400
    lui        $v0,0x7
    sd         $s7,0($sp)
    sd         $s5,8($sp)
    lui        $s7,0x1e
    daddu      $s1,$s1,$v0
    lui        $s5,0x1
    ori        $s7,$s7,0x8480
    sw         $at,132($s1)
.L000002ac:
    lw         $v1,8($s1)
    and        $v1,$v1,$s5
    beqz       $v1, .L000002d8
    nop
    move       $v0,$zero
    ld         $ra,24($sp)
.L000002c4:
    ld         $s1,16($sp)
    ld         $s5,8($sp)
    ld         $s7,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000002d8:
    jal        us_delay
    li         $a0,1
    addiu      $s7,$s7,-1
    bnez       $s7, .L000002ac
    nop
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,64
    li         $v0,1
    b          .L000002c4
    ld         $ra,24($sp)

glabel __glMgr_WriteDMAHQSetup
    ld         $t2,-30672($gp)
    sll        $a7,$a5,0x1
    andi       $at,$a2,0x7
    ld         $t0,208($a0)
    ld         $t8,-30680($gp)
    lui        $t1,0x7
    ori        $a7,$a7,0xa1
    ld         $a0,-30704($gp)
    bnez       $at, .L00000360
    daddu      $t1,$t0,$t1
    bne        $a2, $a3, .L00000360
    andi       $at,$a4,0x1
    multu      $a2,$a4
    lui        $v0,0xf
    ori        $v0,$v0,0xffff
    mflo       $a3
    sltu       $v0,$v0,$a3
    bnez       $v0, .L000003e8
    nop
    move       $a2,$a3
    li         $a4,1
.L0000035c:
    move       $a3,$a2
.L00000360:
    cache      0x14,0($sp)
    dsll32     $a7,$a7,0x0
    dsll32     $t3,$a3,0x0
    lui        $v0,0x8000
    sll        $at,$a6,0x10
    ld         $v1,-30696($gp)
    dsrl32     $t3,$t3,0x0
    or         $at,$at,$v0
    ld         $v0,-30720($gp)
    dsll32     $at,$at,0x0
    ld         $t9,-30712($gp)
    dsrl32     $at,$at,0x0
    or         $at,$at,$v0
    dsll32     $v0,$a1,0x0
    sd         $at,128($t1)
    or         $a1,$t3,$t9
    dsll32     $t3,$a2,0x0
    ld         $at,-30688($gp)
    dsll32     $t9,$a4,0x0
    sd         $a1,128($t1)
    dsrl32     $v0,$v0,0x0
    sd         $a0,128($t1)
    dsrl32     $t9,$t9,0x0
    or         $v0,$v0,$v1
    sd         $v0,128($t1)
    dsrl32     $t3,$t3,0x0
    or         $t9,$t9,$at
    sd         $t9,128($t1)
    dsrl32     $a7,$a7,0x0
    or         $t3,$t3,$t8
    sd         $t3,128($t1)
    or         $a7,$a7,$t2
    jr         $ra
    sd         $a7,128($t1)
.L000003e8:
    bnez       $at, .L0000035c
    lui        $a3,0x7
    ori        $a3,$a3,0xffff
    sltu       $v0,$a3,$a2
    bnez       $v0, .L0000035c
    nop
.L00000400:
    srl        $a4,$a4,0x1
    andi       $at,$a4,0x1
    bnez       $at, .L0000041c
    sll        $a2,$a2,0x1
    sltu       $v0,$a3,$a2
    beqz       $v0, .L00000400
    nop
.L0000041c:
    b          .L0000035c
    nop

glabel __glMgr_WriteDMAGESetup
    cache      0x14,0($sp)
    srl        $a1,$a1,0x2
    multu      $a1,$a2
    lui        $v1,0x3
    ori        $v1,$v1,0xfe00
    lui        $v0,0x7
    lui        $a2,0x7fc
    daddu      $v0,$a0,$v0
    mflo       $at
    li         $a1,0xd80c
    sw         $a1,128($v0)
    and        $a0,$at,$a2
    and        $v1,$at,$v1
    srl        $a0,$a0,0x12
    sw         $a0,128($v0)
    srl        $v1,$v1,0x9
    sw         $v1,128($v0)
    andi       $at,$at,0x1ff
    jr         $ra
    sw         $at,128($v0)

glabel __glMgr_ReadDMAHQSetup
    move       $v0,$a2
    andi       $at,$a2,0x7
    move       $t2,$a2
    daddiu     $sp,$sp,-160
    move       $t3,$a5
    beqz       $at, .L00000514
    sd         $a3,64($sp)
.L00000490:
    cache      0x14,0($sp)
    sd         $t2,8($sp)
    sd         $t3,16($sp)
    sd         $a5,24($sp)
    sd         $a7,32($sp)
    sd         $a4,40($sp)
    sd         $a1,48($sp)
    sd         $a6,56($sp)
    sd         $ra,80($sp)
    sd         $v0,0($sp)
    lui        $v1,0x7
    daddu      $v1,$a0,$v1
    sd         $v1,72($sp)
    li         $v0,0xf200
    jal        WAIT_FOR_RE_SYNC
    sw         $v0,128($v1)
    ld         $t2,-30632($gp)
    ld         $a7,-30696($gp)
    ld         $t0,32($sp)
    ld         $t8,56($sp)
    lui        $a4,0xc
    ld         $at,40($sp)
    dsll32     $t0,$t0,0x0
    ld         $t1,72($sp)
    ori        $a4,$a4,0x4
    dsll32     $t8,$t8,0x0
    ld         $ra,80($sp)
    andi       $at,$at,0xffff
    beqz       $v0, .L00000570
    dsrl32     $t8,$t8,0x0
    li         $v0,1
.L0000050c:
    jr         $ra
    daddiu     $sp,$sp,160
.L00000514:
    lui        $t0,0xf
    bne        $v0, $a3, .L00000490
    sd         $a3,64($sp)
    multu      $v0,$a5
    ori        $t0,$t0,0xffff
    mflo       $a2
    sltu       $t0,$t0,$a2
    bnez       $t0, .L00000688
    nop
    move       $t2,$a2
    li         $t3,1
.L00000540:
    sd         $v0,0($sp)
    sd         $t2,8($sp)
    sd         $t3,16($sp)
    sd         $a5,24($sp)
    sd         $a7,32($sp)
    sd         $a4,40($sp)
    sd         $a1,48($sp)
    sd         $a6,56($sp)
    sd         $ra,80($sp)
    move       $t1,$t2
    b          .L00000490
    sd         $t2,64($sp)
.L00000570:
    cache      0x14,0($sp)
    ld         $t3,-30640($gp)
    ld         $t9,-30648($gp)
    ld         $v0,-30656($gp)
    ld         $a0,-30664($gp)
    ld         $v1,0($sp)
    ld         $a5,16($sp)
    ld         $a3,24($sp)
    lw         $a1,180($sp)
    sw         $a4,128($t1)
    ld         $a4,-30720($gp)
    lui        $a2,0x8000
    sll        $a1,$a1,0x10
    or         $a1,$a1,$a2
    lw         $a2,164($sp)
    sll        $a3,$a3,0x10
    sw         $a2,128($t1)
    ld         $a2,64($sp)
    dsll32     $a1,$a1,0x0
    ld         $a6,48($sp)
    dsrl32     $a1,$a1,0x0
    or         $a1,$a1,$a4
    ld         $a4,-30712($gp)
    dsll32     $a2,$a2,0x0
    or         $at,$at,$a3
    ld         $a3,8($sp)
    dsrl32     $a2,$a2,0x0
    dsll32     $v1,$v1,0x0
    or         $a2,$a2,$a4
    ld         $a4,-30680($gp)
    dsrl32     $v1,$v1,0x0
    sd         $a1,128($t1)
    dsll32     $a5,$a5,0x0
    lw         $a1,172($sp)
    dsrl32     $a5,$a5,0x0
    sd         $a2,128($t1)
    dsll32     $a6,$a6,0x0
    ld         $a2,-30704($gp)
    dsrl32     $a6,$a6,0x0
    sd         $a2,128($t1)
    or         $a6,$a6,$a7
    dsll32     $a3,$a3,0x0
    sd         $a6,128($t1)
    sll        $a1,$a1,0x1
    ld         $a6,-30688($gp)
    dsrl32     $a3,$a3,0x0
    ld         $a2,-30672($gp)
    ori        $a1,$a1,0xb9
    dsll32     $a1,$a1,0x0
    or         $a5,$a5,$a6
    sd         $a5,128($t1)
    or         $a3,$a3,$a4
    dsrl32     $a1,$a1,0x0
    sd         $a3,128($t1)
    dsll32     $at,$at,0x0
    or         $a1,$a1,$a2
    sd         $a1,128($t1)
    or         $v1,$v1,$a0
    dsrl32     $at,$at,0x0
    sd         $v1,128($t1)
    or         $at,$at,$v0
    sd         $at,128($t1)
    dsrl32     $t0,$t0,0x0
    or         $t8,$t8,$t9
    sd         $t8,128($t1)
    or         $t0,$t0,$t2
    sd         $t3,128($t1)
    move       $v0,$zero
    b          .L0000050c
    sd         $t0,128($t1)
.L00000688:
    andi       $t0,$t3,0x1
    bnez       $t0, .L00000540
    nop
    lui        $a2,0x7
    ori        $a2,$a2,0xffff
    sltu       $t1,$a2,$t2
    bnez       $t1, .L00000540
    nop
.L000006a8:
    srl        $t3,$t3,0x1
    andi       $t0,$t3,0x1
    bnez       $t0, .L000006c4
    sll        $t2,$t2,0x1
    sltu       $t1,$a2,$t2
    beqz       $t1, .L000006a8
    nop
.L000006c4:
    b          .L00000540
    nop

glabel MgrasUserSaveTexData
    daddiu     $sp,$sp,-80
    sd         $ra,32($sp)
    sd         $s1,56($sp)
    sd         $s4,40($sp)
    ld         $s4,32($a0)
    sd         $s0,48($sp)
    move       $s1,$a0
    move       $s0,$a1
    jal        RRM_CheckValidFault
    ld         $s4,208($s4)
    li         $a2,1
    bltz       $v0, .L00000808
    ld         $ra,32($sp)
    ld         $v1,32($s1)
    daddiu     $v1,$v1,80
.L00000708:
    ll         $v0,0($v1)
    addu       $a3,$v0,$a2
    move       $v0,$a3
    sc         $a3,0($v1)
    beqzl      $a3, .L00000708
    nop
    lw         $at,0($s0)
    beqz       $at, .L0000075c
    move       $v0,$zero
    lui        $a0,0x7
    daddu      $a0,$s4,$a0
.L00000734:
    cache      0x14,0($sp)
    dsll       $a3,$v0,0x2
    daddu      $a3,$a3,$s0
    lw         $a3,4($a3)
    sw         $a3,128($a0)
    lw         $a2,0($s0)
    addiu      $v0,$v0,1
    sltu       $a2,$v0,$a2
    bnez       $a2, .L00000734
    nop
.L0000075c:
    lw         $a7,68($s0)
    lw         $a6,64($s0)
    lw         $a5,60($s0)
    lw         $a4,56($s0)
    lw         $a3,52($s0)
    lw         $a2,48($s0)
    lw         $a1,44($s0)
    lw         $t1,72($s0)
    sw         $t1,4($sp)
    lw         $t0,76($s0)
    sw         $zero,20($sp)
    move       $a0,$s4
    jal        __glMgr_ReadDMAHQSetup
    sw         $t0,12($sp)
    ld         $ra,32($sp)
    ld         $s0,48($sp)
    li         $a2,-1
    beqz       $v0, .L000007dc
    ld         $s4,40($sp)
    ld         $at,32($s1)
    daddiu     $at,$at,80
    li         $v0,-1
.L000007b4:
    ll         $s1,0($at)
    addu       $v1,$s1,$v0
    move       $s1,$v1
    sc         $v1,0($at)
    beqzl      $v1, .L000007b4
    nop
    ld         $s1,56($sp)
    li         $v0,-1
.L000007d4:
    jr         $ra
    daddiu     $sp,$sp,80
.L000007dc:
    ld         $v1,32($s1)
    daddiu     $v1,$v1,80
.L000007e4:
    ll         $v0,0($v1)
    addu       $a3,$v0,$a2
    move       $v0,$a3
    sc         $a3,0($v1)
    beqzl      $a3, .L000007e4
    nop
    ld         $s1,56($sp)
    b          .L000007d4
    move       $v0,$zero
.L00000808:
    ld         $s1,56($sp)
    ld         $s0,48($sp)
    li         $v0,-1
    b          .L000007d4
    ld         $s4,40($sp)

glabel mgrasReadDMAPageSetup
    ld         $a7,1744($a0)
    ld         $at,208($a0)
    daddiu     $sp,$sp,-192
    ld         $a2,16($a7)
    sd         $a1,128($sp)
    sd         $s0,0($sp)
    sd         $at,120($sp)
    beqz       $a2, .L00000860
    move       $s0,$a0
.L00000840:
    cache      0x14,0($sp)
    ld         $s0,0($sp)
    ld         $v0,0($a2)
    sd         $v0,16($a7)
    sd         $zero,0($a2)
    move       $v0,$a2
.L00000858:
    jr         $ra
    daddiu     $sp,$sp,192
.L00000860:
    ld         $a0,200($s0)
    sd         $a0,32($sp)
    lbu        $a0,45($a0)
    sll        $a0,$a0,0xc
    sd         $a0,48($sp)
    sll        $a0,$a0,0x8
    sd         $a0,80($sp)
    dsll32     $a0,$a0,0x0
    move       $a2,$zero
    dsrl32     $a0,$a0,0x0
    li         $a1,256
    sd         $a1,96($sp)
    daddiu     $a0,$a0,16383
    sd         $ra,160($sp)
    lui        $a1,0x8
    dsrl       $a0,$a0,0xe
    ori        $a1,$a1,0x10
    jal        kvpalloc
    sll        $a0,$a0,0x0
    beqz       $v0, .L00000b74
    nop
    sd         $v0,16($sp)
.L000008b8:
    ld         $a1,32($sp)
    ld         $a2,96($sp)
    lbu        $a1,45($a1)
    multu      $a1,$a2
    ld         $a0,1744($s0)
    lw         $a0,8($a0)
    mflo       $a1
    addu       $a0,$a0,$a1
    sd         $a0,56($sp)
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    sd         $a1,88($sp)
    dsll       $a0,$a0,0x2
    li         $a1,0x8100
    jal        kmem_alloc
    sd         $a0,72($sp)
    move       $a3,$v0
    beqz       $v0, .L00000cac
    sd         $v0,24($sp)
    ld         $a7,1744($s0)
    lw         $a4,8($a7)
    move       $a2,$zero
    beqz       $a4, .L00000954
    nop
.L00000918:
    cache      0x14,0($sp)
    ld         $v1,0($a7)
    dsll       $a3,$a2,0x2
    daddu      $v1,$v1,$a3
    daddu      $a3,$v0,$a3
    lw         $v1,0($v1)
    sw         $v1,0($a3)
    ld         $a7,1744($s0)
    lw         $at,8($a7)
    addiu      $a2,$a2,1
    sltu       $at,$a2,$at
    bnez       $at, .L00000918
    nop
    sd         $s1,152($sp)
    sd         $s2,144($sp)
.L00000954:
    sd         $s1,152($sp)
    ld         $a3,88($sp)
    ld         $s1,16($sp)
    dsll       $a4,$a2,0x2
    sd         $s2,144($sp)
    srl        $a3,$a3,0x2
    daddu      $a4,$a4,$v0
    sd         $a4,112($sp)
    move       $s2,$zero
    beqz       $a3, .L000009cc
    sd         $a3,104($sp)
.L00000980:
    jal        kvtophyspnum
    move       $a0,$s1
    cache      0x14,0($sp)
    addiu      $s2,$s2,1
    ld         $v1,112($sp)
    daddiu     $v1,$v1,16
    sd         $v1,112($sp)
    ld         $a4,104($sp)
    sll        $at,$v0,0x2
    sw         $at,-16($v1)
    addiu      $v0,$at,1
    sltu       $a4,$s2,$a4
    sw         $v0,-12($v1)
    daddiu     $s1,$s1,16384
    addiu      $v0,$at,2
    sw         $v0,-8($v1)
    addiu      $at,$at,3
    bnez       $a4, .L00000980
    sw         $at,-4($v1)
.L000009cc:
    ld         $a1,128($sp)
    ld         $a2,96($sp)
    divu       $zero,$a2,$a1
    teq        $a1,$zero,0x7
    mflo       $a0
    sd         $a0,136($sp)
    dsll32     $a0,$a0,0x0
    ld         $s2,144($sp)
    dsrl32     $a0,$a0,0x0
    ld         $s1,152($sp)
    jal        kern_malloc
    dsll       $a0,$a0,0x4
    ld         $at,48($sp)
    beqz       $v0, .L00000cf8
    ld         $a2,136($sp)
    ld         $s1,1744($s0)
    lw         $s1,8($s1)
    sll        $s1,$s1,0xc
    dsll32     $s1,$s1,0x0
    move       $s2,$zero
    beqz       $a2, .L00000aac
    dsrl32     $s1,$s1,0x0
    ld         $v1,128($sp)
    multu      $at,$v1
    mflo       $t0
.L00000a38:
    cache      0x14,0($sp)
    dsll       $a4,$s2,0x4
    daddu      $a4,$a4,$v0
    daddiu     $v1,$a4,16
    addiu      $s2,$s2,1
    sltu       $a5,$s2,$a2
    dsll32     $at,$t0,0x0
    dsrl32     $at,$at,0x0
    lui        $a7,0x3f
    slt        $t1,$s1,$zero
    ori        $a7,$a7,0xffff
    daddu      $a7,$s1,$a7
    dsra32     $a6,$s1,0x1f
    movz       $a7,$s1,$t1
    xor        $a3,$s1,$a6
    dsubu      $a3,$a3,$a6
    lui        $t1,0x3f
    ori        $t1,$t1,0xffff
    dsra32     $a6,$s1,0x1f
    sd         $v1,0($a4)
    daddu      $s1,$at,$s1
    and        $a3,$a3,$t1
    dsra       $a7,$a7,0x16
    sw         $a7,12($a4)
    xor        $a3,$a3,$a6
    dsubu      $a3,$a3,$a6
    bnez       $a5, .L00000a38
    sw         $a3,8($a4)
    sd         $v0,40($sp)
.L00000aac:
    cache      0x14,0($sp)
    dsll       $a7,$s2,0x4
    daddu      $a7,$a7,$v0
    sd         $zero,-16($a7)
    sd         $v0,40($sp)
    ld         $a6,1744($s0)
    move       $a5,$v0
    ld         $s1,152($sp)
    li         $a0,32
    jal        kern_malloc
    sd         $v0,16($a6)
    ld         $a2,40($sp)
    ld         $a0,96($sp)
    beqz       $v0, .L00000c4c
    ld         $s2,144($sp)
    cache      0x14,0($sp)
    sd         $a2,8($v0)
    sw         $a0,24($v0)
    ld         $a3,16($sp)
    sd         $a3,16($v0)
    ld         $v1,1744($s0)
    ld         $v1,24($v1)
    sd         $v1,0($v0)
    ld         $at,1744($s0)
    sd         $v0,24($at)
    ld         $a7,1744($s0)
    ld         $a0,0($a7)
    beqz       $a0, .L00000b30
    nop
    lwu        $a1,8($a7)
    jal        kmem_free
    dsll       $a1,$a1,0x2
    ld         $a7,1744($s0)
.L00000b30:
    cache      0x14,0($sp)
    ld         $a5,24($sp)
    sd         $a5,0($a7)
    ld         $a4,1744($s0)
    ld         $a3,56($sp)
    sw         $a3,8($a4)
    ld         $a2,1744($s0)
    ld         $a0,120($sp)
    li         $a1,2
    lw         $a3,8($a2)
    li         $a4,1
    jal        MgrasInstallTxTbl_Kern
    ld         $a2,0($a2)
    ld         $a7,1744($s0)
    ld         $ra,160($sp)
    b          .L00000840
    ld         $a2,16($a7)
.L00000b74:
    ld         $a1,-30720($gp)
    li         $a0,4
    ld         $a2,80($sp)
    jal        cmn_err
    daddiu     $a1,$a1,136
    ld         $a0,48($sp)
    sll        $a0,$a0,0x6
    sd         $a0,64($sp)
    dsll32     $a0,$a0,0x0
    lui        $a1,0x8
    dsrl32     $a0,$a0,0x0
    li         $a2,64
    daddiu     $a0,$a0,16383
    sd         $a2,96($sp)
    ori        $a1,$a1,0x10
    dsrl       $a0,$a0,0xe
    move       $a2,$zero
    jal        kvpalloc
    sll        $a0,$a0,0x0
    bnez       $v0, .L000008b8
    sd         $v0,16($sp)
    ld         $a1,-30720($gp)
    li         $a0,4
    ld         $a2,64($sp)
    jal        cmn_err
    daddiu     $a1,$a1,216
    ld         $a2,128($sp)
    ld         $a3,48($sp)
    multu      $a3,$a2
    mflo       $a0
    addu       $a0,$a0,$a0
    sd         $a0,8($sp)
    dsll32     $a0,$a0,0x0
    lui        $a1,0x8
    dsrl32     $a0,$a0,0x0
    ori        $a1,$a1,0x10
    daddiu     $a0,$a0,16383
    addu       $a2,$a2,$a2
    sd         $a2,96($sp)
    dsrl       $a0,$a0,0xe
    move       $a2,$zero
    jal        kvpalloc
    sll        $a0,$a0,0x0
    bnez       $v0, .L000008b8
    sd         $v0,16($sp)
    ld         $a1,-30720($gp)
    li         $a0,4
    ld         $a2,8($sp)
    ld         $s0,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,280
    move       $v0,$zero
    b          .L00000858
    ld         $ra,160($sp)
.L00000c4c:
    move       $a0,$a2
    jal        kern_free
    ld         $s0,0($sp)
    ld         $a0,24($sp)
    jal        kmem_free
    ld         $a1,72($sp)
    ld         $a3,96($sp)
    ld         $a2,48($sp)
    multu      $a2,$a3
    mflo       $a1
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    daddiu     $a1,$a1,16383
    dsrl       $a1,$a1,0xe
    ld         $a0,16($sp)
    jal        kvpfree
    sll        $a1,$a1,0x0
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,480
    move       $v0,$zero
    b          .L00000858
    ld         $ra,160($sp)
.L00000cac:
    ld         $a3,96($sp)
    ld         $a2,48($sp)
    multu      $a2,$a3
    mflo       $a1
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    daddiu     $a1,$a1,16383
    ld         $a0,16($sp)
    dsrl       $a1,$a1,0xe
    ld         $s0,0($sp)
    jal        kvpfree
    sll        $a1,$a1,0x0
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,384
    move       $v0,$zero
    b          .L00000858
    ld         $ra,160($sp)
.L00000cf8:
    ld         $a0,24($sp)
    ld         $a1,72($sp)
    jal        kmem_free
    ld         $s0,0($sp)
    ld         $a3,96($sp)
    ld         $a2,48($sp)
    multu      $a2,$a3
    mflo       $a1
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    daddiu     $a1,$a1,16383
    dsrl       $a1,$a1,0xe
    ld         $a0,16($sp)
    jal        kvpfree
    sll        $a1,$a1,0x0
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,432
    move       $v0,$zero
    b          .L00000858
    ld         $ra,160($sp)

glabel MgrasRestoreTexData
    daddiu     $sp,$sp,-128
    sd         $s5,56($sp)
    sd         $s2,16($sp)
    ld         $s2,8($a1)
    sw         $zero,0($sp)
    lbu        $a5,35($s2)
    lw         $a4,0($sp)
    li         $a6,-7
    sd         $s3,32($sp)
    andi       $a5,$a5,0x3
    lbu        $a3,39($s2)
    and        $a4,$a4,$a6
    sll        $a5,$a5,0x1
    or         $a4,$a4,$a5
    sw         $a4,0($sp)
    move       $s5,$a1
    move       $s3,$a2
    lw         $a2,0($sp)
    sd         $s1,48($sp)
    andi       $a3,$a3,0x3
    li         $a4,-25
    lbu        $a1,36($s2)
    sll        $a3,$a3,0x3
    and        $a2,$a2,$a4
    or         $a2,$a2,$a3
    sw         $a2,0($sp)
    move       $s1,$a0
    addiu      $a1,$a1,1
    lw         $a0,0($sp)
    andi       $a1,$a1,0x3
    li         $a2,-97
    sll        $a1,$a1,0x5
    and        $a0,$a0,$a2
    or         $a0,$a0,$a1
    sw         $a0,0($sp)
    lw         $v1,0($sp)
    lbu        $v0,38($s2)
    sd         $ra,24($sp)
    andi       $v0,$v0,0x1
    ori        $v1,$v1,0x4000
    sw         $v1,0($sp)
    sll        $v0,$v0,0x8
    lw         $at,0($sp)
    sd         $s0,40($sp)
    move       $a4,$s1
    li         $v1,-257
    ld         $s0,208($s1)
    move       $a3,$zero
    and        $at,$at,$v1
    li         $a1,417
    or         $at,$at,$v0
    sw         $at,0($sp)
    move       $a0,$s0
    jal        __glMgrasSet
    lw         $a2,0($sp)
    lbu        $a2,37($s2)
    move       $a0,$s0
    li         $a1,416
    dsll32     $a2,$a2,0x0
    move       $a3,$zero
    dsrl32     $a2,$a2,0x0
    move       $a4,$s1
    jal        __glMgrasSet
    sll        $a2,$a2,0x0
    move       $a0,$s0
    li         $a1,395
    lbu        $a2,37($s2)
    move       $a3,$zero
    move       $a4,$s1
    sltiu      $a2,$a2,1
    jal        __glMgrasSet
    sll        $a2,$a2,0x0
    lbu        $a2,38($s2)
    lbu        $a4,36($s2)
    move       $a0,$s0
    li         $a1,384
    sll        $a2,$a2,0x4
    addiu      $a4,$a4,1
    lui        $a3,0x1
    sll        $a4,$a4,0x2
    ori        $a3,$a3,0x1800
    or         $a2,$a2,$a4
    move       $a4,$s1
    or         $a2,$a2,$a3
    jal        __glMgrasSet
    move       $a3,$zero
    ld         $a3,1744($s1)
    lbu        $a2,35($s2)
    lw         $a3,12($a3)
    move       $a0,$s0
    sll        $a2,$a2,0x3
    li         $a1,273
    sll        $a3,$a3,0x5
    move       $a4,$s1
    or         $a2,$a2,$a3
    jal        __glMgrasSet
    move       $a3,$zero
    move       $a0,$s0
    li         $a1,419
    move       $a2,$zero
    move       $a3,$zero
    move       $a4,$s1
    sd         $s8,88($sp)
    jal        __glMgrasSet
    andi       $s8,$s3,0xff
    li         $a1,420
    move       $a0,$s0
    move       $a3,$zero
    move       $a4,$s1
    jal        __glMgrasSet
    move       $a2,$s8
    move       $a0,$s0
    li         $a3,1
    li         $a2,3424
    li         $a1,418
    jal        __glMgrasSet
    move       $a4,$s1
    move       $a0,$s0
    li         $a5,3
    move       $a4,$zero
    move       $a3,$zero
    lui        $a2,0x140
    jal        __glMgrSaveRSS
    li         $a1,-1
    li         $a2,64
    li         $a1,425
    move       $a0,$s0
    move       $a3,$zero
    lw         $s3,12($s2)
    move       $a4,$s1
    sd         $s4,72($sp)
    jal        __glMgrasSet
    sll        $s4,$s3,0x0
    li         $a1,426
    move       $a0,$s0
    move       $a3,$zero
    move       $a4,$s1
    jal        __glMgrasSet
    move       $a2,$s4
    move       $a0,$s0
    li         $a1,427
    move       $a2,$zero
    move       $a3,$zero
    jal        __glMgrasSet
    move       $a4,$s1
    move       $a0,$s0
    li         $a3,1
    move       $a2,$zero
    li         $a1,428
    jal        __glMgrasSet
    move       $a4,$s1
    sw         $zero,8($sp)
    lw         $a7,8($sp)
    lbu        $a6,35($s2)
    ld         $t0,-30720($gp)
    dsll       $a6,$a6,0x2
    daddu      $a6,$a6,$t0
    lui        $t0,0x40
    or         $a7,$a7,$t0
    sw         $a7,8($sp)
    lw         $a6,0($a6)
    li         $a3,1
    lw         $a5,8($sp)
    sd         $s7,80($sp)
    li         $a7,-241
    andi       $a6,$a6,0xf
    lbu        $a4,36($s2)
    and        $a5,$a5,$a7
    sll        $a6,$a6,0x4
    li         $a1,345
    or         $a5,$a5,$a6
    sw         $a5,8($sp)
    move       $a0,$s0
    dsll       $s7,$s3,0x10
    lw         $a5,8($sp)
    ori        $s7,$s7,0x40
    li         $a6,-16
    andi       $a4,$a4,0xf
    and        $a5,$a5,$a6
    sll        $s7,$s7,0x0
    or         $a4,$a4,$a5
    sw         $a4,8($sp)
    lw         $a2,8($sp)
    jal        __glMgrasSet
    move       $a4,$s1
    li         $a3,1
    li         $a1,339
    move       $a0,$s0
    move       $a4,$s1
    jal        __glMgrasSet
    move       $a2,$s7
    move       $a0,$s0
    li         $a3,1
    move       $a2,$s7
    li         $a1,344
    jal        __glMgrasSet
    move       $a4,$s1
    cache      0x14,0($sp)
    dsll32     $t9,$s8,0x0
    dsrl32     $t9,$t9,0x0
    dsll       $t9,$t9,0x3
    daddu      $t9,$t9,$s5
    ld         $t9,16($t9)
    lui        $s3,0x7
    lw         $s7,8($t9)
    daddu      $s3,$s0,$s3
    lw         $t9,12($t9)
    li         $t8,0xe300
    sw         $t8,128($s3)
    move       $a0,$s0
    move       $a2,$s4
    sd         $t9,64($sp)
    lui        $s8,0x1
    jal        __glMgr_WriteDMAGESetup
    lw         $a1,8($s2)
    cache      0x14,0($sp)
    sw         $s8,12($s3)
    ld         $a6,64($sp)
    li         $a5,2
    move       $a4,$s4
    lw         $a2,8($s2)
    move       $a1,$s7
    move       $a0,$s1
    ld         $s8,88($sp)
    ld         $s5,56($sp)
    jal        __glMgr_WriteDMAHQSetup
    move       $a3,$a2
    cache      0x14,0($sp)
    ld         $s7,80($sp)
    ld         $s4,72($sp)
    lui        $ra,0xe
    ori        $ra,$ra,0x400
    sw         $ra,132($s3)
    move       $a0,$s1
    jal        __glMgrWaitForDMAWrite
    ld         $s2,16($sp)
    beqz       $v0, .L00001120
    ld         $ra,24($sp)
    ld         $s1,48($sp)
    ld         $s0,40($sp)
    li         $v0,-1
    ld         $s3,32($sp)
.L00001118:
    jr         $ra
    daddiu     $sp,$sp,128
.L00001120:
    move       $a0,$s0
    li         $a3,1
    li         $a2,-1
    li         $a1,342
    jal        __glMgrasSet
    move       $a4,$s1
    cache      0x14,0($sp)
    li         $at,0xd300
    sw         $at,128($s3)
    ld         $s3,32($sp)
    ld         $s1,48($sp)
    ld         $s0,40($sp)
    move       $v0,$zero
    b          .L00001118
    ld         $ra,24($sp)

glabel MgrasWaitForRSSIdle
    daddiu     $sp,$sp,-48
    sd         $s7,0($sp)
    lui        $s7,0x7
    daddu      $s7,$a0,$s7
    lw         $at,0($s7)
    sd         $s5,8($sp)
    andi       $at,$at,0x2
    lui        $s5,0x2d
    beqz       $at, .L0000119c
    ori        $s5,$s5,0xc6c0
.L00001184:
    sd         $ra,16($sp)
    beqz       $s5, .L000011cc
    ld         $s7,0($sp)
.L00001190:
    ld         $s5,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000119c:
    sd         $ra,16($sp)
.L000011a0:
    jal        us_delay
    li         $a0,1
    addiu      $s5,$s5,-1
    beqz       $s5, .L000011cc
    nop
    lw         $at,0($s7)
    andi       $at,$at,0x2
    beqz       $at, .L000011a0
    nop
    b          .L00001184
    ld         $ra,16($sp)
.L000011cc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,520
    ld         $s7,0($sp)
    b          .L00001190
    ld         $ra,16($sp)

glabel __Mgr_ReturnMode
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-64
    sd         $s7,8($sp)
    sd         $ra,0($sp)
    lui        $s7,0x7
    sd         $s5,16($sp)
    daddu      $s7,$a3,$s7
    lui        $s5,0x2
    sw         $s5,12($s7)
    li         $at,0xa20c
    sw         $at,128($s7)
    sw         $a0,128($s7)
    sw         $a1,128($s7)
    sw         $a2,128($s7)
.L00001220:
    jal        us_delay
    li         $a0,1
    lw         $at,8($s7)
    and        $at,$at,$s5
    beqz       $at, .L00001220
    nop
    ld         $ra,0($sp)
    ld         $s5,16($sp)
    lw         $v0,20($s7)
    ld         $s7,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel MgrasFinish
    daddiu     $sp,$sp,-32
    li         $a2,1
    li         $a1,1
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    move       $s8,$a0
    li         $a0,506
    jal        __Mgr_ReturnMode
    move       $a3,$s8
    jal        MgrasWaitForRSSIdle
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasSaveTexData
    daddiu     $sp,$sp,-160
    andi       $v0,$a2,0xff
    sd         $a1,72($sp)
    dsll32     $a4,$v0,0x0
    sd         $s0,40($sp)
    dsrl32     $a4,$a4,0x0
    ld         $s0,208($a0)
    dsll       $a4,$a4,0x3
    daddu      $a4,$a4,$a1
    sd         $a4,80($sp)
    ld         $a4,16($a4)
    sd         $s2,56($sp)
    sd         $s1,88($sp)
    ld         $s2,8($a1)
    beqz       $a4, .L0000150c
    move       $s1,$a0
    sd         $v0,48($sp)
    sd         $ra,112($sp)
    lw         $a5,8($a4)
    lw         $at,12($a4)
    sd         $at,104($sp)
    sd         $a5,96($sp)
.L000012e4:
    move       $a0,$s0
    li         $a2,0xd6d6
    li         $a1,385
    move       $a3,$zero
    jal        __glMgrasSet
    move       $a4,$s1
    move       $a0,$s0
    li         $a1,387
    move       $a2,$zero
    move       $a3,$zero
    jal        __glMgrasSet
    move       $a4,$s1
    move       $a0,$s0
    lui        $a2,0x8
    li         $a1,396
    move       $a3,$zero
    jal        __glMgrasSet
    move       $a4,$s1
    move       $a0,$s0
    li         $a1,417
    move       $a3,$zero
    lbu        $a2,38($s2)
    move       $a4,$s1
    jal        __glMgrasSet
    sll        $a2,$a2,0x8
    ld         $a3,1744($s1)
    lbu        $a2,35($s2)
    lw         $a3,12($a3)
    move       $a0,$s0
    sll        $a2,$a2,0x3
    li         $a1,273
    sll        $a3,$a3,0x5
    move       $a4,$s1
    or         $a2,$a2,$a3
    jal        __glMgrasSet
    move       $a3,$zero
    lbu        $a2,38($s2)
    lbu        $a4,36($s2)
    move       $a0,$s0
    li         $a1,384
    sll        $a2,$a2,0x4
    addiu      $a4,$a4,1
    lui        $a3,0x1
    sll        $a4,$a4,0x2
    ori        $a3,$a3,0x1800
    or         $a2,$a2,$a4
    move       $a4,$s1
    or         $a2,$a2,$a3
    jal        __glMgrasSet
    move       $a3,$zero
    move       $a0,$s0
    li         $a1,400
    move       $a2,$zero
    move       $a3,$zero
    jal        __glMgrasSet
    move       $a4,$s1
    move       $a0,$s0
    li         $a3,1
    li         $a1,401
    ld         $a2,48($sp)
    jal        __glMgrasSet
    move       $a4,$s1
    move       $a0,$s0
    li         $a1,-1
    move       $a4,$zero
    move       $a5,$zero
    lui        $a3,0x1f
    lui        $a2,0x100
    ori        $a3,$a3,0xc0ff
    ld         $s1,88($sp)
    jal        __glMgrSaveRSS
    ori        $a2,$a2,0x1000
    jal        MgrasWaitForRSSIdle
    move       $a0,$s0
    cache      0x14,0($sp)
    sw         $zero,32($sp)
    lw         $v0,32($sp)
    lbu        $at,35($s2)
    ld         $v1,-30720($gp)
    dsll       $at,$at,0x2
    daddu      $at,$at,$v1
    lui        $v1,0x40
    or         $v0,$v0,$v1
    sw         $v0,32($sp)
    lw         $at,0($at)
    lw         $ra,32($sp)
    li         $v0,-241
    andi       $at,$at,0xf
    lbu        $t9,36($s2)
    and        $ra,$ra,$v0
    sll        $at,$at,0x4
    or         $ra,$ra,$at
    sw         $ra,32($sp)
    lw         $ra,32($sp)
    ld         $a1,96($sp)
    lui        $t8,0x7
    li         $at,-16
    lw         $a5,12($s2)
    andi       $t9,$t9,0xf
    and        $ra,$ra,$at
    daddu      $t8,$s0,$t8
    or         $t9,$t9,$ra
    sw         $t9,32($sp)
    li         $ra,0xe50c
    sw         $ra,128($t8)
    sw         $a5,128($t8)
    lw         $t9,32($sp)
    ld         $t2,104($sp)
    sd         $t8,64($sp)
    sw         $t9,128($t8)
    li         $t3,16397
    sw         $t3,128($t8)
    lw         $a6,32($sp)
    li         $a7,13
    lw         $a2,8($s2)
    li         $a4,64
    move       $a0,$s0
    sw         $t2,20($sp)
    li         $t0,512
    li         $t1,2
    sw         $t1,12($sp)
    sw         $t0,4($sp)
    jal        __glMgr_ReadDMAHQSetup
    move       $a3,$a2
    ld         $ra,112($sp)
    beqz       $v0, .L000014f0
    ld         $s2,56($sp)
    li         $v0,-1
    ld         $s0,40($sp)
.L000014e8:
    jr         $ra
    daddiu     $sp,$sp,160
.L000014f0:
    jal        WAIT_FOR_READDMA
    move       $a0,$s0
    ld         $ra,112($sp)
    beqz       $v0, .L00001558
    ld         $s0,40($sp)
    b          .L000014e8
    li         $v0,-1
.L0000150c:
    move       $a0,$s1
    sd         $ra,112($sp)
    sd         $v0,48($sp)
    jal        mgrasReadDMAPageSetup
    li         $a1,1
    ld         $a3,72($sp)
    beqz       $v0, .L00001594
    ld         $ra,112($sp)
    cache      0x14,0($sp)
    ld         $at,80($sp)
    lw         $v1,8($v0)
    sd         $v0,16($at)
    sd         $v1,96($sp)
    lw         $a5,12($v0)
    lhu        $v1,0($a3)
    sd         $a5,104($sp)
    addiu      $v1,$v1,1
    b          .L000012e4
    sh         $v1,0($a3)
.L00001558:
    cache      0x14,0($sp)
    ld         $a5,64($sp)
    ld         $a3,-30624($gp)
    lui        $v1,0xc
    sd         $a3,128($a5)
    ori        $v1,$v1,0x4
    sw         $v1,128($a5)
    li         $v0,3584
    sw         $v0,128($a5)
    li         $at,0xda00
    li         $a3,0xd300
    sw         $at,128($a5)
    move       $v0,$zero
    b          .L000014e8
    sw         $a3,128($a5)
.L00001594:
    ld         $s1,88($sp)
    ld         $s2,56($sp)
    li         $v0,-2
    b          .L000014e8
    ld         $s0,40($sp)

glabel MgrasCleanTexBdata
    daddiu     $sp,$sp,-64
    sd         $s1,24($sp)
    sd         $s0,8($sp)
    ld         $a3,1744($a0)
    sd         $s8,16($sp)
    ld         $s8,200($a0)
    ld         $s0,24($a3)
    sd         $s2,0($sp)
    lbu        $s2,45($s8)
    sd         $ra,32($sp)
    move       $s1,$a0
    beqz       $s0, .L00001648
    sll        $s2,$s2,0xc
    b          .L0000160c
    sd         $ra,32($sp)
.L000015e4:
    ld         $a0,8($s0)
    beqz       $a0, .L000015f8
    nop
    jal        kern_free
    nop
.L000015f8:
    move       $a0,$s0
    jal        kern_free
    ld         $s0,0($s0)
    beqz       $s0, .L00001644
    nop
.L0000160c:
    ld         $a0,16($s0)
    beqz       $a0, .L000015e4
    nop
    lw         $a2,24($s0)
    multu      $a2,$s2
    mflo       $a1
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    daddiu     $a1,$a1,16383
    dsrl       $a1,$a1,0xe
    jal        kvpfree
    sll        $a1,$a1,0x0
    b          .L000015e4
    nop
.L00001644:
    ld         $a3,1744($s1)
.L00001648:
    move       $a0,$a3
    ld         $s0,8($sp)
    li         $a1,3368
    jal        bzero
    ld         $s2,0($sp)
    cache      0x14,0($sp)
    lbu        $a3,45($s8)
    ld         $a2,1744($s1)
    xori       $a3,$a3,0x4
    li         $a1,2
    sltiu      $a3,$a3,1
    movz       $a1,$zero,$a3
    sw         $a1,12($a2)
    ld         $a0,1744($s1)
    li         $a1,256
    jal        bzero
    daddiu     $a0,$a0,32
    ld         $a0,1744($s1)
    li         $a1,2048
    ld         $s8,16($sp)
    jal        bzero
    daddiu     $a0,$a0,288
    ld         $a0,1744($s1)
    li         $a1,1024
    jal        bzero
    daddiu     $a0,$a0,2340
    cache      0x14,0($sp)
    ld         $ra,32($sp)
    ld         $a1,1744($s1)
    ld         $s1,24($sp)
    daddiu     $sp,$sp,64
    jr         $ra
    sw         $zero,3364($a1)

glabel MgrasInitGblTexMgr
    daddiu     $sp,$sp,-48
    ld         $at,1744($a0)
    sd         $ra,16($sp)
    daddiu     $v0,$a0,1728
    sd         $s8,0($sp)
    sd         $v0,8($sp)
    bnez       $at, .L00001710
    move       $s8,$a0
    jal        kern_malloc
    li         $a0,3368
    cache      0x14,0($sp)
    move       $a0,$v0
    li         $a1,3368
    jal        bzero
    sd         $v0,1744($s8)
    b          .L00001718
    nop
.L00001710:
    jal        mutex_destroy
    ld         $a0,8($sp)
.L00001718:
    ld         $a2,-30720($gp)
    move       $a1,$zero
    li         $a3,-1
    ld         $a0,8($sp)
    jal        init_mutex
    daddiu     $a2,$a2,552
    jal        MgrasCleanTexBdata
    move       $a0,$s8
    ld         $s8,0($sp)
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
