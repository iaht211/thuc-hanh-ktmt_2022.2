.text
li $s0,0x12345678
#cách để ghi MSB la bit  cao nhất vào thanh ghi s0 là 
#dịch 24 bit sang phải rồi sau đó ghi lại vào thanh ghi khác

srl $t1,$s0,24#dịch phải 24 bit 
andi $t1,$t1,0xff#kiểm tra lại bắng cách so với 0xff
#cách xóa bit cuối của $s0 bằng cách andi với 0xfffff00
andi $t2,$s0,0xfffff00#2byte cuối cùng sẽ bị chuyển thành 0
#các bit từ 7 đến 0 đểu bị chuyển thành 1 
ori $t3,$s0,0xff
#xóa s0 bằng cách cho s0  xor với chính nó 
xor $s0,$s0,$s0
