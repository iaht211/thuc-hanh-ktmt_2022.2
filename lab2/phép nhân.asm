#assignment 6:phép nhân 
#thanh ghi lo và hi có liên quan đến phép nhân 
#bit thứ 32 đến 63 thuộc hi  và 0 đến 31 thuộc lo 
.text 
addi $t1,$0,4
addi $t2,$0,5
mul $s0,$t1,$t2
mul $s0,$s0,3
mflo $s1   #là lệnh lấy nội dung của thanh ghi lo vào $s1
add $a0,$0,$s1
li $v0,1
syscall