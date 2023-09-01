.text
main: 
	li $a0, 4
	li $a1, 8
	li $a2, -5
	jal 	max
end_main:
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 10
	syscall

max:
	add $t0, $a0, $0
	sub $t1, $a1, $t0
	
	bltz $t1, okay
	add $t0, $a1, $0
okay: 
	sub $t1, $a2, $t0
	bltz $t1, done
	add $t0, $a2, $0
done:
	jr 	$ra 