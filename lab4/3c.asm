#đảo bit của $s0 bằng cách   cho $s0 xor với 1 hết 
.text
li $s0,0xA5#cách 1 là xor với 1 hết 
xori $s1,$s0,0xffffffff
#cách 2 là lấy not or với 0 hết
nor $s2,$s0,$0
