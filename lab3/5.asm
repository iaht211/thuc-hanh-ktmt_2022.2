#bai tap tim so lon nhat trong day co n phan tu
#neu ma A[i]<0 thi lay 0-A[i]
.data
A:.word 3,4,2,6,0,6
.text
li $s1,-1# i 
la $s2,A#la dia chi cua mang
li $s3,6#so phan tu cua mang
li $s4,1#step
li $s5 ,0#max
ktra:
add $s1,$s1,$s4#i=i+step
#kiem tra ket thuc chua
beq $s1,$s3,end
#lay gia tri cua phan tu dang xet
mul $t1,$s1,4#$t1 = i*4
add $t1,$t1,$s2#$t1 bang dia chi cua phan tu ke tiep
lw $t2,0($t1)#load value of t1 la gia tri cua phan tu dang xet

#kiem tra xem co am hay khong
slt $t0,$0,$t2
bne $t0,$0,else 
#kiem tra xem co lon hon khong neu khong thi quay lai mang ban dau 
slt $t0,$t2,$s5
bne $t0,$0,ktra
add $s5,$0,$t2
#ham chuyen so am thanh so duong 
else:
sub $t2,$0,$t2
slt $t0,$t2,$s5
beq $t0,$0,ktra
add $s5,$0,$t2
j	ktra

end: