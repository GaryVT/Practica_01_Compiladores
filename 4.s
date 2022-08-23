$LC0:
        .ascii  "abcdef\000"
main:
        addiu   $sp,$sp,-40
        sw      $fp,36($sp)
        move    $fp,$sp
        lui     $2,%hi($LC0)
        addiu   $2,$2,%lo($LC0)
        sw      $2,8($fp)
        li      $2,11148                    # 0x2b8c
        sw      $2,12($fp)
        lw      $2,12($fp)
        nop
        bgez    $2,$L2
        nop

        addiu   $2,$2,7
$L2:
        sra     $2,$2,3
        sw      $2,16($fp)
        lw      $2,12($fp)
        nop
        bgez    $2,$L3
        nop

        addiu   $2,$2,3
$L3:
        sra     $2,$2,2
        sw      $2,20($fp)
        lw      $2,12($fp)
        nop
        srl     $3,$2,31
        addu    $2,$3,$2
        sra     $2,$2,1
        sw      $2,24($fp)
        move    $2,$0
        move    $sp,$fp
        lw      $fp,36($sp)
        addiu   $sp,$sp,40
        jr      $31
        nop