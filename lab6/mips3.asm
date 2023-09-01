.data
A:.word 7, -2, 5, 1, 5,6,7,3,6,8,8,59,5
.text
main:
la $a0,A
addi $a1,$a0,0#A[key-1]
li $t0,1#i
#addi $t1,$t0,0#j
max:
addi $a1,$a1,4#A[key]
lw $t2,0($a1)#key
addi $t1,$t0,-1#j
addi $t3,$a1,0#A[j+1]
addi $t5,$a1,-4#A[j]
loop:
slt $t4,$t1,$0
bne $t4,$0,x

lw $t6,0($t5)#value of A[j]
slt $t4,$t2,$t6
bne $t4,1,x

sw $t6,0($t3)
addi $t3,$t3,-4
addi $t5,$t5,-4
addi $t1,$t1,-1
j	loop
x:
sw $t2,0($t3)
addi $t0,$t0,1
beq $t0,13,end
j	max
end:

