.text
#kiểm tra tràn số bằng cách kiếm tra dấu 
li $t0,0
li $s1,-2147483644
li $s2,-7638
#kiểm tra xem 2 số có cùng dấu không
xor $t2,$s1,$s2
bltz $t2,END#neu 2 so trai dau thi khong tran
addu $s3,$s1,$s2 #cong lai khong xet dau
#kiem tra xem $s3 co cung dau voi 1 trong 2 so khong
xor $t2,$s3,$1
bltz $t2,KL
j	END
KL:
li $t0,1
END: