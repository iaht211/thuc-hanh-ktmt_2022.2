# $s1=i=3, $s2=j=2
#$t1=x=2	$t2=y=3	 $t3=z=4
li $t1,2
li $t2,3
li $t3,4
li $s1,3
li $s2,2
start:
slt $t0,$s2,$s1
bne $t0,$0,else 
addi $t1,$t1,1 #
li $t3,1#
j	endif 
else:
subi $t2,$t2,1#t2=2
mul $t3,$t3,2#t3=8
endif:
slt 