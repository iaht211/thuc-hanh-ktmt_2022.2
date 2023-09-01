#cau truc switch case kiem tra 1 so co nam trong khoang nao [0,2] cho trc khong
.data
A:.word 1
.text
la $t1,A
lw $t2,0($t1)
li $s0,0
li $s1,1
li $s2,2
li $s3,4#a
li $s4,7#b
beq $t2,$s0,case_0
beq $t2,$s1,case_1
beq $t2,$s2,case_2
j	default
case_0:
addi $s3,$s3,1
j	end
case_1:
subi $s3,$s3,1#s3=3
j	end
case_2:
mul $s4,$s4,2
j	end
default:
end:
