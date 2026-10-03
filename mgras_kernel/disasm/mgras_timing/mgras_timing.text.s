.section .text
.set noat
.set noreorder


glabel MgrasCalcScreenSize
    cache      0x14,0($sp)
    lw         $v0,4($a0)
    sh         $v0,0($a1)
    lw         $at,8($a0)
    jr         $ra
    sh         $at,0($a2)
