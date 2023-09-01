.data
in:.asciiz "hello wordl"
copy: .space 1000
.text
strcpy:
la $s0,in # $s0 = address of in 
la $s1,copy #s1 = address of copy
loop:
lb $t0,0($s0)#load byte
beqz $t0,end#check
sb $t0,0($s1)#store byte vào copy

addi $s0,$s0,1# 
addi $s1,$s1,1
j	loop
end:
