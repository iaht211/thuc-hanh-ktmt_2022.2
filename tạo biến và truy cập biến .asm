#tóm tắt 
#lệnh la là để lưu địa chỉ của 1 ô nhớ dẫn đến giá trị được chọn 
#lệnh lw là lệnh đọc nội dung từ địa chỉ ô nhớ được chỉ định và lưu nó vào thanh ghi 
#lệnh sw là lệnh lưu trữ dữ liệu thanh ghi vào bộ nhớ 

.data
X : .word 5
Y : .word -1
Z : .word 2
.text
la $t8, X # coi $t8 như là địa chỉ của X
la $t9, Y # coi $t9 như là địa chỉ của Y
lw $t1,0($t8) # đặt $t1 là nội dung của địa chỉ ô nhớ mà $t8 trỏ đến 
lw $t2,0($t9)

mul $s0,$t1,2
add  $s0,$s0,$t2
add $a0,$0,$s0
li $v0,1
syscall

la $t7,Z
sw $s0,0($t7) #lưu trữ nội dung từ $s0 vào địa chỉ được chọn là $t7 
add $a0,$0,$t7 
li $v0,1
syscall


