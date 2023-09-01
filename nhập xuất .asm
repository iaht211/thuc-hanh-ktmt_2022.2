#nhap vao so nguyen va hien thi ra 
.data
in: .asciiz "nhap vao gia tri "
out: .asciiz "xuat ra gia tri vua nhap "
bao: .asciiz "\nnhap vao chuoi muon nhap: "
str: .asciiz
.text
#thong bao nhap vao du lieu 
li $v0,4
la $a0,in
syscall
#nhap vao du lieu 
li $v0,6
syscall
mov.s $f12,$f0
#thong bao xuat ra du lieu
li $v0,4
la $a0,out
syscall 
#xuat ra du lieu 
li $v0,2
syscall
#thong bao nhap vao du lieu 
li $v0,4
la $a0,bao
syscall
#nhap vao chuoi 
li $v0,8
la $a0,str # $a0 = address(str)
li $a1,3
syscall

