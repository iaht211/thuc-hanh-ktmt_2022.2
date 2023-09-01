#A la mang chua n phan tu 
#$s1 la i 
#$s2 la dia chi cua A
#$s3 la so luong phan tu trong A
#$s4 la step
#$s5 la tong
#tinh tong cac so trong day 
.data
A:.word 1,2,3,4,5,6,7,8,9
.text
li $s1,-1
la $s2,A
li $s3,9
li $s4,1
li $s5,0
loop:
add $s1,$s1,$s4
mul $t1,$s1,4
add $t1,$t1,$s2
lw $t0,0($t1)
add $s5,$s5,$t0
bne $s1,$s3,loop




