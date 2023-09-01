.data
   A: .word 353,893,29,40,-28,59
.text li $s1, -1    # i
      la $s2, A    # s2 nhận địa chỉ của  A
      li $s3, 6    # n: số lượng phần tử của A
      li $s4, 1    # step
      li $s5, 0    # max
loop: 
      add $s1,$s1,$s4 #i=i+step
      #$t1, $s1, 2
      add $t1, $s1, $s1 #t1=2*s1
      add $t1, $t1, $t1 #t1=4*s1
      add $t1, $t1, $s2 #t1 nhận địa chỉ của A[i], tinh dia chi cua A[i]  =  &A[0] + 4*i
      lw $t0, 0($t1) #cho $t0 =A[i](gia tri của A[i])
      beq $s1, $s3, end #if i == n, jump end
      # So sanh max voi A[i]
      slt $t3, $zero,  $t0 # so sanh A[i] > 0
      beq $t3, $zero, else  # Neu A[i] < 0 -> else    
      slt $t2, $s5, $t0  # if (max < A[i]]
      beq $t2, $zero, loop # neu max > A[i] quay lai vong lap
      add $s5, $zero, $t0  # neu max < A[i] max = A[i]
   
else: sub $t0, $zero, $t0
      slt $t2, $s5, $t0  # if (max < A[i]]
      beq $t2, $zero, loop
      add $s5, $zero, $t0
      bne $s1, $s3, loop #if i != n, goto loop
end: