.text
main:
    # Load values into registers
    li $s0, 10        # Value to multiply
    li $s1, 4         # Power of 2 to multiply by (4)

    # Multiply by power of 2 using shift left logical instruction (sll)
    sll $t0, $s0, $s1 # Shift $s0 left by $s1 bits and store result in $t0

    # Print result
    li $v0, 1         # Load print integer syscall code
    move $a0, $t0     # Move result to print syscall argument register
    syscall           # Call print integer syscall

    # End of program
    li $v0, 10        # Load exit syscall code
    syscall           # Call exit syscall
