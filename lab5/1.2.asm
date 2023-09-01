.data
a:.asciiz"the sum of "
b:.asciiz" and " 
c:.asciiz" is "
.text
#in ra the sum of
li $s0,5
li $s1,6
add $s2,$s0,$s1
#in ra $s1
li $v0,4
la $a0,a
syscall
#in ra and 
move $a0,$s0
li $v0,1
syscall
#in ra $s2
li $v0,4
la $a0,b
syscall
move $a0,$s1
li $v0,1
syscall
#in ra is
li $v0,4
la $a0,c
syscall
#in ra result
move $a0,$s2
li $v0,1
syscall


