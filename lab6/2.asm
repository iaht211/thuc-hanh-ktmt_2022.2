.data
A:.word 7, -2, 5, 1, 5,6,7,3,6,8,8,59,5
endA:.word
.text
main:
#khai báo gán địa chỉ 
la $a0,A#đầu mảng 
la $a1,endA#sau cuối mảng 4 byte
addi $a1,$a1,-4#giảm đi 4 byte để đến vị trí cuối mảng A

#kiem tra xem địa chỉ của $a0 = $a1 không
ktra:
beq $a0,$a1,end#nếu bằng thì kết thúc
j	max#nếu không thì nhảy đến hàm max
#ham ket thuc
end:
li $v0,10
syscall
#ham swap đổi chỗ phần tử 
swap:
lw $t0,0($a1)# $t0 = A[last]
sw $t0,0($v0)# A[max] = $t0
sw $v1,0($a1)# A[last] = $v1 (gia tri max)
addi $a1,$a1,-4 # từ A[last] đến A[last-1]
j	ktra
#ham khai bao dia chi
max:
addi $v0,$a0,0#vi tri cua phan tu max
lw $v1,0($v0)#gia tri max
addi $t0,$a0,0#con tro chay 
#ham lap duyet mang
loop:
beq $t0,$a1,ret# if A[last] = A[i] báo hiệu kết thúc 1 vòng lặp
addi $t0,$t0,4# A[i] = A[i+1]
lw $t1,0($t0) # $t1 = A[i+1]
slt $t2,$t1,$v1# if A[i+1]<A[max]
bne $t2,$0,loop
addi $v1,$t1,0#else cập nhật lại giá trị max và địa chỉ max
addi $v0,$t0,0
j	loop
ret:
j	swap
