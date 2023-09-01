.text
# Đưa các giá trị vào stack
addi $sp, $sp, -4    # Giảm giá trị của $sp để dời vị trí của stack pointer
li $t0, 1            # Gán giá trị 1 cho $t0
sw $t0, 0($sp)       # Đưa giá trị của $t0 vào stack

addi $sp, $sp, -4    # Giảm giá trị của $sp để dời vị trí của stack pointer
li $t0, 2            # Gán giá trị 2 cho $t0
sw $t0, 0($sp)       # Đưa giá trị của $t0 vào stack

# Lấy các giá trị từ stack
lw $t0, 0($sp)       # Lấy giá trị từ địa chỉ vị trí hiện tại của stack pointer
addi $sp, $sp, 4     # Tăng giá trị của $sp để trở về vị trí trước đó trên stack
lw $t1, 0($sp)
addi $sp, $sp, 4
