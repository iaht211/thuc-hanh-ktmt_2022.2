#thuật toán nổi bọt 
.data
A:.word 9, -2, 4, 1, 5,6,7,3,6,15,8,60,5
.text
main:
la $a0,A
li $s0,13#n
add $s0,$s0,-2#n-2
li $s1,0#i
max:
li $t1,0#j
sub $t5,$s0,$s1#i
add $t0,$a0,$0#để phục vụ reset lại mỗi khi quay lại hàm max
add $s2,$a0,$0
loop:
add $s2,$s2,4#A[i]
add $s3,$s2,-4#A[i-1]
lw $s4,0($s2)
lw $s5,0($s3)
slt $s6,$s4,$s5
bne $s6,$0,swap
j	check
swap:
#swap dia chi cua $s2,$s3
sw $s4,0($s3)
sw $s5,0($s2)
j	check
check:
slt $s6,$t1,$t5#if j < i
addi $t1,$t1,1
bne $s6,$0,loop# tiếp tục quay lại loop
addi $s1,$s1,1# i = i+1
slt $s6,$s1,$s0# kiểm tra i
bne $s6,$0,max
j	end
end:


