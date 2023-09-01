.data
mess1: .asciiz"max: "
mess2:.asciiz"\n\nmin:"
mess3:.asciiz" , "
.text 	
	li $s0, 5
	li $s1, 3
	li $s2, 7
	li $s3, 14
	li $s4, 5
	li $s5, 10
	li $s6, 10
	li $s7, 4
	move $t0, $s0		
	move $t1, $s0		
	li $t3, 0
	li $t4, 8
	li $a2, 0
	li $a3, 0
push:
	addi $sp, $sp, -32
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	sw $s5, 20($sp)
	sw $s6, 24($sp)
	sw $s7, 28($sp)
main:
	jal 	work
	j	print
work:
	slt $t5, $t3, $t4
	beq $t5, $0, end_work
	mul $t6, $t3, 4
	add $t7, $t6, $sp
	lw $t8, 0($t7)
	slt $t5, $t8, $t0
	beq $t5, $0, wrap_max
continue1:
	slt $t5, $t8, $t1
	bne $t5, $0, wrap_min
continue: 
	addi $t3, $t3, 1
	j	work
wrap_max:
	add $t0, $t8, $0
	move $a2, $t3
	j	continue1
wrap_min:
	add $t1, $t8, $0
	move $a3, $t3
	j	continue
end_work:
	jr	$ra
print:
	li $v0, 4
	la $a0, mess1
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, mess3
	syscall
	
	li $v0, 1
	move $a0, $a2
	syscall
	
	li $v0, 4
	la $a0, mess2
	syscall
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 4
	la $a0, mess3
	syscall
	li $v0, 1
	move $a0, $a3
	syscall
	
	
