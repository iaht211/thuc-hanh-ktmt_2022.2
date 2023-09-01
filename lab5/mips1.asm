.data
X:.asciiz "he"
Y:.space 1000

.text
#load dia chi cua 2 chuoi ki tu 
strcpy:
la $s0,X
la $s1,Y

loop:
lb $t0,0($s0) #load byte cua chuoi hello

sb $t0,0($s1)#luu tru bien vua lay ra 

beqz $t0,end #neu ki tu vua lay ra la null thi ket thuc
addi $s0,$s0,1
addi $s1,$s1,1
j	loop
end:
