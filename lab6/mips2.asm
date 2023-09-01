.data
A:.word 7, -2, 5, 1, 5,6,7,3,6,8,8,59,5
.text
main:
la $a0,A
li $t1,1#i
addi $t3,$a0,0#A[key]

max:

addi $t2,$t1,-1#j
addi $t3,$t3,4#A[key]
lw $t4,0($t3)#value key
addi $t5,$t3,0#A[j+1]

loop:
slt $t6,$t2,$0
bne $t6,$0,x
li $s7,0#danh dau 
addi $t5,$t5,-4#A[j]
lw $s1,0($t5)

addi $s2,$t5,4
lw $s3,0($s2)
li $s7,1#danh dau 
slt $t6,$t4,$s1
bne $t6,1,x

addi $s6,$t5,0

sw $s1,0($s2)
addi $t2,$t2,-1

j	loop
x:
bne $s7,1,x2
sw $t4,0($s6)
addi $t1,$t1,1
beq $t1,13,end
j	max
x2:
sw $t4,0($s2)
addi $t1,$t1,1
beq $t1,13,end
j	max
end:

