.section .text
.set noat
.set noreorder


glabel MgrasShare
    ld         $v1,112($a1)
    daddiu     $sp,$sp,-96
    sd         $ra,48($sp)
    sd         $s0,24($sp)
    ld         $v0,32($a0)
    sd         $s1,40($sp)
    ld         $at,72($v0)
    sd         $s2,32($sp)
    move       $s1,$a0
    sd         $s4,8($sp)
    move       $s2,$a2
    move       $s0,$zero
    sd         $v1,16($sp)
    bne        $at, $a0, .L00000174
    move       $s4,$v0
.L0000003c:
    ld         $a3,32($s1)
    daddiu     $a3,$a3,80
    li         $at,1
.L00000048:
    ll         $a1,0($a3)
    addu       $v0,$a1,$at
    move       $a1,$v0
    sc         $v0,0($a3)
    beqzl      $v0, .L00000048
    nop
    ld         $v0,0($s2)
    beqz       $v0, .L000000e4
    nop
    ld         $s0,1752($s4)
    beqz       $s0, .L0000008c
    nop
.L00000078:
    beq        $v0, $s0, .L000000e4
    nop
    ld         $s0,96($s0)
    bnez       $s0, .L00000078
    nop
.L0000008c:
    sd         $ra,48($sp)
    jal        kern_malloc
    li         $a0,104
    move       $at,$v0
    sd         $v0,0($sp)
    move       $s0,$v0
    li         $a1,-1
    bnez       $v0, .L000000f4
    ld         $ra,48($sp)
    ld         $v1,32($s1)
    daddiu     $v1,$v1,80
.L000000b8:
    ll         $v0,0($v1)
    addu       $a3,$v0,$a1
    move       $v0,$a3
    sc         $a3,0($v1)
    beqzl      $a3, .L000000b8
    nop
    ld         $s2,32($sp)
    ld         $s0,24($sp)
    ld         $s4,8($sp)
    b          .L00000168
    li         $v0,12
.L000000e4:
    bnez       $s0, .L00000118
    nop
    b          .L0000008c
    sd         $ra,48($sp)
.L000000f4:
    ld         $a0,0($sp)
    jal        bzero
    li         $a1,104
    cache      0x14,0($sp)
    ld         $ra,48($sp)
    ld         $a1,0($sp)
    ld         $a3,1752($s4)
    sd         $a3,96($a1)
    sd         $a1,1752($s4)
.L00000118:
    cache      0x14,0($sp)
    lw         $at,0($s0)
    ld         $s4,16($sp)
    addiu      $at,$at,1
    sw         $at,0($s0)
    sd         $s0,1128($s4)
    sd         $s0,0($s2)
    ld         $s2,32($s1)
    daddiu     $s2,$s2,80
    li         $s4,-1
.L00000140:
    ll         $s0,0($s2)
    addu       $at,$s0,$s4
    move       $s0,$at
    sc         $at,0($s2)
    beqzl      $at, .L00000140
    nop
    ld         $s2,32($sp)
    ld         $s0,24($sp)
    move       $v0,$zero
    ld         $s4,8($sp)
.L00000168:
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000174:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    cache      0x14,0($sp)
    ld         $a1,32($s1)
    sd         $s1,72($a1)
    ld         $v1,32($s1)
    lw         $v1,104($v1)
    beqz       $v1, .L0000003c
    ld         $ra,48($sp)
.L0000019c:
    jal        us_delay
    li         $a0,2
    ld         $a3,32($s1)
    lw         $a3,104($a3)
    bnez       $a3, .L0000019c
    nop
    b          .L0000003c
    ld         $ra,48($sp)

glabel MgrasUnshare
    daddiu     $sp,$sp,-48
    sd         $s1,0($sp)
    ld         $s1,112($a1)
    ld         $a3,1128($s1)
    beqz       $a3, .L0000022c
    nop
    sd         $s5,8($sp)
    ld         $s5,32($a0)
    sd         $s0,24($sp)
    ld         $s0,1752($s5)
    beq        $a3, $s0, .L000001fc
    daddiu     $s5,$s5,1752
.L000001ec:
    daddiu     $s5,$s0,96
    ld         $s0,96($s0)
    bne        $a3, $s0, .L000001ec
    nop
.L000001fc:
    cache      0x14,0($sp)
    lw         $v0,0($a3)
    addiu      $v0,$v0,-1
    sw         $v0,0($a3)
    ld         $at,1128($s1)
    lw         $at,0($at)
    beqz       $at, .L00000238
    nop
.L0000021c:
    cache      0x14,0($sp)
    sd         $zero,1128($s1)
    ld         $s5,8($sp)
    ld         $s0,24($sp)
.L0000022c:
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000238:
    sd         $ra,16($sp)
    jal        MgrasDeleteTexSpace
    move       $a1,$s1
    cache      0x14,0($sp)
    ld         $v1,96($s0)
    sd         $v1,0($s5)
    jal        kern_free
    ld         $a0,1128($s1)
    b          .L0000021c
    ld         $ra,16($sp)
