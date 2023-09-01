.data
a:.asciiz"nhap vao chuoi : "
b:.asciiz"\nchuoi dao nguoc la : "
in:.space 21
out:.space 21
.text
#in ra thong bao va nhap chuoi
li $v0,54
la $a0,a
la $a1,in
li $a2,21
syscall

#in ra chuoi vua nhap 
li $v0,4
la $a0,in
syscall
#tim do dai chua chuoi 
li $t0,-1 #do dai chuoi 
la $t1,in #dia chi cua in[0]
add $t2,$0,$0#i
loop:#dem do dai chuoi 

add $t3,$t1,$t2
lb $t4,0($t3)
beqz $t4,end_dem

addi $t0,$t0,1
addi $t2,$t2,1
j	loop
end_dem:
move $a0,$t0
li $v0,1
syscall

addi $s0,$t0,-1

add $t3,$t1,$s0
li $v0,4
la $a0,b
syscall
main:#ham in nguoc chuoi 

lb $a0,0($t3)
li $v0,11
syscall
beq $s0,$0,end
subi $t3,$t3,1
subi $s0,$s0,1

j	main
end:


