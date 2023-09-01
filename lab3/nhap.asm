.data
A:.word 1,9,-3,4,-8
.text 
li $s1,-1 #i
la $s2,A#dia chi cua a 
li $s3,5 #so phan tu cua mang
li $s4,0#max
ktra:
addi $s1,$s1,1#i=i+1
#kiem tra i 
beq $s1,$s3,end

mul $t1,$s1,4#buoc nhay
add $t1,$t1,$s2#den phan tu tiep theo 
lw $t2,0($t1)#$t2 la gia tri phan tu hien tai 
#ham kien tra so am hay duong
slt $t0,$0,$t2#neu ma 0<t2 thi tra ve 1
beq $t0,$0,else
#so sanh voi max
slt $t0,$t2,$s4
bne $t0,$0,ktra
add $s4,$0,$t2#gan max bang t2


else: 
sub $t2,$0,$t2
slt $t0,$t2,$s4
bne $t0,$0,ktra
add $s4,$0,$t2#gan max bang t2
bne $s1,$s3,ktra
end:
