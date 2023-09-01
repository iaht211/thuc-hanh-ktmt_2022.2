.data
str:.word -2,6,-1,3,9
A:.asciiz"  "
B: .asciiz"\n"
.text
main:
la $t0,str#dia chi cua str
li $t1,5#n
#ham khai bao
khai_bao:
li $s0,0#sum max
li $s1,0#sum runing
li $t2,0#i
li $t3,0#vi tri max
loop:
mul $t4,$t2,4#giá trị tăng i * 4
add $t5,$t0,$t4#tăng con trỏ lên đến vị trí tiếp theo 
lw $t6,0($t5)#lấy ra giá trị tại vị trí $t5
add $s1,$s1,$t6#sum = sum + vị trí đang xét (sum thay đổi )
slt $t7,$s0,$s1#if sum max < sum (thay đổi)
bne $t7,$0,reset
j	continue
#ham cap nhat lai gia tri max
reset:
add $s0,$s1,$0#cap nhat max
move $t3,$t2 
#vi tri max
add $t2,$t2,1#i=i+1
beq $t2,$t1,end
j	loop
continue:
#ham tang i va kiem tra ket thuc
add $t2,$t2,1
beq $t2,$t1,end
j	loop
end:
li $v0,1
move $a0,$s0
syscall
li $v0,4
la $a0,B
syscall
#in ra cac phan tua
li $t8,-1
x:
li $v0,1
lw $a0,0($t0)
syscall
li $v0,4
la $a0,A
syscall
addi $t8,$t8,1
beq $t8,$t3,finish
addi $t0,$t0,4
j	x

finish:


