#dem so ki tu va in ra chuoi mguoc
.data
a:.asciiz "nhap vao chuoi : "
str:.space 100
b:.asciiz "chuoi co so ki tu la : "
c:.asciiz"chuoi in nguoc la "
.text
#nhập vào chuỗi muốn nhập 
main:
li $v0,54
la $a0,a
la $a1,str
li $a2,100
syscall

li $v0,4
la $a0,str
syscall

la $t0,str#address str[0]
li $t1,0#i
li $t2,-1# leng

loop:#ham dem so ki tu cua chuoi (dem so ki tu dung khong tinh ki tu ket thuc chuoi)
add $t3,$t0,$t1
lb $t4,0($t3)
beqz $t4,end_leng
addi $t1,$t1,1
addi $t2,$t2,1
j	loop
end_leng:

#in ra so luog ki tu 
li $v0,1
add $a0,$t2,$0
syscall
move $s3,$t2
#in ra ki tu nguoc
vs:
add $t3,$t0,$s3
lb $t4,0($t3)
li $v0,11
move $a0,$t4
syscall
sub $s3,$s3,1
beq $s3,-1,end
j	vs
end:
