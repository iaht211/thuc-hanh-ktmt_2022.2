.eqv SEVENSEG_LEFT 0xFFFF0011
.eqv SEVENSEG_RIGHT 0xFFFF0010
.text
main:
	li $a0, 0x6F
	jal	SHOW_SEG_LEFT	
	li $a0, 0x7
	jal	SHOW_SEG_RIGHT
end:
	li $v0, 10
	syscall
SHOW_SEG_LEFT:
	li $t0, SEVENSEG_LEFT
	sb $a0, 0($t0)
	jr 	$ra
SHOW_SEG_RIGHT:
	li $t0, SEVENSEG_RIGHT 
	sb $a0, 0($t0)
	jr 	$ra
