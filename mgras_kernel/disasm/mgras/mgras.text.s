.section .text
.set noat
.set noreorder


glabel MgrasFlushHQ3Poll
    daddiu     $sp,$sp,-64
    sd         $s3,8($sp)
    move       $v0,$a1
    lui        $s3,0x7
    sd         $s5,16($sp)
    beqz       $a2, .L00000074
    daddu      $s3,$a0,$s3
    li         $s5,1000
    sd         $ra,24($sp)
.L00000024:
    lw         $at,260($s3)
    andi       $at,$at,0x17
    beqz       $at, .L00000048
    nop
    jal        us_delay
    li         $a0,10
    addiu      $s5,$s5,-1
    bgtz       $s5, .L00000024
    nop
.L00000048:
    move       $v0,$zero
    beqz       $s5, .L00000068
    ld         $ra,24($sp)
    ld         $s5,16($sp)
    ld         $ra,24($sp)
.L0000005c:
    ld         $s3,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000068:
    li         $v0,-1
    b          .L0000005c
    ld         $s5,16($sp)
.L00000074:
    lw         $v1,4($s3)
    andi       $v1,$v1,0x7f
    sltu       $v1,$v0,$v1
    li         $s5,1000
    beqz       $v1, .L000000c0
    nop
    sd         $ra,24($sp)
    sd         $v0,0($sp)
.L00000094:
    jal        us_delay
    li         $a0,1
    addiu      $s5,$s5,-1
    blez       $s5, .L000000bc
    ld         $a0,0($sp)
    lw         $a2,4($s3)
    andi       $a2,$a2,0x7f
    sltu       $a0,$a0,$a2
    bnez       $a0, .L00000094
    nop
.L000000bc:
    ld         $ra,24($sp)
.L000000c0:
    beqz       $s5, .L00000068
    nop
    move       $v0,$zero
    b          .L0000005c
    ld         $s5,16($sp)

glabel MgrasFlushHQ3
    daddiu     $sp,$sp,-112
    sd         $a2,56($sp)
    sd         $s0,24($sp)
    sd         $a1,48($sp)
    move       $s0,$a0
    sd         $ra,0($sp)
    move       $a0,$a1
    move       $a1,$a2
    sd         $a3,32($sp)
    jal        MgrasFlushHQ3Poll
    move       $a2,$a3
    beqz       $v0, .L000002a8
    ld         $ra,0($sp)
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    daddiu     $a0,$s0,1832
    jal        init_sema
    sd         $a0,64($sp)
    cache      0x14,0($sp)
    li         $a1,1
    move       $a0,$s0
    li         $at,1
    jal        mgras_fifotimer
    sw         $at,1848($s0)
    jal        splhi
    nop
    cache      0x14,0($sp)
    li         $a4,1
    sw         $a4,104($s0)
    ld         $a3,72($s0)
    ld         $a3,32($a3)
    ld         $v1,48($sp)
    daddiu     $a3,$a3,80
    li         $a4,1
    lui        $a1,0x5
.L00000164:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L00000164
    nop
    daddu      $v1,$v1,$a1
    ld         $a1,56($sp)
    addiu      $a1,$a1,1
    sw         $a1,36($v1)
    move       $a0,$v0
    lui        $v0,0x400
    lw         $a1,24($v1)
    nor        $v0,$v0,$zero
    lui        $a2,0x800
    and        $v0,$a1,$v0
    sd         $v1,16($sp)
    or         $v0,$v0,$a2
    xor        $a1,$v0,$a1
    sw         $a1,28($v1)
    jal        splx
    sw         $v0,24($v1)
    ld         $a0,64($sp)
    jal        psema
    li         $a1,26
    beqz       $v0, .L00000264
    nop
.L000001d0:
    ld         $a5,200($s0)
    lw         $a5,68($a5)
    beqz       $a5, .L0000021c
    nop
    ld         $ra,72($s0)
    ld         $ra,32($ra)
    daddiu     $ra,$ra,80
    li         $at,-1
.L000001f0:
    ll         $s0,0($ra)
    addu       $v0,$s0,$at
    move       $s0,$v0
    sc         $v0,0($ra)
    beqzl      $v0, .L000001f0
    nop
    ld         $ra,0($sp)
    ld         $s0,24($sp)
    li         $v0,-1
.L00000214:
    jr         $ra
    daddiu     $sp,$sp,112
.L0000021c:
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    daddiu     $a0,$s0,1808
    jal        init_sema
    sd         $a0,40($sp)
    ld         $a0,-30720($gp)
    ld         $a1,40($sp)
    jal        timeout
    li         $a2,1
    ld         $a0,40($sp)
    jal        psema
    li         $a1,25
    ld         $a0,64($sp)
    jal        psema
    li         $a1,26
    bnez       $v0, .L000001d0
    nop
.L00000264:
    ld         $at,200($s0)
    lw         $at,68($at)
    beqz       $at, .L000002b4
    li         $a4,-1
    ld         $v1,72($s0)
    ld         $v1,32($v1)
    daddiu     $v1,$v1,80
.L00000280:
    ll         $v0,0($v1)
    addu       $a5,$v0,$a4
    move       $v0,$a5
    sc         $a5,0($v1)
    beqzl      $a5, .L00000280
    nop
    ld         $s0,24($sp)
    ld         $ra,0($sp)
    b          .L00000214
    li         $v0,-1
.L000002a8:
    move       $v0,$zero
    b          .L00000214
    ld         $s0,24($sp)
.L000002b4:
    cache      0x14,0($sp)
    ld         $a3,16($sp)
    li         $a2,20
    sw         $a2,36($a3)
    ld         $a1,72($s0)
    ld         $a1,32($a1)
    daddiu     $a1,$a1,80
    li         $a2,-1
.L000002d4:
    ll         $a0,0($a1)
    addu       $a3,$a0,$a2
    move       $a0,$a3
    sc         $a3,0($a1)
    beqzl      $a3, .L000002d4
    nop
    ld         $a1,56($sp)
    ld         $a0,48($sp)
    jal        MgrasFlushHQ3Poll
    ld         $a2,32($sp)
    ld         $s0,24($sp)
    beqz       $v0, .L00000354
    ld         $ra,0($sp)
    sd         $zero,8($sp)
.L0000030c:
    ld         $a0,48($sp)
    ld         $a1,56($sp)
    jal        MgrasFlushHQ3Poll
    ld         $a2,32($sp)
    beqz       $v0, .L00000348
    nop
    ld         $a4,8($sp)
    addiu      $a4,$a4,1
    sd         $a4,8($sp)
    slti       $a4,$a4,5
    bnez       $a4, .L0000030c
    nop
    li         $v0,-1
    b          .L00000214
    ld         $ra,0($sp)
.L00000348:
    move       $v0,$zero
    b          .L00000214
    ld         $ra,0($sp)
.L00000354:
    b          .L00000214
    move       $v0,$zero

glabel MgrasThrowManagerRssShadow
    cache      0x14,0($sp)
    lw         $a3,4($a0)
    lui        $at,0x2000
    or         $a3,$a3,$at
    sw         $a3,4($a0)
    lw         $at,1108($a2)
    sw         $at,8($a0)
    lw         $v1,1340($a2)
    sw         $v1,12($a0)
    lw         $v0,1516($a2)
    sw         $v0,16($a0)
    lw         $a3,1332($a2)
    sw         $a3,20($a0)
    lw         $v1,1336($a2)
    sw         $v1,24($a0)
    lw         $v0,1324($a2)
    sw         $v0,28($a0)
    lw         $a3,1328($a2)
    sw         $a3,32($a0)
    lw         $v1,1316($a2)
    sw         $v1,36($a0)
    lw         $v0,1320($a2)
    sw         $v0,40($a0)
    lw         $a3,1308($a2)
    sw         $a3,44($a0)
    lw         $v1,1312($a2)
    sw         $v1,48($a0)
    lw         $v0,1460($a2)
    sw         $at,56($a0)
    sw         $v0,60($a0)
    sw         $v0,52($a0)
    lw         $v1,4($a1)
    lui        $a0,0x800
    or         $v1,$v1,$a0
    sw         $v1,4($a1)
    move       $a3,$v0
    lw         $v0,280($a2)
    sw         $v0,72($a1)
    lw         $at,284($a2)
    sw         $at,76($a1)
    lw         $a3,1356($a2)
    sw         $a3,80($a1)
    lw         $a0,1088($a2)
    sw         $a0,84($a1)
    lw         $v1,1280($a2)
    sw         $v1,88($a1)
    lw         $v0,1284($a2)
    sw         $v0,92($a1)
    lw         $at,1096($a2)
    sw         $at,96($a1)
    lw         $a3,1412($a2)
    sw         $a3,100($a1)
    lw         $a0,1416($a2)
    sw         $a0,104($a1)
    lw         $v1,1420($a2)
    sw         $v1,108($a1)
    lw         $v0,1424($a2)
    sw         $v0,112($a1)
    lw         $at,1496($a2)
    sw         $at,116($a1)
    lw         $a3,1500($a2)
    sw         $a3,120($a1)
    lw         $a0,1504($a2)
    sw         $a0,124($a1)
    lw         $v1,1408($a2)
    sw         $v1,128($a1)
    lw         $v0,1468($a2)
    sw         $v0,132($a1)
    lw         $at,416($a2)
    sw         $at,136($a1)
    lw         $a3,420($a2)
    sw         $a3,140($a1)
    lw         $a0,1100($a2)
    sw         $a0,144($a1)
    lw         $v1,1104($a2)
    sw         $v1,148($a1)
    lw         $v0,1372($a2)
    sw         $v0,152($a1)
    lw         $at,1368($a2)
    jr         $ra
    sw         $at,156($a1)

glabel MgrasSetShadowRgn
    daddiu     $sp,$sp,-48
    ld         $at,112($a0)
    sd         $at,16($sp)
    ld         $at,1080($at)
    move       $v0,$a0
    beqz       $at, .L000004c4
    sd         $a1,0($sp)
    b          .L00000538
    li         $v0,14
.L000004c4:
    ld         $a2,64($v0)
    ld         $v1,0($a2)
    ld         $v1,8($v1)
    bne        $v1, $a2, .L00000508
    daddiu     $at,$gp,0
    lw         $v1,0($gp)
    negu       $v1,$v1
.L000004e0:
    ll         $a3,0($at)
    addu       $a2,$a3,$v1
    move       $a3,$a2
    sc         $a2,0($at)
    beqzl      $a2, .L000004e0
    nop
    lw         $a2,0($gp)
    sd         $v0,8($sp)
    bltz       $a2, .L00000540
    daddiu     $a3,$gp,0
.L00000508:
    sd         $v0,8($sp)
    ld         $a0,0($sp)
    li         $a2,273
    li         $a1,2552
    sd         $ra,24($sp)
    move       $a3,$zero
    jal        useracc
    ld         $a0,0($a0)
    move       $a1,$v0
    beqz       $v0, .L00000564
    ld         $ra,24($sp)
    move       $v0,$a1
.L00000538:
    jr         $ra
    daddiu     $sp,$sp,48
.L00000540:
    lw         $at,0($gp)
.L00000544:
    ll         $a2,0($a3)
    addu       $v0,$a2,$at
    move       $a2,$v0
    sc         $v0,0($a3)
    beqzl      $v0, .L00000544
    nop
    b          .L00000538
    li         $v0,16
.L00000564:
    cache      0x14,0($sp)
    ld         $a0,0($sp)
    ld         $a2,16($sp)
    ld         $a1,0($a0)
    sd         $a1,1064($a2)
    li         $a2,44
    li         $a1,2552
    jal        maputokv
    ld         $a0,0($a0)
    cache      0x14,0($sp)
    ld         $a2,16($sp)
    ld         $a1,8($sp)
    sd         $v0,1080($a2)
    sd         $v0,1072($a2)
    ld         $a1,64($a1)
    ld         $a3,0($a1)
    ld         $a3,8($a3)
    bne        $a3, $a1, .L000005c0
    ld         $ra,24($sp)
    cache      0x14,0($sp)
    ld         $at,32($a1)
    daddiu     $a3,$v0,2544
    sd         $a3,224($at)
.L000005c0:
    b          .L00000538
    move       $v0,$zero

glabel MgrasGE11EramInit
    daddiu     $sp,$sp,-80
    sd         $s0,24($sp)
    sd         $s1,32($sp)
    sd         $s2,40($sp)
    sd         $s4,48($sp)
    sd         $a0,8($sp)
    sd         $ra,16($sp)
    jal        mgras_baseindex
    ld         $a0,208($a0)
    move       $s0,$v0
    move       $s1,$zero
    ld         $s2,-30712($gp)
    dsll       $s4,$v0,0x9
.L000005fc:
    move       $a1,$s0
    daddu      $a0,$s1,$s4
    addiu      $s1,$s1,1
    dsll       $a0,$a0,0x5
    jal        freenode
    daddu      $a0,$a0,$s2
    slti       $a2,$s1,512
    bnez       $a2, .L000005fc
    nop
    move       $s1,$zero
    lui        $a1,0x1
    dsll       $a4,$s0,0x3
    li         $v0,0x8010
    ld         $s4,48($sp)
    daddu      $a4,$a4,$s0
.L00000638:
    cache      0x14,0($sp)
    daddu      $at,$s1,$a4
    dsll       $at,$at,0x5
    addiu      $s1,$s1,1
    daddu      $at,$at,$s2
    slti       $a2,$s1,9
    daddu      $v1,$a1,$at
    daddu      $at,$v0,$at
    sd         $at,-32752($v1)
    bnez       $a2, .L00000638
    sd         $at,-32744($v1)
    jal        getnode
    move       $a0,$s0
    cache      0x14,0($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    sd         $v0,0($sp)
    move       $a0,$v0
    sh         $zero,26($v0)
    li         $v0,16
    sb         $v0,25($a0)
    move       $a1,$s0
    jal        insertnode
    sd         $zero,16($a0)
    ld         $a0,0($sp)
    jal        freeblock
    move       $a1,$s0
    ld         $a0,8($sp)
    jal        MgrasGlContextInit
    ld         $s0,24($sp)
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel freenode
    cache      0x14,0($sp)
    ld         $v1,-30712($gp)
    dsll       $v0,$a1,0x3
    daddu      $v0,$v0,$v1
    lui        $v1,0x1
    sd         $zero,0($a0)
    daddu      $v0,$v0,$v1
    ld         $at,-32768($v0)
    sd         $a0,-32768($v0)
    jr         $ra
    sd         $at,8($a0)

glabel getnode
    cache      0x14,0($sp)
    ld         $a1,-30712($gp)
    dsll       $v1,$a0,0x3
    lui        $a0,0x1
    daddu      $v1,$v1,$a1
    daddu      $v1,$v1,$a0
    ld         $v0,-32768($v1)
    ld         $at,8($v0)
    jr         $ra
    sd         $at,-32768($v1)

glabel insertnode
    lbu        $a5,25($a0)
    dsll       $at,$a1,0x3
    daddu      $at,$at,$a1
    daddu      $a5,$a5,$at
    ld         $at,-30712($gp)
    dsll       $a5,$a5,0x5
    daddu      $a5,$a5,$at
    daddiu     $a5,$a5,32528
    ld         $a3,8($a5)
    beq        $a3, $a5, .L00000760
    move       $a4,$a5
    lhu        $a2,26($a0)
.L00000740:
    lhu        $v0,26($a3)
    slt        $v0,$a2,$v0
    bnez       $v0, .L00000760
    nop
    move       $a4,$a3
    ld         $a3,8($a3)
    bne        $a3, $a5, .L00000740
    nop
.L00000760:
    cache      0x14,0($sp)
    ld         $v1,8($a4)
    sd         $a0,8($a4)
    sd         $v1,8($a0)
    sd         $a0,0($v1)
    jr         $ra
    sd         $a4,0($a0)

glabel removenode
    cache      0x14,0($sp)
    ld         $a1,0($a0)
    ld         $v1,8($a0)
    sd         $v1,8($a1)
    ld         $v0,8($a0)
    ld         $at,0($a0)
    jr         $ra
    sd         $at,0($v0)

glabel findblock
    dsll       $v0,$a2,0x3
    daddu      $v0,$v0,$a2
    ld         $v1,-30712($gp)
    daddu      $v0,$a1,$v0
    dsll       $v0,$v0,0x5
    daddu      $v0,$v0,$v1
    ld         $a5,32536($v0)
    daddiu     $v0,$v0,32528
    beq        $v0, $a5, .L000007dc
    nop
.L000007c4:
    lhu        $v1,26($a5)
    beq        $v1, $a0, .L000007e8
    nop
    ld         $a5,8($a5)
    bne        $v0, $a5, .L000007c4
    nop
.L000007dc:
    move       $v0,$zero
.L000007e0:
    jr         $ra
    nop
.L000007e8:
    b          .L000007e0
    move       $v0,$a5

glabel findbuddy
    move       $a2,$a1
    lbu        $a1,25($a0)
    lhu        $a0,26($a0)
    li         $a3,1
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sllv       $a3,$a3,$a1
    jal        findblock
    xor        $a0,$a0,$a3
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel freeblock
    cache      0x14,0($sp)
    sb         $zero,24($a0)
    daddiu     $sp,$sp,-64
    sd         $a0,24($sp)
    sd         $ra,0($sp)
    jal        findbuddy
    sd         $a1,32($sp)
    beqz       $v0, .L00000850
    ld         $ra,0($sp)
    lbu        $at,24($v0)
    beqz       $at, .L00000858
    sd         $v0,16($sp)
.L00000850:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000858:
    ld         $a0,24($sp)
    ld         $v0,16($a0)
    jal        removenode
    sd         $v0,8($sp)
    jal        removenode
    ld         $a0,16($sp)
    ld         $a0,24($sp)
    jal        freenode
    ld         $a1,32($sp)
    ld         $a0,16($sp)
    jal        freenode
    ld         $a1,32($sp)
    ld         $v0,8($sp)
    beqz       $v0, .L00000850
    ld         $ra,0($sp)
    move       $a0,$v0
    jal        freeblock
    ld         $a1,32($sp)
    b          .L00000850
    ld         $ra,0($sp)

glabel logbase2
    blez       $a0, .L000008e4
    move       $v0,$a0
    li         $a3,-1
.L000008b4:
    srl        $v0,$v0,0x1
    bnez       $v0, .L000008b4
    addiu      $a3,$a3,1
    li         $at,1
    sllv       $at,$at,$a3
    slt        $at,$at,$a0
    beqz       $at, .L000008d8
    nop
    addiu      $a3,$a3,1
.L000008d8:
    move       $v0,$a3
.L000008dc:
    jr         $ra
    nop
.L000008e4:
    b          .L000008dc
    li         $v0,1

glabel getblock
    daddiu     $sp,$sp,-128
    sd         $s6,32($sp)
    sd         $s1,8($sp)
    sd         $ra,0($sp)
    move       $s1,$a1
    sd         $s7,40($sp)
    jal        logbase2
    move       $s6,$a2
    li         $s7,8
    slti       $v1,$v0,8
    movz       $s7,$v0,$v1
    slti       $at,$s7,17
    ld         $ra,0($sp)
    beqz       $at, .L00000a4c
    move       $v0,$zero
    sd         $s4,64($sp)
    dsll       $s4,$s6,0x3
    sd         $s5,48($sp)
    daddu      $s4,$s4,$s6
    ld         $s5,-30712($gp)
    daddu      $v0,$s7,$s4
    dsll       $v0,$v0,0x5
    sd         $s0,56($sp)
    daddu      $v0,$v0,$s5
    ld         $s0,32536($v0)
    daddiu     $v0,$v0,32528
    beq        $v0, $s0, .L00000974
    nop
.L0000095c:
    lbu        $at,24($s0)
    beqz       $at, .L00000b1c
    nop
    ld         $s0,8($s0)
    bne        $v0, $s0, .L0000095c
    nop
.L00000974:
    sd         $s2,80($sp)
    addiu      $s2,$s7,1
    slti       $v1,$s2,17
    beqz       $v1, .L00000a1c
    sd         $s3,72($sp)
    b          .L000009c0
    sd         $s3,72($sp)
.L00000990:
    sd         $a2,24($sp)
    jal        insertnode
    move       $a1,$s6
    ld         $a0,24($sp)
    jal        insertnode
    move       $a1,$s6
.L000009a8:
    bne        $s0, $s3, .L000009b4
    nop
    addiu      $s2,$s2,1
.L000009b4:
    slti       $a3,$s2,17
    beqz       $a3, .L00000a1c
    nop
.L000009c0:
    daddu      $v0,$s2,$s4
    dsll       $v0,$v0,0x5
    daddu      $v0,$v0,$s5
    daddiu     $a0,$v0,32528
    beqz       $s1, .L00000a14
    move       $s3,$a0
    ld         $a1,32536($v0)
.L000009dc:
    beq        $a1, $a0, .L000009a8
    move       $s0,$a1
    b          .L000009f8
    nop
.L000009ec:
    ld         $v0,8($s0)
.L000009f0:
    beq        $v0, $a0, .L000009a8
    move       $s0,$v0
.L000009f8:
    lbu        $v1,24($s0)
    beqz       $v1, .L00000a5c
    nop
    bnez       $s1, .L000009ec
    nop
    b          .L000009f0
    ld         $v0,0($s0)
.L00000a14:
    b          .L000009dc
    ld         $a1,32528($v0)
.L00000a1c:
    ld         $s5,48($sp)
    ld         $s0,56($sp)
    ld         $s1,8($sp)
    ld         $s7,40($sp)
    ld         $s4,64($sp)
    ld         $ra,0($sp)
    ld         $s6,32($sp)
    ld         $s3,72($sp)
    move       $v0,$zero
    ld         $s2,80($sp)
.L00000a44:
    jr         $ra
    daddiu     $sp,$sp,128
.L00000a4c:
    ld         $s1,8($sp)
    ld         $s7,40($sp)
    b          .L00000a44
    ld         $s6,32($sp)
.L00000a5c:
    cache      0x14,0($sp)
    li         $a0,1
    sb         $a0,24($s0)
    jal        getnode
    move       $a0,$s6
    sd         $v0,16($sp)
    jal        getnode
    move       $a0,$s6
    cache      0x14,0($sp)
    ld         $a0,16($sp)
    sd         $s0,16($v0)
    sd         $s0,16($a0)
    sb         $zero,24($v0)
    sb         $zero,24($a0)
    addiu      $s2,$s2,-1
    sb         $s2,25($v0)
    sb         $s2,25($a0)
    lhu        $at,26($s0)
    sh         $at,26($a0)
    li         $a1,1
    lhu        $a3,26($s0)
    move       $a2,$v0
    sllv       $a4,$a1,$s2
    or         $a3,$a3,$a4
    bne        $s7, $s2, .L00000990
    sh         $a3,26($v0)
    beqz       $s1, .L00000b48
    nop
    ld         $s5,48($sp)
    ld         $s0,56($sp)
    ld         $s1,8($sp)
    ld         $s7,40($sp)
    ld         $s4,64($sp)
    move       $a0,$a2
    ld         $s3,72($sp)
    move       $a1,$s6
    jal        insertnode
    ld         $s2,80($sp)
    cache      0x14,0($sp)
    ld         $a0,16($sp)
    move       $a1,$s6
    li         $v0,1
    jal        insertnode
    sb         $v0,24($a0)
    ld         $v0,16($sp)
    ld         $ra,0($sp)
    b          .L00000a44
    ld         $s6,32($sp)
.L00000b1c:
    cache      0x14,0($sp)
    ld         $s5,48($sp)
    li         $v1,1
    sb         $v1,24($s0)
    move       $v0,$s0
    ld         $s0,56($sp)
    ld         $s1,8($sp)
    ld         $s7,40($sp)
    ld         $s4,64($sp)
    b          .L00000a44
    ld         $s6,32($sp)
.L00000b48:
    sd         $a2,24($sp)
    ld         $s5,48($sp)
    ld         $s0,56($sp)
    ld         $s1,8($sp)
    ld         $s7,40($sp)
    ld         $s4,64($sp)
    ld         $s3,72($sp)
    move       $a1,$s6
    jal        insertnode
    ld         $s2,80($sp)
    cache      0x14,0($sp)
    ld         $a0,24($sp)
    li         $a1,1
    sb         $a1,24($a0)
    jal        insertnode
    move       $a1,$s6
    ld         $v0,24($sp)
    ld         $ra,0($sp)
    b          .L00000a44
    ld         $s6,32($sp)

glabel reservelow
    daddiu     $sp,$sp,-144
    sd         $s2,88($sp)
    sd         $s4,48($sp)
    sd         $s5,24($sp)
    sd         $s6,80($sp)
    sd         $s3,72($sp)
    sd         $s1,32($sp)
    move       $s6,$a2
    li         $s1,-256
    sd         $s0,40($sp)
    sd         $s7,16($sp)
    addiu      $s3,$a0,255
    addu       $s0,$a0,$a1
    sd         $s8,64($sp)
    and        $s3,$s3,$s1
    addiu      $s0,$s0,255
    sd         $ra,56($sp)
    bltz       $a1, .L00000dac
    and        $s0,$s0,$s1
    slt        $at,$s3,$s0
    beqz       $at, .L00000d7c
    sd         $at,0($sp)
    sd         $s0,8($sp)
    li         $s7,8
    dsll       $s4,$s6,0x3
    ld         $s5,-30712($gp)
    b          .L00000c20
    daddu      $s4,$s4,$s6
.L00000c08:
    slti       $at,$s1,17
    beqz       $at, .L00000d64
    nop
.L00000c14:
    ld         $v1,0($sp)
    beqz       $v1, .L00000d7c
    nop
.L00000c20:
    move       $a0,$s3
    li         $a1,8
    jal        findblock
    move       $a2,$s6
    beqz       $v0, .L00000c74
    move       $s8,$v0
    lbu        $a3,24($s8)
    beqz       $a3, .L00000c54
    nop
    ld         $a1,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,80
.L00000c54:
    cache      0x14,0($sp)
    ld         $a3,8($sp)
    li         $a4,1
    sb         $a4,24($s8)
    addiu      $s3,$s3,256
    slt        $a3,$s3,$a3
    b          .L00000c14
    sd         $a3,0($sp)
.L00000c74:
    li         $s1,9
    b          .L00000c94
    nop
.L00000c80:
    beq        $s1, $s7, .L00000c08
    nop
.L00000c88:
    slti       $at,$s1,17
    beqz       $at, .L00000c08
    nop
.L00000c94:
    daddu      $v0,$s1,$s4
    dsll       $v0,$v0,0x5
    daddu      $v0,$v0,$s5
    ld         $s0,32536($v0)
    daddiu     $v0,$v0,32528
    beq        $v0, $s0, .L00000d54
    move       $s2,$v0
    b          .L00000cc4
    nop
.L00000cb8:
    ld         $s0,8($s0)
    beq        $v0, $s0, .L00000d54
    nop
.L00000cc4:
    lbu        $v1,24($s0)
    bnez       $v1, .L00000cb8
    nop
    lhu        $a3,26($s0)
    bne        $a3, $s3, .L00000cb8
    nop
    cache      0x14,0($sp)
    li         $a4,1
    sb         $a4,24($s0)
    jal        getnode
    move       $a0,$s6
    sd         $v0,96($sp)
    jal        getnode
    move       $a0,$s6
    cache      0x14,0($sp)
    addiu      $s1,$s1,-1
    ld         $a0,96($sp)
    sd         $s0,16($v0)
    sd         $s0,16($a0)
    sb         $zero,24($v0)
    sb         $zero,24($a0)
    sb         $s1,25($v0)
    sb         $s1,25($a0)
    lhu        $a7,26($s0)
    sh         $a7,26($a0)
    move       $s8,$v0
    li         $a6,1
    lhu        $a5,26($s0)
    move       $a1,$s6
    sllv       $a6,$a6,$s1
    or         $a5,$a5,$a6
    jal        insertnode
    sh         $a5,26($v0)
    move       $a0,$s8
    jal        insertnode
    move       $a1,$s6
.L00000d54:
    bne        $s2, $s0, .L00000c80
    nop
    b          .L00000c88
    addiu      $s1,$s1,1
.L00000d64:
    ld         $a1,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,112
    b          .L00000c14
    nop
.L00000d7c:
    ld         $s0,40($sp)
    ld         $s1,32($sp)
    ld         $s2,88($sp)
    ld         $s3,72($sp)
    ld         $s4,48($sp)
    ld         $s5,24($sp)
    ld         $ra,56($sp)
    ld         $s6,80($sp)
    ld         $s7,16($sp)
    ld         $s8,64($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00000dac:
    slt        $a3,$s0,$s3
    beqz       $a3, .L00000d7c
    nop
    b          .L00000de0
    addiu      $s1,$s3,-256
.L00000dc0:
    move       $a0,$s8
    jal        freeblock
    move       $a1,$s6
.L00000dcc:
    addiu      $s1,$s1,-256
    addiu      $s3,$s3,-256
    slt        $a4,$s0,$s3
    beqz       $a4, .L00000d7c
    nop
.L00000de0:
    move       $a0,$s1
    li         $a1,8
    jal        findblock
    move       $a2,$s6
    bnez       $v0, .L00000dc0
    move       $s8,$v0
    ld         $a1,-30704($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,48
    b          .L00000dcc
    nop

glabel MgrasGlContextInit
    cache      0x14,0($sp)
    lw         $at,1640($a0)
    daddiu     $sp,$sp,-48
    sd         $ra,0($sp)
    lw         $ra,1632($a0)
    mult       $at,$ra
    sd         $s8,8($sp)
    li         $t9,1
    sd         $s0,16($sp)
    lw         $s0,1636($a0)
    move       $s8,$a0
    sllv       $t9,$t9,$ra
    ld         $a0,208($a0)
    addiu      $t9,$t9,-1
    mflo       $t8
    sw         $t9,1628($s8)
    jal        mgras_baseindex
    addu       $s0,$s0,$t8
    move       $a2,$v0
    move       $a0,$zero
    jal        reservelow
    move       $a1,$s0
    cache      0x14,0($sp)
    lw         $ra,1636($s8)
    lw         $v1,1640($s8)
    lui        $a0,0x1
    subu       $ra,$a0,$ra
    div        $zero,$ra,$v1
    subu       $a2,$a0,$s0
    li         $s0,-256
    and        $a2,$a2,$s0
    ld         $s0,16($sp)
    sw         $a2,1688($s8)
    ld         $ra,0($sp)
    sw         $a2,1684($s8)
    teq        $v1,$zero,0x7
    mflo       $v0
    sw         $v0,1680($s8)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasGlContextAlloc
    lw         $v0,1632($a0)
    li         $a6,1
    blez       $v0, .L00000ee8
    move       $a3,$zero
    lw         $a4,1628($a0)
.L00000ec8:
    sllv       $a5,$a6,$a3
    and        $at,$a4,$a5
    bnez       $at, .L00000ef0
    nop
    addiu      $a3,$a3,1
    slt        $v1,$a3,$v0
    bnez       $v1, .L00000ec8
    nop
.L00000ee8:
    b          .L00000f14
    li         $v0,-1
.L00000ef0:
    cache      0x14,0($sp)
    lw         $a2,1640($a0)
    mult       $a2,$a3
    lw         $v0,1636($a0)
    nor        $a1,$a5,$zero
    mflo       $v1
    and        $a1,$a1,$a4
    sw         $a1,1628($a0)
    addu       $v0,$v0,$v1
.L00000f14:
    jr         $ra
    nop

glabel MgrasGlContextFree
    cache      0x14,0($sp)
    lw         $a2,1636($a0)
    lw         $v1,1640($a0)
    subu       $a2,$a1,$a2
    div        $zero,$a2,$v1
    li         $v0,1
    lw         $at,1628($a0)
    teq        $v1,$zero,0x7
    mflo       $a1
    sllv       $v0,$v0,$a1
    or         $at,$at,$v0
    jr         $ra
    sw         $at,1628($a0)

glabel MgrasEramBufAlloc
    daddiu     $sp,$sp,-48
    sd         $s8,24($sp)
    sd         $ra,16($sp)
    sd         $s0,0($sp)
    sd         $s1,8($sp)
    move       $s0,$a1
    move       $s1,$a0
    jal        mgras_baseindex
    ld         $a0,208($a0)
    jal        splhi
    move       $s8,$v0
    cache      0x14,0($sp)
    sw         $v0,2012($s1)
    move       $a1,$zero
    move       $a2,$s8
    jal        getblock
    lw         $a0,0($s0)
    bnez       $v0, .L00000fb8
    ld         $s8,24($sp)
    lw         $a0,2012($s1)
    jal        splx
    ld         $s0,0($sp)
    ld         $ra,16($sp)
    li         $v0,-1
    b          .L00000fe0
    ld         $s1,8($sp)
.L00000fb8:
    cache      0x14,0($sp)
    sd         $v0,32($s0)
    lhu        $at,26($v0)
    sw         $at,4($s0)
    jal        splx
    lw         $a0,2012($s1)
    lw         $v0,4($s0)
    ld         $s0,0($sp)
    ld         $ra,16($sp)
    ld         $s1,8($sp)
.L00000fe0:
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasEramBufFree
    daddiu     $sp,$sp,-48
    sd         $s8,24($sp)
    sd         $ra,16($sp)
    sd         $s1,8($sp)
    sd         $s0,0($sp)
    move       $s1,$a1
    move       $s0,$a0
    jal        mgras_baseindex
    ld         $a0,208($a0)
    jal        splhi
    move       $s8,$v0
    cache      0x14,0($sp)
    sw         $v0,2012($s0)
    move       $a1,$s8
    jal        freeblock
    ld         $a0,32($s1)
    cache      0x14,0($sp)
    sd         $zero,32($s1)
    li         $at,-1
    sw         $at,4($s1)
    ld         $s8,24($sp)
    jal        splx
    lw         $a0,2012($s0)
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasEramRead
    lw         $a4,1724($a0)
    daddiu     $sp,$sp,-192
    move       $at,$a0
    sd         $a2,0($sp)
    ld         $a2,1696($at)
    sd         $ra,48($sp)
    sd         $s0,40($sp)
    sd         $s2,56($sp)
    sd         $a0,8($sp)
    ld         $a0,208($a0)
    sd         $a0,16($sp)
    move       $s2,$a1
    move       $s0,$a3
    lw         $a3,1704($at)
    jal        MgrasInstallTxTbl_Kern
    li         $a1,2
    cache      0x14,0($sp)
    sd         $s0,24($sp)
    sd         $s2,32($sp)
    sd         $s6,120($sp)
    sd         $s3,104($sp)
    sd         $s8,128($sp)
    ld         $v1,8($sp)
    sd         $s4,112($sp)
    sw         $zero,1724($v1)
    ld         $v0,200($v1)
    sd         $s1,136($sp)
    lbu        $v0,43($v0)
    sd         $s5,144($sp)
    sd         $s7,152($sp)
    blez       $v0, .L0000133c
    sd         $zero,96($sp)
    sd         $s0,24($sp)
    sd         $s2,32($sp)
    sd         $s3,104($sp)
    sd         $s4,112($sp)
    li         $s8,0xf900
    ld         $s1,16($sp)
    li         $s6,8065
    addiu      $at,$s0,1
    sd         $at,80($sp)
    dsll32     $s6,$s6,0x3
    addiu      $a5,$s2,-1
    sd         $a5,72($sp)
    lui        $s5,0x1fc0
    sll        $a4,$s0,0x2
    sd         $a4,64($sp)
    ld         $a5,-30720($gp)
    lui        $at,0x7
    dsll32     $a4,$a4,0x0
    ld         $s7,-30664($gp)
    daddu      $s1,$s1,$at
    dsrl32     $a4,$a4,0x0
    or         $a4,$a4,$a5
    b          .L00001168
    sd         $a4,88($sp)
.L00001138:
    ld         $v0,8($sp)
    ld         $a4,0($sp)
    ld         $v0,200($v0)
    ld         $v1,96($sp)
    lbu        $v0,43($v0)
    addiu      $v1,$v1,1
    sd         $v1,96($sp)
    ld         $a5,64($sp)
    slt        $v1,$v1,$v0
    addu       $a4,$a5,$a4
    beqz       $v1, .L0000133c
    sd         $a4,0($sp)
.L00001168:
    cache      0x14,0($sp)
    ld         $at,0($sp)
    li         $a4,-4096
    and        $a4,$at,$a4
    li         $v1,0x8000
    sra        $a5,$a4,0x16
    addu       $a5,$a5,$v1
    sll        $a5,$a5,0x10
    ld         $v1,-30712($gp)
    dsll32     $a5,$a5,0x0
    ld         $s4,72($sp)
    dsrl32     $a5,$a5,0x0
    or         $a5,$a5,$v1
    ld         $v1,-30704($gp)
    sd         $a5,128($s1)
    sd         $v1,128($s1)
    andi       $a5,$at,0xfff
    ld         $v1,-30696($gp)
    dsll32     $a5,$a5,0x0
    ld         $s3,80($sp)
    dsrl32     $a5,$a5,0x0
    or         $a5,$a5,$v1
    sd         $a5,128($s1)
    dsll32     $a4,$a4,0x0
    ld         $a5,-30688($gp)
    dsrl32     $a4,$a4,0x0
    ld         $v1,-30680($gp)
    or         $a4,$a4,$a5
    sd         $a4,128($s1)
    ld         $a4,88($sp)
    sd         $v1,128($s1)
    andi       $at,$at,0x4
    ld         $v1,-30672($gp)
    sd         $a4,128($s1)
    beqz       $at, .L00001330
    sd         $v1,128($s1)
.L000011f8:
    li         $at,-2
    addiu      $s3,$s3,1
    and        $s3,$s3,$at
    blez       $s3, .L00001138
    nop
    b          .L00001230
    nop
.L00001214:
    cache      0x14,0($sp)
    sd         $s7,128($s1)
    addiu      $s3,$s3,-16382
    addiu      $s4,$s4,16382
    sw         $s8,132($s1)
.L00001228:
    blez       $s3, .L00001138
    nop
.L00001230:
    lw         $s2,4($s1)
    lw         $v1,4($s1)
    and        $s2,$s2,$s5
    srl        $s2,$s2,0x16
    andi       $v1,$v1,0x7f
    addiu      $s2,$s2,-5
    sltu       $v1,$s2,$v1
    beqz       $v1, .L0000127c
    li         $s0,1000
.L00001254:
    jal        us_delay
    li         $a0,1
    addiu      $s0,$s0,-1
    blez       $s0, .L000012b8
    nop
    lw         $at,4($s1)
    andi       $at,$at,0x7f
    sltu       $at,$s2,$at
    bnez       $at, .L00001254
    nop
.L0000127c:
    blez       $s0, .L000012b8
    nop
    cache      0x14,0($sp)
    slti       $a4,$s3,16383
    dsll32     $v1,$s4,0x0
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$s6
    beqz       $a4, .L00001214
    sd         $v1,128($s1)
    cache      0x14,0($sp)
    dsll32     $a4,$s3,0x0
    move       $s3,$zero
    ori        $a4,$a4,0x100
    b          .L00001228
    sd         $a4,128($s1)
.L000012b8:
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,144
    ld         $s3,104($sp)
    ld         $s4,112($sp)
    ld         $s6,120($sp)
    ld         $s8,128($sp)
    ld         $s1,136($sp)
    ld         $s5,144($sp)
    li         $v0,-1
    b          .L0000131c
    ld         $s7,152($sp)
.L000012e8:
    cache      0x14,0($sp)
    ld         $s3,104($sp)
    ld         $s4,112($sp)
    ld         $s6,120($sp)
    ld         $s8,128($sp)
    ld         $s1,136($sp)
    ld         $a5,8($sp)
    ld         $s5,144($sp)
    ld         $a4,1776($a5)
    ld         $s7,152($sp)
    daddu      $a4,$a4,$a0
    sd         $a4,1776($a5)
.L00001318:
    move       $v0,$zero
.L0000131c:
    ld         $ra,48($sp)
    ld         $s0,40($sp)
    ld         $s2,56($sp)
    jr         $ra
    daddiu     $sp,$sp,192
.L00001330:
    ld         $s4,32($sp)
    b          .L000011f8
    ld         $s3,24($sp)
.L0000133c:
    ld         $a0,24($sp)
    ld         $v1,8($sp)
    mult       $a0,$v0
    lw         $v1,1688($v1)
    ld         $a5,32($sp)
    lui        $at,0x1
    subu       $at,$at,$v1
    slt        $a5,$a5,$at
    mflo       $a0
    beqz       $a5, .L000012e8
    nop
    cache      0x14,0($sp)
    ld         $s3,104($sp)
    ld         $s4,112($sp)
    ld         $s6,120($sp)
    ld         $s8,128($sp)
    ld         $s1,136($sp)
    ld         $a5,8($sp)
    ld         $s5,144($sp)
    ld         $a4,1760($a5)
    ld         $s7,152($sp)
    daddu      $a4,$a4,$a0
    b          .L00001318
    sd         $a4,1760($a5)

glabel MgrasNextEramResource
    move       $v0,$zero
    move       $a3,$zero
    b          .L000013bc
    li         $a6,-1
.L000013ac:
    daddiu     $v0,$a4,304
.L000013b0:
    slti       $at,$a3,8
    beqz       $at, .L00001404
    nop
.L000013bc:
    dsll       $a4,$a3,0x2
    daddu      $a4,$a4,$a3
    dsll       $a4,$a4,0x3
    daddu      $a4,$a4,$a0
    lw         $a5,304($a4)
    beqz       $a5, .L000013b0
    addiu      $a3,$a3,1
    lw         $at,308($a4)
    bne        $at, $a6, .L000013b0
    nop
    beqz       $v0, .L000013ac
    nop
    lw         $v1,0($v0)
    slt        $v1,$v1,$a5
    beqz       $v1, .L000013b0
    nop
    b          .L000013ac
    nop
.L00001404:
    jr         $ra
    nop

glabel MgrasEramWrite
    lw         $a4,1724($a0)
    daddiu     $sp,$sp,-176
    sd         $s1,112($sp)
    sd         $s6,104($sp)
    sd         $a3,8($sp)
    lw         $a3,1704($a0)
    sd         $a2,16($sp)
    sd         $a0,0($sp)
    sd         $a1,24($sp)
    sd         $s0,32($sp)
    ld         $s0,208($a0)
    sd         $ra,40($sp)
    li         $a1,2
    ld         $a2,1696($a0)
    jal        MgrasInstallTxTbl_Kern
    move       $a0,$s0
    cache      0x14,0($sp)
    sd         $s2,120($sp)
    sd         $s3,128($sp)
    ld         $v0,0($sp)
    ld         $v1,-30656($gp)
    lui        $s1,0x7
    daddu      $s1,$s0,$s1
    sw         $zero,1724($v0)
    sd         $v1,128($s1)
    sd         $s8,88($sp)
    ld         $v0,200($v0)
    sd         $s4,72($sp)
    lbu        $v0,43($v0)
    sd         $s5,80($sp)
    sd         $s7,96($sp)
    sd         $zero,48($sp)
    blez       $v0, .L000016ac
    move       $s6,$zero
    li         $s8,16193
    ld         $at,24($sp)
    sd         $s2,120($sp)
    dsll32     $s8,$s8,0x2
    sd         $s3,128($sp)
    dsll32     $a4,$at,0x0
    sd         $s4,72($sp)
    li         $v1,0x8000
    sra        $at,$at,0x16
    sd         $s5,80($sp)
    dsrl32     $a4,$a4,0x0
    addu       $at,$at,$v1
    ld         $a5,-30688($gp)
    sll        $at,$at,0x10
    lui        $s7,0x1fc0
    ld         $v1,-30712($gp)
    dsll32     $at,$at,0x0
    or         $a4,$a4,$a5
    sd         $a4,56($sp)
    dsrl32     $at,$at,0x0
    or         $at,$at,$v1
    b          .L00001520
    sd         $at,64($sp)
.L000014f0:
    cache      0x14,0($sp)
    li         $v1,0xfa00
    sw         $v1,132($s1)
    ld         $v0,0($sp)
    ld         $v0,200($v0)
    ld         $at,48($sp)
    lbu        $v0,43($v0)
    addiu      $at,$at,1
    sd         $at,48($sp)
    slt        $at,$at,$v0
    beqz       $at, .L000016ac
    nop
.L00001520:
    ld         $a4,8($sp)
    li         $s4,900
    ld         $s5,16($sp)
    blez       $a4, .L000014f0
    move       $s3,$a4
    b          .L00001604
    nop
.L0000153c:
    jal        us_delay
    li         $a0,1
    addiu      $s0,$s0,-1
    blez       $s0, .L00001630
    nop
    lw         $a5,4($s1)
    andi       $a5,$a5,0x7f
    sltu       $a5,$s2,$a5
    bnez       $a5, .L0000153c
    nop
.L00001564:
    slt        $a5,$s3,$s4
    blez       $s0, .L00001630
    ld         $at,-30704($gp)
    cache      0x14,0($sp)
    movn       $s4,$s3,$a5
    ld         $a4,56($sp)
    ld         $v1,64($sp)
    sd         $v1,128($s1)
    sd         $at,128($s1)
    sd         $a4,128($s1)
    dsll32     $v1,$s6,0x0
    ld         $a4,-30696($gp)
    dsrl32     $v1,$v1,0x0
    or         $v1,$v1,$a4
    ld         $a4,-30680($gp)
    dsll32     $at,$s4,0x0
    sd         $a4,128($s1)
    dsrl32     $at,$at,0x0
    sd         $v1,128($s1)
    or         $at,$at,$s8
    sll        $a4,$s4,0x2
    sd         $at,128($s1)
    ld         $at,-30720($gp)
    dsll32     $a5,$a4,0x0
    dsrl32     $a5,$a5,0x0
    or         $a5,$a5,$at
    li         $at,8033
    dsll32     $at,$at,0x3
    sd         $a5,128($s1)
    ld         $v1,-30648($gp)
    dsll32     $a5,$s5,0x0
    subu       $s3,$s3,$s4
    sd         $v1,128($s1)
    dsrl32     $a5,$a5,0x0
    addu       $s6,$a4,$s6
    or         $a5,$a5,$at
    sd         $a5,128($s1)
    addu       $s5,$s5,$s4
    blez       $s3, .L000014f0
    sw         $s4,132($s1)
.L00001604:
    lw         $s2,4($s1)
    lw         $a4,4($s1)
    and        $s2,$s2,$s7
    srl        $s2,$s2,0x16
    andi       $a4,$a4,0x7f
    addiu      $s2,$s2,-20
    sltu       $a4,$s2,$a4
    beqz       $a4, .L00001564
    li         $s0,1000
    b          .L0000153c
    nop
.L00001630:
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,184
    ld         $s4,72($sp)
    ld         $s5,80($sp)
    ld         $s8,88($sp)
    ld         $s7,96($sp)
    ld         $s6,104($sp)
    ld         $s1,112($sp)
    ld         $s2,120($sp)
    li         $v0,-1
    b          .L0000169c
    ld         $s3,128($sp)
.L00001664:
    cache      0x14,0($sp)
    ld         $s4,72($sp)
    ld         $s5,80($sp)
    ld         $s8,88($sp)
    ld         $s7,96($sp)
    ld         $s6,104($sp)
    ld         $s1,112($sp)
    ld         $a5,0($sp)
    ld         $s2,120($sp)
    ld         $a4,1776($a5)
    ld         $s3,128($sp)
    daddu      $a4,$a4,$a0
    sd         $a4,1776($a5)
.L00001698:
    move       $v0,$zero
.L0000169c:
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L000016ac:
    ld         $a0,8($sp)
    ld         $v1,0($sp)
    mult       $a0,$v0
    lw         $v1,1688($v1)
    ld         $a5,16($sp)
    lui        $at,0x1
    subu       $at,$at,$v1
    slt        $a5,$a5,$at
    mflo       $a0
    beqz       $a5, .L00001664
    nop
    cache      0x14,0($sp)
    ld         $s4,72($sp)
    ld         $s5,80($sp)
    ld         $s8,88($sp)
    ld         $s7,96($sp)
    ld         $s6,104($sp)
    ld         $s1,112($sp)
    ld         $a5,0($sp)
    ld         $s2,120($sp)
    ld         $a4,1760($a5)
    ld         $s3,128($sp)
    daddu      $a4,$a4,$a0
    b          .L00001698
    sd         $a4,1760($a5)

glabel MgrasValidateEramRes
    daddiu     $sp,$sp,-160
    ld         $v0,208($a0)
    sd         $v0,16($sp)
    ld         $at,424($a0)
    sd         $s1,40($sp)
    sd         $s0,48($sp)
    move       $s1,$a0
    move       $v0,$zero
    sd         $a2,24($sp)
    beq        $at, $a1, .L0000174c
    move       $s0,$a1
.L0000173c:
    ld         $s0,48($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L0000174c:
    ld         $a0,16($s0)
    sd         $ra,56($sp)
    jal        RRM_CheckValidFault
    ld         $a0,64($a0)
    bltz       $v0, .L00001904
    ld         $ra,56($sp)
    ld         $a2,24($sp)
    dsll       $a1,$a2,0x2
    daddu      $a1,$a1,$a2
    dsll       $a1,$a1,0x3
    move       $a0,$s1
    daddu      $a1,$a1,$s0
    sd         $a1,0($sp)
    sd         $s7,72($sp)
    jal        MgrasEramBufAlloc
    daddiu     $a1,$a1,304
    ld         $a3,0($sp)
    bltz       $v0, .L00001940
    move       $s7,$v0
    lw         $a3,328($a3)
    beqz       $a3, .L00001940
    nop
    sd         $s4,80($sp)
    sd         $s2,112($sp)
    ld         $s2,16($sp)
    lw         $v1,1672($s1)
    lw         $v0,52($s0)
    sd         $s3,104($sp)
    lui        $s3,0x7
    addu       $v0,$v0,$v1
    ld         $v1,24($sp)
    move       $s4,$zero
    ld         $a4,200($s1)
    daddu      $s2,$s2,$s3
    addu       $v0,$v0,$v1
    li         $v1,8033
    lw         $s3,4($s2)
    sd         $s5,64($sp)
    lui        $at,0x1fc0
    dsll32     $v1,$v1,0x3
    lbu        $a4,43($a4)
    and        $s3,$s3,$at
    dsll32     $at,$v0,0x0
    sd         $s0,8($sp)
    lui        $s5,0x8000
    dsrl32     $at,$at,0x0
    sd         $s8,88($sp)
    srl        $s3,$s3,0x16
    or         $at,$at,$v1
    sd         $s6,96($sp)
    blez       $a4, .L000018b8
    addiu      $s3,$s3,-12
    ld         $s6,-30640($gp)
    ld         $s8,-30632($gp)
    sd         $s0,8($sp)
    ori        $s5,$s5,0x8
    b          .L00001898
    sd         $at,32($sp)
.L00001834:
    jal        us_delay
    li         $a0,1
    addiu      $s0,$s0,-1
    blez       $s0, .L0000190c
    nop
    lw         $v1,4($s2)
    andi       $v1,$v1,0x7f
    sltu       $v1,$s3,$v1
    bnez       $v1, .L00001834
    nop
.L0000185c:
    blez       $s0, .L0000190c
    nop
    cache      0x14,0($sp)
    ld         $a4,32($sp)
    sd         $s6,128($s2)
    sw         $s5,132($s2)
    sw         $s7,128($s2)
    sw         $zero,128($s2)
    sd         $a4,128($s2)
    sd         $s8,128($s2)
    ld         $a3,200($s1)
    lbu        $a3,43($a3)
    slt        $a3,$s4,$a3
    beqz       $a3, .L000018b8
    nop
.L00001898:
    lw         $s0,4($s2)
    andi       $s0,$s0,0x7f
    sltu       $s0,$s3,$s0
    addiu      $s4,$s4,1
    beqz       $s0, .L0000185c
    li         $s0,1000
    b          .L00001834
    nop
.L000018b8:
    cache      0x14,0($sp)
    ld         $ra,56($sp)
    ld         $s5,64($sp)
    ld         $s8,88($sp)
    ld         $s6,96($sp)
    ld         $s3,0($sp)
    ld         $s4,8($sp)
    sw         $s7,308($s3)
    ld         $s2,24($sp)
    sw         $zero,328($s3)
    ld         $s3,104($sp)
    dsll       $s2,$s2,0x2
    daddu      $s2,$s2,$s4
    ld         $s4,80($sp)
    sw         $s7,212($s2)
    ld         $s7,72($sp)
    move       $v0,$zero
    b          .L0000173c
    ld         $s2,112($sp)
.L00001904:
    b          .L0000173c
    li         $v0,-1
.L0000190c:
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,224
    ld         $ra,56($sp)
    ld         $s5,64($sp)
    ld         $s7,72($sp)
    ld         $s4,80($sp)
    ld         $s8,88($sp)
    ld         $s6,96($sp)
    ld         $s3,104($sp)
    li         $v0,-1
    b          .L0000173c
    ld         $s2,112($sp)
.L00001940:
    ld         $a1,16($s0)
    ld         $s7,72($sp)
    li         $a2,1
    jal        rrmInvalidateRN
    ld         $a0,64($a1)
    ld         $a0,16($s0)
    jal        MgrasUnMapGfx
    ld         $a0,64($a0)
    move       $a0,$s1
    daddiu     $a1,$s1,440
    jal        MgrasCtxsw
    move       $a2,$s0
    b          .L0000173c
    ld         $ra,56($sp)

glabel MgrasEramManagerTimeout
    cache      0x14,0($sp)
    move       $a1,$a0
    ld         $a0,-30696($gp)
    li         $v1,1
    sw         $v1,1792($a1)
    ld         $at,1760($a1)
    sd         $zero,1760($a1)
    ld         $v0,1776($a1)
    sd         $zero,1776($a1)
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $v0,1784($a1)
    li         $a2,6000
    jal        timeout
    sd         $at,1768($a1)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasMoveDemarcationUp
    daddiu     $sp,$sp,-96
    sd         $s5,72($sp)
    sd         $s0,16($sp)
    li         $a1,25
    sd         $s8,24($sp)
    move       $s0,$a0
    sd         $ra,32($sp)
    daddiu     $s8,$a0,1976
    daddiu     $s5,$s0,1992
    sd         $s3,64($sp)
    jal        mutex_lock
    move       $a0,$s8
    ld         $s3,1992($s0)
    sd         $s2,40($sp)
    sd         $s4,56($sp)
    sd         $s1,48($sp)
    beq        $s5, $s3, .L00001a84
    li         $s4,-1
    sd         $s2,40($sp)
    b          .L00001a20
    sd         $s1,48($sp)
.L00001a14:
    ld         $s3,0($s3)
    beq        $s5, $s3, .L00001a84
    nop
.L00001a20:
    b          .L00001a54
    move       $s2,$zero
.L00001a28:
    move       $a0,$s0
    jal        MgrasEramRead
    lw         $a2,320($s1)
    bltz       $v0, .L00001b40
    nop
    move       $a0,$s0
    jal        MgrasEramBufFree
    daddiu     $a1,$s1,304
.L00001a48:
    slti       $at,$s2,8
    beqz       $at, .L00001a14
    nop
.L00001a54:
    dsll       $s1,$s2,0x2
    daddu      $s1,$s1,$s2
    dsll       $s1,$s1,0x3
    daddu      $s1,$s1,$s3
    lw         $a3,304($s1)
    beqz       $a3, .L00001a48
    addiu      $s2,$s2,1
    lw         $a1,308($s1)
    beq        $a1, $s4, .L00001a48
    nop
    b          .L00001a28
    nop
.L00001a84:
    jal        mutex_unlock
    move       $a0,$s8
    lw         $s8,1640($s0)
    lw         $s4,1632($s0)
    mult       $s4,$s8
    ld         $s1,48($sp)
    ld         $s5,72($sp)
    sd         $s4,8($sp)
    lw         $s2,1636($s0)
    ld         $s4,56($sp)
    mflo       $s3
    addu       $s2,$s2,$s3
    sd         $s2,0($sp)
    ld         $s2,40($sp)
    jal        splhi
    ld         $s3,64($sp)
    cache      0x14,0($sp)
    ld         $a0,208($s0)
    jal        mgras_baseindex
    sw         $v0,2012($s0)
    move       $a2,$v0
    ld         $a0,0($sp)
    jal        reservelow
    move       $a1,$s8
    jal        splx
    lw         $a0,2012($s0)
    cache      0x14,0($sp)
    lw         $a2,1632($s0)
    ld         $a4,8($sp)
    lw         $v0,1628($s0)
    li         $v1,1
    lw         $at,1688($s0)
    sllv       $v1,$v1,$a4
    addiu      $a2,$a2,1
    or         $v0,$v0,$v1
    sw         $v0,1628($s0)
    sw         $a2,1632($s0)
    subu       $at,$at,$s8
    li         $v0,-256
    and        $at,$at,$v0
    sw         $at,1688($s0)
    move       $v0,$zero
.L00001b2c:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00001b40:
    jal        mutex_unlock
    move       $a0,$s8
    ld         $s2,40($sp)
    ld         $s1,48($sp)
    ld         $s4,56($sp)
    ld         $s3,64($sp)
    li         $v0,-1
    b          .L00001b2c
    ld         $s5,72($sp)

glabel MgrasMoveDemarcationDown
    daddiu     $sp,$sp,-112
    sd         $ra,48($sp)
    lw         $v0,1632($a0)
    sd         $s5,0($sp)
    lw         $at,1628($a0)
    li         $v1,1
    addiu      $s5,$v0,-1
    sd         $s1,40($sp)
    sllv       $v1,$v1,$s5
    lw         $s1,1640($a0)
    and        $at,$at,$v1
    sd         $s0,32($sp)
    move       $s0,$a0
    bnez       $at, .L00001c24
    sd         $v1,24($sp)
    sd         $s2,80($sp)
    sd         $v0,56($sp)
    li         $a1,25
    daddiu     $a0,$s0,1976
    sd         $s3,72($sp)
    sd         $a0,8($sp)
    jal        mutex_lock
    daddiu     $s3,$s0,1992
    ld         $s2,1992($s0)
    beq        $s3, $s2, .L00001bf8
    sd         $s4,64($sp)
    sd         $s4,64($sp)
    lw         $v0,1636($s0)
.L00001bd4:
    lw         $s4,52($s2)
    subu       $a4,$s4,$v0
    div        $zero,$a4,$s1
    mflo       $a2
    beq        $a2, $s5, .L00001cb8
    teq        $s1,$zero,0x7
    ld         $s2,0($s2)
    bne        $s3, $s2, .L00001bd4
    nop
.L00001bf8:
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,272
    ld         $s5,0($sp)
    ld         $s4,64($sp)
.L00001c10:
    ld         $a0,8($sp)
    ld         $s3,72($sp)
    jal        mutex_unlock
    ld         $s2,80($sp)
    ld         $v0,56($sp)
.L00001c24:
    mult       $v0,$s1
    lw         $a2,1636($s0)
    ld         $s5,0($sp)
    mflo       $a3
    addu       $a2,$a2,$a3
    jal        splhi
    sd         $a2,16($sp)
    cache      0x14,0($sp)
    ld         $a0,208($s0)
    jal        mgras_baseindex
    sw         $v0,2012($s0)
    move       $a2,$v0
    ld         $a0,16($sp)
    jal        reservelow
    negu       $a1,$s1
    jal        splx
    lw         $a0,2012($s0)
    cache      0x14,0($sp)
    lw         $ra,1628($s0)
    lw         $v0,1632($s0)
    lw         $a4,1688($s0)
    ld         $at,24($sp)
    addiu      $v0,$v0,-1
    sw         $v0,1632($s0)
    addu       $a4,$a4,$s1
    li         $s1,-256
    nor        $at,$at,$zero
    and        $a4,$a4,$s1
    ld         $s1,40($sp)
    and        $ra,$ra,$at
    sw         $ra,1628($s0)
    sw         $a4,1688($s0)
    ld         $s0,32($sp)
    move       $v0,$zero
    ld         $ra,48($sp)
.L00001cb0:
    jr         $ra
    daddiu     $sp,$sp,112
.L00001cb8:
    move       $a0,$s0
    move       $a1,$s4
    lw         $a2,632($s2)
    jal        MgrasEramRead
    move       $a3,$s1
    ld         $ra,48($sp)
    bltz       $v0, .L00001d00
    ld         $s5,0($sp)
    move       $a0,$s0
    jal        MgrasGlContextFree
    move       $a1,$s4
    cache      0x14,0($sp)
    li         $v1,-1
    sw         $v1,52($s2)
    bne        $s3, $s2, .L00001c10
    ld         $s4,64($sp)
    b          .L00001bf8
    nop
.L00001d00:
    ld         $s1,40($sp)
    ld         $s0,32($sp)
    ld         $s4,64($sp)
    ld         $s3,72($sp)
    li         $v0,-1
    b          .L00001cb0
    ld         $s2,80($sp)

glabel MgrasInfo
    daddiu     $sp,$sp,-80
    sd         $a2,32($sp)
    sd         $a3,16($sp)
    sd         $a1,40($sp)
    sd         $s2,8($sp)
    sd         $ra,0($sp)
    move       $s2,$a0
    ld         $a0,208($a0)
    jal        MgrasGatherDynamicInfo
    move       $a1,$s2
    ld         $v0,32($sp)
    dsll32     $v1,$v0,0x0
    li         $at,204
    dsrl32     $v1,$v1,0x0
    ld         $a0,200($s2)
    li         $a2,204
    sltu       $at,$at,$v1
    ld         $a1,40($sp)
    movz       $a2,$v0,$at
    jal        copyout
    sd         $a2,24($sp)
    ld         $s2,8($sp)
    beqz       $v0, .L00001d88
    ld         $ra,0($sp)
    li         $v0,14
.L00001d80:
    jr         $ra
    daddiu     $sp,$sp,80
.L00001d88:
    cache      0x14,0($sp)
    ld         $a4,24($sp)
    ld         $a5,16($sp)
    move       $v0,$zero
    b          .L00001d80
    sw         $a4,0($a5)

glabel mgras_regmatch
    daddiu     $sp,$sp,-64
    sd         $s0,0($sp)
    beqz       $a0, .L00001df8
    move       $s0,$a0
    sd         $a2,16($sp)
    sd         $ra,24($sp)
    sd         $a1,8($sp)
    jal        MgrasUnMapGfx
    move       $a0,$s0
    cache      0x14,0($sp)
    sd         $zero,72($s0)
    ld         $a0,40($s0)
    ld         $a1,8($sp)
    ld         $a2,16($sp)
    beqz       $a0, .L00001df8
    ld         $ra,24($sp)
    cache      0x14,0($sp)
    jal        ddv_destroy_handle
    sd         $zero,40($s0)
    ld         $a1,8($sp)
    ld         $a2,16($sp)
    ld         $ra,24($sp)
.L00001df8:
    cache      0x14,0($sp)
    sd         $a1,40($a2)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel MgrasAttach
    daddiu     $sp,$sp,-80
    sd         $a1,40($sp)
    sw         $zero,28($sp)
    sw         $zero,20($sp)
    li         $v1,2
    sw         $v1,16($sp)
    sd         $zero,0($sp)
    lui        $v0,0x10
    andi       $at,$a1,0x3fff
    sd         $v0,8($sp)
    sd         $a0,32($sp)
    li         $v0,22
    li         $a0,3
    beqz       $at, .L00001e50
    sw         $a0,24($sp)
.L00001e48:
    jr         $ra
    daddiu     $sp,$sp,80
.L00001e50:
    ld         $a0,-30688($gp)
    ld         $a1,32($sp)
    sd         $ra,48($sp)
    jal        gfxdd_recycle
    ld         $a2,40($sp)
    lw         $a6,-30716($gp)
    beqz       $v0, .L00001e90
    ld         $ra,48($sp)
    beqz       $a6, .L00001e88
    nop
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,304
    ld         $ra,48($sp)
.L00001e88:
    b          .L00001e48
    move       $v0,$zero
.L00001e90:
    beqz       $a6, .L00001eac
    nop
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,344
    b          .L00001eac
    lw         $a6,-30716($gp)
.L00001eac:
    move       $v0,$zero
    daddiu     $a7,$sp,0
.L00001eb4:
    cache      0x14,0($sp)
    dsll       $a5,$v0,0x5
    ld         $at,40($sp)
    daddu      $a5,$a5,$a7
    ld         $v1,8($a5)
    addiu      $v0,$v0,1
    ld         $a3,0($a5)
    daddu      $v1,$v1,$at
    sd         $v1,8($a5)
    daddu      $a3,$a3,$at
    blez       $v0, .L00001eb4
    sd         $a3,0($a5)
    beqz       $a6, .L00001f24
    nop
    ld         $a0,-30704($gp)
    ld         $a2,8($sp)
    ld         $a1,0($sp)
    jal        printf
    daddiu     $a0,$a0,392
    ld         $a3,32($sp)
    ld         $a0,-30704($gp)
    lw         $a3,48($a3)
    lui        $a2,0x10
    daddiu     $a0,$a0,416
    andi       $a3,$a3,0x8
    ld         $a1,40($sp)
    jal        printf
    sltiu      $a3,$a3,1
.L00001f24:
    ld         $a4,32($sp)
    lui        $a1,0x10
    lw         $a0,48($a4)
    li         $a6,1
    daddiu     $a5,$sp,0
    ld         $a3,-30680($gp)
    daddiu     $a7,$a4,40
    andi       $a0,$a0,0x8
    ld         $a2,0($sp)
    jal        gfxdd_mmap
    sltu       $a0,$zero,$a0
    beqz       $v0, .L00001f60
    ld         $ra,48($sp)
    b          .L00001e48
    li         $v0,12
.L00001f60:
    b          .L00001e48
    move       $v0,$zero

glabel MgrasDetach
    cache      0x14,0($sp)
    ld         $at,40($a0)
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $zero,40($a0)
    jal        gfxdd_munmap
    move       $a0,$at
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasInitialize
    daddiu     $sp,$sp,-96
    sd         $ra,32($sp)
    sd         $s1,24($sp)
    sd         $s0,16($sp)
    ld         $s0,32($a0)
    sd         $s6,40($sp)
    ld         $s6,208($s0)
    move       $s1,$a0
    ld         $at,200($s0)
    sd         $at,8($sp)
    jal        mgras_baseindex
    move       $a0,$s6
    move       $a0,$zero
    sd         $s3,72($sp)
    move       $a1,$zero
    move       $a2,$zero
    sd         $v0,0($sp)
    jal        htp_register_board
    move       $a3,$zero
    sd         $s5,64($sp)
    lw         $a2,1692($s0)
    sd         $s4,56($sp)
    move       $s3,$zero
    sd         $s2,48($sp)
    ld         $s4,-30720($gp)
    beqz       $a2, .L00002058
    daddiu     $s2,$s0,1864
    ld         $s5,-30704($gp)
.L00002004:
    daddiu     $a1,$s5,456
    jal        cmn_err
    li         $a0,4
    move       $a0,$s2
    move       $a1,$zero
    move       $a2,$zero
    jal        init_sema
    li         $a3,-1
    move       $a0,$s4
    move       $a1,$s2
    jal        timeout
    li         $a2,500
    move       $a0,$s2
    jal        psema
    li         $a1,25
    slti       $v1,$s3,11
    beqz       $v1, .L00002144
    addiu      $s3,$s3,1
    lw         $a2,1692($s0)
    bnez       $a2, .L00002004
    nop
.L00002058:
    ld         $a2,32($s1)
    ld         $s2,48($sp)
    ld         $a3,72($a2)
    ld         $s4,56($sp)
    ld         $s5,64($sp)
    beq        $a3, $s1, .L000020c4
    ld         $s3,72($sp)
    ld         $s2,48($sp)
    ld         $s4,56($sp)
    li         $a1,537
    ld         $s5,64($sp)
    daddiu     $a0,$a2,56
    jal        psema
    ld         $s3,72($sp)
    cache      0x14,0($sp)
    ld         $at,32($s1)
    sd         $s1,72($at)
    ld         $a4,32($s1)
    lw         $a4,104($a4)
    beqz       $a4, .L000020c4
    nop
.L000020ac:
    jal        us_delay
    li         $a0,2
    ld         $v1,32($s1)
    lw         $v1,104($v1)
    bnez       $v1, .L000020ac
    nop
.L000020c4:
    jal        MgrasReset
    move       $a0,$s6
    jal        MgrasRetraceInit
    move       $a0,$s0
    ld         $a1,8($sp)
    move       $a0,$s6
    jal        MgrasInitHQ
    lbu        $a1,43($a1)
    cache      0x14,0($sp)
    ld         $a4,0($sp)
    dsll       $a3,$a4,0x2
    dsubu      $a3,$a3,$a4
    ld         $a4,-30672($gp)
    dsll       $a3,$a3,0x4
    daddu      $a3,$a3,$a4
    li         $a2,1
    jal        MgrasInitGioIntrVectors
    sw         $a2,32($a3)
    cache      0x14,0($sp)
    lui        $v0,0x5
    ori        $v0,$v0,0x18
    lui        $at,0x4400
    daddu      $v0,$v0,$s6
    ori        $at,$at,0xe200
    sw         $at,0($v0)
    move       $v0,$zero
.L0000212c:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s6,40($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00002144:
    ld         $s2,48($sp)
    ld         $s4,56($sp)
    ld         $s5,64($sp)
    li         $v0,-1
    b          .L0000212c
    ld         $s3,72($sp)

glabel MgrasDownload
    lw         $a7,0($a1)
    ld         $a6,32($a0)
    daddiu     $sp,$sp,-64
    move       $v0,$zero
    lui        $at,0x10
    sd         $s0,32($sp)
    move       $s0,$a1
    blez       $a7, .L000021c4
    ld         $a5,208($a6)
    sd         $ra,40($sp)
    sd         $v0,8($sp)
    slt        $at,$at,$a7
    sd         $a5,16($sp)
    bnez       $at, .L000021c4
    sd         $a6,24($sp)
    move       $a1,$a7
    move       $a2,$zero
    ld         $a0,8($s0)
    jal        userdma
    move       $a3,$zero
    beqz       $v0, .L000021e8
    ld         $ra,40($sp)
    li         $v0,14
.L000021b8:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000021c4:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a2,$a7
    sd         $ra,40($sp)
    jal        cmn_err
    daddiu     $a1,$a1,512
    li         $v0,22
    b          .L000021b8
    ld         $ra,40($sp)
.L000021e8:
    lw         $a1,0($s0)
    li         $a2,16
    jal        maputokv
    ld         $a0,8($s0)
    lw         $a2,16($s0)
    li         $a3,3
    li         $a4,11
    beq        $a2, $a3, .L000022a0
    sd         $v0,0($sp)
    beq        $a2, $a4, .L00002254
    nop
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,640
    li         $a3,22
    sd         $a3,8($sp)
.L0000222c:
    lw         $a1,0($s0)
    ld         $a0,8($s0)
    jal        undma
    move       $a2,$zero
    ld         $a0,0($sp)
    jal        unmaputokv
    lw         $a1,0($s0)
    ld         $v0,8($sp)
    b          .L000021b8
    ld         $ra,40($sp)
.L00002254:
    ld         $a3,24($sp)
    ld         $a1,0($sp)
    ld         $a3,200($a3)
    lw         $a2,0($s0)
    lbu        $a6,56($a3)
    move       $a4,$zero
    ld         $a0,16($sp)
    li         $a5,2
    lbu        $a3,43($a3)
    jal        MgrasDownloadGE11Ucode
    slt        $a5,$a5,$a6
    beqz       $v0, .L0000222c
    nop
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,592
    li         $a3,5
    b          .L0000222c
    sd         $a3,8($sp)
.L000022a0:
    ld         $a0,16($sp)
    ld         $a1,0($sp)
    lw         $a2,0($s0)
    jal        MgrasDownloadHQ3Ucode
    move       $a3,$zero
    beqz       $v0, .L0000222c
    nop
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,544
    li         $a3,5
    b          .L0000222c
    sd         $a3,8($sp)

glabel MgrasStart
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-128
    sd         $zero,24($sp)
    sd         $zero,16($sp)
    sd         $zero,8($sp)
    sd         $s2,56($sp)
    sd         $s4,64($sp)
    sd         $s0,48($sp)
    ld         $s0,32($a0)
    sd         $s1,40($sp)
    sw         $zero,1880($s0)
    sd         $zero,224($s0)
    sw         $zero,416($s0)
    sw         $zero,84($s0)
    sw         $zero,120($s0)
    sw         $zero,104($s0)
    sw         $zero,16($s0)
    sd         $zero,8($s0)
    ld         $s1,200($s0)
    lui        $v0,0x7
    ld         $s4,208($s0)
    move       $s2,$a0
    li         $a0,16321
    lbu        $v1,43($s1)
    dsll32     $a0,$a0,0x2
    sw         $zero,68($s1)
    daddu      $v0,$v0,$s4
    or         $v1,$v1,$a0
    sd         $v1,128($v0)
    sd         $zero,32($sp)
    li         $v1,8961
    lbu        $at,44($s1)
    sd         $s3,80($sp)
    dsll32     $v1,$v1,0x2
    ld         $a0,-30704($gp)
    sra        $at,$at,0x1
    sd         $ra,72($sp)
    li         $s3,32396
    dsll32     $at,$at,0x0
    sd         $v0,0($sp)
    daddiu     $a0,$a0,680
    dsrl32     $at,$at,0x0
    or         $at,$at,$v1
    jal        kopt_find
    sd         $at,128($v0)
    beqz       $v0, .L000023b4
    nop
    lbu        $a3,0($v0)
    beqz       $a3, .L000023b4
    nop
    jal        atoi
    move       $a0,$v0
    sll        $s3,$v0,0x0
    andi       $s3,$s3,0x3f
    sll        $s3,$s3,0x9
    ori        $s3,$s3,0x8c
.L000023b4:
    lbu        $v0,43($s1)
    beqz       $v0, .L000023c8
    li         $at,-9
    or         $s3,$s3,$v0
    and        $s3,$s3,$at
.L000023c8:
    cache      0x14,0($sp)
    lui        $a5,0x5
    daddu      $a5,$a5,$s4
    sw         $s3,0($a5)
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    ld         $v1,208($s0)
    daddiu     $a0,$s0,1952
    lui        $a4,0x7
    lui        $v0,0x1
    daddu      $v1,$v1,$a4
    daddiu     $s3,$s0,2008
    jal        init_sema
    sw         $v0,8($v1)
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    jal        init_sema
    daddiu     $a0,$s0,1584
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    jal        init_sema
    daddiu     $a0,$s0,1600
    li         $a3,-1
    move       $a2,$zero
    li         $a1,1
    jal        init_sema
    daddiu     $a0,$s0,1912
    li         $a3,-1
    move       $a2,$zero
    li         $a1,1
    sd         $s5,96($sp)
    jal        init_sema
    daddiu     $a0,$s0,1936
    ld         $s5,1696($s0)
    bnez       $s5, .L000025b0
    daddiu     $s5,$s0,1976
.L00002464:
    move       $a0,$s5
    ld         $a2,-30704($gp)
    move       $a1,$zero
    li         $a3,-1
    jal        init_mutex
    daddiu     $a2,$a2,696
    move       $a1,$zero
    move       $a0,$s3
    daddiu     $s3,$s0,440
    jal        spinlock_init
    ld         $s5,96($sp)
    cache      0x14,0($sp)
    li         $a1,1144
    sw         $zero,1620($s0)
    sd         $zero,424($s0)
    jal        bzero
    move       $a0,$s3
    jal        MgrasGlContextAlloc
    move       $a0,$s0
    cache      0x14,0($sp)
    li         $a3,-1
    beq        $v0, $a3, .L0000258c
    sw         $v0,492($s0)
    ld         $a5,32($s2)
    move       $a0,$s0
    daddiu     $a5,$a5,80
    move       $a1,$s3
    li         $a6,1
.L000024d4:
    ll         $a4,0($a5)
    addu       $a7,$a4,$a6
    move       $a4,$a7
    sc         $a7,0($a5)
    beqzl      $a7, .L000024d4
    nop
    jal        MgrasCtxsw
    move       $a2,$s3
    bltz       $v0, .L00002568
    nop
    cache      0x14,0($sp)
    sd         $s3,424($s0)
    li         $v0,16321
    lbu        $at,43($s1)
    dsll32     $v0,$v0,0x2
    or         $at,$at,$v0
    ld         $v0,0($sp)
    sd         $at,128($v0)
    daddiu     $v1,$s0,1992
    sd         $v1,1992($s0)
    sd         $v1,2000($s0)
    lw         $a3,496($s0)
    lui        $a4,0x8000
    sw         $zero,1692($s0)
    sw         $zero,1624($s0)
    or         $a3,$a3,$a4
    lui        $a4,0x1000
    or         $a3,$a3,$a4
    sw         $a3,496($s0)
    ld         $at,1696($s0)
    lw         $v0,0($gp)
    sll        $v0,$v0,0x4
    beqz       $at, .L000025d0
    sw         $v0,1704($s0)
    ld         $v1,32($sp)
    beqz       $v1, .L000025f4
    nop
.L00002568:
    ld         $a4,32($s2)
    daddiu     $a4,$a4,80
    li         $at,-1
.L00002574:
    ll         $a3,0($a4)
    addu       $v1,$a3,$at
    move       $a3,$v1
    sc         $v1,0($a4)
    beqzl      $v1, .L00002574
    nop
.L0000258c:
    li         $v0,-1
.L00002590:
    ld         $s0,48($sp)
    ld         $s1,40($sp)
    ld         $ra,72($sp)
    ld         $s2,56($sp)
    ld         $s3,80($sp)
    ld         $s4,64($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L000025b0:
    jal        mutex_destroy
    move       $a0,$s5
    jal        spinlock_destroy
    move       $a0,$s3
    jal        spinlock_destroy
    daddiu     $a0,$s0,1708
    b          .L00002464
    nop
.L000025d0:
    li         $a1,0x8100
    jal        kmem_alloc
    dsll       $a0,$v0,0x2
    cache      0x14,0($sp)
    beqz       $v0, .L00002788
    sd         $v0,1696($s0)
.L000025e8:
    ld         $at,8($sp)
    bnez       $at, .L00002568
    sd         $at,32($sp)
.L000025f4:
    lw         $a1,1704($s0)
    ld         $a0,1696($s0)
    jal        bzero
    dsll       $a1,$a1,0x2
    cache      0x14,0($sp)
    lw         $a3,0($gp)
    srl        $a2,$a3,0x1f
    move       $a1,$zero
    addu       $a2,$a2,$a3
    daddiu     $s3,$s0,1708
    sra        $a2,$a2,0x1
    move       $a0,$s3
    jal        spinlock_init
    sw         $a2,1720($s0)
    ld         $a4,1712($s0)
    beqz       $a4, .L000027a0
    nop
.L00002638:
    ld         $at,16($sp)
    bnez       $at, .L00002568
    nop
    lw         $a1,1720($s0)
    ld         $a0,1712($s0)
    jal        bzero
    dsll       $a1,$a1,0x4
    cache      0x14,0($sp)
    ld         $a3,1712($s0)
    lw         $v1,1720($s0)
    addiu      $v1,$v1,-3
    sd         $v1,0($a3)
    ld         $at,1712($s0)
    sd         $s3,16($at)
    ld         $a4,1712($s0)
    sd         $zero,24($a4)
    lw         $a3,1704($s0)
    slti       $a3,$a3,2
    li         $a4,1
    bnez       $a3, .L000026b8
    sd         $a4,88($sp)
    ld         $s3,88($sp)
.L00002690:
    li         $a1,1023
    ld         $a0,1712($s0)
    jal        mfree
    move       $a2,$s3
    addiu      $s3,$s3,1024
    lw         $a3,1704($s0)
    andi       $s3,$s3,0xffff
    slt        $a3,$s3,$a3
    bnez       $a3, .L00002690
    nop
.L000026b8:
    lbu        $at,43($s1)
    beqz       $at, .L000026d4
    nop
    cache      0x14,0($sp)
    ld         $a3,0($sp)
    li         $v1,0xf200
    sw         $v1,132($a3)
.L000026d4:
    move       $a0,$s4
    jal        MgrasInitRasterBackend
    move       $a1,$s1
    lbu        $a4,44($s1)
    blez       $a4, .L00002710
    nop
    cache      0x14,0($sp)
    lui        $at,0x6
    daddu      $at,$s4,$at
    li         $v1,31
    sb         $v1,8200($at)
    lhu        $at,8368($at)
    sra        $at,$at,0x6
    andi       $at,$at,0x3
    sb         $at,60($s1)
.L00002710:
    lbu        $v1,45($s1)
    beqz       $v1, .L00002724
    nop
    jal        MgrasInitGblTexMgr
    move       $a0,$s0
.L00002724:
    lbu        $v0,43($s1)
    beqz       $v0, .L00002808
    li         $a1,1
    beq        $a1, $v0, .L000027f4
    ld         $a0,-30624($gp)
    cache      0x14,0($sp)
    ld         $a3,0($sp)
    sd         $a0,128($a3)
    li         $a4,0xf200
    sw         $a4,132($a3)
    sd         $a0,128($a3)
    sw         $zero,1616($s0)
.L00002754:
    jal        MgrasEnableRetraceInterrupts
    move       $a0,$s4
    ld         $v0,32($s2)
    daddiu     $v0,$v0,80
    li         $v1,-1
.L00002768:
    ll         $at,0($v0)
    addu       $a3,$at,$v1
    move       $at,$a3
    sc         $a3,0($v0)
    beqzl      $a3, .L00002768
    nop
    b          .L00002590
    move       $v0,$zero
.L00002788:
    move       $a0,$s0
    jal        MgrasGlContextFree
    lw         $a1,492($s0)
    li         $v1,1
    b          .L000025e8
    sd         $v1,8($sp)
.L000027a0:
    lw         $a0,1720($s0)
    jal        kern_malloc
    dsll       $a0,$a0,0x4
    cache      0x14,0($sp)
    beqz       $v0, .L000027c4
    sd         $v0,1712($s0)
.L000027b8:
    ld         $a3,24($sp)
    b          .L00002638
    sd         $a3,16($sp)
.L000027c4:
    jal        spinlock_destroy
    move       $a0,$s3
    lw         $a1,1704($s0)
    ld         $a0,1696($s0)
    jal        kmem_free
    dsll       $a1,$a1,0x2
    move       $a0,$s0
    jal        MgrasGlContextFree
    lw         $a1,492($s0)
    li         $a3,1
    b          .L000027b8
    sd         $a3,24($sp)
.L000027f4:
    cache      0x14,0($sp)
    ld         $a4,0($sp)
    sd         $a0,128($a4)
    b          .L00002754
    sw         $zero,1616($s0)
.L00002808:
    cache      0x14,0($sp)
    b          .L00002754
    sw         $a1,1616($s0)

glabel MgrasExit
    ld         $v0,32($a0)
    daddiu     $sp,$sp,-112
    ld         $at,72($a0)
    sd         $at,24($sp)
    sd         $v0,0($sp)
    sd         $s1,32($sp)
    sd         $s5,48($sp)
    bnez       $at, .L000029b4
    move       $s1,$a0
    ld         $s5,-30664($gp)
    sd         $s0,40($sp)
.L00002840:
    lw         $a0,0($gp)
    slti       $v1,$a0,2
    sd         $s2,88($sp)
    bnez       $v1, .L00002908
    li         $s0,1
    sd         $s3,80($sp)
    sd         $s6,72($sp)
    sd         $ra,64($sp)
    sd         $s4,56($sp)
    b          .L000028a0
    ld         $s2,-30656($gp)
.L0000286c:
    move       $a0,$s4
    jal        MgrasDestroyDMA
    move       $a1,$zero
    lw         $a1,1120($s4)
    beqz       $a1, .L00002920
    nop
.L00002884:
    jal        vsema
    move       $a0,$s3
    lw         $a0,0($gp)
.L00002890:
    addiu      $s0,$s0,1
    slt        $at,$s0,$a0
    beqz       $at, .L000028f4
    nop
.L000028a0:
    dsll       $s6,$s0,0x2
    dsubu      $s6,$s6,$s0
    dsll       $s6,$s6,0x2
    dsubu      $s6,$s6,$s0
    dsll       $s6,$s6,0x4
    daddu      $s6,$s6,$s2
    ld         $v0,56($s6)
    dsll       $s3,$s0,0x4
    bne        $v0, $s1, .L00002890
    daddu      $s3,$s3,$s5
    li         $a1,25
    jal        psema
    move       $a0,$s3
    lbu        $s4,84($s6)
    beqz       $s4, .L0000286c
    ld         $s4,112($s6)
    ld         $at,64($s6)
    bne        $at, $s1, .L00002884
    nop
    b          .L0000286c
    nop
.L000028f4:
    ld         $s4,56($sp)
    ld         $ra,64($sp)
    ld         $s6,72($sp)
    ld         $s3,80($sp)
    ld         $s2,88($sp)
.L00002908:
    ld         $s0,40($sp)
    move       $v0,$zero
    ld         $s1,32($sp)
    ld         $s5,48($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00002920:
    ld         $v0,1080($s4)
    beqz       $v0, .L00002980
    nop
    ld         $a1,64($s6)
    ld         $v1,0($a1)
    ld         $v1,8($v1)
    beq        $v1, $a1, .L00002ac0
    nop
.L00002940:
    ld         $a0,0($sp)
    li         $a1,25
    daddiu     $a0,$a0,2304
    jal        mutex_lock
    sd         $a0,16($sp)
    li         $a1,2552
    jal        unmaputokv
    ld         $a0,1080($s4)
    li         $a2,273
    li         $a1,2552
    jal        unuseracc
    ld         $a0,1064($s4)
    cache      0x14,0($sp)
    sd         $zero,1080($s4)
    jal        mutex_unlock
    ld         $a0,16($sp)
.L00002980:
    ld         $a0,1104($s4)
    beqz       $a0, .L000029a4
    nop
    jal        unmaputokv
    lw         $a1,1112($s4)
    lw         $a1,1112($s4)
    li         $a2,273
    jal        unuseracc
    ld         $a0,1088($s4)
.L000029a4:
    cache      0x14,0($sp)
    li         $a1,1
    b          .L00002884
    sw         $a1,1120($s4)
.L000029b4:
    sd         $s3,80($sp)
    ld         $s3,24($sp)
    lh         $s3,2($s3)
    ld         $s5,-30664($gp)
    dsll       $s3,$s3,0x4
    li         $a1,25
    sd         $ra,64($sp)
    daddu      $s3,$s3,$s5
    jal        psema
    move       $a0,$s3
    ld         $at,24($sp)
    ld         $at,56($at)
    beqz       $at, .L00002a08
    sd         $s4,56($sp)
.L000029ec:
    move       $a0,$s3
    jal        vsema
    ld         $s4,56($sp)
    sd         $s0,40($sp)
    ld         $ra,64($sp)
    b          .L00002840
    ld         $s3,80($sp)
.L00002a08:
    ld         $s4,24($sp)
    ld         $s4,112($s4)
    move       $a1,$zero
    jal        MgrasDestroyDMA
    move       $a0,$s4
    lw         $at,1120($s4)
    bnez       $at, .L000029ec
    nop
    ld         $v0,1080($s4)
    beqz       $v0, .L00002a8c
    nop
    ld         $a1,24($sp)
    ld         $a1,64($a1)
    ld         $v1,0($a1)
    ld         $v1,8($v1)
    beq        $v1, $a1, .L00002b10
    nop
.L00002a4c:
    ld         $a0,0($sp)
    li         $a1,25
    daddiu     $a0,$a0,2304
    jal        mutex_lock
    sd         $a0,16($sp)
    li         $a1,2552
    jal        unmaputokv
    ld         $a0,1080($s4)
    li         $a2,273
    li         $a1,2552
    jal        unuseracc
    ld         $a0,1064($s4)
    cache      0x14,0($sp)
    sd         $zero,1080($s4)
    jal        mutex_unlock
    ld         $a0,16($sp)
.L00002a8c:
    ld         $a0,1104($s4)
    beqz       $a0, .L00002ab0
    nop
    jal        unmaputokv
    lw         $a1,1112($s4)
    lw         $a1,1112($s4)
    li         $a2,273
    jal        unuseracc
    ld         $a0,1088($s4)
.L00002ab0:
    cache      0x14,0($sp)
    li         $a1,1
    b          .L000029ec
    sw         $a1,1120($s4)
.L00002ac0:
    lw         $a4,0($gp)
    ld         $a0,0($sp)
    daddiu     $a3,$gp,0
    li         $a1,25
.L00002ad0:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L00002ad0
    nop
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,8($sp)
    cache      0x14,0($sp)
    ld         $a1,0($sp)
    ld         $a0,8($sp)
    jal        mutex_unlock
    sd         $zero,224($a1)
    b          .L00002940
    nop
.L00002b10:
    lw         $a4,0($gp)
    ld         $a0,0($sp)
    daddiu     $a3,$gp,0
    li         $a1,25
.L00002b20:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L00002b20
    nop
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,8($sp)
    cache      0x14,0($sp)
    ld         $a1,0($sp)
    ld         $a0,8($sp)
    jal        mutex_unlock
    sd         $zero,224($a1)
    b          .L00002a4c
    nop

glabel MgrasCreateDDRN
    daddiu     $sp,$sp,-96
    sd         $s1,48($sp)
    sd         $s4,40($sp)
    sd         $s0,24($sp)
    sd         $ra,0($sp)
    move       $s0,$a0
    sd         $a1,32($sp)
    jal        kern_malloc
    li         $a0,1144
    move       $s4,$v0
    move       $s1,$v0
    bnez       $v0, .L00002bac
    ld         $ra,0($sp)
    ld         $s1,48($sp)
    ld         $s0,24($sp)
    li         $v0,-1
    ld         $s4,40($sp)
.L00002ba4:
    jr         $ra
    daddiu     $sp,$sp,96
.L00002bac:
    cache      0x14,0($sp)
    sd         $s3,72($sp)
    lw         $at,1692($s0)
    sd         $s5,56($sp)
    li         $a1,1144
    move       $a0,$s4
    addiu      $at,$at,1
    sw         $at,1692($s0)
    addiu      $at,$at,-1
    jal        bzero
    sd         $at,8($sp)
    cache      0x14,0($sp)
    lw         $v1,56($s4)
    li         $a3,-1
    lui        $a2,0x4000
    sw         $a3,52($s4)
    or         $v1,$v1,$a2
    lui        $a2,0x8000
    or         $v1,$v1,$a2
    sw         $v1,56($s4)
    lw         $at,472($s0)
    sw         $at,32($s4)
    lw         $s5,476($s0)
    sw         $s5,36($s4)
    lw         $s3,484($s0)
    sw         $s3,44($s4)
    ld         $a2,32($sp)
    lw         $a3,480($s0)
    sd         $a2,16($s4)
    sw         $a3,40($s4)
    ld         $v1,200($s0)
    lw         $at,1640($s0)
    lbu        $v1,43($v1)
    mult       $at,$v1
    mflo       $s5
    sll        $s5,$s5,0x2
    daddiu     $s5,$s5,16383
    dsrl       $s5,$s5,0xe
    sll        $s5,$s5,0x0
    sw         $s5,636($s4)
    beqz       $s5, .L00002dcc
    move       $s3,$s5
    move       $a0,$s5
    move       $a2,$zero
    lui        $a1,0x8
    sd         $s2,64($sp)
    jal        kvpalloc
    ori        $a1,$a1,0x90
    move       $s4,$v0
    beqz       $v0, .L00002d84
    move       $s2,$v0
    cache      0x14,0($sp)
    sd         $s4,624($s1)
    ld         $a0,1712($s0)
    beqz       $a0, .L00002e50
    nop
    sll        $a1,$s5,0x2
    jal        malloc
    ld         $s4,40($sp)
    beqz       $v0, .L00002e00
    move       $s5,$v0
    cache      0x14,0($sp)
    sll        $at,$s5,0xc
    sw         $at,632($s1)
    ld         $s4,1696($s0)
    dsll       $s5,$s5,0x2
    daddu      $s4,$s4,$s5
    beqz       $s3, .L00002d00
    ld         $s5,56($sp)
    ld         $s5,56($sp)
.L00002cc4:
    daddiu     $s4,$s4,16
    addiu      $s3,$s3,-1
    jal        kvtophyspnum
    move       $a0,$s2
    cache      0x14,0($sp)
    sll        $v0,$v0,0x2
    sw         $v0,-16($s4)
    addiu      $a2,$v0,1
    sw         $a2,-12($s4)
    daddiu     $s2,$s2,16384
    addiu      $v1,$v0,2
    sw         $v1,-8($s4)
    addiu      $v0,$v0,3
    bnez       $s3, .L00002cc4
    sw         $v0,-4($s4)
.L00002d00:
    cache      0x14,0($sp)
    daddiu     $a0,$s0,1976
    sd         $a0,16($sp)
    ld         $s2,64($sp)
    ld         $s4,40($sp)
    lw         $a3,1724($s0)
    li         $a1,25
    ld         $s3,72($sp)
    addiu      $a3,$a3,1
    jal        mutex_lock
    sw         $a3,1724($s0)
    cache      0x14,0($sp)
    ld         $a4,1992($s0)
    ld         $a0,16($sp)
    ld         $a5,8($a4)
    sd         $a5,8($s1)
    sd         $s1,8($a4)
    sd         $a4,0($s1)
    jal        mutex_unlock
    sd         $s1,1992($s0)
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    daddiu     $a0,$s1,1040
    jal        init_sema
    ld         $s0,24($sp)
    cache      0x14,0($sp)
    ld         $ra,32($sp)
    sd         $s1,112($ra)
    ld         $s1,48($sp)
    move       $v0,$zero
    b          .L00002ba4
    ld         $ra,0($sp)
.L00002d84:
    ld         $s5,56($sp)
    ld         $s2,64($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    ld         $s4,40($sp)
    ld         $s3,72($sp)
    jal        cmn_err
    daddiu     $a1,$a1,712
    jal        kern_free
    move       $a0,$s1
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    ld         $s1,48($sp)
    ld         $a2,8($sp)
    sw         $a2,1692($s0)
    li         $v0,-1
    b          .L00002ba4
    ld         $s0,24($sp)
.L00002dcc:
    ld         $s5,56($sp)
    ld         $s1,48($sp)
    move       $a0,$s4
    jal        kern_free
    ld         $s3,72($sp)
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    ld         $s4,40($sp)
    ld         $a3,8($sp)
    sw         $a3,1692($s0)
    li         $v0,-1
    b          .L00002ba4
    ld         $s0,24($sp)
.L00002e00:
    ld         $s5,56($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    ld         $s2,64($sp)
    ld         $s3,72($sp)
    jal        cmn_err
    daddiu     $a1,$a1,768
    lw         $a1,636($s1)
    jal        kvpfree
    ld         $a0,624($s1)
    jal        kern_free
    move       $a0,$s1
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    ld         $s1,48($sp)
    ld         $a2,8($sp)
    sw         $a2,1692($s0)
    li         $v0,-1
    b          .L00002ba4
    ld         $s0,24($sp)
.L00002e50:
    ld         $s5,56($sp)
    ld         $s2,64($sp)
    ld         $s4,40($sp)
    move       $a0,$s1
    jal        kern_free
    ld         $s3,72($sp)
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    ld         $s1,48($sp)
    ld         $a3,8($sp)
    sw         $a3,1692($s0)
    li         $v0,-1
    b          .L00002ba4
    ld         $s0,24($sp)

glabel MgrasSetTgvRgn
    daddiu     $sp,$sp,-48
    ld         $at,112($a0)
    sd         $at,0($sp)
    ld         $at,1104($at)
    li         $v0,14
    beqz       $at, .L00002eac
    sd         $a1,8($sp)
.L00002ea4:
    jr         $ra
    daddiu     $sp,$sp,48
.L00002eac:
    ld         $a0,8($sp)
    sd         $ra,16($sp)
    li         $a2,273
    lw         $a1,8($a0)
    move       $a3,$zero
    jal        useracc
    ld         $a0,0($a0)
    move       $a3,$v0
    beqz       $v0, .L00002edc
    ld         $ra,16($sp)
    b          .L00002ea4
    move       $v0,$a3
.L00002edc:
    cache      0x14,0($sp)
    ld         $a0,8($sp)
    ld         $a2,0($sp)
    ld         $a1,0($a0)
    sd         $a1,1088($a2)
    lw         $a1,8($a0)
    li         $a2,44
    jal        maputokv
    ld         $a0,0($a0)
    cache      0x14,0($sp)
    ld         $ra,0($sp)
    sd         $v0,1096($ra)
    move       $a3,$v0
    bnez       $v0, .L00002f20
    ld         $ra,16($sp)
    b          .L00002ea4
    li         $v0,-1
.L00002f20:
    cache      0x14,0($sp)
    ld         $v0,0($sp)
    ld         $at,8($sp)
    sd         $a3,1104($v0)
    lw         $at,8($at)
    sw         $at,1112($v0)
    b          .L00002ea4
    move       $v0,$zero

glabel MgrasDestroyDDRN
    daddiu     $sp,$sp,-128
    sd         $s1,24($sp)
    ld         $s1,112($a2)
    sd         $s0,32($sp)
    move       $v0,$a1
    sd         $s7,40($sp)
    move       $s0,$a0
    beqz       $s1, .L000031e4
    move       $s7,$a2
    ld         $at,200($s0)
    lw         $at,68($at)
    sd         $ra,72($sp)
    beqz       $at, .L000031f8
    sd         $v0,16($sp)
.L00002f78:
    li         $a1,25
    daddiu     $a0,$s0,1976
    jal        mutex_lock
    sd         $a0,8($sp)
    cache      0x14,0($sp)
    sd         $s6,80($sp)
    ld         $a1,0($s1)
    ld         $a0,8($s1)
    sd         $a0,8($a1)
    ld         $a0,8($sp)
    ld         $v1,8($s1)
    ld         $v0,0($s1)
    jal        mutex_unlock
    sd         $v0,0($v1)
    lw         $a1,52($s1)
    li         $s6,-1
    beq        $a1, $s6, .L00002fc8
    nop
    jal        MgrasGlContextFree
    move       $a0,$s0
.L00002fc8:
    move       $a0,$s0
    jal        MgrasUnSchedRetraceEvent
    move       $a1,$s7
    move       $a0,$s0
    move       $a1,$s7
    jal        MgrasUnSchedSwapTask
    li         $a2,-17
    move       $a0,$s1
    jal        MgrasDestroyDMA
    li         $a1,1
    ld         $a4,64($s7)
    ld         $a3,0($a4)
    ld         $a3,8($a3)
    beq        $a3, $a4, .L00003278
    nop
.L00003004:
    lw         $a4,1120($s1)
    beqz       $a4, .L00003220
    nop
.L00003010:
    jal        freesema
    daddiu     $a0,$s1,1040
    sd         $s4,64($sp)
    sd         $s2,56($sp)
    ld         $a0,16($sp)
    jal        MgrasUnshare
    move       $a1,$s7
    ld         $t8,200($s0)
    lw         $s4,1640($s0)
    lbu        $t8,43($t8)
    mult       $s4,$t8
    lw         $s4,632($s1)
    mflo       $s2
    sll        $s2,$s2,0x2
    sra        $s4,$s4,0xc
    daddiu     $s2,$s2,16383
    dsrl       $s2,$s2,0xe
    sll        $s2,$s2,0x0
    ld         $a0,624($s1)
    jal        kvpfree
    move       $a1,$s2
    cache      0x14,0($sp)
    sd         $zero,624($s1)
    sll        $a1,$s2,0x2
    move       $a2,$s4
    jal        mfree
    ld         $a0,1712($s0)
    ld         $v0,1696($s0)
    dsll       $v1,$s4,0x2
    beqz       $s2, .L000030b0
    daddu      $v0,$v0,$v1
.L0000308c:
    cache      0x14,0($sp)
    daddiu     $v0,$v0,16
    sw         $zero,-16($v0)
    sw         $zero,-12($v0)
    addiu      $s2,$s2,-1
    sw         $zero,-8($v0)
    bnez       $s2, .L0000308c
    sw         $zero,-4($v0)
    sd         $s5,48($sp)
.L000030b0:
    sd         $s5,48($sp)
    sd         $s3,88($sp)
    b          .L0000314c
    move       $s5,$zero
.L000030c0:
    ld         $s4,200($s0)
    lbu        $s4,43($s4)
    mult       $s4,$v0
    lw         $s4,320($s3)
    mflo       $s2
    sll        $s2,$s2,0x2
    sra        $s4,$s4,0xc
    daddiu     $s2,$s2,16383
    dsrl       $s2,$s2,0xe
    sll        $s2,$s2,0x0
    ld         $a0,312($s3)
    jal        kvpfree
    move       $a1,$s2
    cache      0x14,0($sp)
    sd         $zero,312($s3)
    sw         $zero,304($s3)
    sll        $a1,$s2,0x2
    move       $a2,$s4
    jal        mfree
    ld         $a0,1712($s0)
    ld         $v0,1696($s0)
    dsll       $v1,$s4,0x2
    beqz       $s2, .L00003140
    daddu      $v0,$v0,$v1
.L00003120:
    cache      0x14,0($sp)
    daddiu     $v0,$v0,16
    sw         $zero,-16($v0)
    sw         $zero,-12($v0)
    addiu      $s2,$s2,-1
    sw         $zero,-8($v0)
    bnez       $s2, .L00003120
    sw         $zero,-4($v0)
.L00003140:
    slti       $a3,$s5,8
    beqz       $a3, .L00003188
    nop
.L0000314c:
    dsll       $s3,$s5,0x2
    daddu      $s3,$s3,$s5
    dsll       $s3,$s3,0x3
    daddu      $s3,$s3,$s1
    lw         $v0,304($s3)
    beqz       $v0, .L00003140
    addiu      $s5,$s5,1
    lw         $at,308($s3)
    beq        $at, $s6, .L000030c0
    nop
    move       $a0,$s0
    jal        MgrasEramBufFree
    daddiu     $a1,$s3,304
    b          .L000030c0
    lw         $v0,304($s3)
.L00003188:
    cache      0x14,0($sp)
    lw         $v0,1724($s0)
    addiu      $v0,$v0,1
    sw         $v0,1724($s0)
    jal        kern_free
    ld         $a0,112($s7)
    ld         $s5,48($sp)
    ld         $s1,24($sp)
    ld         $s2,56($sp)
    ld         $s4,64($sp)
    ld         $ra,72($sp)
    ld         $s6,80($sp)
    ld         $s3,88($sp)
    cache      0x14,0($sp)
    sd         $zero,112($s7)
    lw         $v1,1692($s0)
    ld         $s7,40($sp)
    addiu      $v1,$v1,-1
    sw         $v1,1692($s0)
    move       $v0,$zero
    ld         $s0,32($sp)
.L000031dc:
    jr         $ra
    daddiu     $sp,$sp,128
.L000031e4:
    ld         $s7,40($sp)
    ld         $s1,24($sp)
    li         $v0,22
    b          .L000031dc
    ld         $s0,32($sp)
.L000031f8:
    ld         $a3,424($s0)
    sd         $ra,72($sp)
    bne        $a3, $s1, .L00002f78
    sd         $v0,16($sp)
    move       $a0,$s0
    daddiu     $a1,$s0,440
    jal        MgrasCtxsw
    move       $a2,$s1
    b          .L00002f78
    nop
.L00003220:
    ld         $a0,1080($s1)
    beqz       $a0, .L00003244
    nop
    jal        unmaputokv
    li         $a1,2552
    li         $a2,273
    li         $a1,2552
    jal        unuseracc
    ld         $a0,1064($s1)
.L00003244:
    ld         $a0,1104($s1)
    beqz       $a0, .L00003268
    nop
    jal        unmaputokv
    lw         $a1,1112($s1)
    lw         $a1,1112($s1)
    li         $a2,273
    jal        unuseracc
    ld         $a0,1088($s1)
.L00003268:
    cache      0x14,0($sp)
    li         $a4,1
    b          .L00003010
    sw         $a4,1120($s1)
.L00003278:
    li         $a1,25
    daddiu     $a0,$s0,2280
    jal        mutex_lock
    sd         $a0,0($sp)
    cache      0x14,0($sp)
    sd         $zero,224($s0)
    jal        mutex_unlock
    ld         $a0,0($sp)
    b          .L00003004
    nop

glabel compute_drb_pointers
    daddiu     $sp,$sp,-80
    sd         $s8,48($sp)
    sd         $ra,56($sp)
    ld         $a0,208($a0)
    jal        mgras_baseindex
    move       $s8,$a1
    ld         $a5,-30648($gp)
    dsll       $a4,$v0,0x3
    daddu      $a4,$a4,$a5
    ld         $a4,0($a4)
    li         $a1,9
    move       $a3,$zero
    ld         $ra,56($sp)
    daddiu     $a5,$sp,0
    daddiu     $a4,$a4,100
.L000032dc:
    cache      0x14,0($sp)
    addiu      $a1,$a1,-1
    daddu      $at,$a3,$a4
    lw         $at,0($at)
    daddu      $v1,$a3,$a5
    addiu      $a3,$a3,4
    bgtz       $a1, .L000032dc
    sw         $at,0($v1)
    lw         $a1,60($s8)
    sll        $v1,$a1,0x4
    sra        $v1,$v1,0x1c
    lw         $v0,4($sp)
    ld         $s8,48($sp)
    beqz       $v1, .L00003320
    sra        $a3,$a1,0x1c
.L00003318:
    jr         $ra
    daddiu     $sp,$sp,80
.L00003320:
    daddiu     $v0,$sp,0
    ld         $a4,-30616($gp)
    beqz       $a3, .L00003388
    sll        $at,$a1,0x8
    sra        $at,$at,0x1c
    addu       $a5,$a3,$at
    dsll       $a5,$a5,0x2
    lw         $v1,40($sp)
    daddu      $a5,$a5,$v0
    lw         $v0,8($a5)
    li         $a0,-1024
    slti       $at,$at,2
    and        $v1,$v1,$a0
    andi       $v0,$v0,0x3ff
    or         $v0,$v0,$v1
    beqz       $at, .L00003374
    and        $a4,$v0,$a4
    andi       $v0,$v0,0x3ff
    sll        $v0,$v0,0xa
    b          .L00003318
    or         $v0,$v0,$a4
.L00003374:
    lw         $v0,4($a5)
    andi       $v0,$v0,0x3ff
    sll        $v0,$v0,0xa
    b          .L00003318
    or         $v0,$v0,$a4
.L00003388:
    b          .L00003318
    lw         $v0,8($sp)

glabel MgrasValidateBanks
    ld         $v1,112($a0)
    daddiu     $sp,$sp,-80
    sd         $a0,8($sp)
    ld         $a4,64($a0)
    sd         $v1,40($sp)
    ld         $at,32($a4)
    sd         $at,24($sp)
    ld         $at,208($at)
    move       $v0,$a4
    beq        $a0, $a1, .L00003438
    sd         $at,32($sp)
    lw         $a1,-30712($gp)
    beqz       $a1, .L000033f0
    nop
    ld         $a2,8($sp)
    ld         $a2,120($a2)
    ld         $a0,-30704($gp)
    lh         $a2,18($a2)
    sd         $ra,48($sp)
    daddiu     $a0,$a0,992
    ld         $a1,72($v0)
    jal        printf
    xori       $a2,$a2,0x1
    ld         $ra,48($sp)
.L000033f0:
    cache      0x14,0($sp)
    ld         $v1,40($sp)
    lw         $a2,56($v1)
    lui        $at,0x400
    or         $a2,$a2,$at
    sw         $a2,56($v1)
    ld         $at,8($sp)
    ld         $a1,120($at)
    lh         $a1,18($a1)
    xori       $a1,$a1,0x1
    sw         $a1,116($v1)
    ld         $at,128($at)
    lh         $at,18($at)
    xori       $at,$at,0x1
    sw         $at,120($v1)
.L0000342c:
    move       $v0,$zero
.L00003430:
    jr         $ra
    daddiu     $sp,$sp,80
.L00003438:
    sd         $ra,48($sp)
    sd         $v0,16($sp)
    jal        RRM_CheckValidFault
    move       $a0,$a4
    bltz       $v0, .L0000350c
    nop
    ld         $a2,32($sp)
    lui        $a3,0x7
    daddu      $a2,$a2,$a3
    sd         $a2,0($sp)
    lw         $a2,4($a2)
    lui        $a3,0x1fc0
    ld         $a0,24($sp)
    and        $a2,$a2,$a3
    move       $a3,$zero
    srl        $a2,$a2,0x16
    ld         $a1,208($a0)
    jal        MgrasFlushHQ3
    addiu      $a2,$a2,-3
    bltz       $v0, .L00003524
    ld         $ra,48($sp)
    lw         $at,-30712($gp)
    beqz       $at, .L000034c0
    nop
    ld         $a2,8($sp)
    ld         $a1,16($sp)
    ld         $a2,120($a2)
    ld         $a0,-30704($gp)
    lh         $a2,18($a2)
    daddiu     $a0,$a0,936
    ld         $a1,72($a1)
    jal        printf
    xori       $a2,$a2,0x1
    ld         $ra,48($sp)
.L000034c0:
    cache      0x14,0($sp)
    ld         $a1,8($sp)
    ld         $a2,120($a1)
    lh         $a2,18($a2)
    li         $at,4865
    dsll32     $at,$at,0x3
    xori       $a2,$a2,0x1
    ld         $v1,0($sp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    or         $a2,$a2,$at
    sd         $a2,128($v1)
    ld         $a1,128($a1)
    lh         $a1,18($a1)
    xori       $a1,$a1,0x1
    sw         $a1,132($v1)
    lui        $at,0x10
    b          .L0000342c
    sw         $at,8($v1)
.L0000350c:
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,816
    li         $v0,-1
    b          .L00003430
    ld         $ra,48($sp)
.L00003524:
    ld         $a0,-30704($gp)
    jal        printf
    daddiu     $a0,$a0,888
    li         $v0,-1
    b          .L00003430
    ld         $ra,48($sp)

glabel MgrasValidateClip
    daddiu     $sp,$sp,-224
    sd         $s3,88($sp)
    ld         $v0,128($a1)
    sd         $s6,136($sp)
    sd         $s0,144($sp)
    ld         $at,120($a1)
    lw         $v1,136($a1)
    lw         $at,8($at)
    sd         $s1,112($sp)
    move       $s0,$a1
    move       $s6,$a2
    sd         $s2,104($sp)
    move       $s1,$a3
    move       $a3,$zero
    ld         $s3,112($a1)
    bne        $at, $v1, .L00003590
    daddiu     $s2,$v0,96
    lw         $a4,140($s0)
    lw         $v1,8($v0)
    beq        $v1, $a4, .L0000380c
    nop
.L00003590:
    sd         $s4,184($sp)
    sd         $s7,160($sp)
    lw         $t1,20($s1)
    lw         $a1,24($s1)
    lw         $a5,20($s2)
    sd         $s5,176($sp)
    ld         $s5,32($a0)
    lw         $a4,12($s2)
    li         $v1,4
    ld         $t0,200($s5)
    li         $s7,1
    move       $s4,$zero
    lw         $t2,12($s1)
    slti       $at,$a1,5
    addu       $a4,$a4,$a5
    lhu        $a7,34($t0)
    ld         $a6,32($s1)
    li         $a5,2
    addu       $a2,$t2,$t1
    subu       $a2,$a7,$a2
    subu       $a4,$a7,$a4
    sd         $a4,120($sp)
    ld         $v0,208($s5)
    blez       $a1, .L0000361c
    li         $a4,3
    beqz       $at, .L0000361c
    nop
    beq        $a1, $v1, .L00003978
    li         $at,1
    beq        $a1, $a4, .L000039bc
    nop
    beq        $a1, $a5, .L00003a00
    nop
    beq        $a1, $at, .L00003a44
    nop
.L0000361c:
    beqz       $a1, .L00003a8c
    nop
.L00003624:
    sd         $ra,168($sp)
    sd         $s8,152($sp)
    sd         $v0,56($sp)
    sll        $v1,$a2,0x10
    sd         $v1,128($sp)
    lw         $a6,8($s1)
.L0000363c:
    andi       $ra,$a2,0x3
    sll        $ra,$ra,0x2
    andi       $s8,$a6,0x3
    or         $ra,$ra,$a3
    move       $a0,$s5
    or         $s8,$s8,$ra
    jal        compute_drb_pointers
    move       $a1,$s1
    sd         $s8,64($sp)
    sd         $v0,96($sp)
    move       $a0,$s5
    sw         $v0,32($sp)
    jal        compute_drb_pointers
    move       $a1,$s2
    sw         $v0,44($sp)
    lw         $s8,8($s1)
    ld         $s1,112($sp)
    lw         $a0,8($s2)
    ld         $a4,120($sp)
    ld         $a1,1080($s3)
    ld         $ra,128($sp)
    sll        $a4,$a4,0x10
    andi       $a0,$a0,0xffff
    ld         $s2,104($sp)
    andi       $s8,$s8,0xffff
    or         $a0,$a0,$a4
    or         $s8,$s8,$ra
    beqz       $a1, .L0000374c
    ld         $ra,168($sp)
    cache      0x14,0($sp)
    ld         $v1,64($sp)
    sw         $s8,1108($a1)
    ld         $s1,1080($s3)
    sll        $a5,$s7,0x4
    or         $a5,$a5,$s4
    sw         $a5,1340($s1)
    ld         $a4,1080($s3)
    sw         $v1,1516($a4)
    ld         $at,1080($s3)
    lw         $s2,12($sp)
    sw         $s2,1332($at)
    ld         $s1,1080($s3)
    lw         $a5,28($sp)
    sw         $a5,1336($s1)
    ld         $a4,1080($s3)
    lw         $v1,8($sp)
    sw         $v1,1324($a4)
    ld         $at,1080($s3)
    lw         $s2,24($sp)
    sw         $s2,1328($at)
    ld         $s1,1080($s3)
    lw         $a5,4($sp)
    sw         $a5,1316($s1)
    ld         $a4,1080($s3)
    lw         $v1,20($sp)
    sw         $v1,1320($a4)
    ld         $at,1080($s3)
    lw         $s2,0($sp)
    sw         $s2,1308($at)
    lw         $a5,16($sp)
    daddiu     $a4,$sp,32
    ld         $s1,1080($s3)
    lw         $a4,0($a4)
    sw         $a5,1312($s1)
    ld         $s2,104($sp)
    ld         $a5,1080($s3)
    ld         $s1,112($sp)
    sw         $a4,1460($a5)
.L0000374c:
    lw         $at,0($sp)
    ld         $a4,64($sp)
    beq        $s0, $s6, .L0000385c
    sd         $v0,80($sp)
    cache      0x14,0($sp)
    sw         $a0,108($s3)
    sw         $s8,60($s3)
    sw         $at,96($s3)
    lw         $at,28($sp)
    lw         $a5,4($sp)
    sw         $a5,88($s3)
    sw         $at,76($s3)
    sll        $a5,$s7,0x4
    or         $a5,$a5,$s4
    sw         $a5,64($s3)
    lw         $s5,20($sp)
    sw         $a4,68($s3)
    lw         $a4,24($sp)
    sw         $a4,84($s3)
    sw         $s5,92($s3)
    lw         $s5,12($sp)
    sw         $s5,72($s3)
    lw         $s5,56($s3)
    daddiu     $a4,$sp,44
    lui        $at,0x2000
    lw         $a4,0($a4)
    or         $s5,$s5,$at
    sw         $s5,56($s3)
    ld         $s5,176($sp)
    lw         $v1,16($sp)
    sw         $v1,100($s3)
    lw         $v1,8($sp)
    sw         $v1,80($s3)
    sw         $a4,112($s3)
    daddiu     $v1,$sp,32
    lw         $v1,0($v1)
    sw         $v1,104($s3)
    ld         $s3,88($sp)
.L000037e4:
    cache      0x14,0($sp)
    ld         $s8,152($sp)
    ld         $s7,160($sp)
    ld         $s4,120($s0)
    ld         $a5,128($s0)
    lw         $s4,8($s4)
    sw         $s4,136($s0)
    ld         $s4,184($sp)
    lw         $a5,8($a5)
    sw         $a5,140($s0)
.L0000380c:
    ld         $v1,64($s0)
    ld         $at,0($v1)
    ld         $at,8($at)
    ld         $s1,112($sp)
    ld         $s3,88($sp)
    beq        $at, $v1, .L00003848
    ld         $s2,104($sp)
    move       $a0,$s0
    sd         $ra,168($sp)
    jal        MgrasValidateBanks
    move       $a1,$s6
    ld         $s0,144($sp)
    ld         $ra,168($sp)
    bltz       $v0, .L00003b30
    ld         $s6,136($sp)
.L00003848:
    ld         $s0,144($sp)
    move       $v0,$zero
    ld         $s6,136($sp)
.L00003854:
    jr         $ra
    daddiu     $sp,$sp,224
.L0000385c:
    sd         $a0,72($sp)
    ld         $a0,16($s3)
    jal        RRM_CheckValidFault
    ld         $a0,64($a0)
    bltz       $v0, .L00003b98
    ld         $s3,88($sp)
    ld         $a2,56($sp)
    lui        $a3,0x7
    daddu      $a2,$a2,$a3
    sd         $a2,48($sp)
    lw         $a2,4($a2)
    lui        $a3,0x1fc0
    move       $a0,$s5
    and        $a2,$a2,$a3
    move       $a3,$zero
    srl        $a2,$a2,0x16
    ld         $a1,208($s5)
    jal        MgrasFlushHQ3
    addiu      $a2,$a2,-16
    ld         $ra,168($sp)
    bltz       $v0, .L00003bc8
    ld         $s5,176($sp)
    cache      0x14,0($sp)
    lwu        $t2,16($sp)
    ld         $a6,80($sp)
    lw         $t1,0($sp)
    lwu        $at,20($sp)
    dsll32     $a6,$a6,0x0
    lwu        $a0,24($sp)
    lw         $t0,4($sp)
    sll        $a4,$s7,0x4
    lwu        $a2,28($sp)
    dsll32     $a7,$s8,0x0
    li         $a5,14607
    lw         $v1,8($sp)
    dsll32     $a5,$a5,0x2
    ld         $a3,64($sp)
    dsrl32     $a7,$a7,0x0
    or         $a4,$a4,$s4
    or         $a7,$a7,$a5
    ld         $a5,48($sp)
    lw         $a1,12($sp)
    dsll32     $a4,$a4,0x0
    dsll32     $a3,$a3,0x0
    sd         $a7,128($a5)
    ld         $a7,72($sp)
    dsrl32     $a3,$a3,0x0
    dsll32     $a1,$a1,0x0
    or         $a3,$a3,$a4
    sd         $a3,128($a5)
    dsll32     $v1,$v1,0x0
    or         $a1,$a1,$a2
    sd         $a1,128($a5)
    dsll32     $t0,$t0,0x0
    or         $v1,$v1,$a0
    sd         $v1,128($a5)
    dsrl32     $a6,$a6,0x0
    or         $t0,$t0,$at
    sd         $t0,128($a5)
    dsll32     $t1,$t1,0x0
    ld         $t0,96($sp)
    or         $t1,$t1,$t2
    dsll32     $a7,$a7,0x0
    sd         $t1,128($a5)
    dsll32     $t0,$t0,0x0
    sd         $t0,128($a5)
    or         $a6,$a6,$a7
    sd         $a6,128($a5)
    lui        $a4,0x10
    b          .L000037e4
    sw         $a4,8($a5)
.L00003978:
    lw         $a4,56($a6)
    lw         $a5,48($a6)
    lw         $v1,52($a6)
    lw         $at,60($a6)
    addu       $a4,$a4,$a5
    addiu      $a4,$a4,-1
    addu       $v1,$v1,$at
    sll        $a5,$a5,0x10
    subu       $v1,$a7,$v1
    or         $a4,$a4,$a5
    addu       $at,$at,$v1
    sw         $a4,12($sp)
    addiu      $at,$at,-1
    sll        $v1,$v1,0x10
    li         $s4,8
    or         $at,$at,$v1
    sw         $at,28($sp)
.L000039bc:
    lw         $v1,40($a6)
    lw         $a4,32($a6)
    lw         $at,36($a6)
    lw         $a5,44($a6)
    addu       $v1,$v1,$a4
    addiu      $v1,$v1,-1
    addu       $at,$at,$a5
    sll        $a4,$a4,0x10
    subu       $at,$a7,$at
    or         $v1,$v1,$a4
    addu       $a5,$a5,$at
    sw         $v1,8($sp)
    addiu      $a5,$a5,-1
    sll        $at,$at,0x10
    ori        $s4,$s4,0x4
    or         $a5,$a5,$at
    sw         $a5,24($sp)
.L00003a00:
    lw         $at,24($a6)
    lw         $v1,16($a6)
    lw         $a5,20($a6)
    lw         $a4,28($a6)
    addu       $at,$at,$v1
    addiu      $at,$at,-1
    addu       $a5,$a5,$a4
    sll        $v1,$v1,0x10
    subu       $a5,$a7,$a5
    or         $at,$at,$v1
    addu       $a4,$a4,$a5
    sw         $at,4($sp)
    addiu      $a4,$a4,-1
    sll        $a5,$a5,0x10
    ori        $s4,$s4,0x2
    or         $a4,$a4,$a5
    sw         $a4,20($sp)
.L00003a44:
    lw         $at,0($a6)
    lw         $a5,8($a6)
    lw         $v1,12($a6)
    lw         $a4,4($a6)
    ori        $s4,$s4,0x1
    addu       $a5,$a5,$at
    sll        $at,$at,0x10
    addu       $a4,$a4,$v1
    addiu      $a5,$a5,-1
    subu       $a4,$a7,$a4
    or         $a5,$a5,$at
    addu       $v1,$v1,$a4
    sw         $a5,0($sp)
    sll        $a4,$a4,0x10
    addiu      $v1,$v1,-1
    or         $v1,$v1,$a4
    bnez       $a1, .L00003624
    sw         $v1,16($sp)
.L00003a8c:
    lw         $a1,16($s1)
    lw         $a6,8($s1)
    beqz       $a1, .L00003b60
    lhu        $a0,32($t0)
    lw         $at,44($s1)
    beqz       $at, .L00003ab8
    nop
    lw         $a4,40($s1)
    li         $a3,1
    addiu      $a4,$a4,4
    sllv       $a3,$a3,$a4
.L00003ab8:
    bltz       $a6, .L00003b50
    ori        $s4,$s4,0x1
    sll        $t3,$a6,0x10
.L00003ac4:
    sll        $a5,$a2,0x10
    bltz       $t2, .L00003b58
    sd         $a5,128($sp)
    ld         $t0,128($sp)
.L00003ad4:
    addu       $t2,$a1,$a6
    addiu      $t2,$t2,-1
    slt        $at,$t2,$a0
    bnez       $at, .L00003af8
    nop
    addiu      $at,$a0,-1
    or         $at,$at,$t3
    b          .L00003b00
    sw         $at,0($sp)
.L00003af8:
    or         $v1,$t2,$t3
    sw         $v1,0($sp)
.L00003b00:
    addu       $a0,$t1,$a2
    addiu      $a0,$a0,-1
    slt        $a4,$a0,$a7
    bnez       $a4, .L00003b38
    nop
    sd         $ra,168($sp)
    sd         $s8,152($sp)
    sd         $v0,56($sp)
    addiu      $a4,$a7,-1
    or         $a4,$a4,$t0
    b          .L0000363c
    sw         $a4,16($sp)
.L00003b30:
    b          .L00003854
    li         $v0,-1
.L00003b38:
    sd         $ra,168($sp)
    sd         $s8,152($sp)
    sd         $v0,56($sp)
    or         $a5,$a0,$t0
    b          .L0000363c
    sw         $a5,16($sp)
.L00003b50:
    b          .L00003ac4
    move       $t3,$zero
.L00003b58:
    b          .L00003ad4
    move       $t0,$zero
.L00003b60:
    sd         $ra,168($sp)
    sd         $s8,152($sp)
    sd         $v0,56($sp)
    addiu      $v1,$a7,-1
    sw         $v1,20($sp)
    addiu      $at,$a0,-1
    sw         $at,4($sp)
    sll        $a4,$a2,0x10
    sd         $a4,128($sp)
    ori        $s4,$s4,0x3
    sw         $v1,16($sp)
    li         $s7,2
    b          .L0000363c
    sw         $at,0($sp)
.L00003b98:
    ld         $s8,152($sp)
    ld         $s7,160($sp)
    ld         $s0,144($sp)
    ld         $s5,176($sp)
    ld         $a0,-30704($gp)
    ld         $s6,136($sp)
    ld         $s4,184($sp)
    jal        printf
    daddiu     $a0,$a0,1040
    li         $v0,-1
    b          .L00003854
    ld         $ra,168($sp)
.L00003bc8:
    ld         $s8,152($sp)
    ld         $s7,160($sp)
    ld         $s0,144($sp)
    ld         $a0,-30704($gp)
    ld         $s6,136($sp)
    ld         $s4,184($sp)
    jal        printf
    daddiu     $a0,$a0,1112
    li         $v0,-1
    b          .L00003854
    ld         $ra,168($sp)

glabel MgrasSetNullClip
    cache      0x14,0($sp)
    sw         $zero,60($a0)
    li         $at,-1
    sw         $at,40($a0)
    sw         $zero,24($a0)
    sw         $zero,20($a0)
    sw         $zero,16($a0)
    sw         $zero,12($a0)
    li         $v0,1
    sw         $v0,52($a0)
    sw         $v0,48($a0)
    sw         $v0,44($a0)
    sw         $zero,8($a0)
    jr         $ra
    move       $v0,$zero

glabel MgrasMapGfx
    daddiu     $sp,$sp,-176
    sd         $s1,80($sp)
    ld         $s1,40($a0)
    sd         $s5,72($sp)
    sd         $s2,96($sp)
    lui        $a3,0x7fff
    ld         $v0,72($a0)
    ori        $a3,$a3,0xffff
    sd         $s6,88($sp)
    sd         $s7,64($sp)
    move       $s6,$a0
    move       $s2,$a1
    ld         $s5,32($a0)
    beqz       $v0, .L00003c8c
    move       $s7,$zero
    ld         $a0,112($v0)
    ld         $a0,1104($a0)
    beqz       $a0, .L00003c8c
    nop
    cache      0x14,0($sp)
    lw         $a2,0($a0)
    and        $a2,$a2,$a3
    sw         $a2,0($a0)
.L00003c8c:
    ld         $at,0($s6)
    ld         $at,8($at)
    bne        $at, $s6, .L00003cb8
    nop
    lui        $a2,0x2
    sw         $a2,4($sp)
    lui        $v1,0x6
    sd         $s3,120($sp)
    sw         $v1,0($sp)
    b          .L00003d00
    li         $s3,1
.L00003cb8:
    ld         $a3,72($s6)
    li         $a2,512
    lui        $v1,0x7
    lui        $at,0x7
    sd         $s3,120($sp)
    beqz       $a3, .L00003cf0
    ori        $at,$at,0xc000
    li         $a3,16384
    sw         $a3,12($sp)
    sw         $a2,4($sp)
    sw         $v1,0($sp)
    li         $s3,2
    b          .L00003d00
    sw         $at,8($sp)
.L00003cf0:
    lui        $s3,0x10
    sw         $s3,4($sp)
    sw         $zero,0($sp)
    li         $s3,1
.L00003d00:
    beqz       $s2, .L00003e2c
    nop
    sd         $s0,104($sp)
    sd         $s4,112($sp)
    blez       $s3, .L00003e4c
    move       $s0,$zero
    daddiu     $s4,$sp,0
    b          .L00003d2c
    sd         $ra,128($sp)
.L00003d24:
    beqz       $at, .L00003d78
    nop
.L00003d2c:
    jal        ddv_getaddr
    move       $a0,$s1
    dsll       $a1,$s0,0x3
    daddu      $a1,$a1,$s4
    lw         $a0,0($a1)
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    daddu      $a0,$a0,$v0
    sltu       $v0,$s2,$a0
    addiu      $s0,$s0,1
    bnez       $v0, .L00003d24
    slt        $at,$s0,$s3
    lwu        $a2,4($a1)
    daddu      $a2,$a2,$a0
    sltu       $a2,$s2,$a2
    beqz       $a2, .L00003d24
    nop
    b          .L00003d24
    li         $s7,1
.L00003d78:
    ld         $s0,104($sp)
    beqz       $s7, .L00003e58
    ld         $ra,128($sp)
.L00003d84:
    blez       $s3, .L00003de8
    move       $s0,$zero
    sd         $ra,128($sp)
.L00003d90:
    jal        ddv_getaddr
    move       $a0,$s1
    dsll       $a1,$s0,0x3
    daddu      $a1,$a1,$s4
    lwu        $a3,4($a1)
    li         $a4,16
    lw         $a1,0($a1)
    move       $a0,$s1
    move       $a5,$s2
    addiu      $s0,$s0,1
    ld         $a2,208($s5)
    dsll32     $a1,$a1,0x0
    daddiu     $a3,$a3,16383
    dsrl32     $a1,$a1,0x0
    dsrl       $a3,$a3,0xe
    daddu      $a2,$a2,$a1
    jal        v_mapkvsegment
    daddu      $a1,$a1,$v0
    slt        $a2,$s0,$s3
    bnez       $a2, .L00003d90
    nop
    ld         $ra,128($sp)
.L00003de8:
    cache      0x14,0($sp)
    li         $s0,1
    sw         $s0,56($s6)
    ld         $s0,104($sp)
    ld         $s4,112($sp)
    lw         $a3,48($s6)
    ld         $s3,120($sp)
    move       $v0,$zero
    ori        $a3,$a3,0x1
    sw         $a3,48($s6)
.L00003e10:
    ld         $s1,80($sp)
    ld         $s2,96($sp)
    ld         $s5,72($sp)
    ld         $s6,88($sp)
    ld         $s7,64($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L00003e2c:
    ld         $v0,32($s6)
    ld         $at,72($v0)
    bne        $at, $s6, .L00003e68
    sd         $ra,128($sp)
.L00003e3c:
    sd         $s4,112($sp)
    sd         $s0,104($sp)
    b          .L00003d84
    daddiu     $s4,$sp,0
.L00003e4c:
    daddiu     $s4,$sp,0
    bnez       $s7, .L00003d84
    ld         $s0,104($sp)
.L00003e58:
    ld         $s4,112($sp)
    li         $v0,-1
    b          .L00003e10
    ld         $s3,120($sp)
.L00003e68:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $a2,32($s6)
    sd         $s6,72($a2)
    ld         $v1,32($s6)
    lw         $v1,104($v1)
    beqz       $v1, .L00003e3c
    ld         $ra,128($sp)
.L00003e90:
    jal        us_delay
    li         $a0,2
    ld         $a3,32($s6)
    lw         $a3,104($a3)
    bnez       $a3, .L00003e90
    nop
    sd         $s4,112($sp)
    b          .L00003e3c
    ld         $ra,128($sp)

glabel MgrasUnMapGfx
    ld         $at,32($a0)
    lw         $v0,48($a0)
    li         $a1,-2
    li         $a2,-2
    ld         $at,72($at)
    daddiu     $sp,$sp,-32
    and        $a2,$v0,$a2
    sd         $s0,0($sp)
    andi       $v1,$v0,0x1
    and        $a1,$v0,$a1
    bne        $at, $a0, .L00003ef8
    move       $s0,$a0
    beqz       $v1, .L00003ef8
    nop
    cache      0x14,0($sp)
    b          .L00003f00
    sw         $a1,48($s0)
.L00003ef8:
    cache      0x14,0($sp)
    sw         $a2,48($s0)
.L00003f00:
    ld         $at,40($s0)
    bnez       $at, .L00003f18
    move       $v0,$zero
    ld         $s0,0($sp)
.L00003f10:
    jr         $ra
    daddiu     $sp,$sp,32
.L00003f18:
    sd         $ra,8($sp)
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    lw         $v1,8($v0)
    andi       $v1,$v1,0x4
    beqz       $v1, .L00003f58
    nop
    jal        thread_issproc
    ld         $a0,0($v0)
    beqz       $v0, .L00003f58
    ld         $ra,8($sp)
    move       $v0,$zero
    b          .L00003f10
    ld         $s0,0($sp)
.L00003f58:
    li         $a2,-1
    move       $a1,$zero
    jal        ddv_invalphys_fal
    ld         $a0,40($s0)
    li         $a1,2
    beqz       $v0, .L00003f98
    ld         $ra,8($sp)
    beq        $v0, $a1, .L00003f90
    ld         $s0,0($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1152
    ld         $ra,8($sp)
.L00003f90:
    b          .L00003f10
    move       $v0,$zero
.L00003f98:
    cache      0x14,0($sp)
    sw         $zero,56($s0)
    jal        MgrasInvalTLB
    move       $a0,$s0
    ld         $ra,8($sp)
    b          .L00003f90
    ld         $s0,0($sp)

glabel MgrasInvalTLB
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        curthreadhandle
    sd         $a0,8($sp)
    jal        gthread_find
    move       $a0,$v0
    lw         $at,8($v0)
    andi       $at,$at,0x4
    beqz       $at, .L00003ff8
    nop
    jal        thread_issproc
    ld         $a0,0($v0)
    beqz       $v0, .L00003ff8
    ld         $ra,0($sp)
    move       $v0,$zero
.L00003ff0:
    jr         $ra
    daddiu     $sp,$sp,32
.L00003ff8:
    ld         $a0,8($sp)
    li         $a2,-1
    move       $a1,$zero
    jal        ddv_invaltlb
    ld         $a0,40($a0)
    cache      0x14,0($sp)
    ld         $a2,8($sp)
    lw         $a1,56($a2)
    move       $v0,$zero
    ld         $ra,0($sp)
    ori        $a1,$a1,0x1
    b          .L00003ff0
    sw         $a1,56($a2)

glabel MgrasPcxSwap
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-368
    sd         $a2,8($sp)
    sd         $zero,88($sp)
    sd         $zero,232($sp)
    sd         $zero,104($sp)
    sd         $zero,120($sp)
    sd         $zero,128($sp)
    sd         $zero,248($sp)
    sd         $zero,96($sp)
    sd         $zero,240($sp)
    sd         $zero,112($sp)
    sd         $zero,224($sp)
    sd         $zero,56($sp)
    sd         $zero,64($sp)
    sd         $zero,80($sp)
    sd         $zero,216($sp)
    sd         $zero,72($sp)
    sd         $zero,16($sp)
    sd         $zero,32($sp)
    lw         $v1,1968($a0)
    ld         $at,200($a0)
    ori        $v1,$v1,0x10
    sw         $v1,1968($a0)
    sd         $zero,24($sp)
    lw         $at,68($at)
    sd         $zero,48($sp)
    move       $v0,$a3
    sd         $s1,256($sp)
    sd         $zero,40($sp)
    beqz       $at, .L000040bc
    move       $s1,$a0
    li         $v0,-1
.L000040b0:
    ld         $s1,256($sp)
    jr         $ra
    daddiu     $sp,$sp,368
.L000040bc:
    li         $a5,1
    sw         $a5,-15528($zero)
    ld         $a4,8($sp)
    lhu        $a4,4($a4)
    andi       $a4,$a4,0x2
    beqz       $a4, .L00004108
    nop
    ld         $a0,8($sp)
    sd         $v0,272($sp)
    ld         $a3,120($a0)
    move       $a2,$zero
    sd         $ra,320($sp)
    move       $a1,$a0
    ld         $a0,64($a0)
    jal        MgrasValidateClip
    daddiu     $a3,$a3,96
    sd         $s3,280($sp)
    ld         $v0,272($sp)
    ld         $ra,320($sp)
.L00004108:
    daddiu     $a4,$s1,440
    sd         $a4,0($sp)
    sd         $s3,280($sp)
    ld         $a0,424($s1)
    ld         $s3,8($sp)
    sd         $zero,208($sp)
    bne        $a0, $a4, .L000042a0
    ld         $s3,112($s3)
    sd         $s5,304($sp)
    ld         $s5,0($sp)
    li         $at,1
    sd         $at,208($sp)
.L00004138:
    lw         $v1,1856($s1)
    beqz       $v1, .L00004200
    nop
    ld         $a4,0($sp)
    beq        $a4, $s5, .L000041ec
    sd         $ra,320($sp)
    lw         $a5,56($s3)
    lui        $at,0xfff
    ori        $at,$at,0xffff
    and        $a5,$a5,$at
    srl        $a5,$a5,0x1b
    beqz       $a5, .L000041cc
    nop
    cache      0x14,0($sp)
    li         $a0,22
    move       $v0,$zero
    lw         $v1,496($s1)
    daddiu     $a2,$s1,564
    lui        $a4,0x800
    daddiu     $a1,$s3,124
    or         $v1,$v1,$a4
    sw         $v1,496($s1)
.L00004190:
    cache      0x14,0($sp)
    addiu      $a0,$a0,-1
    daddu      $a5,$v0,$a1
    daddu      $at,$v0,$a2
    lw         $a5,0($a5)
    addiu      $v0,$v0,4
    bgtz       $a0, .L00004190
    sw         $a5,0($at)
    cache      0x14,0($sp)
    lw         $at,56($s3)
    lui        $v1,0x800
    sd         $ra,320($sp)
    nor        $v1,$v1,$zero
    and        $at,$at,$v1
    sw         $at,56($s3)
.L000041cc:
    move       $a0,$s1
    sd         $ra,320($sp)
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a2,$s5
    bltz       $v0, .L00004dec
    nop
    ld         $s5,0($sp)
.L000041ec:
    li         $a0,1
    sd         $a0,208($sp)
    jal        MgrasCcvUpdate
    move       $a0,$s1
    ld         $ra,320($sp)
.L00004200:
    lw         $a4,1796($s1)
    sd         $ra,320($sp)
    beqz       $a4, .L000043a0
    sd         $s2,312($sp)
    sd         $s0,288($sp)
    move       $s2,$zero
    li         $a1,25
    daddiu     $a0,$s1,1976
    jal        mutex_lock
    sd         $a0,144($sp)
    ld         $s0,1992($s1)
    daddiu     $v0,$s1,1992
    beq        $v0, $s0, .L0000427c
    nop
    sd         $s4,296($sp)
.L0000423c:
    move       $s4,$zero
    move       $a3,$zero
.L00004244:
    dsll       $a5,$s4,0x2
    daddu      $a5,$a5,$s4
    dsll       $a5,$a5,0x3
    addiu      $s4,$s4,1
    daddu      $a5,$a5,$s0
    slti       $at,$s4,8
    lw         $a5,304($a5)
    bnez       $at, .L00004244
    addu       $a3,$a5,$a3
    ld         $s0,0($s0)
    slt        $at,$s2,$a3
    bne        $v0, $s0, .L0000423c
    movn       $s2,$a3,$at
    ld         $s4,296($sp)
.L0000427c:
    ld         $a0,144($sp)
    jal        mutex_unlock
    ld         $s0,288($sp)
    lw         $v1,1688($s1)
    slt        $v1,$v1,$s2
    beqz       $v1, .L00004390
    nop
    b          .L00004594
    nop
.L000042a0:
    bnez       $v0, .L000042b4
    sd         $s5,304($sp)
    sd         $ra,320($sp)
    b          .L000042bc
    move       $s5,$a0
.L000042b4:
    sd         $ra,320($sp)
    ld         $s5,112($v0)
.L000042bc:
    li         $a1,25
    daddiu     $a0,$s1,2304
    jal        mutex_lock
    sd         $a0,200($sp)
    ld         $a4,1080($s5)
    beqz       $a4, .L00004304
    nop
    move       $a0,$s1
    li         $a3,1
    move       $a2,$zero
    jal        MgrasFlushHQ3
    ld         $a1,208($s1)
    bltz       $v0, .L00004500
    nop
    daddiu     $a1,$s3,52
    ld         $a2,1080($s5)
    jal        MgrasThrowManagerRssShadow
    daddiu     $a0,$s5,52
.L00004304:
    jal        mutex_unlock
    ld         $a0,200($sp)
    ld         $ra,320($sp)
    ld         $a7,208($s1)
    lui        $a6,0x7
    daddu      $a6,$a6,$a7
    lw         $a5,8($a6)
    lui        $a7,0x10
    and        $a5,$a5,$a7
    beqz       $a5, .L00004658
    lw         $v0,1968($s1)
    cache      0x14,0($sp)
    ori        $t0,$v0,0x1
    sw         $t0,1968($s1)
    sw         $a7,12($a6)
    move       $a0,$s1
    move       $a2,$zero
    move       $a3,$zero
    jal        MgrasFlushHQ3
    ld         $a1,208($s1)
    bgez       $v0, .L00004138
    ld         $ra,320($sp)
    ld         $a2,208($s1)
    lui        $a3,0x7
    ld         $a1,-30704($gp)
    daddu      $a2,$a2,$a3
    lw         $a2,4($a2)
    li         $a0,4
    daddiu     $a1,$a1,1264
    jal        cmn_err
    andi       $a2,$a2,0x7f
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    b          .L0000453c
    sd         $s0,288($sp)
.L00004390:
    cache      0x14,0($sp)
    sw         $zero,1796($s1)
    ld         $s2,312($sp)
    ld         $ra,320($sp)
.L000043a0:
    lw         $a4,1792($s1)
    beqz       $a4, .L00004668
    nop
    cache      0x14,0($sp)
    ld         $a0,1768($s1)
    dsll       $a5,$a0,0x2
    daddu      $a5,$a5,$a0
    ld         $a1,1784($s1)
    ld         $v0,1800($s1)
    dsll       $a5,$a5,0x1
    sltu       $a5,$a5,$a1
    dsll       $v0,$v0,0x2
    beqz       $a5, .L000043e8
    sd         $v0,1800($s1)
    cache      0x14,0($sp)
    ori        $v0,$v0,0x2
    b          .L0000440c
    sd         $v0,1800($s1)
.L000043e8:
    dsll       $at,$a1,0x2
    daddu      $at,$at,$a1
    dsll       $at,$at,0x1
    sltu       $at,$at,$a0
    beqz       $at, .L0000440c
    nop
    cache      0x14,0($sp)
    ori        $v0,$v0,0x1
    sd         $v0,1800($s1)
.L0000440c:
    andi       $v1,$v0,0x26
    li         $a4,38
    beq        $v1, $a4, .L00004670
    nop
.L0000441c:
    andi       $a5,$v0,0x15
    li         $at,21
    beq        $a5, $at, .L0000477c
    nop
.L0000442c:
    ld         $at,232($sp)
    ld         $a5,240($sp)
    move       $v1,$zero
    sd         $at,88($sp)
    sltiu      $a4,$at,1
    movn       $v1,$a5,$a4
    sd         $v1,96($sp)
.L00004448:
    sd         $ra,320($sp)
    ld         $v1,88($sp)
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    bnez       $v1, .L0000453c
    sd         $s0,288($sp)
    ld         $a4,96($sp)
    sd         $a4,248($sp)
    beqz       $a4, .L000048e4
    move       $a5,$a4
.L00004470:
    sd         $ra,320($sp)
    ld         $at,248($sp)
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    bnez       $at, .L0000453c
    sd         $s0,288($sp)
    lw         $v1,52($s3)
    li         $a4,-1
    beq        $v1, $a4, .L00004e14
    nop
.L00004498:
    sd         $ra,320($sp)
    ld         $a5,224($sp)
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    bnez       $a5, .L0000453c
    sd         $s0,288($sp)
    sd         $ra,320($sp)
    ld         $at,216($sp)
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    bnez       $at, .L0000453c
    sd         $s0,288($sp)
    sd         $zero,168($sp)
    jal        MgrasNextEramResource
    move       $a0,$s3
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    sd         $s0,288($sp)
    beqz       $v0, .L00004b80
    move       $a1,$v0
    sd         $s4,296($sp)
    sd         $s0,288($sp)
    sd         $s2,312($sp)
    sd         $a1,264($sp)
    b          .L00004940
    move       $s2,$a1
.L00004500:
    lui        $a2,0x7
    ld         $a3,208($s1)
    ori        $a2,$a2,0x4
    ld         $a1,-30704($gp)
    daddu      $a2,$a2,$a3
    lw         $a2,0($a2)
    li         $a0,4
    daddiu     $a1,$a1,1216
    jal        cmn_err
    andi       $a2,$a2,0x7f
    jal        mutex_unlock
    ld         $a0,200($sp)
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    sd         $s0,288($sp)
.L0000453c:
    sw         $zero,-15528($zero)
    move       $a0,$s1
    jal        mgras_error
    ld         $a1,208($s1)
    ld         $s3,280($sp)
    ld         $s0,288($sp)
    ld         $s4,296($sp)
    ld         $s5,304($sp)
    ld         $s2,312($sp)
    ld         $ra,320($sp)
    b          .L000040b0
    li         $v0,-1
.L0000456c:
    li         $a4,1
    sd         $a4,208($sp)
.L00004574:
    jal        MgrasMoveDemarcationDown
    move       $a0,$s1
    bltz       $v0, .L00004da0
    nop
    lw         $a5,1688($s1)
    slt        $a5,$a5,$s2
    beqz       $a5, .L00004390
    nop
.L00004594:
    lw         $a4,1632($s1)
    lw         $at,1628($s1)
    li         $v1,1
    addiu      $a4,$a4,-1
    sllv       $v1,$v1,$a4
    and        $at,$at,$v1
    bnez       $at, .L00004574
    nop
    ld         $a5,0($sp)
    beq        $a5, $s5, .L0000456c
    nop
    lw         $at,56($s3)
    lui        $v1,0xfff
    ori        $v1,$v1,0xffff
    and        $at,$at,$v1
    srl        $at,$at,0x1b
    beqz       $at, .L00004638
    nop
    cache      0x14,0($sp)
    li         $v0,22
    move       $a0,$zero
    lw         $a4,496($s1)
    daddiu     $a2,$s1,564
    lui        $a5,0x800
    daddiu     $a1,$s3,124
    or         $a4,$a4,$a5
    sw         $a4,496($s1)
.L00004600:
    cache      0x14,0($sp)
    addiu      $v0,$v0,-1
    daddu      $at,$a0,$a1
    daddu      $v1,$a0,$a2
    lw         $at,0($at)
    addiu      $a0,$a0,4
    bgtz       $v0, .L00004600
    sw         $at,0($v1)
    cache      0x14,0($sp)
    lw         $v1,56($s3)
    lui        $a4,0xf7ff
    ori        $a4,$a4,0xffff
    and        $v1,$v1,$a4
    sw         $v1,56($s3)
.L00004638:
    move       $a0,$s1
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a2,$s5
    bltz       $v0, .L00004f44
    nop
    b          .L0000456c
    ld         $s5,0($sp)
.L00004658:
    cache      0x14,0($sp)
    andi       $a5,$v0,0xf0
    b          .L00004138
    sw         $a5,1968($s1)
.L00004668:
    b          .L00004470
    nop
.L00004670:
    lw         $a0,1632($s1)
    slti       $at,$a0,4
    bnez       $at, .L0000441c
    nop
    lw         $v1,1628($s1)
    addiu      $a5,$a0,-1
    li         $a4,1
    sllv       $a4,$a4,$a5
    and        $v1,$v1,$a4
    bnez       $v1, .L00004750
    nop
    ld         $at,0($sp)
    beq        $at, $s5, .L00004744
    nop
    lw         $v1,56($s3)
    lui        $a4,0xfff
    ori        $a4,$a4,0xffff
    and        $v1,$v1,$a4
    srl        $v1,$v1,0x1b
    beqz       $v1, .L00004724
    nop
    cache      0x14,0($sp)
    li         $v0,22
    move       $a0,$zero
    lw         $a5,496($s1)
    daddiu     $a1,$s1,564
    lui        $at,0x800
    daddiu     $a2,$s3,124
    or         $a5,$a5,$at
    sw         $a5,496($s1)
.L000046e8:
    cache      0x14,0($sp)
    addiu      $v0,$v0,-1
    daddu      $v1,$a0,$a2
    daddu      $a4,$a0,$a1
    lw         $v1,0($v1)
    addiu      $a0,$a0,4
    bgtz       $v0, .L000046e8
    sw         $v1,0($a4)
    cache      0x14,0($sp)
    lw         $a4,56($s3)
    lui        $a5,0x800
    sd         $ra,320($sp)
    nor        $a5,$a5,$zero
    and        $a4,$a4,$a5
    sw         $a4,56($s3)
.L00004724:
    move       $a0,$s1
    sd         $ra,320($sp)
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a2,$s5
    bltz       $v0, .L00005214
    ld         $ra,320($sp)
    ld         $s5,0($sp)
.L00004744:
    sd         $ra,320($sp)
    li         $at,1
    sd         $at,208($sp)
.L00004750:
    sd         $ra,320($sp)
    jal        MgrasMoveDemarcationDown
    move       $a0,$s1
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    sd         $s0,288($sp)
    bltz       $v0, .L0000453c
    ld         $ra,320($sp)
    cache      0x14,0($sp)
    b          .L00004448
    sd         $zero,1800($s1)
.L0000477c:
    lw         $v1,1632($s1)
    lw         $a4,1680($s1)
    slt        $v1,$v1,$a4
    beqz       $v1, .L0000442c
    nop
    sd         $s0,288($sp)
    lw         $t8,1640($s1)
    sd         $s2,312($sp)
    lw         $s2,1688($s1)
    li         $a1,25
    daddiu     $a0,$s1,1976
    sd         $ra,320($sp)
    sd         $a0,144($sp)
    jal        mutex_lock
    subu       $s2,$s2,$t8
    ld         $s0,1992($s1)
    daddiu     $at,$s1,1992
    beq        $at, $s0, .L00004818
    sd         $at,152($sp)
    sd         $s4,296($sp)
.L000047cc:
    move       $s4,$zero
    move       $a3,$zero
.L000047d4:
    dsll       $v1,$s4,0x2
    daddu      $v1,$v1,$s4
    dsll       $v1,$v1,0x3
    addiu      $s4,$s4,1
    daddu      $v1,$v1,$s0
    slti       $a4,$s4,8
    lw         $v1,304($v1)
    bnez       $a4, .L000047d4
    addu       $a3,$v1,$a3
    slt        $a4,$s2,$a3
    bnez       $a4, .L00004814
    nop
    ld         $s0,0($s0)
    ld         $a5,152($sp)
    bne        $a5, $s0, .L000047cc
    nop
.L00004814:
    ld         $s4,296($sp)
.L00004818:
    ld         $a0,144($sp)
    jal        mutex_unlock
    ld         $s2,312($sp)
    ld         $at,152($sp)
    move       $v1,$s0
    ld         $s0,288($sp)
    bne        $at, $v1, .L00004f00
    ld         $ra,320($sp)
    ld         $a4,0($sp)
    beq        $a4, $s5, .L00004f64
    ld         $s0,288($sp)
    lw         $a5,56($s3)
    lui        $at,0xfff
    ori        $at,$at,0xffff
    and        $a5,$a5,$at
    srl        $a5,$a5,0x1b
    beqz       $a5, .L000048bc
    nop
    cache      0x14,0($sp)
    li         $v0,22
    move       $a0,$zero
    lw         $v1,496($s1)
    daddiu     $a1,$s1,564
    lui        $a4,0x800
    daddiu     $a2,$s3,124
    or         $v1,$v1,$a4
    sw         $v1,496($s1)
.L00004884:
    cache      0x14,0($sp)
    addiu      $v0,$v0,-1
    daddu      $a5,$a0,$a2
    daddu      $at,$a0,$a1
    lw         $a5,0($a5)
    addiu      $a0,$a0,4
    bgtz       $v0, .L00004884
    sw         $a5,0($at)
    cache      0x14,0($sp)
    lui        $v1,0x800
    lw         $at,56($s3)
    nor        $v1,$v1,$zero
    and        $at,$at,$v1
    sw         $at,56($s3)
.L000048bc:
    move       $a0,$s1
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a2,$s5
    bltz       $v0, .L00005314
    ld         $ra,320($sp)
    ld         $s5,0($sp)
.L000048d8:
    ld         $a4,128($sp)
    b          .L00004f64
    sd         $a4,120($sp)
.L000048e4:
    cache      0x14,0($sp)
    b          .L00004470
    sw         $zero,1792($s1)
.L000048f0:
    move       $s2,$zero
.L000048f4:
    beqz       $s2, .L0000492c
    nop
    lw         $a5,24($s2)
    beqz       $a5, .L00004cd4
    nop
    cache      0x14,0($sp)
    sw         $zero,24($s2)
.L00004910:
    cache      0x14,0($sp)
    ld         $v1,192($sp)
    ld         $at,184($sp)
    dsll       $v1,$v1,0x2
    sw         $at,4($s2)
    daddu      $v1,$v1,$s3
    sw         $at,212($v1)
.L0000492c:
    jal        MgrasNextEramResource
    move       $a0,$s3
    move       $s2,$v0
    beqz       $v0, .L00004b80
    sd         $v0,264($sp)
.L00004940:
    dsubu      $a2,$s2,$s3
    li         $a1,40
    daddiu     $a2,$a2,-304
    ddiv       $zero,$a2,$a1
    teq        $a1,$zero,0x7
    mflo       $s0
    move       $a1,$s2
    sll        $a0,$s0,0x0
    sd         $a0,192($sp)
    jal        MgrasEramBufAlloc
    move       $a0,$s1
    bgez       $v0, .L000048f4
    sd         $v0,184($sp)
    sll        $a4,$s0,0x0
    sd         $a4,160($sp)
.L0000497c:
    li         $a6,22
    ld         $a5,0($sp)
    move       $a0,$zero
    daddiu     $t0,$s1,564
    daddiu     $a7,$s3,124
    lui        $v1,0xfff
    beq        $a5, $s5, .L00004a14
    ori        $v1,$v1,0xffff
    lw         $at,56($s3)
    and        $at,$at,$v1
    srl        $at,$at,0x1b
    beqz       $at, .L000049f8
    lui        $a5,0x800
    cache      0x14,0($sp)
    lw         $a4,496($s1)
    or         $a4,$a4,$a5
    sw         $a4,496($s1)
.L000049c0:
    cache      0x14,0($sp)
    addiu      $a6,$a6,-1
    daddu      $at,$a0,$a7
    daddu      $v1,$a0,$t0
    lw         $at,0($at)
    addiu      $a0,$a0,4
    bgtz       $a6, .L000049c0
    sw         $at,0($v1)
    cache      0x14,0($sp)
    lui        $a4,0xf7ff
    lw         $v1,56($s3)
    ori        $a4,$a4,0xffff
    and        $v1,$v1,$a4
    sw         $v1,56($s3)
.L000049f8:
    move       $a0,$s1
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a2,$s5
    bltz       $v0, .L000051f4
    nop
    ld         $s5,0($sp)
.L00004a14:
    li         $a1,25
    li         $a5,1
    sd         $a5,208($sp)
    daddiu     $a0,$s1,1976
    jal        mutex_lock
    sd         $a0,144($sp)
    ld         $s0,1992($s1)
    daddiu     $v0,$s1,1992
    li         $a3,-1
    li         $t0,8
    beq        $v0, $s0, .L00004ab0
    sd         $v0,152($sp)
.L00004a44:
    beq        $s3, $s0, .L00004ae0
    nop
    move       $s4,$zero
.L00004a50:
    dsll       $a6,$s4,0x2
    daddu      $a6,$a6,$s4
    dsll       $a6,$a6,0x3
    daddu      $a6,$a6,$s0
    lw         $a7,304($a6)
    beqz       $a7, .L00004af4
    daddiu     $a7,$a6,304
    lw         $at,308($a6)
    beq        $at, $a3, .L00004af4
    li         $a6,1
.L00004a78:
    bnez       $a6, .L00004a90
    nop
    addiu      $s4,$s4,1
    slti       $v1,$s4,8
    bnez       $v1, .L00004a50
    nop
.L00004a90:
    beq        $s4, $t0, .L00004ae0
    nop
    lw         $a4,24($a7)
    beqz       $a4, .L00004db8
    sd         $v0,152($sp)
.L00004aa4:
    move       $a0,$s1
    jal        MgrasEramBufFree
    move       $a1,$a7
.L00004ab0:
    jal        mutex_unlock
    ld         $a0,144($sp)
    ld         $a5,152($sp)
    bne        $a5, $s0, .L00004afc
    nop
    ld         $at,168($sp)
    bnez       $at, .L00004f24
    li         $s2,-1
    li         $v1,1
    sd         $v1,168($sp)
    b          .L00004b30
    move       $s4,$zero
.L00004ae0:
    ld         $s0,0($s0)
    bne        $v0, $s0, .L00004a44
    nop
    b          .L00004ab0
    sd         $v0,152($sp)
.L00004af4:
    b          .L00004a78
    move       $a6,$zero
.L00004afc:
    move       $a0,$s1
    jal        MgrasEramBufAlloc
    move       $a1,$s2
    bltz       $v0, .L0000497c
    sd         $v0,184($sp)
    b          .L000048f4
    nop
.L00004b18:
    move       $a0,$s1
    jal        MgrasEramBufFree
    daddiu     $a1,$s0,304
.L00004b24:
    slti       $a4,$s4,8
    beqz       $a4, .L000048f0
    nop
.L00004b30:
    dsll       $s0,$s4,0x2
    daddu      $s0,$s0,$s4
    dsll       $s0,$s0,0x3
    daddu      $s0,$s0,$s3
    lw         $a3,304($s0)
    beqz       $a3, .L00004b24
    addiu      $s4,$s4,1
    lw         $a1,308($s0)
    beq        $a1, $s2, .L00004b24
    nop
    lw         $at,328($s0)
    bnez       $at, .L00004b18
    nop
    move       $a0,$s1
    jal        MgrasEramRead
    lw         $a2,320($s0)
    bltz       $v0, .L0000453c
    nop
    b          .L00004b18
    nop
.L00004b80:
    ld         $v1,1080($s3)
    ld         $s0,288($sp)
    ld         $s4,296($sp)
    bnez       $v1, .L00004bfc
    ld         $s2,312($sp)
    ld         $v0,1128($s3)
    ld         $s0,288($sp)
    ld         $s4,296($sp)
    beqz       $v0, .L00004bfc
    ld         $s2,312($sp)
    ld         $a0,8($v0)
    beqz       $a0, .L00004bfc
    nop
    lhu        $a4,0($a0)
    beqz       $a4, .L00004bf4
    nop
    move       $a0,$s1
    move       $a1,$s3
    ld         $a2,0($sp)
    jal        MgrasRestoreOverlap
    move       $a3,$s5
    slti       $a5,$v0,0
    bltz       $v0, .L00004bf4
    sd         $a5,32($sp)
    beqz       $v0, .L00004bf4
    nop
    ld         $s5,0($sp)
    li         $at,1
    sd         $at,208($sp)
.L00004bf4:
    ld         $v1,32($sp)
    sd         $v1,16($sp)
.L00004bfc:
    ld         $a4,16($sp)
    bnez       $a4, .L0000453c
    nop
    ld         $a5,208($sp)
    beqz       $a5, .L00004c3c
    nop
    li         $a1,2
    jal        MgrasResetTxTbl_Kern
    ld         $a0,208($s1)
    move       $a0,$s1
    li         $a3,1
    move       $a2,$zero
    jal        MgrasFlushHQ3
    ld         $a1,208($s1)
    slti       $at,$v0,0
    sd         $at,24($sp)
.L00004c3c:
    ld         $v1,24($sp)
    bnez       $v1, .L0000453c
    nop
    li         $a1,25
    daddiu     $a0,$s1,1976
    jal        mutex_lock
    sd         $a0,144($sp)
    cache      0x14,0($sp)
    ld         $a6,0($s3)
    ld         $a5,8($s3)
    sd         $a5,8($a6)
    ld         $a4,8($s3)
    ld         $a3,0($s3)
    sd         $a3,0($a4)
    ld         $a2,2000($s1)
    sd         $a2,8($s3)
    ld         $a1,2000($s1)
    sd         $s3,0($a1)
    daddiu     $a0,$s1,1992
    sd         $a0,0($s3)
    ld         $a0,144($sp)
    jal        mutex_unlock
    sd         $s3,2000($s1)
    ld         $at,1080($s3)
    bnez       $at, .L00004e34
    nop
    move       $a0,$s1
    move       $a1,$s3
    jal        MgrasCtxsw
    move       $a2,$s5
    slti       $v0,$v0,0
    sd         $v0,48($sp)
    ld         $s3,280($sp)
    ld         $s5,304($sp)
    bnez       $v0, .L0000453c
    ld         $ra,320($sp)
    b          .L00004e8c
    nop
.L00004cd4:
    ld         $v1,0($sp)
    beq        $v1, $s5, .L00004d74
    nop
    lw         $a4,56($s3)
    lui        $a5,0xfff
    ori        $a5,$a5,0xffff
    and        $a4,$a4,$a5
    srl        $a4,$a4,0x1b
    beqz       $a4, .L00004d58
    nop
    cache      0x14,0($sp)
    li         $a0,22
    move       $v0,$zero
    lw         $at,496($s1)
    daddiu     $a3,$s1,564
    lui        $v1,0x800
    daddiu     $a6,$s3,124
    or         $at,$at,$v1
    sw         $at,496($s1)
.L00004d20:
    cache      0x14,0($sp)
    addiu      $a0,$a0,-1
    daddu      $a4,$v0,$a6
    daddu      $a5,$v0,$a3
    lw         $a4,0($a4)
    addiu      $v0,$v0,4
    bgtz       $a0, .L00004d20
    sw         $a4,0($a5)
    cache      0x14,0($sp)
    lw         $a5,56($s3)
    lui        $at,0xf7ff
    ori        $at,$at,0xffff
    and        $a5,$a5,$at
    sw         $a5,56($s3)
.L00004d58:
    move       $a0,$s1
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a2,$s5
    bltz       $v0, .L00005260
    nop
    ld         $s5,0($sp)
.L00004d74:
    lw         $a3,0($s2)
    ld         $a2,184($sp)
    move       $a0,$s1
    lw         $a1,16($s2)
    li         $v0,1
    jal        MgrasEramWrite
    sd         $v0,208($sp)
    bltz       $v0, .L0000453c
    nop
    b          .L00004910
    nop
.L00004da0:
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1328
    b          .L0000453c
    sd         $s4,296($sp)
.L00004db8:
    sd         $a7,176($sp)
    lw         $a3,0($a7)
    move       $a0,$s1
    lw         $a2,16($a7)
    move       $a1,$a7
    jal        MgrasEramRead
    lw         $a1,4($a7)
    bgez       $v0, .L00004aa4
    ld         $a7,176($sp)
    jal        mutex_unlock
    ld         $a0,144($sp)
    b          .L0000453c
    nop
.L00004dec:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    b          .L0000453c
    sd         $s0,288($sp)
.L00004e14:
    sd         $ra,320($sp)
    jal        MgrasGlContextAlloc
    move       $a0,$s1
    sd         $s0,288($sp)
    bgez       $v0, .L00004eb4
    move       $a0,$v0
    b          .L00004fec
    sd         $s0,288($sp)
.L00004e34:
    move       $a0,$s1
    move       $a1,$s3
    jal        MgrasCtxsw
    move       $a2,$s5
    slti       $a4,$v0,0
    sd         $a4,40($sp)
    ld         $s3,280($sp)
    ld         $s5,304($sp)
    bltz       $v0, .L00004e80
    ld         $ra,320($sp)
    ld         $at,8($sp)
    ld         $at,64($at)
    ld         $a5,0($at)
    ld         $a5,8($a5)
    bne        $a5, $at, .L00004e80
    nop
    lw         $v1,1616($s1)
    beqz       $v1, .L00005280
    nop
.L00004e80:
    ld         $a4,48($sp)
    bnez       $a4, .L0000453c
    nop
.L00004e8c:
    ld         $a5,40($sp)
    bnez       $a5, .L0000453c
    nop
    cache      0x14,0($sp)
    sw         $zero,-15528($zero)
    lw         $at,1968($s1)
    move       $v0,$zero
    andi       $at,$at,0xf
    b          .L000040b0
    sw         $at,1968($s1)
.L00004eb4:
    lw         $v0,56($s3)
    lui        $v1,0x7fff
    ori        $v1,$v1,0xffff
    and        $v1,$v0,$v1
    srl        $v1,$v1,0x1e
    ld         $s0,288($sp)
    beqz       $v1, .L000050fc
    ld         $ra,320($sp)
.L00004ed4:
    ld         $a4,56($sp)
    sd         $a4,224($sp)
    bnez       $a4, .L00004498
    move       $a5,$a4
    ld         $at,72($sp)
    sd         $at,216($sp)
    bnez       $at, .L00004498
    move       $v1,$at
    cache      0x14,0($sp)
    b          .L00004498
    sw         $a0,52($s3)
.L00004f00:
    ld         $a5,104($sp)
    sd         $a5,232($sp)
    move       $at,$a5
    ld         $at,112($sp)
    move       $a4,$zero
    sltiu      $a5,$a5,1
    movn       $a4,$at,$a5
    b          .L0000442c
    sd         $a4,240($sp)
.L00004f24:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a2,$s3
    ld         $a3,160($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1384
    b          .L0000453c
    nop
.L00004f44:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    b          .L0000453c
    sd         $s4,296($sp)
.L00004f64:
    ld         $a4,120($sp)
    sd         $a4,104($sp)
    bnez       $a4, .L00004f00
    move       $a5,$a4
    li         $a6,1
    sd         $a6,208($sp)
    jal        MgrasMoveDemarcationUp
    move       $a0,$s1
    slti       $ra,$v0,0
    sd         $ra,112($sp)
    bltz       $v0, .L00004f00
    ld         $ra,320($sp)
    cache      0x14,0($sp)
    b          .L00004f00
    sd         $zero,1800($s1)
.L00004fa0:
    ld         $a1,184($sp)
    lw         $a3,1640($s1)
    move       $a0,$s1
    jal        MgrasEramRead
    lw         $a2,632($s0)
    bltz       $v0, .L00005300
    nop
    move       $a0,$s1
    jal        MgrasGlContextFree
    ld         $a1,184($sp)
    cache      0x14,0($sp)
    li         $at,-1
    sw         $at,52($s0)
.L00004fd4:
    jal        mutex_unlock
    ld         $a0,144($sp)
    jal        MgrasGlContextAlloc
    move       $a0,$s1
    bgez       $v0, .L00004eb4
    move       $a0,$v0
.L00004fec:
    ld         $v1,0($sp)
    beq        $v1, $s5, .L0000508c
    nop
    lw         $a4,56($s3)
    lui        $a5,0xfff
    ori        $a5,$a5,0xffff
    and        $a4,$a4,$a5
    srl        $a4,$a4,0x1b
    beqz       $a4, .L00005070
    nop
    cache      0x14,0($sp)
    li         $v0,22
    move       $a0,$zero
    lw         $at,496($s1)
    daddiu     $a1,$s1,564
    lui        $v1,0x800
    daddiu     $a2,$s3,124
    or         $at,$at,$v1
    sw         $at,496($s1)
.L00005038:
    cache      0x14,0($sp)
    addiu      $v0,$v0,-1
    daddu      $a4,$a0,$a2
    daddu      $a5,$a0,$a1
    lw         $a4,0($a4)
    addiu      $a0,$a0,4
    bgtz       $v0, .L00005038
    sw         $a4,0($a5)
    cache      0x14,0($sp)
    lw         $a5,56($s3)
    lui        $at,0xf7ff
    ori        $at,$at,0xffff
    and        $a5,$a5,$at
    sw         $a5,56($s3)
.L00005070:
    move       $a0,$s1
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a2,$s5
    bltz       $v0, .L0000523c
    nop
    ld         $s5,0($sp)
.L0000508c:
    li         $a1,25
    li         $v0,1
    sd         $v0,208($sp)
    daddiu     $a0,$s1,1976
    jal        mutex_lock
    sd         $a0,144($sp)
    ld         $s0,1992($s1)
    daddiu     $v0,$s1,1992
    beq        $v0, $s0, .L00004fd4
    nop
    b          .L000050d4
    nop
.L000050bc:
    move       $a3,$zero
.L000050c0:
    beqz       $a3, .L00004fa0
    nop
    ld         $s0,0($s0)
    beq        $v0, $s0, .L00004fd4
    nop
.L000050d4:
    lw         $v1,52($s0)
    li         $a4,-1
    li         $a3,1
    beq        $v1, $a4, .L000050f4
    sd         $v1,184($sp)
    ld         $a5,1080($s0)
    beqz       $a5, .L000050bc
    nop
.L000050f4:
    b          .L000050c0
    nop
.L000050fc:
    ld         $at,0($sp)
    ld         $s0,288($sp)
    beq        $at, $s5, .L000051b0
    ld         $ra,320($sp)
    lui        $v1,0xfff
    ori        $v1,$v1,0xffff
    and        $v1,$v0,$v1
    srl        $v1,$v1,0x1b
    beqz       $v1, .L00005184
    nop
    cache      0x14,0($sp)
    li         $v0,22
    move       $a1,$zero
    lw         $a4,496($s1)
    daddiu     $a2,$s1,564
    lui        $a5,0x800
    daddiu     $a3,$s3,124
    or         $a4,$a4,$a5
    sw         $a4,496($s1)
.L00005148:
    cache      0x14,0($sp)
    addiu      $v0,$v0,-1
    daddu      $at,$a1,$a3
    daddu      $v1,$a1,$a2
    lw         $at,0($at)
    addiu      $a1,$a1,4
    bgtz       $v0, .L00005148
    sw         $at,0($v1)
    cache      0x14,0($sp)
    lw         $v1,56($s3)
    lui        $a4,0x800
    sd         $a0,136($sp)
    nor        $a4,$a4,$zero
    and        $v1,$v1,$a4
    sw         $v1,56($s3)
.L00005184:
    move       $a2,$s5
    sd         $a0,136($sp)
    ld         $a1,0($sp)
    jal        MgrasCtxsw
    move       $a0,$s1
    ld         $a0,136($sp)
    bltz       $v0, .L0000533c
    ld         $ra,320($sp)
    ld         $s5,0($sp)
.L000051a8:
    ld         $a5,80($sp)
    sd         $a5,64($sp)
.L000051b0:
    ld         $at,64($sp)
    sd         $at,56($sp)
    bnez       $at, .L00004ed4
    move       $v1,$at
    lw         $a3,1640($s1)
    lw         $a1,632($s3)
    move       $a2,$a0
    li         $a4,1
    sd         $a0,136($sp)
    sd         $a4,208($sp)
    jal        MgrasEramWrite
    move       $a0,$s1
    slti       $a5,$v0,0
    sd         $a5,72($sp)
    ld         $a0,136($sp)
    b          .L00004ed4
    ld         $ra,320($sp)
.L000051f4:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    b          .L0000453c
    nop
.L00005214:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    sd         $s2,312($sp)
    sd         $s4,296($sp)
    b          .L0000453c
    sd         $s0,288($sp)
.L0000523c:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    sd         $s2,312($sp)
    b          .L0000453c
    sd         $s4,296($sp)
.L00005260:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    b          .L0000453c
    nop
.L00005280:
    cache      0x14,0($sp)
    ld         $a5,208($s1)
    lui        $v1,0x7
    ld         $at,-30608($gp)
    daddu      $a5,$a5,$v1
    sd         $at,128($a5)
    ld         $a5,208($s1)
    ld         $at,-30600($gp)
    daddu      $a5,$a5,$v1
    sd         $at,128($a5)
    ld         $a5,208($s1)
    daddu      $a5,$a5,$v1
    li         $at,273
    sw         $at,128($a5)
    ld         $a5,208($s1)
    daddu      $a5,$a5,$v1
    lui        $at,0x4
    sw         $at,128($a5)
    ld         $a5,208($s1)
    lw         $at,1668($s1)
    daddu      $a5,$a5,$v1
    sw         $at,128($a5)
    ld         $a5,208($s1)
    daddu      $a5,$a5,$v1
    sw         $zero,128($a5)
    ld         $at,208($s1)
    daddu      $at,$at,$v1
    li         $a5,0xf200
    sw         $a5,132($at)
    li         $a4,1
    b          .L00004e80
    sw         $a4,1616($s1)
.L00005300:
    jal        mutex_unlock
    ld         $a0,144($sp)
    sd         $s2,312($sp)
    b          .L0000453c
    sd         $s4,296($sp)
.L00005314:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    li         $a4,1
    sd         $a4,128($sp)
    b          .L000048d8
    ld         $ra,320($sp)
.L0000533c:
    ld         $a1,-30704($gp)
    li         $a0,4
    move       $a3,$s5
    ld         $a2,-30704($gp)
    jal        cmn_err
    daddiu     $a1,$a1,1312
    li         $a4,1
    sd         $a4,80($sp)
    ld         $a0,136($sp)
    b          .L000051a8
    ld         $ra,320($sp)

glabel MgrasPcxSwitch
    jr         $ra
    move       $v0,$zero

glabel mgras_ctxswtimeout
    ld         $a1,-30704($gp)
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    move       $s8,$a0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1432
    move       $a0,$s8
    jal        mgras_error
    ld         $a1,208($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mgras_sleepertimeout
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        vsema
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel MgrasSuspend
    jr         $ra
    move       $v0,$zero

glabel MgrasResume
    bnez       $a2, .L000053f8
    daddiu     $sp,$sp,-48
    lw         $at,120($a0)
    beqz       $at, .L000053f8
    nop
    cache      0x14,0($sp)
    sd         $ra,0($sp)
    jal        force_resched
    sw         $zero,120($a0)
    ld         $ra,0($sp)
.L000053f8:
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,48

glabel MgrasReleaseGfxSema
    jr         $ra
    move       $v0,$zero

glabel mgras_copyin_vc3_tables
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    li         $a1,2
    sd         $s1,8($sp)
    move       $s1,$a0
    jal        kern_calloc
    lwu        $a0,32($a0)
    move       $s0,$v0
    bnez       $v0, .L0000544c
    ld         $ra,0($sp)
    ld         $s1,8($sp)
    li         $v0,-12
    ld         $s0,16($sp)
.L00005444:
    jr         $ra
    daddiu     $sp,$sp,48
.L0000544c:
    lwu        $a2,32($s1)
    move       $a1,$s0
    ld         $a0,24($s1)
    daddu      $a2,$a2,$a2
    jal        copyin
    sll        $a2,$a2,0x0
    beqz       $v0, .L00005488
    nop
    move       $a0,$s0
    jal        kern_free
    ld         $s1,8($sp)
    ld         $ra,0($sp)
    li         $v0,-14
    b          .L00005444
    ld         $s0,16($sp)
.L00005488:
    cache      0x14,0($sp)
    lwu        $a0,48($s1)
    li         $a1,2
    jal        kern_calloc
    sd         $s0,24($s1)
    beqz       $v0, .L00005548
    move       $s0,$v0
    lwu        $a2,48($s1)
    move       $a1,$s0
    ld         $a0,40($s1)
    daddu      $a2,$a2,$a2
    jal        copyin
    sll        $a2,$a2,0x0
    beqz       $v0, .L000054e8
    nop
    jal        kern_free
    ld         $a0,24($s1)
    move       $a0,$s0
    jal        kern_free
    ld         $s1,8($sp)
    ld         $ra,0($sp)
    li         $v0,-14
    b          .L00005444
    ld         $s0,16($sp)
.L000054e8:
    cache      0x14,0($sp)
    li         $a1,1
    li         $a0,3
    jal        kern_calloc
    sd         $s0,40($s1)
    beqz       $v0, .L0000557c
    move       $s0,$v0
    li         $a2,3
    move       $a1,$s0
    jal        copyin
    ld         $a0,56($s1)
    beqz       $v0, .L00005564
    ld         $ra,0($sp)
    jal        kern_free
    ld         $a0,40($s1)
    jal        kern_free
    ld         $a0,24($s1)
    move       $a0,$s0
    jal        kern_free
    ld         $s1,8($sp)
    ld         $ra,0($sp)
    li         $v0,-14
    b          .L00005444
    ld         $s0,16($sp)
.L00005548:
    ld         $a0,24($s1)
    jal        kern_free
    ld         $s0,16($sp)
    ld         $ra,0($sp)
    li         $v0,-12
    b          .L00005444
    ld         $s1,8($sp)
.L00005564:
    cache      0x14,0($sp)
    sd         $s0,56($s1)
    ld         $s1,8($sp)
    move       $v0,$zero
    b          .L00005444
    ld         $s0,16($sp)
.L0000557c:
    ld         $a0,40($s1)
    jal        kern_free
    ld         $s0,16($sp)
    jal        kern_free
    ld         $a0,24($s1)
    ld         $ra,0($sp)
    li         $v0,-12
    b          .L00005444
    ld         $s1,8($sp)

glabel mgras_copyin_vc2_tables
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    sd         $a0,8($sp)
    sd         $ra,0($sp)
    li         $a1,2
    jal        kern_calloc
    lwu        $a0,24($a0)
    move       $s0,$v0
    bnez       $v0, .L000055d8
    ld         $ra,0($sp)
    li         $v0,-12
    ld         $s0,16($sp)
.L000055d0:
    jr         $ra
    daddiu     $sp,$sp,48
.L000055d8:
    ld         $a0,8($sp)
    lwu        $a2,24($a0)
    move       $a1,$s0
    ld         $a0,16($a0)
    daddu      $a2,$a2,$a2
    jal        copyin
    sll        $a2,$a2,0x0
    beqz       $v0, .L00005614
    nop
    jal        kern_free
    move       $a0,$s0
    ld         $ra,0($sp)
    li         $v0,-14
    b          .L000055d0
    ld         $s0,16($sp)
.L00005614:
    cache      0x14,0($sp)
    ld         $a2,8($sp)
    lwu        $a0,40($a2)
    li         $a1,2
    jal        kern_calloc
    sd         $s0,16($a2)
    beqz       $v0, .L0000568c
    move       $s0,$v0
    ld         $a0,8($sp)
    lwu        $a2,40($a0)
    move       $a1,$s0
    ld         $a0,32($a0)
    daddu      $a2,$a2,$a2
    jal        copyin
    sll        $a2,$a2,0x0
    beqz       $v0, .L00005674
    ld         $ra,0($sp)
    ld         $a0,8($sp)
    ld         $s0,16($sp)
    jal        kern_free
    ld         $a0,16($a0)
    li         $v0,-14
    b          .L000055d0
    ld         $ra,0($sp)
.L00005674:
    cache      0x14,0($sp)
    ld         $a2,8($sp)
    sd         $s0,32($a2)
    move       $v0,$zero
    b          .L000055d0
    ld         $s0,16($sp)
.L0000568c:
    ld         $a0,8($sp)
    ld         $s0,16($sp)
    jal        kern_free
    ld         $a0,16($a0)
    li         $v0,-12
    b          .L000055d0
    ld         $ra,0($sp)

glabel MgrasPrivate
    move       $v0,$a4
    move       $a7,$zero
    move       $t0,$zero
    move       $t1,$zero
    ld         $v1,32($a0)
    daddiu     $sp,$sp,-928
    lui        $t9,0x6d67
    move       $t3,$zero
    sd         $a3,776($sp)
    ori        $t9,$t9,0x13
    move       $t2,$zero
    sd         $a1,816($sp)
    sltu       $at,$a2,$t9
    move       $t8,$zero
    sd         $s0,856($sp)
    lui        $a1,0x6d67
    sd         $v1,768($sp)
    bnez       $at, .L00005778
    move       $s0,$zero
    sltu       $at,$t9,$a2
    lui        $a1,0x6d67
    sd         $a7,824($sp)
    ori        $a1,$a1,0x1e
    sd         $t0,832($sp)
    beqz       $at, .L000058e8
    sltu       $v1,$a2,$a1
    bnez       $v1, .L000058c4
    nop
    sltu       $a5,$a1,$a2
    lui        $a1,0x6d67
    ori        $a1,$a1,0x25
    beqz       $a5, .L00005c08
    sltu       $a6,$a2,$a1
    bnez       $a6, .L00005a00
    nop
    sltu       $a5,$a1,$a2
    beqz       $a5, .L00005f10
    nop
    lui        $v0,0x6d67
    ori        $v0,$v0,0x29
    sltu       $a6,$a2,$v0
    bnez       $a6, .L00005cd0
    nop
    sltu       $v1,$v0,$a2
    beqz       $v1, .L0000607c
    nop
    lui        $a5,0x6d67
    ori        $a5,$a5,0x2a
    bne        $a2, $a5, .L00005898
    nop
    b          .L000058b4
    li         $s0,22
.L00005778:
    ori        $a1,$a1,0x9
    sltu       $a6,$a2,$a1
    sltu       $a5,$a1,$a2
    lui        $a1,0x6d67
    bnez       $a6, .L00005814
    ori        $a1,$a1,0xe
    beqz       $a5, .L00005a94
    sltu       $a6,$a2,$a1
    bnez       $a6, .L00005924
    sltu       $a5,$a1,$a2
    beqz       $a5, .L00005e3c
    nop
    lui        $v0,0x6d67
    ori        $v0,$v0,0x11
    sltu       $a6,$a2,$v0
    bnez       $a6, .L00005c30
    nop
    sltu       $v1,$v0,$a2
    beqz       $v1, .L00006014
    nop
    lui        $a5,0x6d67
    ori        $a5,$a5,0x12
    sd         $ra,864($sp)
    bne        $a2, $a5, .L00005898
    sd         $a0,840($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,16
    ld         $a3,-30576($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,384
    beqz       $v0, .L000066d0
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005814:
    lui        $a1,0x6d67
    ori        $a1,$a1,0x4
    sltu       $a6,$a2,$a1
    sltu       $a5,$a1,$a2
    lui        $a1,0x6d67
    bnez       $a6, .L00005864
    ori        $a1,$a1,0x7
    beqz       $a5, .L00005d18
    sltu       $a6,$a2,$a1
    bnez       $a6, .L00005abc
    nop
    sltu       $a5,$a1,$a2
    beqz       $a5, .L000058b4
    nop
    lui        $a6,0x6d67
    ori        $a6,$a6,0x8
    bne        $a2, $a6, .L00005898
    nop
    b          .L000058b4
    nop
.L00005864:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x2
    sltu       $at,$a2,$v0
    bnez       $at, .L00005a50
    nop
    sltu       $v1,$v0,$a2
    beqz       $v1, .L00005f34
    nop
    lui        $a5,0x6d67
    ori        $a5,$a5,0x3
    sd         $ra,864($sp)
    beq        $a2, $a5, .L00005f88
    sd         $a0,840($sp)
.L00005898:
    ld         $a1,-30704($gp)
    li         $a0,5
    sd         $ra,864($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1512
    li         $s0,22
    ld         $ra,864($sp)
.L000058b4:
    move       $v0,$s0
    ld         $s0,856($sp)
.L000058bc:
    jr         $ra
    daddiu     $sp,$sp,928
.L000058c4:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x18
    sltu       $a5,$a2,$v0
    bnez       $a5, .L00005990
    sltu       $v1,$v0,$a2
    bnez       $v1, .L00005ba0
    nop
    b          .L000058b4
    li         $s0,22
.L000058e8:
    sd         $ra,864($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,16
    ld         $a3,-30576($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,400
    beqz       $v0, .L000060b8
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005924:
    lui        $a1,0x6d67
    ori        $a1,$a1,0xc
    sltu       $a5,$a2,$a1
    bnez       $a5, .L00005b00
    nop
    sltu       $a5,$a1,$a2
    beqz       $a5, .L00005fa4
    sd         $v0,848($sp)
    lui        $a6,0x6d67
    ori        $a6,$a6,0xd
    sd         $ra,864($sp)
    bne        $a2, $a6, .L00005898
    sd         $a0,840($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,48
    ld         $a3,-30632($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,64
    beqz       $v0, .L000065cc
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005990:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x16
    sltu       $at,$a2,$v0
    bnez       $at, .L00005b5c
    nop
    sltu       $v1,$v0,$a2
    beqz       $v1, .L00005ff0
    sd         $a0,840($sp)
    lui        $a5,0x6d67
    ori        $a5,$a5,0x17
    bne        $a2, $a5, .L00005898
    sd         $ra,864($sp)
    ld         $a0,768($sp)
    jal        mgras_baseindex
    ld         $a0,208($a0)
    ld         $a1,-30648($gp)
    dsll       $a0,$v0,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    li         $a2,36
    ld         $a1,776($sp)
    jal        copyout
    daddiu     $a0,$a0,100
    li         $s0,14
    ld         $ra,864($sp)
    sltu       $a5,$zero,$v0
    b          .L000058b4
    movz       $s0,$zero,$a5
.L00005a00:
    lui        $a1,0x6d67
    ori        $a1,$a1,0x23
    sltu       $a6,$a2,$a1
    bnez       $a6, .L00005c68
    nop
    sd         $t1,784($sp)
    sd         $t2,792($sp)
    sltu       $a5,$a1,$a2
    sd         $t3,800($sp)
    beqz       $a5, .L00006050
    sd         $t8,808($sp)
    lui        $a6,0x6d67
    ori        $a6,$a6,0x24
    bne        $a2, $a6, .L00005898
    nop
    cache      0x14,0($sp)
    lw         $s0,0($gp)
    sw         $s0,0($v0)
    b          .L000058b4
    move       $s0,$zero
.L00005a50:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x1
    sltu       $at,$a2,$v0
    bnez       $at, .L00005ca8
    nop
    sltu       $v1,$v0,$a2
    sd         $ra,864($sp)
    bnez       $v1, .L00005898
    sd         $a0,840($sp)
    li         $a2,8
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00006654
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005a94:
    ld         $a1,768($sp)
    li         $a2,48
    sd         $ra,864($sp)
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$a1,1632
    beqz       $v0, .L000062f4
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005abc:
    lui        $a1,0x6d67
    ori        $a1,$a1,0x6
    sltu       $a5,$a2,$a1
    bnez       $a5, .L00005d50
    nop
    sltu       $a5,$a1,$a2
    sd         $ra,864($sp)
    bnez       $a5, .L00005898
    sd         $a0,840($sp)
    li         $a2,8
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,16
    beqz       $v0, .L00006740
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005b00:
    lui        $a1,0x6d67
    ori        $a1,$a1,0xb
    sltu       $a6,$a2,$a1
    bnez       $a6, .L00005d9c
    nop
    sltu       $a5,$a1,$a2
    sd         $ra,864($sp)
    bnez       $a5, .L00005898
    sd         $a0,840($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,40
    ld         $a3,-30640($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,24
    beqz       $v0, .L00006760
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005b5c:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x15
    sltu       $a6,$a2,$v0
    bnez       $a6, .L00005dbc
    nop
    sltu       $v1,$v0,$a2
    sd         $ra,864($sp)
    bnez       $v1, .L00005898
    sd         $a0,840($sp)
    li         $a2,80
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,424
    beqz       $v0, .L000067b0
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005ba0:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x1b
    sltu       $a5,$a2,$v0
    bnez       $a5, .L00005df8
    nop
    sltu       $v1,$v0,$a2
    beqz       $v1, .L00006098
    sd         $a0,840($sp)
    lui        $a5,0x6d67
    ori        $a5,$a5,0x1c
    bne        $a2, $a5, .L00005898
    sd         $ra,864($sp)
    jal        kern_malloc
    li         $a0,1540
    move       $a1,$v0
    sd         $v0,736($sp)
    ld         $a0,776($sp)
    jal        copyin
    li         $a2,1540
    beqz       $v0, .L00006418
    nop
    li         $s0,14
    jal        kern_free
    ld         $a0,736($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L00005c08:
    sd         $a0,840($sp)
    li         $a2,8
    sd         $ra,864($sp)
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,568
    beqz       $v0, .L0000635c
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005c30:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x10
    sltu       $a6,$a2,$v0
    bnez       $a6, .L00005e78
    nop
    sltu       $v1,$v0,$a2
    bnez       $v1, .L00005898
    nop
    ld         $a5,768($sp)
    ld         $a5,1744($a5)
    bnez       $a5, .L00006290
    sd         $a0,840($sp)
    b          .L000058b4
    li         $s0,6
.L00005c68:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x20
    sltu       $a6,$a2,$v0
    bnez       $a6, .L00005ec4
    nop
    sltu       $v1,$v0,$a2
    bnez       $v1, .L00005898
    sd         $ra,864($sp)
    jal        get_current_cred
    nop
    lw         $a5,8($v0)
    beqz       $a5, .L00006600
    ld         $ra,864($sp)
    li         $v0,13
    b          .L000058bc
    ld         $s0,856($sp)
.L00005ca8:
    li         $a6,21011
    bne        $a2, $a6, .L00005898
    nop
    ld         $at,768($sp)
    ld         $at,200($at)
    lbu        $at,53($at)
    beqz       $at, .L00006470
    nop
    b          .L000058b4
    li         $s0,19
.L00005cd0:
    lui        $v1,0x6d67
    ori        $v1,$v1,0x27
    bne        $a2, $v1, .L00005898
    sd         $ra,864($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,16
    ld         $a3,-30592($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,224
    beqz       $v0, .L0000667c
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005d18:
    ld         $a0,768($sp)
    li         $a1,25
    sd         $ra,864($sp)
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,760($sp)
    cache      0x14,0($sp)
    ld         $a0,760($sp)
    ld         $a2,768($sp)
    ld         $a1,776($sp)
    jal        mutex_unlock
    sw         $a1,124($a2)
    b          .L000058b4
    ld         $ra,864($sp)
.L00005d50:
    lui        $a5,0x6d67
    ori        $a5,$a5,0x5
    sd         $ra,864($sp)
    bne        $a2, $a5, .L00005898
    sd         $v0,848($sp)
    ld         $a0,768($sp)
    li         $a1,25
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,760($sp)
    cache      0x14,0($sp)
    ld         $a0,760($sp)
    ld         $a1,768($sp)
    ld         $a2,848($sp)
    lw         $a1,124($a1)
    jal        mutex_unlock
    sw         $a1,0($a2)
    b          .L000058b4
    ld         $ra,864($sp)
.L00005d9c:
    lui        $a5,0x6d67
    ori        $a5,$a5,0xa
    bne        $a2, $a5, .L00005898
    nop
    cache      0x14,0($sp)
    li         $a6,4096
    b          .L000058b4
    sw         $a6,0($v0)
.L00005dbc:
    lui        $at,0x6d67
    ori        $at,$at,0x14
    bne        $a2, $at, .L00005898
    sd         $ra,864($sp)
    ld         $v0,768($sp)
    ld         $a0,776($sp)
    li         $a2,8
    ld         $v0,208($v0)
    daddiu     $a1,$sp,416
    jal        copyin
    sd         $v0,752($sp)
    beqz       $v0, .L0000677c
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005df8:
    lui        $v0,0x6d67
    ori        $v0,$v0,0x1a
    sltu       $v1,$a2,$v0
    bnez       $v1, .L00005f5c
    nop
    sltu       $v1,$v0,$a2
    bnez       $v1, .L00005898
    nop
    ld         $a5,816($sp)
    beqz       $a5, .L000062b4
    nop
    cache      0x14,0($sp)
    ld         $at,816($sp)
    ld         $at,112($at)
    ld         $a6,776($sp)
    b          .L000058b4
    sw         $a6,1136($at)
.L00005e3c:
    sd         $ra,864($sp)
    jal        curproc_abi
    sd         $a0,840($sp)
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,40
    ld         $a3,-30624($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,112
    beqz       $v0, .L000063fc
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005e78:
    lui        $v1,0x6d67
    ori        $v1,$v1,0xf
    sd         $ra,864($sp)
    bne        $a2, $v1, .L00005898
    sd         $a0,840($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,40
    ld         $a3,-30616($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,152
    beqz       $v0, .L000069d0
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005ec4:
    lui        $a5,0x6d67
    ori        $a5,$a5,0x1f
    sd         $ra,864($sp)
    bne        $a2, $a5, .L00005898
    sd         $a0,840($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,24
    ld         $a3,-30608($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,192
    beqz       $v0, .L000069ec
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005f10:
    li         $a2,4
    sd         $ra,864($sp)
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,592
    beqz       $v0, .L00006304
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005f34:
    sd         $a0,840($sp)
    li         $a2,4
    sd         $ra,864($sp)
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,8
    beqz       $v0, .L000064ac
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00005f5c:
    lui        $a6,0x6d67
    ori        $a6,$a6,0x19
    bne        $a2, $a6, .L00005898
    nop
    ld         $at,768($sp)
    ld         $at,200($at)
    lbu        $at,53($at)
    beqz       $at, .L000065b0
    nop
.L00005f80:
    b          .L000058b4
    li         $s0,19
.L00005f88:
    jal        kern_malloc
    li         $a0,1536
    move       $s0,$v0
    bnez       $v0, .L000062bc
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,12
.L00005fa4:
    sd         $ra,864($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,8
    ld         $a3,-30600($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,216
    beqz       $v0, .L00006444
    ld         $ra,864($sp)
    cache      0x14,0($sp)
    ld         $a5,848($sp)
    li         $s0,14
    li         $v1,-1
    b          .L000058b4
    sw         $v1,0($a5)
.L00005ff0:
    li         $a2,40
    sd         $ra,864($sp)
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,504
    beqz       $v0, .L00006564
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00006014:
    sd         $ra,864($sp)
    jal        curproc_abi
    sd         $a0,840($sp)
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,136
    ld         $a3,-30584($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,248
    beqz       $v0, .L000065e8
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00006050:
    ld         $a0,776($sp)
    li         $a2,10
    daddiu     $a1,$sp,576
    sd         $ra,864($sp)
    daddiu     $a6,$sp,576
    jal        copyin
    sd         $a6,712($sp)
    beqz       $v0, .L000063dc
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L0000607c:
    ld         $a0,816($sp)
    sd         $ra,864($sp)
    jal        MgrasDmaUpdateTMTLB
    ld         $a1,768($sp)
    move       $s0,$v0
    b          .L000058b4
    ld         $ra,864($sp)
.L00006098:
    sd         $ra,864($sp)
    jal        kern_malloc
    li         $a0,0xf728
    move       $s0,$v0
    bnez       $v0, .L00006398
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,12
.L000060b8:
    jal        logbase2
    lw         $a0,400($sp)
    ld         $a2,816($sp)
    lw         $a7,404($sp)
    li         $t0,1
    sllv       $t0,$t0,$v0
    sw         $t0,400($sp)
    ld         $ra,864($sp)
    move       $a3,$a7
    bltz       $a7, .L000062ec
    ld         $a2,112($a2)
    slti       $at,$a7,8
    beqz       $at, .L000062ec
    nop
    dsll       $v0,$a7,0x2
    daddu      $v0,$v0,$a7
    dsll       $v0,$v0,0x3
    daddu      $v0,$v0,$a2
    lw         $v1,304($v0)
    beqz       $v1, .L000062ec
    nop
    ld         $a1,408($sp)
    beqz       $a1, .L00006154
    nop
    sd         $a2,720($sp)
    sd         $a3,728($sp)
    dsll       $a2,$t0,0x2
    ld         $a0,312($v0)
    jal        copyout
    sll        $a2,$a2,0x0
    ld         $a3,728($sp)
    ld         $a2,720($sp)
    beqz       $v0, .L0000614c
    ld         $ra,864($sp)
    li         $a5,1
    sd         $a5,832($sp)
    li         $s0,14
.L0000614c:
    ld         $a6,832($sp)
    sd         $a6,824($sp)
.L00006154:
    ld         $at,824($sp)
    sd         $a2,720($sp)
    bnez       $at, .L000058b4
    sd         $a3,728($sp)
    ld         $a0,768($sp)
    li         $a1,25
    daddiu     $a0,$a0,1976
    jal        mutex_lock
    sd         $a0,680($sp)
    cache      0x14,0($sp)
    ld         $a2,728($sp)
    dsll       $a1,$a2,0x2
    daddu      $a1,$a1,$a2
    ld         $a2,720($sp)
    ld         $a0,680($sp)
    dsll       $a1,$a1,0x3
    daddu      $a1,$a1,$a2
    sd         $a1,704($sp)
    jal        mutex_unlock
    sw         $zero,304($a1)
    ld         $a5,704($sp)
    lw         $a5,308($a5)
    li         $a6,-1
    beq        $a5, $a6, .L000061c8
    nop
    ld         $a1,704($sp)
    ld         $a0,768($sp)
    jal        MgrasEramBufFree
    daddiu     $a1,$a1,304
.L000061c8:
    ld         $a2,768($sp)
    ld         $a2,200($a2)
    lw         $a3,400($sp)
    lbu        $a2,43($a2)
    mult       $a2,$a3
    ld         $a0,704($sp)
    lw         $a2,320($a0)
    mflo       $a1
    sll        $a1,$a1,0x2
    sra        $a2,$a2,0xc
    daddiu     $a1,$a1,16383
    ld         $a0,312($a0)
    dsrl       $a1,$a1,0xe
    sd         $a2,664($sp)
    sll        $a1,$a1,0x0
    jal        kvpfree
    sd         $a1,656($sp)
    cache      0x14,0($sp)
    ld         $a0,768($sp)
    ld         $a2,704($sp)
    ld         $a1,656($sp)
    sd         $zero,312($a2)
    sll        $a1,$a1,0x2
    ld         $a2,664($sp)
    jal        mfree
    ld         $a0,1712($a0)
    ld         $v0,656($sp)
    ld         $ra,864($sp)
    ld         $a3,768($sp)
    ld         $a5,664($sp)
    ld         $a3,1696($a3)
    dsll       $a5,$a5,0x2
    beqz       $v0, .L00006278
    daddu      $a3,$a3,$a5
.L00006250:
    move       $a2,$zero
.L00006254:
    cache      0x14,0($sp)
    addiu      $a2,$a2,1
    slti       $a5,$a2,4
    sw         $zero,0($a3)
    bnez       $a5, .L00006254
    daddiu     $a3,$a3,4
    addiu      $v0,$v0,-1
    bnez       $v0, .L00006250
    nop
.L00006278:
    cache      0x14,0($sp)
    ld         $at,768($sp)
    lw         $a6,1724($at)
    addiu      $a6,$a6,1
    b          .L000058b4
    sw         $a6,1724($at)
.L00006290:
    li         $a2,8
    sd         $ra,864($sp)
    ld         $a0,776($sp)
    jal        copyin
    daddiu     $a1,$sp,240
    beqz       $v0, .L000069a4
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L000062b4:
    b          .L000058b4
    li         $s0,14
.L000062bc:
    move       $a1,$s0
    ld         $a0,776($sp)
    jal        copyin
    li         $a2,1536
    beqz       $v0, .L00006580
    nop
    sd         $s0,736($sp)
    li         $s0,14
    jal        kern_free
    ld         $a0,736($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L000062ec:
    b          .L000058b4
    li         $s0,22
.L000062f4:
    jal        MgrasGE11EramInit
    ld         $a0,768($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L00006304:
    lw         $v0,592($sp)
    slti       $at,$v0,201
    beqz       $at, .L0000631c
    nop
    bgez       $v0, .L00006324
    nop
.L0000631c:
    li         $v1,100
    sw         $v1,592($sp)
.L00006324:
    ld         $a0,768($sp)
    li         $a1,25
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,760($sp)
    ld         $a0,768($sp)
    lw         $a2,592($sp)
    ld         $a1,200($a0)
    jal        MgrasInitCCR
    ld         $a0,208($a0)
    jal        mutex_unlock
    ld         $a0,760($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L0000635c:
    ld         $a0,840($sp)
    ld         $a1,816($sp)
    jal        MgrasShare
    daddiu     $a2,$sp,568
    bltz       $v0, .L00006674
    nop
.L00006374:
    li         $a2,8
    ld         $a1,776($sp)
    jal        copyout
    daddiu     $a0,$sp,568
    li         $a6,14
    ld         $ra,864($sp)
    sltu       $a5,$zero,$v0
    b          .L000058b4
    movn       $s0,$a6,$a5
.L00006398:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a1,$s0
    ld         $a0,776($sp)
    li         $a6,1
    li         $a5,4
    ld         $a3,-30544($gp)
    jal        copyin_xlate
    li         $a2,0xf728
    beqz       $v0, .L000067d0
    nop
    jal        kern_free
    move       $a0,$s0
    li         $s0,14
    b          .L000058b4
    ld         $ra,864($sp)
.L000063dc:
    lh         $v0,578($sp)
    blez       $v0, .L000063f4
    move       $a2,$v0
    slti       $at,$v0,8193
    bnez       $at, .L000064e0
    nop
.L000063f4:
    b          .L000058b4
    li         $s0,22
.L000063fc:
    ld         $a0,840($sp)
    ld         $a1,816($sp)
    jal        MgrasDmaEditReplace
    daddiu     $a2,$sp,112
    move       $s0,$v0
    b          .L000058b4
    ld         $ra,864($sp)
.L00006418:
    ld         $a1,736($sp)
    ld         $a0,768($sp)
    daddiu     $a2,$a1,4
    jal        mgras_mco_load_channel_gamma
    lw         $a1,0($a1)
    bltz       $v0, .L00006b08
    ld         $a0,736($sp)
.L00006434:
    jal        kern_free
    nop
    b          .L000058b4
    ld         $ra,864($sp)
.L00006444:
    ld         $a0,816($sp)
    jal        MgrasSetShadowRgn
    daddiu     $a1,$sp,216
    move       $s0,$v0
    beqz       $v0, .L000058b4
    ld         $ra,864($sp)
    cache      0x14,0($sp)
    ld         $a6,848($sp)
    li         $a5,-1
    b          .L000058b4
    sw         $a5,0($a6)
.L00006470:
    sd         $ra,864($sp)
    jal        curproc_abi
    nop
    move       $a4,$v0
    li         $a6,1
    ld         $a0,776($sp)
    li         $a5,4
    li         $a2,24
    ld         $a3,-30560($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,544
    beqz       $v0, .L00006bd4
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L000064ac:
    cache      0x14,0($sp)
    ld         $a0,840($sp)
    ld         $a1,768($sp)
    lhu        $a4,8($sp)
    sw         $a4,392($a1)
    lw         $a2,404($a1)
    lhu        $a3,10($sp)
    sw         $a3,396($a1)
    lw         $a1,400($a1)
    jal        MgrasPositionCursor
    ld         $a0,32($a0)
    b          .L000058b4
    ld         $ra,864($sp)
.L000064e0:
    slti       $a5,$v0,2
    beqz       $a5, .L00006ab4
    lh         $a7,576($sp)
.L000064ec:
    ld         $a6,784($sp)
    bnez       $a6, .L000058b4
    nop
    ld         $at,792($sp)
    sd         $a2,688($sp)
    bnez       $at, .L000058b4
    sd         $a7,696($sp)
    ld         $a0,768($sp)
    li         $a1,25
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,760($sp)
    ld         $a2,688($sp)
    ld         $a0,768($sp)
    ld         $a3,712($sp)
    ld         $a1,696($sp)
    daddiu     $a3,$a3,4
    jal        MgrasSetColors
    ld         $a0,208($a0)
    move       $s0,$v0
    jal        mutex_unlock
    ld         $a0,760($sp)
    ld         $a5,688($sp)
    slti       $a5,$a5,2
    bnez       $a5, .L000058b4
    ld         $ra,864($sp)
    jal        kern_free
    ld         $a0,712($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L00006564:
    ld         $a0,840($sp)
    jal        MgrasVidTextureXfer
    daddiu     $a1,$sp,504
    bgez       $v0, .L000066ac
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,22
.L00006580:
    ld         $a0,840($sp)
    sd         $s0,736($sp)
    daddiu     $a3,$s0,1024
    daddiu     $a2,$s0,512
    move       $a1,$s0
    jal        MgrasSetGammaRamp
    ld         $a0,32($a0)
    move       $s0,$v0
    jal        kern_free
    ld         $a0,736($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L000065b0:
    sd         $ra,864($sp)
    jal        mgras_fp_reinit
    ld         $a0,768($sp)
    beqz       $v0, .L000058b4
    ld         $ra,864($sp)
    b          .L00005f80
    nop
.L000065cc:
    ld         $a0,840($sp)
    ld         $a1,816($sp)
    jal        MgrasDmaUtil_Multi
    daddiu     $a2,$sp,64
    move       $s0,$v0
    b          .L000058b4
    ld         $ra,864($sp)
.L000065e8:
    jal        mgras_copyin_vc3_tables
    daddiu     $a0,$sp,248
    bgez       $v0, .L000068b8
    ld         $ra,864($sp)
    b          .L000058b4
    negu       $s0,$v0
.L00006600:
    cache      0x14,0($sp)
    lui        $a2,0xbfa0
    ori        $a2,$a2,0x4
    lw         $a1,0($a2)
    li         $a3,-1025
    and        $a1,$a1,$a3
    jal        flushbus
    sw         $a1,0($a2)
    jal        us_delay
    li         $a0,5
    cache      0x14,0($sp)
    lui        $a4,0xbfa0
    ori        $a4,$a4,0x4
    lw         $a3,0($a4)
    ori        $a3,$a3,0x400
    jal        flushbus
    sw         $a3,0($a4)
    jal        us_delay
    li         $a0,30000
    b          .L000058b4
    ld         $ra,864($sp)
.L00006654:
    ld         $a0,840($sp)
    lw         $a2,4($sp)
    jal        MgrasSetDisplayMode
    lw         $a1,0($sp)
    bgez       $v0, .L000058b4
    ld         $ra,864($sp)
    b          .L000058b4
    negu       $s0,$v0
.L00006674:
    b          .L00006374
    negu       $s0,$v0
.L0000667c:
    ld         $a0,816($sp)
    jal        MgrasSetTgvRgn
    daddiu     $a1,$sp,224
    move       $s0,$v0
    beqz       $v0, .L000058b4
    ld         $ra,864($sp)
    ld         $a1,-30704($gp)
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,1456
    b          .L000058b4
    ld         $ra,864($sp)
.L000066ac:
    li         $a2,40
    ld         $a1,776($sp)
    jal        copyout
    daddiu     $a0,$sp,504
    li         $s0,14
    ld         $ra,864($sp)
    sltu       $a5,$zero,$v0
    b          .L000058b4
    movz       $s0,$zero,$a5
.L000066d0:
    jal        logbase2
    lw         $a0,384($sp)
    ld         $a7,816($sp)
    li         $t0,1
    sllv       $t3,$t0,$v0
    sw         $t3,384($sp)
    li         $t2,7
    ld         $ra,864($sp)
    li         $a2,-1
    move       $t1,$t3
    ld         $a7,112($a7)
.L000066fc:
    dsll       $at,$t2,0x2
    daddu      $at,$at,$t2
    dsll       $at,$at,0x3
    daddu      $at,$at,$a7
    lw         $at,304($at)
    sltiu      $v1,$at,1
    movn       $a2,$t2,$v1
    addiu      $t2,$t2,-1
    bgez       $t2, .L000066fc
    addu       $t1,$at,$t1
    ld         $v1,768($sp)
    lw         $v1,1684($v1)
    slt        $v1,$v1,$t1
    beqz       $v1, .L00006a08
    nop
    b          .L000058b4
    li         $s0,6
.L00006740:
    ld         $a0,840($sp)
    ld         $a1,816($sp)
    lw         $a3,20($sp)
    jal        rrmWaitVideoSync
    lw         $a2,16($sp)
    move       $s0,$v0
    b          .L000058b4
    ld         $ra,864($sp)
.L00006760:
    ld         $a0,840($sp)
    ld         $a1,816($sp)
    jal        MgrasDmaUtil_Single
    daddiu     $a2,$sp,24
    move       $s0,$v0
    b          .L000058b4
    ld         $ra,864($sp)
.L0000677c:
    ld         $a0,768($sp)
    li         $a1,25
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,760($sp)
    ld         $a0,752($sp)
    lw         $a2,420($sp)
    jal        MgrasSetGenlock
    lw         $a1,416($sp)
    jal        mutex_unlock
    ld         $a0,760($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L000067b0:
    ld         $a0,840($sp)
    jal        MgrasUserSaveTexData
    daddiu     $a1,$sp,424
    li         $s0,14
    ld         $ra,864($sp)
    sltu       $a5,$zero,$v0
    b          .L000058b4
    movz       $s0,$zero,$a5
.L000067d0:
    li         $a0,0xf6e8
    jal        mgras_copyin_vc2_tables
    daddu      $a0,$s0,$a0
    bltz       $v0, .L00006b10
    sd         $v0,744($sp)
    sd         $s0,736($sp)
    jal        RRM_CheckValidFault
    ld         $a0,840($sp)
    move       $s0,$v0
    bnez       $v0, .L000058b4
    ld         $ra,864($sp)
    ld         $a3,840($sp)
    ld         $a3,32($a3)
    ld         $a0,768($sp)
    daddiu     $a3,$a3,80
    li         $a1,25
    li         $a4,1
.L00006814:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L00006814
    nop
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,760($sp)
    ld         $a0,768($sp)
    jal        mgras_mco_download
    ld         $a1,736($sp)
    sd         $v0,744($sp)
    jal        mutex_unlock
    ld         $a0,760($sp)
    ld         $at,840($sp)
    ld         $at,32($at)
    daddiu     $at,$at,80
    li         $v1,-1
.L00006860:
    ll         $a6,0($at)
    addu       $a5,$a6,$v1
    move       $a6,$a5
    sc         $a5,0($at)
    beqzl      $a5, .L00006860
    nop
    ld         $a5,744($sp)
    bltz       $a5, .L00006e58
    nop
.L00006884:
    ld         $a0,736($sp)
    lui        $a1,0x1
    daddu      $a0,$a0,$a1
    sd         $a0,624($sp)
    jal        kern_free
    ld         $a0,-2312($a0)
    ld         $a0,624($sp)
    jal        kern_free
    ld         $a0,-2296($a0)
    jal        kern_free
    ld         $a0,736($sp)
    b          .L000058b4
    ld         $ra,864($sp)
.L000068b8:
    jal        RRM_CheckValidFault
    ld         $a0,840($sp)
    move       $s0,$v0
    bnez       $v0, .L000058b4
    ld         $ra,864($sp)
    ld         $a3,840($sp)
    ld         $a3,32($a3)
    ld         $a0,768($sp)
    daddiu     $a3,$a3,80
    li         $a1,25
    li         $a4,1
.L000068e4:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L000068e4
    nop
    daddiu     $a0,$a0,2280
    jal        mutex_lock
    sd         $a0,760($sp)
    lw         $a5,248($sp)
    lui        $a6,0x100
    and        $a5,$a5,$a6
    beqz       $a5, .L00006e7c
    nop
.L0000691c:
    ld         $a4,768($sp)
    daddiu     $a3,$sp,248
    ld         $a1,200($a4)
    li         $a2,1
    jal        MgrasSetTiming
    ld         $a0,208($a4)
    sd         $v0,744($sp)
    move       $s0,$v0
    jal        mutex_unlock
    ld         $a0,760($sp)
    ld         $a5,840($sp)
    ld         $a5,32($a5)
    ld         $at,744($sp)
    daddiu     $a5,$a5,80
    li         $a6,-1
.L00006958:
    ll         $v1,0($a5)
    addu       $ra,$v1,$a6
    move       $v1,$ra
    sc         $ra,0($a5)
    beqzl      $ra, .L00006958
    nop
    bnez       $at, .L000058b4
    ld         $ra,864($sp)
    jal        kern_free
    ld         $a0,272($sp)
    jal        kern_free
    ld         $a0,288($sp)
    jal        kern_free
    ld         $a0,304($sp)
    ld         $a0,768($sp)
    jal        MgrasEnableRetraceInterrupts
    ld         $a0,208($a0)
    b          .L000058b4
    ld         $ra,864($sp)
.L000069a4:
    ld         $a1,816($sp)
    ld         $a0,840($sp)
    daddiu     $a2,$sp,240
    jal        MgrasAddTexSpace
    ld         $a1,112($a1)
    sd         $v0,744($sp)
    bgez       $v0, .L00006a90
    ld         $ra,864($sp)
    ld         $s0,744($sp)
    b          .L000058b4
    negu       $s0,$s0
.L000069d0:
    ld         $a0,840($sp)
    ld         $a1,816($sp)
    jal        MgrasDmaEditAppend
    daddiu     $a2,$sp,152
    move       $s0,$v0
    b          .L000058b4
    ld         $ra,864($sp)
.L000069ec:
    ld         $a0,840($sp)
    ld         $a1,816($sp)
    jal        MgrasDmaEditRelease
    daddiu     $a2,$sp,192
    move       $s0,$v0
    b          .L000058b4
    ld         $ra,864($sp)
.L00006a08:
    ld         $at,768($sp)
    lw         $at,1688($at)
    slt        $at,$at,$t1
    beqz       $at, .L00006a34
    nop
    cache      0x14,0($sp)
    ld         $v1,768($sp)
    sd         $a2,632($sp)
    sw         $t0,1796($v1)
    sd         $a7,640($sp)
    lw         $t3,384($sp)
.L00006a34:
    ld         $a1,768($sp)
    ld         $a1,200($a1)
    lbu        $a1,43($a1)
    mult       $a1,$t3
    mflo       $a0
    sll        $a0,$a0,0x2
    sd         $a2,632($sp)
    daddiu     $a0,$a0,16383
    move       $a2,$zero
    dsrl       $a0,$a0,0xe
    sd         $a7,640($sp)
    lui        $a1,0x8
    sll        $a0,$a0,0x0
    ori        $a1,$a1,0x90
    jal        kvpalloc
    sd         $a0,616($sp)
    sd         $v0,736($sp)
    sd         $v0,672($sp)
    move       $a5,$v0
    bnez       $v0, .L00006b88
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,12
.L00006a90:
    li         $a2,8
    ld         $a1,776($sp)
    jal        copyout
    daddiu     $a0,$sp,240
    li         $s0,14
    ld         $ra,864($sp)
    sltu       $a6,$zero,$v0
    b          .L000058b4
    movz       $s0,$zero,$a6
.L00006ab4:
    dsll       $a0,$v0,0x2
    dsubu      $a0,$a0,$v0
    sd         $a2,688($sp)
    dsll       $a0,$a0,0x1
    sd         $a7,696($sp)
    daddiu     $a0,$a0,4
    jal        kern_malloc
    sll        $a0,$a0,0x0
    sd         $v0,736($sp)
    sd         $v0,712($sp)
    ld         $a7,696($sp)
    move       $a2,$v0
    ld         $a2,688($sp)
    bnez       $v0, .L00006b28
    ld         $ra,864($sp)
    li         $a5,1
    sd         $a5,800($sp)
    li         $s0,12
.L00006afc:
    ld         $a6,800($sp)
    b          .L000064ec
    sd         $a6,784($sp)
.L00006b08:
    b          .L00006434
    negu       $s0,$v0
.L00006b10:
    jal        kern_free
    move       $a0,$s0
    ld         $s0,744($sp)
    ld         $ra,864($sp)
    b          .L000058b4
    negu       $s0,$s0
.L00006b28:
    ld         $a3,688($sp)
    dsll       $a2,$a3,0x2
    dsubu      $a2,$a2,$a3
    ld         $a0,776($sp)
    dsll       $a2,$a2,0x1
    ld         $a1,736($sp)
    daddiu     $a2,$a2,4
    jal        copyin
    sll        $a2,$a2,0x0
    ld         $a7,696($sp)
    ld         $a2,688($sp)
    beqz       $v0, .L00006b7c
    ld         $ra,864($sp)
    li         $s0,14
    jal        kern_free
    ld         $a0,736($sp)
    li         $a5,1
    sd         $a5,808($sp)
    ld         $a7,696($sp)
    ld         $a2,688($sp)
    ld         $ra,864($sp)
.L00006b7c:
    ld         $a6,808($sp)
    b          .L00006afc
    sd         $a6,792($sp)
.L00006b88:
    ld         $a7,632($sp)
    jal        curproc_abi
    sw         $a7,388($sp)
    move       $a4,$v0
    li         $a6,1
    li         $a5,4
    li         $a2,16
    ld         $a1,776($sp)
    ld         $a3,-30568($gp)
    jal        xlate_copyout
    daddiu     $a0,$sp,384
    beqz       $v0, .L00006c18
    nop
    ld         $a0,736($sp)
    jal        kvpfree
    ld         $a1,616($sp)
    li         $s0,14
    b          .L000058b4
    ld         $ra,864($sp)
.L00006bd4:
    ld         $a0,768($sp)
    jal        mgras_fpi2c_command
    daddiu     $a1,$sp,544
    jal        curproc_abi
    move       $s0,$v0
    move       $a4,$v0
    li         $a6,1
    li         $a5,4
    li         $a2,24
    ld         $a1,776($sp)
    ld         $a3,-30552($gp)
    jal        xlate_copyout
    daddiu     $a0,$sp,544
    beqz       $v0, .L000058b4
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00006c18:
    ld         $at,632($sp)
    bltz       $at, .L00006e64
    nop
    cache      0x14,0($sp)
    ld         $a4,632($sp)
    ld         $a0,768($sp)
    dsll       $a3,$a4,0x2
    daddu      $a3,$a3,$a4
    ld         $a4,640($sp)
    ld         $a1,616($sp)
    dsll       $a3,$a3,0x3
    ld         $a2,736($sp)
    daddu      $a3,$a3,$a4
    sd         $a2,312($a3)
    li         $a4,-1
    sw         $a4,308($a3)
    sll        $a1,$a1,0x2
    sd         $a3,608($sp)
    jal        malloc
    ld         $a0,1712($a0)
    sd         $v0,744($sp)
    sd         $v0,600($sp)
    move       $a5,$v0
    beqz       $v0, .L00006f9c
    ld         $a3,616($sp)
    cache      0x14,0($sp)
    ld         $at,608($sp)
    ld         $v1,744($sp)
    li         $a6,1
    sw         $a6,328($at)
    sw         $a3,324($at)
    sll        $v1,$v1,0xc
    sw         $v1,320($at)
    ld         $a0,392($sp)
    beqz       $a0, .L00006d24
    nop
    lw         $a2,384($sp)
    dsll       $a2,$a2,0x2
    ld         $a1,736($sp)
    jal        copyin
    sll        $a2,$a2,0x0
    beqz       $v0, .L00006d00
    nop
    ld         $a2,600($sp)
    ld         $s0,616($sp)
    ld         $a1,608($sp)
    ld         $a0,768($sp)
    lw         $a1,324($a1)
    ld         $a0,1712($a0)
    jal        mfree
    sll        $a1,$a1,0x2
    ld         $a0,608($sp)
    move       $a1,$s0
    jal        kvpfree
    ld         $a0,312($a0)
    li         $s0,14
    b          .L000058b4
    ld         $ra,864($sp)
.L00006d00:
    lw         $a1,384($sp)
    dsll       $a1,$a1,0x2
    ld         $a0,736($sp)
    jal        dki_dcache_wbinval
    sll        $a1,$a1,0x0
    cache      0x14,0($sp)
    ld         $a3,608($sp)
    sw         $zero,328($a3)
    ld         $a3,616($sp)
.L00006d24:
    ld         $a5,768($sp)
    ld         $a6,600($sp)
    ld         $a5,1696($a5)
    dsll       $a6,$a6,0x2
    daddu      $a5,$a5,$a6
    beqz       $a3, .L00006d94
    sd         $a5,648($sp)
.L00006d40:
    sd         $a3,616($sp)
    jal        kvtophyspnum
    ld         $a0,672($sp)
    cache      0x14,0($sp)
    ld         $at,648($sp)
    ld         $v1,672($sp)
    daddiu     $at,$at,16
    sd         $at,648($sp)
    daddiu     $v1,$v1,16384
    sd         $v1,672($sp)
    sll        $a6,$v0,0x2
    ld         $a3,616($sp)
    addiu      $a5,$a6,1
    sw         $a5,-12($at)
    addiu      $v0,$a6,2
    sw         $v0,-8($at)
    addiu      $a3,$a3,-1
    sw         $a6,-16($at)
    addiu      $a6,$a6,3
    bnez       $a3, .L00006d40
    sw         $a6,-4($at)
.L00006d94:
    cache      0x14,0($sp)
    ld         $v1,768($sp)
    lw         $v0,1724($v1)
    ld         $at,840($sp)
    addiu      $v0,$v0,1
    sw         $v0,1724($v1)
    ld         $v0,32($at)
    ld         $a6,72($v0)
    bne        $a6, $at, .L00006e8c
    sd         $a3,616($sp)
.L00006dbc:
    ld         $a2,840($sp)
    ld         $a2,32($a2)
    ld         $a0,768($sp)
    daddiu     $a2,$a2,80
    li         $a1,25
    li         $a3,1
.L00006dd4:
    ll         $v1,0($a2)
    addu       $a4,$v1,$a3
    move       $v1,$a4
    sc         $a4,0($a2)
    beqzl      $a4, .L00006dd4
    nop
    daddiu     $a0,$a0,1976
    jal        mutex_lock
    sd         $a0,680($sp)
    cache      0x14,0($sp)
    ld         $a0,768($sp)
    ld         $a1,640($sp)
    ld         $a2,632($sp)
    ld         $a4,608($sp)
    lw         $a3,384($sp)
    jal        MgrasValidateEramRes
    sw         $a3,304($a4)
    bltz       $v0, .L00006edc
    nop
    jal        mutex_unlock
    ld         $a0,680($sp)
    ld         $a6,840($sp)
    ld         $a6,32($a6)
    daddiu     $a6,$a6,80
    li         $ra,-1
.L00006e38:
    ll         $a5,0($a6)
    addu       $at,$a5,$ra
    move       $a5,$at
    sc         $at,0($a6)
    beqzl      $at, .L00006e38
    nop
    b          .L000058b4
    ld         $ra,864($sp)
.L00006e58:
    ld         $s0,744($sp)
    b          .L00006884
    negu       $s0,$s0
.L00006e64:
    ld         $a0,736($sp)
    jal        kvpfree
    ld         $a1,616($sp)
    li         $s0,7
    b          .L000058b4
    ld         $ra,864($sp)
.L00006e7c:
    jal        mgras_mco_shutdown
    ld         $a0,768($sp)
    b          .L0000691c
    nop
.L00006e8c:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $at,840($sp)
    ld         $v1,32($at)
    sd         $at,72($v1)
    ld         $at,32($at)
    lw         $at,104($at)
    beqz       $at, .L00006dbc
    nop
.L00006eb8:
    jal        us_delay
    li         $a0,2
    ld         $a5,840($sp)
    ld         $a5,32($a5)
    lw         $a5,104($a5)
    bnez       $a5, .L00006eb8
    nop
    b          .L00006dbc
    nop
.L00006edc:
    jal        mutex_unlock
    ld         $a0,680($sp)
    ld         $a7,840($sp)
    ld         $a7,32($a7)
    daddiu     $a7,$a7,80
    li         $t0,-1
.L00006ef4:
    ll         $a6,0($a7)
    addu       $t1,$a6,$t0
    move       $a6,$t1
    sc         $t1,0($a7)
    beqzl      $t1, .L00006ef4
    nop
    jal        splhi
    nop
    ld         $a3,840($sp)
    ld         $a3,24($a3)
    ld         $a3,192($a3)
    beqz       $a3, .L00006f30
    sd         $v0,744($sp)
    jalr       $a3
    ld         $a0,840($sp)
.L00006f30:
    cache      0x14,0($sp)
    ld         $a0,840($sp)
    ld         $a1,32($a0)
    sd         $zero,72($a1)
    ld         $a0,32($a0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    ld         $a0,744($sp)
    ld         $a2,600($sp)
    ld         $a1,608($sp)
    ld         $a0,768($sp)
    lw         $a1,324($a1)
    ld         $a0,1712($a0)
    jal        mfree
    sll        $a1,$a1,0x2
    ld         $a0,608($sp)
    ld         $a1,616($sp)
    jal        kvpfree
    ld         $a0,312($a0)
    ld         $a1,768($sp)
    move       $a0,$a1
    jal        mgras_error
    ld         $a1,208($a1)
    ld         $ra,864($sp)
    b          .L000058b4
    li         $s0,14
.L00006f9c:
    ld         $a0,608($sp)
    move       $a1,$a3
    jal        kvpfree
    ld         $a0,312($a0)
    li         $s0,12
    b          .L000058b4
    ld         $ra,864($sp)

glabel MgrasWriteBfifo
    move       $a7,$zero
    daddiu     $sp,$sp,-176
    move       $v0,$a1
    beqz       $a0, .L00007078
    sd         $a0,40($sp)
    li         $a1,2
    sd         $a3,88($sp)
    beq        $a2, $a1, .L000070d4
    sd         $a4,96($sp)
    lw         $a0,0($v0)
    beqz       $a0, .L000070cc
    nop
    sd         $a7,104($sp)
    li         $at,1
    sd         $v0,24($sp)
    sd         $a0,48($sp)
    beq        $a2, $at, .L000070c4
    li         $v0,14
    ld         $a0,48($sp)
    sd         $zero,16($sp)
    dsll32     $a0,$a0,0x0
    sd         $zero,64($sp)
    dsrl32     $a0,$a0,0x0
    sd         $ra,112($sp)
    dsll       $a0,$a0,0x4
    jal        kern_malloc
    sd         $a0,80($sp)
    move       $a2,$v0
    sd         $v0,72($sp)
    move       $a5,$v0
    li         $a6,12
    bnez       $v0, .L00007080
    ld         $ra,112($sp)
    sd         $a6,104($sp)
.L00007040:
    bnez       $a2, .L000070b4
    nop
.L00007048:
    ld         $at,16($sp)
    beqz       $at, .L0000706c
    nop
    jal        splx
    lw         $a0,8($sp)
    ld         $a0,0($sp)
    jal        mutex_unlock
    daddiu     $a0,$a0,2280
    ld         $ra,112($sp)
.L0000706c:
    ld         $v0,104($sp)
.L00007070:
    jr         $ra
    daddiu     $sp,$sp,176
.L00007078:
    b          .L00007070
    li         $v0,14
.L00007080:
    sd         $a2,32($sp)
    ld         $a2,80($sp)
    ld         $a0,24($sp)
    sll        $a2,$a2,0x0
    ld         $a1,32($sp)
    jal        copyin
    ld         $a0,8($a0)
    ld         $a2,32($sp)
    li         $a5,14
    beqz       $v0, .L00007148
    ld         $ra,112($sp)
    beqz       $a2, .L00007048
    sd         $a5,104($sp)
.L000070b4:
    jal        kern_free
    move       $a0,$a2
    b          .L00007048
    ld         $ra,112($sp)
.L000070c4:
    b          .L00007070
    nop
.L000070cc:
    b          .L00007070
    move       $v0,$zero
.L000070d4:
    sd         $v0,24($sp)
    sd         $ra,112($sp)
    jal        mgras_baseindex
    ld         $a0,40($sp)
    li         $a6,-1
    beq        $v0, $a6, .L00007140
    ld         $ra,112($sp)
    jal        splhi
    nop
    ld         $v1,40($sp)
    lui        $a5,0x7
    daddu      $v1,$v1,$a5
    lw         $zero,256($v1)
    ld         $at,96($sp)
    move       $a0,$v0
    li         $v0,4
    beq        $at, $v0, .L00007218
    nop
    cache      0x14,0($sp)
    ld         $at,24($sp)
    ld         $a6,88($sp)
    sb         $a6,0($at)
.L0000712c:
    jal        splx
    nop
    move       $v0,$zero
    b          .L00007070
    ld         $ra,112($sp)
.L00007140:
    b          .L00007070
    li         $v0,14
.L00007148:
    ld         $v0,40($sp)
    ld         $v0,32($v0)
    sd         $v0,0($sp)
    daddiu     $a0,$v0,2280
    ld         $v0,208($v0)
    li         $a1,25
    jal        mutex_lock
    sd         $v0,56($sp)
    jal        splhi
    nop
    li         $v1,1
    sd         $v1,16($sp)
    ld         $a1,48($sp)
    sw         $v0,8($sp)
    ld         $a2,32($sp)
    move       $a4,$zero
    beqz       $a1, .L00007040
    ld         $ra,112($sp)
    li         $t2,15
    li         $t1,8
    lui        $a3,0x6
    li         $t0,4
    lui        $a7,0x6
    lui        $t3,0x7
    ori        $a7,$a7,0x803c
.L000071ac:
    ld         $v0,72($sp)
    lwu        $v0,0($v0)
    sltu       $at,$v0,$a3
    bnez       $at, .L0000722c
    nop
    sltu       $v1,$a7,$v0
    bnez       $v1, .L0000722c
    nop
    ld         $a5,64($sp)
    ld         $a6,56($sp)
    beqz       $a5, .L00007250
    daddu      $v0,$a6,$v0
.L000071dc:
    ld         $a0,72($sp)
    lhu        $a0,4($a0)
    li         $at,1
    beq        $a0, $at, .L00007298
    nop
    li         $a5,2
    beq        $a0, $a5, .L00007280
    nop
    beq        $a0, $t0, .L000072e4
    nop
    beq        $a0, $t1, .L00007238
    nop
    li         $a6,14
    b          .L00007040
    sd         $a6,104($sp)
.L00007218:
    cache      0x14,0($sp)
    ld         $v1,24($sp)
    ld         $at,88($sp)
    b          .L0000712c
    sw         $at,0($v1)
.L0000722c:
    li         $a5,14
    b          .L00007040
    sd         $a5,104($sp)
.L00007238:
    andi       $a6,$v0,0x7
    beqz       $a6, .L000072fc
    nop
    li         $at,14
    b          .L00007040
    sd         $at,104($sp)
.L00007250:
    ld         $a0,56($sp)
    daddu      $a0,$t3,$a0
    lw         $v1,256($a0)
    andi       $v1,$v1,0x1f
    beqz       $v1, .L000071dc
    nop
.L00007268:
    lw         $a5,256($a0)
    andi       $a5,$a5,0x1f
    bnez       $a5, .L00007268
    nop
    b          .L000071dc
    nop
.L00007280:
    andi       $a6,$v0,0x1
    beqz       $a6, .L00007310
    nop
    li         $at,14
    b          .L00007040
    sd         $at,104($sp)
.L00007298:
    cache      0x14,0($sp)
    ld         $v1,72($sp)
    ld         $v1,8($v1)
    sb         $v1,0($v0)
.L000072a8:
    ld         $v1,72($sp)
    addiu      $a4,$a4,1
    ld         $a6,64($sp)
    sltu       $a5,$a4,$a1
    daddiu     $v1,$v1,16
    sd         $v1,72($sp)
    xor        $at,$a6,$t2
    addiu      $v1,$a6,1
    sltiu      $at,$at,1
    move       $a6,$v1
    movn       $a6,$zero,$at
    bnez       $a5, .L000071ac
    sd         $a6,64($sp)
    b          .L00007040
    nop
.L000072e4:
    andi       $a5,$v0,0x3
    beqz       $a5, .L00007324
    nop
    li         $a6,14
    b          .L00007040
    sd         $a6,104($sp)
.L000072fc:
    cache      0x14,0($sp)
    ld         $at,72($sp)
    ld         $at,8($at)
    b          .L000072a8
    sd         $at,0($v0)
.L00007310:
    cache      0x14,0($sp)
    ld         $v1,72($sp)
    ld         $v1,8($v1)
    b          .L000072a8
    sh         $v1,0($v0)
.L00007324:
    cache      0x14,0($sp)
    ld         $a5,72($sp)
    ld         $a5,8($a5)
    b          .L000072a8
    sw         $a5,0($v0)

glabel mgras_error
    ld         $v1,200($a0)
    daddiu     $sp,$sp,-64
    sd         $a1,24($sp)
    daddiu     $v1,$v1,68
    li         $a1,1
.L0000734c:
    ll         $v0,0($v1)
    addu       $a2,$v0,$a1
    move       $v0,$a2
    sc         $a2,0($v1)
    beqzl      $a2, .L0000734c
    nop
    ld         $at,200($a0)
    lw         $at,68($at)
    li         $v0,1
    beq        $at, $v0, .L00007380
    sd         $a0,32($sp)
.L00007378:
    jr         $ra
    daddiu     $sp,$sp,64
.L00007380:
    ld         $a1,-30704($gp)
    li         $a0,4
    sd         $ra,40($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1544
    jal        mgras_baseindex
    ld         $a0,24($sp)
    jal        mgras_hqlook
    move       $a0,$v0
    ld         $a0,-30536($gp)
    sd         $zero,16($sp)
    li         $a2,9
    sw         $a2,0($sp)
    ld         $a3,32($sp)
    daddiu     $a1,$sp,0
    jal        gthread_scan
    sd         $a3,8($sp)
    jal        MgrasValidateAllRetrace
    ld         $a0,32($sp)
    jal        MgrasRetraceInit
    ld         $a0,32($sp)
    b          .L00007378
    ld         $ra,40($sp)

glabel mgras_hqlook
    daddiu     $sp,$sp,-176
    sd         $ra,56($sp)
    sd         $s1,80($sp)
    sd         $s2,64($sp)
    dsll       $s1,$a0,0x2
    ld         $s2,-30672($gp)
    dsubu      $s1,$s1,$a0
    sd         $s0,72($sp)
    dsll       $s1,$s1,0x4
    ld         $s0,-30704($gp)
    daddu      $s1,$s1,$s2
    move       $a1,$a0
    ld         $s2,8($s1)
    daddiu     $a0,$s0,1560
    jal        printf
    ld         $s1,0($s1)
    daddiu     $a1,$s2,440
    ld         $a2,424($s2)
    lui        $s2,0x7
    jal        printf
    daddiu     $a0,$s0,1576
    daddiu     $a2,$sp,0
    ori        $s2,$s2,0x104
    li         $a1,4
    daddu      $s2,$s1,$s2
    jal        badaddr_val
    move       $a0,$s2
    beqz       $v0, .L00007488
    nop
    daddiu     $a1,$s0,1632
    daddiu     $a0,$s0,1648
    jal        printf
    move       $a2,$s2
    ld         $s2,64($sp)
    ld         $ra,56($sp)
.L00007468:
    lw         $at,0($sp)
    andi       $at,$at,0x3
    beqz       $at, .L000074a8
    nop
.L00007478:
    ld         $s0,72($sp)
    ld         $s1,80($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L00007488:
    move       $a2,$s2
    daddiu     $a1,$s0,1632
    lw         $a3,0($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    ld         $s2,64($sp)
    b          .L00007468
    ld         $ra,56($sp)
.L000074a8:
    daddiu     $a2,$sp,4
    li         $a1,4
    lui        $a0,0x7
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,144($sp)
    beqz       $v0, .L000076bc
    ld         $a2,144($sp)
    daddiu     $a1,$gp,-30528
    jal        printf
    daddiu     $a0,$s0,1648
.L000074d4:
    daddiu     $a2,$sp,8
    lui        $a0,0x7
    li         $a1,4
    ori        $a0,$a0,0x4
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,88($sp)
    beqz       $v0, .L000076d4
    ld         $a2,88($sp)
    daddiu     $a1,$s0,1672
    jal        printf
    daddiu     $a0,$s0,1648
.L00007504:
    daddiu     $a2,$sp,12
    lui        $a0,0x7
    li         $a1,4
    ori        $a0,$a0,0x100
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,96($sp)
    beqz       $v0, .L000076ec
    ld         $a2,96($sp)
    daddiu     $a1,$s0,1688
    jal        printf
    daddiu     $a0,$s0,1648
.L00007534:
    lw         $a1,12($sp)
    andi       $a1,$a1,0x40
    lui        $a0,0x5
    beqz       $a1, .L00007558
    daddu      $a0,$s1,$a0
    cache      0x14,0($sp)
    sd         $a0,48($sp)
    li         $at,32397
    sw         $at,0($a0)
.L00007558:
    sd         $a0,48($sp)
    daddiu     $a2,$sp,16
    lui        $a0,0x5
    li         $a1,4
    ori        $a0,$a0,0x21c
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,152($sp)
    beqz       $v0, .L00007704
    ld         $a5,152($sp)
    daddiu     $a1,$s0,1704
    daddiu     $a0,$s0,1648
    jal        printf
    move       $a2,$a5
.L00007590:
    daddiu     $a2,$sp,20
    lui        $a0,0x4
    li         $a1,4
    ori        $a0,$a0,0x5000
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,112($sp)
    beqz       $v0, .L00007720
    ld         $a5,112($sp)
    daddiu     $a1,$gp,-30520
    daddiu     $a0,$s0,1648
    jal        printf
    move       $a2,$a5
.L000075c4:
    daddiu     $a2,$sp,24
    lui        $a0,0x4
    li         $a1,4
    ori        $a0,$a0,0x6000
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,120($sp)
    beqz       $v0, .L0000773c
    ld         $a5,120($sp)
    daddiu     $a1,$gp,-30512
    daddiu     $a0,$s0,1648
    jal        printf
    move       $a2,$a5
.L000075f8:
    daddiu     $a2,$sp,28
    lui        $a0,0x7
    li         $a1,4
    ori        $a0,$a0,0x8
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,128($sp)
    beqz       $v0, .L00007758
    ld         $a5,128($sp)
    daddiu     $a1,$s0,1720
    daddiu     $a0,$s0,1648
    jal        printf
    move       $a2,$a5
.L0000762c:
    daddiu     $a2,$sp,32
    ld         $a0,48($sp)
    jal        badaddr_val
    li         $a1,4
    beqz       $v0, .L00007774
    ld         $a2,48($sp)
    daddiu     $a1,$s0,1736
    jal        printf
    daddiu     $a0,$s0,1648
.L00007650:
    daddiu     $a2,$sp,36
    lui        $a0,0x5
    li         $a1,4
    ori        $a0,$a0,0x114
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,104($sp)
    beqz       $v0, .L0000778c
    ld         $a2,104($sp)
    daddiu     $a1,$s0,1752
    jal        printf
    daddiu     $a0,$s0,1648
.L00007680:
    daddiu     $a2,$sp,40
    lui        $a0,0x7
    li         $a1,4
    ori        $a0,$a0,0xc578
    daddu      $a0,$s1,$a0
    jal        badaddr_val
    sd         $a0,136($sp)
    ld         $a2,136($sp)
    beqz       $v0, .L000077a4
    ld         $s1,80($sp)
    daddiu     $a1,$s0,1768
    jal        printf
    daddiu     $a0,$s0,1648
    b          .L00007478
    ld         $ra,56($sp)
.L000076bc:
    daddiu     $a1,$gp,-30528
    lw         $a3,4($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L000074d4
    nop
.L000076d4:
    daddiu     $a1,$s0,1672
    lw         $a3,8($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L00007504
    nop
.L000076ec:
    daddiu     $a1,$s0,1688
    lw         $a3,12($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L00007534
    nop
.L00007704:
    move       $a2,$a5
    daddiu     $a1,$s0,1704
    lw         $a3,16($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L00007590
    nop
.L00007720:
    move       $a2,$a5
    daddiu     $a1,$gp,-30520
    lw         $a3,20($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L000075c4
    nop
.L0000773c:
    move       $a2,$a5
    daddiu     $a1,$gp,-30512
    lw         $a3,24($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L000075f8
    nop
.L00007758:
    move       $a2,$a5
    daddiu     $a1,$s0,1720
    lw         $a3,28($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L0000762c
    nop
.L00007774:
    daddiu     $a1,$s0,1736
    lw         $a3,32($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L00007650
    nop
.L0000778c:
    daddiu     $a1,$s0,1752
    lw         $a3,36($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L00007680
    nop
.L000077a4:
    daddiu     $a1,$s0,1768
    lw         $a3,40($sp)
    jal        printf
    daddiu     $a0,$s0,1616
    b          .L00007478
    ld         $ra,56($sp)

glabel mgras_fifotimeout
    daddiu     $sp,$sp,-32
    sd         $s7,8($sp)
    sd         $ra,0($sp)
    move       $s7,$a0
    jal        mgras_error
    ld         $a1,208($s7)
    cache      0x14,0($sp)
    lw         $at,1848($s7)
    beqz       $at, .L0000781c
    sw         $zero,104($s7)
    cache      0x14,0($sp)
    daddiu     $a0,$s7,1832
    jal        vsema
    sw         $zero,1848($s7)
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1784
    ld         $ra,0($sp)
.L00007808:
    cache      0x14,0($sp)
    sw         $zero,416($s7)
    ld         $s7,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000781c:
    ld         $a3,72($s7)
    ld         $a3,32($a3)
    ld         $a1,-30704($gp)
    daddiu     $a3,$a3,80
    li         $a0,4
    li         $a4,-1
.L00007834:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L00007834
    nop
    jal        cmn_err
    daddiu     $a1,$a1,1816
    b          .L00007808
    ld         $ra,0($sp)

glabel mgras_fifotimer
    daddiu     $sp,$sp,-32
    move       $a3,$a0
    beqz       $a1, .L000078a4
    lw         $a4,416($a0)
    beqz       $a4, .L0000787c
    sd         $a3,0($sp)
.L00007874:
    jr         $ra
    daddiu     $sp,$sp,32
.L0000787c:
    ld         $a1,0($sp)
    sd         $ra,8($sp)
    li         $a2,1500
    jal        timeout
    ld         $a0,-30504($gp)
    cache      0x14,0($sp)
    ld         $at,0($sp)
    ld         $ra,8($sp)
    b          .L00007874
    sw         $v0,416($at)
.L000078a4:
    sd         $ra,8($sp)
    sd         $a3,0($sp)
    jal        untimeout
    move       $a0,$a4
    cache      0x14,0($sp)
    ld         $v0,0($sp)
    ld         $ra,8($sp)
    b          .L00007874
    sw         $zero,416($v0)

glabel MgrasCtxsw
    daddiu     $sp,$sp,-144
    sd         $s1,56($sp)
    ld         $s1,208($a0)
    sd         $s2,32($sp)
    sd         $s8,104($sp)
    sd         $s6,40($sp)
    sd         $s4,48($sp)
    move       $s4,$a2
    move       $s6,$a1
    sd         $s0,64($sp)
    li         $a1,25
    sd         $s7,72($sp)
    move       $s0,$a0
    sd         $ra,80($sp)
    daddiu     $s7,$a0,1936
    daddiu     $s8,$s0,1912
    ld         $s2,200($a0)
    jal        psema
    move       $a0,$s7
    li         $a1,25
    jal        psema
    move       $a0,$s8
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    li         $a2,1500
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30496($gp)
    cache      0x14,0($sp)
    lw         $at,1620($s0)
    beqz       $at, .L00007968
    sw         $v0,1824($s0)
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1840
    cache      0x14,0($sp)
    sd         $s3,88($sp)
    b          .L0000796c
    sw         $zero,1620($s0)
.L00007968:
    sd         $s3,88($sp)
.L0000796c:
    cache      0x14,0($sp)
    lui        $s3,0x5
    daddu      $s3,$s1,$s3
    lw         $v0,0($s3)
    sw         $v0,32($s4)
    lw         $a3,276($s3)
    sw         $a3,36($s4)
    lw         $a4,24($s3)
    sw         $a4,44($s4)
    lw         $v1,16($s3)
    sw         $v1,40($s4)
    lui        $a2,0x1
    lui        $at,0xfc00
    lbu        $a3,43($s2)
    and        $a4,$a4,$at
    li         $at,-137
    and        $at,$v0,$at
    lui        $s2,0x7
    sd         $a4,16($sp)
    beqz       $a3, .L000079c8
    daddu      $s2,$s2,$s1
    cache      0x14,0($sp)
    sw         $at,0($s3)
.L000079c8:
    lw         $v1,8($s2)
    and        $v1,$v1,$a2
    bnez       $v1, .L00007a18
    nop
.L000079d8:
    lw         $v0,260($s2)
    andi       $a0,$v0,0x200
    bnez       $a0, .L000079f8
    andi       $at,$v0,0x7
    bnez       $at, .L000079d8
    nop
    beqz       $a0, .L00007a18
    nop
.L000079f8:
    cache      0x14,0($sp)
    li         $a1,25
    daddiu     $a0,$s0,1952
    sw         $a2,24($s3)
    lui        $v0,0xfffe
    ori        $v0,$v0,0xffff
    jal        psema
    sw         $v0,28($s3)
.L00007a18:
    daddiu     $v1,$s0,440
    bne        $v1, $s4, .L00007a50
    sd         $v1,8($sp)
    ld         $v1,208($s0)
    lui        $v0,0x7
    daddu      $v0,$v0,$v1
    lw         $a3,260($v0)
    andi       $a3,$a3,0x200
    beqz       $a3, .L00007a50
    nop
.L00007a40:
    lw         $a3,260($v0)
    andi       $a3,$a3,0x200
    bnez       $a3, .L00007a40
    nop
.L00007a50:
    lw         $a4,1620($s0)
    beqz       $a4, .L00007a78
    nop
    ld         $a1,-30704($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1904
    cache      0x14,0($sp)
    sd         $s5,96($sp)
    sw         $zero,1620($s0)
.L00007a78:
    cache      0x14,0($sp)
    sd         $s5,96($sp)
    lui        $a4,0x8
    sw         $a4,24($s3)
    lui        $a3,0xfff7
    li         $a1,26
    ori        $a3,$a3,0xffff
    sw         $a3,28($s3)
    li         $a2,1276
    daddiu     $s5,$s0,1584
    sw         $a2,80($s3)
    move       $a0,$s5
    jal        psema
    sw         $zero,-15528($zero)
    beqz       $v0, .L00007e2c
    nop
.L00007ab8:
    ld         $at,200($s0)
    lw         $at,68($at)
    beqz       $at, .L00007b24
    daddiu     $s1,$s0,1808
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $s5,96($sp)
    ld         $s1,56($sp)
    ld         $s4,48($sp)
    ld         $s6,40($sp)
    ld         $s3,88($sp)
    move       $a0,$s8
    jal        vsema
    ld         $s2,32($sp)
    move       $a0,$s7
    jal        vsema
    ld         $s8,104($sp)
    lw         $a0,1824($s0)
    jal        untimeout
    ld         $s7,72($sp)
    cache      0x14,0($sp)
    sw         $zero,1824($s0)
    ld         $s0,64($sp)
    li         $v0,-1
    ld         $ra,80($sp)
.L00007b1c:
    jr         $ra
    daddiu     $sp,$sp,144
.L00007b24:
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    jal        init_sema
    move       $a0,$s1
    move       $a1,$s1
    ld         $a0,-30720($gp)
    jal        timeout
    li         $a2,1
    move       $a0,$s1
    jal        psema
    li         $a1,25
    move       $a0,$s5
    jal        psema
    li         $a1,26
    bnez       $v0, .L00007ab8
    nop
.L00007b68:
    cache      0x14,0($sp)
    lw         $v1,-30712($gp)
    li         $s1,1
    sw         $s1,-15528($zero)
    li         $s5,64
    sw         $s5,24($s3)
    li         $a4,-65
    sw         $a4,28($s3)
    ld         $s5,96($sp)
    lw         $a3,36($s6)
    beqz       $v1, .L00007bb4
    sw         $a3,276($s3)
    lw         $v0,56($s6)
    lui        $at,0xfff
    ori        $at,$at,0xffff
    and        $at,$v0,$at
    srl        $at,$at,0x1b
    beqz       $at, .L00007e34
    ld         $s5,96($sp)
.L00007bb4:
    lw         $v0,4($s2)
    lui        $v1,0x1fc0
    daddiu     $a1,$s6,52
    and        $v0,$v0,$v1
    move       $a0,$zero
    srl        $v0,$v0,0x16
    b          .L00007be8
    addiu      $v0,$v0,-2
.L00007bd4:
    cache      0x14,0($sp)
    lw         $a3,0($a1)
    daddiu     $a1,$a1,4
    beqz       $a4, .L00007c1c
    sw         $a3,132($s2)
.L00007be8:
    lw         $at,4($s2)
    andi       $at,$at,0x7f
    sltu       $at,$v0,$at
    addiu      $a0,$a0,1
    beqz       $at, .L00007bd4
    sltiu      $a4,$a0,63
.L00007c00:
    lw         $v1,4($s2)
    andi       $v1,$v1,0x7f
    sltu       $v1,$v0,$v1
    bnez       $v1, .L00007c00
    nop
    b          .L00007bd4
    nop
.L00007c1c:
    ld         $a3,8($sp)
    lw         $v0,56($s6)
    beq        $a3, $s6, .L00007c68
    ld         $s2,32($sp)
    cache      0x14,0($sp)
    lui        $v1,0x7fff
    lui        $a4,0x4000
    lui        $a3,0x400
    lui        $s2,0x2000
    nor        $a3,$a3,$zero
    nor        $s2,$s2,$zero
    and        $a3,$v0,$a3
    nor        $a4,$a4,$zero
    and        $a3,$a3,$s2
    ori        $v1,$v1,0xffff
    ld         $s2,32($sp)
    and        $v0,$a3,$a4
    and        $v0,$v0,$v1
    sw         $v0,56($s6)
.L00007c68:
    cache      0x14,0($sp)
    lui        $a5,0x800
    daddiu     $a0,$s0,1600
    sd         $a0,24($sp)
    nor        $a5,$a5,$zero
    and        $a5,$v0,$a5
    sw         $a5,56($s6)
    sw         $s1,1620($s0)
    li         $a1,26
    jal        psema
    sw         $zero,-15528($zero)
    beqz       $v0, .L00007cf0
    nop
.L00007c9c:
    ld         $at,200($s0)
    lw         $at,68($at)
    bnez       $at, .L00007dd4
    daddiu     $s1,$s0,1808
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    jal        init_sema
    move       $a0,$s1
    move       $a1,$s1
    ld         $a0,-30720($gp)
    jal        timeout
    li         $a2,1
    move       $a0,$s1
    jal        psema
    li         $a1,25
    ld         $a0,24($sp)
    jal        psema
    li         $a1,26
    bnez       $v0, .L00007c9c
    nop
.L00007cf0:
    cache      0x14,0($sp)
    li         $v0,1
    sw         $v0,-15528($zero)
    sw         $zero,1620($s0)
    jal        untimeout
    lw         $a0,1824($s0)
    cache      0x14,0($sp)
    sw         $zero,1824($s0)
    lw         $s1,8($s3)
    andi       $s1,$s1,0x20
    sw         $s1,48($s4)
    li         $a4,240
    sw         $a4,12($s3)
    lw         $a3,32($s6)
    sw         $a3,0($s3)
    li         $s1,-1
    sw         $s1,28($s3)
    lui        $v1,0x3ff
    lw         $at,44($s6)
    ori        $v1,$v1,0xffff
    and        $at,$at,$v1
    ld         $v1,16($sp)
    or         $at,$at,$v1
    sw         $at,24($s3)
    sw         $s1,20($s3)
    ld         $s1,56($sp)
    ld         $v1,8($sp)
    lw         $a4,40($s6)
    sw         $a4,16($s3)
    ld         $s3,88($sp)
    sd         $s4,432($s0)
    move       $a3,$s6
    ld         $s4,48($sp)
    sd         $s6,424($s0)
    bne        $v1, $a3, .L00007da4
    ld         $s6,40($sp)
    cache      0x14,0($sp)
    ld         $s4,208($s0)
    lui        $s6,0x7
    daddu      $s4,$s4,$s6
    ld         $s6,40($sp)
    li         $s3,0xf400
    sw         $s3,132($s4)
    ld         $s4,48($sp)
    ld         $s3,88($sp)
.L00007da4:
    daddiu     $a0,$sp,0
    jal        release_nonfatalsig
    ld         $s0,64($sp)
    jal        vsema
    move       $a0,$s8
    move       $a0,$s7
    jal        vsema
    ld         $s8,104($sp)
    ld         $ra,80($sp)
    move       $v0,$zero
    b          .L00007b1c
    ld         $s7,72($sp)
.L00007dd4:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    cache      0x14,0($sp)
    sw         $zero,1620($s0)
    ld         $s1,56($sp)
    ld         $s4,48($sp)
    ld         $s6,40($sp)
    move       $a0,$s8
    jal        vsema
    ld         $s3,88($sp)
    move       $a0,$s7
    jal        vsema
    ld         $s8,104($sp)
    lw         $a0,1824($s0)
    jal        untimeout
    ld         $s7,72($sp)
    cache      0x14,0($sp)
    sw         $zero,1824($s0)
    ld         $s0,64($sp)
    li         $v0,-1
    b          .L00007b1c
    ld         $ra,80($sp)
.L00007e2c:
    b          .L00007b68
    nop
.L00007e34:
    ld         $a0,-30704($gp)
    lui        $a3,0x7ff
    daddiu     $a0,$a0,1968
    ori        $a3,$a3,0xffff
    lui        $a2,0x3fff
    and        $a3,$v0,$a3
    ori        $a2,$a2,0xffff
    srl        $a3,$a3,0x1a
    ld         $a1,16($s6)
    and        $a2,$v0,$a2
    jal        printf
    srl        $a2,$a2,0x1d
    b          .L00007bb4
    nop

glabel MgrasFIFOInterrupt
    cache      0x14,0($sp)
    daddiu     $sp,$sp,-128
    sd         $s1,48($sp)
    sd         $s0,72($sp)
    ld         $a3,-30592($gp)
    dsll       $s0,$a0,0x2
    ld         $s1,-30672($gp)
    dsubu      $s0,$s0,$a0
    lbu        $at,0($a3)
    dsll       $s0,$s0,0x4
    daddu      $s0,$s0,$s1
    li         $v0,-2
    ld         $s0,8($s0)
    and        $at,$at,$v0
    sb         $at,0($a3)
    sd         $s4,64($sp)
    ld         $s1,208($s0)
    lui        $s4,0x5
    daddu      $s4,$s1,$s4
    sd         $s4,40($sp)
    lw         $s4,24($s4)
    lui        $at,0x4400
    move       $a4,$zero
    and        $at,$s4,$at
    move       $a5,$zero
    sd         $s2,56($sp)
    lui        $a0,0x8000
    beqz       $at, .L00007fec
    move       $s2,$s4
    lw         $at,104($s0)
    lui        $a6,0x7
    li         $v1,1
    lui        $a2,0x400
    beqz       $at, .L00007ffc
    and        $a2,$s4,$a2
    sd         $s6,96($sp)
    lui        $s6,0x800
.L00007f00:
    and        $v0,$s4,$s6
    lui        $at,0x400
    lui        $v1,0x7
    beqz       $v0, .L00007f30
    daddu      $v1,$v1,$s1
    lw         $v1,0($v1)
    andi       $v1,$v1,0x10
    lui        $v0,0x800
    beqz       $v1, .L00008280
    nor        $v0,$v0,$zero
    and        $s2,$s2,$v0
    or         $s2,$s2,$at
.L00007f30:
    lui        $v0,0x7fff
    and        $v1,$s4,$a0
    lui        $a2,0x7
    ori        $v0,$v0,0xffff
    beqz       $v1, .L00007fdc
    daddu      $a2,$a2,$s1
    lw         $a2,0($a2)
    andi       $a2,$a2,0x100
    beqz       $a2, .L00007fc0
    nop
    lui        $at,0x4000
    and        $s2,$s2,$v0
    or         $s2,$s2,$at
    beq        $s4, $s2, .L00007f80
    nop
.L00007f6c:
    cache      0x14,0($sp)
    ld         $v1,40($sp)
    xor        $a2,$s4,$s2
    sw         $a2,28($v1)
    sw         $s2,24($v1)
.L00007f80:
    lw         $at,104($s0)
    beqz       $at, .L00007f94
    and        $v0,$s2,$s6
    beqz       $v0, .L0000809c
    nop
.L00007f94:
    cache      0x14,0($sp)
    lbu        $v1,0($a3)
    ld         $s6,96($sp)
    ori        $v1,$v1,0x1
    sb         $v1,0($a3)
.L00007fa8:
    ld         $s0,72($sp)
    ld         $s1,48($sp)
    ld         $s2,56($sp)
    ld         $s4,64($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00007fc0:
    ld         $a1,-30704($gp)
    li         $a0,5
    sd         $ra,88($sp)
    jal        cmn_err
    daddiu     $a1,$a1,2168
    ld         $a3,-30592($gp)
    ld         $ra,88($sp)
.L00007fdc:
    beq        $s4, $s2, .L00007f80
    nop
    b          .L00007f6c
    nop
.L00007fec:
    lui        $a0,0x8000
    sd         $s6,96($sp)
    b          .L00007f00
    lui        $s6,0x800
.L00007ffc:
    sw         $v1,-15524($zero)
    ld         $v0,248($a1)
    andi       $v0,$v0,0x18
    xori       $v0,$v0,0x10
    li         $at,50
    sltiu      $v0,$v0,1
    sd         $v0,16($sp)
    li         $v1,10000
    sltu       $v0,$zero,$v0
    movz       $at,$v1,$v0
    move       $a0,$zero
    beqz       $a2, .L000082c8
    sd         $at,32($sp)
    ld         $a2,32($sp)
    beqz       $a2, .L000082bc
    nop
    sd         $ra,88($sp)
    daddu      $at,$a6,$s1
    sd         $at,24($sp)
.L00008048:
    ld         $v0,24($sp)
    lw         $v0,0($v0)
    andi       $v0,$v0,0x8
    beqz       $v0, .L00008120
    nop
    sd         $a4,0($sp)
    li         $v1,1
    sd         $a0,80($sp)
    sd         $v1,8($sp)
    jal        us_delay
    li         $a0,1
    ld         $a0,80($sp)
    ld         $a2,32($sp)
    addiu      $a0,$a0,1
    ld         $a3,-30592($gp)
    sltu       $a2,$a0,$a2
    ld         $a5,8($sp)
    bnez       $a2, .L00008048
    ld         $a4,0($sp)
    b          .L00008128
    ld         $ra,88($sp)
.L0000809c:
    move       $a0,$s0
    sd         $ra,88($sp)
    move       $a1,$zero
    jal        mgras_fifotimer
    ld         $s6,96($sp)
    cache      0x14,0($sp)
    lw         $at,1848($s0)
    ld         $a3,-30592($gp)
    sw         $zero,104($s0)
    bnez       $at, .L000080fc
    ld         $ra,88($sp)
    ld         $a2,72($s0)
    ld         $a2,32($a2)
    daddiu     $a2,$a2,80
    li         $at,-1
.L000080d8:
    ll         $v1,0($a2)
    addu       $v0,$v1,$at
    move       $v1,$v0
    sc         $v0,0($a2)
    beqzl      $v0, .L000080d8
    nop
    lw         $v0,1848($s0)
    beqz       $v0, .L00008114
    nop
.L000080fc:
    cache      0x14,0($sp)
    daddiu     $a0,$s0,1832
    jal        vsema
    sw         $zero,1848($s0)
    ld         $a3,-30592($gp)
    ld         $ra,88($sp)
.L00008114:
    li         $at,1
    b          .L00007f94
    sb         $at,-16306($zero)
.L00008120:
    move       $a5,$zero
    ld         $ra,88($sp)
.L00008128:
    lui        $v0,0x4000
    ld         $v1,32($sp)
    and        $v0,$s4,$v0
    beqz       $v0, .L000081a4
    sltu       $v1,$a0,$v1
    beqz       $v1, .L000081a4
    nop
    sd         $ra,88($sp)
.L00008148:
    ld         $a2,24($sp)
    lw         $a2,0($a2)
    andi       $a2,$a2,0x80
    beqz       $a2, .L0000819c
    nop
    sd         $a5,8($sp)
    li         $a3,1
    sd         $a0,80($sp)
    sd         $a3,0($sp)
    jal        us_delay
    li         $a0,1
    ld         $a0,80($sp)
    ld         $at,32($sp)
    addiu      $a0,$a0,1
    ld         $a3,-30592($gp)
    sltu       $at,$a0,$at
    ld         $a5,8($sp)
    bnez       $at, .L00008148
    ld         $a4,0($sp)
    b          .L000081a4
    ld         $ra,88($sp)
.L0000819c:
    move       $a4,$zero
    ld         $ra,88($sp)
.L000081a4:
    sw         $zero,-15524($zero)
    ld         $v0,24($sp)
    lw         $v0,4($v0)
    li         $v1,127
    andi       $v0,$v0,0x7f
    beq        $v0, $v1, .L0000833c
    nop
    ld         $v1,32($sp)
    sltu       $v1,$a0,$v1
    bnez       $v1, .L000082a4
    nop
    ld         $a2,16($sp)
    beqz       $a2, .L000082d4
    nop
    cache      0x14,0($sp)
    sd         $s6,96($sp)
    ld         $s6,0($gp)
    lw         $a2,24($s6)
    addiu      $a2,$a2,1
    sw         $a2,24($s6)
    li         $at,1
    sw         $at,104($s0)
    ld         $v1,72($s0)
    ld         $v1,32($v1)
    daddiu     $v1,$v1,80
    li         $a2,1
.L0000820c:
    ll         $v0,0($v1)
    addu       $s6,$v0,$a2
    move       $v0,$s6
    sc         $s6,0($v1)
    beqzl      $s6, .L0000820c
    nop
    sb         $at,-16306($zero)
    lui        $s6,0x800
    beqz       $a5, .L00008244
    sw         $at,120($s0)
    lui        $at,0x400
    nor        $at,$at,$zero
    and        $s2,$s2,$at
    or         $s2,$s2,$s6
.L00008244:
    beqz       $a4, .L00008260
    lui        $a5,0x8000
    lui        $at,0x4000
    nor        $at,$at,$zero
    and        $s2,$s2,$at
    sd         $ra,88($sp)
    or         $s2,$s2,$a5
.L00008260:
    move       $a0,$s0
    sd         $ra,88($sp)
    jal        mgras_fifotimer
    li         $a1,1
    ld         $a3,-30592($gp)
    lui        $a0,0x8000
    b          .L00007f00
    ld         $ra,88($sp)
.L00008280:
    ld         $a1,-30704($gp)
    li         $a0,5
    sd         $ra,88($sp)
    jal        cmn_err
    daddiu     $a1,$a1,2136
    ld         $a3,-30592($gp)
    lui        $a0,0x8000
    b          .L00007f30
    ld         $ra,88($sp)
.L000082a4:
    cache      0x14,0($sp)
    ld         $at,0($gp)
    lw         $a2,28($at)
    addiu      $a2,$a2,1
    b          .L00007fa8
    sw         $a2,28($at)
.L000082bc:
    daddu      $at,$a6,$s1
    b          .L00008128
    sd         $at,24($sp)
.L000082c8:
    daddu      $v0,$a6,$s1
    b          .L00008128
    sd         $v0,24($sp)
.L000082d4:
    beqz       $a5, .L00008304
    nop
    ld         $a1,-30704($gp)
    li         $a0,4
    sd         $ra,88($sp)
    sd         $a4,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,2072
    ld         $a3,-30592($gp)
    ld         $a4,0($sp)
    b          .L00008304
    ld         $ra,88($sp)
.L00008304:
    beqz       $a4, .L0000832c
    nop
    ld         $a1,-30704($gp)
    li         $a0,4
    sd         $ra,88($sp)
    jal        cmn_err
    daddiu     $a1,$a1,2104
    sd         $s6,96($sp)
    ld         $a3,-30592($gp)
    ld         $ra,88($sp)
.L0000832c:
    lui        $a0,0x8000
    sd         $s6,96($sp)
    b          .L00007f00
    lui        $s6,0x800
.L0000833c:
    ld         $a2,24($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    lw         $a2,4($a2)
    sd         $ra,88($sp)
    lui        $a3,0x1fc0
    daddiu     $a1,$a1,2032
    and        $a2,$a2,$a3
    jal        cmn_err
    srl        $a2,$a2,0x16
    move       $a0,$s0
    jal        mgras_error
    move       $a1,$s1
    b          .L00007fa8
    ld         $ra,88($sp)

glabel MgrasGeneralInterrupt
    daddiu     $sp,$sp,-64
    sd         $s1,0($sp)
    dsll       $s1,$a0,0x2
    ld         $at,-30672($gp)
    dsubu      $s1,$s1,$a0
    dsll       $s1,$s1,0x4
    daddu      $s1,$s1,$at
    ld         $at,8($s1)
    sd         $at,8($sp)
    lw         $at,1620($at)
    lui        $a1,0x1
    lui        $a5,0x7
    beqz       $at, .L000083fc
    ld         $s1,0($s1)
    daddu      $a5,$s1,$a5
    lw         $at,256($a5)
    andi       $at,$at,0x40
    beqz       $at, .L000083d4
    nop
.L000083c4:
    lw         $at,256($a5)
    andi       $at,$at,0x40
    bnez       $at, .L000083c4
    nop
.L000083d4:
    lw         $v0,260($a5)
    andi       $v0,$v0,0x1
    beqz       $v0, .L000083fc
    nop
.L000083e4:
    lw         $v1,260($a5)
    andi       $v1,$v1,0x1
    bnez       $v1, .L000083e4
    nop
    sd         $s5,24($sp)
    sd         $s3,16($sp)
.L000083fc:
    sd         $s5,24($sp)
    lui        $s5,0x5
    sd         $s3,16($sp)
    daddu      $s5,$s1,$s5
    lw         $s3,8($s5)
    lw         $v0,24($s5)
    lui        $at,0x7f
    ori        $at,$at,0xffff
    and        $s3,$s3,$v0
    and        $s3,$s3,$at
    and        $a2,$a1,$s3
    beqz       $a2, .L00008468
    nop
    cache      0x14,0($sp)
    sw         $a1,28($s5)
    ld         $s3,16($sp)
    ld         $a0,8($sp)
    sd         $ra,32($sp)
    ld         $s1,0($sp)
    jal        vsema
    daddiu     $a0,$a0,1952
    ld         $s5,24($sp)
    ld         $ra,32($sp)
.L00008458:
    ld         $s1,0($sp)
    ld         $s3,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00008468:
    lui        $a1,0x8
    and        $a2,$a1,$s3
    beqz       $a2, .L000084a8
    nop
    cache      0x14,0($sp)
    ld         $s3,16($sp)
    ld         $s1,0($sp)
    sd         $ra,32($sp)
    ld         $a0,8($sp)
    sw         $a1,12($s5)
    sw         $a1,28($s5)
    jal        vsema
    daddiu     $a0,$a0,1584
    ld         $s5,24($sp)
    b          .L00008458
    ld         $ra,32($sp)
.L000084a8:
    andi       $a2,$s3,0x40
    li         $v0,127
    lui        $a5,0x7
    beqz       $a2, .L000084f0
    daddu      $a5,$s1,$a5
    cache      0x14,0($sp)
    ld         $s3,16($sp)
    ld         $s1,0($sp)
    sd         $ra,32($sp)
    ld         $a0,8($sp)
    li         $a3,64
    sw         $a3,12($s5)
    sw         $a3,28($s5)
    jal        vsema
    daddiu     $a0,$a0,1600
    ld         $s5,24($sp)
    b          .L00008458
    ld         $ra,32($sp)
.L000084f0:
    andi       $a2,$s3,0xe200
    beqz       $a2, .L000085ec
    nop
    lw         $at,4($a5)
    andi       $at,$at,0x7f
    beq        $at, $v0, .L00008664
    nop
.L0000850c:
    andi       $at,$s3,0x200
    beqz       $at, .L0000853c
    nop
    cache      0x14,0($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    li         $v0,512
    sd         $ra,32($sp)
    sw         $v0,28($s5)
    jal        cmn_err
    daddiu     $a1,$a1,2232
    ld         $ra,32($sp)
.L0000853c:
    andi       $a2,$s3,0x2000
    beqz       $a2, .L0000856c
    nop
    cache      0x14,0($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    li         $a3,8192
    sd         $ra,32($sp)
    sw         $a3,28($s5)
    jal        cmn_err
    daddiu     $a1,$a1,2256
    ld         $ra,32($sp)
.L0000856c:
    andi       $a2,$s3,0x4000
    beqz       $a2, .L0000859c
    nop
    cache      0x14,0($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    li         $a3,16384
    sd         $ra,32($sp)
    sw         $a3,28($s5)
    jal        cmn_err
    daddiu     $a1,$a1,2288
    ld         $ra,32($sp)
.L0000859c:
    andi       $a2,$s3,0x8000
    sd         $ra,32($sp)
    beqz       $a2, .L000085cc
    ld         $s3,16($sp)
    cache      0x14,0($sp)
    ld         $a1,-30704($gp)
    li         $a0,4
    li         $a3,0x8000
    sw         $a3,28($s5)
    ld         $s3,16($sp)
    jal        cmn_err
    daddiu     $a1,$a1,2328
.L000085cc:
    ld         $a0,8($sp)
    move       $a1,$s1
    jal        mgras_error
    ld         $s5,24($sp)
    ld         $s1,0($sp)
    ld         $ra,32($sp)
    b          .L00008458
    nop
.L000085ec:
    andi       $a2,$s3,0x400
    beqz       $a2, .L0000862c
    nop
    cache      0x14,0($sp)
    ld         $a0,8($sp)
    ld         $s3,16($sp)
    ld         $s1,0($sp)
    li         $a4,1024
    sw         $a4,28($s5)
    sd         $ra,32($sp)
    li         $a3,1025
    jal        MgrasSchedSwapBufFinish
    sw         $a3,12($s5)
    ld         $s5,24($sp)
    b          .L00008458
    ld         $ra,32($sp)
.L0000862c:
    lw         $at,-30696($gp)
    beqz       $at, .L00008458
    ld         $s5,24($sp)
    lui        $a2,0x5
    li         $a0,5
    ld         $a1,-30704($gp)
    ori        $a2,$a2,0x8
    move       $a3,$s3
    sd         $ra,32($sp)
    daddu      $a2,$s1,$a2
    jal        cmn_err
    daddiu     $a1,$a1,2368
    b          .L00008458
    ld         $ra,32($sp)
.L00008664:
    ld         $a1,-30704($gp)
    li         $a0,4
    lw         $a2,4($a5)
    sd         $ra,32($sp)
    lui        $a3,0x1fc0
    daddiu     $a1,$a1,2200
    and        $a2,$a2,$a3
    jal        cmn_err
    srl        $a2,$a2,0x16
    b          .L0000850c
    ld         $ra,32($sp)

glabel irix5_to_mgras_dma_util_single_args_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L000086d0
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,28
    bnez       $at, .L00008720
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L000086bc:
    cache      0x14,0($sp)
    li         $a0,28
    sw         $a0,4($s0)
    b          .L00008714
    move       $v0,$zero
.L000086d0:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v0,0($a2)
    sw         $v0,0($a1)
    lw         $at,4($a2)
    sw         $at,4($a1)
    lwu        $a0,8($a2)
    sd         $a0,8($a1)
    lw         $v1,12($a2)
    sw         $v1,16($a1)
    lw         $v0,16($a2)
    sw         $v0,20($a1)
    lwu        $at,20($a2)
    sd         $at,24($a1)
    lw         $a2,24($a2)
    move       $v0,$zero
    sw         $a2,32($a1)
.L00008714:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00008720:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,28
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L000086bc
    ld         $ra,8($sp)

glabel irix5_to_mgras_dma_util_multi_args_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L0000877c
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,32
    bnez       $at, .L000087d4
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00008768:
    cache      0x14,0($sp)
    li         $a0,32
    sw         $a0,4($s0)
    b          .L000087c8
    move       $v0,$zero
.L0000877c:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v1,0($a2)
    sw         $v1,0($a1)
    lw         $v0,4($a2)
    sw         $v0,4($a1)
    lw         $at,8($a2)
    sw         $at,8($a1)
    lwu        $a0,12($a2)
    sd         $a0,16($a1)
    lw         $v1,16($a2)
    sw         $v1,24($a1)
    lw         $v0,20($a2)
    sw         $v0,28($a1)
    lw         $at,24($a2)
    sw         $at,32($a1)
    lwu        $a2,28($a2)
    move       $v0,$zero
    sd         $a2,40($a1)
.L000087c8:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000087d4:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,32
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00008768
    ld         $ra,8($sp)

glabel irix5_to_mgras_dma_edit_replace_args_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L00008830
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,24
    bnez       $at, .L00008878
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L0000881c:
    cache      0x14,0($sp)
    li         $a0,24
    sw         $a0,4($s0)
    b          .L0000886c
    move       $v0,$zero
.L00008830:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $at,0($a2)
    sw         $at,0($a1)
    lw         $a0,4($a2)
    sw         $a0,4($a1)
    lw         $v1,8($a2)
    sw         $v1,8($a1)
    lwu        $v0,12($a2)
    sd         $v0,16($a1)
    lw         $at,16($a2)
    sw         $at,24($a1)
    lwu        $a2,20($a2)
    move       $v0,$zero
    sd         $a2,32($a1)
.L0000886c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00008878:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,24
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L0000881c
    ld         $ra,8($sp)

glabel irix5_to_mgras_dma_edit_release_args_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L000088d4
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,16
    bnez       $at, .L0000890c
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L000088c0:
    cache      0x14,0($sp)
    li         $a0,16
    sw         $a0,4($s0)
    b          .L00008900
    move       $v0,$zero
.L000088d4:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v1,0($a2)
    sw         $v1,0($a1)
    lw         $v0,4($a2)
    sw         $v0,4($a1)
    lw         $at,8($a2)
    sw         $at,8($a1)
    lwu        $a2,12($a2)
    move       $v0,$zero
    sd         $a2,16($a1)
.L00008900:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000890c:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,16
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L000088c0
    ld         $ra,8($sp)

glabel irix5_to_mgras_dma_edit_append_args_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L00008968
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,28
    bnez       $at, .L000089b8
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00008954:
    cache      0x14,0($sp)
    li         $a0,28
    sw         $a0,4($s0)
    b          .L000089ac
    move       $v0,$zero
.L00008968:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v0,0($a2)
    sw         $v0,0($a1)
    lw         $at,4($a2)
    sw         $at,4($a1)
    lw         $a0,8($a2)
    sw         $a0,8($a1)
    lwu        $v1,12($a2)
    sd         $v1,16($a1)
    lw         $v0,16($a2)
    sw         $v0,24($a1)
    lw         $at,20($a2)
    sw         $at,28($a1)
    lwu        $a2,24($a2)
    move       $v0,$zero
    sd         $a2,32($a1)
.L000089ac:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000089b8:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,28
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00008954
    ld         $ra,8($sp)

glabel irix5_to_mgras_set_shadow_rgn_args_xlate
    daddiu     $sp,$sp,-48
    move       $v0,$zero
    sd         $s0,0($sp)
    bnez       $a0, .L00008a18
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,4
    bnez       $at, .L00008a34
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00008a04:
    cache      0x14,0($sp)
    li         $a0,4
    sw         $a0,4($s0)
    b          .L00008a28
    move       $v0,$zero
.L00008a18:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lwu        $a2,0($a2)
    sd         $a2,0($a1)
.L00008a28:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00008a34:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,4
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00008a04
    ld         $ra,8($sp)

glabel irix5_to_mgras_set_tgv_rgn_args_xlate
    daddiu     $sp,$sp,-48
    move       $v0,$zero
    sd         $s0,0($sp)
    bnez       $a0, .L00008a94
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,8
    bnez       $at, .L00008ab8
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00008a80:
    cache      0x14,0($sp)
    li         $a0,8
    sw         $a0,4($s0)
    b          .L00008aac
    move       $v0,$zero
.L00008a94:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lwu        $at,0($a2)
    sd         $at,0($a1)
    lw         $a2,4($a2)
    sw         $a2,8($a1)
.L00008aac:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00008ab8:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,8
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00008a80
    ld         $ra,8($sp)

glabel irix5_to_mgras_eram_resource_arg_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L00008b14
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,12
    bnez       $at, .L00008b44
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00008b00:
    cache      0x14,0($sp)
    li         $a0,12
    sw         $a0,4($s0)
    b          .L00008b38
    move       $v0,$zero
.L00008b14:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v0,0($a2)
    sw         $v0,0($a1)
    lw         $at,4($a2)
    sw         $at,4($a1)
    lwu        $a2,8($a2)
    move       $v0,$zero
    sd         $a2,8($a1)
.L00008b38:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00008b44:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,12
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00008b00
    ld         $ra,8($sp)

glabel irix5_to_mgras_eram_resource_arg_xlateout
    lw         $at,0($a2)
    daddiu     $sp,$sp,-64
    sd         $s8,0($sp)
    sltiu      $at,$at,12
    sd         $s0,8($sp)
    move       $s8,$a0
    bnez       $at, .L00008bc4
    move       $s0,$a2
    cache      0x14,0($sp)
    ld         $a0,8($s0)
    sd         $a0,16($s0)
.L00008b8c:
    cache      0x14,0($sp)
    li         $a3,12
    sw         $a3,4($s0)
    lw         $a1,0($s8)
    sw         $a1,0($a0)
    lw         $v1,4($s8)
    sw         $v1,4($a0)
    ld         $s0,8($sp)
    ld         $v0,8($s8)
    ld         $s8,0($sp)
    daddiu     $sp,$sp,64
    sw         $v0,8($a0)
    jr         $ra
    move       $v0,$zero
.L00008bc4:
    sd         $ra,16($sp)
    jal        kern_malloc
    li         $a0,12
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    move       $a0,$v0
    b          .L00008b8c
    ld         $ra,16($sp)

glabel irix5_to_mgras_fpi2c_cmd_arg_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bnez       $a0, .L00008c24
    move       $s0,$a3
    lw         $at,0($s0)
    sltiu      $at,$at,12
    bnez       $at, .L00008c54
    nop
    cache      0x14,0($sp)
    ld         $v1,8($s0)
    sd         $v1,16($s0)
.L00008c10:
    cache      0x14,0($sp)
    li         $a0,12
    sw         $a0,4($s0)
    b          .L00008c48
    move       $v0,$zero
.L00008c24:
    cache      0x14,0($sp)
    ld         $a2,16($s0)
    lw         $v0,0($a2)
    sw         $v0,0($a1)
    lw         $at,8($a2)
    sw         $at,16($a1)
    lwu        $a2,4($a2)
    move       $v0,$zero
    sd         $a2,8($a1)
.L00008c48:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00008c54:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,12
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00008c10
    ld         $ra,8($sp)

glabel irix5_to_mgras_fpi2c_cmd_arg_xlateout
    lw         $at,0($a2)
    daddiu     $sp,$sp,-64
    sd         $s8,0($sp)
    sltiu      $at,$at,12
    sd         $s0,8($sp)
    move       $s8,$a0
    bnez       $at, .L00008cd4
    move       $s0,$a2
    cache      0x14,0($sp)
    ld         $a0,8($s0)
    sd         $a0,16($s0)
.L00008c9c:
    cache      0x14,0($sp)
    li         $a3,12
    sw         $a3,4($s0)
    lw         $a1,0($s8)
    sw         $a1,0($a0)
    lw         $v1,16($s8)
    sw         $v1,8($a0)
    ld         $s0,8($sp)
    ld         $v0,8($s8)
    ld         $s8,0($sp)
    daddiu     $sp,$sp,64
    sw         $v0,4($a0)
    jr         $ra
    move       $v0,$zero
.L00008cd4:
    sd         $ra,16($sp)
    jal        kern_malloc
    li         $a0,12
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    move       $a0,$v0
    b          .L00008c9c
    ld         $ra,16($sp)

glabel irix5_to_mgras_load_timing_table_args_xlate
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    beqz       $a0, .L00008df4
    move       $s0,$a3
    cache      0x14,0($sp)
    ld         $a3,16($s0)
    lw         $a0,0($a3)
    sw         $a0,0($a1)
    lw         $v1,4($a3)
    sw         $v1,4($a1)
    lw         $v0,8($a3)
    sw         $v0,8($a1)
    lw         $at,12($a3)
    sw         $at,12($a1)
    lw         $s0,16($a3)
    sw         $s0,16($a1)
    lwu        $a2,20($a3)
    sd         $a2,24($a1)
    lw         $a0,24($a3)
    sw         $a0,32($a1)
    lwu        $v1,28($a3)
    sd         $v1,40($a1)
    lw         $v0,32($a3)
    sw         $v0,48($a1)
    lwu        $at,36($a3)
    sd         $at,56($a1)
    lw         $s0,40($a3)
    sw         $s0,64($a1)
    lw         $a2,44($a3)
    sw         $a2,68($a1)
    lw         $a0,48($a3)
    sw         $a0,72($a1)
    lw         $v1,52($a3)
    sw         $v1,76($a1)
    lw         $v0,56($a3)
    sw         $v0,80($a1)
    lw         $at,60($a3)
    sw         $at,84($a1)
    lw         $s0,64($a3)
    sw         $s0,88($a1)
    lw         $a2,68($a3)
    sw         $a2,92($a1)
    lw         $a0,72($a3)
    sw         $a0,96($a1)
    lw         $v1,76($a3)
    sw         $v1,100($a1)
    lw         $v0,80($a3)
    sw         $v0,104($a1)
    ld         $s0,0($sp)
    lw         $at,84($a3)
    move       $v0,$zero
    sw         $at,108($a1)
.L00008dc4:
    cache      0x14,0($sp)
    dsll       $at,$v0,0x2
    addiu      $v0,$v0,1
    slti       $v1,$v0,6
    daddu      $a2,$at,$a3
    daddu      $at,$at,$a1
    lw         $a2,88($a2)
    bnez       $v1, .L00008dc4
    sw         $a2,112($at)
    move       $v0,$zero
.L00008dec:
    jr         $ra
    daddiu     $sp,$sp,48
.L00008df4:
    lw         $v1,0($s0)
    sltiu      $v1,$v1,112
    bnez       $v1, .L00008e28
    nop
    cache      0x14,0($sp)
    ld         $a0,8($s0)
    sd         $a0,16($s0)
.L00008e10:
    cache      0x14,0($sp)
    li         $a2,112
    sw         $a2,4($s0)
    move       $v0,$zero
    b          .L00008dec
    ld         $s0,0($sp)
.L00008e28:
    sd         $ra,8($sp)
    jal        kern_malloc
    li         $a0,112
    cache      0x14,0($sp)
    sd         $v0,16($s0)
    b          .L00008e10
    ld         $ra,8($sp)

glabel irix5_to_mgras_load_video_format_combination_args_xlate
    daddiu     $sp,$sp,-80
    sd         $s0,0($sp)
    sd         $s1,8($sp)
    move       $s0,$a1
    bnez       $a0, .L00008e8c
    move       $s1,$a3
    lw         $at,0($s1)
    li         $a0,0xf714
    sltu       $at,$at,$a0
    bnez       $at, .L00008fac
    ld         $s0,0($sp)
    cache      0x14,0($sp)
    ld         $v1,8($s1)
    sd         $v1,16($s1)
.L00008e7c:
    cache      0x14,0($sp)
    sw         $a0,4($s1)
    b          .L00008fa0
    move       $v0,$zero
.L00008e8c:
    sd         $s3,32($sp)
    ld         $s3,16($s1)
    li         $a2,0xf68c
    move       $a1,$s0
    sd         $ra,24($sp)
    sd         $s4,16($sp)
    jal        bcopy
    move       $a0,$s3
    move       $s1,$zero
    li         $s4,0xf68c
.L00008eb4:
    dsll       $a0,$s1,0x2
    daddu      $a0,$a0,$s1
    li         $a2,40
    dsll       $a0,$a0,0x3
    addiu      $s1,$s1,1
    daddu      $a1,$a0,$s0
    daddu      $a0,$a0,$s3
    daddu      $a1,$a1,$s4
    jal        bcopy
    daddu      $a0,$a0,$s4
    slti       $a2,$s1,2
    bnez       $a2, .L00008eb4
    nop
    move       $s1,$zero
    li         $s4,0xf6dc
.L00008ef0:
    li         $a2,4
    dsll       $a0,$s1,0x2
    addiu      $s1,$s1,1
    daddu      $a1,$a0,$s0
    daddu      $a0,$a0,$s3
    daddu      $a1,$a1,$s4
    jal        bcopy
    daddu      $a0,$a0,$s4
    slti       $a2,$s1,2
    bnez       $a2, .L00008ef0
    nop
    cache      0x14,0($sp)
    lui        $v0,0x1
    daddu      $a4,$v0,$s3
    daddu      $s0,$v0,$s0
    lw         $at,-2332($a4)
    sw         $at,-2328($s0)
    lw         $ra,-2328($a4)
    sw         $ra,-2324($s0)
    lw         $s4,-2324($a4)
    sw         $s4,-2320($s0)
    lwu        $s3,-2320($a4)
    sd         $s3,-2312($s0)
    lw         $a2,-2316($a4)
    sw         $a2,-2304($s0)
    lw         $v1,-2312($a4)
    sw         $v1,-2300($s0)
    lwu        $v0,-2308($a4)
    sd         $v0,-2296($s0)
    lw         $at,-2304($a4)
    sw         $at,-2288($s0)
    lw         $ra,-2300($a4)
    sw         $ra,-2284($s0)
    ld         $ra,24($sp)
    lw         $s4,-2296($a4)
    sw         $s4,-2280($s0)
    ld         $s4,16($sp)
    lw         $s3,-2292($a4)
    sw         $s3,-2276($s0)
    ld         $s3,32($sp)
    lw         $a4,-2288($a4)
    sw         $a4,-2272($s0)
    move       $v0,$zero
    ld         $s0,0($sp)
.L00008fa0:
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00008fac:
    sd         $ra,24($sp)
    jal        kern_malloc
    li         $a0,0xf714
    cache      0x14,0($sp)
    sd         $v0,16($s1)
    li         $a0,0xf714
    b          .L00008e7c
    ld         $ra,24($sp)
