.data
data_in:.word 1, 5, 3
step:.word 0
length:.word 3
.text
main:
	la $t0, data_in	
	li $t1, 0 	#step
	li $t2, 3	#length
	li $t3, 0	#i
	li $t4, 0	# moving step
	li $t6, 0	#moving value
Start:
	lw $t5, 0($t0)
loop:
	addi $t0, $t0, 4
	addi $t3, $t3, 1
	beq $t3, $t2, end
	lw $t6, 0($t0)
	slt $t7, $t5, $t6
	beq $t7, $0, next_step
	move $t5, $t6
	j	loop
	
next_step:
	sub $s0, $t5, $t6
	add $t1, $s0, $t1
	addi $t1, $t1, 1
	j	loop
	
end:
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 10
	syscall  
	
	
	
