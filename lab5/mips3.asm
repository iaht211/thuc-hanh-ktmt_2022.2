.data
str:.space 1000
mess1:.asciiz "nhap xau"
mess2:.asciiz "do dai xau la "
.text

get_str:
li $v0,54
la $a0,mess1
la $a1,str
la $a2,100
syscall
get_leng:
la $t0,str
xor $t1,$0,$0 #leng
xor $t2,$0,$0 #i
check_char:
add $t3,$t0,$t2
lb $t4,0($t3)
beqz $t4,end
addi $t1,$t1,1
addi $t2,$t2,1
j	check_char
end:
#in ra do dai chuoi
li $v0,56
la $a0,mess2
add $a1,$0,$t1
syscall