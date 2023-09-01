.data
	A: .word 7, -4, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
	B: .asciiz " "
.text
	li $s0, 14	#n
	la $a0, A	#Address of A
	li $t0, 1	#i
	li $t1, 0	#j
main:
	slt $t2, $t0, $s0		# i < n
	beq $t2, 0, end		
	mul $t3, $t0, 4
	add $t4, $t3, $a0		#arr[i]
	lw $t5, 0($t4)			#key = arr[i]
	addi $t1, $t0, -1		#j = i-1;
while:
	slt $t2, $t1, $0		#j >= 0
	beq $t2, 1, end_while

	mul $t6, $t1, 4
	add $s1, $t6, $a0 		#arr[j] 
	lw $s2, 0($s1)
	
	slt $t2, $t5, $s2		#arr[j] > key
	beq $t2, 0, end_while
	
	sw $s2, 4($s1)			#arr[j+1] = arr[j]
	addi $t1, $t1, -1		# j = j-1;
	j	while
	
end_while:
	mul $t6, $t1, 4
	add $s3, $a0, $t6
	sw $t5, 4($s3)			#arr[j+1] = key;
	addi $t0, $t0, 1
	j	main
end:

	

	
