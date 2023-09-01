.eqv IN_ADRESS_HEXA_KEYBOARD  0XFFFF0012
.eqv OUT_ADRESS_HEXA_KEYBOARD 0xFFFF0014
.text 
main: li $t1, IN_ADRESS_HEXA_KEYBOARD
	li $t2, OUT_ADRESS_HEXA_KEYBOARD
	li $t4, 0x10
set:
	li $t3, 0x01
polling:
	beq $t3, $t4, set
	sb $t3, 0($t1)
	lb $a0, 0($t2)
	sll $t3, $t3, 1
	beq $a0, $0, polling

print: li $v0, 34
	syscall
	nop 
	nop
sleep: li $a0, 1000
	li $v0, 32
	syscall
	nop
	nop
back_to_polling: j	polling
