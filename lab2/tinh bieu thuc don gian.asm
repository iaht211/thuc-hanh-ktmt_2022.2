.text
 addi $t1,$0,5 # $t1 = 5
 addi $t2,$0,-1 # $t1 = -1
 add $s0,$t1,$t1 # $s0 = $t1 + $t1
 add $s0,$s0,$t2 # $s0 = $s0 + $t2
 #hien thi gia tri kqua 
 add $a0 ,$0, $s0
 li $v0 , 1
 syscall
 