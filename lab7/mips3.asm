.data 
mess:.asciiz"ket qua giai thua la"
.text
main:
	jal 	WARP
print:
	add $a1, $v0, $0
	li $v0, 56
	la $a0, mess
	syscall
end_main:
 	li $v0, 10
 	syscall
 	
 WARP:
 	sw $fp, -4($sp)
 	add $fp, $sp, $0
 	addi $sp, $sp, -8
 	sw $ra, 0($sp)
 	li $a0, 3
 	jal 	FACT
 	lw $ra, ($sp)
 	addi $sp, $fp, 0
 	lw $fp, -4($sp)
 	jr	$ra
 wrap_end:
 
 FACT:
 	sw $fp, -4($sp)
 	add $fp, $sp, $0
 	addi $sp, $sp, -12
 	sw $ra, 4($sp)
 	sw $a0, 0($sp)
 	slti $t0, $a0, 2
 	beq $t0, $0, recursive
 	li $v0, 1
 	j	done
 recursive:
 	addi $a0, $a0, -1
 	jal 	FACT
 	lw $v1, 0($sp)
 	mult $v1, $v0
 	mflo 	$v0
 done:
 	lw $ra, 4($sp)
 	lw $a0, 0($sp)
 	addi $sp, $fp, 0
 	lw $fp, -4($sp)
 	jr 	$ra
 fract_end:
 	
 	