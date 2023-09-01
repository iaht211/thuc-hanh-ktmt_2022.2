.text
	li $s0, 2#giá trị ban đầu 
	li $s1, -1#i 
	li $s2, 1#step
	li $s3, 2#n 
loop: 
	add $s1,$s1,$s2
	sllv $s4,$s0,$s1
	bne $s1,$s3,loop