.text
#chuyển số am thành số dương
#kiểm tra xem có âm không  nếu âm lấy 0 từ đi 
#nếu không âm kết thúc 
li $s1,-5
slt $t0,$s1,$0
bne $t0,$0,else
add $s0,$0,$s1
j	end
else:
sub $s0,$0,$s1
end: