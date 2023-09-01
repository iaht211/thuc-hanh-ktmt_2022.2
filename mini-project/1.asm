.data
mess1: .asciiz "\nnhap vao so luong sinh vien: "
mess2: .asciiz "\nnhap vao ten sinh vien: "
mess3: .asciiz "\nnhap vao diem sinh vien: "
numStudents: .word 0
students: .space 400
enter: .asciiz "\n"

.text
main:
    # Nhập vào số lượng sinh viên
    li $v0, 4
    la $a0, mess1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0
    sw $t0, numStudents

    # Nhập thông tin sinh viên và điểm
    li $t1, 0       # i
    la $s0, students    # a[]

loop_in:
    slt $t2, $t1, $t0
    beq $t2, $0, sort

    mul $t2, $t1, 8
    add $t3, $s0, $t2

    # Nhập tên sinh viên và lưu vào mảng
    li $v0, 4
    la $a0, mess2
    syscall

    li $v0, 8
    move $a0, $t3
    li $a1, 100
    syscall

    # Nhập điểm sinh viên
    li $v0, 4
    la $a0, mess3
    syscall

    li $v0, 5
    syscall

    sw $v0, -4($t3)

    addi $t1, $t1, 1
    j loop_in

sort:
    # Sắp xếp sinh viên theo điểm
    li $t1, 0           # i

for1:
    slt $t2, $t1, $t0
    beq $t2, $0, print

    li $t4, 0           # j
    sub $t5, $t0, $t1   # n-i

for2:
    slt $t2, $t4, $t5
    beq $t2, $0, end_for2

    mul $t6, $t4, 8
    add $t6, $t6, $s0

    lw $s1, 0($t6)
    lw $s2, -4($t6)
    lw $s3, -8($t6)
    lw $s4, -12($t6)

    slt $t2, $s4, $s2
    beq $t2, $0, skip_swap

    sw $s1, -8($t6)
    sw $s2, -12($t6)
    sw $s3, 0($t6)
    sw $s4, -4($t6)

    addi $t4, $t4, 1
    j for2

skip_swap:
    addi $t4, $t4, 1
    j for2

end_for2:
    addi $t1, $t1, 1
    j for1

print:
    # In ra danh sách sinh viên
    li $t1, 0
    la $s0, students

loop_print:
    slt $t2, $t1, $t0
    beq $t2, $0, end_print

    li $v0, 4
    la $a0, enter
    syscall

    mul $t2, $t1, 8
    add $t3, $s0, $t2

    li $v0, 4
    la $a0, 0($t3)
    syscall

    li $v0, 1
    lw $a0, -4($t3)
    syscall

    addi $t1, $t1, 1
    j loop_print

end_print:

    # Kết thúc chương trình
    li $v0, 10
    syscall