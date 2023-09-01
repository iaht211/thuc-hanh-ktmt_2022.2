.text 
li $s0,1
#li $s1,4
#để nhân 1 số với 2 mũ thì ta dịch tất cả các bít của số đó sang trái n bit 
#$s0 * 2^4
sll $t0,$s0,10 #dich bit của s0 sang trái s1 bit 
#in kết quả ra bằng hàm syscall

add $a0,$0,$t0
li $v0,1
syscall
