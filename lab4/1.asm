#code kiểm tra xem tong 2 so có bị tràn khong 
.text
li $t0,0
li $s1,-2147483644
li $s2,-7638
#kiem tra xem 2 so co cung dau khong
xor $t1,$s1,$s2
bltz $t1,EXIT
#tong 2 so khong xet den dau
addu $s3,$s1,$s2
#xet tran so 
slt $t2,$s3,$s1
bltz $s1,NEGATIVE #kiem tra xem lieu $s1,$s2 co am khong neu ca 2 deu am thi khong tran 
beq $t2,$0,EXIT
j	OVERFLOW
NEGATIVE:
bne $t2,$0,EXIT
#neu $s3<s1 thi khong bi tran 
OVERFLOW:
li $t0,1
EXIT: