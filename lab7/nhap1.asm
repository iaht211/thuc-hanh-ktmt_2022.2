.data
mess:.asciiz"ket qua giai thua la : "
.text
main:
	jal 	WARP
print:
	addi $a1, $v0, 0
	li $v0, 56
	la $a0, mess
	syscall
end_main:
	li $v0, 10
	syscall
