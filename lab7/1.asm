.data
in:.asciiz"nhap so : "
out:.asciiz"abs : "
.text
main:
#thực hiện nhập số đầu vào
	li $v0, 51
	la $a0, in
	syscall	
	move $t1, $a0
#đi đến hàm abs và lưu địa chỉ lệnh tiếp theo và thanh ghi $ra
	jal 	abs
#in ra kết quả 
	li $v0, 56
	la $a0, out
	add $a1, $t2, $0
	syscall

end_main:#hàm kết thúc 
	li $v0, 10
	syscall
abs:#hàm tính trị tuyệt đối
	sub $t2, $0, $t1 
	bltz $t1, done
	add $t2, $t1, $0
done:#đi đến lệnh tiếp theo của thanh ghi $ra đã lưu 
	jr 	$ra
	
	 